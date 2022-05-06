; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgm200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgm200.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ior_func = type { %struct.anon, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.132, %struct.anon.133, %struct.anon.134 }
%struct.anon = type { ptr, ptr }
%struct.anon.132 = type { ptr, ptr }
%struct.anon.133 = type { [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.134 = type { ptr, ptr, ptr }
%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.135, %struct.anon.136 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.anon.135 = type { i8, i8, i8, i8 }
%struct.anon.136 = type { i8 }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.125 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.124 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.124 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.125 = type { %struct.spinlock, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_outp = type { ptr, ptr, i32, %struct.dcb_output, ptr, %struct.list_head, ptr, i8, i8, ptr }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.126, i8 }
%union.anon.126 = type { %struct.anon.130 }
%struct.anon.130 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgm200.c\00", align 1
@gm200_sor_hda = internal constant %struct.nvkm_ior_func { %struct.anon { ptr @gm200_sor_route_get, ptr @gm200_sor_route_set }, ptr @gf119_sor_state, ptr @nv50_sor_power, ptr null, ptr @gf119_sor_clock, ptr null, ptr null, %struct.anon.132 { ptr @gk104_hdmi_ctrl, ptr @gm200_hdmi_scdc }, %struct.anon.133 { [4 x i8] c"\00\01\02\03", ptr @gf119_sor_dp_links, ptr @g94_sor_dp_power, ptr @gm107_sor_dp_pattern, ptr @gm200_sor_dp_drive, ptr @gf119_sor_dp_vcpi, ptr @gf119_sor_dp_audio, ptr @gf119_sor_dp_audio_sym, ptr null, ptr @gf119_sor_dp_watermark }, %struct.anon.134 { ptr @gf119_hda_hpd, ptr @gf119_hda_eld, ptr @gf119_hda_device_entry } }, align 4
@gm200_sor = internal constant %struct.nvkm_ior_func { %struct.anon { ptr @gm200_sor_route_get, ptr @gm200_sor_route_set }, ptr @gf119_sor_state, ptr @nv50_sor_power, ptr null, ptr @gf119_sor_clock, ptr null, ptr null, %struct.anon.132 { ptr @gk104_hdmi_ctrl, ptr @gm200_hdmi_scdc }, %struct.anon.133 { [4 x i8] c"\00\01\02\03", ptr @gf119_sor_dp_links, ptr @g94_sor_dp_power, ptr @gm107_sor_dp_pattern, ptr @gm200_sor_dp_drive, ptr @gf119_sor_dp_vcpi, ptr @gf119_sor_dp_audio, ptr @gf119_sor_dp_audio_sym, ptr null, ptr @gf119_sor_dp_watermark }, %struct.anon.134 zeroinitializer }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_sor_dp_drive(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_disp, ptr %8, i32 0, i32 1, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 11
  %14 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 8, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 384
  %17 = icmp eq i32 %16, 256
  %18 = select i1 %17, i32 128, i32 0
  %19 = or i32 %18, %13
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.nvkm_ior_func, ptr %20, i32 0, i32 8
  %22 = getelementptr [4 x i8], ptr %21, i32 0, i32 %1
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = add i32 %19, 6406424
  %27 = getelementptr i8, ptr %25, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %29 = load ptr, ptr %24, align 4
  %30 = add i32 %19, 6406432
  %31 = getelementptr i8, ptr %29, i32 %30
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %33 = load ptr, ptr %24, align 4
  %34 = add i32 %19, 6406448
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %37 = and i32 %36, 3840
  %38 = shl i32 %5, 8
  %39 = and i32 %38, 3840
  %40 = icmp ult i32 %37, %39
  %41 = icmp eq i32 %1, 0
  %42 = or i1 %41, %40
  %43 = and i32 %36, -3841
  %44 = or i32 %43, %39
  %45 = select i1 %42, i32 %44, i32 %36
  %46 = zext i8 %23 to i32
  %47 = shl nuw nsw i32 %46, 3
  %48 = shl i32 255, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %32, %49
  %51 = and i32 %28, %49
  %52 = shl i32 %3, %47
  %53 = or i32 %51, %52
  %54 = load ptr, ptr %24, align 4
  %55 = getelementptr i8, ptr %54, i32 %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #3, !srcloc !11
  %56 = shl i32 %4, %47
  %57 = or i32 %50, %56
  %58 = load ptr, ptr %24, align 4
  %59 = getelementptr i8, ptr %58, i32 %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #3, !srcloc !11
  %60 = load ptr, ptr %24, align 4
  %61 = getelementptr i8, ptr %60, i32 %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %45) #3, !srcloc !11
  %62 = load ptr, ptr %24, align 4
  %63 = add i32 %19, 6406460
  %64 = getelementptr i8, ptr %62, i32 %63
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %66 = and i32 %65, %49
  %67 = shl i32 %2, %47
  %68 = or i32 %66, %67
  %69 = load ptr, ptr %24, align 4
  %70 = getelementptr i8, ptr %69, i32 %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_sor_route_set(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 9
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #3, !range !12
  %11 = shl nuw nsw i32 %10, 8
  %12 = icmp eq ptr %1, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  %17 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 8, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 384
  %20 = icmp eq i32 %19, 256
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %13, %2
  %23 = phi i32 [ %16, %13 ], [ 0, %2 ]
  %24 = phi i32 [ %21, %13 ], [ 0, %2 ]
  %25 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 13
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %22
  %30 = add nuw nsw i32 %11, 6365960
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %30
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %35 = and i32 %34, -32
  %36 = shl nuw nsw i32 %24, 4
  %37 = or i32 %36, %23
  %38 = or i32 %37, %35
  %39 = load ptr, ptr %31, align 4
  %40 = getelementptr i8, ptr %39, i32 %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #3, !srcloc !11
  %41 = add nuw nsw i32 %24, 1
  %42 = load i32, ptr %25, align 4
  br label %43

43:                                               ; preds = %29, %22
  %44 = phi i32 [ %42, %29 ], [ %26, %22 ]
  %45 = phi i32 [ %41, %29 ], [ %24, %22 ]
  %46 = and i32 %44, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %43
  %49 = add nuw nsw i32 %11, 6366088
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 %49
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %54 = and i32 %53, -32
  %55 = shl nuw nsw i32 %45, 4
  %56 = or i32 %55, %23
  %57 = or i32 %56, %54
  %58 = load ptr, ptr %50, align 4
  %59 = getelementptr i8, ptr %58, i32 %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #3, !srcloc !11
  br label %60

60:                                               ; preds = %48, %43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_sor_route_get(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 13
  %8 = load i32, ptr %7, align 4
  store i32 0, ptr %1, align 4
  %9 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 9
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = tail call i32 @llvm.cttz.i32(i32 %11, i1 false) #3, !range !12
  %13 = shl nuw nsw i32 %12, 8
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %15 = and i32 %8, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %14, align 4
  %19 = shl nuw nsw i32 %12, 8
  %20 = add nuw nsw i32 %19, 6365960
  %21 = getelementptr i8, ptr %18, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %23 = and i32 %22, 15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %61, label %25

25:                                               ; preds = %17
  %26 = lshr i32 %22, 4
  %27 = and i32 %26, 1
  %28 = load i32, ptr %1, align 4
  %29 = or i32 %28, %27
  store i32 %29, ptr %1, align 4
  br label %30

30:                                               ; preds = %25, %2
  %31 = phi i32 [ 0, %2 ], [ %27, %25 ]
  %32 = phi i32 [ 0, %2 ], [ %23, %25 ]
  %33 = and i32 %8, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %14, align 4
  %37 = add nuw nsw i32 %13, 6366088
  %38 = getelementptr i8, ptr %36, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %40 = and i32 %39, 15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %35
  %43 = lshr i32 %39, 4
  %44 = and i32 %43, 1
  %45 = load i32, ptr %1, align 4
  %46 = or i32 %45, %44
  store i32 %46, ptr %1, align 4
  br label %47

47:                                               ; preds = %42, %30
  %48 = phi i32 [ 0, %30 ], [ %44, %42 ]
  %49 = phi i32 [ 0, %30 ], [ %40, %42 ]
  %50 = icmp eq i32 %8, 3
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = icmp eq i32 %32, %49
  br i1 %52, label %53, label %61

53:                                               ; preds = %51
  %54 = icmp ne i32 %31, 0
  %55 = icmp eq i32 %48, 0
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %57, label %58, !prof !13

57:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef null) #3
  br label %61

58:                                               ; preds = %53, %47
  %59 = select i1 %16, i32 %49, i32 %32
  %60 = add nsw i32 %59, -1
  br label %61

61:                                               ; preds = %58, %57, %51, %35, %17
  %62 = phi i32 [ %60, %58 ], [ -1, %57 ], [ -1, %51 ], [ -1, %35 ], [ -1, %17 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_sor_new(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 565596
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %9 = and i32 %8, 1073741824
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 1052724
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i32 [ %8, %2 ], [ %14, %11 ]
  %17 = shl nuw i32 1, %1
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr @gm200_sor, ptr @gm200_sor_hda
  %21 = tail call i32 @nvkm_ior_new_(ptr noundef nonnull %20, ptr noundef %0, i32 noundef 1, i32 noundef %1) #3
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ior_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_sor_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_sor_power(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_sor_clock(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_hdmi_ctrl(ptr noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_hdmi_scdc(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_sor_dp_links(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g94_sor_dp_power(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_sor_dp_pattern(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_sor_dp_vcpi(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_sor_dp_audio(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_sor_dp_audio_sym(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_sor_dp_watermark(ptr noundef, i32 noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hda_hpd(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hda_eld(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hda_device_entry(ptr noundef, i32 noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!8 = !{i64 3952516}
!9 = !{i64 2151491969}
!10 = !{i64 2151493191}
!11 = !{i64 3952098}
!12 = !{i32 0, i32 33}
!13 = !{!"branch_weights", i32 1, i32 2000}
