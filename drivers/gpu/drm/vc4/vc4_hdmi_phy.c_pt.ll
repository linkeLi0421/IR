; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_hdmi_phy.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_hdmi_phy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_settings = type { i64, i64, [3 x %struct.phy_lane_settings], %struct.phy_lane_settings }
%struct.phy_lane_settings = type { %struct.anon.103, i8, i8 }
%struct.anon.103 = type { i8, i8 }
%struct.vc4_hdmi = type { %struct.vc4_hdmi_audio, ptr, ptr, %struct.vc4_hdmi_encoder, %struct.drm_connector, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, ptr, %struct.cec_msg, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.debugfs_regset32, %struct.debugfs_regset32, %struct.spinlock, %struct.mutex, %struct.drm_display_mode, i8, i8 }
%struct.vc4_hdmi_audio = type { %struct.snd_soc_card, %struct.snd_soc_dai_link, %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component, %struct.snd_dmaengine_dai_dma_data, %struct.hdmi_audio_infoframe, ptr, i8 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24 }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.vc4_hdmi_encoder = type { %struct.vc4_encoder, i8, i8 }
%struct.vc4_encoder = type { %struct.drm_encoder, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.97 }
%union.anon.97 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vc4_hdmi_variant = type { i32, ptr, ptr, i64, ptr, i32, [4 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
%struct.vc4_hdmi_register = type { ptr, i32, i32 }
%struct.vc4_hdmi_connector_state = type { %struct.drm_connector_state, i64 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"drivers/gpu/drm/vc4/vc4_hdmi_phy.c\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"drivers/gpu/drm/vc4/vc4_hdmi_regs.h\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid register ID %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Unknown register ID %u\0A\00", align 1
@vc5_hdmi_phy_settings = internal unnamed_addr constant [7 x %struct.phy_settings] [%struct.phy_settings { i64 0, i64 50000000, [3 x %struct.phy_lane_settings] [%struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 10 }, i8 18, i8 0 }, %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 10 }, i8 18, i8 0 }, %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 10 }, i8 18, i8 0 }], %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 10 }, i8 24, i8 0 } }, %struct.phy_settings { i64 50000001, i64 75000000, [3 x %struct.phy_lane_settings] [%struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 9 }, i8 18, i8 0 }, %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 9 }, i8 18, i8 0 }, %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 9 }, i8 18, i8 0 }], %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 12 }, i8 24, i8 3 } }, %struct.phy_settings { i64 75000001, i64 165000000, [3 x %struct.phy_lane_settings] [%struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 9 }, i8 18, i8 0 }, %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 9 }, i8 18, i8 0 }, %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 9 }, i8 18, i8 0 }], %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 12 }, i8 24, i8 3 } }, %struct.phy_settings { i64 165000001, i64 250000000, [3 x %struct.phy_lane_settings] [%struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 15 }, i8 18, i8 1 }, %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 15 }, i8 18, i8 1 }, %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 15 }, i8 18, i8 1 }], %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 12 }, i8 24, i8 3 } }, %struct.phy_settings { i64 250000001, i64 340000000, [3 x %struct.phy_lane_settings] [%struct.phy_lane_settings { %struct.anon.103 { i8 2, i8 13 }, i8 18, i8 1 }, %struct.phy_lane_settings { %struct.anon.103 { i8 2, i8 13 }, i8 18, i8 1 }, %struct.phy_lane_settings { %struct.anon.103 { i8 2, i8 13 }, i8 18, i8 1 }], %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 12 }, i8 24, i8 15 } }, %struct.phy_settings { i64 340000001, i64 450000000, [3 x %struct.phy_lane_settings] [%struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 27 }, i8 18, i8 15 }, %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 27 }, i8 18, i8 15 }, %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 27 }, i8 18, i8 15 }], %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 10 }, i8 18, i8 15 } }, %struct.phy_settings { i64 450000001, i64 600000000, [3 x %struct.phy_lane_settings] [%struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 28 }, i8 18, i8 15 }, %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 28 }, i8 18, i8 15 }, %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 28 }, i8 18, i8 15 }], %struct.phy_lane_settings { %struct.anon.103 { i8 0, i8 11 }, i8 19, i8 15 } }], align 8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_hdmi_phy_init(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 30
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #3
  %5 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 11, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 11, i32 15
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 7
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %18

18:                                               ; preds = %17, %12, %2
  %19 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %6, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 73
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.2, i32 noundef 73) #4
  br label %54

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %6, i32 0, i32 4
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr %struct.vc4_hdmi_register, ptr %27, i32 73, i32 1
  %29 = load i32, ptr %28, align 4
  switch i32 %29, label %54 [
    i32 2, label %30
    i32 1, label %32
    i32 4, label %34
    i32 3, label %36
    i32 5, label %38
    i32 6, label %40
    i32 7, label %42
    i32 8, label %44
  ]

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %46

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %46

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %46

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %46

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %46

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %46

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %46

44:                                               ; preds = %25
  %45 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %46

46:                                               ; preds = %44, %42, %40, %38, %36, %34, %32, %30
  %47 = phi ptr [ %45, %44 ], [ %43, %42 ], [ %41, %40 ], [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ]
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %51 = getelementptr %struct.vc4_hdmi_register, ptr %27, i32 73, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i8, ptr %48, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 983040) #3, !srcloc !10
  br label %54

54:                                               ; preds = %50, %46, %25, %22
  %55 = load ptr, ptr %5, align 4
  %56 = load ptr, ptr %7, align 8
  %57 = getelementptr inbounds %struct.platform_device, ptr %56, i32 0, i32 3, i32 11, i32 18
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.platform_device, ptr %56, i32 0, i32 3, i32 11, i32 15
  %62 = load i16, ptr %61, align 8
  %63 = and i16 %62, 7
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %66, !prof !8

65:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %66

66:                                               ; preds = %65, %60, %54
  %67 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %55, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = icmp ugt i32 %68, 73
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %7, align 8
  %72 = getelementptr inbounds %struct.platform_device, ptr %71, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.2, i32 noundef 73) #4
  br label %102

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %55, i32 0, i32 4
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr %struct.vc4_hdmi_register, ptr %75, i32 73, i32 1
  %77 = load i32, ptr %76, align 4
  switch i32 %77, label %102 [
    i32 2, label %78
    i32 1, label %80
    i32 4, label %82
    i32 3, label %84
    i32 5, label %86
    i32 6, label %88
    i32 7, label %90
    i32 8, label %92
  ]

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %94

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %94

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %94

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %94

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %94

88:                                               ; preds = %73
  %89 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %94

90:                                               ; preds = %73
  %91 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %94

92:                                               ; preds = %73
  %93 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %94

94:                                               ; preds = %92, %90, %88, %86, %84, %82, %80, %78
  %95 = phi ptr [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %87, %86 ], [ %85, %84 ], [ %83, %82 ], [ %81, %80 ], [ %79, %78 ]
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %99 = getelementptr %struct.vc4_hdmi_register, ptr %75, i32 73, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr i8, ptr %96, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 0) #3, !srcloc !10
  br label %102

102:                                              ; preds = %98, %94, %73, %70
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_hdmi_phy_disable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 30
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #3
  %4 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 18
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 15
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 7
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %17

17:                                               ; preds = %16, %11, %1
  %18 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 73
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.2, i32 noundef 73) #4
  br label %53

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr %struct.vc4_hdmi_register, ptr %26, i32 73, i32 1
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %53 [
    i32 2, label %29
    i32 1, label %31
    i32 4, label %33
    i32 3, label %35
    i32 5, label %37
    i32 6, label %39
    i32 7, label %41
    i32 8, label %43
  ]

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %45

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %45

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %45

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %45

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %45

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %45

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %45

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %45

45:                                               ; preds = %43, %41, %39, %37, %35, %33, %31, %29
  %46 = phi ptr [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %50 = getelementptr %struct.vc4_hdmi_register, ptr %26, i32 73, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i8, ptr %47, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 983040) #3, !srcloc !10
  br label %53

53:                                               ; preds = %49, %45, %24, %21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_hdmi_phy_rng_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 30
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #3
  %4 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 18
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 15
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 7
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #3
  br label %17

17:                                               ; preds = %16, %11, %1
  %18 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 62
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.2, i32 noundef 62) #4
  br label %58

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr %struct.vc4_hdmi_register, ptr %26, i32 62, i32 1
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %49 [
    i32 2, label %29
    i32 1, label %31
    i32 4, label %33
    i32 3, label %35
    i32 5, label %37
    i32 6, label %39
    i32 7, label %41
    i32 8, label %43
  ]

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %45

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %45

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %45

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %45

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %45

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %45

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %45

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %45

45:                                               ; preds = %43, %41, %39, %37, %35, %33, %31, %29
  %46 = phi ptr [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %24
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.3, i32 noundef 62) #4
  br label %58

52:                                               ; preds = %45
  %53 = getelementptr %struct.vc4_hdmi_register, ptr %26, i32 62, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %47, i32 %54
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %57 = and i32 %56, -33554433
  br label %58

58:                                               ; preds = %52, %49, %21
  %59 = phi i32 [ 0, %21 ], [ %57, %52 ], [ 0, %49 ]
  %60 = load ptr, ptr %4, align 4
  %61 = load ptr, ptr %6, align 8
  %62 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3, i32 11, i32 18
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3, i32 11, i32 15
  %67 = load i16, ptr %66, align 8
  %68 = and i16 %67, 7
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %71, !prof !8

70:                                               ; preds = %65
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %71

71:                                               ; preds = %70, %65, %58
  %72 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %60, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = icmp ugt i32 %73, 62
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %6, align 8
  %77 = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.2, i32 noundef 62) #4
  br label %107

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %60, i32 0, i32 4
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr %struct.vc4_hdmi_register, ptr %80, i32 62, i32 1
  %82 = load i32, ptr %81, align 4
  switch i32 %82, label %107 [
    i32 2, label %83
    i32 1, label %85
    i32 4, label %87
    i32 3, label %89
    i32 5, label %91
    i32 6, label %93
    i32 7, label %95
    i32 8, label %97
  ]

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %99

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %99

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %99

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %99

91:                                               ; preds = %78
  %92 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %99

93:                                               ; preds = %78
  %94 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %99

95:                                               ; preds = %78
  %96 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %99

97:                                               ; preds = %78
  %98 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %99

99:                                               ; preds = %97, %95, %93, %91, %89, %87, %85, %83
  %100 = phi ptr [ %98, %97 ], [ %96, %95 ], [ %94, %93 ], [ %92, %91 ], [ %90, %89 ], [ %88, %87 ], [ %86, %85 ], [ %84, %83 ]
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %104 = getelementptr %struct.vc4_hdmi_register, ptr %80, i32 62, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr i8, ptr %101, i32 %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %59) #3, !srcloc !10
  br label %107

107:                                              ; preds = %103, %99, %78, %75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_hdmi_phy_rng_disable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 30
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #3
  %4 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 18
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 15
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 7
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #3
  br label %17

17:                                               ; preds = %16, %11, %1
  %18 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 62
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.2, i32 noundef 62) #4
  br label %58

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr %struct.vc4_hdmi_register, ptr %26, i32 62, i32 1
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %49 [
    i32 2, label %29
    i32 1, label %31
    i32 4, label %33
    i32 3, label %35
    i32 5, label %37
    i32 6, label %39
    i32 7, label %41
    i32 8, label %43
  ]

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %45

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %45

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %45

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %45

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %45

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %45

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %45

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %45

45:                                               ; preds = %43, %41, %39, %37, %35, %33, %31, %29
  %46 = phi ptr [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %24
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.3, i32 noundef 62) #4
  br label %58

52:                                               ; preds = %45
  %53 = getelementptr %struct.vc4_hdmi_register, ptr %26, i32 62, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %47, i32 %54
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %57 = or i32 %56, 33554432
  br label %58

58:                                               ; preds = %52, %49, %21
  %59 = phi i32 [ 33554432, %21 ], [ %57, %52 ], [ 33554432, %49 ]
  %60 = load ptr, ptr %4, align 4
  %61 = load ptr, ptr %6, align 8
  %62 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3, i32 11, i32 18
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3, i32 11, i32 15
  %67 = load i16, ptr %66, align 8
  %68 = and i16 %67, 7
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %71, !prof !8

70:                                               ; preds = %65
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %71

71:                                               ; preds = %70, %65, %58
  %72 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %60, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = icmp ugt i32 %73, 62
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %6, align 8
  %77 = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.2, i32 noundef 62) #4
  br label %107

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %60, i32 0, i32 4
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr %struct.vc4_hdmi_register, ptr %80, i32 62, i32 1
  %82 = load i32, ptr %81, align 4
  switch i32 %82, label %107 [
    i32 2, label %83
    i32 1, label %85
    i32 4, label %87
    i32 3, label %89
    i32 5, label %91
    i32 6, label %93
    i32 7, label %95
    i32 8, label %97
  ]

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %99

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %99

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %99

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %99

91:                                               ; preds = %78
  %92 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %99

93:                                               ; preds = %78
  %94 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %99

95:                                               ; preds = %78
  %96 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %99

97:                                               ; preds = %78
  %98 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %99

99:                                               ; preds = %97, %95, %93, %91, %89, %87, %85, %83
  %100 = phi ptr [ %98, %97 ], [ %96, %95 ], [ %94, %93 ], [ %92, %91 ], [ %90, %89 ], [ %88, %87 ], [ %86, %85 ], [ %84, %83 ]
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %104 = getelementptr %struct.vc4_hdmi_register, ptr %80, i32 62, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr i8, ptr %101, i32 %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %59) #3, !srcloc !10
  br label %107

107:                                              ; preds = %103, %99, %78, %75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc5_hdmi_phy_init(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc4_hdmi_connector_state, ptr %1, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = icmp ult i64 %6, 3000000000
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = mul nuw nsw i64 %6, 10
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %12, %10 ]
  %12 = add i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = mul i64 %9, %13
  %15 = icmp ult i64 %14, 3000000000
  br i1 %15, label %10, label %16

16:                                               ; preds = %10, %2
  %17 = phi i64 [ %6, %2 ], [ %14, %10 ]
  %18 = phi i32 [ 0, %2 ], [ %12, %10 ]
  %19 = icmp ugt i64 %17, 4500000000
  %20 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 30
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #3
  tail call fastcc void @vc5_hdmi_reset_phy(ptr noundef %0)
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3, i32 11, i32 18
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3, i32 11, i32 15
  %30 = load i16, ptr %29, align 8
  %31 = and i16 %30, 7
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %34

34:                                               ; preds = %33, %28, %16
  %35 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %22, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, 72
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %23, align 8
  %40 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.2, i32 noundef 72) #4
  br label %70

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %22, i32 0, i32 4
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr %struct.vc4_hdmi_register, ptr %43, i32 72, i32 1
  %45 = load i32, ptr %44, align 4
  switch i32 %45, label %70 [
    i32 2, label %46
    i32 1, label %48
    i32 4, label %50
    i32 3, label %52
    i32 5, label %54
    i32 6, label %56
    i32 7, label %58
    i32 8, label %60
  ]

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %62

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %62

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %62

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %62

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %62

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %62

58:                                               ; preds = %41
  %59 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %62

60:                                               ; preds = %41
  %61 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %62

62:                                               ; preds = %60, %58, %56, %54, %52, %50, %48, %46
  %63 = phi ptr [ %61, %60 ], [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ %53, %52 ], [ %51, %50 ], [ %49, %48 ], [ %47, %46 ]
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %67 = getelementptr %struct.vc4_hdmi_register, ptr %43, i32 72, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr i8, ptr %64, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 16) #3, !srcloc !10
  br label %70

70:                                               ; preds = %66, %62, %41, %38
  %71 = load ptr, ptr %3, align 4
  %72 = load ptr, ptr %23, align 8
  %73 = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3, i32 11, i32 18
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3, i32 11, i32 15
  %78 = load i16, ptr %77, align 8
  %79 = and i16 %78, 7
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %82, !prof !8

81:                                               ; preds = %76
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #3
  br label %82

82:                                               ; preds = %81, %76, %70
  %83 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %71, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = icmp ugt i32 %84, 73
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %23, align 8
  %88 = getelementptr inbounds %struct.platform_device, ptr %87, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.2, i32 noundef 73) #4
  br label %122

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %71, i32 0, i32 4
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr %struct.vc4_hdmi_register, ptr %91, i32 73, i32 1
  %93 = load i32, ptr %92, align 4
  switch i32 %93, label %114 [
    i32 2, label %94
    i32 1, label %96
    i32 4, label %98
    i32 3, label %100
    i32 5, label %102
    i32 6, label %104
    i32 7, label %106
    i32 8, label %108
  ]

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %110

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %110

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %110

100:                                              ; preds = %89
  %101 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %110

102:                                              ; preds = %89
  %103 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %110

104:                                              ; preds = %89
  %105 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %110

106:                                              ; preds = %89
  %107 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %110

108:                                              ; preds = %89
  %109 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %110

110:                                              ; preds = %108, %106, %104, %102, %100, %98, %96, %94
  %111 = phi ptr [ %109, %108 ], [ %107, %106 ], [ %105, %104 ], [ %103, %102 ], [ %101, %100 ], [ %99, %98 ], [ %97, %96 ], [ %95, %94 ]
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %110, %89
  %115 = load ptr, ptr %23, align 8
  %116 = getelementptr inbounds %struct.platform_device, ptr %115, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %116, ptr noundef nonnull @.str.3, i32 noundef 73) #4
  br label %122

117:                                              ; preds = %110
  %118 = getelementptr %struct.vc4_hdmi_register, ptr %91, i32 73, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr i8, ptr %112, i32 %119
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  br label %122

122:                                              ; preds = %117, %114, %86
  %123 = phi i32 [ 0, %86 ], [ %121, %117 ], [ 0, %114 ]
  %124 = and i32 %123, -16
  %125 = load ptr, ptr %3, align 4
  %126 = load ptr, ptr %23, align 8
  %127 = getelementptr inbounds %struct.platform_device, ptr %126, i32 0, i32 3, i32 11, i32 18
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct.platform_device, ptr %126, i32 0, i32 3, i32 11, i32 15
  %132 = load i16, ptr %131, align 8
  %133 = and i16 %132, 7
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %136, !prof !8

135:                                              ; preds = %130
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %136

136:                                              ; preds = %135, %130, %122
  %137 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %125, i32 0, i32 5
  %138 = load i32, ptr %137, align 4
  %139 = icmp ugt i32 %138, 73
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %23, align 8
  %142 = getelementptr inbounds %struct.platform_device, ptr %141, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %142, ptr noundef nonnull @.str.2, i32 noundef 73) #4
  br label %172

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %125, i32 0, i32 4
  %145 = load ptr, ptr %144, align 8
  %146 = getelementptr %struct.vc4_hdmi_register, ptr %145, i32 73, i32 1
  %147 = load i32, ptr %146, align 4
  switch i32 %147, label %172 [
    i32 2, label %148
    i32 1, label %150
    i32 4, label %152
    i32 3, label %154
    i32 5, label %156
    i32 6, label %158
    i32 7, label %160
    i32 8, label %162
  ]

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %164

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %164

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %164

154:                                              ; preds = %143
  %155 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %164

156:                                              ; preds = %143
  %157 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %164

158:                                              ; preds = %143
  %159 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %164

160:                                              ; preds = %143
  %161 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %164

162:                                              ; preds = %143
  %163 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %164

164:                                              ; preds = %162, %160, %158, %156, %154, %152, %150, %148
  %165 = phi ptr [ %163, %162 ], [ %161, %160 ], [ %159, %158 ], [ %157, %156 ], [ %155, %154 ], [ %153, %152 ], [ %151, %150 ], [ %149, %148 ]
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %169 = getelementptr %struct.vc4_hdmi_register, ptr %145, i32 73, i32 2
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr i8, ptr %166, i32 %170
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %124) #3, !srcloc !10
  br label %172

172:                                              ; preds = %168, %164, %143, %140
  %173 = load ptr, ptr %3, align 4
  %174 = load ptr, ptr %23, align 8
  %175 = getelementptr inbounds %struct.platform_device, ptr %174, i32 0, i32 3, i32 11, i32 18
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.platform_device, ptr %174, i32 0, i32 3, i32 11, i32 15
  %180 = load i16, ptr %179, align 8
  %181 = and i16 %180, 7
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %183, label %184, !prof !8

183:                                              ; preds = %178
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #3
  br label %184

184:                                              ; preds = %183, %178, %172
  %185 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %173, i32 0, i32 5
  %186 = load i32, ptr %185, align 4
  %187 = icmp ugt i32 %186, 54
  br i1 %187, label %191, label %188

188:                                              ; preds = %184
  %189 = load ptr, ptr %23, align 8
  %190 = getelementptr inbounds %struct.platform_device, ptr %189, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %190, ptr noundef nonnull @.str.2, i32 noundef 54) #4
  br label %224

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %173, i32 0, i32 4
  %193 = load ptr, ptr %192, align 8
  %194 = getelementptr %struct.vc4_hdmi_register, ptr %193, i32 54, i32 1
  %195 = load i32, ptr %194, align 4
  switch i32 %195, label %216 [
    i32 2, label %196
    i32 1, label %198
    i32 4, label %200
    i32 3, label %202
    i32 5, label %204
    i32 6, label %206
    i32 7, label %208
    i32 8, label %210
  ]

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %212

198:                                              ; preds = %191
  %199 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %212

200:                                              ; preds = %191
  %201 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %212

202:                                              ; preds = %191
  %203 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %212

204:                                              ; preds = %191
  %205 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %212

206:                                              ; preds = %191
  %207 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %212

208:                                              ; preds = %191
  %209 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %212

210:                                              ; preds = %191
  %211 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %212

212:                                              ; preds = %210, %208, %206, %204, %202, %200, %198, %196
  %213 = phi ptr [ %211, %210 ], [ %209, %208 ], [ %207, %206 ], [ %205, %204 ], [ %203, %202 ], [ %201, %200 ], [ %199, %198 ], [ %197, %196 ]
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %212, %191
  %217 = load ptr, ptr %23, align 8
  %218 = getelementptr inbounds %struct.platform_device, ptr %217, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %218, ptr noundef nonnull @.str.3, i32 noundef 54) #4
  br label %224

219:                                              ; preds = %212
  %220 = getelementptr %struct.vc4_hdmi_register, ptr %193, i32 54, i32 2
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr i8, ptr %214, i32 %221
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %222) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  br label %224

224:                                              ; preds = %219, %216, %188
  %225 = phi i32 [ 0, %188 ], [ %223, %219 ], [ 0, %216 ]
  %226 = or i32 %225, 655376
  %227 = load ptr, ptr %3, align 4
  %228 = load ptr, ptr %23, align 8
  %229 = getelementptr inbounds %struct.platform_device, ptr %228, i32 0, i32 3, i32 11, i32 18
  %230 = load i32, ptr %229, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %224
  %233 = getelementptr inbounds %struct.platform_device, ptr %228, i32 0, i32 3, i32 11, i32 15
  %234 = load i16, ptr %233, align 8
  %235 = and i16 %234, 7
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %237, label %238, !prof !8

237:                                              ; preds = %232
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %238

238:                                              ; preds = %237, %232, %224
  %239 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %227, i32 0, i32 5
  %240 = load i32, ptr %239, align 4
  %241 = icmp ugt i32 %240, 54
  br i1 %241, label %245, label %242

242:                                              ; preds = %238
  %243 = load ptr, ptr %23, align 8
  %244 = getelementptr inbounds %struct.platform_device, ptr %243, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %244, ptr noundef nonnull @.str.2, i32 noundef 54) #4
  br label %274

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %227, i32 0, i32 4
  %247 = load ptr, ptr %246, align 8
  %248 = getelementptr %struct.vc4_hdmi_register, ptr %247, i32 54, i32 1
  %249 = load i32, ptr %248, align 4
  switch i32 %249, label %274 [
    i32 2, label %250
    i32 1, label %252
    i32 4, label %254
    i32 3, label %256
    i32 5, label %258
    i32 6, label %260
    i32 7, label %262
    i32 8, label %264
  ]

250:                                              ; preds = %245
  %251 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %266

252:                                              ; preds = %245
  %253 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %266

254:                                              ; preds = %245
  %255 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %266

256:                                              ; preds = %245
  %257 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %266

258:                                              ; preds = %245
  %259 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %266

260:                                              ; preds = %245
  %261 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %266

262:                                              ; preds = %245
  %263 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %266

264:                                              ; preds = %245
  %265 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %266

266:                                              ; preds = %264, %262, %260, %258, %256, %254, %252, %250
  %267 = phi ptr [ %265, %264 ], [ %263, %262 ], [ %261, %260 ], [ %259, %258 ], [ %257, %256 ], [ %255, %254 ], [ %253, %252 ], [ %251, %250 ]
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %274, label %270

270:                                              ; preds = %266
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %271 = getelementptr %struct.vc4_hdmi_register, ptr %247, i32 54, i32 2
  %272 = load i32, ptr %271, align 4
  %273 = getelementptr i8, ptr %268, i32 %272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 %226) #3, !srcloc !10
  br label %274

274:                                              ; preds = %270, %266, %245, %242
  %275 = load ptr, ptr %3, align 4
  %276 = load ptr, ptr %23, align 8
  %277 = getelementptr inbounds %struct.platform_device, ptr %276, i32 0, i32 3, i32 11, i32 18
  %278 = load i32, ptr %277, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %286, label %280

280:                                              ; preds = %274
  %281 = getelementptr inbounds %struct.platform_device, ptr %276, i32 0, i32 3, i32 11, i32 15
  %282 = load i16, ptr %281, align 8
  %283 = and i16 %282, 7
  %284 = icmp eq i16 %283, 0
  br i1 %284, label %285, label %286, !prof !8

285:                                              ; preds = %280
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #3
  br label %286

286:                                              ; preds = %285, %280, %274
  %287 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %275, i32 0, i32 5
  %288 = load i32, ptr %287, align 4
  %289 = icmp ugt i32 %288, 66
  br i1 %289, label %293, label %290

290:                                              ; preds = %286
  %291 = load ptr, ptr %23, align 8
  %292 = getelementptr inbounds %struct.platform_device, ptr %291, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %292, ptr noundef nonnull @.str.2, i32 noundef 66) #4
  br label %326

293:                                              ; preds = %286
  %294 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %275, i32 0, i32 4
  %295 = load ptr, ptr %294, align 8
  %296 = getelementptr %struct.vc4_hdmi_register, ptr %295, i32 66, i32 1
  %297 = load i32, ptr %296, align 4
  switch i32 %297, label %318 [
    i32 2, label %298
    i32 1, label %300
    i32 4, label %302
    i32 3, label %304
    i32 5, label %306
    i32 6, label %308
    i32 7, label %310
    i32 8, label %312
  ]

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %314

300:                                              ; preds = %293
  %301 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %314

302:                                              ; preds = %293
  %303 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %314

304:                                              ; preds = %293
  %305 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %314

306:                                              ; preds = %293
  %307 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %314

308:                                              ; preds = %293
  %309 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %314

310:                                              ; preds = %293
  %311 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %314

312:                                              ; preds = %293
  %313 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %314

314:                                              ; preds = %312, %310, %308, %306, %304, %302, %300, %298
  %315 = phi ptr [ %313, %312 ], [ %311, %310 ], [ %309, %308 ], [ %307, %306 ], [ %305, %304 ], [ %303, %302 ], [ %301, %300 ], [ %299, %298 ]
  %316 = load ptr, ptr %315, align 4
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %321

318:                                              ; preds = %314, %293
  %319 = load ptr, ptr %23, align 8
  %320 = getelementptr inbounds %struct.platform_device, ptr %319, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %320, ptr noundef nonnull @.str.3, i32 noundef 66) #4
  br label %326

321:                                              ; preds = %314
  %322 = getelementptr %struct.vc4_hdmi_register, ptr %295, i32 66, i32 2
  %323 = load i32, ptr %322, align 4
  %324 = getelementptr i8, ptr %316, i32 %323
  %325 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %324) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  br label %326

326:                                              ; preds = %321, %318, %290
  %327 = phi i32 [ 0, %290 ], [ %325, %321 ], [ 0, %318 ]
  %328 = and i32 %327, -268435456
  %329 = load ptr, ptr %3, align 4
  %330 = load ptr, ptr %23, align 8
  %331 = getelementptr inbounds %struct.platform_device, ptr %330, i32 0, i32 3, i32 11, i32 18
  %332 = load i32, ptr %331, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %340, label %334

334:                                              ; preds = %326
  %335 = getelementptr inbounds %struct.platform_device, ptr %330, i32 0, i32 3, i32 11, i32 15
  %336 = load i16, ptr %335, align 8
  %337 = and i16 %336, 7
  %338 = icmp eq i16 %337, 0
  br i1 %338, label %339, label %340, !prof !8

339:                                              ; preds = %334
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %340

340:                                              ; preds = %339, %334, %326
  %341 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %329, i32 0, i32 5
  %342 = load i32, ptr %341, align 4
  %343 = icmp ugt i32 %342, 66
  br i1 %343, label %347, label %344

344:                                              ; preds = %340
  %345 = load ptr, ptr %23, align 8
  %346 = getelementptr inbounds %struct.platform_device, ptr %345, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %346, ptr noundef nonnull @.str.2, i32 noundef 66) #4
  br label %376

347:                                              ; preds = %340
  %348 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %329, i32 0, i32 4
  %349 = load ptr, ptr %348, align 8
  %350 = getelementptr %struct.vc4_hdmi_register, ptr %349, i32 66, i32 1
  %351 = load i32, ptr %350, align 4
  switch i32 %351, label %376 [
    i32 2, label %352
    i32 1, label %354
    i32 4, label %356
    i32 3, label %358
    i32 5, label %360
    i32 6, label %362
    i32 7, label %364
    i32 8, label %366
  ]

352:                                              ; preds = %347
  %353 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %368

354:                                              ; preds = %347
  %355 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %368

356:                                              ; preds = %347
  %357 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %368

358:                                              ; preds = %347
  %359 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %368

360:                                              ; preds = %347
  %361 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %368

362:                                              ; preds = %347
  %363 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %368

364:                                              ; preds = %347
  %365 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %368

366:                                              ; preds = %347
  %367 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %368

368:                                              ; preds = %366, %364, %362, %360, %358, %356, %354, %352
  %369 = phi ptr [ %367, %366 ], [ %365, %364 ], [ %363, %362 ], [ %361, %360 ], [ %359, %358 ], [ %357, %356 ], [ %355, %354 ], [ %353, %352 ]
  %370 = load ptr, ptr %369, align 4
  %371 = icmp eq ptr %370, null
  br i1 %371, label %376, label %372

372:                                              ; preds = %368
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %373 = getelementptr %struct.vc4_hdmi_register, ptr %349, i32 66, i32 2
  %374 = load i32, ptr %373, align 4
  %375 = getelementptr i8, ptr %370, i32 %374
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %375, i32 %328) #3, !srcloc !10
  br label %376

376:                                              ; preds = %372, %368, %347, %344
  %377 = load ptr, ptr %3, align 4
  %378 = load ptr, ptr %23, align 8
  %379 = getelementptr inbounds %struct.platform_device, ptr %378, i32 0, i32 3, i32 11, i32 18
  %380 = load i32, ptr %379, align 4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %388, label %382

382:                                              ; preds = %376
  %383 = getelementptr inbounds %struct.platform_device, ptr %378, i32 0, i32 3, i32 11, i32 15
  %384 = load i16, ptr %383, align 8
  %385 = and i16 %384, 7
  %386 = icmp eq i16 %385, 0
  br i1 %386, label %387, label %388, !prof !8

387:                                              ; preds = %382
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #3
  br label %388

388:                                              ; preds = %387, %382, %376
  %389 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %377, i32 0, i32 5
  %390 = load i32, ptr %389, align 4
  %391 = icmp ugt i32 %390, 67
  br i1 %391, label %395, label %392

392:                                              ; preds = %388
  %393 = load ptr, ptr %23, align 8
  %394 = getelementptr inbounds %struct.platform_device, ptr %393, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %394, ptr noundef nonnull @.str.2, i32 noundef 67) #4
  br label %428

395:                                              ; preds = %388
  %396 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %377, i32 0, i32 4
  %397 = load ptr, ptr %396, align 8
  %398 = getelementptr %struct.vc4_hdmi_register, ptr %397, i32 67, i32 1
  %399 = load i32, ptr %398, align 4
  switch i32 %399, label %420 [
    i32 2, label %400
    i32 1, label %402
    i32 4, label %404
    i32 3, label %406
    i32 5, label %408
    i32 6, label %410
    i32 7, label %412
    i32 8, label %414
  ]

400:                                              ; preds = %395
  %401 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %416

402:                                              ; preds = %395
  %403 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %416

404:                                              ; preds = %395
  %405 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %416

406:                                              ; preds = %395
  %407 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %416

408:                                              ; preds = %395
  %409 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %416

410:                                              ; preds = %395
  %411 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %416

412:                                              ; preds = %395
  %413 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %416

414:                                              ; preds = %395
  %415 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %416

416:                                              ; preds = %414, %412, %410, %408, %406, %404, %402, %400
  %417 = phi ptr [ %415, %414 ], [ %413, %412 ], [ %411, %410 ], [ %409, %408 ], [ %407, %406 ], [ %405, %404 ], [ %403, %402 ], [ %401, %400 ]
  %418 = load ptr, ptr %417, align 4
  %419 = icmp eq ptr %418, null
  br i1 %419, label %420, label %423

420:                                              ; preds = %416, %395
  %421 = load ptr, ptr %23, align 8
  %422 = getelementptr inbounds %struct.platform_device, ptr %421, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %422, ptr noundef nonnull @.str.3, i32 noundef 67) #4
  br label %428

423:                                              ; preds = %416
  %424 = getelementptr %struct.vc4_hdmi_register, ptr %397, i32 67, i32 2
  %425 = load i32, ptr %424, align 4
  %426 = getelementptr i8, ptr %418, i32 %425
  %427 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %426) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  br label %428

428:                                              ; preds = %423, %420, %392
  %429 = phi i32 [ 0, %392 ], [ %427, %423 ], [ 0, %420 ]
  %430 = and i32 %429, -268435456
  %431 = load ptr, ptr %3, align 4
  %432 = load ptr, ptr %23, align 8
  %433 = getelementptr inbounds %struct.platform_device, ptr %432, i32 0, i32 3, i32 11, i32 18
  %434 = load i32, ptr %433, align 4
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %442, label %436

436:                                              ; preds = %428
  %437 = getelementptr inbounds %struct.platform_device, ptr %432, i32 0, i32 3, i32 11, i32 15
  %438 = load i16, ptr %437, align 8
  %439 = and i16 %438, 7
  %440 = icmp eq i16 %439, 0
  br i1 %440, label %441, label %442, !prof !8

441:                                              ; preds = %436
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %442

442:                                              ; preds = %441, %436, %428
  %443 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %431, i32 0, i32 5
  %444 = load i32, ptr %443, align 4
  %445 = icmp ugt i32 %444, 67
  br i1 %445, label %449, label %446

446:                                              ; preds = %442
  %447 = load ptr, ptr %23, align 8
  %448 = getelementptr inbounds %struct.platform_device, ptr %447, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %448, ptr noundef nonnull @.str.2, i32 noundef 67) #4
  br label %478

449:                                              ; preds = %442
  %450 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %431, i32 0, i32 4
  %451 = load ptr, ptr %450, align 8
  %452 = getelementptr %struct.vc4_hdmi_register, ptr %451, i32 67, i32 1
  %453 = load i32, ptr %452, align 4
  switch i32 %453, label %478 [
    i32 2, label %454
    i32 1, label %456
    i32 4, label %458
    i32 3, label %460
    i32 5, label %462
    i32 6, label %464
    i32 7, label %466
    i32 8, label %468
  ]

454:                                              ; preds = %449
  %455 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %470

456:                                              ; preds = %449
  %457 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %470

458:                                              ; preds = %449
  %459 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %470

460:                                              ; preds = %449
  %461 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %470

462:                                              ; preds = %449
  %463 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %470

464:                                              ; preds = %449
  %465 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %470

466:                                              ; preds = %449
  %467 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %470

468:                                              ; preds = %449
  %469 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %470

470:                                              ; preds = %468, %466, %464, %462, %460, %458, %456, %454
  %471 = phi ptr [ %469, %468 ], [ %467, %466 ], [ %465, %464 ], [ %463, %462 ], [ %461, %460 ], [ %459, %458 ], [ %457, %456 ], [ %455, %454 ]
  %472 = load ptr, ptr %471, align 4
  %473 = icmp eq ptr %472, null
  br i1 %473, label %478, label %474

474:                                              ; preds = %470
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %475 = getelementptr %struct.vc4_hdmi_register, ptr %451, i32 67, i32 2
  %476 = load i32, ptr %475, align 4
  %477 = getelementptr i8, ptr %472, i32 %476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %477, i32 %430) #3, !srcloc !10
  br label %478

478:                                              ; preds = %474, %470, %449, %446
  %479 = shl i64 %17, 23
  %480 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6984336302548623145, i64 %479, i32 0) #5, !srcloc !13
  %481 = extractvalue { i64, i32 } %480, 0
  %482 = extractvalue { i64, i32 } %480, 1
  %483 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6984336302548623145, i64 %479, i64 %481, i32 %482) #5, !srcloc !14
  %484 = extractvalue { i64, i32 } %483, 0
  %485 = lshr i64 %484, 27
  %486 = trunc i64 %485 to i32
  %487 = icmp sgt i32 %486, -1
  br i1 %487, label %489, label %488, !prof !15

488:                                              ; preds = %478
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 408, i32 noundef 9, ptr noundef null) #3
  br label %489

489:                                              ; preds = %488, %478
  %490 = or i32 %486, -2147483648
  %491 = load ptr, ptr %3, align 4
  %492 = load ptr, ptr %23, align 8
  %493 = getelementptr inbounds %struct.platform_device, ptr %492, i32 0, i32 3, i32 11, i32 18
  %494 = load i32, ptr %493, align 4
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %502, label %496

496:                                              ; preds = %489
  %497 = getelementptr inbounds %struct.platform_device, ptr %492, i32 0, i32 3, i32 11, i32 15
  %498 = load i16, ptr %497, align 8
  %499 = and i16 %498, 7
  %500 = icmp eq i16 %499, 0
  br i1 %500, label %501, label %502, !prof !8

501:                                              ; preds = %496
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %502

502:                                              ; preds = %501, %496, %489
  %503 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %491, i32 0, i32 5
  %504 = load i32, ptr %503, align 4
  %505 = icmp ugt i32 %504, 56
  br i1 %505, label %509, label %506

506:                                              ; preds = %502
  %507 = load ptr, ptr %23, align 8
  %508 = getelementptr inbounds %struct.platform_device, ptr %507, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %508, ptr noundef nonnull @.str.2, i32 noundef 56) #4
  br label %538

509:                                              ; preds = %502
  %510 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %491, i32 0, i32 4
  %511 = load ptr, ptr %510, align 8
  %512 = getelementptr %struct.vc4_hdmi_register, ptr %511, i32 56, i32 1
  %513 = load i32, ptr %512, align 4
  switch i32 %513, label %538 [
    i32 2, label %514
    i32 1, label %516
    i32 4, label %518
    i32 3, label %520
    i32 5, label %522
    i32 6, label %524
    i32 7, label %526
    i32 8, label %528
  ]

514:                                              ; preds = %509
  %515 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %530

516:                                              ; preds = %509
  %517 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %530

518:                                              ; preds = %509
  %519 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %530

520:                                              ; preds = %509
  %521 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %530

522:                                              ; preds = %509
  %523 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %530

524:                                              ; preds = %509
  %525 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %530

526:                                              ; preds = %509
  %527 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %530

528:                                              ; preds = %509
  %529 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %530

530:                                              ; preds = %528, %526, %524, %522, %520, %518, %516, %514
  %531 = phi ptr [ %529, %528 ], [ %527, %526 ], [ %525, %524 ], [ %523, %522 ], [ %521, %520 ], [ %519, %518 ], [ %517, %516 ], [ %515, %514 ]
  %532 = load ptr, ptr %531, align 4
  %533 = icmp eq ptr %532, null
  br i1 %533, label %538, label %534

534:                                              ; preds = %530
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %535 = getelementptr %struct.vc4_hdmi_register, ptr %511, i32 56, i32 2
  %536 = load i32, ptr %535, align 4
  %537 = getelementptr i8, ptr %532, i32 %536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %537, i32 %490) #3, !srcloc !10
  br label %538

538:                                              ; preds = %534, %530, %509, %506
  %539 = shl i32 %18, 8
  %540 = and i32 %539, 65280
  %541 = load ptr, ptr %3, align 4
  %542 = load ptr, ptr %23, align 8
  %543 = getelementptr inbounds %struct.platform_device, ptr %542, i32 0, i32 3, i32 11, i32 18
  %544 = load i32, ptr %543, align 4
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %552, label %546

546:                                              ; preds = %538
  %547 = getelementptr inbounds %struct.platform_device, ptr %542, i32 0, i32 3, i32 11, i32 15
  %548 = load i16, ptr %547, align 8
  %549 = and i16 %548, 7
  %550 = icmp eq i16 %549, 0
  br i1 %550, label %551, label %552, !prof !8

551:                                              ; preds = %546
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %552

552:                                              ; preds = %551, %546, %538
  %553 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %541, i32 0, i32 5
  %554 = load i32, ptr %553, align 4
  %555 = icmp ugt i32 %554, 61
  br i1 %555, label %559, label %556

556:                                              ; preds = %552
  %557 = load ptr, ptr %23, align 8
  %558 = getelementptr inbounds %struct.platform_device, ptr %557, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %558, ptr noundef nonnull @.str.2, i32 noundef 61) #4
  br label %588

559:                                              ; preds = %552
  %560 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %541, i32 0, i32 4
  %561 = load ptr, ptr %560, align 8
  %562 = getelementptr %struct.vc4_hdmi_register, ptr %561, i32 61, i32 1
  %563 = load i32, ptr %562, align 4
  switch i32 %563, label %588 [
    i32 2, label %564
    i32 1, label %566
    i32 4, label %568
    i32 3, label %570
    i32 5, label %572
    i32 6, label %574
    i32 7, label %576
    i32 8, label %578
  ]

564:                                              ; preds = %559
  %565 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %580

566:                                              ; preds = %559
  %567 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %580

568:                                              ; preds = %559
  %569 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %580

570:                                              ; preds = %559
  %571 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %580

572:                                              ; preds = %559
  %573 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %580

574:                                              ; preds = %559
  %575 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %580

576:                                              ; preds = %559
  %577 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %580

578:                                              ; preds = %559
  %579 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %580

580:                                              ; preds = %578, %576, %574, %572, %570, %568, %566, %564
  %581 = phi ptr [ %579, %578 ], [ %577, %576 ], [ %575, %574 ], [ %573, %572 ], [ %571, %570 ], [ %569, %568 ], [ %567, %566 ], [ %565, %564 ]
  %582 = load ptr, ptr %581, align 4
  %583 = icmp eq ptr %582, null
  br i1 %583, label %588, label %584

584:                                              ; preds = %580
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %585 = getelementptr %struct.vc4_hdmi_register, ptr %561, i32 61, i32 2
  %586 = load i32, ptr %585, align 4
  %587 = getelementptr i8, ptr %582, i32 %586
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %587, i32 %540) #3, !srcloc !10
  br label %588

588:                                              ; preds = %584, %580, %559, %556
  %589 = load ptr, ptr %3, align 4
  %590 = load ptr, ptr %23, align 8
  %591 = getelementptr inbounds %struct.platform_device, ptr %590, i32 0, i32 3, i32 11, i32 18
  %592 = load i32, ptr %591, align 4
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %600, label %594

594:                                              ; preds = %588
  %595 = getelementptr inbounds %struct.platform_device, ptr %590, i32 0, i32 3, i32 11, i32 15
  %596 = load i16, ptr %595, align 8
  %597 = and i16 %596, 7
  %598 = icmp eq i16 %597, 0
  br i1 %598, label %599, label %600, !prof !8

599:                                              ; preds = %594
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %600

600:                                              ; preds = %599, %594, %588
  %601 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %589, i32 0, i32 5
  %602 = load i32, ptr %601, align 4
  %603 = icmp ugt i32 %602, 68
  br i1 %603, label %607, label %604

604:                                              ; preds = %600
  %605 = load ptr, ptr %23, align 8
  %606 = getelementptr inbounds %struct.platform_device, ptr %605, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %606, ptr noundef nonnull @.str.2, i32 noundef 68) #4
  br label %636

607:                                              ; preds = %600
  %608 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %589, i32 0, i32 4
  %609 = load ptr, ptr %608, align 8
  %610 = getelementptr %struct.vc4_hdmi_register, ptr %609, i32 68, i32 1
  %611 = load i32, ptr %610, align 4
  switch i32 %611, label %636 [
    i32 2, label %612
    i32 1, label %614
    i32 4, label %616
    i32 3, label %618
    i32 5, label %620
    i32 6, label %622
    i32 7, label %624
    i32 8, label %626
  ]

612:                                              ; preds = %607
  %613 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %628

614:                                              ; preds = %607
  %615 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %628

616:                                              ; preds = %607
  %617 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %628

618:                                              ; preds = %607
  %619 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %628

620:                                              ; preds = %607
  %621 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %628

622:                                              ; preds = %607
  %623 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %628

624:                                              ; preds = %607
  %625 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %628

626:                                              ; preds = %607
  %627 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %628

628:                                              ; preds = %626, %624, %622, %620, %618, %616, %614, %612
  %629 = phi ptr [ %627, %626 ], [ %625, %624 ], [ %623, %622 ], [ %621, %620 ], [ %619, %618 ], [ %617, %616 ], [ %615, %614 ], [ %613, %612 ]
  %630 = load ptr, ptr %629, align 4
  %631 = icmp eq ptr %630, null
  br i1 %631, label %636, label %632

632:                                              ; preds = %628
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %633 = getelementptr %struct.vc4_hdmi_register, ptr %609, i32 68, i32 2
  %634 = load i32, ptr %633, align 4
  %635 = getelementptr i8, ptr %630, i32 %634
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %635, i32 236249415) #3, !srcloc !10
  br label %636

636:                                              ; preds = %632, %628, %607, %604
  %637 = select i1 %19, i32 8800, i32 8288
  %638 = load ptr, ptr %3, align 4
  %639 = load ptr, ptr %23, align 8
  %640 = getelementptr inbounds %struct.platform_device, ptr %639, i32 0, i32 3, i32 11, i32 18
  %641 = load i32, ptr %640, align 4
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %649, label %643

643:                                              ; preds = %636
  %644 = getelementptr inbounds %struct.platform_device, ptr %639, i32 0, i32 3, i32 11, i32 15
  %645 = load i16, ptr %644, align 8
  %646 = and i16 %645, 7
  %647 = icmp eq i16 %646, 0
  br i1 %647, label %648, label %649, !prof !8

648:                                              ; preds = %643
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %649

649:                                              ; preds = %648, %643, %636
  %650 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %638, i32 0, i32 5
  %651 = load i32, ptr %650, align 4
  %652 = icmp ugt i32 %651, 70
  br i1 %652, label %656, label %653

653:                                              ; preds = %649
  %654 = load ptr, ptr %23, align 8
  %655 = getelementptr inbounds %struct.platform_device, ptr %654, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %655, ptr noundef nonnull @.str.2, i32 noundef 70) #4
  br label %685

656:                                              ; preds = %649
  %657 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %638, i32 0, i32 4
  %658 = load ptr, ptr %657, align 8
  %659 = getelementptr %struct.vc4_hdmi_register, ptr %658, i32 70, i32 1
  %660 = load i32, ptr %659, align 4
  switch i32 %660, label %685 [
    i32 2, label %661
    i32 1, label %663
    i32 4, label %665
    i32 3, label %667
    i32 5, label %669
    i32 6, label %671
    i32 7, label %673
    i32 8, label %675
  ]

661:                                              ; preds = %656
  %662 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %677

663:                                              ; preds = %656
  %664 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %677

665:                                              ; preds = %656
  %666 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %677

667:                                              ; preds = %656
  %668 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %677

669:                                              ; preds = %656
  %670 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %677

671:                                              ; preds = %656
  %672 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %677

673:                                              ; preds = %656
  %674 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %677

675:                                              ; preds = %656
  %676 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %677

677:                                              ; preds = %675, %673, %671, %669, %667, %665, %663, %661
  %678 = phi ptr [ %676, %675 ], [ %674, %673 ], [ %672, %671 ], [ %670, %669 ], [ %668, %667 ], [ %666, %665 ], [ %664, %663 ], [ %662, %661 ]
  %679 = load ptr, ptr %678, align 4
  %680 = icmp eq ptr %679, null
  br i1 %680, label %685, label %681

681:                                              ; preds = %677
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %682 = getelementptr %struct.vc4_hdmi_register, ptr %658, i32 70, i32 2
  %683 = load i32, ptr %682, align 4
  %684 = getelementptr i8, ptr %679, i32 %683
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %684, i32 %637) #3, !srcloc !10
  br label %685

685:                                              ; preds = %681, %677, %656, %653
  %686 = load ptr, ptr %3, align 4
  %687 = load ptr, ptr %23, align 8
  %688 = getelementptr inbounds %struct.platform_device, ptr %687, i32 0, i32 3, i32 11, i32 18
  %689 = load i32, ptr %688, align 4
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %697, label %691

691:                                              ; preds = %685
  %692 = getelementptr inbounds %struct.platform_device, ptr %687, i32 0, i32 3, i32 11, i32 15
  %693 = load i16, ptr %692, align 8
  %694 = and i16 %693, 7
  %695 = icmp eq i16 %694, 0
  br i1 %695, label %696, label %697, !prof !8

696:                                              ; preds = %691
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #3
  br label %697

697:                                              ; preds = %696, %691, %685
  %698 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %686, i32 0, i32 5
  %699 = load i32, ptr %698, align 4
  %700 = icmp ugt i32 %699, 71
  br i1 %700, label %704, label %701

701:                                              ; preds = %697
  %702 = load ptr, ptr %23, align 8
  %703 = getelementptr inbounds %struct.platform_device, ptr %702, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %703, ptr noundef nonnull @.str.2, i32 noundef 71) #4
  br label %737

704:                                              ; preds = %697
  %705 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %686, i32 0, i32 4
  %706 = load ptr, ptr %705, align 8
  %707 = getelementptr %struct.vc4_hdmi_register, ptr %706, i32 71, i32 1
  %708 = load i32, ptr %707, align 4
  switch i32 %708, label %729 [
    i32 2, label %709
    i32 1, label %711
    i32 4, label %713
    i32 3, label %715
    i32 5, label %717
    i32 6, label %719
    i32 7, label %721
    i32 8, label %723
  ]

709:                                              ; preds = %704
  %710 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %725

711:                                              ; preds = %704
  %712 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %725

713:                                              ; preds = %704
  %714 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %725

715:                                              ; preds = %704
  %716 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %725

717:                                              ; preds = %704
  %718 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %725

719:                                              ; preds = %704
  %720 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %725

721:                                              ; preds = %704
  %722 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %725

723:                                              ; preds = %704
  %724 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %725

725:                                              ; preds = %723, %721, %719, %717, %715, %713, %711, %709
  %726 = phi ptr [ %724, %723 ], [ %722, %721 ], [ %720, %719 ], [ %718, %717 ], [ %716, %715 ], [ %714, %713 ], [ %712, %711 ], [ %710, %709 ]
  %727 = load ptr, ptr %726, align 4
  %728 = icmp eq ptr %727, null
  br i1 %728, label %729, label %732

729:                                              ; preds = %725, %704
  %730 = load ptr, ptr %23, align 8
  %731 = getelementptr inbounds %struct.platform_device, ptr %730, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %731, ptr noundef nonnull @.str.3, i32 noundef 71) #4
  br label %737

732:                                              ; preds = %725
  %733 = getelementptr %struct.vc4_hdmi_register, ptr %706, i32 71, i32 2
  %734 = load i32, ptr %733, align 4
  %735 = getelementptr i8, ptr %727, i32 %734
  %736 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %735) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  br label %737

737:                                              ; preds = %732, %729, %701
  %738 = phi i32 [ 0, %701 ], [ %736, %732 ], [ 0, %729 ]
  %739 = or i32 %738, 9074688
  %740 = load ptr, ptr %3, align 4
  %741 = load ptr, ptr %23, align 8
  %742 = getelementptr inbounds %struct.platform_device, ptr %741, i32 0, i32 3, i32 11, i32 18
  %743 = load i32, ptr %742, align 4
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %751, label %745

745:                                              ; preds = %737
  %746 = getelementptr inbounds %struct.platform_device, ptr %741, i32 0, i32 3, i32 11, i32 15
  %747 = load i16, ptr %746, align 8
  %748 = and i16 %747, 7
  %749 = icmp eq i16 %748, 0
  br i1 %749, label %750, label %751, !prof !8

750:                                              ; preds = %745
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %751

751:                                              ; preds = %750, %745, %737
  %752 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %740, i32 0, i32 5
  %753 = load i32, ptr %752, align 4
  %754 = icmp ugt i32 %753, 71
  br i1 %754, label %758, label %755

755:                                              ; preds = %751
  %756 = load ptr, ptr %23, align 8
  %757 = getelementptr inbounds %struct.platform_device, ptr %756, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %757, ptr noundef nonnull @.str.2, i32 noundef 71) #4
  br label %787

758:                                              ; preds = %751
  %759 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %740, i32 0, i32 4
  %760 = load ptr, ptr %759, align 8
  %761 = getelementptr %struct.vc4_hdmi_register, ptr %760, i32 71, i32 1
  %762 = load i32, ptr %761, align 4
  switch i32 %762, label %787 [
    i32 2, label %763
    i32 1, label %765
    i32 4, label %767
    i32 3, label %769
    i32 5, label %771
    i32 6, label %773
    i32 7, label %775
    i32 8, label %777
  ]

763:                                              ; preds = %758
  %764 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %779

765:                                              ; preds = %758
  %766 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %779

767:                                              ; preds = %758
  %768 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %779

769:                                              ; preds = %758
  %770 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %779

771:                                              ; preds = %758
  %772 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %779

773:                                              ; preds = %758
  %774 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %779

775:                                              ; preds = %758
  %776 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %779

777:                                              ; preds = %758
  %778 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %779

779:                                              ; preds = %777, %775, %773, %771, %769, %767, %765, %763
  %780 = phi ptr [ %778, %777 ], [ %776, %775 ], [ %774, %773 ], [ %772, %771 ], [ %770, %769 ], [ %768, %767 ], [ %766, %765 ], [ %764, %763 ]
  %781 = load ptr, ptr %780, align 4
  %782 = icmp eq ptr %781, null
  br i1 %782, label %787, label %783

783:                                              ; preds = %779
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %784 = getelementptr %struct.vc4_hdmi_register, ptr %760, i32 71, i32 2
  %785 = load i32, ptr %784, align 4
  %786 = getelementptr i8, ptr %781, i32 %785
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %786, i32 %739) #3, !srcloc !10
  br label %787

787:                                              ; preds = %783, %779, %758, %755
  %788 = load ptr, ptr %3, align 4
  %789 = load ptr, ptr %23, align 8
  %790 = getelementptr inbounds %struct.platform_device, ptr %789, i32 0, i32 3, i32 11, i32 18
  %791 = load i32, ptr %790, align 4
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %799, label %793

793:                                              ; preds = %787
  %794 = getelementptr inbounds %struct.platform_device, ptr %789, i32 0, i32 3, i32 11, i32 15
  %795 = load i16, ptr %794, align 8
  %796 = and i16 %795, 7
  %797 = icmp eq i16 %796, 0
  br i1 %797, label %798, label %799, !prof !8

798:                                              ; preds = %793
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #3
  br label %799

799:                                              ; preds = %798, %793, %787
  %800 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %788, i32 0, i32 5
  %801 = load i32, ptr %800, align 4
  %802 = icmp ugt i32 %801, 55
  br i1 %802, label %806, label %803

803:                                              ; preds = %799
  %804 = load ptr, ptr %23, align 8
  %805 = getelementptr inbounds %struct.platform_device, ptr %804, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %805, ptr noundef nonnull @.str.2, i32 noundef 55) #4
  br label %839

806:                                              ; preds = %799
  %807 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %788, i32 0, i32 4
  %808 = load ptr, ptr %807, align 8
  %809 = getelementptr %struct.vc4_hdmi_register, ptr %808, i32 55, i32 1
  %810 = load i32, ptr %809, align 4
  switch i32 %810, label %831 [
    i32 2, label %811
    i32 1, label %813
    i32 4, label %815
    i32 3, label %817
    i32 5, label %819
    i32 6, label %821
    i32 7, label %823
    i32 8, label %825
  ]

811:                                              ; preds = %806
  %812 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %827

813:                                              ; preds = %806
  %814 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %827

815:                                              ; preds = %806
  %816 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %827

817:                                              ; preds = %806
  %818 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %827

819:                                              ; preds = %806
  %820 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %827

821:                                              ; preds = %806
  %822 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %827

823:                                              ; preds = %806
  %824 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %827

825:                                              ; preds = %806
  %826 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %827

827:                                              ; preds = %825, %823, %821, %819, %817, %815, %813, %811
  %828 = phi ptr [ %826, %825 ], [ %824, %823 ], [ %822, %821 ], [ %820, %819 ], [ %818, %817 ], [ %816, %815 ], [ %814, %813 ], [ %812, %811 ]
  %829 = load ptr, ptr %828, align 4
  %830 = icmp eq ptr %829, null
  br i1 %830, label %831, label %834

831:                                              ; preds = %827, %806
  %832 = load ptr, ptr %23, align 8
  %833 = getelementptr inbounds %struct.platform_device, ptr %832, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %833, ptr noundef nonnull @.str.3, i32 noundef 55) #4
  br label %839

834:                                              ; preds = %827
  %835 = getelementptr %struct.vc4_hdmi_register, ptr %808, i32 55, i32 2
  %836 = load i32, ptr %835, align 4
  %837 = getelementptr i8, ptr %829, i32 %836
  %838 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %837) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  br label %839

839:                                              ; preds = %834, %831, %803
  %840 = phi i32 [ 0, %803 ], [ %838, %834 ], [ 0, %831 ]
  %841 = or i32 %840, 33554432
  %842 = load ptr, ptr %3, align 4
  %843 = load ptr, ptr %23, align 8
  %844 = getelementptr inbounds %struct.platform_device, ptr %843, i32 0, i32 3, i32 11, i32 18
  %845 = load i32, ptr %844, align 4
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %853, label %847

847:                                              ; preds = %839
  %848 = getelementptr inbounds %struct.platform_device, ptr %843, i32 0, i32 3, i32 11, i32 15
  %849 = load i16, ptr %848, align 8
  %850 = and i16 %849, 7
  %851 = icmp eq i16 %850, 0
  br i1 %851, label %852, label %853, !prof !8

852:                                              ; preds = %847
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %853

853:                                              ; preds = %852, %847, %839
  %854 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %842, i32 0, i32 5
  %855 = load i32, ptr %854, align 4
  %856 = icmp ugt i32 %855, 55
  br i1 %856, label %860, label %857

857:                                              ; preds = %853
  %858 = load ptr, ptr %23, align 8
  %859 = getelementptr inbounds %struct.platform_device, ptr %858, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %859, ptr noundef nonnull @.str.2, i32 noundef 55) #4
  br label %889

860:                                              ; preds = %853
  %861 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %842, i32 0, i32 4
  %862 = load ptr, ptr %861, align 8
  %863 = getelementptr %struct.vc4_hdmi_register, ptr %862, i32 55, i32 1
  %864 = load i32, ptr %863, align 4
  switch i32 %864, label %889 [
    i32 2, label %865
    i32 1, label %867
    i32 4, label %869
    i32 3, label %871
    i32 5, label %873
    i32 6, label %875
    i32 7, label %877
    i32 8, label %879
  ]

865:                                              ; preds = %860
  %866 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %881

867:                                              ; preds = %860
  %868 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %881

869:                                              ; preds = %860
  %870 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %881

871:                                              ; preds = %860
  %872 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %881

873:                                              ; preds = %860
  %874 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %881

875:                                              ; preds = %860
  %876 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %881

877:                                              ; preds = %860
  %878 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %881

879:                                              ; preds = %860
  %880 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %881

881:                                              ; preds = %879, %877, %875, %873, %871, %869, %867, %865
  %882 = phi ptr [ %880, %879 ], [ %878, %877 ], [ %876, %875 ], [ %874, %873 ], [ %872, %871 ], [ %870, %869 ], [ %868, %867 ], [ %866, %865 ]
  %883 = load ptr, ptr %882, align 4
  %884 = icmp eq ptr %883, null
  br i1 %884, label %889, label %885

885:                                              ; preds = %881
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %886 = getelementptr %struct.vc4_hdmi_register, ptr %862, i32 55, i32 2
  %887 = load i32, ptr %886, align 4
  %888 = getelementptr i8, ptr %883, i32 %887
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %888, i32 %841) #3, !srcloc !10
  br label %889

889:                                              ; preds = %885, %881, %860, %857
  %890 = load ptr, ptr %3, align 4
  %891 = load ptr, ptr %23, align 8
  %892 = getelementptr inbounds %struct.platform_device, ptr %891, i32 0, i32 3, i32 11, i32 18
  %893 = load i32, ptr %892, align 4
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %901, label %895

895:                                              ; preds = %889
  %896 = getelementptr inbounds %struct.platform_device, ptr %891, i32 0, i32 3, i32 11, i32 15
  %897 = load i16, ptr %896, align 8
  %898 = and i16 %897, 7
  %899 = icmp eq i16 %898, 0
  br i1 %899, label %900, label %901, !prof !8

900:                                              ; preds = %895
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #3
  br label %901

901:                                              ; preds = %900, %895, %889
  %902 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %890, i32 0, i32 5
  %903 = load i32, ptr %902, align 4
  %904 = icmp ugt i32 %903, 69
  br i1 %904, label %908, label %905

905:                                              ; preds = %901
  %906 = load ptr, ptr %23, align 8
  %907 = getelementptr inbounds %struct.platform_device, ptr %906, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %907, ptr noundef nonnull @.str.2, i32 noundef 69) #4
  br label %941

908:                                              ; preds = %901
  %909 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %890, i32 0, i32 4
  %910 = load ptr, ptr %909, align 8
  %911 = getelementptr %struct.vc4_hdmi_register, ptr %910, i32 69, i32 1
  %912 = load i32, ptr %911, align 4
  switch i32 %912, label %933 [
    i32 2, label %913
    i32 1, label %915
    i32 4, label %917
    i32 3, label %919
    i32 5, label %921
    i32 6, label %923
    i32 7, label %925
    i32 8, label %927
  ]

913:                                              ; preds = %908
  %914 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %929

915:                                              ; preds = %908
  %916 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %929

917:                                              ; preds = %908
  %918 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %929

919:                                              ; preds = %908
  %920 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %929

921:                                              ; preds = %908
  %922 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %929

923:                                              ; preds = %908
  %924 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %929

925:                                              ; preds = %908
  %926 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %929

927:                                              ; preds = %908
  %928 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %929

929:                                              ; preds = %927, %925, %923, %921, %919, %917, %915, %913
  %930 = phi ptr [ %928, %927 ], [ %926, %925 ], [ %924, %923 ], [ %922, %921 ], [ %920, %919 ], [ %918, %917 ], [ %916, %915 ], [ %914, %913 ]
  %931 = load ptr, ptr %930, align 4
  %932 = icmp eq ptr %931, null
  br i1 %932, label %933, label %936

933:                                              ; preds = %929, %908
  %934 = load ptr, ptr %23, align 8
  %935 = getelementptr inbounds %struct.platform_device, ptr %934, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %935, ptr noundef nonnull @.str.3, i32 noundef 69) #4
  br label %941

936:                                              ; preds = %929
  %937 = getelementptr %struct.vc4_hdmi_register, ptr %910, i32 69, i32 2
  %938 = load i32, ptr %937, align 4
  %939 = getelementptr i8, ptr %931, i32 %938
  %940 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %939) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  br label %941

941:                                              ; preds = %936, %933, %905
  %942 = phi i32 [ 0, %905 ], [ %940, %936 ], [ 0, %933 ]
  %943 = or i32 %942, 1
  %944 = load ptr, ptr %3, align 4
  %945 = load ptr, ptr %23, align 8
  %946 = getelementptr inbounds %struct.platform_device, ptr %945, i32 0, i32 3, i32 11, i32 18
  %947 = load i32, ptr %946, align 4
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %955, label %949

949:                                              ; preds = %941
  %950 = getelementptr inbounds %struct.platform_device, ptr %945, i32 0, i32 3, i32 11, i32 15
  %951 = load i16, ptr %950, align 8
  %952 = and i16 %951, 7
  %953 = icmp eq i16 %952, 0
  br i1 %953, label %954, label %955, !prof !8

954:                                              ; preds = %949
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %955

955:                                              ; preds = %954, %949, %941
  %956 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %944, i32 0, i32 5
  %957 = load i32, ptr %956, align 4
  %958 = icmp ugt i32 %957, 69
  br i1 %958, label %962, label %959

959:                                              ; preds = %955
  %960 = load ptr, ptr %23, align 8
  %961 = getelementptr inbounds %struct.platform_device, ptr %960, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %961, ptr noundef nonnull @.str.2, i32 noundef 69) #4
  br label %991

962:                                              ; preds = %955
  %963 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %944, i32 0, i32 4
  %964 = load ptr, ptr %963, align 8
  %965 = getelementptr %struct.vc4_hdmi_register, ptr %964, i32 69, i32 1
  %966 = load i32, ptr %965, align 4
  switch i32 %966, label %991 [
    i32 2, label %967
    i32 1, label %969
    i32 4, label %971
    i32 3, label %973
    i32 5, label %975
    i32 6, label %977
    i32 7, label %979
    i32 8, label %981
  ]

967:                                              ; preds = %962
  %968 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %983

969:                                              ; preds = %962
  %970 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %983

971:                                              ; preds = %962
  %972 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %983

973:                                              ; preds = %962
  %974 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %983

975:                                              ; preds = %962
  %976 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %983

977:                                              ; preds = %962
  %978 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %983

979:                                              ; preds = %962
  %980 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %983

981:                                              ; preds = %962
  %982 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %983

983:                                              ; preds = %981, %979, %977, %975, %973, %971, %969, %967
  %984 = phi ptr [ %982, %981 ], [ %980, %979 ], [ %978, %977 ], [ %976, %975 ], [ %974, %973 ], [ %972, %971 ], [ %970, %969 ], [ %968, %967 ]
  %985 = load ptr, ptr %984, align 4
  %986 = icmp eq ptr %985, null
  br i1 %986, label %991, label %987

987:                                              ; preds = %983
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %988 = getelementptr %struct.vc4_hdmi_register, ptr %964, i32 69, i32 2
  %989 = load i32, ptr %988, align 4
  %990 = getelementptr i8, ptr %985, i32 %989
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %990, i32 %943) #3, !srcloc !10
  br label %991

991:                                              ; preds = %987, %983, %962, %959
  %992 = icmp ugt i64 %6, 339999999
  %993 = select i1 %992, i32 3, i32 0
  %994 = load ptr, ptr %3, align 4
  %995 = load ptr, ptr %23, align 8
  %996 = getelementptr inbounds %struct.platform_device, ptr %995, i32 0, i32 3, i32 11, i32 18
  %997 = load i32, ptr %996, align 4
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %1005, label %999

999:                                              ; preds = %991
  %1000 = getelementptr inbounds %struct.platform_device, ptr %995, i32 0, i32 3, i32 11, i32 15
  %1001 = load i16, ptr %1000, align 8
  %1002 = and i16 %1001, 7
  %1003 = icmp eq i16 %1002, 0
  br i1 %1003, label %1004, label %1005, !prof !8

1004:                                             ; preds = %999
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %1005

1005:                                             ; preds = %1004, %999, %991
  %1006 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %994, i32 0, i32 5
  %1007 = load i32, ptr %1006, align 4
  %1008 = icmp ugt i32 %1007, 74
  br i1 %1008, label %1012, label %1009

1009:                                             ; preds = %1005
  %1010 = load ptr, ptr %23, align 8
  %1011 = getelementptr inbounds %struct.platform_device, ptr %1010, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1011, ptr noundef nonnull @.str.2, i32 noundef 74) #4
  br label %1041

1012:                                             ; preds = %1005
  %1013 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %994, i32 0, i32 4
  %1014 = load ptr, ptr %1013, align 8
  %1015 = getelementptr %struct.vc4_hdmi_register, ptr %1014, i32 74, i32 1
  %1016 = load i32, ptr %1015, align 4
  switch i32 %1016, label %1041 [
    i32 2, label %1017
    i32 1, label %1019
    i32 4, label %1021
    i32 3, label %1023
    i32 5, label %1025
    i32 6, label %1027
    i32 7, label %1029
    i32 8, label %1031
  ]

1017:                                             ; preds = %1012
  %1018 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %1033

1019:                                             ; preds = %1012
  %1020 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %1033

1021:                                             ; preds = %1012
  %1022 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %1033

1023:                                             ; preds = %1012
  %1024 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %1033

1025:                                             ; preds = %1012
  %1026 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %1033

1027:                                             ; preds = %1012
  %1028 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %1033

1029:                                             ; preds = %1012
  %1030 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %1033

1031:                                             ; preds = %1012
  %1032 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %1033

1033:                                             ; preds = %1031, %1029, %1027, %1025, %1023, %1021, %1019, %1017
  %1034 = phi ptr [ %1032, %1031 ], [ %1030, %1029 ], [ %1028, %1027 ], [ %1026, %1025 ], [ %1024, %1023 ], [ %1022, %1021 ], [ %1020, %1019 ], [ %1018, %1017 ]
  %1035 = load ptr, ptr %1034, align 4
  %1036 = icmp eq ptr %1035, null
  br i1 %1036, label %1041, label %1037

1037:                                             ; preds = %1033
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %1038 = getelementptr %struct.vc4_hdmi_register, ptr %1014, i32 74, i32 2
  %1039 = load i32, ptr %1038, align 4
  %1040 = getelementptr i8, ptr %1035, i32 %1039
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1040, i32 %993) #3, !srcloc !10
  br label %1041

1041:                                             ; preds = %1037, %1033, %1012, %1009
  %1042 = trunc i64 %17 to i32
  %1043 = icmp ult i32 %1042, -594967296
  %1044 = select i1 %1043, i32 550364, i32 550360
  %1045 = load ptr, ptr %3, align 4
  %1046 = load ptr, ptr %23, align 8
  %1047 = getelementptr inbounds %struct.platform_device, ptr %1046, i32 0, i32 3, i32 11, i32 18
  %1048 = load i32, ptr %1047, align 4
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1056, label %1050

1050:                                             ; preds = %1041
  %1051 = getelementptr inbounds %struct.platform_device, ptr %1046, i32 0, i32 3, i32 11, i32 15
  %1052 = load i16, ptr %1051, align 8
  %1053 = and i16 %1052, 7
  %1054 = icmp eq i16 %1053, 0
  br i1 %1054, label %1055, label %1056, !prof !8

1055:                                             ; preds = %1050
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %1056

1056:                                             ; preds = %1055, %1050, %1041
  %1057 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1045, i32 0, i32 5
  %1058 = load i32, ptr %1057, align 4
  %1059 = icmp ugt i32 %1058, 65
  br i1 %1059, label %1063, label %1060

1060:                                             ; preds = %1056
  %1061 = load ptr, ptr %23, align 8
  %1062 = getelementptr inbounds %struct.platform_device, ptr %1061, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1062, ptr noundef nonnull @.str.2, i32 noundef 65) #4
  br label %1092

1063:                                             ; preds = %1056
  %1064 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1045, i32 0, i32 4
  %1065 = load ptr, ptr %1064, align 8
  %1066 = getelementptr %struct.vc4_hdmi_register, ptr %1065, i32 65, i32 1
  %1067 = load i32, ptr %1066, align 4
  switch i32 %1067, label %1092 [
    i32 2, label %1068
    i32 1, label %1070
    i32 4, label %1072
    i32 3, label %1074
    i32 5, label %1076
    i32 6, label %1078
    i32 7, label %1080
    i32 8, label %1082
  ]

1068:                                             ; preds = %1063
  %1069 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %1084

1070:                                             ; preds = %1063
  %1071 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %1084

1072:                                             ; preds = %1063
  %1073 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %1084

1074:                                             ; preds = %1063
  %1075 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %1084

1076:                                             ; preds = %1063
  %1077 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %1084

1078:                                             ; preds = %1063
  %1079 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %1084

1080:                                             ; preds = %1063
  %1081 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %1084

1082:                                             ; preds = %1063
  %1083 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %1084

1084:                                             ; preds = %1082, %1080, %1078, %1076, %1074, %1072, %1070, %1068
  %1085 = phi ptr [ %1083, %1082 ], [ %1081, %1080 ], [ %1079, %1078 ], [ %1077, %1076 ], [ %1075, %1074 ], [ %1073, %1072 ], [ %1071, %1070 ], [ %1069, %1068 ]
  %1086 = load ptr, ptr %1085, align 4
  %1087 = icmp eq ptr %1086, null
  br i1 %1087, label %1092, label %1088

1088:                                             ; preds = %1084
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %1089 = getelementptr %struct.vc4_hdmi_register, ptr %1065, i32 65, i32 2
  %1090 = load i32, ptr %1089, align 4
  %1091 = getelementptr i8, ptr %1086, i32 %1090
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1091, i32 %1044) #3, !srcloc !10
  br label %1092

1092:                                             ; preds = %1088, %1084, %1063, %1060
  %1093 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 6
  %1094 = load i32, ptr %1093, align 8
  %1095 = icmp ugt i64 %6, 50000000
  br i1 %1095, label %1096, label %1104

1096:                                             ; preds = %1092
  %1097 = icmp ugt i64 %6, 75000000
  br i1 %1097, label %1098, label %1112

1098:                                             ; preds = %1096
  %1099 = icmp ugt i64 %6, 165000000
  br i1 %1099, label %1100, label %1120

1100:                                             ; preds = %1098
  %1101 = icmp ugt i64 %6, 250000000
  br i1 %1101, label %1102, label %1128

1102:                                             ; preds = %1100
  %1103 = icmp ugt i64 %6, 340000000
  br i1 %1103, label %1144, label %1136

1104:                                             ; preds = %1092
  %1105 = getelementptr %struct.phy_settings, ptr @vc5_hdmi_phy_settings, i32 0, i32 2, i32 %1094
  %1106 = getelementptr %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 6, i32 1
  %1107 = load i32, ptr %1106, align 4
  %1108 = getelementptr %struct.phy_settings, ptr @vc5_hdmi_phy_settings, i32 0, i32 2, i32 %1107
  %1109 = getelementptr %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 6, i32 2
  %1110 = load i32, ptr %1109, align 8
  %1111 = getelementptr %struct.phy_settings, ptr @vc5_hdmi_phy_settings, i32 0, i32 2, i32 %1110
  br label %1161

1112:                                             ; preds = %1096
  %1113 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 1, i32 2, i32 %1094
  %1114 = getelementptr %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 6, i32 1
  %1115 = load i32, ptr %1114, align 4
  %1116 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 1, i32 2, i32 %1115
  %1117 = getelementptr %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 6, i32 2
  %1118 = load i32, ptr %1117, align 8
  %1119 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 1, i32 2, i32 %1118
  br label %1161

1120:                                             ; preds = %1098
  %1121 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 2, i32 2, i32 %1094
  %1122 = getelementptr %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 6, i32 1
  %1123 = load i32, ptr %1122, align 4
  %1124 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 2, i32 2, i32 %1123
  %1125 = getelementptr %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 6, i32 2
  %1126 = load i32, ptr %1125, align 8
  %1127 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 2, i32 2, i32 %1126
  br label %1161

1128:                                             ; preds = %1100
  %1129 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 3, i32 2, i32 %1094
  %1130 = getelementptr %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 6, i32 1
  %1131 = load i32, ptr %1130, align 4
  %1132 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 3, i32 2, i32 %1131
  %1133 = getelementptr %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 6, i32 2
  %1134 = load i32, ptr %1133, align 8
  %1135 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 3, i32 2, i32 %1134
  br label %1161

1136:                                             ; preds = %1102
  %1137 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 4, i32 2, i32 %1094
  %1138 = getelementptr %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 6, i32 1
  %1139 = load i32, ptr %1138, align 4
  %1140 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 4, i32 2, i32 %1139
  %1141 = getelementptr %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 6, i32 2
  %1142 = load i32, ptr %1141, align 8
  %1143 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 4, i32 2, i32 %1142
  br label %1161

1144:                                             ; preds = %1102
  %1145 = icmp ugt i64 %6, 450000000
  %1146 = select i1 %1145, ptr getelementptr inbounds ([7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 6), ptr getelementptr inbounds ([7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 5)
  %1147 = icmp eq i32 %1094, 3
  %1148 = select i1 %1145, ptr getelementptr inbounds ([7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 6, i32 3), ptr getelementptr inbounds ([7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 5, i32 3)
  %1149 = getelementptr %struct.phy_settings, ptr %1146, i32 0, i32 2, i32 %1094
  %1150 = select i1 %1147, ptr %1148, ptr %1149
  %1151 = getelementptr %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 6, i32 1
  %1152 = load i32, ptr %1151, align 4
  %1153 = icmp eq i32 %1152, 3
  %1154 = getelementptr %struct.phy_settings, ptr %1146, i32 0, i32 2, i32 %1152
  %1155 = select i1 %1153, ptr %1148, ptr %1154
  %1156 = getelementptr %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 6, i32 2
  %1157 = load i32, ptr %1156, align 8
  %1158 = icmp eq i32 %1157, 3
  %1159 = getelementptr %struct.phy_settings, ptr %1146, i32 0, i32 2, i32 %1157
  %1160 = select i1 %1158, ptr %1148, ptr %1159
  br label %1161

1161:                                             ; preds = %1144, %1136, %1128, %1120, %1112, %1104
  %1162 = phi ptr [ %1111, %1104 ], [ %1119, %1112 ], [ %1127, %1120 ], [ %1135, %1128 ], [ %1143, %1136 ], [ %1160, %1144 ]
  %1163 = phi ptr [ %1106, %1104 ], [ %1114, %1112 ], [ %1122, %1120 ], [ %1130, %1128 ], [ %1138, %1136 ], [ %1151, %1144 ]
  %1164 = phi ptr [ %1105, %1104 ], [ %1113, %1112 ], [ %1121, %1120 ], [ %1129, %1128 ], [ %1137, %1136 ], [ %1150, %1144 ]
  %1165 = phi ptr [ %1108, %1104 ], [ %1116, %1112 ], [ %1124, %1120 ], [ %1132, %1128 ], [ %1140, %1136 ], [ %1155, %1144 ]
  %1166 = phi ptr [ %1109, %1104 ], [ %1117, %1112 ], [ %1125, %1120 ], [ %1133, %1128 ], [ %1141, %1136 ], [ %1156, %1144 ]
  %1167 = phi ptr [ @vc5_hdmi_phy_settings, %1104 ], [ getelementptr inbounds ([7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 1), %1112 ], [ getelementptr inbounds ([7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 2), %1120 ], [ getelementptr inbounds ([7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 3), %1128 ], [ getelementptr inbounds ([7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 4), %1136 ], [ %1146, %1144 ]
  %1168 = getelementptr %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 6, i32 3
  %1169 = load i32, ptr %1168, align 4
  %1170 = icmp eq i32 %1169, 3
  %1171 = getelementptr inbounds %struct.phy_settings, ptr %1167, i32 0, i32 3
  %1172 = getelementptr %struct.phy_settings, ptr %1167, i32 0, i32 2, i32 %1169
  %1173 = select i1 %1170, ptr %1171, ptr %1172
  %1174 = load i8, ptr %1164, align 1
  %1175 = icmp ult i8 %1174, 8
  br i1 %1175, label %1178, label %1176, !prof !15

1176:                                             ; preds = %1161
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 469, i32 noundef 9, ptr noundef null) #3
  %1177 = load i8, ptr %1164, align 1
  br label %1178

1178:                                             ; preds = %1176, %1161
  %1179 = phi i8 [ %1177, %1176 ], [ %1174, %1161 ]
  %1180 = zext i8 %1179 to i32
  %1181 = shl nuw nsw i32 %1180, 13
  %1182 = and i32 %1181, 57344
  %1183 = getelementptr inbounds %struct.anon.103, ptr %1164, i32 0, i32 1
  %1184 = load i8, ptr %1183, align 1
  %1185 = icmp ult i8 %1184, 32
  br i1 %1185, label %1188, label %1186, !prof !15

1186:                                             ; preds = %1178
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 471, i32 noundef 9, ptr noundef null) #3
  %1187 = load i8, ptr %1183, align 1
  br label %1188

1188:                                             ; preds = %1186, %1178
  %1189 = phi i8 [ %1187, %1186 ], [ %1184, %1178 ]
  %1190 = zext i8 %1189 to i32
  %1191 = shl nuw nsw i32 %1190, 8
  %1192 = and i32 %1191, 7936
  %1193 = or i32 %1182, %1192
  %1194 = load i8, ptr %1165, align 1
  %1195 = icmp ult i8 %1194, 8
  br i1 %1195, label %1198, label %1196, !prof !15

1196:                                             ; preds = %1188
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 473, i32 noundef 9, ptr noundef null) #3
  %1197 = load i8, ptr %1165, align 1
  br label %1198

1198:                                             ; preds = %1196, %1188
  %1199 = phi i8 [ %1197, %1196 ], [ %1194, %1188 ]
  %1200 = zext i8 %1199 to i32
  %1201 = shl nuw nsw i32 %1200, 21
  %1202 = and i32 %1201, 14680064
  %1203 = or i32 %1193, %1202
  %1204 = getelementptr inbounds %struct.anon.103, ptr %1165, i32 0, i32 1
  %1205 = load i8, ptr %1204, align 1
  %1206 = icmp ult i8 %1205, 32
  br i1 %1206, label %1209, label %1207, !prof !15

1207:                                             ; preds = %1198
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 475, i32 noundef 9, ptr noundef null) #3
  %1208 = load i8, ptr %1204, align 1
  br label %1209

1209:                                             ; preds = %1207, %1198
  %1210 = phi i8 [ %1208, %1207 ], [ %1205, %1198 ]
  %1211 = load i8, ptr %1162, align 1
  %1212 = zext i8 %1210 to i32
  %1213 = shl nuw nsw i32 %1212, 16
  %1214 = and i32 %1213, 2031616
  %1215 = or i32 %1203, %1214
  %1216 = zext i8 %1211 to i32
  %1217 = shl i32 %1216, 29
  %1218 = or i32 %1217, %1215
  %1219 = getelementptr inbounds %struct.anon.103, ptr %1162, i32 0, i32 1
  %1220 = load i8, ptr %1219, align 1
  %1221 = icmp ult i8 %1220, 32
  br i1 %1221, label %1224, label %1222, !prof !15

1222:                                             ; preds = %1209
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 479, i32 noundef 9, ptr noundef null) #3
  %1223 = load i8, ptr %1219, align 1
  br label %1224

1224:                                             ; preds = %1222, %1209
  %1225 = phi i8 [ %1223, %1222 ], [ %1220, %1209 ]
  %1226 = zext i8 %1225 to i32
  %1227 = shl nuw i32 %1226, 24
  %1228 = and i32 %1227, 520093696
  %1229 = or i32 %1228, %1218
  %1230 = load i8, ptr %1173, align 1
  %1231 = icmp ult i8 %1230, 8
  br i1 %1231, label %1234, label %1232, !prof !15

1232:                                             ; preds = %1224
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 481, i32 noundef 9, ptr noundef null) #3
  %1233 = load i8, ptr %1173, align 1
  br label %1234

1234:                                             ; preds = %1232, %1224
  %1235 = phi i8 [ %1233, %1232 ], [ %1230, %1224 ]
  %1236 = zext i8 %1235 to i32
  %1237 = shl nuw nsw i32 %1236, 5
  %1238 = and i32 %1237, 224
  %1239 = or i32 %1238, %1229
  %1240 = getelementptr inbounds %struct.anon.103, ptr %1173, i32 0, i32 1
  %1241 = load i8, ptr %1240, align 1
  %1242 = icmp ult i8 %1241, 32
  br i1 %1242, label %1245, label %1243, !prof !15

1243:                                             ; preds = %1234
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 483, i32 noundef 9, ptr noundef null) #3
  %1244 = load i8, ptr %1240, align 1
  br label %1245

1245:                                             ; preds = %1243, %1234
  %1246 = phi i8 [ %1244, %1243 ], [ %1241, %1234 ]
  %1247 = and i8 %1246, 31
  %1248 = zext i8 %1247 to i32
  %1249 = or i32 %1239, %1248
  %1250 = load ptr, ptr %3, align 4
  %1251 = load ptr, ptr %23, align 8
  %1252 = getelementptr inbounds %struct.platform_device, ptr %1251, i32 0, i32 3, i32 11, i32 18
  %1253 = load i32, ptr %1252, align 4
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1261, label %1255

1255:                                             ; preds = %1245
  %1256 = getelementptr inbounds %struct.platform_device, ptr %1251, i32 0, i32 3, i32 11, i32 15
  %1257 = load i16, ptr %1256, align 8
  %1258 = and i16 %1257, 7
  %1259 = icmp eq i16 %1258, 0
  br i1 %1259, label %1260, label %1261, !prof !8

1260:                                             ; preds = %1255
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %1261

1261:                                             ; preds = %1260, %1255, %1245
  %1262 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1250, i32 0, i32 5
  %1263 = load i32, ptr %1262, align 4
  %1264 = icmp ugt i32 %1263, 62
  br i1 %1264, label %1268, label %1265

1265:                                             ; preds = %1261
  %1266 = load ptr, ptr %23, align 8
  %1267 = getelementptr inbounds %struct.platform_device, ptr %1266, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1267, ptr noundef nonnull @.str.2, i32 noundef 62) #4
  br label %1297

1268:                                             ; preds = %1261
  %1269 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1250, i32 0, i32 4
  %1270 = load ptr, ptr %1269, align 8
  %1271 = getelementptr %struct.vc4_hdmi_register, ptr %1270, i32 62, i32 1
  %1272 = load i32, ptr %1271, align 4
  switch i32 %1272, label %1297 [
    i32 2, label %1273
    i32 1, label %1275
    i32 4, label %1277
    i32 3, label %1279
    i32 5, label %1281
    i32 6, label %1283
    i32 7, label %1285
    i32 8, label %1287
  ]

1273:                                             ; preds = %1268
  %1274 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %1289

1275:                                             ; preds = %1268
  %1276 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %1289

1277:                                             ; preds = %1268
  %1278 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %1289

1279:                                             ; preds = %1268
  %1280 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %1289

1281:                                             ; preds = %1268
  %1282 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %1289

1283:                                             ; preds = %1268
  %1284 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %1289

1285:                                             ; preds = %1268
  %1286 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %1289

1287:                                             ; preds = %1268
  %1288 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %1289

1289:                                             ; preds = %1287, %1285, %1283, %1281, %1279, %1277, %1275, %1273
  %1290 = phi ptr [ %1288, %1287 ], [ %1286, %1285 ], [ %1284, %1283 ], [ %1282, %1281 ], [ %1280, %1279 ], [ %1278, %1277 ], [ %1276, %1275 ], [ %1274, %1273 ]
  %1291 = load ptr, ptr %1290, align 4
  %1292 = icmp eq ptr %1291, null
  br i1 %1292, label %1297, label %1293

1293:                                             ; preds = %1289
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %1294 = getelementptr %struct.vc4_hdmi_register, ptr %1270, i32 62, i32 2
  %1295 = load i32, ptr %1294, align 4
  %1296 = getelementptr i8, ptr %1291, i32 %1295
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1296, i32 %1249) #3, !srcloc !10
  br label %1297

1297:                                             ; preds = %1293, %1289, %1268, %1265
  %1298 = load ptr, ptr %3, align 4
  %1299 = load ptr, ptr %23, align 8
  %1300 = getelementptr inbounds %struct.platform_device, ptr %1299, i32 0, i32 3, i32 11, i32 18
  %1301 = load i32, ptr %1300, align 4
  %1302 = icmp eq i32 %1301, 0
  br i1 %1302, label %1309, label %1303

1303:                                             ; preds = %1297
  %1304 = getelementptr inbounds %struct.platform_device, ptr %1299, i32 0, i32 3, i32 11, i32 15
  %1305 = load i16, ptr %1304, align 8
  %1306 = and i16 %1305, 7
  %1307 = icmp eq i16 %1306, 0
  br i1 %1307, label %1308, label %1309, !prof !8

1308:                                             ; preds = %1303
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #3
  br label %1309

1309:                                             ; preds = %1308, %1303, %1297
  %1310 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1298, i32 0, i32 5
  %1311 = load i32, ptr %1310, align 4
  %1312 = icmp ugt i32 %1311, 63
  br i1 %1312, label %1316, label %1313

1313:                                             ; preds = %1309
  %1314 = load ptr, ptr %23, align 8
  %1315 = getelementptr inbounds %struct.platform_device, ptr %1314, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1315, ptr noundef nonnull @.str.2, i32 noundef 63) #4
  br label %1349

1316:                                             ; preds = %1309
  %1317 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1298, i32 0, i32 4
  %1318 = load ptr, ptr %1317, align 8
  %1319 = getelementptr %struct.vc4_hdmi_register, ptr %1318, i32 63, i32 1
  %1320 = load i32, ptr %1319, align 4
  switch i32 %1320, label %1341 [
    i32 2, label %1321
    i32 1, label %1323
    i32 4, label %1325
    i32 3, label %1327
    i32 5, label %1329
    i32 6, label %1331
    i32 7, label %1333
    i32 8, label %1335
  ]

1321:                                             ; preds = %1316
  %1322 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %1337

1323:                                             ; preds = %1316
  %1324 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %1337

1325:                                             ; preds = %1316
  %1326 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %1337

1327:                                             ; preds = %1316
  %1328 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %1337

1329:                                             ; preds = %1316
  %1330 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %1337

1331:                                             ; preds = %1316
  %1332 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %1337

1333:                                             ; preds = %1316
  %1334 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %1337

1335:                                             ; preds = %1316
  %1336 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %1337

1337:                                             ; preds = %1335, %1333, %1331, %1329, %1327, %1325, %1323, %1321
  %1338 = phi ptr [ %1336, %1335 ], [ %1334, %1333 ], [ %1332, %1331 ], [ %1330, %1329 ], [ %1328, %1327 ], [ %1326, %1325 ], [ %1324, %1323 ], [ %1322, %1321 ]
  %1339 = load ptr, ptr %1338, align 4
  %1340 = icmp eq ptr %1339, null
  br i1 %1340, label %1341, label %1344

1341:                                             ; preds = %1337, %1316
  %1342 = load ptr, ptr %23, align 8
  %1343 = getelementptr inbounds %struct.platform_device, ptr %1342, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1343, ptr noundef nonnull @.str.3, i32 noundef 63) #4
  br label %1349

1344:                                             ; preds = %1337
  %1345 = getelementptr %struct.vc4_hdmi_register, ptr %1318, i32 63, i32 2
  %1346 = load i32, ptr %1345, align 4
  %1347 = getelementptr i8, ptr %1339, i32 %1346
  %1348 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1347) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  br label %1349

1349:                                             ; preds = %1344, %1341, %1313
  %1350 = phi i32 [ 0, %1313 ], [ %1348, %1344 ], [ 0, %1341 ]
  %1351 = getelementptr inbounds %struct.phy_lane_settings, ptr %1164, i32 0, i32 1
  %1352 = load i8, ptr %1351, align 1
  %1353 = icmp ult i8 %1352, 32
  br i1 %1353, label %1356, label %1354, !prof !15

1354:                                             ; preds = %1349
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 488, i32 noundef 9, ptr noundef null) #3
  %1355 = load i8, ptr %1351, align 1
  br label %1356

1356:                                             ; preds = %1354, %1349
  %1357 = phi i8 [ %1355, %1354 ], [ %1352, %1349 ]
  %1358 = zext i8 %1357 to i32
  %1359 = shl nuw nsw i32 %1358, 5
  %1360 = and i32 %1359, 992
  %1361 = or i32 %1360, %1350
  %1362 = getelementptr inbounds %struct.phy_lane_settings, ptr %1165, i32 0, i32 1
  %1363 = load i8, ptr %1362, align 1
  %1364 = icmp ult i8 %1363, 32
  br i1 %1364, label %1367, label %1365, !prof !15

1365:                                             ; preds = %1356
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 490, i32 noundef 9, ptr noundef null) #3
  %1366 = load i8, ptr %1362, align 1
  br label %1367

1367:                                             ; preds = %1365, %1356
  %1368 = phi i8 [ %1366, %1365 ], [ %1363, %1356 ]
  %1369 = zext i8 %1368 to i32
  %1370 = shl nuw nsw i32 %1369, 10
  %1371 = and i32 %1370, 31744
  %1372 = or i32 %1361, %1371
  %1373 = getelementptr inbounds %struct.phy_lane_settings, ptr %1162, i32 0, i32 1
  %1374 = load i8, ptr %1373, align 1
  %1375 = icmp ult i8 %1374, 32
  br i1 %1375, label %1378, label %1376, !prof !15

1376:                                             ; preds = %1367
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 492, i32 noundef 9, ptr noundef null) #3
  %1377 = load i8, ptr %1373, align 1
  br label %1378

1378:                                             ; preds = %1376, %1367
  %1379 = phi i8 [ %1377, %1376 ], [ %1374, %1367 ]
  %1380 = zext i8 %1379 to i32
  %1381 = shl nuw nsw i32 %1380, 15
  %1382 = and i32 %1381, 1015808
  %1383 = or i32 %1372, %1382
  %1384 = getelementptr inbounds %struct.phy_lane_settings, ptr %1173, i32 0, i32 1
  %1385 = load i8, ptr %1384, align 1
  %1386 = icmp ult i8 %1385, 32
  br i1 %1386, label %1389, label %1387, !prof !15

1387:                                             ; preds = %1378
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 494, i32 noundef 9, ptr noundef null) #3
  %1388 = load i8, ptr %1384, align 1
  br label %1389

1389:                                             ; preds = %1387, %1378
  %1390 = phi i8 [ %1388, %1387 ], [ %1385, %1378 ]
  %1391 = and i8 %1390, 31
  %1392 = zext i8 %1391 to i32
  %1393 = or i32 %1383, %1392
  %1394 = load ptr, ptr %3, align 4
  %1395 = load ptr, ptr %23, align 8
  %1396 = getelementptr inbounds %struct.platform_device, ptr %1395, i32 0, i32 3, i32 11, i32 18
  %1397 = load i32, ptr %1396, align 4
  %1398 = icmp eq i32 %1397, 0
  br i1 %1398, label %1405, label %1399

1399:                                             ; preds = %1389
  %1400 = getelementptr inbounds %struct.platform_device, ptr %1395, i32 0, i32 3, i32 11, i32 15
  %1401 = load i16, ptr %1400, align 8
  %1402 = and i16 %1401, 7
  %1403 = icmp eq i16 %1402, 0
  br i1 %1403, label %1404, label %1405, !prof !8

1404:                                             ; preds = %1399
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %1405

1405:                                             ; preds = %1404, %1399, %1389
  %1406 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1394, i32 0, i32 5
  %1407 = load i32, ptr %1406, align 4
  %1408 = icmp ugt i32 %1407, 63
  br i1 %1408, label %1412, label %1409

1409:                                             ; preds = %1405
  %1410 = load ptr, ptr %23, align 8
  %1411 = getelementptr inbounds %struct.platform_device, ptr %1410, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1411, ptr noundef nonnull @.str.2, i32 noundef 63) #4
  br label %1441

1412:                                             ; preds = %1405
  %1413 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1394, i32 0, i32 4
  %1414 = load ptr, ptr %1413, align 8
  %1415 = getelementptr %struct.vc4_hdmi_register, ptr %1414, i32 63, i32 1
  %1416 = load i32, ptr %1415, align 4
  switch i32 %1416, label %1441 [
    i32 2, label %1417
    i32 1, label %1419
    i32 4, label %1421
    i32 3, label %1423
    i32 5, label %1425
    i32 6, label %1427
    i32 7, label %1429
    i32 8, label %1431
  ]

1417:                                             ; preds = %1412
  %1418 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %1433

1419:                                             ; preds = %1412
  %1420 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %1433

1421:                                             ; preds = %1412
  %1422 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %1433

1423:                                             ; preds = %1412
  %1424 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %1433

1425:                                             ; preds = %1412
  %1426 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %1433

1427:                                             ; preds = %1412
  %1428 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %1433

1429:                                             ; preds = %1412
  %1430 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %1433

1431:                                             ; preds = %1412
  %1432 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %1433

1433:                                             ; preds = %1431, %1429, %1427, %1425, %1423, %1421, %1419, %1417
  %1434 = phi ptr [ %1432, %1431 ], [ %1430, %1429 ], [ %1428, %1427 ], [ %1426, %1425 ], [ %1424, %1423 ], [ %1422, %1421 ], [ %1420, %1419 ], [ %1418, %1417 ]
  %1435 = load ptr, ptr %1434, align 4
  %1436 = icmp eq ptr %1435, null
  br i1 %1436, label %1441, label %1437

1437:                                             ; preds = %1433
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %1438 = getelementptr %struct.vc4_hdmi_register, ptr %1414, i32 63, i32 2
  %1439 = load i32, ptr %1438, align 4
  %1440 = getelementptr i8, ptr %1435, i32 %1439
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1440, i32 %1393) #3, !srcloc !10
  br label %1441

1441:                                             ; preds = %1437, %1433, %1412, %1409
  %1442 = getelementptr inbounds %struct.phy_lane_settings, ptr %1164, i32 0, i32 2
  %1443 = load i8, ptr %1442, align 1
  %1444 = icmp ult i8 %1443, 16
  br i1 %1444, label %1447, label %1445, !prof !15

1445:                                             ; preds = %1441
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 498, i32 noundef 9, ptr noundef null) #3
  %1446 = load i8, ptr %1442, align 1
  br label %1447

1447:                                             ; preds = %1445, %1441
  %1448 = phi i8 [ %1446, %1445 ], [ %1443, %1441 ]
  %1449 = zext i8 %1448 to i32
  %1450 = shl nuw nsw i32 %1449, 4
  %1451 = and i32 %1450, 240
  %1452 = getelementptr inbounds %struct.phy_lane_settings, ptr %1165, i32 0, i32 2
  %1453 = load i8, ptr %1452, align 1
  %1454 = icmp ult i8 %1453, 16
  br i1 %1454, label %1457, label %1455, !prof !15

1455:                                             ; preds = %1447
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 500, i32 noundef 9, ptr noundef null) #3
  %1456 = load i8, ptr %1452, align 1
  br label %1457

1457:                                             ; preds = %1455, %1447
  %1458 = phi i8 [ %1456, %1455 ], [ %1453, %1447 ]
  %1459 = zext i8 %1458 to i32
  %1460 = shl nuw nsw i32 %1459, 8
  %1461 = and i32 %1460, 3840
  %1462 = or i32 %1461, %1451
  %1463 = getelementptr inbounds %struct.phy_lane_settings, ptr %1162, i32 0, i32 2
  %1464 = load i8, ptr %1463, align 1
  %1465 = icmp ult i8 %1464, 16
  br i1 %1465, label %1468, label %1466, !prof !15

1466:                                             ; preds = %1457
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 502, i32 noundef 9, ptr noundef null) #3
  %1467 = load i8, ptr %1463, align 1
  br label %1468

1468:                                             ; preds = %1466, %1457
  %1469 = phi i8 [ %1467, %1466 ], [ %1464, %1457 ]
  %1470 = zext i8 %1469 to i32
  %1471 = shl nuw nsw i32 %1470, 12
  %1472 = and i32 %1471, 61440
  %1473 = or i32 %1462, %1472
  %1474 = getelementptr inbounds %struct.phy_lane_settings, ptr %1173, i32 0, i32 2
  %1475 = load i8, ptr %1474, align 1
  %1476 = icmp ult i8 %1475, 16
  br i1 %1476, label %1479, label %1477, !prof !15

1477:                                             ; preds = %1468
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 504, i32 noundef 9, ptr noundef null) #3
  %1478 = load i8, ptr %1474, align 1
  br label %1479

1479:                                             ; preds = %1477, %1468
  %1480 = phi i8 [ %1478, %1477 ], [ %1475, %1468 ]
  %1481 = and i8 %1480, 15
  %1482 = zext i8 %1481 to i32
  %1483 = or i32 %1473, %1482
  %1484 = icmp ult i64 %17, 3350000000
  br i1 %1484, label %1494, label %1485

1485:                                             ; preds = %1479
  %1486 = icmp ult i64 %17, 3700000000
  br i1 %1486, label %1494, label %1487

1487:                                             ; preds = %1485
  %1488 = icmp ult i64 %17, 4050000000
  br i1 %1488, label %1494, label %1489

1489:                                             ; preds = %1487
  %1490 = icmp ult i64 %17, 4800000000
  br i1 %1490, label %1494, label %1491

1491:                                             ; preds = %1489
  %1492 = icmp ult i64 %17, 5200000000
  %1493 = select i1 %1492, i32 458752, i32 131072
  br label %1494

1494:                                             ; preds = %1491, %1489, %1487, %1485, %1479
  %1495 = phi i32 [ %1493, %1491 ], [ 983040, %1479 ], [ 786432, %1485 ], [ 393216, %1487 ], [ 327680, %1489 ]
  %1496 = or i32 %1483, %1495
  %1497 = load ptr, ptr %3, align 4
  %1498 = load ptr, ptr %23, align 8
  %1499 = getelementptr inbounds %struct.platform_device, ptr %1498, i32 0, i32 3, i32 11, i32 18
  %1500 = load i32, ptr %1499, align 4
  %1501 = icmp eq i32 %1500, 0
  br i1 %1501, label %1508, label %1502

1502:                                             ; preds = %1494
  %1503 = getelementptr inbounds %struct.platform_device, ptr %1498, i32 0, i32 3, i32 11, i32 15
  %1504 = load i16, ptr %1503, align 8
  %1505 = and i16 %1504, 7
  %1506 = icmp eq i16 %1505, 0
  br i1 %1506, label %1507, label %1508, !prof !8

1507:                                             ; preds = %1502
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %1508

1508:                                             ; preds = %1507, %1502, %1494
  %1509 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1497, i32 0, i32 5
  %1510 = load i32, ptr %1509, align 4
  %1511 = icmp ugt i32 %1510, 64
  br i1 %1511, label %1515, label %1512

1512:                                             ; preds = %1508
  %1513 = load ptr, ptr %23, align 8
  %1514 = getelementptr inbounds %struct.platform_device, ptr %1513, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1514, ptr noundef nonnull @.str.2, i32 noundef 64) #4
  br label %1544

1515:                                             ; preds = %1508
  %1516 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1497, i32 0, i32 4
  %1517 = load ptr, ptr %1516, align 8
  %1518 = getelementptr %struct.vc4_hdmi_register, ptr %1517, i32 64, i32 1
  %1519 = load i32, ptr %1518, align 4
  switch i32 %1519, label %1544 [
    i32 2, label %1520
    i32 1, label %1522
    i32 4, label %1524
    i32 3, label %1526
    i32 5, label %1528
    i32 6, label %1530
    i32 7, label %1532
    i32 8, label %1534
  ]

1520:                                             ; preds = %1515
  %1521 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %1536

1522:                                             ; preds = %1515
  %1523 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %1536

1524:                                             ; preds = %1515
  %1525 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %1536

1526:                                             ; preds = %1515
  %1527 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %1536

1528:                                             ; preds = %1515
  %1529 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %1536

1530:                                             ; preds = %1515
  %1531 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %1536

1532:                                             ; preds = %1515
  %1533 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %1536

1534:                                             ; preds = %1515
  %1535 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %1536

1536:                                             ; preds = %1534, %1532, %1530, %1528, %1526, %1524, %1522, %1520
  %1537 = phi ptr [ %1535, %1534 ], [ %1533, %1532 ], [ %1531, %1530 ], [ %1529, %1528 ], [ %1527, %1526 ], [ %1525, %1524 ], [ %1523, %1522 ], [ %1521, %1520 ]
  %1538 = load ptr, ptr %1537, align 4
  %1539 = icmp eq ptr %1538, null
  br i1 %1539, label %1544, label %1540

1540:                                             ; preds = %1536
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %1541 = getelementptr %struct.vc4_hdmi_register, ptr %1517, i32 64, i32 2
  %1542 = load i32, ptr %1541, align 4
  %1543 = getelementptr i8, ptr %1538, i32 %1542
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1543, i32 %1496) #3, !srcloc !10
  br label %1544

1544:                                             ; preds = %1540, %1536, %1515, %1512
  %1545 = load i32, ptr %1093, align 8
  %1546 = icmp ult i32 %1545, 4
  br i1 %1546, label %1549, label %1547, !prof !15

1547:                                             ; preds = %1544
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 510, i32 noundef 9, ptr noundef null) #3
  %1548 = load i32, ptr %1093, align 8
  br label %1549

1549:                                             ; preds = %1547, %1544
  %1550 = phi i32 [ %1548, %1547 ], [ %1545, %1544 ]
  %1551 = load i32, ptr %1163, align 4
  %1552 = and i32 %1551, 268435452
  %1553 = icmp eq i32 %1552, 0
  br i1 %1553, label %1556, label %1554, !prof !15

1554:                                             ; preds = %1549
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 512, i32 noundef 9, ptr noundef null) #3
  %1555 = load i32, ptr %1163, align 4
  br label %1556

1556:                                             ; preds = %1554, %1549
  %1557 = phi i32 [ %1555, %1554 ], [ %1551, %1549 ]
  %1558 = load i32, ptr %1166, align 8
  %1559 = and i32 %1558, 16777212
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1563, label %1561, !prof !15

1561:                                             ; preds = %1556
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 514, i32 noundef 9, ptr noundef null) #3
  %1562 = load i32, ptr %1166, align 8
  br label %1563

1563:                                             ; preds = %1561, %1556
  %1564 = phi i32 [ %1562, %1561 ], [ %1558, %1556 ]
  %1565 = load i32, ptr %1168, align 4
  %1566 = and i32 %1565, 1048572
  %1567 = icmp eq i32 %1566, 0
  br i1 %1567, label %1570, label %1568, !prof !15

1568:                                             ; preds = %1563
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 516, i32 noundef 9, ptr noundef null) #3
  %1569 = load i32, ptr %1168, align 4
  br label %1570

1570:                                             ; preds = %1568, %1563
  %1571 = phi i32 [ %1569, %1568 ], [ %1565, %1563 ]
  %1572 = and i32 %1550, 3
  %1573 = shl i32 %1557, 4
  %1574 = and i32 %1573, 48
  %1575 = or i32 %1574, %1572
  %1576 = shl i32 %1564, 8
  %1577 = and i32 %1576, 768
  %1578 = or i32 %1575, %1577
  %1579 = shl i32 %1571, 12
  %1580 = and i32 %1579, 12288
  %1581 = or i32 %1578, %1580
  %1582 = load ptr, ptr %3, align 4
  %1583 = load ptr, ptr %23, align 8
  %1584 = getelementptr inbounds %struct.platform_device, ptr %1583, i32 0, i32 3, i32 11, i32 18
  %1585 = load i32, ptr %1584, align 4
  %1586 = icmp eq i32 %1585, 0
  br i1 %1586, label %1593, label %1587

1587:                                             ; preds = %1570
  %1588 = getelementptr inbounds %struct.platform_device, ptr %1583, i32 0, i32 3, i32 11, i32 15
  %1589 = load i16, ptr %1588, align 8
  %1590 = and i16 %1589, 7
  %1591 = icmp eq i16 %1590, 0
  br i1 %1591, label %1592, label %1593, !prof !8

1592:                                             ; preds = %1587
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %1593

1593:                                             ; preds = %1592, %1587, %1570
  %1594 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1582, i32 0, i32 5
  %1595 = load i32, ptr %1594, align 4
  %1596 = icmp ugt i32 %1595, 60
  br i1 %1596, label %1600, label %1597

1597:                                             ; preds = %1593
  %1598 = load ptr, ptr %23, align 8
  %1599 = getelementptr inbounds %struct.platform_device, ptr %1598, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1599, ptr noundef nonnull @.str.2, i32 noundef 60) #4
  br label %1629

1600:                                             ; preds = %1593
  %1601 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1582, i32 0, i32 4
  %1602 = load ptr, ptr %1601, align 8
  %1603 = getelementptr %struct.vc4_hdmi_register, ptr %1602, i32 60, i32 1
  %1604 = load i32, ptr %1603, align 4
  switch i32 %1604, label %1629 [
    i32 2, label %1605
    i32 1, label %1607
    i32 4, label %1609
    i32 3, label %1611
    i32 5, label %1613
    i32 6, label %1615
    i32 7, label %1617
    i32 8, label %1619
  ]

1605:                                             ; preds = %1600
  %1606 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %1621

1607:                                             ; preds = %1600
  %1608 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %1621

1609:                                             ; preds = %1600
  %1610 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %1621

1611:                                             ; preds = %1600
  %1612 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %1621

1613:                                             ; preds = %1600
  %1614 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %1621

1615:                                             ; preds = %1600
  %1616 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %1621

1617:                                             ; preds = %1600
  %1618 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %1621

1619:                                             ; preds = %1600
  %1620 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %1621

1621:                                             ; preds = %1619, %1617, %1615, %1613, %1611, %1609, %1607, %1605
  %1622 = phi ptr [ %1620, %1619 ], [ %1618, %1617 ], [ %1616, %1615 ], [ %1614, %1613 ], [ %1612, %1611 ], [ %1610, %1609 ], [ %1608, %1607 ], [ %1606, %1605 ]
  %1623 = load ptr, ptr %1622, align 4
  %1624 = icmp eq ptr %1623, null
  br i1 %1624, label %1629, label %1625

1625:                                             ; preds = %1621
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %1626 = getelementptr %struct.vc4_hdmi_register, ptr %1602, i32 60, i32 2
  %1627 = load i32, ptr %1626, align 4
  %1628 = getelementptr i8, ptr %1623, i32 %1627
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1628, i32 %1581) #3, !srcloc !10
  br label %1629

1629:                                             ; preds = %1625, %1621, %1600, %1597
  %1630 = load ptr, ptr %3, align 4
  %1631 = load ptr, ptr %23, align 8
  %1632 = getelementptr inbounds %struct.platform_device, ptr %1631, i32 0, i32 3, i32 11, i32 18
  %1633 = load i32, ptr %1632, align 4
  %1634 = icmp eq i32 %1633, 0
  br i1 %1634, label %1641, label %1635

1635:                                             ; preds = %1629
  %1636 = getelementptr inbounds %struct.platform_device, ptr %1631, i32 0, i32 3, i32 11, i32 15
  %1637 = load i16, ptr %1636, align 8
  %1638 = and i16 %1637, 7
  %1639 = icmp eq i16 %1638, 0
  br i1 %1639, label %1640, label %1641, !prof !8

1640:                                             ; preds = %1635
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #3
  br label %1641

1641:                                             ; preds = %1640, %1635, %1629
  %1642 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1630, i32 0, i32 5
  %1643 = load i32, ptr %1642, align 4
  %1644 = icmp ugt i32 %1643, 73
  br i1 %1644, label %1648, label %1645

1645:                                             ; preds = %1641
  %1646 = load ptr, ptr %23, align 8
  %1647 = getelementptr inbounds %struct.platform_device, ptr %1646, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1647, ptr noundef nonnull @.str.2, i32 noundef 73) #4
  br label %1681

1648:                                             ; preds = %1641
  %1649 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1630, i32 0, i32 4
  %1650 = load ptr, ptr %1649, align 8
  %1651 = getelementptr %struct.vc4_hdmi_register, ptr %1650, i32 73, i32 1
  %1652 = load i32, ptr %1651, align 4
  switch i32 %1652, label %1673 [
    i32 2, label %1653
    i32 1, label %1655
    i32 4, label %1657
    i32 3, label %1659
    i32 5, label %1661
    i32 6, label %1663
    i32 7, label %1665
    i32 8, label %1667
  ]

1653:                                             ; preds = %1648
  %1654 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %1669

1655:                                             ; preds = %1648
  %1656 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %1669

1657:                                             ; preds = %1648
  %1658 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %1669

1659:                                             ; preds = %1648
  %1660 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %1669

1661:                                             ; preds = %1648
  %1662 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %1669

1663:                                             ; preds = %1648
  %1664 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %1669

1665:                                             ; preds = %1648
  %1666 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %1669

1667:                                             ; preds = %1648
  %1668 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %1669

1669:                                             ; preds = %1667, %1665, %1663, %1661, %1659, %1657, %1655, %1653
  %1670 = phi ptr [ %1668, %1667 ], [ %1666, %1665 ], [ %1664, %1663 ], [ %1662, %1661 ], [ %1660, %1659 ], [ %1658, %1657 ], [ %1656, %1655 ], [ %1654, %1653 ]
  %1671 = load ptr, ptr %1670, align 4
  %1672 = icmp eq ptr %1671, null
  br i1 %1672, label %1673, label %1676

1673:                                             ; preds = %1669, %1648
  %1674 = load ptr, ptr %23, align 8
  %1675 = getelementptr inbounds %struct.platform_device, ptr %1674, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1675, ptr noundef nonnull @.str.3, i32 noundef 73) #4
  br label %1681

1676:                                             ; preds = %1669
  %1677 = getelementptr %struct.vc4_hdmi_register, ptr %1650, i32 73, i32 2
  %1678 = load i32, ptr %1677, align 4
  %1679 = getelementptr i8, ptr %1671, i32 %1678
  %1680 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1679) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  br label %1681

1681:                                             ; preds = %1676, %1673, %1645
  %1682 = phi i32 [ 0, %1645 ], [ %1680, %1676 ], [ 0, %1673 ]
  %1683 = and i32 %1682, -49
  %1684 = load ptr, ptr %3, align 4
  %1685 = load ptr, ptr %23, align 8
  %1686 = getelementptr inbounds %struct.platform_device, ptr %1685, i32 0, i32 3, i32 11, i32 18
  %1687 = load i32, ptr %1686, align 4
  %1688 = icmp eq i32 %1687, 0
  br i1 %1688, label %1695, label %1689

1689:                                             ; preds = %1681
  %1690 = getelementptr inbounds %struct.platform_device, ptr %1685, i32 0, i32 3, i32 11, i32 15
  %1691 = load i16, ptr %1690, align 8
  %1692 = and i16 %1691, 7
  %1693 = icmp eq i16 %1692, 0
  br i1 %1693, label %1694, label %1695, !prof !8

1694:                                             ; preds = %1689
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %1695

1695:                                             ; preds = %1694, %1689, %1681
  %1696 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1684, i32 0, i32 5
  %1697 = load i32, ptr %1696, align 4
  %1698 = icmp ugt i32 %1697, 73
  br i1 %1698, label %1702, label %1699

1699:                                             ; preds = %1695
  %1700 = load ptr, ptr %23, align 8
  %1701 = getelementptr inbounds %struct.platform_device, ptr %1700, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1701, ptr noundef nonnull @.str.2, i32 noundef 73) #4
  br label %1731

1702:                                             ; preds = %1695
  %1703 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1684, i32 0, i32 4
  %1704 = load ptr, ptr %1703, align 8
  %1705 = getelementptr %struct.vc4_hdmi_register, ptr %1704, i32 73, i32 1
  %1706 = load i32, ptr %1705, align 4
  switch i32 %1706, label %1731 [
    i32 2, label %1707
    i32 1, label %1709
    i32 4, label %1711
    i32 3, label %1713
    i32 5, label %1715
    i32 6, label %1717
    i32 7, label %1719
    i32 8, label %1721
  ]

1707:                                             ; preds = %1702
  %1708 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %1723

1709:                                             ; preds = %1702
  %1710 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %1723

1711:                                             ; preds = %1702
  %1712 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %1723

1713:                                             ; preds = %1702
  %1714 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %1723

1715:                                             ; preds = %1702
  %1716 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %1723

1717:                                             ; preds = %1702
  %1718 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %1723

1719:                                             ; preds = %1702
  %1720 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %1723

1721:                                             ; preds = %1702
  %1722 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %1723

1723:                                             ; preds = %1721, %1719, %1717, %1715, %1713, %1711, %1709, %1707
  %1724 = phi ptr [ %1722, %1721 ], [ %1720, %1719 ], [ %1718, %1717 ], [ %1716, %1715 ], [ %1714, %1713 ], [ %1712, %1711 ], [ %1710, %1709 ], [ %1708, %1707 ]
  %1725 = load ptr, ptr %1724, align 4
  %1726 = icmp eq ptr %1725, null
  br i1 %1726, label %1731, label %1727

1727:                                             ; preds = %1723
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %1728 = getelementptr %struct.vc4_hdmi_register, ptr %1704, i32 73, i32 2
  %1729 = load i32, ptr %1728, align 4
  %1730 = getelementptr i8, ptr %1725, i32 %1729
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1730, i32 %1683) #3, !srcloc !10
  br label %1731

1731:                                             ; preds = %1727, %1723, %1702, %1699
  %1732 = load ptr, ptr %3, align 4
  %1733 = load ptr, ptr %23, align 8
  %1734 = getelementptr inbounds %struct.platform_device, ptr %1733, i32 0, i32 3, i32 11, i32 18
  %1735 = load i32, ptr %1734, align 4
  %1736 = icmp eq i32 %1735, 0
  br i1 %1736, label %1743, label %1737

1737:                                             ; preds = %1731
  %1738 = getelementptr inbounds %struct.platform_device, ptr %1733, i32 0, i32 3, i32 11, i32 15
  %1739 = load i16, ptr %1738, align 8
  %1740 = and i16 %1739, 7
  %1741 = icmp eq i16 %1740, 0
  br i1 %1741, label %1742, label %1743, !prof !8

1742:                                             ; preds = %1737
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #3
  br label %1743

1743:                                             ; preds = %1742, %1737, %1731
  %1744 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1732, i32 0, i32 5
  %1745 = load i32, ptr %1744, align 4
  %1746 = icmp ugt i32 %1745, 73
  br i1 %1746, label %1750, label %1747

1747:                                             ; preds = %1743
  %1748 = load ptr, ptr %23, align 8
  %1749 = getelementptr inbounds %struct.platform_device, ptr %1748, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1749, ptr noundef nonnull @.str.2, i32 noundef 73) #4
  br label %1784

1750:                                             ; preds = %1743
  %1751 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1732, i32 0, i32 4
  %1752 = load ptr, ptr %1751, align 8
  %1753 = getelementptr %struct.vc4_hdmi_register, ptr %1752, i32 73, i32 1
  %1754 = load i32, ptr %1753, align 4
  switch i32 %1754, label %1775 [
    i32 2, label %1755
    i32 1, label %1757
    i32 4, label %1759
    i32 3, label %1761
    i32 5, label %1763
    i32 6, label %1765
    i32 7, label %1767
    i32 8, label %1769
  ]

1755:                                             ; preds = %1750
  %1756 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %1771

1757:                                             ; preds = %1750
  %1758 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %1771

1759:                                             ; preds = %1750
  %1760 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %1771

1761:                                             ; preds = %1750
  %1762 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %1771

1763:                                             ; preds = %1750
  %1764 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %1771

1765:                                             ; preds = %1750
  %1766 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %1771

1767:                                             ; preds = %1750
  %1768 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %1771

1769:                                             ; preds = %1750
  %1770 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %1771

1771:                                             ; preds = %1769, %1767, %1765, %1763, %1761, %1759, %1757, %1755
  %1772 = phi ptr [ %1770, %1769 ], [ %1768, %1767 ], [ %1766, %1765 ], [ %1764, %1763 ], [ %1762, %1761 ], [ %1760, %1759 ], [ %1758, %1757 ], [ %1756, %1755 ]
  %1773 = load ptr, ptr %1772, align 4
  %1774 = icmp eq ptr %1773, null
  br i1 %1774, label %1775, label %1778

1775:                                             ; preds = %1771, %1750
  %1776 = load ptr, ptr %23, align 8
  %1777 = getelementptr inbounds %struct.platform_device, ptr %1776, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1777, ptr noundef nonnull @.str.3, i32 noundef 73) #4
  br label %1784

1778:                                             ; preds = %1771
  %1779 = getelementptr %struct.vc4_hdmi_register, ptr %1752, i32 73, i32 2
  %1780 = load i32, ptr %1779, align 4
  %1781 = getelementptr i8, ptr %1773, i32 %1780
  %1782 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1781) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %1783 = or i32 %1782, 48
  br label %1784

1784:                                             ; preds = %1778, %1775, %1747
  %1785 = phi i32 [ 48, %1747 ], [ %1783, %1778 ], [ 48, %1775 ]
  %1786 = load ptr, ptr %3, align 4
  %1787 = load ptr, ptr %23, align 8
  %1788 = getelementptr inbounds %struct.platform_device, ptr %1787, i32 0, i32 3, i32 11, i32 18
  %1789 = load i32, ptr %1788, align 4
  %1790 = icmp eq i32 %1789, 0
  br i1 %1790, label %1797, label %1791

1791:                                             ; preds = %1784
  %1792 = getelementptr inbounds %struct.platform_device, ptr %1787, i32 0, i32 3, i32 11, i32 15
  %1793 = load i16, ptr %1792, align 8
  %1794 = and i16 %1793, 7
  %1795 = icmp eq i16 %1794, 0
  br i1 %1795, label %1796, label %1797, !prof !8

1796:                                             ; preds = %1791
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %1797

1797:                                             ; preds = %1796, %1791, %1784
  %1798 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1786, i32 0, i32 5
  %1799 = load i32, ptr %1798, align 4
  %1800 = icmp ugt i32 %1799, 73
  br i1 %1800, label %1804, label %1801

1801:                                             ; preds = %1797
  %1802 = load ptr, ptr %23, align 8
  %1803 = getelementptr inbounds %struct.platform_device, ptr %1802, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1803, ptr noundef nonnull @.str.2, i32 noundef 73) #4
  br label %1833

1804:                                             ; preds = %1797
  %1805 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1786, i32 0, i32 4
  %1806 = load ptr, ptr %1805, align 8
  %1807 = getelementptr %struct.vc4_hdmi_register, ptr %1806, i32 73, i32 1
  %1808 = load i32, ptr %1807, align 4
  switch i32 %1808, label %1833 [
    i32 2, label %1809
    i32 1, label %1811
    i32 4, label %1813
    i32 3, label %1815
    i32 5, label %1817
    i32 6, label %1819
    i32 7, label %1821
    i32 8, label %1823
  ]

1809:                                             ; preds = %1804
  %1810 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %1825

1811:                                             ; preds = %1804
  %1812 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %1825

1813:                                             ; preds = %1804
  %1814 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %1825

1815:                                             ; preds = %1804
  %1816 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %1825

1817:                                             ; preds = %1804
  %1818 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %1825

1819:                                             ; preds = %1804
  %1820 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %1825

1821:                                             ; preds = %1804
  %1822 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %1825

1823:                                             ; preds = %1804
  %1824 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %1825

1825:                                             ; preds = %1823, %1821, %1819, %1817, %1815, %1813, %1811, %1809
  %1826 = phi ptr [ %1824, %1823 ], [ %1822, %1821 ], [ %1820, %1819 ], [ %1818, %1817 ], [ %1816, %1815 ], [ %1814, %1813 ], [ %1812, %1811 ], [ %1810, %1809 ]
  %1827 = load ptr, ptr %1826, align 4
  %1828 = icmp eq ptr %1827, null
  br i1 %1828, label %1833, label %1829

1829:                                             ; preds = %1825
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %1830 = getelementptr %struct.vc4_hdmi_register, ptr %1806, i32 73, i32 2
  %1831 = load i32, ptr %1830, align 4
  %1832 = getelementptr i8, ptr %1827, i32 %1831
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1832, i32 %1785) #3, !srcloc !10
  br label %1833

1833:                                             ; preds = %1829, %1825, %1804, %1801
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc5_hdmi_reset_phy(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 11, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 11, i32 15
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 7
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %15

15:                                               ; preds = %14, %9, %1
  %16 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 73
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.2, i32 noundef 73) #4
  br label %51

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 4
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr %struct.vc4_hdmi_register, ptr %24, i32 73, i32 1
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %51 [
    i32 2, label %27
    i32 1, label %29
    i32 4, label %31
    i32 3, label %33
    i32 5, label %35
    i32 6, label %37
    i32 7, label %39
    i32 8, label %41
  ]

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %43

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %43

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %43

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %43

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %43

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %43

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %43

41:                                               ; preds = %22
  %42 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %43

43:                                               ; preds = %41, %39, %37, %35, %33, %31, %29, %27
  %44 = phi ptr [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ]
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %48 = getelementptr %struct.vc4_hdmi_register, ptr %24, i32 73, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i8, ptr %45, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 15) #3, !srcloc !10
  br label %51

51:                                               ; preds = %47, %43, %22, %19
  %52 = load ptr, ptr %2, align 4
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3, i32 11, i32 18
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3, i32 11, i32 15
  %59 = load i16, ptr %58, align 8
  %60 = and i16 %59, 7
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %63, !prof !8

62:                                               ; preds = %57
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %63

63:                                               ; preds = %62, %57, %51
  %64 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %52, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = icmp ugt i32 %65, 72
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds %struct.platform_device, ptr %68, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.2, i32 noundef 72) #4
  br label %99

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %52, i32 0, i32 4
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr %struct.vc4_hdmi_register, ptr %72, i32 72, i32 1
  %74 = load i32, ptr %73, align 4
  switch i32 %74, label %99 [
    i32 2, label %75
    i32 1, label %77
    i32 4, label %79
    i32 3, label %81
    i32 5, label %83
    i32 6, label %85
    i32 7, label %87
    i32 8, label %89
  ]

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %91

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %91

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %91

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %91

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %91

85:                                               ; preds = %70
  %86 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %91

87:                                               ; preds = %70
  %88 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %91

89:                                               ; preds = %70
  %90 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %91

91:                                               ; preds = %89, %87, %85, %83, %81, %79, %77, %75
  %92 = phi ptr [ %90, %89 ], [ %88, %87 ], [ %86, %85 ], [ %84, %83 ], [ %82, %81 ], [ %80, %79 ], [ %78, %77 ], [ %76, %75 ]
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %96 = getelementptr %struct.vc4_hdmi_register, ptr %72, i32 72, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr i8, ptr %93, i32 %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 1024) #3, !srcloc !10
  br label %99

99:                                               ; preds = %95, %91, %70, %67
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc5_hdmi_phy_disable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 30
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #3
  tail call fastcc void @vc5_hdmi_reset_phy(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc5_hdmi_phy_rng_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 30
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #3
  %4 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 18
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 15
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 7
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #3
  br label %17

17:                                               ; preds = %16, %11, %1
  %18 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 72
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.2, i32 noundef 72) #4
  br label %58

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr %struct.vc4_hdmi_register, ptr %26, i32 72, i32 1
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %49 [
    i32 2, label %29
    i32 1, label %31
    i32 4, label %33
    i32 3, label %35
    i32 5, label %37
    i32 6, label %39
    i32 7, label %41
    i32 8, label %43
  ]

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %45

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %45

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %45

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %45

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %45

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %45

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %45

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %45

45:                                               ; preds = %43, %41, %39, %37, %35, %33, %31, %29
  %46 = phi ptr [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %24
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.3, i32 noundef 72) #4
  br label %58

52:                                               ; preds = %45
  %53 = getelementptr %struct.vc4_hdmi_register, ptr %26, i32 72, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %47, i32 %54
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %57 = and i32 %56, -17
  br label %58

58:                                               ; preds = %52, %49, %21
  %59 = phi i32 [ 0, %21 ], [ %57, %52 ], [ 0, %49 ]
  %60 = load ptr, ptr %4, align 4
  %61 = load ptr, ptr %6, align 8
  %62 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3, i32 11, i32 18
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3, i32 11, i32 15
  %67 = load i16, ptr %66, align 8
  %68 = and i16 %67, 7
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %71, !prof !8

70:                                               ; preds = %65
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %71

71:                                               ; preds = %70, %65, %58
  %72 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %60, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = icmp ugt i32 %73, 72
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %6, align 8
  %77 = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.2, i32 noundef 72) #4
  br label %107

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %60, i32 0, i32 4
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr %struct.vc4_hdmi_register, ptr %80, i32 72, i32 1
  %82 = load i32, ptr %81, align 4
  switch i32 %82, label %107 [
    i32 2, label %83
    i32 1, label %85
    i32 4, label %87
    i32 3, label %89
    i32 5, label %91
    i32 6, label %93
    i32 7, label %95
    i32 8, label %97
  ]

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %99

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %99

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %99

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %99

91:                                               ; preds = %78
  %92 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %99

93:                                               ; preds = %78
  %94 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %99

95:                                               ; preds = %78
  %96 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %99

97:                                               ; preds = %78
  %98 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %99

99:                                               ; preds = %97, %95, %93, %91, %89, %87, %85, %83
  %100 = phi ptr [ %98, %97 ], [ %96, %95 ], [ %94, %93 ], [ %92, %91 ], [ %90, %89 ], [ %88, %87 ], [ %86, %85 ], [ %84, %83 ]
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %104 = getelementptr %struct.vc4_hdmi_register, ptr %80, i32 72, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr i8, ptr %101, i32 %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %59) #3, !srcloc !10
  br label %107

107:                                              ; preds = %103, %99, %78, %75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc5_hdmi_phy_rng_disable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 30
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #3
  %4 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 18
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 15
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 7
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #3
  br label %17

17:                                               ; preds = %16, %11, %1
  %18 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 72
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.2, i32 noundef 72) #4
  br label %58

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr %struct.vc4_hdmi_register, ptr %26, i32 72, i32 1
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %49 [
    i32 2, label %29
    i32 1, label %31
    i32 4, label %33
    i32 3, label %35
    i32 5, label %37
    i32 6, label %39
    i32 7, label %41
    i32 8, label %43
  ]

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %45

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %45

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %45

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %45

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %45

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %45

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %45

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %45

45:                                               ; preds = %43, %41, %39, %37, %35, %33, %31, %29
  %46 = phi ptr [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %24
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.3, i32 noundef 72) #4
  br label %58

52:                                               ; preds = %45
  %53 = getelementptr %struct.vc4_hdmi_register, ptr %26, i32 72, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %47, i32 %54
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %57 = or i32 %56, 16
  br label %58

58:                                               ; preds = %52, %49, %21
  %59 = phi i32 [ 16, %21 ], [ %57, %52 ], [ 16, %49 ]
  %60 = load ptr, ptr %4, align 4
  %61 = load ptr, ptr %6, align 8
  %62 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3, i32 11, i32 18
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3, i32 11, i32 15
  %67 = load i16, ptr %66, align 8
  %68 = and i16 %67, 7
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %71, !prof !8

70:                                               ; preds = %65
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #3
  br label %71

71:                                               ; preds = %70, %65, %58
  %72 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %60, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = icmp ugt i32 %73, 72
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %6, align 8
  %77 = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.2, i32 noundef 72) #4
  br label %107

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %60, i32 0, i32 4
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr %struct.vc4_hdmi_register, ptr %80, i32 72, i32 1
  %82 = load i32, ptr %81, align 4
  switch i32 %82, label %107 [
    i32 2, label %83
    i32 1, label %85
    i32 4, label %87
    i32 3, label %89
    i32 5, label %91
    i32 6, label %93
    i32 7, label %95
    i32 8, label %97
  ]

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %99

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %99

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %99

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %99

91:                                               ; preds = %78
  %92 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %99

93:                                               ; preds = %78
  %94 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %99

95:                                               ; preds = %78
  %96 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %99

97:                                               ; preds = %78
  %98 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %99

99:                                               ; preds = %97, %95, %93, %91, %89, %87, %85, %83
  %100 = phi ptr [ %98, %97 ], [ %96, %95 ], [ %94, %93 ], [ %92, %91 ], [ %90, %89 ], [ %88, %87 ], [ %86, %85 ], [ %84, %83 ]
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %104 = getelementptr %struct.vc4_hdmi_register, ptr %80, i32 72, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr i8, ptr %101, i32 %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %59) #3, !srcloc !10
  br label %107

107:                                              ; preds = %103, %99, %78, %75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2156346404}
!10 = !{i64 3801119}
!11 = !{i64 3801537}
!12 = !{i64 2156344893}
!13 = !{i64 1245158, i64 1245185, i64 1245207, i64 1245235}
!14 = !{i64 1245566, i64 1245593, i64 1245626, i64 1245647, i64 1245674, i64 1245700}
!15 = !{!"branch_weights", i32 2000, i32 1}
