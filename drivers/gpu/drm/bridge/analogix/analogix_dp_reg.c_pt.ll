; ModuleID = '/llk/IR/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.analogix_dp_device = type { ptr, ptr, ptr, %struct.drm_connector, ptr, %struct.drm_dp_aux, ptr, i32, ptr, %struct.video_info, %struct.link_train, ptr, i32, ptr, i8, i8, i8, %struct.mutex, i8, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.72 }
%union.anon.72 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.video_info = type { ptr, i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.link_train = type { i32, [4 x i32], i8, i8, [4 x i8], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dp_sdp_header = type { i8, i8, i8, i8 }
%struct.dp_sdp = type { %struct.dp_sdp_header, [32 x i8] }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to get pll lock status\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to apply PSR %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"AUX CH enable timeout!\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"AUX CH cmd reply timeout!\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"AUX CH error happened: %#x (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"PSR_STATUS read failed ret=%zd\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_enable_video_mute(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4
  br i1 %1, label %7, label %11

7:                                                ; preds = %2
  %8 = or i32 %6, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #4, !srcloc !9
  br label %15

11:                                               ; preds = %2
  %12 = and i32 %6, -65
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #4, !srcloc !9
  br label %15

15:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_stop_video(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %6 = and i32 %5, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_lane_swap(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = select i1 %1, i32 27, i32 228
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %4 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %3) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_init_analog_param(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 16) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr i8, ptr %5, i32 884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 12) #4, !srcloc !9
  %7 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr %8, align 4
  %12 = add i32 %11, -1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = icmp ne i32 %11, 1
  %16 = zext i1 %15 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr i8, ptr %17, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr i8, ptr %19, i32 2532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 149) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr i8, ptr %21, i32 2536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 64) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr i8, ptr %23, i32 2540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 88) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr i8, ptr %25, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 34) #4, !srcloc !9
  br label %27

27:                                               ; preds = %14, %10, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr i8, ptr %28, i32 888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 133) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr i8, ptr %30, i32 892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 103) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr i8, ptr %32, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_init_interrupt(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 3) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr i8, ptr %5, i32 964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 255) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 79) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr i8, ptr %9, i32 972
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 224) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr i8, ptr %11, i32 976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 231) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr i8, ptr %13, i32 988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 99) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr i8, ptr %15, i32 992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr i8, ptr %17, i32 996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr i8, ptr %19, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr i8, ptr %21, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr i8, ptr %23, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %6 = and i32 %5, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !9
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr i8, ptr %9, i32 32
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4
  %12 = and i32 %11, -65
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #4, !srcloc !9
  %15 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 19
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, ptr %16, align 4
  %20 = add i32 %19, -1
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %1
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ 189, %22 ], [ 97, %18 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr i8, ptr %25, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr i8, ptr %27, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 135) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr i8, ptr %29, i32 860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 228) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr i8, ptr %31, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr i8, ptr %33, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 64) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr i8, ptr %35, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr i8, ptr %37, i32 1548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr i8, ptr %39, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr i8, ptr %41, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 1732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 94) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr i8, ptr %45, i32 1736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 26) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr i8, ptr %47, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 16) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr i8, ptr %49, i32 1828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr i8, ptr %51, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !49
  tail call void @arm_heavy_mb() #4
  %53 = load ptr, ptr %2, align 8
  %54 = getelementptr i8, ptr %53, i32 1852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 32) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr i8, ptr %55, i32 1892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 4) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr i8, ptr %57, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 2) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %59 = load ptr, ptr %2, align 8
  %60 = getelementptr i8, ptr %59, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 257) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_swreset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !53
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_config_interrupt(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr i8, ptr %5, i32 996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr i8, ptr %9, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 7) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr i8, ptr %11, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 64) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_mute_hpd_interrupt(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1004
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !59
  %6 = and i32 %5, -8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !9
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr i8, ptr %9, i32 1016
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !61
  %12 = and i32 %11, -65
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr i8, ptr %13, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_unmute_hpd_interrupt(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 7) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !64
  tail call void @arm_heavy_mb() #4
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr i8, ptr %5, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 64) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_get_pll_lock_status(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1728
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !65
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_pll_power_down(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 4
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, 2
  %10 = select i1 %9, i32 300, i32 1820
  %11 = select i1 %9, i32 16, i32 128
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 1820, %2 ], [ %10, %6 ]
  %14 = phi i32 [ 128, %2 ], [ %11, %6 ]
  %15 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 %13
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !66
  %19 = or i32 %18, %14
  %20 = xor i32 %14, -1
  %21 = and i32 %18, %20
  %22 = select i1 %1, i32 %19, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !67
  tail call void @arm_heavy_mb() #4
  %23 = load ptr, ptr %15, align 8
  %24 = getelementptr i8, ptr %23, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_analog_power_down(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 4
  %9 = add i32 %8, -1
  %10 = icmp ult i32 %9, 2
  %11 = select i1 %10, i32 300, i32 1824
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ 1824, %3 ], [ %11, %7 ]
  switch i32 %1, label %106 [
    i32 0, label %14
    i32 1, label %32
    i32 2, label %42
    i32 3, label %52
    i32 4, label %62
    i32 5, label %72
    i32 6, label %97
  ]

14:                                               ; preds = %12
  br i1 %6, label %19, label %15

15:                                               ; preds = %14
  %16 = load i32, ptr %5, align 4
  %17 = add i32 %16, -1
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %14
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ 16, %19 ], [ 32, %15 ]
  %22 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %23, i32 %13
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !68
  %26 = or i32 %25, %21
  %27 = xor i32 %21, -1
  %28 = and i32 %25, %27
  %29 = select i1 %2, i32 %26, i32 %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %30 = load ptr, ptr %22, align 8
  %31 = getelementptr i8, ptr %30, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #4, !srcloc !9
  br label %106

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr i8, ptr %34, i32 %13
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !70
  %37 = and i32 %36, -2
  %38 = zext i1 %2 to i32
  %39 = or i32 %37, %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !71
  tail call void @arm_heavy_mb() #4
  %40 = load ptr, ptr %33, align 8
  %41 = getelementptr i8, ptr %40, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #4, !srcloc !9
  br label %106

42:                                               ; preds = %12
  %43 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr i8, ptr %44, i32 %13
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !72
  %47 = and i32 %46, -3
  %48 = select i1 %2, i32 2, i32 0
  %49 = or i32 %47, %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !73
  tail call void @arm_heavy_mb() #4
  %50 = load ptr, ptr %43, align 8
  %51 = getelementptr i8, ptr %50, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #4, !srcloc !9
  br label %106

52:                                               ; preds = %12
  %53 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr i8, ptr %54, i32 %13
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !74
  %57 = and i32 %56, -5
  %58 = select i1 %2, i32 4, i32 0
  %59 = or i32 %57, %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !75
  tail call void @arm_heavy_mb() #4
  %60 = load ptr, ptr %53, align 8
  %61 = getelementptr i8, ptr %60, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #4, !srcloc !9
  br label %106

62:                                               ; preds = %12
  %63 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr i8, ptr %64, i32 %13
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !76
  %67 = and i32 %66, -9
  %68 = select i1 %2, i32 8, i32 0
  %69 = or i32 %67, %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %70 = load ptr, ptr %63, align 8
  %71 = getelementptr i8, ptr %70, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #4, !srcloc !9
  br label %106

72:                                               ; preds = %12
  br i1 %6, label %77, label %73

73:                                               ; preds = %72
  %74 = load i32, ptr %5, align 4
  %75 = add i32 %74, -1
  %76 = icmp ult i32 %75, 2
  br i1 %76, label %78, label %77

77:                                               ; preds = %73, %72
  br label %78

78:                                               ; preds = %77, %73
  %79 = phi i32 [ 32, %77 ], [ 128, %73 ]
  %80 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr i8, ptr %81, i32 %13
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !78
  %84 = or i32 %83, %79
  %85 = xor i32 %79, -1
  %86 = and i32 %83, %85
  %87 = select i1 %2, i32 %84, i32 %86
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !79
  tail call void @arm_heavy_mb() #4
  %88 = load ptr, ptr %80, align 8
  %89 = getelementptr i8, ptr %88, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #4, !srcloc !9
  %90 = load ptr, ptr %4, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %106, label %92

92:                                               ; preds = %78
  %93 = load i32, ptr %90, align 4
  %94 = add i32 %93, -1
  %95 = icmp ult i32 %94, 2
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #4
  br label %106

97:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4
  tail call void @arm_heavy_mb() #4
  %98 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr i8, ptr %99, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 255) #4
  br i1 %2, label %106, label %101

101:                                              ; preds = %97
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !80
  tail call void @arm_heavy_mb() #4
  %102 = load ptr, ptr %98, align 8
  %103 = getelementptr i8, ptr %102, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 127) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !81
  tail call void @arm_heavy_mb() #4
  %104 = load ptr, ptr %98, align 8
  %105 = getelementptr i8, ptr %104, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 0) #4, !srcloc !9
  br label %106

106:                                              ; preds = %101, %97, %96, %92, %78, %62, %52, %42, %32, %20, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_init_analog_func(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @analogix_dp_set_analog_power_down(ptr noundef %0, i32 noundef 6, i1 noundef zeroext false)
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !82
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 64) #4, !srcloc !9
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr i8, ptr %5, i32 1728
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !83
  %8 = and i32 %7, -13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !84
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr i8, ptr %9, i32 1728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #4, !srcloc !9
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr i8, ptr %11, i32 1728
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !65
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 4
  %22 = add i32 %21, -1
  %23 = icmp ult i32 %22, 2
  %24 = select i1 %23, i32 300, i32 1820
  %25 = select i1 %23, i32 -17, i32 -129
  br label %26

26:                                               ; preds = %20, %16
  %27 = phi i32 [ 1820, %16 ], [ %24, %20 ]
  %28 = phi i32 [ -129, %16 ], [ %25, %20 ]
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr i8, ptr %29, i32 %27
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !66
  %32 = and i32 %31, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !67
  tail call void @arm_heavy_mb() #4
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr i8, ptr %33, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #4, !srcloc !9
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr i8, ptr %35, i32 1728
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !65
  %38 = and i32 %37, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %46, %26
  %41 = phi i32 [ %47, %46 ], [ 0, %26 ]
  %42 = icmp eq i32 %41, 100
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str) #5
  br label %60

46:                                               ; preds = %40
  %47 = add nuw nsw i32 %41, 1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr i8, ptr %48, i32 1728
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !65
  %51 = and i32 %50, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %40, label %53

53:                                               ; preds = %46, %26, %1
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr i8, ptr %54, i32 28
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !85
  %57 = and i32 %56, -8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !86
  tail call void @arm_heavy_mb() #4
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr i8, ptr %58, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #4, !srcloc !9
  br label %60

60:                                               ; preds = %53, %43
  %61 = phi i32 [ -110, %43 ], [ 0, %53 ]
  ret i32 %61
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_clear_hotplug_interrupts(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %6 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 7) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !88
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr i8, ptr %9, i32 988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 64) #4, !srcloc !9
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_init_hpd(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %6 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 7) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !88
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr i8, ptr %9, i32 988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 64) #4, !srcloc !9
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr i8, ptr %11, i32 1544
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !89
  %14 = and i32 %13, -49
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !90
  tail call void @arm_heavy_mb() #4
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr i8, ptr %15, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #4, !srcloc !9
  br label %17

17:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_force_hpd(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1544
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !91
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !92
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr i8, ptr %6, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 48) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_get_irq_type(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @gpiod_get_value(ptr noundef nonnull %3) #4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 2, i32 1
  br label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 976
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !93
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = and i32 %13, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = and i32 %13, 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 8, i32 4
  br label %23

23:                                               ; preds = %19, %16, %9, %5
  %24 = phi i32 [ %8, %5 ], [ 1, %9 ], [ 2, %16 ], [ %22, %19 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_reset_aux(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 28
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !94
  %6 = or i32 %5, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !95
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_init_aux(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !96
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 3) #4, !srcloc !9
  %5 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %6, align 4
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %1
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i32 [ 1824, %12 ], [ 300, %8 ]
  %15 = phi i32 [ 16, %12 ], [ 32, %8 ]
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr i8, ptr %16, i32 %14
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !68
  %19 = or i32 %18, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr i8, ptr %20, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 11, i32 noundef 2) #4
  %22 = load ptr, ptr %5, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %13
  %25 = load i32, ptr %22, align 4
  %26 = add i32 %25, -1
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %13
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ 1824, %28 ], [ 300, %24 ]
  %31 = phi i32 [ -17, %28 ], [ -33, %24 ]
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr i8, ptr %32, i32 %30
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !68
  %35 = and i32 %34, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr i8, ptr %36, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #4, !srcloc !9
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr i8, ptr %38, i32 28
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !94
  %41 = or i32 %40, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !95
  tail call void @arm_heavy_mb() #4
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr i8, ptr %42, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #4, !srcloc !9
  %44 = load ptr, ptr %5, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %29
  %47 = load i32, ptr %44, align 4
  %48 = add i32 %47, -1
  %49 = icmp ult i32 %48, 2
  br i1 %49, label %51, label %50

50:                                               ; preds = %46, %29
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i32 [ 768, %50 ], [ 0, %46 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !97
  tail call void @arm_heavy_mb() #4
  %53 = load ptr, ptr %2, align 8
  %54 = getelementptr i8, ptr %53, i32 912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !98
  tail call void @arm_heavy_mb() #4
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr i8, ptr %55, i32 1928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 129) #4, !srcloc !9
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr i8, ptr %57, i32 28
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !99
  %60 = and i32 %59, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !100
  tail call void @arm_heavy_mb() #4
  %61 = load ptr, ptr %2, align 8
  %62 = getelementptr i8, ptr %61, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_get_plug_in_status(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @gpiod_get_value(ptr noundef nonnull %3) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 1544
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !101
  %13 = and i32 %12, 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8, %5
  br label %16

16:                                               ; preds = %15, %8, %5
  %17 = phi i32 [ -22, %15 ], [ 0, %5 ], [ 0, %8 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_enable_sw_function(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !102
  %6 = and i32 %5, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !103
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_link_bandwidth(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %1, label %7 [
    i32 10, label %3
    i32 6, label %3
  ]

3:                                                ; preds = %2, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !104
  tail call void @arm_heavy_mb() #4
  %4 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 1664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #4, !srcloc !9
  br label %7

7:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_get_link_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1664
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !105
  store i32 %6, ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane_count(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !106
  tail call void @arm_heavy_mb() #4
  %3 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %1) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_get_lane_count(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1668
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !107
  store i32 %6, ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_enable_enhanced_mode(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1548
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4
  br i1 %1, label %7, label %11

7:                                                ; preds = %2
  %8 = or i32 %6, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !108
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr i8, ptr %9, i32 1548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #4, !srcloc !9
  br label %15

11:                                               ; preds = %2
  %12 = and i32 %6, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !109
  tail call void @arm_heavy_mb() #4
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr i8, ptr %13, i32 1548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #4, !srcloc !9
  br label %15

15:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_training_pattern(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %1, label %23 [
    i32 0, label %3
    i32 1, label %7
    i32 2, label %11
    i32 3, label %15
    i32 4, label %19
  ]

3:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !110
  tail call void @arm_heavy_mb() #4
  %4 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 12) #4, !srcloc !9
  br label %23

7:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !111
  tail call void @arm_heavy_mb() #4
  %8 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 4) #4, !srcloc !9
  br label %23

11:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !112
  tail call void @arm_heavy_mb() #4
  %12 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %13, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 33) #4, !srcloc !9
  br label %23

15:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !113
  tail call void @arm_heavy_mb() #4
  %16 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %17, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 34) #4, !srcloc !9
  br label %23

19:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !114
  tail call void @arm_heavy_mb() #4
  %20 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #4, !srcloc !9
  br label %23

23:                                               ; preds = %19, %15, %11, %7, %3, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane0_pre_emphasis(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1676
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !115
  %7 = and i32 %6, -25
  %8 = shl i32 %1, 3
  %9 = or i32 %7, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !116
  tail call void @arm_heavy_mb() #4
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr i8, ptr %10, i32 1676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane1_pre_emphasis(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1680
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !117
  %7 = and i32 %6, -25
  %8 = shl i32 %1, 3
  %9 = or i32 %7, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !118
  tail call void @arm_heavy_mb() #4
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr i8, ptr %10, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane2_pre_emphasis(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1684
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !119
  %7 = and i32 %6, -25
  %8 = shl i32 %1, 3
  %9 = or i32 %7, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !120
  tail call void @arm_heavy_mb() #4
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr i8, ptr %10, i32 1684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane3_pre_emphasis(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1688
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !121
  %7 = and i32 %6, -25
  %8 = shl i32 %1, 3
  %9 = or i32 %7, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !122
  tail call void @arm_heavy_mb() #4
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr i8, ptr %10, i32 1688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane0_link_training(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !123
  tail call void @arm_heavy_mb() #4
  %3 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %1) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane1_link_training(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !124
  tail call void @arm_heavy_mb() #4
  %3 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %1) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane2_link_training(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !125
  tail call void @arm_heavy_mb() #4
  %3 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %1) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane3_link_training(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !126
  tail call void @arm_heavy_mb() #4
  %3 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %1) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_get_lane0_link_training(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1676
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !127
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_get_lane1_link_training(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1680
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !128
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_get_lane2_link_training(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1684
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !129
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_get_lane3_link_training(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1688
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !130
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_reset_macro(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1828
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !131
  %6 = or i32 %5, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !132
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 1828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %9 = and i32 %5, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr i8, ptr %10, i32 1828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_init_video(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !134
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 138) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !135
  tail call void @arm_heavy_mb() #4
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr i8, ptr %5, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !136
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 65) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !137
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr i8, ptr %9, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !138
  tail call void @arm_heavy_mb() #4
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr i8, ptr %11, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 32) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_video_color_format(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 9, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = shl i32 %3, 7
  %5 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 9, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 4
  %8 = or i32 %7, %4
  %9 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 9, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %8, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !139
  tail call void @arm_heavy_mb() #4
  %12 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #4, !srcloc !9
  %15 = load ptr, ptr %12, align 8
  %16 = getelementptr i8, ptr %15, i32 40
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !140
  %18 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 9, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %17, -129
  %22 = select i1 %20, i32 0, i32 128
  %23 = or i32 %22, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %24 = load ptr, ptr %12, align 8
  %25 = getelementptr i8, ptr %24, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_is_slave_video_stream_clock_on(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1536
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !142
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !143
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr i8, ptr %6, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #4, !srcloc !9
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr i8, ptr %8, i32 1536
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !144
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr i8, ptr %14, i32 1540
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !145
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !146
  tail call void @arm_heavy_mb() #4
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr i8, ptr %17, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #4, !srcloc !9
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr i8, ptr %19, i32 1540
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !147
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 0, i32 -22
  br label %25

25:                                               ; preds = %13, %1
  %26 = phi i32 [ -22, %1 ], [ %24, %13 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_video_cr_mn(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %1, 1
  %6 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 1548
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4
  br i1 %5, label %10, label %36

10:                                               ; preds = %4
  %11 = or i32 %9, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !148
  tail call void @arm_heavy_mb() #4
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr i8, ptr %12, i32 1548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #4, !srcloc !9
  %14 = and i32 %2, 255
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !149
  tail call void @arm_heavy_mb() #4
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr i8, ptr %15, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #4, !srcloc !9
  %17 = lshr i32 %2, 8
  %18 = and i32 %17, 255
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !150
  tail call void @arm_heavy_mb() #4
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr i8, ptr %19, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #4, !srcloc !9
  %21 = lshr i32 %2, 16
  %22 = and i32 %21, 255
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !151
  tail call void @arm_heavy_mb() #4
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr i8, ptr %23, i32 1800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #4, !srcloc !9
  %25 = and i32 %3, 255
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !152
  tail call void @arm_heavy_mb() #4
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr i8, ptr %26, i32 1804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #4, !srcloc !9
  %28 = lshr i32 %3, 8
  %29 = and i32 %28, 255
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !153
  tail call void @arm_heavy_mb() #4
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr i8, ptr %30, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #4, !srcloc !9
  %32 = lshr i32 %3, 16
  %33 = and i32 %32, 255
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !154
  tail call void @arm_heavy_mb() #4
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr i8, ptr %34, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #4, !srcloc !9
  br label %46

36:                                               ; preds = %4
  %37 = and i32 %9, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !155
  tail call void @arm_heavy_mb() #4
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr i8, ptr %38, i32 1548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !156
  tail call void @arm_heavy_mb() #4
  %40 = load ptr, ptr %6, align 8
  %41 = getelementptr i8, ptr %40, i32 1804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !157
  tail call void @arm_heavy_mb() #4
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr i8, ptr %42, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 128) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !158
  tail call void @arm_heavy_mb() #4
  %44 = load ptr, ptr %6, align 8
  %45 = getelementptr i8, ptr %44, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #4, !srcloc !9
  br label %46

46:                                               ; preds = %36, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_video_timing_mode(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 68
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4
  br i1 %3, label %8, label %12

8:                                                ; preds = %2
  %9 = and i32 %7, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !159
  tail call void @arm_heavy_mb() #4
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr i8, ptr %10, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #4, !srcloc !9
  br label %16

12:                                               ; preds = %2
  %13 = or i32 %7, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !160
  tail call void @arm_heavy_mb() #4
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr i8, ptr %14, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #4, !srcloc !9
  br label %16

16:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_enable_video_master(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 2048
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4
  br i1 %1, label %7, label %12

7:                                                ; preds = %2
  %8 = and i32 %6, -4
  %9 = or i32 %8, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !161
  tail call void @arm_heavy_mb() #4
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr i8, ptr %10, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #4, !srcloc !9
  br label %16

12:                                               ; preds = %2
  %13 = or i32 %6, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !162
  tail call void @arm_heavy_mb() #4
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr i8, ptr %14, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #4, !srcloc !9
  br label %16

16:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_start_video(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !163
  %6 = or i32 %5, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !164
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_is_video_stream_on(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1544
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !165
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !166
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr i8, ptr %6, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #4, !srcloc !9
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr i8, ptr %8, i32 1544
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !167
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 -22, i32 0
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_config_video_slave_mode(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !168
  %6 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %7, align 4
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = and i32 %5, -97
  br label %18

15:                                               ; preds = %9, %1
  %16 = and i32 %5, -161
  %17 = or i32 %16, 128
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi i32 [ %14, %13 ], [ %17, %15 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !169
  tail call void @arm_heavy_mb() #4
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr i8, ptr %20, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #4, !srcloc !9
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr i8, ptr %22, i32 68
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !170
  %25 = and i32 %24, -5
  %26 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 9, i32 3
  %27 = load i8, ptr %26, align 2, !range !171
  %28 = shl nuw nsw i8 %27, 2
  %29 = zext i8 %28 to i32
  %30 = or i32 %25, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !172
  tail call void @arm_heavy_mb() #4
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr i8, ptr %31, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #4, !srcloc !9
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr i8, ptr %33, i32 68
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !173
  %36 = and i32 %35, -3
  %37 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 9, i32 2
  %38 = load i8, ptr %37, align 1, !range !171
  %39 = shl nuw nsw i8 %38, 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %36, %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !174
  tail call void @arm_heavy_mb() #4
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr i8, ptr %42, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #4, !srcloc !9
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr i8, ptr %44, i32 68
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !175
  %47 = and i32 %46, -2
  %48 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 9, i32 1
  %49 = load i8, ptr %48, align 4, !range !171
  %50 = zext i8 %49 to i32
  %51 = or i32 %47, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !176
  tail call void @arm_heavy_mb() #4
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr i8, ptr %52, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !177
  tail call void @arm_heavy_mb() #4
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr i8, ptr %54, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 257) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_enable_scrambling(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1672
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !178
  %6 = and i32 %5, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !179
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_disable_scrambling(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1672
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !180
  %6 = or i32 %5, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !181
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_enable_psr_crc(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !182
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 2192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_send_psr_spd(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 1600
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !183
  %10 = and i32 %9, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !184
  tail call void @arm_heavy_mb() #4
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr i8, ptr %11, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !185
  tail call void @arm_heavy_mb() #4
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr i8, ptr %13, i32 792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 3) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !186
  tail call void @arm_heavy_mb() #4
  %15 = load i8, ptr %1, align 1
  %16 = zext i8 %15 to i32
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr i8, ptr %17, i32 760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !187
  tail call void @arm_heavy_mb() #4
  %19 = getelementptr inbounds %struct.dp_sdp_header, ptr %1, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr i8, ptr %22, i32 764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !188
  tail call void @arm_heavy_mb() #4
  %24 = getelementptr inbounds %struct.dp_sdp_header, ptr %1, i32 0, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr i8, ptr %27, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !189
  tail call void @arm_heavy_mb() #4
  %29 = getelementptr inbounds %struct.dp_sdp_header, ptr %1, i32 0, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr i8, ptr %32, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !190
  tail call void @arm_heavy_mb() #4
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr i8, ptr %34, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !191
  tail call void @arm_heavy_mb() #4
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr i8, ptr %36, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 22) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !192
  tail call void @arm_heavy_mb() #4
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr i8, ptr %38, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 206) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !193
  tail call void @arm_heavy_mb() #4
  %40 = load ptr, ptr %6, align 8
  %41 = getelementptr i8, ptr %40, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 93) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !194
  tail call void @arm_heavy_mb() #4
  %42 = getelementptr inbounds %struct.dp_sdp, ptr %1, i32 0, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load ptr, ptr %6, align 8
  %46 = getelementptr i8, ptr %45, i32 796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !195
  tail call void @arm_heavy_mb() #4
  %47 = getelementptr %struct.dp_sdp, ptr %1, i32 0, i32 1, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr i8, ptr %50, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #4, !srcloc !9
  %52 = load ptr, ptr %6, align 8
  %53 = getelementptr i8, ptr %52, i32 40
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !196
  %55 = or i32 %54, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !197
  tail call void @arm_heavy_mb() #4
  %56 = load ptr, ptr %6, align 8
  %57 = getelementptr i8, ptr %56, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #4, !srcloc !9
  %58 = load ptr, ptr %6, align 8
  %59 = getelementptr i8, ptr %58, i32 1600
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !198
  %61 = and i32 %60, -18
  %62 = or i32 %61, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !199
  tail call void @arm_heavy_mb() #4
  %63 = load ptr, ptr %6, align 8
  %64 = getelementptr i8, ptr %63, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #4, !srcloc !9
  %65 = load ptr, ptr %6, align 8
  %66 = getelementptr i8, ptr %65, i32 1600
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !200
  %68 = or i32 %67, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !201
  tail call void @arm_heavy_mb() #4
  %69 = load ptr, ptr %6, align 8
  %70 = getelementptr i8, ptr %69, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #4, !srcloc !9
  br i1 %2, label %71, label %121

71:                                               ; preds = %3
  %72 = tail call i64 @ktime_get() #4
  %73 = add i64 %72, 300000000
  %74 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 5
  %75 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 1
  br label %76

76:                                               ; preds = %101, %71
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1, !annotation !202
  %77 = call i32 @drm_dp_dpcd_read(ptr noundef %74, i32 noundef 8200, ptr noundef nonnull %5, i32 noundef 1) #4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load ptr, ptr %75, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.6, i32 noundef %77) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  br label %92

81:                                               ; preds = %76
  %82 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  %83 = load i8, ptr %47, align 1
  %84 = icmp ne i8 %83, 0
  %85 = icmp eq i8 %82, 2
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %108, label %87

87:                                               ; preds = %81
  %88 = icmp eq i8 %83, 0
  %89 = and i8 %82, -5
  %90 = icmp eq i8 %89, 0
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %104, label %92

92:                                               ; preds = %87, %79
  %93 = call i64 @ktime_get() #4
  %94 = icmp sgt i64 %93, %73
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #4
  store i8 0, ptr %4, align 1, !annotation !202
  %96 = call i32 @drm_dp_dpcd_read(ptr noundef %74, i32 noundef 8200, ptr noundef nonnull %4, i32 noundef 1) #4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #4
  %100 = load i8, ptr %47, align 1
  br label %104

101:                                              ; preds = %92
  call void @usleep_range_state(i32 noundef 376, i32 noundef 1500, i32 noundef 2) #4
  br label %76

102:                                              ; preds = %95
  %103 = load ptr, ptr %75, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.6, i32 noundef %96) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #4
  br label %119

104:                                              ; preds = %98, %87
  %105 = phi i8 [ %100, %98 ], [ 0, %87 ]
  %106 = phi i8 [ %99, %98 ], [ %82, %87 ]
  %107 = zext i8 %106 to i32
  br label %108

108:                                              ; preds = %104, %81
  %109 = phi i8 [ %105, %104 ], [ %83, %81 ]
  %110 = phi i32 [ %107, %104 ], [ 2, %81 ]
  %111 = icmp ne i8 %109, 0
  %112 = icmp eq i32 %110, 2
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %121, label %114

114:                                              ; preds = %108
  %115 = icmp eq i8 %109, 0
  %116 = and i32 %110, 251
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %115, i1 %117, i1 false
  br i1 %118, label %121, label %119

119:                                              ; preds = %114, %102
  %120 = load ptr, ptr %75, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %120, ptr noundef nonnull @.str.1, i32 noundef -110) #5
  br label %121

121:                                              ; preds = %119, %114, %108, %3
  %122 = phi i32 [ -110, %119 ], [ 0, %3 ], [ 0, %108 ], [ 0, %114 ]
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_transfer(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 16
  br i1 %7, label %8, label %9, !prof !203

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1034, i32 noundef 9, ptr noundef null) #4
  br label %192

9:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !204
  tail call void @arm_heavy_mb() #4
  %10 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 128) #4, !srcloc !9
  %13 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = and i8 %14, -5
  switch i8 %16, label %192 [
    i8 0, label %17
    i8 1, label %19
    i8 8, label %23
    i8 9, label %22
  ]

17:                                               ; preds = %9
  %18 = and i32 %15, 4
  br label %23

19:                                               ; preds = %9
  %20 = and i32 %15, 4
  %21 = or i32 %20, 1
  br label %23

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22, %19, %17, %9
  %24 = phi i32 [ 9, %22 ], [ %18, %17 ], [ %21, %19 ], [ 8, %9 ]
  %25 = load i32, ptr %5, align 4
  %26 = shl i32 %25, 4
  %27 = add i32 %26, 240
  %28 = and i32 %27, 240
  %29 = or i32 %28, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !205
  tail call void @arm_heavy_mb() #4
  %30 = load ptr, ptr %10, align 8
  %31 = getelementptr i8, ptr %30, i32 1940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #4, !srcloc !9
  %32 = load i32, ptr %1, align 4
  %33 = and i32 %32, 255
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !206
  tail call void @arm_heavy_mb() #4
  %34 = load ptr, ptr %10, align 8
  %35 = getelementptr i8, ptr %34, i32 1944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #4, !srcloc !9
  %36 = load i32, ptr %1, align 4
  %37 = lshr i32 %36, 8
  %38 = and i32 %37, 255
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !207
  tail call void @arm_heavy_mb() #4
  %39 = load ptr, ptr %10, align 8
  %40 = getelementptr i8, ptr %39, i32 1948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #4, !srcloc !9
  %41 = load i32, ptr %1, align 4
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 15
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !208
  tail call void @arm_heavy_mb() #4
  %44 = load ptr, ptr %10, align 8
  %45 = getelementptr i8, ptr %44, i32 1952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #4, !srcloc !9
  %46 = load i8, ptr %13, align 4
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  %49 = load i32, ptr %5, align 4
  br i1 %48, label %50, label %64

50:                                               ; preds = %23
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %52, %50
  %53 = phi i32 [ %61, %52 ], [ 0, %50 ]
  %54 = getelementptr i8, ptr %4, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !209
  tail call void @arm_heavy_mb() #4
  %57 = load ptr, ptr %10, align 8
  %58 = getelementptr i8, ptr %57, i32 1984
  %59 = shl i32 %53, 2
  %60 = getelementptr i8, ptr %58, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %56) #4, !srcloc !9
  %61 = add nuw i32 %53, 1
  %62 = load i32, ptr %5, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %52, label %64

64:                                               ; preds = %52, %23
  %65 = phi i32 [ %49, %23 ], [ %62, %52 ]
  %66 = phi i32 [ 0, %23 ], [ %61, %52 ]
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %50
  %69 = phi i32 [ %66, %64 ], [ 0, %50 ]
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi i32 [ %69, %68 ], [ %66, %64 ]
  %72 = phi i32 [ 3, %68 ], [ 1, %64 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !210
  tail call void @arm_heavy_mb() #4
  %73 = load ptr, ptr %10, align 8
  %74 = getelementptr i8, ptr %73, i32 1956
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #4, !srcloc !9
  %75 = tail call i64 @ktime_get() #4
  %76 = add i64 %75, 500000000
  %77 = load ptr, ptr %10, align 8
  %78 = getelementptr i8, ptr %77, i32 1956
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !211
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %89, %70
  %83 = tail call i64 @ktime_get() #4
  %84 = icmp sgt i64 %83, %76
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load ptr, ptr %10, align 8
  %87 = getelementptr i8, ptr %86, i32 1956
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !212
  br label %95

89:                                               ; preds = %82
  tail call void @usleep_range_state(i32 noundef 7, i32 noundef 25, i32 noundef 2) #4
  %90 = load ptr, ptr %10, align 8
  %91 = getelementptr i8, ptr %90, i32 1956
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !211
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %82

95:                                               ; preds = %89, %85, %70
  %96 = phi i32 [ %88, %85 ], [ %79, %70 ], [ %92, %89 ]
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.3) #5
  br label %191

102:                                              ; preds = %95
  %103 = tail call i64 @ktime_get() #4
  %104 = add i64 %103, 20000000
  %105 = load ptr, ptr %10, align 8
  %106 = getelementptr i8, ptr %105, i32 988
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !213
  %108 = and i32 %107, 2
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %117, %102
  %111 = tail call i64 @ktime_get() #4
  %112 = icmp sgt i64 %111, %104
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load ptr, ptr %10, align 8
  %115 = getelementptr i8, ptr %114, i32 988
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !214
  br label %123

117:                                              ; preds = %110
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #4
  %118 = load ptr, ptr %10, align 8
  %119 = getelementptr i8, ptr %118, i32 988
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !213
  %121 = and i32 %120, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %110, label %123

123:                                              ; preds = %117, %113, %102
  %124 = phi i32 [ %116, %113 ], [ %107, %102 ], [ %120, %117 ]
  %125 = and i32 %124, 2
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.4) #5
  br label %191

130:                                              ; preds = %123
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !215
  tail call void @arm_heavy_mb() #4
  %131 = load ptr, ptr %10, align 8
  %132 = getelementptr i8, ptr %131, i32 988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 2) #4, !srcloc !9
  %133 = load ptr, ptr %10, align 8
  %134 = getelementptr i8, ptr %133, i32 988
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !216
  %136 = load ptr, ptr %10, align 8
  %137 = getelementptr i8, ptr %136, i32 1920
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !217
  %139 = and i32 %135, 1
  %140 = icmp eq i32 %139, 0
  %141 = and i32 %138, 15
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %140, i1 %142, i1 false
  br i1 %143, label %149, label %144

144:                                              ; preds = %130
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !218
  tail call void @arm_heavy_mb() #4
  %145 = load ptr, ptr %10, align 8
  %146 = getelementptr i8, ptr %145, i32 988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 1) #4, !srcloc !9
  %147 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %148, ptr noundef nonnull @.str.5, i32 noundef %141, i32 noundef %139) #5
  br label %191

149:                                              ; preds = %130
  %150 = load i8, ptr %13, align 4
  %151 = and i8 %150, 1
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %170, label %153

153:                                              ; preds = %149
  %154 = load i32, ptr %5, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %170, label %156

156:                                              ; preds = %156, %153
  %157 = phi i32 [ %167, %156 ], [ 0, %153 ]
  %158 = phi i32 [ %166, %156 ], [ %71, %153 ]
  %159 = load ptr, ptr %10, align 8
  %160 = getelementptr i8, ptr %159, i32 1984
  %161 = shl i32 %157, 2
  %162 = getelementptr i8, ptr %160, i32 %161
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !219
  %164 = trunc i32 %163 to i8
  %165 = getelementptr i8, ptr %4, i32 %157
  store i8 %164, ptr %165, align 1
  %166 = add i32 %158, 1
  %167 = add nuw i32 %157, 1
  %168 = load i32, ptr %5, align 4
  %169 = icmp ult i32 %167, %168
  br i1 %169, label %156, label %170

170:                                              ; preds = %156, %153, %149
  %171 = phi i32 [ %71, %149 ], [ %71, %153 ], [ %166, %156 ]
  %172 = load ptr, ptr %10, align 8
  %173 = getelementptr i8, ptr %172, i32 1932
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !220
  switch i32 %174, label %176 [
    i32 2, label %185
    i32 8, label %175
  ]

175:                                              ; preds = %170
  br label %185

176:                                              ; preds = %170
  %177 = load i8, ptr %13, align 4
  %178 = and i8 %177, -5
  %179 = icmp ult i8 %178, 10
  br i1 %179, label %180, label %188

180:                                              ; preds = %176
  %181 = zext i8 %178 to i16
  %182 = lshr i16 771, %181
  %183 = and i16 %182, 1
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %180, %175, %170
  %186 = phi i8 [ 8, %175 ], [ 2, %170 ], [ 0, %180 ]
  %187 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 2
  store i8 %186, ptr %187, align 1
  br label %188

188:                                              ; preds = %185, %180, %176
  %189 = icmp sgt i32 %171, 0
  %190 = select i1 %189, i32 %171, i32 -16
  br label %192

191:                                              ; preds = %144, %127, %99
  tail call void @analogix_dp_init_aux(ptr noundef %0)
  br label %192

192:                                              ; preds = %191, %188, %9, %8
  %193 = phi i32 [ -7, %8 ], [ -121, %191 ], [ %190, %188 ], [ -22, %9 ]
  ret i32 %193
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2155013265}
!9 = !{i64 3669403}
!10 = !{i64 2155013944}
!11 = !{i64 3669821}
!12 = !{i64 2155014420}
!13 = !{i64 2155014623}
!14 = !{i64 2155015036}
!15 = !{i64 2155015373}
!16 = !{i64 2155015721}
!17 = !{i64 2155016067}
!18 = !{i64 2155016393}
!19 = !{i64 2155016722}
!20 = !{i64 2155017051}
!21 = !{i64 2155017380}
!22 = !{i64 2155017730}
!23 = !{i64 2155018100}
!24 = !{i64 2155018472}
!25 = !{i64 2155018840}
!26 = !{i64 2155019207}
!27 = !{i64 2155019536}
!28 = !{i64 2155019865}
!29 = !{i64 2155020194}
!30 = !{i64 2155020523}
!31 = !{i64 2155020852}
!32 = !{i64 2155021181}
!33 = !{i64 2155021510}
!34 = !{i64 2155021839}
!35 = !{i64 2155022168}
!36 = !{i64 2155022593}
!37 = !{i64 2155022960}
!38 = !{i64 2155023285}
!39 = !{i64 2155023612}
!40 = !{i64 2155023940}
!41 = !{i64 2155024266}
!42 = !{i64 2155024592}
!43 = !{i64 2155024918}
!44 = !{i64 2155025245}
!45 = !{i64 2155025574}
!46 = !{i64 2155025903}
!47 = !{i64 2155026231}
!48 = !{i64 2155026557}
!49 = !{i64 2155026884}
!50 = !{i64 2155027212}
!51 = !{i64 2155027538}
!52 = !{i64 2155027871}
!53 = !{i64 2155028227}
!54 = !{i64 2155028568}
!55 = !{i64 2155028896}
!56 = !{i64 2155029224}
!57 = !{i64 2155029615}
!58 = !{i64 2155029960}
!59 = !{i64 2155030441}
!60 = !{i64 2155030700}
!61 = !{i64 2155031181}
!62 = !{i64 2155031394}
!63 = !{i64 2155031785}
!64 = !{i64 2155032130}
!65 = !{i64 2155032611}
!66 = !{i64 2155033005}
!67 = !{i64 2155033195}
!68 = !{i64 2155033724}
!69 = !{i64 2155033918}
!70 = !{i64 2155034428}
!71 = !{i64 2155034622}
!72 = !{i64 2155035132}
!73 = !{i64 2155035326}
!74 = !{i64 2155035836}
!75 = !{i64 2155036030}
!76 = !{i64 2155036540}
!77 = !{i64 2155036734}
!78 = !{i64 2155037255}
!79 = !{i64 2155037449}
!80 = !{i64 2155038470}
!81 = !{i64 2155038803}
!82 = !{i64 2155039148}
!83 = !{i64 2155039629}
!84 = !{i64 2155039845}
!85 = !{i64 2155040914}
!86 = !{i64 2155041139}
!87 = !{i64 2155041497}
!88 = !{i64 2155041834}
!89 = !{i64 2155042315}
!90 = !{i64 2155042531}
!91 = !{i64 2155043012}
!92 = !{i64 2155043228}
!93 = !{i64 2155043709}
!94 = !{i64 2155044087}
!95 = !{i64 2155044290}
!96 = !{i64 2155044637}
!97 = !{i64 2155045016}
!98 = !{i64 2155045375}
!99 = !{i64 2155045852}
!100 = !{i64 2155046055}
!101 = !{i64 2155046535}
!102 = !{i64 2155046894}
!103 = !{i64 2155047097}
!104 = !{i64 2155047432}
!105 = !{i64 2155047913}
!106 = !{i64 2155048107}
!107 = !{i64 2155048588}
!108 = !{i64 2155049142}
!109 = !{i64 2155049828}
!110 = !{i64 2155050176}
!111 = !{i64 2155050524}
!112 = !{i64 2155050872}
!113 = !{i64 2155051220}
!114 = !{i64 2155051579}
!115 = !{i64 2155052060}
!116 = !{i64 2155052269}
!117 = !{i64 2155052750}
!118 = !{i64 2155052959}
!119 = !{i64 2155053440}
!120 = !{i64 2155053649}
!121 = !{i64 2155054130}
!122 = !{i64 2155054339}
!123 = !{i64 2155054665}
!124 = !{i64 2155054991}
!125 = !{i64 2155055317}
!126 = !{i64 2155055643}
!127 = !{i64 2155056124}
!128 = !{i64 2155056473}
!129 = !{i64 2155056822}
!130 = !{i64 2155057171}
!131 = !{i64 2155057520}
!132 = !{i64 2155057725}
!133 = !{i64 2155058062}
!134 = !{i64 2155058421}
!135 = !{i64 2155058747}
!136 = !{i64 2155059105}
!137 = !{i64 2155059431}
!138 = !{i64 2155059797}
!139 = !{i64 2155060132}
!140 = !{i64 2155060608}
!141 = !{i64 2155060833}
!142 = !{i64 2155061313}
!143 = !{i64 2155061507}
!144 = !{i64 2155061988}
!145 = !{i64 2155062986}
!146 = !{i64 2155063180}
!147 = !{i64 2155063661}
!148 = !{i64 2155065373}
!149 = !{i64 2155065699}
!150 = !{i64 2155066025}
!151 = !{i64 2155066351}
!152 = !{i64 2155066677}
!153 = !{i64 2155067003}
!154 = !{i64 2155067329}
!155 = !{i64 2155068015}
!156 = !{i64 2155068342}
!157 = !{i64 2155068671}
!158 = !{i64 2155069000}
!159 = !{i64 2155069682}
!160 = !{i64 2155070361}
!161 = !{i64 2155071068}
!162 = !{i64 2155071765}
!163 = !{i64 2155072242}
!164 = !{i64 2155072445}
!165 = !{i64 2155072925}
!166 = !{i64 2155073119}
!167 = !{i64 2155073600}
!168 = !{i64 2155074612}
!169 = !{i64 2155074859}
!170 = !{i64 2155075335}
!171 = !{i8 0, i8 2}
!172 = !{i64 2155075538}
!173 = !{i64 2155076014}
!174 = !{i64 2155076217}
!175 = !{i64 2155076693}
!176 = !{i64 2155076896}
!177 = !{i64 2155077243}
!178 = !{i64 2155077724}
!179 = !{i64 2155077929}
!180 = !{i64 2155078410}
!181 = !{i64 2155078615}
!182 = !{i64 2155078959}
!183 = !{i64 2155080047}
!184 = !{i64 2155080252}
!185 = !{i64 2155080620}
!186 = !{i64 2155081002}
!187 = !{i64 2155081376}
!188 = !{i64 2155081750}
!189 = !{i64 2155082124}
!190 = !{i64 2155082483}
!191 = !{i64 2155082812}
!192 = !{i64 2155083141}
!193 = !{i64 2155083470}
!194 = !{i64 2155083805}
!195 = !{i64 2155084152}
!196 = !{i64 2155084643}
!197 = !{i64 2155084846}
!198 = !{i64 2155085326}
!199 = !{i64 2155085542}
!200 = !{i64 2155086023}
!201 = !{i64 2155086228}
!202 = !{!"auto-init"}
!203 = !{!"branch_weights", i32 1, i32 2000}
!204 = !{i64 2155088938}
!205 = !{i64 2155089438}
!206 = !{i64 2155089797}
!207 = !{i64 2155090156}
!208 = !{i64 2155090516}
!209 = !{i64 2155090864}
!210 = !{i64 2155091230}
!211 = !{i64 2155092661}
!212 = !{i64 2155093004}
!213 = !{i64 2155094835}
!214 = !{i64 2155095178}
!215 = !{i64 2155095954}
!216 = !{i64 2155096449}
!217 = !{i64 2155096798}
!218 = !{i64 2155097032}
!219 = !{i64 2155098299}
!220 = !{i64 2155098648}
