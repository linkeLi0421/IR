; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gm200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gm200.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_devinit_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvbios_pmuR = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvkm_devinit = type { ptr, %struct.nvkm_subdev, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@.str = private unnamed_addr constant [35 x i8] c"%s: VBIOS PMU init data not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: VBIOS PMU/DEVINIT not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gm200.c\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@gm200_devinit = internal constant %struct.nvkm_devinit_func { ptr null, ptr @gf100_devinit_preinit, ptr @nv50_devinit_init, ptr @gm200_devinit_post, ptr null, ptr null, ptr @gf100_devinit_pll_set, ptr @gm107_devinit_disable }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_devinit_preos(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @pmu_load(ptr noundef %0, i8 noundef zeroext 1, i1 noundef zeroext %1, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pmu_load(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca %struct.nvbios_pmuR, align 4
  %7 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 21
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %6) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %6, i8 0, i32 44, i1 false), !annotation !8
  %11 = call zeroext i1 @nvbios_pmuRm(ptr noundef %10, i8 noundef zeroext %1, ptr noundef nonnull %6) #5
  %12 = and i1 %11, %2
  %13 = select i1 %11, i32 0, i32 -22
  br i1 %12, label %14, label %64

14:                                               ; preds = %5
  %15 = load i32, ptr %6, align 4
  %16 = getelementptr inbounds %struct.nvbios_pmuR, ptr %6, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvbios_pmuR, ptr %6, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  call fastcc void @pmu_code(ptr noundef %0, i32 noundef %15, i32 noundef %17, i32 noundef %19, i1 noundef zeroext false)
  %20 = getelementptr inbounds %struct.nvbios_pmuR, ptr %6, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvbios_pmuR, ptr %6, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvbios_pmuR, ptr %6, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  call fastcc void @pmu_code(ptr noundef %0, i32 noundef %21, i32 noundef %23, i32 noundef %25, i1 noundef zeroext true)
  %26 = getelementptr inbounds %struct.nvbios_pmuR, ptr %6, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nvbios_pmuR, ptr %6, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvbios_pmuR, ptr %6, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 21
  %34 = load ptr, ptr %33, align 8
  %35 = or i32 %27, 16777216
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 11
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 1089984
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %35) #5, !srcloc !10
  %39 = icmp eq i32 %31, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %40, %14
  %41 = phi i32 [ %46, %40 ], [ 0, %14 ]
  %42 = add i32 %41, %29
  %43 = call i32 @nvbios_rd32(ptr noundef %34, i32 noundef %42) #5
  %44 = load ptr, ptr %36, align 4
  %45 = getelementptr i8, ptr %44, i32 1089988
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #5, !srcloc !10
  %46 = add i32 %41, 4
  %47 = icmp ult i32 %46, %31
  br i1 %47, label %40, label %48

48:                                               ; preds = %40, %14
  %49 = icmp eq ptr %3, null
  %50 = getelementptr inbounds %struct.nvbios_pmuR, ptr %6, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  br i1 %49, label %55, label %52

52:                                               ; preds = %48
  store i32 %51, ptr %3, align 4
  %53 = getelementptr inbounds %struct.nvbios_pmuR, ptr %6, i32 0, i32 10
  %54 = load i32, ptr %53, align 4
  store i32 %54, ptr %4, align 4
  br label %64

55:                                               ; preds = %48
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 11
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 1089796
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %51) #5, !srcloc !10
  %60 = load ptr, ptr %57, align 4
  %61 = getelementptr i8, ptr %60, i32 1089804
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #5, !srcloc !10
  %62 = load ptr, ptr %57, align 4
  %63 = getelementptr i8, ptr %62, i32 1089792
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 2) #5, !srcloc !10
  br label %64

64:                                               ; preds = %55, %52, %5
  %65 = phi i32 [ 0, %52 ], [ 0, %55 ], [ %13, %5 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #5
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_devinit_post(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca %struct.bit_entry, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_timer_wait, align 8
  %7 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 21
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  %11 = call i32 @bit_entry(ptr noundef %10, i8 noundef zeroext 73, ptr noundef nonnull %3) #5
  %12 = icmp ne i32 %11, 0
  %13 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = icmp ne i8 %14, 1
  %16 = select i1 %12, i1 true, i1 %15
  %17 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = icmp ult i16 %18, 28
  %20 = select i1 %16, i1 true, i1 %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %170, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str, ptr noundef %29) #6
  br label %170

30:                                               ; preds = %2
  %31 = call fastcc i32 @pmu_load(ptr noundef %0, i8 noundef zeroext 4, i1 noundef zeroext %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %170, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.1, ptr noundef %41) #6
  br label %170

42:                                               ; preds = %30
  br i1 %1, label %43, label %168

43:                                               ; preds = %42
  %44 = load i32, ptr %5, align 4
  %45 = add i32 %44, 8
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 11
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 1089984
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %45) #5, !srcloc !10
  %50 = load ptr, ptr %47, align 4
  %51 = getelementptr i8, ptr %50, i32 1089988
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %53 = add i32 %52, 8
  %54 = load ptr, ptr %47, align 4
  %55 = getelementptr i8, ptr %54, i32 1089984
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #5, !srcloc !10
  %56 = load ptr, ptr %47, align 4
  %57 = getelementptr i8, ptr %56, i32 1089988
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %59 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 3
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = add nuw nsw i32 %61, 20
  %63 = call zeroext i16 @nvbios_rd16(ptr noundef %10, i32 noundef %62) #5
  %64 = zext i16 %63 to i32
  %65 = load i16, ptr %59, align 2
  %66 = zext i16 %65 to i32
  %67 = add nuw nsw i32 %66, 22
  %68 = call zeroext i16 @nvbios_rd16(ptr noundef %10, i32 noundef %67) #5
  %69 = zext i16 %68 to i32
  %70 = load ptr, ptr %7, align 4
  %71 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 21
  %72 = load ptr, ptr %71, align 8
  %73 = or i32 %58, 16777216
  %74 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 11
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 1089984
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %73) #5, !srcloc !10
  %77 = icmp eq i16 %68, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %78, %43
  %79 = phi i32 [ %84, %78 ], [ 0, %43 ]
  %80 = add nuw nsw i32 %79, %64
  %81 = call i32 @nvbios_rd32(ptr noundef %72, i32 noundef %80) #5
  %82 = load ptr, ptr %74, align 4
  %83 = getelementptr i8, ptr %82, i32 1089988
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #5, !srcloc !10
  %84 = add nuw nsw i32 %79, 4
  %85 = icmp ult i32 %84, %69
  br i1 %85, label %78, label %86

86:                                               ; preds = %78, %43
  %87 = load ptr, ptr %7, align 4
  %88 = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 11
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 1089984
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %45) #5, !srcloc !10
  %91 = load ptr, ptr %88, align 4
  %92 = getelementptr i8, ptr %91, i32 1089988
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %94 = add i32 %93, 16
  %95 = load ptr, ptr %88, align 4
  %96 = getelementptr i8, ptr %95, i32 1089984
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #5, !srcloc !10
  %97 = load ptr, ptr %88, align 4
  %98 = getelementptr i8, ptr %97, i32 1089988
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %100 = load i16, ptr %59, align 2
  %101 = zext i16 %100 to i32
  %102 = add nuw nsw i32 %101, 24
  %103 = call zeroext i16 @nvbios_rd16(ptr noundef %10, i32 noundef %102) #5
  %104 = zext i16 %103 to i32
  %105 = load i16, ptr %59, align 2
  %106 = zext i16 %105 to i32
  %107 = add nuw nsw i32 %106, 26
  %108 = call zeroext i16 @nvbios_rd16(ptr noundef %10, i32 noundef %107) #5
  %109 = zext i16 %108 to i32
  %110 = load ptr, ptr %7, align 4
  %111 = getelementptr inbounds %struct.nvkm_device, ptr %110, i32 0, i32 21
  %112 = load ptr, ptr %111, align 8
  %113 = or i32 %99, 16777216
  %114 = getelementptr inbounds %struct.nvkm_device, ptr %110, i32 0, i32 11
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 1089984
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %113) #5, !srcloc !10
  %117 = icmp eq i16 %108, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %118, %86
  %119 = phi i32 [ %124, %118 ], [ 0, %86 ]
  %120 = add nuw nsw i32 %119, %104
  %121 = call i32 @nvbios_rd32(ptr noundef %112, i32 noundef %120) #5
  %122 = load ptr, ptr %114, align 4
  %123 = getelementptr i8, ptr %122, i32 1089988
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #5, !srcloc !10
  %124 = add nuw nsw i32 %119, 4
  %125 = icmp ult i32 %124, %109
  br i1 %125, label %118, label %126

126:                                              ; preds = %118, %86
  %127 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr i8, ptr %128, i32 1089600
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 20480) #5, !srcloc !10
  %130 = load i32, ptr %4, align 4
  %131 = load ptr, ptr %7, align 4
  %132 = getelementptr inbounds %struct.nvkm_device, ptr %131, i32 0, i32 11
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr i8, ptr %133, i32 1089796
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %130) #5, !srcloc !10
  %135 = load ptr, ptr %132, align 4
  %136 = getelementptr i8, ptr %135, i32 1089804
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 0) #5, !srcloc !10
  %137 = load ptr, ptr %132, align 4
  %138 = getelementptr i8, ptr %137, i32 1089792
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 2) #5, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i32 40, i1 false), !annotation !8
  call void @nvkm_timer_wait_init(ptr noundef %8, i64 noundef 2000000000, ptr noundef nonnull %6) #5
  br label %139

139:                                              ; preds = %145, %126
  %140 = load ptr, ptr %127, align 4
  %141 = getelementptr i8, ptr %140, i32 1089600
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %143 = and i32 %142, 8192
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %167

145:                                              ; preds = %139
  %146 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %6) #5
  %147 = icmp sgt i64 %146, -1
  br i1 %147, label %139, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr %6, align 8
  %150 = getelementptr inbounds %struct.nvkm_timer, ptr %149, i32 0, i32 1, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.nvkm_device, ptr %151, i32 0, i32 2
  %153 = load ptr, ptr %152, align 8
  %154 = call ptr @dev_driver_string(ptr noundef %153) #5
  %155 = load ptr, ptr %6, align 8
  %156 = getelementptr inbounds %struct.nvkm_timer, ptr %155, i32 0, i32 1, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.nvkm_device, ptr %157, i32 0, i32 2
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr inbounds %struct.device, ptr %159, i32 0, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %148
  %164 = load ptr, ptr %159, align 4
  br label %165

165:                                              ; preds = %163, %148
  %166 = phi ptr [ %164, %163 ], [ %161, %148 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 164, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %154, ptr noundef %166) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #5
  br label %170

167:                                              ; preds = %139
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #5
  br label %168

168:                                              ; preds = %167, %42
  %169 = call fastcc i32 @pmu_load(ptr noundef %0, i8 noundef zeroext 1, i1 noundef zeroext %1, ptr noundef null, ptr noundef null) #5
  br label %170

170:                                              ; preds = %168, %165, %37, %33, %25, %21
  %171 = phi i32 [ -110, %165 ], [ 0, %168 ], [ -22, %25 ], [ -22, %21 ], [ %31, %37 ], [ %31, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #5
  ret i32 %171
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_devinit_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv50_devinit_new_(ptr noundef nonnull @gm200_devinit, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_devinit_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvbios_pmuRm(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pmu_code(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 21
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %4, i32 285212672, i32 16777216
  %11 = or i32 %10, %1
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 1089920
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #5, !srcloc !10
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %42, label %19

16:                                               ; preds = %28
  %17 = and i32 %33, 252
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %42, label %35

19:                                               ; preds = %28, %5
  %20 = phi i32 [ %33, %28 ], [ 0, %5 ]
  %21 = and i32 %20, 252
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = add i32 %20, %1
  %25 = lshr i32 %24, 8
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr i8, ptr %26, i32 1089928
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #5, !srcloc !10
  br label %28

28:                                               ; preds = %23, %19
  %29 = add i32 %20, %2
  %30 = tail call i32 @nvbios_rd32(ptr noundef %9, i32 noundef %29) #5
  %31 = load ptr, ptr %12, align 4
  %32 = getelementptr i8, ptr %31, i32 1089924
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #5, !srcloc !10
  %33 = add i32 %20, 4
  %34 = icmp ult i32 %33, %3
  br i1 %34, label %19, label %16

35:                                               ; preds = %35, %16
  %36 = phi i32 [ %39, %35 ], [ %33, %16 ]
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr i8, ptr %37, i32 1089924
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #5, !srcloc !10
  %39 = add i32 %36, 4
  %40 = and i32 %39, 252
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %35

42:                                               ; preds = %35, %16, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_devinit_preinit(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_devinit_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_devinit_pll_set(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gm107_devinit_disable(ptr noundef) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{i64 2151485803}
!10 = !{i64 3944710}
!11 = !{i64 3945128}
!12 = !{i64 2151484581}
