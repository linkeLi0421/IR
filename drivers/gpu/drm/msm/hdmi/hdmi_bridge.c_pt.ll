; ModuleID = '/llk/IR/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_bridge.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.79 = type { i32, ptr }
%struct.hdmi_bridge = type { %struct.drm_bridge, ptr, %struct.work_struct }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.hdmi = type { ptr, ptr, ptr, ptr, %struct.hdmi_audio, i8, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.spinlock }
%struct.hdmi_audio = type { i8, %struct.hdmi_audio_infoframe, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.87, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.87 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdmi_platform_config = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, [6 x %struct.hdmi_gpio_data] }
%struct.hdmi_gpio_data = type { ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@msm_hdmi_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr null, ptr null, ptr @msm_hdmi_bridge_mode_valid, ptr null, ptr @msm_hdmi_bridge_disable, ptr @msm_hdmi_bridge_post_disable, ptr @msm_hdmi_bridge_mode_set, ptr @msm_hdmi_bridge_pre_enable, ptr @msm_hdmi_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm_hdmi_bridge_detect, ptr null, ptr @msm_hdmi_bridge_get_edid, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [27 x i8] c"requested=%ld, actual=%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"power down\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"*ERROR* failed to disable pwr regulator: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"htotal=%d, vtotal=%d, hstart=%d, hend=%d, vstart=%d, vend=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"frame_ctrl=%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"power up\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"*ERROR* failed to enable pwr regulator: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"pixclock: %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"*ERROR* failed to set pixel clk: %s (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"*ERROR* failed to enable pwr clk: %s (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"*ERROR* failed to configure avi infoframe\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_hdmi_bridge_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @msm_hdmi_hpd_disable(ptr noundef %0) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_hpd_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_hdmi_bridge_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 152, i32 noundef 3520) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hdmi_bridge, ptr %5, i32 0, i32 1
  store ptr %0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.hdmi_bridge, ptr %5, i32 0, i32 2
  store i32 -32, ptr %9, align 4
  %10 = getelementptr inbounds %struct.hdmi_bridge, ptr %5, i32 0, i32 2, i32 1
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hdmi_bridge, ptr %5, i32 0, i32 2, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.hdmi_bridge, ptr %5, i32 0, i32 2, i32 2
  store ptr @msm_hdmi_hotplug_work, ptr %12, align 4
  %13 = getelementptr inbounds %struct.drm_bridge, ptr %5, i32 0, i32 7
  store ptr @msm_hdmi_bridge_funcs, ptr %13, align 4
  %14 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_bridge, ptr %5, i32 0, i32 12
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.drm_bridge, ptr %5, i32 0, i32 10
  store i32 11, ptr %17, align 4
  %18 = getelementptr inbounds %struct.drm_bridge, ptr %5, i32 0, i32 9
  store i32 7, ptr %18, align 4
  %19 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @drm_bridge_attach(ptr noundef %20, ptr noundef nonnull %5, ptr noundef null, i32 noundef 1) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %7
  tail call void @msm_hdmi_hpd_disable(ptr noundef nonnull %5) #5
  %24 = inttoptr i32 %21 to ptr
  br label %25

25:                                               ; preds = %23, %7, %1
  %26 = phi ptr [ %5, %7 ], [ %24, %23 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_hdmi_hotplug_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = tail call i32 @drm_bridge_detect(ptr noundef %2) #5
  tail call void @drm_bridge_hpd_notify(ptr noundef %2, i32 noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_detect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_hdmi_bridge_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.hdmi_bridge, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hdmi, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_drm_private, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %2, align 4
  %15 = mul i32 %14, 1000
  %16 = load ptr, ptr %13, align 8
  %17 = getelementptr inbounds %struct.msm_kms_funcs, ptr %16, i32 0, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.hdmi, ptr %5, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %18(ptr noundef %13, i32 noundef %15, ptr noundef %20) #5
  %22 = getelementptr inbounds %struct.hdmi_platform_config, ptr %7, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.hdmi, ptr %5, i32 0, i32 13
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @clk_round_rate(ptr noundef %28, i32 noundef %21) #5
  br label %30

30:                                               ; preds = %25, %3
  %31 = phi i32 [ %29, %25 ], [ %21, %3 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %15, i32 noundef %31) #5
  %32 = icmp eq i32 %31, %15
  %33 = select i1 %32, i32 0, i32 17
  ret i32 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @msm_hdmi_bridge_disable(ptr nocapture noundef %0) #3 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_hdmi_bridge_post_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.hdmi_bridge, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @msm_hdmi_hdcp_off(ptr noundef nonnull %7) #5
  br label %10

10:                                               ; preds = %9, %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1) #5
  tail call void @msm_hdmi_set_mode(ptr noundef %3, i1 noundef zeroext false) #5
  tail call void @msm_hdmi_phy_powerdown(ptr noundef %5) #5
  %11 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 5
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %74, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.hdmi, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #5
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #5
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #5
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #5
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #5
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #5
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #5
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #5
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #5
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #5
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #5
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #5
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #5
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #5
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #5
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #5
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #5
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #5
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #5
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #5
  %40 = getelementptr inbounds %struct.hdmi_platform_config, ptr %19, i32 0, i32 10
  %41 = load i32, ptr %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %14
  %44 = getelementptr inbounds %struct.hdmi, ptr %17, i32 0, i32 13
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi i32 [ 0, %43 ], [ %50, %45 ]
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr ptr, ptr %47, i32 %46
  %49 = load ptr, ptr %48, align 4
  tail call void @clk_disable(ptr noundef %49) #5
  tail call void @clk_unprepare(ptr noundef %49) #5
  %50 = add nuw nsw i32 %46, 1
  %51 = load i32, ptr %40, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %45, label %53

53:                                               ; preds = %45, %14
  %54 = getelementptr inbounds %struct.hdmi_platform_config, ptr %19, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.hdmi, ptr %17, i32 0, i32 11
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @regulator_bulk_disable(i32 noundef %55, ptr noundef %57) #5
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %62, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %58) #5
  br label %63

63:                                               ; preds = %60, %53
  %64 = getelementptr inbounds %struct.hdmi, ptr %17, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.platform_device, ptr %65, i32 0, i32 3
  %67 = tail call i32 @__pm_runtime_idle(ptr noundef %66, i32 noundef 5) #5
  store i8 0, ptr %11, align 4
  %68 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 20
  %69 = load i8, ptr %68, align 4, !range !8
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %63
  %72 = tail call i32 @msm_hdmi_audio_update(ptr noundef %3) #5
  br label %73

73:                                               ; preds = %71, %63
  tail call void @msm_hdmi_phy_resource_disable(ptr noundef %5) #5
  br label %74

74:                                               ; preds = %73, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_hdmi_bridge_mode_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.hdmi_bridge, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = mul i32 %6, 1000
  %8 = getelementptr inbounds %struct.hdmi, ptr %5, i32 0, i32 6
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 4
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 2
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = sub nsw i32 %11, %14
  %16 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 1
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = add nsw i32 %15, %18
  %20 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 9
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 7
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = sub nsw i32 %22, %25
  %27 = add nsw i32 %26, -1
  %28 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 6
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = add nsw i32 %26, %30
  %32 = add nsw i32 %31, -1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %11, i32 noundef %22, i32 noundef %15, i32 noundef %19, i32 noundef %27, i32 noundef %32) #5
  %33 = load i16, ptr %9, align 2
  %34 = add i16 %33, 8191
  %35 = and i16 %34, 8191
  %36 = zext i16 %35 to i32
  %37 = load i16, ptr %20, align 4
  %38 = zext i16 %37 to i32
  %39 = shl nuw i32 %38, 16
  %40 = add i32 %39, 536805376
  %41 = and i32 %40, 536805376
  %42 = or i32 %41, %36
  %43 = getelementptr inbounds %struct.hdmi, ptr %5, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 704
  tail call void @msm_writel(i32 noundef %42, ptr noundef %45) #5
  %46 = and i32 %15, 8191
  %47 = shl i32 %19, 16
  %48 = and i32 %47, 268369920
  %49 = or i32 %48, %46
  %50 = load ptr, ptr %43, align 4
  %51 = getelementptr i8, ptr %50, i32 692
  tail call void @msm_writel(i32 noundef %49, ptr noundef %51) #5
  %52 = and i32 %27, 8191
  %53 = shl i32 %32, 16
  %54 = and i32 %53, 536805376
  %55 = or i32 %54, %52
  %56 = load ptr, ptr %43, align 4
  %57 = getelementptr i8, ptr %56, i32 696
  tail call void @msm_writel(i32 noundef %55, ptr noundef %57) #5
  %58 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 11
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %3
  %63 = load i16, ptr %20, align 4
  %64 = and i16 %63, 8191
  %65 = zext i16 %64 to i32
  %66 = load ptr, ptr %43, align 4
  %67 = getelementptr i8, ptr %66, i32 708
  tail call void @msm_writel(i32 noundef %65, ptr noundef %67) #5
  %68 = and i32 %26, 8191
  %69 = shl i32 %31, 16
  %70 = and i32 %69, 536805376
  %71 = or i32 %70, %68
  br label %75

72:                                               ; preds = %3
  %73 = load ptr, ptr %43, align 4
  %74 = getelementptr i8, ptr %73, i32 708
  tail call void @msm_writel(i32 noundef 0, ptr noundef %74) #5
  br label %75

75:                                               ; preds = %72, %62
  %76 = phi i32 [ 0, %72 ], [ %71, %62 ]
  %77 = load ptr, ptr %43, align 4
  %78 = getelementptr i8, ptr %77, i32 700
  tail call void @msm_writel(i32 noundef %76, ptr noundef %78) #5
  %79 = load i32, ptr %58, align 4
  %80 = shl i32 %79, 28
  %81 = and i32 %80, 536870912
  %82 = shl i32 %79, 25
  %83 = and i32 %82, 268435456
  %84 = or i32 %83, %81
  %85 = shl i32 %79, 27
  %86 = and i32 %85, -2147483648
  %87 = or i32 %84, %86
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %87) #5
  %88 = load ptr, ptr %43, align 4
  %89 = getelementptr i8, ptr %88, i32 712
  tail call void @msm_writel(i32 noundef %87, ptr noundef %89) #5
  %90 = getelementptr inbounds %struct.hdmi, ptr %5, i32 0, i32 20
  %91 = load i8, ptr %90, align 4, !range !8
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %75
  %94 = tail call i32 @msm_hdmi_audio_update(ptr noundef %5) #5
  br label %95

95:                                               ; preds = %93, %75
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_hdmi_bridge_pre_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %union.hdmi_infoframe, align 4
  %3 = alloca [17 x i8], align 1
  %4 = getelementptr inbounds %struct.hdmi_bridge, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hdmi, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6) #5
  %8 = getelementptr inbounds %struct.hdmi, ptr %5, i32 0, i32 5
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %186

11:                                               ; preds = %1
  %12 = tail call i32 @msm_hdmi_phy_resource_enable(ptr noundef %7) #5
  %13 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.hdmi, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.hdmi, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %21 = tail call i32 @__pm_runtime_resume(ptr noundef %20, i32 noundef 4) #5
  %22 = getelementptr inbounds %struct.hdmi_platform_config, ptr %17, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.hdmi, ptr %15, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @regulator_bulk_enable(i32 noundef %23, ptr noundef %25) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %30, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7, i32 noundef %26) #5
  br label %31

31:                                               ; preds = %28, %11
  %32 = getelementptr inbounds %struct.hdmi_platform_config, ptr %17, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hdmi, ptr %15, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %37) #5
  %38 = getelementptr inbounds %struct.hdmi, ptr %15, i32 0, i32 13
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = load i32, ptr %36, align 4
  %42 = tail call i32 @clk_set_rate(ptr noundef %40, i32 noundef %41) #5
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.hdmi_platform_config, ptr %17, i32 0, i32 9
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %48, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %46, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9, ptr noundef %49, i32 noundef %42) #5
  br label %50

50:                                               ; preds = %44, %35
  %51 = load i32, ptr %32, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 2
  %55 = getelementptr inbounds %struct.hdmi_platform_config, ptr %17, i32 0, i32 9
  br label %56

56:                                               ; preds = %73, %53
  %57 = phi i32 [ 0, %53 ], [ %74, %73 ]
  %58 = load ptr, ptr %38, align 4
  %59 = getelementptr ptr, ptr %58, i32 %57
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @clk_prepare(ptr noundef %60) #5
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = tail call i32 @clk_enable(ptr noundef %60) #5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  tail call void @clk_unprepare(ptr noundef %60) #5
  br label %67

67:                                               ; preds = %66, %56
  %68 = phi i32 [ %64, %66 ], [ %61, %56 ]
  %69 = load ptr, ptr %54, align 4
  %70 = load ptr, ptr %55, align 4
  %71 = getelementptr ptr, ptr %70, i32 %57
  %72 = load ptr, ptr %71, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %69, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10, ptr noundef %72, i32 noundef %68) #5
  br label %73

73:                                               ; preds = %67, %63
  %74 = add nuw nsw i32 %57, 1
  %75 = load i32, ptr %32, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %56, label %77

77:                                               ; preds = %73, %50, %31
  store i8 1, ptr %8, align 4
  %78 = getelementptr inbounds %struct.hdmi, ptr %5, i32 0, i32 20
  %79 = load i8, ptr %78, align 4, !range !8
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %186, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.hdmi, ptr %5, i32 0, i32 19
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.drm_encoder, ptr %83, i32 0, i32 8
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.drm_crtc, ptr %85, i32 0, i32 22
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.drm_crtc_state, ptr %87, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %2, i8 0, i32 68, i1 false) #5, !annotation !9
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %3, i8 0, i32 17, i1 false) #5, !annotation !9
  %89 = getelementptr inbounds %struct.hdmi, ptr %5, i32 0, i32 17
  %90 = load ptr, ptr %89, align 4
  %91 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %2, ptr noundef %90, ptr noundef %88) #5
  %92 = call i32 @hdmi_infoframe_pack(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 17) #5
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %81
  %95 = getelementptr inbounds %struct.hdmi, ptr %5, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.platform_device, ptr %96, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %97, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #5
  br label %184

98:                                               ; preds = %81
  %99 = getelementptr inbounds [17 x i8], ptr %3, i32 0, i32 3
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = getelementptr inbounds [17 x i8], ptr %3, i32 0, i32 4
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 8
  %106 = or i32 %105, %101
  %107 = getelementptr inbounds [17 x i8], ptr %3, i32 0, i32 5
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 16
  %111 = or i32 %106, %110
  %112 = getelementptr inbounds [17 x i8], ptr %3, i32 0, i32 6
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl nuw i32 %114, 24
  %116 = or i32 %111, %115
  %117 = getelementptr inbounds %struct.hdmi, ptr %5, i32 0, i32 7
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr i8, ptr %118, i32 108
  call void @msm_writel(i32 noundef %116, ptr noundef %119) #5
  %120 = getelementptr inbounds [17 x i8], ptr %3, i32 0, i32 7
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = getelementptr inbounds [17 x i8], ptr %3, i32 0, i32 8
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = shl nuw nsw i32 %125, 8
  %127 = or i32 %126, %122
  %128 = getelementptr inbounds [17 x i8], ptr %3, i32 0, i32 9
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = shl nuw nsw i32 %130, 16
  %132 = or i32 %127, %131
  %133 = getelementptr inbounds [17 x i8], ptr %3, i32 0, i32 10
  %134 = load i8, ptr %133, align 1
  %135 = zext i8 %134 to i32
  %136 = shl nuw i32 %135, 24
  %137 = or i32 %132, %136
  %138 = load ptr, ptr %117, align 4
  %139 = getelementptr i8, ptr %138, i32 112
  call void @msm_writel(i32 noundef %137, ptr noundef %139) #5
  %140 = getelementptr inbounds [17 x i8], ptr %3, i32 0, i32 11
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = getelementptr inbounds [17 x i8], ptr %3, i32 0, i32 12
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = shl nuw nsw i32 %145, 8
  %147 = or i32 %146, %142
  %148 = getelementptr inbounds [17 x i8], ptr %3, i32 0, i32 13
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = shl nuw nsw i32 %150, 16
  %152 = or i32 %147, %151
  %153 = getelementptr inbounds [17 x i8], ptr %3, i32 0, i32 14
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = shl nuw i32 %155, 24
  %157 = or i32 %152, %156
  %158 = load ptr, ptr %117, align 4
  %159 = getelementptr i8, ptr %158, i32 116
  call void @msm_writel(i32 noundef %157, ptr noundef %159) #5
  %160 = getelementptr inbounds [17 x i8], ptr %3, i32 0, i32 15
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  %163 = getelementptr inbounds [17 x i8], ptr %3, i32 0, i32 16
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = shl nuw nsw i32 %165, 8
  %167 = or i32 %166, %162
  %168 = getelementptr inbounds [17 x i8], ptr %3, i32 0, i32 1
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = shl nuw i32 %170, 24
  %172 = or i32 %167, %171
  %173 = load ptr, ptr %117, align 4
  %174 = getelementptr i8, ptr %173, i32 120
  call void @msm_writel(i32 noundef %172, ptr noundef %174) #5
  %175 = load ptr, ptr %117, align 4
  %176 = getelementptr i8, ptr %175, i32 44
  call void @msm_writel(i32 noundef 3, ptr noundef %176) #5
  %177 = load ptr, ptr %117, align 4
  %178 = getelementptr i8, ptr %177, i32 48
  %179 = call i32 @msm_readl(ptr noundef %178) #5
  %180 = and i32 %179, -64
  %181 = or i32 %180, 1
  %182 = load ptr, ptr %117, align 4
  %183 = getelementptr i8, ptr %182, i32 48
  call void @msm_writel(i32 noundef %181, ptr noundef %183) #5
  br label %184

184:                                              ; preds = %98, %94
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %2) #5
  %185 = call i32 @msm_hdmi_audio_update(ptr noundef %5) #5
  br label %186

186:                                              ; preds = %184, %77, %1
  %187 = getelementptr inbounds %struct.hdmi, ptr %5, i32 0, i32 6
  %188 = load i32, ptr %187, align 4
  call void @msm_hdmi_phy_powerup(ptr noundef %7, i32 noundef %188) #5
  call void @msm_hdmi_set_mode(ptr noundef %5, i1 noundef zeroext true) #5
  %189 = getelementptr inbounds %struct.hdmi, ptr %5, i32 0, i32 23
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %186
  call void @msm_hdmi_hdcp_on(ptr noundef nonnull %190) #5
  br label %193

193:                                              ; preds = %192, %186
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @msm_hdmi_bridge_enable(ptr nocapture noundef %0) #3 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_bridge_detect(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @msm_hdmi_bridge_get_edid(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hdmi_bridge, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hdmi, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @msm_readl(ptr noundef %6) #5
  %8 = or i32 %7, 1
  %9 = load ptr, ptr %5, align 4
  tail call void @msm_writel(i32 noundef %8, ptr noundef %9) #5
  %10 = getelementptr inbounds %struct.hdmi, ptr %4, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @drm_get_edid(ptr noundef %1, ptr noundef %11) #5
  %13 = load ptr, ptr %5, align 4
  tail call void @msm_writel(i32 noundef %7, ptr noundef %13) #5
  %14 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %12) #5
  %15 = getelementptr inbounds %struct.hdmi, ptr %4, i32 0, i32 20
  %16 = zext i1 %14 to i8
  store i8 %16, ptr %15, align 4
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_hdcp_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_set_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_phy_powerdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_audio_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_phy_resource_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_phy_resource_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_phy_powerup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_hdcp_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
