; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/sorg94.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorg94.c"
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

@.str = private unnamed_addr constant [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/sorg94.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@g94_sor = internal constant %struct.nvkm_ior_func { %struct.anon zeroinitializer, ptr @g94_sor_state, ptr @nv50_sor_power, ptr null, ptr @nv50_sor_clock, ptr @g94_sor_war_2, ptr @g94_sor_war_3, %struct.anon.132 zeroinitializer, %struct.anon.133 { [4 x i8] c"\02\01\00\03", ptr @g94_sor_dp_links, ptr @g94_sor_dp_power, ptr @g94_sor_dp_pattern, ptr @g94_sor_dp_drive, ptr null, ptr null, ptr @g94_sor_dp_audio_sym, ptr @g94_sor_dp_activesym, ptr @g94_sor_dp_watermark }, %struct.anon.134 zeroinitializer }, align 4
@switch.table.g94_sor_state = private unnamed_addr constant [10 x i32] [i32 -497, i32 -497, i32 -497, i32 -113, i32 -113, i32 -497, i32 -113, i32 -113, i32 -497, i32 -497], align 4
@switch.table.g94_sor_state.2 = private unnamed_addr constant [10 x i32] [i32 176, i32 160, i32 288, i32 80, i32 80, i32 416, i32 80, i32 80, i32 192, i32 320], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @g94_sor_dp_watermark(ptr nocapture noundef readonly %0, i32 %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_disp, ptr %5, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 11
  %11 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 8, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 384
  %14 = icmp eq i32 %13, 256
  %15 = select i1 %14, i32 128, i32 0
  %16 = add i32 %10, 6406440
  %17 = or i32 %16, %15
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %17
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %22 = and i32 %21, -64
  %23 = zext i8 %2 to i32
  %24 = or i32 %22, %23
  %25 = load ptr, ptr %18, align 4
  %26 = getelementptr i8, ptr %25, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #4, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @g94_sor_dp_activesym(ptr nocapture noundef readonly %0, i32 %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) #0 {
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
  %20 = add i32 %19, 6406412
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %25 = and i32 %24, -509
  %26 = zext i8 %2 to i32
  %27 = shl nuw nsw i32 %26, 2
  %28 = or i32 %25, %27
  %29 = load ptr, ptr %21, align 4
  %30 = getelementptr i8, ptr %29, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #4, !srcloc !11
  %31 = add i32 %19, 6406440
  %32 = load ptr, ptr %21, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %35 = and i32 %34, -17792769
  %36 = zext i8 %3 to i32
  %37 = shl nuw i32 %36, 24
  %38 = zext i8 %4 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = or i32 %39, %37
  %41 = zext i8 %5 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = or i32 %40, %42
  %44 = or i32 %35, %43
  %45 = load ptr, ptr %21, align 4
  %46 = getelementptr i8, ptr %45, i32 %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @g94_sor_dp_audio_sym(ptr nocapture noundef readonly %0, i32 %1, i16 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_disp, ptr %6, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 11
  %12 = add i32 %11, 6406632
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %17 = and i32 %16, -65536
  %18 = zext i16 %2 to i32
  %19 = or i32 %17, %18
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr i8, ptr %20, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #4, !srcloc !11
  %22 = add i32 %11, 6406636
  %23 = load ptr, ptr %13, align 4
  %24 = getelementptr i8, ptr %23, i32 %22
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %26 = and i32 %25, -16777216
  %27 = or i32 %26, %3
  %28 = load ptr, ptr %13, align 4
  %29 = getelementptr i8, ptr %28, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @g94_sor_dp_drive(ptr nocapture noundef readonly %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
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
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @g94_sor_dp_pattern(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
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
  %15 = add i32 %9, 6406412
  %16 = or i32 %15, %14
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %21 = and i32 %20, -251658241
  %22 = shl i32 %1, 24
  %23 = or i32 %21, %22
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr i8, ptr %24, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @g94_sor_dp_power(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_disp, ptr %5, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 11
  %11 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 8, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 384
  %14 = icmp eq i32 %13, 256
  %15 = select i1 %14, i32 128, i32 0
  %16 = or i32 %15, %10
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %2
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.nvkm_ior_func, ptr %19, i32 0, i32 8
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi i32 [ 0, %18 ], [ %28, %21 ]
  %23 = phi i32 [ 0, %18 ], [ %29, %21 ]
  %24 = getelementptr [4 x i8], ptr %20, i32 0, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 1, %26
  %28 = or i32 %27, %22
  %29 = add nuw i32 %23, 1
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %31, label %21

31:                                               ; preds = %21, %2
  %32 = phi i32 [ 0, %2 ], [ %28, %21 ]
  %33 = add i32 %16, 6406448
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 %33
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %38 = and i32 %37, -16
  %39 = or i32 %38, %32
  %40 = load ptr, ptr %34, align 4
  %41 = getelementptr i8, ptr %40, i32 %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #4, !srcloc !11
  %42 = add i32 %10, 6406196
  %43 = load ptr, ptr %34, align 4
  %44 = getelementptr i8, ptr %43, i32 %42
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %46 = or i32 %45, -2147483648
  %47 = load ptr, ptr %34, align 4
  %48 = getelementptr i8, ptr %47, i32 %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #4, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %3) #4
  br label %49

49:                                               ; preds = %54, %31
  %50 = load ptr, ptr %34, align 4
  %51 = getelementptr i8, ptr %50, i32 %42
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %76, label %54

54:                                               ; preds = %49
  %55 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #4
  %56 = icmp sgt i64 %55, -1
  br i1 %56, label %49, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.nvkm_timer, ptr %58, i32 0, i32 1, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = call ptr @dev_driver_string(ptr noundef %62) #4
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds %struct.nvkm_timer, ptr %64, i32 0, i32 1, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.device, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = load ptr, ptr %68, align 4
  br label %74

74:                                               ; preds = %72, %57
  %75 = phi ptr [ %73, %72 ], [ %70, %57 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 99, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %63, ptr noundef %75) #4
  br label %76

76:                                               ; preds = %74, %49
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g94_sor_dp_links(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
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
  %16 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 9, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = zext i8 %17 to i32
  %19 = shl nsw i32 -1, %18
  %20 = xor i32 %19, -1
  %21 = shl i32 %20, 16
  %22 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 9, i32 1
  %23 = load i8, ptr %22, align 1, !range !13
  %24 = icmp eq i8 %23, 0
  %25 = or i32 %21, 16384
  %26 = select i1 %24, i32 %21, i32 %25
  %27 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 9, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = icmp ugt i8 %28, 6
  %30 = select i1 %29, i32 262144, i32 0
  %31 = add i32 %9, 6374144
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 %31
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %36 = and i32 %35, -786433
  %37 = or i32 %36, %30
  %38 = load ptr, ptr %32, align 4
  %39 = getelementptr i8, ptr %38, i32 %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #4, !srcloc !11
  %40 = add i32 %15, 6406412
  %41 = load ptr, ptr %32, align 4
  %42 = getelementptr i8, ptr %41, i32 %40
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %44 = and i32 %43, -2048001
  %45 = or i32 %44, %26
  %46 = load ptr, ptr %32, align 4
  %47 = getelementptr i8, ptr %46, i32 %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @g94_sor_state(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 3
  %10 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 7
  %11 = icmp eq ptr %10, %1
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = select i1 %11, i32 6358936, i32 6358932
  %15 = add i32 %14, %9
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
  %24 = getelementptr inbounds [10 x i32], ptr @switch.table.g94_sor_state, i32 0, i32 %19
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds [10 x i32], ptr @switch.table.g94_sor_state.2, i32 0, i32 %19
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
  %36 = and i32 %35, 1536
  %37 = or i32 %34, %36
  store i32 %37, ptr %20, align 4
  tail call void @nv50_pior_depth(ptr noundef %0, ptr noundef %1, i32 noundef %17) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_pior_depth(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g94_sor_new(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @nvkm_ior_new_(ptr noundef nonnull @g94_sor, ptr noundef %0, i32 noundef 1, i32 noundef %1) #4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ior_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g94_sor_cnt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 6357380
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %9 = lshr i32 %8, 24
  %10 = and i32 %9, 15
  store i32 %10, ptr %1, align 4
  ret i32 4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_sor_power(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_sor_clock(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @g94_sor_war_2(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 11
  %10 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 8, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 112
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %14, label %90

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = add i32 %9, 6374144
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %20 = and i32 %19, 196608
  switch i32 %20, label %90 [
    i32 196608, label %21
    i32 0, label %21
  ]

21:                                               ; preds = %14, %14
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr i8, ptr %22, i32 59456
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %25 = or i32 %24, -2147483648
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr i8, ptr %26, i32 59456
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #4, !srcloc !11
  %28 = load ptr, ptr %15, align 4
  %29 = getelementptr i8, ptr %28, i32 %17
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %31 = or i32 %30, 50331648
  %32 = load ptr, ptr %15, align 4
  %33 = getelementptr i8, ptr %32, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #4, !srcloc !11
  %34 = add i32 %9, 6406412
  %35 = load ptr, ptr %15, align 4
  %36 = getelementptr i8, ptr %35, i32 %34
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %38 = or i32 %37, 1
  %39 = load ptr, ptr %15, align 4
  %40 = getelementptr i8, ptr %39, i32 %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #4, !srcloc !11
  %41 = add i32 %9, 6406156
  %42 = load ptr, ptr %15, align 4
  %43 = getelementptr i8, ptr %42, i32 %41
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %45 = and i32 %44, -251658241
  %46 = load ptr, ptr %15, align 4
  %47 = getelementptr i8, ptr %46, i32 %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #4, !srcloc !11
  %48 = add i32 %9, 6406152
  %49 = load ptr, ptr %15, align 4
  %50 = getelementptr i8, ptr %49, i32 %48
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %52 = and i32 %51, 16777215
  %53 = or i32 %52, 335544320
  %54 = load ptr, ptr %15, align 4
  %55 = getelementptr i8, ptr %54, i32 %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #4, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %6, i64 noundef 400000, ptr noundef nonnull %2) #4
  br label %56

56:                                               ; preds = %56, %21
  %57 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #4
  %58 = icmp sgt i64 %57, -1
  br i1 %58, label %56, label %59

59:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #4
  %60 = load ptr, ptr %15, align 4
  %61 = getelementptr i8, ptr %60, i32 %48
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %63 = and i32 %62, 16777215
  %64 = load ptr, ptr %15, align 4
  %65 = getelementptr i8, ptr %64, i32 %48
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #4, !srcloc !11
  %66 = load ptr, ptr %15, align 4
  %67 = getelementptr i8, ptr %66, i32 %41
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %69 = and i32 %68, -251658241
  %70 = or i32 %69, 16777216
  %71 = load ptr, ptr %15, align 4
  %72 = getelementptr i8, ptr %71, i32 %41
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #4, !srcloc !11
  %73 = load ptr, ptr %15, align 4
  %74 = add i32 %9, 6406148
  %75 = getelementptr i8, ptr %73, i32 %74
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %59
  %80 = load ptr, ptr %15, align 4
  %81 = add i32 %9, 6406192
  %82 = getelementptr i8, ptr %80, i32 %81
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %84 = load ptr, ptr %15, align 4
  %85 = add i32 %9, 6406208
  %86 = shl i32 %83, 2
  %87 = and i32 %86, 60
  %88 = or i32 %87, %85
  %89 = getelementptr i8, ptr %84, i32 %88
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 520126464) #4, !srcloc !11
  br label %90

90:                                               ; preds = %79, %59, %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @g94_sor_war_3(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_disp, ptr %5, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 11
  %11 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 8, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 112
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %15, label %174

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = add i32 %10, 6374144
  %19 = getelementptr i8, ptr %17, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %21 = and i32 %20, 196608
  switch i32 %21, label %174 [
    i32 196608, label %22
    i32 0, label %22
  ]

22:                                               ; preds = %15, %15
  %23 = load ptr, ptr %16, align 4
  %24 = add i32 %10, 6406148
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %112, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %16, align 4
  %31 = add i32 %10, 6406192
  %32 = getelementptr i8, ptr %30, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %34 = load ptr, ptr %16, align 4
  %35 = add i32 %10, 6406208
  %36 = lshr i32 %33, 6
  %37 = and i32 %36, 60
  %38 = or i32 %37, %35
  %39 = getelementptr i8, ptr %34, i32 %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 520126464) #4, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %2) #4
  br label %40

40:                                               ; preds = %46, %29
  %41 = load ptr, ptr %16, align 4
  %42 = getelementptr i8, ptr %41, i32 %31
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %44 = and i32 %43, 268435456
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %40
  %47 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #4
  %48 = icmp sgt i64 %47, -1
  br i1 %48, label %40, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds %struct.nvkm_timer, ptr %50, i32 0, i32 1, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = call ptr @dev_driver_string(ptr noundef %54) #4
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds %struct.nvkm_timer, ptr %56, i32 0, i32 1, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nvkm_device, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = load ptr, ptr %60, align 4
  br label %66

66:                                               ; preds = %64, %49
  %67 = phi ptr [ %65, %64 ], [ %62, %49 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %55, ptr noundef %67) #4
  br label %68

68:                                               ; preds = %66, %40
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #4
  %69 = load ptr, ptr %16, align 4
  %70 = getelementptr i8, ptr %69, i32 %24
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %72 = and i32 %71, 2147483646
  %73 = or i32 %72, -2147483648
  %74 = load ptr, ptr %16, align 4
  %75 = getelementptr i8, ptr %74, i32 %24
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #4, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %3) #4
  br label %76

76:                                               ; preds = %82, %68
  %77 = load ptr, ptr %16, align 4
  %78 = getelementptr i8, ptr %77, i32 %31
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %80 = and i32 %79, 268435456
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %104, label %82

82:                                               ; preds = %76
  %83 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #4
  %84 = icmp sgt i64 %83, -1
  br i1 %84, label %76, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %3, align 8
  %87 = getelementptr inbounds %struct.nvkm_timer, ptr %86, i32 0, i32 1, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.nvkm_device, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 8
  %91 = call ptr @dev_driver_string(ptr noundef %90) #4
  %92 = load ptr, ptr %3, align 8
  %93 = getelementptr inbounds %struct.nvkm_timer, ptr %92, i32 0, i32 1, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.nvkm_device, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.device, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %85
  %101 = load ptr, ptr %96, align 4
  br label %102

102:                                              ; preds = %100, %85
  %103 = phi ptr [ %101, %100 ], [ %98, %85 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 194, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %91, ptr noundef %103) #4
  br label %104

104:                                              ; preds = %102, %76
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #4
  %105 = load ptr, ptr %16, align 4
  %106 = getelementptr i8, ptr %105, i32 %38
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 8192) #4, !srcloc !11
  %107 = load ptr, ptr %16, align 4
  %108 = shl i32 %33, 2
  %109 = and i32 %108, 60
  %110 = or i32 %109, %35
  %111 = getelementptr i8, ptr %107, i32 %110
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 520093696) #4, !srcloc !11
  br label %112

112:                                              ; preds = %104, %22
  %113 = add i32 %10, 6406412
  %114 = load ptr, ptr %16, align 4
  %115 = getelementptr i8, ptr %114, i32 %113
  %116 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %117 = and i32 %116, -2
  %118 = load ptr, ptr %16, align 4
  %119 = getelementptr i8, ptr %118, i32 %113
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %117) #4, !srcloc !11
  %120 = load ptr, ptr %16, align 4
  %121 = getelementptr i8, ptr %120, i32 %18
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %123 = and i32 %122, -50331649
  %124 = load ptr, ptr %16, align 4
  %125 = getelementptr i8, ptr %124, i32 %18
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #4, !srcloc !11
  br i1 %28, label %133, label %126

126:                                              ; preds = %112
  %127 = load ptr, ptr %16, align 4
  %128 = getelementptr i8, ptr %127, i32 %24
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %130 = or i32 %129, -2147483647
  %131 = load ptr, ptr %16, align 4
  %132 = getelementptr i8, ptr %131, i32 %24
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #4, !srcloc !11
  br label %133

133:                                              ; preds = %126, %112
  %134 = load ptr, ptr %4, align 4
  %135 = getelementptr inbounds %struct.nvkm_disp, ptr %134, i32 0, i32 1, i32 1, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.nvkm_disp, ptr %134, i32 0, i32 3
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, %137
  br i1 %139, label %166, label %140

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.nvkm_device, ptr %136, i32 0, i32 11
  br label %142

142:                                              ; preds = %162, %140
  %143 = phi ptr [ %163, %162 ], [ %138, %140 ]
  %144 = phi i1 [ true, %162 ], [ false, %140 ]
  br label %145

145:                                              ; preds = %159, %142
  %146 = phi ptr [ %160, %159 ], [ %143, %142 ]
  %147 = getelementptr i8, ptr %146, i32 -16
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load ptr, ptr %141, align 4
  %152 = getelementptr i8, ptr %146, i32 -12
  %153 = load i32, ptr %152, align 4
  %154 = shl i32 %153, 11
  %155 = add i32 %154, 6374144
  %156 = getelementptr i8, ptr %151, i32 %155
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %158 = and i32 %157, 50331648
  switch i32 %158, label %159 [
    i32 33554432, label %162
    i32 50331648, label %162
  ]

159:                                              ; preds = %150, %145
  %160 = load ptr, ptr %146, align 4
  %161 = icmp eq ptr %160, %137
  br i1 %161, label %165, label %145

162:                                              ; preds = %150, %150
  %163 = load ptr, ptr %146, align 4
  %164 = icmp eq ptr %163, %137
  br i1 %164, label %174, label %142

165:                                              ; preds = %159
  br i1 %144, label %174, label %166

166:                                              ; preds = %165, %133
  %167 = getelementptr inbounds %struct.nvkm_device, ptr %136, i32 0, i32 11
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr i8, ptr %168, i32 59456
  %170 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %171 = and i32 %170, 2147483647
  %172 = load ptr, ptr %167, align 4
  %173 = getelementptr i8, ptr %172, i32 59456
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %171) #4, !srcloc !11
  br label %174

174:                                              ; preds = %166, %165, %162, %15, %1
  ret void
}

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
!8 = !{i64 3956171}
!9 = !{i64 2151495624}
!10 = !{i64 2151496846}
!11 = !{i64 3955753}
!12 = !{!"auto-init"}
!13 = !{i8 0, i8 2}
