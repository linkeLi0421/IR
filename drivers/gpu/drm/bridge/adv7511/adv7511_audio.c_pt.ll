; ModuleID = '/llk/IR/drivers/gpu/drm/bridge/adv7511/adv7511_audio.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/adv7511/adv7511_audio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.adv7511 = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, %struct.drm_display_mode, i32, i32, i32, i32, [256 x i8], i8, %struct.wait_queue_head, %struct.work_struct, %struct.drm_bridge, %struct.drm_connector, i8, i32, i32, i8, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [3 x i8], i8, i8, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.75 }
%union.anon.75 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.hdmi_codec_daifmt = type { i32, i8, i32 }
%struct.of_endpoint = type { i32, i32, ptr }

@.str = private unnamed_addr constant [17 x i8] c"hdmi-audio-codec\00", align 1
@codec_data = internal constant %struct.hdmi_codec_pdata { ptr @adv7511_codec_ops, i8 3, i32 2, ptr null }, align 4
@adv7511_codec_ops = internal constant %struct.hdmi_codec_ops { ptr @audio_startup, ptr @adv7511_hdmi_hw_params, ptr null, ptr @audio_shutdown, ptr null, ptr null, ptr @adv7511_hdmi_i2s_get_dai_id, ptr null, i8 0 }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @adv7511_audio_init(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.platform_device_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #5
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 48, i1 false) #5, !annotation !8
  store ptr %0, ptr %3, align 8
  %5 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 1
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 3
  store ptr @.str, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 4
  store i32 -2, ptr %7, align 8
  %8 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 7
  store ptr @codec_data, ptr %8, align 4
  %9 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 8
  store i32 16, ptr %9, align 8
  %10 = call ptr @platform_device_register_full(ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #5
  %11 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 31
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %13 = ptrtoint ptr %10 to i32
  %14 = select i1 %12, i32 %13, i32 0
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adv7511_audio_exit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @platform_device_unregister(ptr noundef nonnull %3) #5
  store ptr null, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @audio_startup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.adv7511, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 11, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %8 = load ptr, ptr %5, align 8
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 74, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %10 = load ptr, ptr %5, align 8
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 68, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %12 = load ptr, ptr %5, align 8
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 68, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %14 = load ptr, ptr %5, align 8
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 18, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %16 = load ptr, ptr %5, align 8
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 68, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %18 = load ptr, ptr %5, align 8
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 75, i32 noundef 192, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %20 = load ptr, ptr %5, align 8
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 76, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %22 = getelementptr inbounds %struct.adv7511, ptr %4, i32 0, i32 11
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load ptr, ptr %5, align 8
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 11, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %28

28:                                               ; preds = %25, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7511_hdmi_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %99 [
    i32 32000, label %15
    i32 44100, label %9
    i32 48000, label %10
    i32 88200, label %11
    i32 96000, label %12
    i32 176400, label %13
    i32 192000, label %14
  ]

9:                                                ; preds = %4
  br label %15

10:                                               ; preds = %4
  br label %15

11:                                               ; preds = %4
  br label %15

12:                                               ; preds = %4
  br label %15

13:                                               ; preds = %4
  br label %15

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %4
  %16 = phi i32 [ 224, %14 ], [ 192, %13 ], [ 160, %12 ], [ 128, %11 ], [ 32, %10 ], [ 0, %9 ], [ 48, %4 ]
  %17 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -16
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 31)
  switch i32 %20, label %99 [
    i32 0, label %28
    i32 1, label %21
    i32 2, label %22
    i32 8, label %23
    i32 4, label %27
  ]

21:                                               ; preds = %15
  br label %28

22:                                               ; preds = %15
  br label %28

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %2, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 18
  br i1 %26, label %27, label %99

27:                                               ; preds = %23, %15
  br label %28

28:                                               ; preds = %27, %22, %21, %15
  %29 = phi i32 [ 11, %27 ], [ 3, %22 ], [ 4, %21 ], [ 2, %15 ]
  %30 = load i32, ptr %2, align 4
  switch i32 %30, label %99 [
    i32 0, label %31
    i32 1, label %38
    i32 2, label %36
    i32 6, label %37
  ]

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %2, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 18
  %35 = select i1 %34, i32 3, i32 0
  br label %38

36:                                               ; preds = %28
  br label %38

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %36, %31, %28
  %39 = phi i32 [ 1, %37 ], [ 0, %36 ], [ 0, %31 ], [ 0, %28 ]
  %40 = phi i32 [ 0, %37 ], [ 2, %36 ], [ %35, %31 ], [ %30, %28 ]
  %41 = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %2, i32 0, i32 1
  %42 = load i8, ptr %41, align 4
  %43 = getelementptr inbounds %struct.adv7511, ptr %6, i32 0, i32 4
  %44 = load ptr, ptr %43, align 8
  %45 = shl nuw nsw i32 %39, 4
  %46 = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 10, i32 noundef 112, i32 noundef %45, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %47 = load ptr, ptr %43, align 8
  %48 = shl i8 %42, 6
  %49 = and i8 %48, 64
  %50 = zext i8 %49 to i32
  %51 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 11, i32 noundef 64, i32 noundef %50, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %52 = load ptr, ptr %43, align 8
  %53 = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 12, i32 noundef 3, i32 noundef %40, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %54 = getelementptr inbounds %struct.adv7511, ptr %6, i32 0, i32 11
  store i32 %39, ptr %54, align 8
  %55 = load i32, ptr %7, align 4
  %56 = getelementptr inbounds %struct.adv7511, ptr %6, i32 0, i32 10
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.adv7511, ptr %6, i32 0, i32 9
  %58 = load i32, ptr %57, align 8
  switch i32 %55, label %59 [
    i32 32000, label %61
    i32 48000, label %61
    i32 96000, label %61
    i32 192000, label %61
    i32 44100, label %64
    i32 88200, label %64
    i32 176400, label %64
  ]

59:                                               ; preds = %38
  %60 = shl i32 %55, 7
  br label %67

61:                                               ; preds = %38, %38, %38, %38
  %62 = shl nuw nsw i32 %55, 7
  %63 = udiv i32 %62, 1000
  br label %67

64:                                               ; preds = %38, %38, %38
  %65 = shl nuw nsw i32 %55, 7
  %66 = udiv i32 %65, 900
  br label %67

67:                                               ; preds = %64, %61, %59
  %68 = phi i32 [ 0, %59 ], [ %66, %64 ], [ %63, %61 ]
  %69 = phi i32 [ %60, %59 ], [ %65, %64 ], [ %62, %61 ]
  %70 = mul i32 %68, %58
  %71 = udiv i32 %70, %69
  %72 = mul i32 %71, 1000
  %73 = load ptr, ptr %43, align 8
  %74 = lshr i32 %68, 16
  %75 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 1, i32 noundef %74) #5
  %76 = load ptr, ptr %43, align 8
  %77 = lshr i32 %68, 8
  %78 = tail call i32 @regmap_write(ptr noundef %76, i32 noundef 2, i32 noundef %77) #5
  %79 = load ptr, ptr %43, align 8
  %80 = and i32 %68, 255
  %81 = tail call i32 @regmap_write(ptr noundef %79, i32 noundef 3, i32 noundef %80) #5
  %82 = load ptr, ptr %43, align 8
  %83 = lshr i32 %72, 16
  %84 = and i32 %83, 15
  %85 = tail call i32 @regmap_write(ptr noundef %82, i32 noundef 7, i32 noundef %84) #5
  %86 = load ptr, ptr %43, align 8
  %87 = lshr i32 %72, 8
  %88 = and i32 %87, 255
  %89 = tail call i32 @regmap_write(ptr noundef %86, i32 noundef 8, i32 noundef %88) #5
  %90 = load ptr, ptr %43, align 8
  %91 = and i32 %72, 248
  %92 = tail call i32 @regmap_write(ptr noundef %90, i32 noundef 9, i32 noundef %91) #5
  %93 = load ptr, ptr %43, align 8
  %94 = tail call i32 @regmap_update_bits_base(ptr noundef %93, i32 noundef 20, i32 noundef 15, i32 noundef %29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %95 = load ptr, ptr %43, align 8
  %96 = tail call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 21, i32 noundef 240, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %97 = load ptr, ptr %43, align 8
  %98 = tail call i32 @regmap_write(ptr noundef %97, i32 noundef 115, i32 noundef 1) #5
  br label %99

99:                                               ; preds = %67, %28, %23, %15, %4
  %100 = phi i32 [ 0, %67 ], [ -22, %4 ], [ -22, %23 ], [ -22, %15 ], [ -22, %28 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @audio_shutdown(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.adv7511, ptr %4, i32 0, i32 11
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.adv7511, ptr %4, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 11, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7511_hdmi_i2s_get_dai_id(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = alloca %struct.of_endpoint, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  %4 = call i32 @of_graph_parse_endpoint(ptr noundef %1, ptr noundef nonnull %3) #5
  %5 = icmp slt i32 %4, 0
  %6 = load i32, ptr %3, align 4
  %7 = icmp eq i32 %6, 2
  %8 = select i1 %7, i32 0, i32 -22
  %9 = select i1 %5, i32 %4, i32 %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #5
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
