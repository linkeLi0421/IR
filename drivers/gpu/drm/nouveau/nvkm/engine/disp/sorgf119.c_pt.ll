; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgf119.c"
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = private unnamed_addr constant [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgf119.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@gf119_sor = internal constant %struct.nvkm_ior_func { %struct.anon zeroinitializer, ptr @gf119_sor_state, ptr @nv50_sor_power, ptr null, ptr @gf119_sor_clock, ptr null, ptr null, %struct.anon.132 { ptr @gf119_hdmi_ctrl, ptr null }, %struct.anon.133 { [4 x i8] c"\02\01\00\03", ptr @gf119_sor_dp_links, ptr @g94_sor_dp_power, ptr @gf119_sor_dp_pattern, ptr @gf119_sor_dp_drive, ptr @gf119_sor_dp_vcpi, ptr @gf119_sor_dp_audio, ptr @gf119_sor_dp_audio_sym, ptr null, ptr @gf119_sor_dp_watermark }, %struct.anon.134 { ptr @gf119_hda_hpd, ptr @gf119_hda_eld, ptr @gf119_hda_device_entry } }, align 4
@switch.table.gf119_sor_state = private unnamed_addr constant [10 x i32] [i32 -497, i32 -497, i32 -497, i32 -113, i32 -113, i32 -497, i32 -113, i32 -113, i32 -497, i32 -497], align 4
@switch.table.gf119_sor_state.2 = private unnamed_addr constant [10 x i32] [i32 176, i32 160, i32 288, i32 80, i32 80, i32 416, i32 80, i32 80, i32 192, i32 320], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf119_sor_dp_watermark(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_disp, ptr %5, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = shl i32 %1, 11
  %9 = add i32 %8, 6383120
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %14 = and i32 %13, -134217792
  %15 = zext i8 %2 to i32
  %16 = or i32 %14, %15
  %17 = or i32 %16, 134217728
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr i8, ptr %18, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #4, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf119_sor_dp_audio_sym(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_disp, ptr %6, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %1, 11
  %10 = add i32 %9, 6383136
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %15 = and i32 %14, -65536
  %16 = zext i16 %2 to i32
  %17 = or i32 %15, %16
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #4, !srcloc !11
  %20 = add i32 %9, 6383140
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr i8, ptr %21, i32 %20
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %24 = and i32 %23, -16777216
  %25 = or i32 %24, %3
  %26 = load ptr, ptr %11, align 4
  %27 = getelementptr i8, ptr %26, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf119_sor_dp_audio(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.nvkm_timer_wait, align 8
  %5 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_disp, ptr %6, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %1, 11
  %10 = zext i1 %2 to i32
  %11 = add i32 %9, 6383128
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %16 = and i32 %15, 2147483634
  %17 = or i32 %16, %10
  %18 = or i32 %17, -2147483648
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr i8, ptr %19, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #4, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %8, i64 noundef 2000000000, ptr noundef nonnull %4) #4
  br label %21

21:                                               ; preds = %26, %3
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr i8, ptr %22, i32 %11
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %48, label %26

26:                                               ; preds = %21
  %27 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %4) #4
  %28 = icmp sgt i64 %27, -1
  br i1 %28, label %21, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.nvkm_timer, ptr %30, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = call ptr @dev_driver_string(ptr noundef %34) #4
  %36 = load ptr, ptr %4, align 8
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
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %35, ptr noundef %47) #4
  br label %48

48:                                               ; preds = %46, %21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #4
  ret void
}

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
define dso_local void @gf119_sor_dp_vcpi(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5) #0 {
  %7 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_disp, ptr %8, i32 0, i32 1, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = shl i32 %1, 11
  %12 = add i32 %11, 6382984
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %17 = and i32 %16, -16192
  %18 = zext i8 %3 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = zext i8 %2 to i32
  %21 = or i32 %19, %20
  %22 = or i32 %17, %21
  %23 = load ptr, ptr %13, align 4
  %24 = getelementptr i8, ptr %23, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #4, !srcloc !11
  %25 = add i32 %11, 6382988
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr i8, ptr %26, i32 %25
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %29 = zext i16 %5 to i32
  %30 = shl nuw i32 %29, 16
  %31 = zext i16 %4 to i32
  %32 = or i32 %30, %31
  %33 = load ptr, ptr %13, align 4
  %34 = getelementptr i8, ptr %33, i32 %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf119_sor_dp_drive(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
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
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %29 = load ptr, ptr %24, align 4
  %30 = add i32 %19, 6406432
  %31 = getelementptr i8, ptr %29, i32 %30
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %33 = load ptr, ptr %24, align 4
  %34 = add i32 %19, 6406448
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %37 = and i32 %36, 65280
  %38 = shl i32 %5, 8
  %39 = icmp ult i32 %37, %38
  %40 = icmp eq i32 %1, 0
  %41 = or i1 %40, %39
  %42 = and i32 %36, -65281
  %43 = or i32 %42, %38
  %44 = select i1 %41, i32 %43, i32 %36
  %45 = zext i8 %23 to i32
  %46 = shl nuw nsw i32 %45, 3
  %47 = shl i32 255, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %32, %48
  %50 = and i32 %28, %48
  %51 = shl i32 %3, %46
  %52 = or i32 %50, %51
  %53 = load ptr, ptr %24, align 4
  %54 = getelementptr i8, ptr %53, i32 %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #4, !srcloc !11
  %55 = shl i32 %4, %46
  %56 = or i32 %49, %55
  %57 = load ptr, ptr %24, align 4
  %58 = getelementptr i8, ptr %57, i32 %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #4, !srcloc !11
  %59 = load ptr, ptr %24, align 4
  %60 = getelementptr i8, ptr %59, i32 %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %44) #4, !srcloc !11
  %61 = load ptr, ptr %24, align 4
  %62 = add i32 %19, 6406460
  %63 = getelementptr i8, ptr %61, i32 %62
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %65 = and i32 %64, %48
  %66 = shl i32 %2, %46
  %67 = or i32 %65, %66
  %68 = load ptr, ptr %24, align 4
  %69 = getelementptr i8, ptr %68, i32 %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf119_sor_dp_pattern(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 11
  %10 = add i32 %9, 6406416
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %15 = and i32 %14, -252645136
  %16 = mul i32 %1, 16843009
  %17 = or i32 %15, %16
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf119_sor_dp_links(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 11
  %10 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 8, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 384
  %13 = icmp eq i32 %12, 256
  %14 = select i1 %13, i32 128, i32 0
  %15 = or i32 %14, %9
  %16 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 9
  %17 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 9, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 9, i32 2
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = shl nsw i32 -1, %21
  %23 = xor i32 %22, -1
  %24 = shl i32 %23, 16
  %25 = load i8, ptr %16, align 4, !range !13
  %26 = icmp eq i8 %25, 0
  %27 = or i32 %24, 1073741824
  %28 = select i1 %26, i32 %24, i32 %27
  %29 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 9, i32 1
  %30 = load i8, ptr %29, align 1, !range !13
  %31 = icmp eq i8 %30, 0
  %32 = or i32 %28, 16384
  %33 = select i1 %31, i32 %28, i32 %32
  %34 = zext i8 %18 to i32
  %35 = shl nuw nsw i32 %34, 18
  %36 = add i32 %9, 6365952
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %36
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %41 = and i32 %40, -8126465
  %42 = or i32 %41, %35
  %43 = load ptr, ptr %37, align 4
  %44 = getelementptr i8, ptr %43, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #4, !srcloc !11
  %45 = add i32 %15, 6406412
  %46 = load ptr, ptr %37, align 4
  %47 = getelementptr i8, ptr %46, i32 %45
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %49 = and i32 %48, -1075789825
  %50 = or i32 %49, %33
  %51 = load ptr, ptr %37, align 4
  %52 = getelementptr i8, ptr %51, i32 %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf119_sor_clock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 11
  %9 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 8, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 384
  %12 = icmp eq i32 %11, 384
  %13 = zext i1 %12 to i32
  %14 = and i32 %10, 112
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = add i32 %8, 6365952
  br label %35

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 10
  %20 = load i8, ptr %19, align 4, !range !13
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 2621440, i32 5242880
  %23 = add i32 %8, 6365952
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 %23
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %28 = and i32 %27, -8126465
  %29 = or i32 %28, %22
  %30 = load ptr, ptr %24, align 4
  %31 = getelementptr i8, ptr %30, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #4, !srcloc !11
  %32 = load i8, ptr %19, align 4, !range !13
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, i32 %13, i32 1
  br label %35

35:                                               ; preds = %18, %16
  %36 = phi i32 [ %17, %16 ], [ %23, %18 ]
  %37 = phi i32 [ %13, %16 ], [ %34, %18 ]
  %38 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 %36
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %42 = and i32 %41, -1800
  %43 = shl nuw nsw i32 %37, 8
  %44 = or i32 %43, %13
  %45 = or i32 %42, %44
  %46 = load ptr, ptr %38, align 4
  %47 = getelementptr i8, ptr %46, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf119_sor_state(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 8
  %8 = icmp eq ptr %7, %1
  %9 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 5
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = select i1 %8, i32 6685184, i32 6554112
  %15 = add i32 %14, %11
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %18 = lshr i32 %17, 8
  %19 = and i32 %18, 15
  %20 = getelementptr inbounds %struct.nvkm_ior_state, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %19, 10
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = getelementptr inbounds [10 x i32], ptr @switch.table.gf119_sor_state, i32 0, i32 %19
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds [10 x i32], ptr @switch.table.gf119_sor_state.2, i32 0, i32 %19
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %23, %2
  %29 = phi i32 [ %25, %23 ], [ -113, %2 ]
  %30 = phi i32 [ %27, %23 ], [ 80, %2 ]
  %31 = and i32 %21, -130688
  %32 = or i32 %31, %19
  %33 = and i32 %32, %29
  %34 = or i32 %33, %30
  %35 = shl i32 %17, 9
  %36 = and i32 %35, 7680
  %37 = or i32 %34, %36
  store i32 %37, ptr %20, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf119_sor_new(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @nvkm_ior_new_(ptr noundef nonnull @gf119_sor, ptr noundef %0, i32 noundef 1, i32 noundef %1) #4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ior_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf119_sor_cnt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 6365188
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %9 = lshr i32 %8, 8
  %10 = and i32 %9, 255
  store i32 %10, ptr %1, align 4
  ret i32 8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_sor_power(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hdmi_ctrl(ptr noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @g94_sor_dp_power(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hda_hpd(ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hda_eld(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hda_device_entry(ptr noundef, i32 noundef) #3

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
!8 = !{i64 3953947}
!9 = !{i64 2151493400}
!10 = !{i64 2151494622}
!11 = !{i64 3953529}
!12 = !{!"auto-init"}
!13 = !{i8 0, i8 2}
