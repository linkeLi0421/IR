; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dp/dp_audio.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_audio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.msm_dp = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i32, ptr, i32, i32, ptr }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.dp_catalog = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dp_audio_private = type { ptr, ptr, ptr, ptr, i8, i32, %struct.dp_audio }
%struct.dp_audio = type { i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@.str = private unnamed_addr constant [17 x i8] c"hdmi-audio-codec\00", align 1
@codec_data = internal global %struct.hdmi_codec_pdata { ptr @dp_audio_codec_ops, i8 1, i32 8, ptr null }, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid input\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid dp_audio data\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Header Byte 1: value = 0x%x, parity_byte = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Header Byte 2: value = 0x%x, parity_byte = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Header Byte 3: value = 0x%x, parity_byte = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Unknown link rate\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"setting the default safe_to_exit_level = %u\0A\00", align 1
@dp_audio_codec_ops = internal constant %struct.hdmi_codec_ops { ptr null, ptr @dp_audio_hw_params, ptr null, ptr @dp_audio_shutdown, ptr null, ptr @dp_audio_get_eld, ptr null, ptr @dp_audio_hook_plugged_cb, i8 0 }, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"failed to get audio data\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"\013[drm-dp] %s: invalid input\0A\00", align 1
@__func__.dp_audio_hook_plugged_cb = private unnamed_addr constant [25 x i8] c"dp_audio_hook_plugged_cb\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_audio_hw_params(ptr noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.msm_dp, ptr %6, i32 0, i32 8
  %8 = load i8, ptr %7, align 2, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %199, label %10

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %0, i32 -16
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %6, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.msm_dp, ptr %6, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %17, i32 -24
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %25, label %28

22:                                               ; preds = %15, %10
  %23 = phi ptr [ @.str.1, %10 ], [ @.str.2, %15 ]
  %24 = phi ptr [ inttoptr (i32 -19 to ptr), %10 ], [ inttoptr (i32 -22 to ptr), %15 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %23) #7
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi ptr [ %20, %19 ], [ %24, %22 ]
  %27 = ptrtoint ptr %26 to i32
  br label %199

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %17, i32 -4
  store i32 %30, ptr %31, align 4
  %32 = getelementptr i8, ptr %17, i32 -16
  %33 = load ptr, ptr %32, align 4
  tail call void @dp_catalog_audio_config_sdp(ptr noundef %33) #7
  %34 = load ptr, ptr %32, align 4
  %35 = getelementptr inbounds %struct.dp_catalog, ptr %34, i32 0, i32 5
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dp_catalog, ptr %34, i32 0, i32 6
  store i32 0, ptr %36, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %34) #7
  %37 = getelementptr inbounds %struct.dp_catalog, ptr %34, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %38, -838729728
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %39, i32 noundef 206) #7
  store i32 0, ptr %35, align 4
  store i32 0, ptr %36, align 4
  store i32 %39, ptr %37, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %34) #7
  store i32 0, ptr %35, align 4
  store i32 1, ptr %36, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %34) #7
  %40 = load i32, ptr %37, align 4
  %41 = and i32 %40, 65280
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 2, i32 8
  br label %44

44:                                               ; preds = %44, %28
  %45 = phi i32 [ 0, %28 ], [ %79, %44 ]
  %46 = phi i32 [ 0, %28 ], [ %71, %44 ]
  %47 = phi i32 [ 0, %28 ], [ %80, %44 ]
  %48 = shl nuw nsw i32 %45, 2
  %49 = lshr i32 %40, %48
  %50 = and i32 %49, 15
  %51 = xor i32 %50, %46
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = lshr i8 %52, 1
  %55 = and i8 %54, 1
  %56 = lshr i8 %52, 2
  %57 = and i8 %56, 1
  %58 = lshr i8 %52, 3
  %59 = and i8 %58, 1
  %60 = xor i8 %59, %53
  %61 = xor i8 %60, %55
  %62 = xor i8 %57, %55
  %63 = xor i8 %57, %59
  %64 = shl nuw nsw i8 %61, 1
  %65 = or i8 %64, %60
  %66 = shl nuw nsw i8 %62, 2
  %67 = or i8 %65, %66
  %68 = shl nuw nsw i8 %63, 3
  %69 = or i8 %67, %68
  %70 = zext i8 %69 to i32
  %71 = xor i32 %47, %70
  %72 = shl nuw nsw i8 %60, 1
  %73 = or i8 %72, %59
  %74 = shl i8 %52, 1
  %75 = and i8 %74, 4
  %76 = or i8 %73, %75
  %77 = and i8 %74, 8
  %78 = or i8 %76, %77
  %79 = add nuw nsw i32 %45, 1
  %80 = zext i8 %78 to i32
  %81 = icmp eq i32 %79, %43
  br i1 %81, label %82, label %44

82:                                               ; preds = %44
  %83 = shl nuw nsw i32 %80, 4
  %84 = and i32 %83, 240
  %85 = or i32 %71, %84
  %86 = shl nuw nsw i32 %85, 8
  %87 = or i32 %86, %40
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %87, i32 noundef %85) #7
  store i32 0, ptr %35, align 4
  store i32 1, ptr %36, align 4
  store i32 %87, ptr %37, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %34) #7
  store i32 0, ptr %35, align 4
  store i32 2, ptr %36, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %34) #7
  %88 = load i32, ptr %37, align 4
  %89 = load i32, ptr %31, align 4
  %90 = add i32 %89, -1
  %91 = and i32 %90, 65280
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 2, i32 8
  br label %94

94:                                               ; preds = %94, %82
  %95 = phi i32 [ 0, %82 ], [ %129, %94 ]
  %96 = phi i32 [ 0, %82 ], [ %121, %94 ]
  %97 = phi i32 [ 0, %82 ], [ %130, %94 ]
  %98 = shl nuw nsw i32 %95, 2
  %99 = lshr i32 %90, %98
  %100 = and i32 %99, 15
  %101 = xor i32 %100, %96
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = lshr i8 %102, 1
  %105 = and i8 %104, 1
  %106 = lshr i8 %102, 2
  %107 = and i8 %106, 1
  %108 = lshr i8 %102, 3
  %109 = and i8 %108, 1
  %110 = xor i8 %109, %103
  %111 = xor i8 %110, %105
  %112 = xor i8 %107, %105
  %113 = xor i8 %107, %109
  %114 = shl nuw nsw i8 %111, 1
  %115 = or i8 %114, %110
  %116 = shl nuw nsw i8 %112, 2
  %117 = or i8 %115, %116
  %118 = shl nuw nsw i8 %113, 3
  %119 = or i8 %117, %118
  %120 = zext i8 %119 to i32
  %121 = xor i32 %97, %120
  %122 = shl nuw nsw i8 %110, 1
  %123 = or i8 %122, %109
  %124 = shl i8 %102, 1
  %125 = and i8 %124, 4
  %126 = or i8 %123, %125
  %127 = and i8 %124, 8
  %128 = or i8 %126, %127
  %129 = add nuw nsw i32 %95, 1
  %130 = zext i8 %128 to i32
  %131 = icmp eq i32 %129, %93
  br i1 %131, label %132, label %94

132:                                              ; preds = %94
  %133 = shl nuw nsw i32 %130, 4
  %134 = shl i32 %90, 16
  %135 = and i32 %133, 240
  %136 = or i32 %121, %135
  %137 = shl nuw i32 %136, 24
  %138 = or i32 %134, %88
  %139 = or i32 %138, %137
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef %139, i32 noundef %136) #7
  store i32 0, ptr %35, align 4
  store i32 2, ptr %36, align 4
  store i32 %139, ptr %37, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %34) #7
  %140 = load ptr, ptr %32, align 4
  %141 = getelementptr inbounds %struct.dp_catalog, ptr %140, i32 0, i32 5
  store i32 1, ptr %141, align 4
  %142 = getelementptr inbounds %struct.dp_catalog, ptr %140, i32 0, i32 6
  store i32 0, ptr %142, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %140) #7
  %143 = getelementptr inbounds %struct.dp_catalog, ptr %140, i32 0, i32 7
  %144 = load i32, ptr %143, align 4
  %145 = or i32 %144, 1728118784
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %145, i32 noundef 103) #7
  store i32 1, ptr %141, align 4
  store i32 0, ptr %142, align 4
  store i32 %145, ptr %143, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %140) #7
  store i32 1, ptr %141, align 4
  store i32 1, ptr %142, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %140) #7
  %146 = load i32, ptr %143, align 4
  %147 = or i32 %146, 13591
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %147, i32 noundef 53) #7
  store i32 1, ptr %141, align 4
  store i32 1, ptr %142, align 4
  store i32 %147, ptr %143, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %140) #7
  store i32 1, ptr %141, align 4
  store i32 2, ptr %142, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %140) #7
  %148 = load i32, ptr %143, align 4
  %149 = or i32 %148, 860094464
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef %149, i32 noundef 51) #7
  store i32 1, ptr %141, align 4
  store i32 2, ptr %142, align 4
  store i32 %149, ptr %143, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %140) #7
  %150 = load ptr, ptr %32, align 4
  %151 = getelementptr inbounds %struct.dp_catalog, ptr %150, i32 0, i32 5
  store i32 2, ptr %151, align 4
  %152 = getelementptr inbounds %struct.dp_catalog, ptr %150, i32 0, i32 6
  store i32 0, ptr %152, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %150) #7
  %153 = getelementptr inbounds %struct.dp_catalog, ptr %150, i32 0, i32 7
  %154 = load i32, ptr %153, align 4
  %155 = or i32 %154, -2071724032
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %155, i32 noundef 132) #7
  store i32 2, ptr %151, align 4
  store i32 0, ptr %152, align 4
  store i32 %155, ptr %153, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %150) #7
  store i32 2, ptr %151, align 4
  store i32 1, ptr %152, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %150) #7
  %156 = load i32, ptr %153, align 4
  %157 = or i32 %156, 55067
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %157, i32 noundef 215) #7
  store i32 2, ptr %151, align 4
  store i32 1, ptr %152, align 4
  store i32 %157, ptr %153, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %150) #7
  store i32 2, ptr %151, align 4
  store i32 2, ptr %152, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %150) #7
  %158 = load i32, ptr %153, align 4
  %159 = or i32 %158, 860094464
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef 68, i32 noundef 51) #7
  store i32 2, ptr %151, align 4
  store i32 2, ptr %152, align 4
  store i32 %159, ptr %153, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %150) #7
  %160 = load ptr, ptr %32, align 4
  %161 = getelementptr inbounds %struct.dp_catalog, ptr %160, i32 0, i32 5
  store i32 3, ptr %161, align 4
  %162 = getelementptr inbounds %struct.dp_catalog, ptr %160, i32 0, i32 6
  store i32 0, ptr %162, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %160) #7
  %163 = getelementptr inbounds %struct.dp_catalog, ptr %160, i32 0, i32 7
  %164 = load i32, ptr %163, align 4
  %165 = or i32 %164, -670760960
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %165, i32 noundef 216) #7
  store i32 3, ptr %161, align 4
  store i32 0, ptr %162, align 4
  store i32 %165, ptr %163, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %160) #7
  store i32 3, ptr %161, align 4
  store i32 1, ptr %162, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %160) #7
  %166 = load i32, ptr %163, align 4
  %167 = or i32 %166, 19215
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %167, i32 noundef 75) #7
  store i32 3, ptr %161, align 4
  store i32 1, ptr %162, align 4
  store i32 %167, ptr %163, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %160) #7
  store i32 3, ptr %161, align 4
  store i32 2, ptr %162, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %160) #7
  %168 = load i32, ptr %163, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef %168, i32 noundef 0) #7
  store i32 3, ptr %161, align 4
  store i32 2, ptr %162, align 4
  store i32 %168, ptr %163, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %160) #7
  %169 = load ptr, ptr %32, align 4
  %170 = getelementptr inbounds %struct.dp_catalog, ptr %169, i32 0, i32 5
  store i32 4, ptr %170, align 4
  %171 = getelementptr inbounds %struct.dp_catalog, ptr %169, i32 0, i32 6
  store i32 0, ptr %171, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %169) #7
  %172 = getelementptr inbounds %struct.dp_catalog, ptr %169, i32 0, i32 7
  %173 = load i32, ptr %172, align 4
  %174 = or i32 %173, 1896218624
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %174, i32 noundef 113) #7
  store i32 4, ptr %170, align 4
  store i32 0, ptr %171, align 4
  store i32 %174, ptr %172, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %169) #7
  store i32 4, ptr %170, align 4
  store i32 1, ptr %171, align 4
  tail call void @dp_catalog_audio_get_header(ptr noundef %169) #7
  %175 = load i32, ptr %172, align 4
  %176 = or i32 %175, 19215
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %176, i32 noundef 75) #7
  store i32 4, ptr %170, align 4
  store i32 1, ptr %171, align 4
  store i32 %176, ptr %172, align 4
  tail call void @dp_catalog_audio_set_header(ptr noundef %169) #7
  %177 = load ptr, ptr %32, align 4
  %178 = getelementptr i8, ptr %17, i32 4
  %179 = load i32, ptr %178, align 4
  switch i32 %179, label %183 [
    i32 6, label %184
    i32 10, label %180
    i32 20, label %181
    i32 30, label %182
  ]

180:                                              ; preds = %132
  br label %184

181:                                              ; preds = %132
  br label %184

182:                                              ; preds = %132
  br label %184

183:                                              ; preds = %132
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.6) #7
  br label %184

184:                                              ; preds = %183, %182, %181, %180, %132
  %185 = phi i32 [ 0, %183 ], [ 3, %182 ], [ 2, %181 ], [ 1, %180 ], [ 0, %132 ]
  %186 = getelementptr inbounds %struct.dp_catalog, ptr %177, i32 0, i32 7
  store i32 %185, ptr %186, align 4
  tail call void @dp_catalog_audio_config_acr(ptr noundef %177) #7
  %187 = load ptr, ptr %32, align 4
  %188 = load i32, ptr %17, align 4
  switch i32 %188, label %191 [
    i32 1, label %192
    i32 2, label %189
    i32 4, label %190
  ]

189:                                              ; preds = %184
  br label %192

190:                                              ; preds = %184
  br label %192

191:                                              ; preds = %184
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.7, i32 noundef 0) #7
  br label %192

192:                                              ; preds = %191, %190, %189, %184
  %193 = phi i32 [ 14, %191 ], [ 5, %190 ], [ 8, %189 ], [ 14, %184 ]
  %194 = getelementptr inbounds %struct.dp_catalog, ptr %187, i32 0, i32 7
  store i32 %193, ptr %194, align 4
  tail call void @dp_catalog_audio_sfe_level(ptr noundef %187) #7
  %195 = load ptr, ptr %32, align 4
  %196 = getelementptr inbounds %struct.dp_catalog, ptr %195, i32 0, i32 7
  store i32 1, ptr %196, align 4
  tail call void @dp_catalog_audio_enable(ptr noundef %195) #7
  %197 = getelementptr i8, ptr %17, i32 -8
  store i8 1, ptr %197, align 4
  tail call void @dp_display_signal_audio_start(ptr noundef nonnull %6) #7
  %198 = getelementptr inbounds %struct.msm_dp, ptr %6, i32 0, i32 7
  store i8 1, ptr %198, align 1
  br label %199

199:                                              ; preds = %192, %25, %4
  %200 = phi i32 [ %27, %25 ], [ 0, %192 ], [ -22, %4 ]
  ret i32 %200
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_display_signal_audio_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_register_audio_driver(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.platform_device_info, align 8
  %4 = getelementptr i8, ptr %1, i32 -24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #7
  %5 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i32 48, i1 false) #7, !annotation !9
  store ptr %0, ptr %3, align 8
  %6 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 1
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 3
  store ptr @.str, ptr %7, align 4
  %8 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 4
  store i32 -2, ptr %8, align 8
  %9 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 7
  store ptr @codec_data, ptr %9, align 4
  %10 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 8
  store i32 16, ptr %10, align 8
  %11 = call ptr @platform_device_register_full(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  store ptr %11, ptr %4, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %13 = ptrtoint ptr %11 to i32
  %14 = select i1 %12, i32 %13, i32 0
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dp_audio_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 32, i32 noundef 3520) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dp_audio_private, ptr %12, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dp_audio_private, ptr %12, i32 0, i32 3
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dp_audio_private, ptr %12, i32 0, i32 2
  store ptr %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dp_audio_private, ptr %12, i32 0, i32 6
  tail call void @dp_catalog_audio_init(ptr noundef nonnull %2) #7
  br label %19

19:                                               ; preds = %14, %10, %9
  %20 = phi ptr [ %18, %14 ], [ inttoptr (i32 -22 to ptr), %9 ], [ inttoptr (i32 -12 to ptr), %10 ]
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_audio_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_audio_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %0, i32 -24
  %5 = getelementptr i8, ptr %0, i32 -20
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void @devm_kfree(ptr noundef %7, ptr noundef %4) #7
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_audio_config_sdp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_audio_get_header(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_audio_set_header(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_audio_config_acr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_audio_sfe_level(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_audio_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dp_audio_shutdown(ptr noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, null
  %7 = icmp eq ptr %5, null
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.msm_dp, ptr %5, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 -24
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %18, label %19

16:                                               ; preds = %9, %2
  %17 = phi ptr [ @.str.1, %2 ], [ @.str.2, %9 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %17) #7
  br label %18

18:                                               ; preds = %16, %13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #7
  br label %28

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.msm_dp, ptr %5, i32 0, i32 7
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %11, i32 -16
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dp_catalog, ptr %25, i32 0, i32 7
  store i32 0, ptr %26, align 4
  tail call void @dp_catalog_audio_enable(ptr noundef %25) #7
  %27 = getelementptr i8, ptr %11, i32 -8
  store i8 0, ptr %27, align 4
  tail call void @dp_display_signal_audio_complete(ptr noundef nonnull %5) #7
  br label %28

28:                                               ; preds = %23, %19, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_audio_get_eld(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %18

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 64
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.msm_dp, ptr %10, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_connector, ptr %15, i32 0, i32 42
  %17 = tail call i32 @llvm.umin.i32(i32 %3, i32 128)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 8 %16, i32 %17, i1 false)
  br label %18

18:                                               ; preds = %13, %12, %7
  %19 = phi i32 [ 0, %13 ], [ -19, %12 ], [ -19, %7 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_audio_hook_plugged_cb(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dp_audio_hook_plugged_cb) #8
  br label %17

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 64
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dp_audio_hook_plugged_cb) #8
  br label %17

15:                                               ; preds = %9
  %16 = tail call i32 @dp_display_set_plugged_cb(ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3) #7
  br label %17

17:                                               ; preds = %15, %13, %7
  %18 = phi i32 [ %16, %15 ], [ -19, %13 ], [ -19, %7 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_display_signal_audio_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_display_set_plugged_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
