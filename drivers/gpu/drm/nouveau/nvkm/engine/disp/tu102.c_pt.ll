; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/tu102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/tu102.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_disp_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.126, %struct.anon.126, %struct.anon.126, %struct.anon.126, %struct.anon.126, i16 }
%struct.anon.126 = type { ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_disp_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.127, %struct.anon.127, %struct.anon.127, %struct.anon.128, %struct.anon.129, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.125 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.124 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.124 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.anon.125 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.127 = type { i32, i32 }
%struct.anon.128 = type { i32, i32, i32 }
%struct.anon.129 = type { i32, i32, [3 x i8] }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_gpuobj = type { %union.anon.1, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.1 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/tu102.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@tu102_disp = internal constant %struct.nv50_disp_func { ptr @tu102_disp_init, ptr @gv100_disp_fini, ptr @gv100_disp_intr, ptr null, ptr @gv100_disp_chan_uevent, ptr @gv100_disp_super, ptr @tu102_disp_root_oclass, %struct.anon.126 { ptr @gv100_disp_wndw_cnt, ptr null }, %struct.anon.126 { ptr @gv100_head_cnt, ptr @gv100_head_new }, %struct.anon.126 zeroinitializer, %struct.anon.126 { ptr @gv100_sor_cnt, ptr @tu102_sor_new }, %struct.anon.126 zeroinitializer, i16 8192 }, align 4
@gv100_disp_chan_uevent = external dso_local constant %struct.nvkm_event_func, align 4
@tu102_disp_root_oclass = external dso_local constant %struct.nvkm_disp_oclass, align 4
@switch.table.tu102_disp_init = private unnamed_addr constant [3 x i32] [i32 1, i32 3, i32 2], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tu102_disp_init(ptr noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 6444264
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 6444264
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %15 = and i32 %14, -2
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %16, i32 6444264
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #4, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #4
  br label %18

18:                                               ; preds = %24, %11
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr i8, ptr %19, i32 6444264
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %18
  %25 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #4
  %26 = icmp sgt i64 %25, -1
  br i1 %26, label %18, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.nvkm_timer, ptr %28, i32 0, i32 1, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = call ptr @dev_driver_string(ptr noundef %32) #4
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.nvkm_timer, ptr %34, i32 0, i32 1, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load ptr, ptr %38, align 4
  br label %44

44:                                               ; preds = %42, %27
  %45 = phi ptr [ %43, %42 ], [ %40, %27 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %33, ptr noundef %45) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #4
  br label %302

46:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #4
  br label %47

47:                                               ; preds = %46, %1
  %48 = load ptr, ptr %5, align 4
  %49 = getelementptr i8, ptr %48, i32 6553608
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 33) #4, !srcloc !11
  %50 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 9, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %53, %47
  %54 = phi i32 [ %71, %53 ], [ 0, %47 ]
  %55 = load ptr, ptr %5, align 4
  %56 = shl i32 %54, 11
  %57 = add i32 %56, 6406144
  %58 = getelementptr i8, ptr %55, i32 %57
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %60 = load ptr, ptr %5, align 4
  %61 = getelementptr i8, ptr %60, i32 6553600
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %63 = shl i32 256, %54
  %64 = or i32 %62, %63
  %65 = load ptr, ptr %5, align 4
  %66 = getelementptr i8, ptr %65, i32 6553600
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #4, !srcloc !11
  %67 = load ptr, ptr %5, align 4
  %68 = shl i32 %54, 3
  %69 = add i32 %68, 6553924
  %70 = getelementptr i8, ptr %67, i32 %69
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %59) #4, !srcloc !11
  %71 = add nuw nsw i32 %54, 1
  %72 = load i32, ptr %50, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %53, label %74

74:                                               ; preds = %53, %47
  %75 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %75
  br i1 %77, label %78, label %82

78:                                               ; preds = %82, %74
  %79 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 6, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %165, label %132

82:                                               ; preds = %82, %74
  %83 = phi ptr [ %130, %82 ], [ %76, %74 ]
  %84 = getelementptr i8, ptr %83, i32 -4
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %5, align 4
  %87 = shl i32 %85, 11
  %88 = add i32 %87, 6382336
  %89 = getelementptr i8, ptr %86, i32 %88
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %91 = load ptr, ptr %5, align 4
  %92 = shl i32 %85, 5
  %93 = add i32 %92, 6553672
  %94 = getelementptr i8, ptr %91, i32 %93
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %90) #4, !srcloc !11
  %95 = add i32 %87, 6381888
  %96 = add i32 %92, 6555264
  %97 = load ptr, ptr %5, align 4
  %98 = getelementptr i8, ptr %97, i32 %95
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %100 = load ptr, ptr %5, align 4
  %101 = getelementptr i8, ptr %100, i32 %96
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #4, !srcloc !11
  %102 = load ptr, ptr %5, align 4
  %103 = add i32 %87, 6381892
  %104 = getelementptr i8, ptr %102, i32 %103
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %106 = load ptr, ptr %5, align 4
  %107 = add i32 %92, 6555268
  %108 = getelementptr i8, ptr %106, i32 %107
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %105) #4, !srcloc !11
  %109 = load ptr, ptr %5, align 4
  %110 = add i32 %87, 6381896
  %111 = getelementptr i8, ptr %109, i32 %110
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %113 = load ptr, ptr %5, align 4
  %114 = add i32 %92, 6555272
  %115 = getelementptr i8, ptr %113, i32 %114
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %112) #4, !srcloc !11
  %116 = load ptr, ptr %5, align 4
  %117 = add i32 %87, 6381900
  %118 = getelementptr i8, ptr %116, i32 %117
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %120 = load ptr, ptr %5, align 4
  %121 = add i32 %92, 6555276
  %122 = getelementptr i8, ptr %120, i32 %121
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %119) #4, !srcloc !11
  %123 = load ptr, ptr %5, align 4
  %124 = add i32 %87, 6381904
  %125 = getelementptr i8, ptr %123, i32 %124
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %127 = load ptr, ptr %5, align 4
  %128 = add i32 %92, 6555280
  %129 = getelementptr i8, ptr %127, i32 %128
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %126) #4, !srcloc !11
  %130 = load ptr, ptr %83, align 4
  %131 = icmp eq ptr %130, %75
  br i1 %131, label %78, label %82

132:                                              ; preds = %165, %78
  %133 = load ptr, ptr %5, align 4
  %134 = getelementptr i8, ptr %133, i32 6479872
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %136 = load ptr, ptr %5, align 4
  %137 = getelementptr i8, ptr %136, i32 6553616
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %135) #4, !srcloc !11
  %138 = load ptr, ptr %5, align 4
  %139 = getelementptr i8, ptr %138, i32 6479876
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %141 = load ptr, ptr %5, align 4
  %142 = getelementptr i8, ptr %141, i32 6553620
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %140) #4, !srcloc !11
  %143 = load ptr, ptr %5, align 4
  %144 = getelementptr i8, ptr %143, i32 6479880
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %146 = load ptr, ptr %5, align 4
  %147 = getelementptr i8, ptr %146, i32 6553624
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %145) #4, !srcloc !11
  %148 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 6
  %149 = load ptr, ptr %5, align 4
  %150 = getelementptr i8, ptr %149, i32 6357112
  %151 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %152 = or i32 %151, 1
  %153 = load ptr, ptr %5, align 4
  %154 = getelementptr i8, ptr %153, i32 6357112
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %152) #4, !srcloc !11
  %155 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 11
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %156, i32 0, i32 2
  %158 = load ptr, ptr %157, align 8
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.nvkm_memory_func, ptr %159, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = call i32 %161(ptr noundef %158) #4
  %163 = add i32 %162, -1
  %164 = icmp ult i32 %163, 3
  br i1 %164, label %245, label %248

165:                                              ; preds = %165, %78
  %166 = phi i32 [ %242, %165 ], [ 0, %78 ]
  %167 = load ptr, ptr %5, align 4
  %168 = getelementptr i8, ptr %167, i32 6553604
  %169 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %170 = shl nuw i32 1, %166
  %171 = or i32 %169, %170
  %172 = load ptr, ptr %5, align 4
  %173 = getelementptr i8, ptr %172, i32 6553604
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %171) #4, !srcloc !11
  %174 = shl i32 %166, 11
  %175 = add i32 %174, 6488320
  %176 = shl i32 %166, 5
  %177 = add i32 %176, 6555520
  %178 = load ptr, ptr %5, align 4
  %179 = getelementptr i8, ptr %178, i32 %175
  %180 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %181 = load ptr, ptr %5, align 4
  %182 = getelementptr i8, ptr %181, i32 %177
  %183 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %184 = load ptr, ptr %5, align 4
  %185 = getelementptr i8, ptr %184, i32 %177
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %180) #4, !srcloc !11
  %186 = load ptr, ptr %5, align 4
  %187 = add i32 %174, 6488324
  %188 = getelementptr i8, ptr %186, i32 %187
  %189 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %190 = add i32 %176, 6555524
  %191 = load ptr, ptr %5, align 4
  %192 = getelementptr i8, ptr %191, i32 %190
  %193 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %194 = load ptr, ptr %5, align 4
  %195 = getelementptr i8, ptr %194, i32 %190
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %189) #4, !srcloc !11
  %196 = load ptr, ptr %5, align 4
  %197 = add i32 %174, 6488328
  %198 = getelementptr i8, ptr %196, i32 %197
  %199 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %198) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %200 = add i32 %176, 6555528
  %201 = load ptr, ptr %5, align 4
  %202 = getelementptr i8, ptr %201, i32 %200
  %203 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %204 = load ptr, ptr %5, align 4
  %205 = getelementptr i8, ptr %204, i32 %200
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 %199) #4, !srcloc !11
  %206 = load ptr, ptr %5, align 4
  %207 = add i32 %174, 6488332
  %208 = getelementptr i8, ptr %206, i32 %207
  %209 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %208) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %210 = add i32 %176, 6555532
  %211 = load ptr, ptr %5, align 4
  %212 = getelementptr i8, ptr %211, i32 %210
  %213 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %214 = load ptr, ptr %5, align 4
  %215 = getelementptr i8, ptr %214, i32 %210
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 %209) #4, !srcloc !11
  %216 = load ptr, ptr %5, align 4
  %217 = add i32 %174, 6488336
  %218 = getelementptr i8, ptr %216, i32 %217
  %219 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %220 = add i32 %176, 6555536
  %221 = load ptr, ptr %5, align 4
  %222 = getelementptr i8, ptr %221, i32 %220
  %223 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %222) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %224 = load ptr, ptr %5, align 4
  %225 = getelementptr i8, ptr %224, i32 %220
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %219) #4, !srcloc !11
  %226 = load ptr, ptr %5, align 4
  %227 = add i32 %174, 6488340
  %228 = getelementptr i8, ptr %226, i32 %227
  %229 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %228) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %230 = add i32 %176, 6555540
  %231 = load ptr, ptr %5, align 4
  %232 = getelementptr i8, ptr %231, i32 %230
  %233 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %232) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %234 = load ptr, ptr %5, align 4
  %235 = getelementptr i8, ptr %234, i32 %230
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %229) #4, !srcloc !11
  %236 = load ptr, ptr %5, align 4
  %237 = getelementptr i8, ptr %236, i32 6553612
  %238 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %237) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %239 = or i32 %238, 256
  %240 = load ptr, ptr %5, align 4
  %241 = getelementptr i8, ptr %240, i32 6553612
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %241, i32 %239) #4, !srcloc !11
  %242 = add nuw nsw i32 %166, 1
  %243 = load i32, ptr %79, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %165, label %132

245:                                              ; preds = %132
  %246 = getelementptr inbounds [3 x i32], ptr @switch.table.tu102_disp_init, i32 0, i32 %163
  %247 = load i32, ptr %246, align 4
  br label %248

248:                                              ; preds = %245, %132
  %249 = phi i32 [ %145, %132 ], [ %247, %245 ]
  %250 = or i32 %249, 8
  %251 = load ptr, ptr %5, align 4
  %252 = getelementptr i8, ptr %251, i32 6357008
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 %250) #4, !srcloc !11
  %253 = load ptr, ptr %155, align 4
  %254 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %253, i32 0, i32 4
  %255 = load i64, ptr %254, align 8
  %256 = lshr i64 %255, 16
  %257 = trunc i64 %256 to i32
  %258 = load ptr, ptr %5, align 4
  %259 = getelementptr i8, ptr %258, i32 6357012
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %257) #4, !srcloc !11
  %260 = load ptr, ptr %5, align 4
  %261 = getelementptr i8, ptr %260, i32 6364400
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %261, i32 391) #4, !srcloc !11
  %262 = load ptr, ptr %5, align 4
  %263 = getelementptr i8, ptr %262, i32 6364592
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %263, i32 391) #4, !srcloc !11
  %264 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 7
  %265 = load i32, ptr %264, align 4
  %266 = shl i32 %265, 16
  %267 = or i32 %266, 1
  %268 = load ptr, ptr %5, align 4
  %269 = getelementptr i8, ptr %268, i32 6364396
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %269, i32 %267) #4, !srcloc !11
  %270 = load ptr, ptr %5, align 4
  %271 = getelementptr i8, ptr %270, i32 6364588
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 0) #4, !srcloc !11
  %272 = load i32, ptr %148, align 4
  %273 = load ptr, ptr %5, align 4
  %274 = getelementptr i8, ptr %273, i32 6364392
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %274, i32 %272) #4, !srcloc !11
  %275 = load ptr, ptr %5, align 4
  %276 = getelementptr i8, ptr %275, i32 6364584
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %276, i32 0) #4, !srcloc !11
  %277 = load i32, ptr %148, align 4
  %278 = load ptr, ptr %5, align 4
  %279 = getelementptr i8, ptr %278, i32 6364388
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %279, i32 %277) #4, !srcloc !11
  %280 = load ptr, ptr %5, align 4
  %281 = getelementptr i8, ptr %280, i32 6364580
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 0) #4, !srcloc !11
  %282 = load ptr, ptr %75, align 4
  %283 = icmp eq ptr %282, %75
  br i1 %283, label %297, label %284

284:                                              ; preds = %284, %248
  %285 = phi ptr [ %295, %284 ], [ %282, %248 ]
  %286 = getelementptr i8, ptr %285, i32 -4
  %287 = load i32, ptr %286, align 4
  %288 = shl i32 %287, 2
  %289 = load ptr, ptr %5, align 4
  %290 = add i32 %288, 6364352
  %291 = getelementptr i8, ptr %289, i32 %290
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %291, i32 4) #4, !srcloc !11
  %292 = load ptr, ptr %5, align 4
  %293 = add i32 %288, 6364544
  %294 = getelementptr i8, ptr %292, i32 %293
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %294, i32 0) #4, !srcloc !11
  %295 = load ptr, ptr %285, align 4
  %296 = icmp eq ptr %295, %75
  br i1 %296, label %297, label %284

297:                                              ; preds = %284, %248
  %298 = load ptr, ptr %5, align 4
  %299 = getelementptr i8, ptr %298, i32 6364404
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %299, i32 0) #4, !srcloc !11
  %300 = load ptr, ptr %5, align 4
  %301 = getelementptr i8, ptr %300, i32 6364596
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %301, i32 0) #4, !srcloc !11
  br label %302

302:                                              ; preds = %297, %44
  %303 = phi i32 [ -16, %44 ], [ 0, %297 ]
  ret i32 %303
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tu102_disp_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv50_disp_new_(ptr noundef nonnull @tu102_disp, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_disp_fini(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_disp_intr(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_disp_super(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_disp_wndw_cnt(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_head_cnt(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_head_new(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_sor_cnt(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_sor_new(ptr noundef, i32 noundef) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
!8 = !{i64 3948564}
!9 = !{i64 2151488017}
!10 = !{i64 2151489239}
!11 = !{i64 3948146}
!12 = !{!"auto-init"}
