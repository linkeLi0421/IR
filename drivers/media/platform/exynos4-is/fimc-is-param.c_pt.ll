; ModuleID = '/llk/IR/drivers/media/platform/exynos4-is/fimc-is-param.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-is-param.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fimc_is = type { ptr, ptr, ptr, %struct.fimc_is_firmware, %struct.fimc_is_memory, %struct.fimc_isp, [2 x %struct.fimc_is_sensor], %struct.fimc_is_setfile, %struct.v4l2_ctrl_handler, %struct.mutex, %struct.spinlock, [21 x ptr], ptr, ptr, i32, %struct.wait_queue_head, i8, i32, i32, %struct.i2h_cmd, %struct.h2i_cmd, %struct.is_fd_result_header, [4 x %struct.chain_config], i32, ptr, i32, ptr, %struct.is_af_info, ptr }
%struct.fimc_is_firmware = type { ptr, i32, ptr, i32, [32 x i8], [8 x i8], [40 x i8], i8 }
%struct.fimc_is_memory = type { i32, ptr, i32 }
%struct.fimc_isp = type { ptr, %struct.v4l2_subdev, [3 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, ptr, %struct.fimc_isp_ctrls, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fimc_is_video }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
%struct.fimc_isp_ctrls = type { %struct.v4l2_ctrl_handler, ptr, %struct.anon.100, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.100 = type { ptr, ptr }
%struct.fimc_is_video = type { %struct.exynos_video_entity, i32, %struct.media_pad, %struct.list_head, %struct.list_head, %struct.vb2_queue, i32, i32, i32, i32, i32, [4 x ptr], ptr, %struct.v4l2_pix_format_mplane }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.78, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.78 = type { i8 }
%struct.fimc_is_sensor = type { ptr, i32, i8 }
%struct.fimc_is_setfile = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.i2h_cmd = type { i32, i32, i16, [12 x i32] }
%struct.h2i_cmd = type { i16, i32 }
%struct.is_fd_result_header = type { i32, i32, i32, i32, i32, i32 }
%struct.chain_config = type { %struct.global_param, %struct.sensor_param, %struct.isp_param, %struct.drc_param, %struct.fd_param, [2 x i32] }
%struct.global_param = type { %struct.param_global_shotmode }
%struct.param_global_shotmode = type { i32, i32, [13 x i32], i32 }
%struct.sensor_param = type { %struct.param_control, %struct.param_otf_output, %struct.param_sensor_framerate }
%struct.param_control = type { i32, i32, i32, i32, i32, [10 x i32], i32 }
%struct.param_otf_output = type { i32, i32, i32, i32, i32, i32, [9 x i32], i32 }
%struct.param_sensor_framerate = type { i32, [14 x i32], i32 }
%struct.isp_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_dma_input, %struct.param_isp_aa, %struct.param_isp_flash, %struct.param_isp_awb, %struct.param_isp_imageeffect, %struct.param_isp_iso, %struct.param_isp_adjust, %struct.param_isp_metering, %struct.param_isp_afc, %struct.param_otf_output, %struct.param_dma_output, %struct.param_dma_output }
%struct.param_otf_input = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.param_dma_input = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_isp_aa = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_isp_flash = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_awb = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_imageeffect = type { i32, [14 x i32], i32 }
%struct.param_isp_iso = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_adjust = type { i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.param_isp_metering = type { i32, i32, i32, i32, i32, [10 x i32], i32 }
%struct.param_isp_afc = type { i32, i32, [13 x i32], i32 }
%struct.param_dma_output = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32 }
%struct.drc_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_otf_output }
%struct.fd_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_fd_config }
%struct.param_fd_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32 }
%struct.is_af_info = type { i16, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.is_param_region = type { %struct.global_param, %struct.sensor_param, %struct.buffer_param, %struct.isp_param, %struct.drc_param, %struct.scalerc_param, %struct.odc_param, %struct.dis_param, %struct.tdnr_param, %struct.scalerp_param, %struct.fd_param }
%struct.buffer_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_otf_output }
%struct.scalerc_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_scaler_imageeffect, %struct.param_scaler_input_crop, %struct.param_scaler_output_crop, %struct.param_otf_output, %struct.param_dma_output }
%struct.param_scaler_imageeffect = type { i32, i32, i32, [12 x i32], i32 }
%struct.param_scaler_input_crop = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_scaler_output_crop = type { i32, i32, i32, i32, i32, i32, [9 x i32], i32 }
%struct.odc_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_otf_output }
%struct.dis_param = type { %struct.param_control, %struct.param_otf_output, %struct.param_otf_output }
%struct.tdnr_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_3dnr_1stframe, %struct.param_otf_output, %struct.param_dma_output }
%struct.param_3dnr_1stframe = type { i32, [14 x i32], i32 }
%struct.scalerp_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_scaler_imageeffect, %struct.param_scaler_input_crop, %struct.param_scaler_output_crop, %struct.param_scaler_rotation, %struct.param_scaler_flip, %struct.param_otf_output, %struct.param_dma_output }
%struct.param_scaler_rotation = type { i32, [14 x i32], i32 }
%struct.param_scaler_flip = type { i32, [14 x i32], i32 }

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @__fimc_is_hw_update_param(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %6 = load i32, ptr %5, align 8
  switch i32 %1, label %76 [
    i32 7, label %7
    i32 8, label %10
    i32 9, label %13
    i32 10, label %16
    i32 11, label %19
    i32 12, label %22
    i32 13, label %25
    i32 14, label %28
    i32 15, label %31
    i32 16, label %34
    i32 17, label %37
    i32 18, label %40
    i32 19, label %43
    i32 20, label %46
    i32 21, label %49
    i32 22, label %52
    i32 23, label %55
    i32 24, label %58
    i32 25, label %61
    i32 53, label %64
    i32 54, label %67
    i32 55, label %70
    i32 56, label %73
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 3
  %9 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %8, ptr noundef align 1 dereferenceable(64) %9, i32 64, i1 false) #8
  br label %76

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 3, i32 1
  %12 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %11, ptr noundef align 1 dereferenceable(64) %12, i32 64, i1 false) #8
  br label %76

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 3, i32 2
  %15 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 2, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %14, ptr noundef align 1 dereferenceable(64) %15, i32 64, i1 false) #8
  br label %76

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 3, i32 3
  %18 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 2, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %17, ptr noundef align 1 dereferenceable(64) %18, i32 64, i1 false) #8
  br label %76

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 3, i32 4
  %21 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 2, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %20, ptr noundef align 1 dereferenceable(64) %21, i32 64, i1 false) #8
  br label %76

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 3, i32 5
  %24 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 2, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %23, ptr noundef align 1 dereferenceable(64) %24, i32 64, i1 false) #8
  br label %76

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 3, i32 6
  %27 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 2, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %26, ptr noundef align 1 dereferenceable(64) %27, i32 64, i1 false) #8
  br label %76

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 3, i32 7
  %30 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 2, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %29, ptr noundef align 1 dereferenceable(64) %30, i32 64, i1 false) #8
  br label %76

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 3, i32 8
  %33 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 2, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %32, ptr noundef align 1 dereferenceable(64) %33, i32 64, i1 false) #8
  br label %76

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 3, i32 9
  %36 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 2, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %35, ptr noundef align 1 dereferenceable(64) %36, i32 64, i1 false) #8
  br label %76

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 3, i32 10
  %39 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 2, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %38, ptr noundef align 1 dereferenceable(64) %39, i32 64, i1 false) #8
  br label %76

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 3, i32 11
  %42 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 2, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %41, ptr noundef align 1 dereferenceable(64) %42, i32 64, i1 false) #8
  br label %76

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 3, i32 12
  %45 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 2, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %44, ptr noundef align 1 dereferenceable(64) %45, i32 64, i1 false) #8
  br label %76

46:                                               ; preds = %2
  %47 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 3, i32 13
  %48 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 2, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %47, ptr noundef align 1 dereferenceable(64) %48, i32 64, i1 false) #8
  br label %76

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 3, i32 14
  %51 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 2, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %50, ptr noundef align 1 dereferenceable(64) %51, i32 64, i1 false) #8
  br label %76

52:                                               ; preds = %2
  %53 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 4
  %54 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %53, ptr noundef align 1 dereferenceable(64) %54, i32 64, i1 false) #8
  br label %76

55:                                               ; preds = %2
  %56 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 4, i32 1
  %57 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 3, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %56, ptr noundef align 1 dereferenceable(64) %57, i32 64, i1 false) #8
  br label %76

58:                                               ; preds = %2
  %59 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 4, i32 2
  %60 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 3, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %59, ptr noundef align 1 dereferenceable(64) %60, i32 64, i1 false) #8
  br label %76

61:                                               ; preds = %2
  %62 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 4, i32 3
  %63 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 3, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %62, ptr noundef align 1 dereferenceable(64) %63, i32 64, i1 false) #8
  br label %76

64:                                               ; preds = %2
  %65 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 10
  %66 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %65, ptr noundef align 1 dereferenceable(64) %66, i32 64, i1 false) #8
  br label %76

67:                                               ; preds = %2
  %68 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 10, i32 1
  %69 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 4, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %68, ptr noundef align 1 dereferenceable(64) %69, i32 64, i1 false) #8
  br label %76

70:                                               ; preds = %2
  %71 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 10, i32 2
  %72 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 4, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %71, ptr noundef align 1 dereferenceable(64) %72, i32 64, i1 false) #8
  br label %76

73:                                               ; preds = %2
  %74 = getelementptr inbounds %struct.is_param_region, ptr %4, i32 0, i32 10, i32 3
  %75 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %6, i32 4, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %74, ptr noundef align 1 dereferenceable(64) %75, i32 64, i1 false) #8
  br label %76

76:                                               ; preds = %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %2
  %77 = phi i32 [ -22, %2 ], [ 0, %73 ], [ 0, %70 ], [ 0, %67 ], [ 0, %64 ], [ 0, %61 ], [ 0, %58 ], [ 0, %55 ], [ 0, %52 ], [ 0, %49 ], [ 0, %46 ], [ 0, %43 ], [ 0, %40 ], [ 0, %37 ], [ 0, %34 ], [ 0, %31 ], [ 0, %28 ], [ 0, %25 ], [ 0, %22 ], [ 0, %19 ], [ 0, %16 ], [ 0, %13 ], [ 0, %10 ], [ 0, %7 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__get_pending_param_count(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 10
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @__sw_hweight32(i32 noundef %7) #8
  %9 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 5, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @__sw_hweight32(i32 noundef %10) #8
  %12 = add i32 %11, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__is_hw_update_params(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 5
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %10, ptr noundef align 1 dereferenceable(64) %11, i32 64, i1 false) #8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load volatile i32, ptr %4, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 24
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.is_param_region, ptr %18, i32 0, i32 1, i32 2
  %20 = load i32, ptr %2, align 8
  %21 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %20, i32 1, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %19, ptr noundef align 1 dereferenceable(64) %21, i32 64, i1 false) #8
  br label %22

22:                                               ; preds = %16, %12
  br label %23

23:                                               ; preds = %34, %22
  %24 = phi i32 [ %35, %34 ], [ 0, %22 ]
  %25 = phi i32 [ %36, %34 ], [ 7, %22 ]
  %26 = lshr i32 %25, 5
  %27 = getelementptr i32, ptr %4, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = shl nuw i32 1, %25
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %23
  %33 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %0, i32 noundef %25)
  br label %34

34:                                               ; preds = %32, %23
  %35 = phi i32 [ %33, %32 ], [ %24, %23 ]
  %36 = add nuw nsw i32 %25, 1
  %37 = icmp eq i32 %36, 22
  br i1 %37, label %38, label %23

38:                                               ; preds = %34
  %39 = load volatile i32, ptr %4, align 4
  %40 = and i32 %39, 4194304
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %0, i32 noundef 22)
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi i32 [ %43, %42 ], [ %35, %38 ]
  %46 = load volatile i32, ptr %4, align 4
  %47 = and i32 %46, 8388608
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %0, i32 noundef 23)
  br label %51

51:                                               ; preds = %49, %44
  %52 = phi i32 [ %50, %49 ], [ %45, %44 ]
  %53 = load volatile i32, ptr %4, align 4
  %54 = and i32 %53, 16777216
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %0, i32 noundef 24)
  br label %58

58:                                               ; preds = %56, %51
  %59 = phi i32 [ %57, %56 ], [ %52, %51 ]
  %60 = load volatile i32, ptr %4, align 4
  %61 = and i32 %60, 33554432
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %0, i32 noundef 25)
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi i32 [ %64, %63 ], [ %59, %58 ]
  %67 = getelementptr i32, ptr %4, i32 1
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %68, 2097152
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %0, i32 noundef 53)
  br label %73

73:                                               ; preds = %71, %65
  %74 = phi i32 [ %72, %71 ], [ %66, %65 ]
  %75 = load volatile i32, ptr %67, align 4
  %76 = and i32 %75, 4194304
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %0, i32 noundef 54)
  br label %80

80:                                               ; preds = %78, %73
  %81 = phi i32 [ %79, %78 ], [ %74, %73 ]
  %82 = load volatile i32, ptr %67, align 4
  %83 = and i32 %82, 8388608
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %0, i32 noundef 55)
  br label %87

87:                                               ; preds = %85, %80
  %88 = phi i32 [ %86, %85 ], [ %81, %80 ]
  %89 = load volatile i32, ptr %67, align 4
  %90 = and i32 %89, 16777216
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %0, i32 noundef 56)
  br label %94

94:                                               ; preds = %92, %87
  %95 = phi i32 [ %93, %92 ], [ %88, %87 ]
  ret i32 %95
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @__is_get_frame_size(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 2, i32 1, i32 1
  %6 = load i32, ptr %5, align 1
  store i32 %6, ptr %1, align 4
  %7 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 2, i32 1, i32 2
  %8 = load i32, ptr %7, align 1
  %9 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_frame_size(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 2, i32 1, i32 1
  store i32 %5, ptr %6, align 1
  %7 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 2, i32 1, i32 2
  store i32 %8, ptr %9, align 1
  %10 = load i32, ptr %1, align 4
  %11 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 2, i32 12, i32 1
  store i32 %10, ptr %11, align 1
  %12 = load i32, ptr %7, align 4
  %13 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 2, i32 12, i32 2
  store i32 %12, ptr %13, align 1
  %14 = load i32, ptr %1, align 4
  %15 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 3, i32 1, i32 1
  store i32 %14, ptr %15, align 1
  %16 = load i32, ptr %7, align 4
  %17 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 3, i32 1, i32 2
  store i32 %16, ptr %17, align 1
  %18 = load i32, ptr %1, align 4
  %19 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 3, i32 3, i32 1
  store i32 %18, ptr %19, align 1
  %20 = load i32, ptr %7, align 4
  %21 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 3, i32 3, i32 2
  store i32 %20, ptr %21, align 1
  %22 = load i32, ptr %1, align 4
  %23 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 1, i32 1
  store i32 %22, ptr %23, align 1
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 1, i32 2
  store i32 %24, ptr %25, align 1
  %26 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 5
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %2
  %31 = load i32, ptr %3, align 8
  %32 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %31, i32 5
  tail call void @_set_bit(i32 noundef 8, ptr noundef %32) #8
  %33 = load i32, ptr %3, align 8
  %34 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %33, i32 5
  tail call void @_set_bit(i32 noundef 19, ptr noundef %34) #8
  %35 = load i32, ptr %3, align 8
  %36 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %35, i32 5
  tail call void @_set_bit(i32 noundef 23, ptr noundef %36) #8
  %37 = load i32, ptr %3, align 8
  %38 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %37, i32 5
  tail call void @_set_bit(i32 noundef 25, ptr noundef %38) #8
  %39 = load i32, ptr %3, align 8
  %40 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %39, i32 5
  tail call void @_set_bit(i32 noundef 54, ptr noundef %40) #8
  br label %41

41:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @fimc_is_hw_get_sensor_max_framerate(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  %6 = select i1 %5, i32 30, i32 15
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_sensor(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  %11 = select i1 %10, i32 30, i32 15
  br label %14

12:                                               ; preds = %2
  %13 = udiv i32 1000000, %1
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi i32 [ %11, %6 ], [ %1, %12 ]
  %16 = phi i32 [ 66666, %6 ], [ %13, %12 ]
  %17 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 1, i32 2
  store i32 %15, ptr %17, align 1
  %18 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 2, i32 1, i32 10
  store i32 0, ptr %18, align 1
  %19 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 2, i32 1, i32 11
  store i32 %16, ptr %19, align 1
  %20 = load i32, ptr %3, align 8
  %21 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %20, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %21) #8
  %22 = load i32, ptr %3, align 8
  %23 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %22, i32 5
  tail call void @_set_bit(i32 noundef 8, ptr noundef %23) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_isp_flash(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 5
  store i32 %1, ptr %6, align 1
  %7 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 5, i32 1
  store i32 %2, ptr %7, align 1
  %8 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 5, i32 3
  store i32 0, ptr %8, align 1
  %9 = load i32, ptr %4, align 8
  %10 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %9, i32 5
  tail call void @_set_bit(i32 noundef 12, ptr noundef %10) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_isp_awb(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 6
  store i32 %1, ptr %6, align 1
  %7 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 6, i32 1
  store i32 %2, ptr %7, align 1
  %8 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 6, i32 3
  store i32 0, ptr %8, align 1
  %9 = load i32, ptr %4, align 8
  %10 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %9, i32 5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %10) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_isp_effect(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 2, i32 7
  store i32 %1, ptr %5, align 1
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 2, i32 7, i32 2
  store i32 0, ptr %6, align 1
  %7 = load i32, ptr %3, align 8
  %8 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %7, i32 5
  tail call void @_set_bit(i32 noundef 14, ptr noundef %8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_isp_iso(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 8
  store i32 %1, ptr %6, align 1
  %7 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 8, i32 1
  store i32 %2, ptr %7, align 1
  %8 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 8, i32 3
  store i32 0, ptr %8, align 1
  %9 = load i32, ptr %4, align 8
  %10 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %9, i32 5
  tail call void @_set_bit(i32 noundef 15, ptr noundef %10) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_isp_adjust(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 5
  switch i32 %1, label %21 [
    i32 1, label %7
    i32 2, label %9
    i32 4, label %11
    i32 8, label %13
    i32 16, label %15
    i32 32, label %17
    i32 0, label %19
  ]

7:                                                ; preds = %3
  %8 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 9, i32 1
  store i32 %2, ptr %8, align 1
  br label %21

9:                                                ; preds = %3
  %10 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 9, i32 2
  store i32 %2, ptr %10, align 1
  br label %21

11:                                               ; preds = %3
  %12 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 9, i32 3
  store i32 %2, ptr %12, align 1
  br label %21

13:                                               ; preds = %3
  %14 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 9, i32 4
  store i32 %2, ptr %14, align 1
  br label %21

15:                                               ; preds = %3
  %16 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 9, i32 5
  store i32 %2, ptr %16, align 1
  br label %21

17:                                               ; preds = %3
  %18 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 9, i32 6
  store i32 %2, ptr %18, align 1
  br label %21

19:                                               ; preds = %3
  %20 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 9, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  br label %21

21:                                               ; preds = %19, %17, %15, %13, %11, %9, %7, %3
  %22 = load volatile i32, ptr %6, align 4
  %23 = and i32 %22, 65536
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 9
  br i1 %24, label %26, label %30

26:                                               ; preds = %21
  store i32 %1, ptr %25, align 1
  %27 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 9, i32 8
  store i32 0, ptr %27, align 1
  %28 = load i32, ptr %4, align 8
  %29 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %28, i32 5
  tail call void @_set_bit(i32 noundef 16, ptr noundef %29) #8
  br label %33

30:                                               ; preds = %21
  %31 = load i32, ptr %25, align 1
  %32 = or i32 %31, %1
  store i32 %32, ptr %25, align 1
  br label %33

33:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_isp_metering(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 5
  switch i32 %1, label %26 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
    i32 4, label %15
  ]

7:                                                ; preds = %3
  %8 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 10
  br label %17

9:                                                ; preds = %3
  %10 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 10, i32 1
  br label %17

11:                                               ; preds = %3
  %12 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 10, i32 2
  br label %17

13:                                               ; preds = %3
  %14 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 10, i32 3
  br label %17

15:                                               ; preds = %3
  %16 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 10, i32 4
  br label %17

17:                                               ; preds = %15, %13, %11, %9, %7
  %18 = phi ptr [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ]
  store i32 %2, ptr %18, align 1
  %19 = load volatile i32, ptr %6, align 4
  %20 = and i32 %19, 131072
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 10, i32 6
  store i32 0, ptr %23, align 1
  %24 = load i32, ptr %4, align 8
  %25 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %24, i32 5
  tail call void @_set_bit(i32 noundef 17, ptr noundef %25) #8
  br label %26

26:                                               ; preds = %22, %17, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_isp_afc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 11
  store i32 %1, ptr %6, align 1
  %7 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 11, i32 1
  store i32 %2, ptr %7, align 1
  %8 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %5, i32 2, i32 11, i32 3
  store i32 0, ptr %8, align 1
  %9 = load i32, ptr %4, align 8
  %10 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %9, i32 5
  tail call void @_set_bit(i32 noundef 18, ptr noundef %10) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_drc_control(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 3, i32 0, i32 1
  store i32 %1, ptr %5, align 1
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 5
  tail call void @_set_bit(i32 noundef 22, ptr noundef %6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_fd_control(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 5, i32 1
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4
  store i32 %1, ptr %6, align 1
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 16777216
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 8
  %12 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %11, i32 5
  tail call void @_set_bit(i32 noundef 53, ptr noundef %12) #8
  br label %13

13:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_maxface(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 5, i32 1
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3
  %7 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 1
  store i32 %1, ptr %7, align 1
  %8 = load volatile i32, ptr %5, align 4
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  store i32 1, ptr %6, align 1
  %12 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 11
  store i32 0, ptr %12, align 1
  %13 = load i32, ptr %3, align 8
  %14 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %13, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %14) #8
  br label %18

15:                                               ; preds = %2
  %16 = load i32, ptr %6, align 1
  %17 = or i32 %16, 1
  store i32 %17, ptr %6, align 1
  br label %18

18:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_rollangle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 5, i32 1
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3
  %7 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 2
  store i32 %1, ptr %7, align 1
  %8 = load volatile i32, ptr %5, align 4
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  store i32 2, ptr %6, align 1
  %12 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 11
  store i32 0, ptr %12, align 1
  %13 = load i32, ptr %3, align 8
  %14 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %13, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %14) #8
  br label %18

15:                                               ; preds = %2
  %16 = load i32, ptr %6, align 1
  %17 = or i32 %16, 2
  store i32 %17, ptr %6, align 1
  br label %18

18:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_yawangle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 5, i32 1
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3
  %7 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 3
  store i32 %1, ptr %7, align 1
  %8 = load volatile i32, ptr %5, align 4
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  store i32 4, ptr %6, align 1
  %12 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 11
  store i32 0, ptr %12, align 1
  %13 = load i32, ptr %3, align 8
  %14 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %13, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %14) #8
  br label %18

15:                                               ; preds = %2
  %16 = load i32, ptr %6, align 1
  %17 = or i32 %16, 4
  store i32 %17, ptr %6, align 1
  br label %18

18:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_smilemode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 5, i32 1
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3
  %7 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 4
  store i32 %1, ptr %7, align 1
  %8 = load volatile i32, ptr %5, align 4
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  store i32 8, ptr %6, align 1
  %12 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 11
  store i32 0, ptr %12, align 1
  %13 = load i32, ptr %3, align 8
  %14 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %13, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %14) #8
  br label %18

15:                                               ; preds = %2
  %16 = load i32, ptr %6, align 1
  %17 = or i32 %16, 8
  store i32 %17, ptr %6, align 1
  br label %18

18:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_blinkmode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 5, i32 1
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3
  %7 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 5
  store i32 %1, ptr %7, align 1
  %8 = load volatile i32, ptr %5, align 4
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  store i32 16, ptr %6, align 1
  %12 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 11
  store i32 0, ptr %12, align 1
  %13 = load i32, ptr %3, align 8
  %14 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %13, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %14) #8
  br label %18

15:                                               ; preds = %2
  %16 = load i32, ptr %6, align 1
  %17 = or i32 %16, 16
  store i32 %17, ptr %6, align 1
  br label %18

18:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_eyedetect(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 5, i32 1
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3
  %7 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 6
  store i32 %1, ptr %7, align 1
  %8 = load volatile i32, ptr %5, align 4
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  store i32 32, ptr %6, align 1
  %12 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 11
  store i32 0, ptr %12, align 1
  %13 = load i32, ptr %3, align 8
  %14 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %13, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %14) #8
  br label %18

15:                                               ; preds = %2
  %16 = load i32, ptr %6, align 1
  %17 = or i32 %16, 32
  store i32 %17, ptr %6, align 1
  br label %18

18:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_mouthdetect(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 5, i32 1
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3
  %7 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 7
  store i32 %1, ptr %7, align 1
  %8 = load volatile i32, ptr %5, align 4
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  store i32 64, ptr %6, align 1
  %12 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 11
  store i32 0, ptr %12, align 1
  %13 = load i32, ptr %3, align 8
  %14 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %13, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %14) #8
  br label %18

15:                                               ; preds = %2
  %16 = load i32, ptr %6, align 1
  %17 = or i32 %16, 64
  store i32 %17, ptr %6, align 1
  br label %18

18:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_orientation(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 5, i32 1
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3
  %7 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 8
  store i32 %1, ptr %7, align 1
  %8 = load volatile i32, ptr %5, align 4
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  store i32 128, ptr %6, align 1
  %12 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 11
  store i32 0, ptr %12, align 1
  %13 = load i32, ptr %3, align 8
  %14 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %13, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %14) #8
  br label %18

15:                                               ; preds = %2
  %16 = load i32, ptr %6, align 1
  %17 = or i32 %16, 128
  store i32 %17, ptr %6, align 1
  br label %18

18:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_orientation_val(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 5, i32 1
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3
  %7 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 9
  store i32 %1, ptr %7, align 1
  %8 = load volatile i32, ptr %5, align 4
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  store i32 256, ptr %6, align 1
  %12 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %4, i32 4, i32 3, i32 11
  store i32 0, ptr %12, align 1
  %13 = load i32, ptr %3, align 8
  %14 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %13, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %14) #8
  br label %18

15:                                               ; preds = %2
  %16 = load i32, ptr %6, align 1
  %17 = or i32 %16, 256
  store i32 %17, ptr %6, align 1
  br label %18

18:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_is_set_initial_params(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3
  %5 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2
  %6 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 3
  %7 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 5
  store i32 1, ptr %4, align 4
  %8 = load i32, ptr %2, align 8
  %9 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %8, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %9) #8
  store i32 1, ptr %5, align 1
  %10 = getelementptr inbounds %struct.param_control, ptr %5, i32 0, i32 1
  store i32 0, ptr %10, align 1
  %11 = getelementptr inbounds %struct.param_control, ptr %5, i32 0, i32 6
  store i32 0, ptr %11, align 1
  %12 = load i32, ptr %2, align 8
  %13 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %12, i32 5
  tail call void @_set_bit(i32 noundef 7, ptr noundef %13) #8
  %14 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 1
  store i32 1, ptr %14, align 1
  %15 = load volatile i32, ptr %7, align 4
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 1, i32 1
  store i32 1280, ptr %19, align 1
  %20 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 1, i32 2
  store i32 720, ptr %20, align 1
  %21 = load i32, ptr %2, align 8
  %22 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %21, i32 5
  tail call void @_set_bit(i32 noundef 8, ptr noundef %22) #8
  br label %23

23:                                               ; preds = %18, %1
  %24 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 6, i32 0, i32 2
  %25 = load i8, ptr %24, align 8
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %26, i32 0, i32 10
  %28 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 1, i32 3
  store i32 %27, ptr %28, align 1
  %29 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 1, i32 4
  store i32 10, ptr %29, align 1
  %30 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 1, i32 5
  store i32 0, ptr %30, align 1
  %31 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 1, i32 6
  store i32 0, ptr %31, align 1
  %32 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 1, i32 7
  store i32 0, ptr %32, align 1
  %33 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 1, i32 13
  %34 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 2, i32 10
  store i32 0, ptr %34, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(36) %33, i8 0, i64 36, i1 false)
  %35 = load i32, ptr %2, align 8
  %36 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %35, i32 5
  tail call void @_set_bit(i32 noundef 9, ptr noundef %36) #8
  %37 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 3
  %38 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 3, i32 10
  store i32 0, ptr %38, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(32) %37, i8 0, i64 32, i1 false)
  %39 = load i32, ptr %2, align 8
  %40 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %39, i32 5
  tail call void @_set_bit(i32 noundef 10, ptr noundef %40) #8
  %41 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 4
  store i32 0, ptr %41, align 1
  %42 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 4, i32 1
  store i32 6, ptr %42, align 1
  %43 = load i32, ptr %2, align 8
  %44 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %43, i32 5
  tail call void @_set_bit(i32 noundef 11, ptr noundef %44) #8
  %45 = load volatile i32, ptr %7, align 4
  %46 = and i32 %45, 4096
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %23
  %49 = load i32, ptr %2, align 8
  %50 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %49, i32 2, i32 5
  store i32 0, ptr %50, align 1
  %51 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %49, i32 2, i32 5, i32 1
  store i32 0, ptr %51, align 1
  %52 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %49, i32 2, i32 5, i32 3
  store i32 0, ptr %52, align 1
  %53 = load i32, ptr %2, align 8
  %54 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %53, i32 5
  tail call void @_set_bit(i32 noundef 12, ptr noundef %54) #8
  br label %55

55:                                               ; preds = %48, %23
  %56 = load volatile i32, ptr %7, align 4
  %57 = and i32 %56, 8192
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, ptr %2, align 8
  %61 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %60, i32 2, i32 6
  store i32 0, ptr %61, align 1
  %62 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %60, i32 2, i32 6, i32 1
  store i32 0, ptr %62, align 1
  %63 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %60, i32 2, i32 6, i32 3
  store i32 0, ptr %63, align 1
  %64 = load i32, ptr %2, align 8
  %65 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %64, i32 5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %65) #8
  br label %66

66:                                               ; preds = %59, %55
  %67 = load volatile i32, ptr %7, align 4
  %68 = and i32 %67, 16384
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, ptr %2, align 8
  %72 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %71, i32 2, i32 7
  store i32 0, ptr %72, align 1
  %73 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %71, i32 2, i32 7, i32 2
  store i32 0, ptr %73, align 1
  %74 = load i32, ptr %2, align 8
  %75 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %74, i32 5
  tail call void @_set_bit(i32 noundef 14, ptr noundef %75) #8
  br label %76

76:                                               ; preds = %70, %66
  %77 = load volatile i32, ptr %7, align 4
  %78 = and i32 %77, 32768
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i32, ptr %2, align 8
  %82 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %81, i32 2, i32 8
  store i32 0, ptr %82, align 1
  %83 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %81, i32 2, i32 8, i32 1
  store i32 0, ptr %83, align 1
  %84 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %81, i32 2, i32 8, i32 3
  store i32 0, ptr %84, align 1
  %85 = load i32, ptr %2, align 8
  %86 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %85, i32 5
  tail call void @_set_bit(i32 noundef 15, ptr noundef %86) #8
  br label %87

87:                                               ; preds = %80, %76
  %88 = load volatile i32, ptr %7, align 4
  %89 = and i32 %88, 65536
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %181

91:                                               ; preds = %87
  %92 = load i32, ptr %2, align 8
  %93 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %92, i32 5
  %94 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %92, i32 2, i32 9, i32 1
  store i32 0, ptr %94, align 1
  %95 = load volatile i32, ptr %93, align 4
  %96 = and i32 %95, 65536
  %97 = icmp eq i32 %96, 0
  %98 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %92, i32 2, i32 9
  br i1 %97, label %99, label %103

99:                                               ; preds = %91
  store i32 1, ptr %98, align 1
  %100 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %92, i32 2, i32 9, i32 8
  store i32 0, ptr %100, align 1
  %101 = load i32, ptr %2, align 8
  %102 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %101, i32 5
  tail call void @_set_bit(i32 noundef 16, ptr noundef %102) #8
  br label %106

103:                                              ; preds = %91
  %104 = load i32, ptr %98, align 1
  %105 = or i32 %104, 1
  store i32 %105, ptr %98, align 1
  br label %106

106:                                              ; preds = %103, %99
  %107 = load i32, ptr %2, align 8
  %108 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %107, i32 5
  %109 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %107, i32 2, i32 9, i32 2
  store i32 0, ptr %109, align 1
  %110 = load volatile i32, ptr %108, align 4
  %111 = and i32 %110, 65536
  %112 = icmp eq i32 %111, 0
  %113 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %107, i32 2, i32 9
  br i1 %112, label %114, label %118

114:                                              ; preds = %106
  store i32 2, ptr %113, align 1
  %115 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %107, i32 2, i32 9, i32 8
  store i32 0, ptr %115, align 1
  %116 = load i32, ptr %2, align 8
  %117 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %116, i32 5
  tail call void @_set_bit(i32 noundef 16, ptr noundef %117) #8
  br label %121

118:                                              ; preds = %106
  %119 = load i32, ptr %113, align 1
  %120 = or i32 %119, 2
  store i32 %120, ptr %113, align 1
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i32, ptr %2, align 8
  %123 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %122, i32 5
  %124 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %122, i32 2, i32 9, i32 3
  store i32 0, ptr %124, align 1
  %125 = load volatile i32, ptr %123, align 4
  %126 = and i32 %125, 65536
  %127 = icmp eq i32 %126, 0
  %128 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %122, i32 2, i32 9
  br i1 %127, label %129, label %133

129:                                              ; preds = %121
  store i32 4, ptr %128, align 1
  %130 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %122, i32 2, i32 9, i32 8
  store i32 0, ptr %130, align 1
  %131 = load i32, ptr %2, align 8
  %132 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %131, i32 5
  tail call void @_set_bit(i32 noundef 16, ptr noundef %132) #8
  br label %136

133:                                              ; preds = %121
  %134 = load i32, ptr %128, align 1
  %135 = or i32 %134, 4
  store i32 %135, ptr %128, align 1
  br label %136

136:                                              ; preds = %133, %129
  %137 = load i32, ptr %2, align 8
  %138 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %137, i32 5
  %139 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %137, i32 2, i32 9, i32 4
  store i32 0, ptr %139, align 1
  %140 = load volatile i32, ptr %138, align 4
  %141 = and i32 %140, 65536
  %142 = icmp eq i32 %141, 0
  %143 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %137, i32 2, i32 9
  br i1 %142, label %144, label %148

144:                                              ; preds = %136
  store i32 8, ptr %143, align 1
  %145 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %137, i32 2, i32 9, i32 8
  store i32 0, ptr %145, align 1
  %146 = load i32, ptr %2, align 8
  %147 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %146, i32 5
  tail call void @_set_bit(i32 noundef 16, ptr noundef %147) #8
  br label %151

148:                                              ; preds = %136
  %149 = load i32, ptr %143, align 1
  %150 = or i32 %149, 8
  store i32 %150, ptr %143, align 1
  br label %151

151:                                              ; preds = %148, %144
  %152 = load i32, ptr %2, align 8
  %153 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %152, i32 5
  %154 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %152, i32 2, i32 9, i32 5
  store i32 0, ptr %154, align 1
  %155 = load volatile i32, ptr %153, align 4
  %156 = and i32 %155, 65536
  %157 = icmp eq i32 %156, 0
  %158 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %152, i32 2, i32 9
  br i1 %157, label %159, label %163

159:                                              ; preds = %151
  store i32 16, ptr %158, align 1
  %160 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %152, i32 2, i32 9, i32 8
  store i32 0, ptr %160, align 1
  %161 = load i32, ptr %2, align 8
  %162 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %161, i32 5
  tail call void @_set_bit(i32 noundef 16, ptr noundef %162) #8
  br label %166

163:                                              ; preds = %151
  %164 = load i32, ptr %158, align 1
  %165 = or i32 %164, 16
  store i32 %165, ptr %158, align 1
  br label %166

166:                                              ; preds = %163, %159
  %167 = load i32, ptr %2, align 8
  %168 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %167, i32 5
  %169 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %167, i32 2, i32 9, i32 6
  store i32 0, ptr %169, align 1
  %170 = load volatile i32, ptr %168, align 4
  %171 = and i32 %170, 65536
  %172 = icmp eq i32 %171, 0
  %173 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %167, i32 2, i32 9
  br i1 %172, label %174, label %178

174:                                              ; preds = %166
  store i32 32, ptr %173, align 1
  %175 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %167, i32 2, i32 9, i32 8
  store i32 0, ptr %175, align 1
  %176 = load i32, ptr %2, align 8
  %177 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %176, i32 5
  tail call void @_set_bit(i32 noundef 16, ptr noundef %177) #8
  br label %181

178:                                              ; preds = %166
  %179 = load i32, ptr %173, align 1
  %180 = or i32 %179, 32
  store i32 %180, ptr %173, align 1
  br label %181

181:                                              ; preds = %178, %174, %87
  %182 = load volatile i32, ptr %7, align 4
  %183 = and i32 %182, 131072
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %238

185:                                              ; preds = %181
  %186 = load i32, ptr %2, align 8
  %187 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %186, i32 5
  %188 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %186, i32 2, i32 10
  store i32 3, ptr %188, align 1
  %189 = load volatile i32, ptr %187, align 4
  %190 = and i32 %189, 131072
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %186, i32 2, i32 10, i32 6
  store i32 0, ptr %193, align 1
  %194 = load i32, ptr %2, align 8
  %195 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %194, i32 5
  tail call void @_set_bit(i32 noundef 17, ptr noundef %195) #8
  br label %196

196:                                              ; preds = %192, %185
  %197 = load i32, ptr %2, align 8
  %198 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %197, i32 5
  %199 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %197, i32 2, i32 10, i32 1
  store i32 0, ptr %199, align 1
  %200 = load volatile i32, ptr %198, align 4
  %201 = and i32 %200, 131072
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %196
  %204 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %197, i32 2, i32 10, i32 6
  store i32 0, ptr %204, align 1
  tail call void @_set_bit(i32 noundef 17, ptr noundef %198) #8
  %205 = load i32, ptr %2, align 8
  br label %206

206:                                              ; preds = %203, %196
  %207 = phi i32 [ %197, %196 ], [ %205, %203 ]
  %208 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %207, i32 5
  %209 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %207, i32 2, i32 10, i32 2
  store i32 0, ptr %209, align 1
  %210 = load volatile i32, ptr %208, align 4
  %211 = and i32 %210, 131072
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %206
  %214 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %207, i32 2, i32 10, i32 6
  store i32 0, ptr %214, align 1
  %215 = load i32, ptr %2, align 8
  %216 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %215, i32 5
  tail call void @_set_bit(i32 noundef 17, ptr noundef %216) #8
  br label %217

217:                                              ; preds = %213, %206
  %218 = load i32, ptr %2, align 8
  %219 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %218, i32 5
  %220 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %218, i32 2, i32 10, i32 3
  store i32 0, ptr %220, align 1
  %221 = load volatile i32, ptr %219, align 4
  %222 = and i32 %221, 131072
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %217
  %225 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %218, i32 2, i32 10, i32 6
  store i32 0, ptr %225, align 1
  tail call void @_set_bit(i32 noundef 17, ptr noundef %219) #8
  %226 = load i32, ptr %2, align 8
  br label %227

227:                                              ; preds = %224, %217
  %228 = phi i32 [ %218, %217 ], [ %226, %224 ]
  %229 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %228, i32 5
  %230 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %228, i32 2, i32 10, i32 4
  store i32 0, ptr %230, align 1
  %231 = load volatile i32, ptr %229, align 4
  %232 = and i32 %231, 131072
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %227
  %235 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %228, i32 2, i32 10, i32 6
  store i32 0, ptr %235, align 1
  %236 = load i32, ptr %2, align 8
  %237 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %236, i32 5
  tail call void @_set_bit(i32 noundef 17, ptr noundef %237) #8
  br label %238

238:                                              ; preds = %234, %227, %181
  %239 = load volatile i32, ptr %7, align 4
  %240 = and i32 %239, 262144
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %238
  %243 = load i32, ptr %2, align 8
  %244 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %243, i32 2, i32 11
  store i32 1, ptr %244, align 1
  %245 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %243, i32 2, i32 11, i32 1
  store i32 0, ptr %245, align 1
  %246 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %243, i32 2, i32 11, i32 3
  store i32 0, ptr %246, align 1
  %247 = load i32, ptr %2, align 8
  %248 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %247, i32 5
  tail call void @_set_bit(i32 noundef 18, ptr noundef %248) #8
  br label %249

249:                                              ; preds = %242, %238
  %250 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 12
  store i32 1, ptr %250, align 1
  %251 = load volatile i32, ptr %7, align 4
  %252 = and i32 %251, 524288
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %249
  %255 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 12, i32 1
  store i32 1280, ptr %255, align 1
  %256 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 12, i32 2
  store i32 720, ptr %256, align 1
  %257 = load i32, ptr %2, align 8
  %258 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %257, i32 5
  tail call void @_set_bit(i32 noundef 19, ptr noundef %258) #8
  br label %259

259:                                              ; preds = %254, %249
  %260 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 12, i32 3
  store i32 1, ptr %260, align 1
  %261 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 12, i32 4
  store i32 12, ptr %261, align 1
  %262 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 12, i32 5
  store i32 0, ptr %262, align 1
  %263 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 12, i32 7
  store i32 0, ptr %263, align 1
  %264 = load volatile i32, ptr %7, align 4
  %265 = and i32 %264, 1048576
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %259
  %268 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 13
  %269 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 13, i32 12
  store i32 0, ptr %269, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(44) %268, i8 0, i64 44, i1 false)
  %270 = load i32, ptr %2, align 8
  %271 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %270, i32 5
  tail call void @_set_bit(i32 noundef 20, ptr noundef %271) #8
  br label %272

272:                                              ; preds = %267, %259
  %273 = load volatile i32, ptr %7, align 4
  %274 = and i32 %273, 2097152
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %272
  %277 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 14
  %278 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 2, i32 14, i32 12
  store i32 0, ptr %278, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(44) %277, i8 0, i64 44, i1 false)
  %279 = load i32, ptr %2, align 8
  %280 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %279, i32 5
  tail call void @_set_bit(i32 noundef 21, ptr noundef %280) #8
  br label %281

281:                                              ; preds = %276, %272
  %282 = load volatile i32, ptr %7, align 4
  %283 = and i32 %282, 8
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %300

285:                                              ; preds = %281
  %286 = load i32, ptr %2, align 8
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %300

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 6
  %290 = load ptr, ptr %289, align 8
  %291 = load i32, ptr %290, align 4
  %292 = icmp eq i32 %291, 2
  %293 = select i1 %292, i32 30, i32 15
  %294 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 0, i32 1, i32 2
  store i32 %293, ptr %294, align 1
  %295 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 0, i32 2, i32 1, i32 10
  store i32 0, ptr %295, align 1
  %296 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 0, i32 2, i32 1, i32 11
  store i32 66666, ptr %296, align 1
  %297 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %297) #8
  %298 = load i32, ptr %2, align 8
  %299 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %298, i32 5
  tail call void @_set_bit(i32 noundef 8, ptr noundef %299) #8
  br label %300

300:                                              ; preds = %288, %285, %281
  store i32 1, ptr %6, align 1
  %301 = load i32, ptr %2, align 8
  %302 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %301, i32 3, i32 0, i32 1
  store i32 1, ptr %302, align 1
  %303 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %301, i32 5
  tail call void @_set_bit(i32 noundef 22, ptr noundef %303) #8
  %304 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 3, i32 1
  store i32 1, ptr %304, align 1
  %305 = load volatile i32, ptr %7, align 4
  %306 = and i32 %305, 8388608
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %300
  %309 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 3, i32 1, i32 1
  store i32 1280, ptr %309, align 1
  %310 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 3, i32 1, i32 2
  store i32 720, ptr %310, align 1
  %311 = load i32, ptr %2, align 8
  %312 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %311, i32 5
  tail call void @_set_bit(i32 noundef 23, ptr noundef %312) #8
  br label %313

313:                                              ; preds = %308, %300
  %314 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 3, i32 1, i32 3
  store i32 1, ptr %314, align 1
  %315 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 3, i32 1, i32 4
  store i32 12, ptr %315, align 1
  %316 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 3, i32 1, i32 5
  store i32 0, ptr %316, align 1
  %317 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 3, i32 1, i32 13
  %318 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 3, i32 2, i32 10
  store i32 0, ptr %318, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(36) %317, i8 0, i64 36, i1 false)
  %319 = load i32, ptr %2, align 8
  %320 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %319, i32 5
  tail call void @_set_bit(i32 noundef 24, ptr noundef %320) #8
  %321 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 3, i32 3
  store i32 1, ptr %321, align 1
  %322 = load volatile i32, ptr %7, align 4
  %323 = and i32 %322, 33554432
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %313
  %326 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 3, i32 3, i32 1
  store i32 1280, ptr %326, align 1
  %327 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 3, i32 3, i32 2
  store i32 720, ptr %327, align 1
  %328 = load i32, ptr %2, align 8
  %329 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %328, i32 5
  tail call void @_set_bit(i32 noundef 25, ptr noundef %329) #8
  br label %330

330:                                              ; preds = %325, %313
  %331 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 3, i32 3, i32 3
  store i32 1, ptr %331, align 1
  %332 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 3, i32 3, i32 4
  store i32 8, ptr %332, align 1
  %333 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 3, i32 3, i32 5
  store i32 0, ptr %333, align 1
  %334 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 3, i32 3, i32 7
  store i32 0, ptr %334, align 1
  %335 = load i32, ptr %2, align 8
  %336 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %335, i32 5, i32 1
  %337 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %335, i32 4
  store i32 0, ptr %337, align 1
  %338 = load volatile i32, ptr %336, align 4
  %339 = and i32 %338, 16777216
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %330
  %342 = load i32, ptr %2, align 8
  %343 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %342, i32 5
  tail call void @_set_bit(i32 noundef 53, ptr noundef %343) #8
  br label %344

344:                                              ; preds = %341, %330
  %345 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 4, i32 0, i32 1
  store i32 0, ptr %345, align 1
  %346 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 4, i32 1
  store i32 1, ptr %346, align 1
  %347 = getelementptr i32, ptr %7, i32 1
  %348 = load volatile i32, ptr %347, align 4
  %349 = and i32 %348, 4194304
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %344
  %352 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 4, i32 1, i32 1
  store i32 1280, ptr %352, align 1
  %353 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 4, i32 1, i32 2
  store i32 720, ptr %353, align 1
  %354 = load i32, ptr %2, align 8
  %355 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %354, i32 5
  tail call void @_set_bit(i32 noundef 54, ptr noundef %355) #8
  br label %356

356:                                              ; preds = %351, %344
  %357 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 4, i32 1, i32 3
  store i32 1, ptr %357, align 1
  %358 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 4, i32 1, i32 4
  store i32 8, ptr %358, align 1
  %359 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 4, i32 1, i32 5
  store i32 0, ptr %359, align 1
  %360 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 4, i32 1, i32 13
  %361 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %3, i32 4, i32 2, i32 10
  store i32 0, ptr %361, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(36) %360, i8 0, i64 36, i1 false)
  %362 = load i32, ptr %2, align 8
  %363 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %362, i32 5
  tail call void @_set_bit(i32 noundef 55, ptr noundef %363) #8
  %364 = load i32, ptr %2, align 8
  %365 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %364, i32 5, i32 1
  %366 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %364, i32 4, i32 3
  %367 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %364, i32 4, i32 3, i32 1
  store i32 5, ptr %367, align 1
  %368 = load volatile i32, ptr %365, align 4
  %369 = and i32 %368, 16777216
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %375

371:                                              ; preds = %356
  store i32 1, ptr %366, align 1
  %372 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %364, i32 4, i32 3, i32 11
  store i32 0, ptr %372, align 1
  %373 = load i32, ptr %2, align 8
  %374 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %373, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %374) #8
  br label %378

375:                                              ; preds = %356
  %376 = load i32, ptr %366, align 1
  %377 = or i32 %376, 1
  store i32 %377, ptr %366, align 1
  br label %378

378:                                              ; preds = %375, %371
  %379 = load i32, ptr %2, align 8
  %380 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %379, i32 5, i32 1
  %381 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %379, i32 4, i32 3
  %382 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %379, i32 4, i32 3, i32 2
  store i32 4, ptr %382, align 1
  %383 = load volatile i32, ptr %380, align 4
  %384 = and i32 %383, 16777216
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %378
  store i32 2, ptr %381, align 1
  %387 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %379, i32 4, i32 3, i32 11
  store i32 0, ptr %387, align 1
  %388 = load i32, ptr %2, align 8
  %389 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %388, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %389) #8
  br label %393

390:                                              ; preds = %378
  %391 = load i32, ptr %381, align 1
  %392 = or i32 %391, 2
  store i32 %392, ptr %381, align 1
  br label %393

393:                                              ; preds = %390, %386
  %394 = load i32, ptr %2, align 8
  %395 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %394, i32 5, i32 1
  %396 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %394, i32 4, i32 3
  %397 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %394, i32 4, i32 3, i32 3
  store i32 3, ptr %397, align 1
  %398 = load volatile i32, ptr %395, align 4
  %399 = and i32 %398, 16777216
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %393
  store i32 4, ptr %396, align 1
  %402 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %394, i32 4, i32 3, i32 11
  store i32 0, ptr %402, align 1
  %403 = load i32, ptr %2, align 8
  %404 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %403, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %404) #8
  br label %408

405:                                              ; preds = %393
  %406 = load i32, ptr %396, align 1
  %407 = or i32 %406, 4
  store i32 %407, ptr %396, align 1
  br label %408

408:                                              ; preds = %405, %401
  %409 = load i32, ptr %2, align 8
  %410 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %409, i32 5, i32 1
  %411 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %409, i32 4, i32 3
  %412 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %409, i32 4, i32 3, i32 4
  store i32 0, ptr %412, align 1
  %413 = load volatile i32, ptr %410, align 4
  %414 = and i32 %413, 16777216
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %408
  store i32 8, ptr %411, align 1
  %417 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %409, i32 4, i32 3, i32 11
  store i32 0, ptr %417, align 1
  %418 = load i32, ptr %2, align 8
  %419 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %418, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %419) #8
  br label %423

420:                                              ; preds = %408
  %421 = load i32, ptr %411, align 1
  %422 = or i32 %421, 8
  store i32 %422, ptr %411, align 1
  br label %423

423:                                              ; preds = %420, %416
  %424 = load i32, ptr %2, align 8
  %425 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %424, i32 5, i32 1
  %426 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %424, i32 4, i32 3
  %427 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %424, i32 4, i32 3, i32 5
  store i32 0, ptr %427, align 1
  %428 = load volatile i32, ptr %425, align 4
  %429 = and i32 %428, 16777216
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %435

431:                                              ; preds = %423
  store i32 16, ptr %426, align 1
  %432 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %424, i32 4, i32 3, i32 11
  store i32 0, ptr %432, align 1
  %433 = load i32, ptr %2, align 8
  %434 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %433, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %434) #8
  br label %438

435:                                              ; preds = %423
  %436 = load i32, ptr %426, align 1
  %437 = or i32 %436, 16
  store i32 %437, ptr %426, align 1
  br label %438

438:                                              ; preds = %435, %431
  %439 = load i32, ptr %2, align 8
  %440 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %439, i32 5, i32 1
  %441 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %439, i32 4, i32 3
  %442 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %439, i32 4, i32 3, i32 6
  store i32 1, ptr %442, align 1
  %443 = load volatile i32, ptr %440, align 4
  %444 = and i32 %443, 16777216
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %450

446:                                              ; preds = %438
  store i32 32, ptr %441, align 1
  %447 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %439, i32 4, i32 3, i32 11
  store i32 0, ptr %447, align 1
  %448 = load i32, ptr %2, align 8
  %449 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %448, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %449) #8
  br label %453

450:                                              ; preds = %438
  %451 = load i32, ptr %441, align 1
  %452 = or i32 %451, 32
  store i32 %452, ptr %441, align 1
  br label %453

453:                                              ; preds = %450, %446
  %454 = load i32, ptr %2, align 8
  %455 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %454, i32 5, i32 1
  %456 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %454, i32 4, i32 3
  %457 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %454, i32 4, i32 3, i32 7
  store i32 0, ptr %457, align 1
  %458 = load volatile i32, ptr %455, align 4
  %459 = and i32 %458, 16777216
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %453
  store i32 64, ptr %456, align 1
  %462 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %454, i32 4, i32 3, i32 11
  store i32 0, ptr %462, align 1
  %463 = load i32, ptr %2, align 8
  %464 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %463, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %464) #8
  br label %468

465:                                              ; preds = %453
  %466 = load i32, ptr %456, align 1
  %467 = or i32 %466, 64
  store i32 %467, ptr %456, align 1
  br label %468

468:                                              ; preds = %465, %461
  %469 = load i32, ptr %2, align 8
  %470 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %469, i32 5, i32 1
  %471 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %469, i32 4, i32 3
  %472 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %469, i32 4, i32 3, i32 8
  store i32 0, ptr %472, align 1
  %473 = load volatile i32, ptr %470, align 4
  %474 = and i32 %473, 16777216
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %480

476:                                              ; preds = %468
  store i32 128, ptr %471, align 1
  %477 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %469, i32 4, i32 3, i32 11
  store i32 0, ptr %477, align 1
  %478 = load i32, ptr %2, align 8
  %479 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %478, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %479) #8
  br label %483

480:                                              ; preds = %468
  %481 = load i32, ptr %471, align 1
  %482 = or i32 %481, 128
  store i32 %482, ptr %471, align 1
  br label %483

483:                                              ; preds = %480, %476
  %484 = load i32, ptr %2, align 8
  %485 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %484, i32 5, i32 1
  %486 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %484, i32 4, i32 3
  %487 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %484, i32 4, i32 3, i32 9
  store i32 0, ptr %487, align 1
  %488 = load volatile i32, ptr %485, align 4
  %489 = and i32 %488, 16777216
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %495

491:                                              ; preds = %483
  store i32 256, ptr %486, align 1
  %492 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %484, i32 4, i32 3, i32 11
  store i32 0, ptr %492, align 1
  %493 = load i32, ptr %2, align 8
  %494 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 22, i32 %493, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %494) #8
  br label %498

495:                                              ; preds = %483
  %496 = load i32, ptr %486, align 1
  %497 = or i32 %496, 256
  store i32 %497, ptr %486, align 1
  br label %498

498:                                              ; preds = %495, %491
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }

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
