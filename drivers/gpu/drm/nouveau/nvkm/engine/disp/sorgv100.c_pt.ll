; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgv100.c"
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

@.str = private unnamed_addr constant [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgv100.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@gv100_sor_hda = internal constant %struct.nvkm_ior_func { %struct.anon { ptr @gm200_sor_route_get, ptr @gm200_sor_route_set }, ptr @gv100_sor_state, ptr @nv50_sor_power, ptr null, ptr @gf119_sor_clock, ptr null, ptr null, %struct.anon.132 { ptr @gv100_hdmi_ctrl, ptr @gm200_hdmi_scdc }, %struct.anon.133 { [4 x i8] c"\00\01\02\03", ptr @gf119_sor_dp_links, ptr @g94_sor_dp_power, ptr @gm107_sor_dp_pattern, ptr @gm200_sor_dp_drive, ptr null, ptr @gv100_sor_dp_audio, ptr @gv100_sor_dp_audio_sym, ptr null, ptr @gv100_sor_dp_watermark }, %struct.anon.134 { ptr @gf119_hda_hpd, ptr @gf119_hda_eld, ptr @gv100_hda_device_entry } }, align 4
@gv100_sor = internal constant %struct.nvkm_ior_func { %struct.anon { ptr @gm200_sor_route_get, ptr @gm200_sor_route_set }, ptr @gv100_sor_state, ptr @nv50_sor_power, ptr null, ptr @gf119_sor_clock, ptr null, ptr null, %struct.anon.132 { ptr @gv100_hdmi_ctrl, ptr @gm200_hdmi_scdc }, %struct.anon.133 { [4 x i8] c"\00\01\02\03", ptr @gf119_sor_dp_links, ptr @g94_sor_dp_power, ptr @gm107_sor_dp_pattern, ptr @gm200_sor_dp_drive, ptr null, ptr @gv100_sor_dp_audio, ptr @gv100_sor_dp_audio_sym, ptr null, ptr @gv100_sor_dp_watermark }, %struct.anon.134 zeroinitializer }, align 4
@switch.table.gv100_sor_state = private unnamed_addr constant [10 x i32] [i32 -497, i32 -497, i32 -497, i32 -113, i32 -113, i32 -497, i32 -113, i32 -113, i32 -497, i32 -497], align 4
@switch.table.gv100_sor_state.2 = private unnamed_addr constant [10 x i32] [i32 176, i32 160, i32 288, i32 80, i32 80, i32 416, i32 80, i32 80, i32 192, i32 320], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gv100_sor_dp_watermark(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_disp, ptr %5, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = shl i32 %1, 11
  %9 = add i32 %8, 6382928
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %14 = and i32 %13, -201326656
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
define dso_local void @gv100_sor_dp_audio_sym(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_disp, ptr %6, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %1, 11
  %10 = add i32 %9, 6382952
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
  %20 = add i32 %9, 6382956
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
define dso_local void @gv100_sor_dp_audio(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.nvkm_timer_wait, align 8
  %5 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_disp, ptr %6, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %1, 11
  %10 = zext i1 %2 to i32
  %11 = add i32 %9, 6382944
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
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %35, ptr noundef %47) #4
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
define dso_local void @gv100_sor_state(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 7
  %8 = icmp eq ptr %7, %1
  %9 = getelementptr inbounds %struct.nvkm_ior, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 5
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = select i1 %8, i32 6849280, i32 6816512
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
  %24 = getelementptr inbounds [10 x i32], ptr @switch.table.gv100_sor_state, i32 0, i32 %19
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds [10 x i32], ptr @switch.table.gv100_sor_state.2, i32 0, i32 %19
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
  %36 = and i32 %35, 130560
  %37 = or i32 %34, %36
  store i32 %37, ptr %20, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gv100_sor_new(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 565596
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %9 = and i32 %8, 1073741824
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 1150896
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %15 = lshr i32 %14, 8
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i32 [ %8, %2 ], [ %15, %11 ]
  %18 = shl nuw i32 1, %1
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @gv100_sor, ptr @gv100_sor_hda
  %22 = tail call i32 @nvkm_ior_new_(ptr noundef nonnull %21, ptr noundef %0, i32 noundef 1, i32 noundef %1) #4
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ior_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gv100_sor_cnt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 6357088
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %9 = lshr i32 %8, 8
  %10 = and i32 %9, 255
  store i32 %10, ptr %1, align 4
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 6357108
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %14 = lshr i32 %13, 8
  %15 = and i32 %14, 15
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_sor_route_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_sor_route_set(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_sor_power(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_sor_clock(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_hdmi_ctrl(ptr noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_hdmi_scdc(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_sor_dp_links(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @g94_sor_dp_power(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_sor_dp_pattern(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_sor_dp_drive(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hda_hpd(ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hda_eld(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_hda_device_entry(ptr noundef, i32 noundef) #3

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
!8 = !{i64 3952380}
!9 = !{i64 2151491833}
!10 = !{i64 2151493055}
!11 = !{i64 3951962}
!12 = !{!"auto-init"}
