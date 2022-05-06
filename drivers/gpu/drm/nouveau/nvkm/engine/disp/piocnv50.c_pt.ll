; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/piocnv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/piocnv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nv50_disp_chan = type { ptr, ptr, ptr, %struct.anon.131, i32, %struct.nvkm_object, ptr, i64, i32 }
%struct.anon.131 = type { i32, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.128, %struct.anon.128, %struct.anon.128, %struct.anon.129, %struct.anon.130, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.126 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.123 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.123 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.126 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.128 = type { i32, i32 }
%struct.anon.129 = type { i32, i32, i32 }
%struct.anon.130 = type { i32, i32, [3 x i8] }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@nv50_disp_pioc_func = dso_local local_unnamed_addr constant %struct.nv50_disp_chan_func { ptr @nv50_disp_pioc_init, ptr @nv50_disp_pioc_fini, ptr @nv50_disp_chan_intr, ptr @nv50_disp_chan_user, ptr null }, align 4
@.str = private unnamed_addr constant [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/piocnv50.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s: ch %d timeout0: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: ch %d timeout1: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: ch %d timeout: %08x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_pioc_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nv50_disp, ptr %5, i32 0, i32 1, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 3, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = shl i32 %9, 4
  %15 = add i32 %14, 6357504
  %16 = getelementptr i8, ptr %13, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 8192) #5, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %2) #5
  br label %17

17:                                               ; preds = %23, %1
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr i8, ptr %18, i32 %15
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %21 = and i32 %20, 196608
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %17
  %24 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #5
  %25 = icmp sgt i64 %24, -1
  br i1 %25, label %17, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.nvkm_timer, ptr %27, i32 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = call ptr @dev_driver_string(ptr noundef %31) #5
  %33 = load ptr, ptr %2, align 8
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
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %32, ptr noundef %44) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  %45 = getelementptr inbounds %struct.nv50_disp, ptr %5, i32 0, i32 1, i32 1, i32 1, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %99, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %6, align 4
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.nv50_disp, ptr %5, i32 0, i32 1, i32 1, i32 1, i32 4
  %53 = load ptr, ptr %12, align 4
  %54 = getelementptr i8, ptr %53, i32 %15
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.2, ptr noundef %52, i32 noundef %11, i32 noundef %55) #6
  br label %99

56:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  %57 = load ptr, ptr %12, align 4
  %58 = getelementptr i8, ptr %57, i32 %15
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 1) #5, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %3) #5
  br label %59

59:                                               ; preds = %65, %56
  %60 = load ptr, ptr %12, align 4
  %61 = getelementptr i8, ptr %60, i32 %15
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %63 = and i32 %62, 196608
  %64 = icmp eq i32 %63, 65536
  br i1 %64, label %98, label %65

65:                                               ; preds = %59
  %66 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #5
  %67 = icmp sgt i64 %66, -1
  br i1 %67, label %59, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %3, align 8
  %70 = getelementptr inbounds %struct.nvkm_timer, ptr %69, i32 0, i32 1, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = call ptr @dev_driver_string(ptr noundef %73) #5
  %75 = load ptr, ptr %3, align 8
  %76 = getelementptr inbounds %struct.nvkm_timer, ptr %75, i32 0, i32 1, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvkm_device, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %68
  %84 = load ptr, ptr %79, align 4
  br label %85

85:                                               ; preds = %83, %68
  %86 = phi ptr [ %84, %83 ], [ %81, %68 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %74, ptr noundef %86) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #5
  %87 = getelementptr inbounds %struct.nv50_disp, ptr %5, i32 0, i32 1, i32 1, i32 1, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr %6, align 4
  %92 = getelementptr inbounds %struct.nvkm_device, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.nv50_disp, ptr %5, i32 0, i32 1, i32 1, i32 1, i32 4
  %95 = load ptr, ptr %12, align 4
  %96 = getelementptr i8, ptr %95, i32 %15
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.3, ptr noundef %94, i32 noundef %11, i32 noundef %97) #6
  br label %99

98:                                               ; preds = %59
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #5
  br label %99

99:                                               ; preds = %98, %90, %85, %48, %43
  %100 = phi i32 [ 0, %98 ], [ -16, %48 ], [ -16, %43 ], [ -16, %90 ], [ -16, %85 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_disp_pioc_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 3, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %8, 4
  %12 = add i32 %11, 6357504
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %17 = and i32 %16, -2
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr i8, ptr %18, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %6, i64 noundef 2000000000, ptr noundef nonnull %2) #5
  br label %20

20:                                               ; preds = %26, %1
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr i8, ptr %21, i32 %12
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %24 = and i32 %23, 196608
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %20
  %27 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #5
  %28 = icmp sgt i64 %27, -1
  br i1 %28, label %20, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.nvkm_timer, ptr %30, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = call ptr @dev_driver_string(ptr noundef %34) #5
  %36 = load ptr, ptr %2, align 8
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
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %35, ptr noundef %47) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  %48 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 4
  %56 = load ptr, ptr %13, align 4
  %57 = getelementptr i8, ptr %56, i32 %12
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.4, ptr noundef %55, i32 noundef %10, i32 noundef %58) #6
  br label %60

59:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  br label %60

60:                                               ; preds = %59, %51, %46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_chan_intr(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nv50_disp_chan_user(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2151482967}
!9 = !{i64 3941874}
!10 = !{!"auto-init"}
!11 = !{i64 3942292}
!12 = !{i64 2151481745}
