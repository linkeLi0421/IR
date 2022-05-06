; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/dmacnv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/dmacnv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_disp_chan = type { ptr, ptr, ptr, %struct.anon.134, i32, %struct.nvkm_object, ptr, i64, i32 }
%struct.anon.134 = type { i32, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.131, %struct.anon.131, %struct.anon.131, %struct.anon.132, %struct.anon.133, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.129 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.128 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.128 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.129 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.131 = type { i32, i32 }
%struct.anon.132 = type { i32, i32, i32 }
%struct.anon.133 = type { i32, i32, [3 x i8] }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.122 = type { %struct.notifier_block }
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

@nv50_disp_dmac_func = dso_local local_unnamed_addr constant %struct.nv50_disp_chan_func { ptr @nv50_disp_dmac_init, ptr @nv50_disp_dmac_fini, ptr @nv50_disp_chan_intr, ptr @nv50_disp_chan_user, ptr @nv50_disp_dmac_bind }, align 4
@.str = private unnamed_addr constant [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/dmacnv50.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: ch %d init timeout, %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: ch %d fini timeout, %08x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_dmac_new_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @nv50_disp_chan_new_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %3, i32 noundef %4, ptr noundef %6, ptr noundef %7) #5
  %12 = load ptr, ptr %7, align 4
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %8
  %15 = tail call ptr @nvkm_umem_search(ptr noundef %10, i64 noundef %5) #5
  %16 = getelementptr i8, ptr %12, i32 72
  store ptr %15, ptr %16, align 8
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = ptrtoint ptr %15 to i32
  br label %46

20:                                               ; preds = %14
  %21 = load ptr, ptr %15, align 4
  %22 = getelementptr inbounds %struct.nvkm_memory_func, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i64 %23(ptr noundef %15) #5
  %25 = icmp ult i64 %24, 4096
  br i1 %25, label %46, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %16, align 8
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_memory_func, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef %27) #5
  switch i32 %31, label %46 [
    i32 1, label %34
    i32 3, label %32
    i32 2, label %33
  ]

32:                                               ; preds = %26
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %32, %26
  %35 = phi i64 [ 3, %33 ], [ 2, %32 ], [ 1, %26 ]
  %36 = getelementptr i8, ptr %12, i32 80
  store i64 %35, ptr %36, align 8
  %37 = load ptr, ptr %16, align 8
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_memory_func, ptr %38, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i64 %40(ptr noundef %37) #5
  %42 = lshr i64 %41, 8
  %43 = getelementptr i8, ptr %12, i32 80
  %44 = load i64, ptr %43, align 8
  %45 = or i64 %44, %42
  store i64 %45, ptr %43, align 8
  br label %46

46:                                               ; preds = %34, %26, %20, %18, %8
  %47 = phi i32 [ %19, %18 ], [ 0, %34 ], [ %11, %8 ], [ -22, %20 ], [ -22, %26 ]
  ret i32 %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_chan_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_umem_search(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_dmac_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nv50_disp, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 3, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 28
  %11 = or i32 %10, %9
  %12 = tail call i32 @nvkm_ramht_insert(ptr noundef %7, ptr noundef %1, i32 noundef %9, i32 noundef -10, i32 noundef %2, i32 noundef %11) #5
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_dmac_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 3, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 7
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = shl i32 %8, 4
  %17 = add i32 %16, 6357508
  %18 = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %13) #5, !srcloc !9
  %19 = load ptr, ptr %14, align 4
  %20 = add i32 %16, 6357512
  %21 = getelementptr i8, ptr %19, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 65536) #5, !srcloc !9
  %22 = load ptr, ptr %14, align 4
  %23 = add i32 %16, 6357516
  %24 = getelementptr i8, ptr %22, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %8) #5, !srcloc !9
  %25 = add i32 %16, 6357504
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr i8, ptr %26, i32 %25
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %29 = or i32 %28, 16
  %30 = load ptr, ptr %14, align 4
  %31 = getelementptr i8, ptr %30, i32 %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #5, !srcloc !9
  %32 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 8
  %33 = load i32, ptr %32, align 8
  %34 = load ptr, ptr %14, align 4
  %35 = shl i32 %8, 12
  %36 = add i32 %35, 6553600
  %37 = getelementptr i8, ptr %34, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %33) #5, !srcloc !9
  %38 = load ptr, ptr %14, align 4
  %39 = getelementptr i8, ptr %38, i32 %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 19) #5, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %6, i64 noundef 2000000000, ptr noundef nonnull %2) #5
  br label %40

40:                                               ; preds = %45, %1
  %41 = load ptr, ptr %14, align 4
  %42 = getelementptr i8, ptr %41, i32 %25
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #5, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %78, label %45

45:                                               ; preds = %40
  %46 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #5
  %47 = icmp sgt i64 %46, -1
  br i1 %47, label %40, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.nvkm_timer, ptr %49, i32 0, i32 1, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nvkm_device, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = call ptr @dev_driver_string(ptr noundef %53) #5
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr inbounds %struct.nvkm_timer, ptr %55, i32 0, i32 1, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load ptr, ptr %59, align 4
  br label %65

65:                                               ; preds = %63, %48
  %66 = phi ptr [ %64, %63 ], [ %61, %48 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %54, ptr noundef %66) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  %67 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %5, align 4
  %72 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 4
  %75 = load ptr, ptr %14, align 4
  %76 = getelementptr i8, ptr %75, i32 %25
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #5, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.2, ptr noundef %74, i32 noundef %10, i32 noundef %77) #6
  br label %79

78:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  br label %79

79:                                               ; preds = %78, %70, %65
  %80 = phi i32 [ 0, %78 ], [ -16, %70 ], [ -16, %65 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_disp_dmac_fini(ptr nocapture noundef %0) #0 {
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
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %17 = and i32 %16, -4113
  %18 = or i32 %17, 4096
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr i8, ptr %19, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #5, !srcloc !9
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr i8, ptr %21, i32 %12
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %24 = and i32 %23, -4
  %25 = load ptr, ptr %13, align 4
  %26 = getelementptr i8, ptr %25, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #5, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %6, i64 noundef 2000000000, ptr noundef nonnull %2) #5
  br label %27

27:                                               ; preds = %33, %1
  %28 = load ptr, ptr %13, align 4
  %29 = getelementptr i8, ptr %28, i32 %12
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %31 = and i32 %30, 1966080
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %66, label %33

33:                                               ; preds = %27
  %34 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #5
  %35 = icmp sgt i64 %34, -1
  br i1 %35, label %27, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct.nvkm_timer, ptr %37, i32 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = call ptr @dev_driver_string(ptr noundef %41) #5
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.nvkm_timer, ptr %43, i32 0, i32 1, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load ptr, ptr %47, align 4
  br label %53

53:                                               ; preds = %51, %36
  %54 = phi ptr [ %52, %51 ], [ %49, %36 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %42, ptr noundef %54) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  %55 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 4
  %63 = load ptr, ptr %13, align 4
  %64 = getelementptr i8, ptr %63, i32 %12
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #5, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.3, ptr noundef %62, i32 noundef %10, i32 noundef %65) #6
  br label %67

66:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  br label %67

67:                                               ; preds = %66, %58, %53
  %68 = load ptr, ptr %13, align 4
  %69 = shl i32 %8, 12
  %70 = add i32 %69, 6553600
  %71 = getelementptr i8, ptr %68, i32 %70
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #5, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %73 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 8
  store i32 %72, ptr %73, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_chan_intr(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nv50_disp_chan_user(ptr noundef, ptr noundef) #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2151484503}
!9 = !{i64 3943410}
!10 = !{i64 3943828}
!11 = !{i64 2151483281}
!12 = !{!"auto-init"}
