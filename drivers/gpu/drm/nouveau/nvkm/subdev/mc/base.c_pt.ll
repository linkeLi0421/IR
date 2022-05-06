; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mc/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mc/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_mc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_mc_map = type { i32, i32, i32, i8 }
%struct.nvkm_top = type { ptr, %struct.nvkm_subdev, %struct.list_head }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_mc = type { ptr, %struct.nvkm_subdev }

@.str = private unnamed_addr constant [15 x i8] c"%s: intr %08x\0A\00", align 1
@nvkm_mc = internal constant %struct.nvkm_subdev_func { ptr @nvkm_mc_dtor, ptr null, ptr null, ptr null, ptr @nvkm_mc_init, ptr @nvkm_mc_fini, ptr null }, align 4
@nvkm_mc_intr_stat.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mc/base.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_mc_unk260(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !8

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.nvkm_mc_func, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void %9(ptr noundef nonnull %4, i32 noundef %1) #5
  br label %12

12:                                               ; preds = %11, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_mc_intr_mask(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 29
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8, !prof !8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.nvkm_mc_func, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @nvkm_top_intr_mask(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nvkm_mc_func, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %32, %17
  %23 = phi i32 [ %34, %32 ], [ %20, %17 ]
  %24 = phi ptr [ %33, %32 ], [ %19, %17 ]
  %25 = getelementptr inbounds %struct.nvkm_mc_map, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.nvkm_mc_map, ptr %24, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %22
  %33 = getelementptr %struct.nvkm_mc_map, ptr %24, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %22

36:                                               ; preds = %32, %28, %17, %13
  %37 = phi i32 [ %14, %13 ], [ 0, %17 ], [ %23, %28 ], [ 0, %32 ]
  %38 = getelementptr inbounds %struct.nvkm_mc_func, ptr %15, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = select i1 %3, i32 %37, i32 0
  tail call void %39(ptr noundef nonnull %6, i32 noundef %37, i32 noundef %40) #5
  br label %41

41:                                               ; preds = %36, %8, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_top_intr_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_mc_intr_unarm(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !8

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.nvkm_mc_func, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef nonnull %3) #5
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_mc_intr_rearm(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !8

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.nvkm_mc_func, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef nonnull %3) #5
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_mc_intr(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %4, null
  br i1 %7, label %98, label %8, !prof !8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.nvkm_mc_func, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef nonnull %4) #5
  %13 = icmp eq i32 %12, -1
  %14 = load i1, ptr @nvkm_mc_intr_stat.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %8
  store i1 true, ptr @nvkm_mc_intr_stat.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 72, i32 noundef 9, ptr noundef null) #5
  br label %18

18:                                               ; preds = %17, %8
  %19 = select i1 %13, i32 0, i32 %12
  %20 = icmp eq ptr %6, null
  br i1 %20, label %52, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.nvkm_top, ptr %6, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %52, label %25

25:                                               ; preds = %48, %21
  %26 = phi ptr [ %50, %48 ], [ %23, %21 ]
  %27 = phi i32 [ %49, %48 ], [ %19, %21 ]
  %28 = getelementptr i8, ptr %26, i32 -32
  %29 = getelementptr i8, ptr %26, i32 -4
  %30 = load i32, ptr %29, align 4
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  %33 = shl nuw i32 1, %30
  %34 = and i32 %33, %27
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %28, align 4
  %38 = getelementptr i8, ptr %26, i32 -28
  %39 = load i32, ptr %38, align 4
  %40 = tail call ptr @nvkm_device_subdev(ptr noundef %0, i32 noundef %37, i32 noundef %39) #5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  tail call void @nvkm_subdev_intr(ptr noundef nonnull %40) #5
  %43 = load i32, ptr %29, align 4
  %44 = shl nuw i32 1, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %27, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42, %36, %32, %25
  %49 = phi i32 [ %46, %42 ], [ %27, %36 ], [ %27, %32 ], [ %27, %25 ]
  %50 = load ptr, ptr %26, align 4
  %51 = icmp eq ptr %50, %22
  br i1 %51, label %52, label %25

52:                                               ; preds = %48, %42, %21, %18
  %53 = phi i32 [ %19, %18 ], [ %19, %21 ], [ 0, %42 ], [ %49, %48 ]
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr inbounds %struct.nvkm_mc_func, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %77, %52
  %60 = phi i32 [ %80, %77 ], [ %57, %52 ]
  %61 = phi i32 [ %78, %77 ], [ %53, %52 ]
  %62 = phi ptr [ %79, %77 ], [ %56, %52 ]
  %63 = and i32 %60, %19
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.nvkm_mc_map, ptr %62, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.nvkm_mc_map, ptr %62, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = tail call ptr @nvkm_device_subdev(ptr noundef %0, i32 noundef %67, i32 noundef %69) #5
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  tail call void @nvkm_subdev_intr(ptr noundef nonnull %70) #5
  br label %73

73:                                               ; preds = %72, %65
  %74 = load i32, ptr %62, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %61, %75
  br label %77

77:                                               ; preds = %73, %59
  %78 = phi i32 [ %76, %73 ], [ %61, %59 ]
  %79 = getelementptr %struct.nvkm_mc_map, ptr %62, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %59

82:                                               ; preds = %77, %52
  %83 = phi i32 [ %53, %52 ], [ %78, %77 ]
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.nvkm_mc, ptr %4, i32 0, i32 1, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.nvkm_mc, ptr %4, i32 0, i32 1, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.nvkm_device, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.nvkm_mc, ptr %4, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str, ptr noundef %94, i32 noundef %83) #6
  br label %95

95:                                               ; preds = %89, %85, %82
  %96 = icmp ne i32 %19, 0
  %97 = zext i1 %96 to i8
  store i8 %97, ptr %1, align 1
  br label %98

98:                                               ; preds = %95, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_subdev(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_intr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_mc_reset(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7, !prof !8

7:                                                ; preds = %3
  %8 = tail call i32 @nvkm_top_reset(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.nvkm_mc_func, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %53, label %15

15:                                               ; preds = %31, %10
  %16 = phi ptr [ %32, %31 ], [ %13, %10 ]
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nvkm_mc_map, ptr %16, i32 0, i32 3
  %21 = load i8, ptr %20, align 4, !range !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nvkm_mc_map, ptr %16, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nvkm_mc_map, ptr %16, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %2
  br i1 %30, label %34, label %31

31:                                               ; preds = %27, %23, %19
  %32 = getelementptr %struct.nvkm_mc_map, ptr %16, i32 1
  %33 = icmp eq ptr %32, null
  br i1 %33, label %53, label %15

34:                                               ; preds = %27, %7
  %35 = phi i32 [ %8, %7 ], [ %17, %27 ]
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 512
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %40 = xor i32 %35, -1
  %41 = and i32 %39, %40
  %42 = load ptr, ptr %36, align 4
  %43 = getelementptr i8, ptr %42, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #5, !srcloc !13
  %44 = load ptr, ptr %36, align 4
  %45 = getelementptr i8, ptr %44, i32 512
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %47 = or i32 %46, %35
  %48 = load ptr, ptr %36, align 4
  %49 = getelementptr i8, ptr %48, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #5, !srcloc !13
  %50 = load ptr, ptr %36, align 4
  %51 = getelementptr i8, ptr %50, i32 512
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  br label %53

53:                                               ; preds = %34, %31, %15, %10, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_mc_disable(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7, !prof !8

7:                                                ; preds = %3
  %8 = tail call i32 @nvkm_top_reset(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.nvkm_mc_func, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %27, %10
  %16 = phi ptr [ %28, %27 ], [ %13, %10 ]
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nvkm_mc_map, ptr %16, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nvkm_mc_map, ptr %16, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr %struct.nvkm_mc_map, ptr %16, i32 1
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %15

30:                                               ; preds = %23, %7
  %31 = phi i32 [ %8, %7 ], [ %17, %23 ]
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 512
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %36 = xor i32 %31, -1
  %37 = and i32 %35, %36
  %38 = load ptr, ptr %32, align 4
  %39 = getelementptr i8, ptr %38, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #5, !srcloc !13
  br label %40

40:                                               ; preds = %30, %27, %15, %10, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_mc_enable(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7, !prof !8

7:                                                ; preds = %3
  %8 = tail call i32 @nvkm_top_reset(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.nvkm_mc_func, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %27, %10
  %16 = phi ptr [ %28, %27 ], [ %13, %10 ]
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nvkm_mc_map, ptr %16, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nvkm_mc_map, ptr %16, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr %struct.nvkm_mc_map, ptr %16, i32 1
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %15

30:                                               ; preds = %23, %7
  %31 = phi i32 [ %8, %7 ], [ %17, %23 ]
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 512
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %36 = or i32 %35, %31
  %37 = load ptr, ptr %32, align 4
  %38 = getelementptr i8, ptr %37, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #5, !srcloc !13
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr i8, ptr %39, i32 512
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  br label %42

42:                                               ; preds = %30, %27, %15, %10, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nvkm_mc_enabled(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7, !prof !8

7:                                                ; preds = %3
  %8 = tail call i32 @nvkm_top_reset(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.nvkm_mc_func, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %27, %10
  %16 = phi ptr [ %28, %27 ], [ %13, %10 ]
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nvkm_mc_map, ptr %16, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nvkm_mc_map, ptr %16, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr %struct.nvkm_mc_map, ptr %16, i32 1
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %15

30:                                               ; preds = %23, %7
  %31 = phi i32 [ %8, %7 ], [ %17, %23 ]
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 512
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %36 = and i32 %35, %31
  %37 = icmp eq i32 %36, %31
  br label %38

38:                                               ; preds = %30, %27, %15, %10, %3
  %39 = phi i1 [ %37, %30 ], [ false, %3 ], [ false, %10 ], [ false, %15 ], [ false, %27 ]
  ret i1 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_mc_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_mc, ptr %4, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_mc, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %6) #5
  store ptr %0, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_mc_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 56) #7
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_mc, ptr %7, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_mc, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %10) #5
  store ptr %0, ptr %7, align 8
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_top_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_mc_dtor(ptr noundef readnone %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -4
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_mc_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %2) #5
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 29
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !8

13:                                               ; preds = %7
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.nvkm_mc_func, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef nonnull %11) #5
  br label %17

17:                                               ; preds = %13, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_mc_fini(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 29
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.nvkm_mc_func, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef nonnull %6) #5
  br label %12

12:                                               ; preds = %8, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{i64 3945868}
!11 = !{i64 2151485321}
!12 = !{i64 2151486543}
!13 = !{i64 3945450}
