; ModuleID = '/llk/IR/drivers/media/platform/exynos4-is/fimc-isp.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-isp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.fimc_fmt = type { i32, i32, i32, i16, i16, i8, [3 x i8], i16, i16 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fimc_is = type { ptr, ptr, ptr, %struct.fimc_is_firmware, %struct.fimc_is_memory, %struct.fimc_isp, [2 x %struct.fimc_is_sensor], %struct.fimc_is_setfile, %struct.v4l2_ctrl_handler, %struct.mutex, %struct.spinlock, [21 x ptr], ptr, ptr, i32, %struct.wait_queue_head, i8, i32, i32, %struct.i2h_cmd, %struct.h2i_cmd, %struct.is_fd_result_header, [4 x %struct.chain_config], i32, ptr, i32, ptr, %struct.is_af_info, ptr }
%struct.fimc_is_firmware = type { ptr, i32, ptr, i32, [32 x i8], [8 x i8], [40 x i8], i8 }
%struct.fimc_is_memory = type { i32, ptr, i32 }
%struct.fimc_isp = type { ptr, %struct.v4l2_subdev, [3 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, ptr, %struct.fimc_isp_ctrls, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fimc_is_video }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.74 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.83, i16, i16, i16, [10 x i16] }
%union.anon.83 = type { i16 }
%struct.fimc_isp_ctrls = type { %struct.v4l2_ctrl_handler, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.87 = type { ptr, ptr }
%struct.fimc_is_video = type { %struct.exynos_video_entity, i32, %struct.media_pad, %struct.list_head, %struct.list_head, %struct.vb2_queue, i32, i32, i32, i32, i32, [4 x ptr], ptr, %struct.v4l2_pix_format_mplane }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.71], %struct.media_entity_enum, i32 }
%struct.anon.71 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.88, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.88 = type { i8 }
%struct.fimc_is_sensor = type { ptr, i32, i8 }
%struct.fimc_is_setfile = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
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
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.76, %union.anon.77, i32, ptr, i32, %struct.anon.78, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.76 = type { i64 }
%union.anon.77 = type { ptr }
%struct.anon.78 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__param_str_debug_isp = internal constant [10 x i8] c"debug_isp\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@fimc_isp_debug = dso_local global i32 0, align 4
@__param_debug_isp = internal constant %struct.kernel_param { ptr @__param_str_debug_isp, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @fimc_isp_debug } }, section "__param", align 4
@__UNIQUE_ID_debug_isptype258 = internal constant [23 x i8] c"parmtype=debug_isp:int\00", section ".modinfo", align 1
@fimc_isp_formats = internal constant [3 x %struct.fimc_fmt] [%struct.fimc_fmt { i32 12290, i32 1195528775, i32 64, i16 1, i16 0, i8 0, [3 x i8] c"\08\00\00", i16 0, i16 0 }, %struct.fimc_fmt { i32 12298, i32 808534338, i32 65, i16 1, i16 0, i8 0, [3 x i8] c"\0A\00\00", i16 0, i16 0 }, %struct.fimc_fmt { i32 12305, i32 842088770, i32 66, i16 1, i16 0, i8 0, [3 x i8] c"\0C\00\00", i16 0, i16 0 }], align 4
@fimc_isp_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @fimc_is_s_ctrl }, align 4
@fimc_isp_subdev_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [18 x i8] c"&isp->subdev_lock\00", align 1
@fimc_is_subdev_ops = internal constant %struct.v4l2_subdev_ops { ptr @fimc_is_core_ops, ptr null, ptr null, ptr @fimc_is_subdev_video_ops, ptr null, ptr null, ptr null, ptr @fimc_is_subdev_pad_ops }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"FIMC-IS-ISP\00", align 1
@iso_qmenu = internal constant [5 x i64] [i64 50, i64 100, i64 200, i64 400, i64 800], align 8
@fimc_is_subdev_internal_ops = internal constant %struct.v4l2_subdev_internal_ops { ptr @fimc_isp_subdev_registered, ptr @fimc_isp_subdev_unregistered, ptr @fimc_isp_subdev_open, ptr null, ptr null }, align 4
@fimc_is_subdev_media_ops = internal constant %struct.media_entity_operations { ptr null, ptr @fimc_is_link_setup, ptr null }, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"\013%s: Failed to set control: %s (%d)\0A\00", align 1
@__ctrl_set_image_effect.effects = internal unnamed_addr constant [5 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\01", [2 x i8] c"\02\04", [2 x i8] c"\03\02", [2 x i8] c"\10\03"], align 1
@fimc_is_core_ops = internal constant %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_isp_subdev_s_power, ptr null, ptr null, ptr null }, align 4
@fimc_is_subdev_video_ops = internal constant %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_isp_subdev_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fimc_is_subdev_pad_ops = internal constant %struct.v4l2_subdev_pad_ops { ptr null, ptr @fimc_is_subdev_enum_mbus_code, ptr null, ptr null, ptr @fimc_isp_subdev_get_fmt, ptr @fimc_isp_subdev_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"\013%s: firmware booting failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\013%s: sensor close timeout\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\013%s: sub-IP power off timeout\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\017%s: %s: on: %d\0A\00", align 1
@__func__.fimc_isp_subdev_s_stream = private unnamed_addr constant [25 x i8] c"fimc_isp_subdev_s_stream\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"\017%s: changing mode to %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"\013%s: stream on timeout\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"\013%s: stream off timeout\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"\017%s: %s: pad%d: fmt: 0x%x, %dx%d\0A\00", align 1
@__func__.fimc_isp_subdev_get_fmt = private unnamed_addr constant [24 x i8] c"fimc_isp_subdev_get_fmt\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"include/media/v4l2-subdev.h\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"\017%s: %s: pad%d: code: 0x%x, %dx%d\0A\00", align 1
@__func__.fimc_isp_subdev_set_fmt = private unnamed_addr constant [24 x i8] c"fimc_isp_subdev_set_fmt\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_debug_isptype258, ptr @__param_debug_isp], section "llvm.metadata"
@switch.table.fimc_is_s_ctrl = private unnamed_addr constant [4 x i32] [i32 0, i32 3, i32 1, i32 2], align 4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @fimc_isp_find_format(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 2
  br i1 %4, label %38, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %1, null
  br i1 %6, label %11, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %0, align 4
  %10 = icmp eq i32 %9, 1195528775
  br i1 %10, label %38, label %11

11:                                               ; preds = %8, %5
  br i1 %7, label %15, label %12

12:                                               ; preds = %11
  %13 = load i32, ptr %1, align 4
  %14 = icmp eq i32 %13, 12290
  br i1 %14, label %38, label %15

15:                                               ; preds = %12, %11
  %16 = icmp eq i32 %2, 0
  %17 = select i1 %16, ptr @fimc_isp_formats, ptr null
  br i1 %6, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %0, align 4
  %20 = icmp eq i32 %19, 808534338
  br i1 %20, label %38, label %21

21:                                               ; preds = %18, %15
  br i1 %7, label %25, label %22

22:                                               ; preds = %21
  %23 = load i32, ptr %1, align 4
  %24 = icmp eq i32 %23, 12298
  br i1 %24, label %38, label %25

25:                                               ; preds = %22, %21
  %26 = icmp eq i32 %2, 1
  %27 = select i1 %26, ptr getelementptr inbounds ([3 x %struct.fimc_fmt], ptr @fimc_isp_formats, i32 0, i32 1), ptr %17
  br i1 %6, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %0, align 4
  %30 = icmp eq i32 %29, 842088770
  br i1 %30, label %38, label %31

31:                                               ; preds = %28, %25
  br i1 %7, label %35, label %32

32:                                               ; preds = %31
  %33 = load i32, ptr %1, align 4
  %34 = icmp eq i32 %33, 12305
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %31
  %36 = icmp eq i32 %2, 2
  %37 = select i1 %36, ptr getelementptr inbounds ([3 x %struct.fimc_fmt], ptr @fimc_isp_formats, i32 0, i32 2), ptr %27
  br label %38

38:                                               ; preds = %35, %32, %28, %22, %18, %12, %8, %3
  %39 = phi ptr [ null, %3 ], [ @fimc_isp_formats, %8 ], [ @fimc_isp_formats, %12 ], [ getelementptr inbounds ([3 x %struct.fimc_fmt], ptr @fimc_isp_formats, i32 0, i32 1), %18 ], [ getelementptr inbounds ([3 x %struct.fimc_fmt], ptr @fimc_isp_formats, i32 0, i32 1), %22 ], [ getelementptr inbounds ([3 x %struct.fimc_fmt], ptr @fimc_isp_formats, i32 0, i32 2), %28 ], [ getelementptr inbounds ([3 x %struct.fimc_fmt], ptr @fimc_isp_formats, i32 0, i32 2), %32 ], [ %37, %35 ]
  ret ptr %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_isp_irq_handler(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1573072
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %6 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 19, i32 3
  store i32 %5, ptr %6, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 1573076
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %10 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 19, i32 3, i32 1
  store i32 %9, ptr %10, align 4
  tail call void @fimc_is_fw_clear_irq1(ptr noundef %0, i32 noundef 1) #9
  tail call void @fimc_isp_video_irq_handler(ptr noundef %0) #9
  %11 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %11, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_fw_clear_irq1(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_isp_video_irq_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_isp_subdev_create(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @fimc_isp_subdev_create.__key) #9
  tail call void @v4l2_subdev_init(ptr noundef %3, ptr noundef nonnull @fimc_is_subdev_ops) #9
  %5 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 1, i32 2
  store ptr @__this_module, ptr %5, align 4
  %6 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 1, i32 10
  store i32 16384, ptr %6, align 4
  %7 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 1, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 4
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 1, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %10, ptr noundef nonnull align 1 dereferenceable(12) @.str.1, i32 12, i1 false)
  %11 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 1, i32 0, i32 3
  store i32 16386, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 2
  %13 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 2, i32 0, i32 4
  store i32 1, ptr %13, align 4
  %14 = getelementptr %struct.fimc_isp, ptr %0, i32 0, i32 2, i32 1, i32 4
  store i32 2, ptr %14, align 4
  %15 = getelementptr %struct.fimc_isp, ptr %0, i32 0, i32 2, i32 2, i32 4
  store i32 2, ptr %15, align 4
  %16 = tail call i32 @media_entity_pads_init(ptr noundef %3, i16 noundef zeroext 3, ptr noundef %12) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %1
  %19 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %2, i32 noundef 20, ptr noundef null, ptr noundef null) #9
  %20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %2, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 9963778, i64 noundef -2, i64 noundef 2, i64 noundef 1, i64 noundef 0) #9
  %21 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 6, i32 4
  store ptr %20, ptr %21, align 4
  %22 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %2, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 9963776, i64 noundef -4, i64 noundef 4, i64 noundef 1, i64 noundef 0) #9
  %23 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 6, i32 6
  store ptr %22, ptr %23, align 4
  %24 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %2, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 9963777, i64 noundef -2, i64 noundef 2, i64 noundef 1, i64 noundef 0) #9
  %25 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 6, i32 3
  store ptr %24, ptr %25, align 4
  %26 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %2, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 9963803, i64 noundef -2, i64 noundef 2, i64 noundef 1, i64 noundef 0) #9
  %27 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 6, i32 5
  store ptr %26, ptr %27, align 4
  %28 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %2, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 9963779, i64 noundef -2, i64 noundef 2, i64 noundef 1, i64 noundef 0) #9
  %29 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 6, i32 7
  store ptr %28, ptr %29, align 4
  %30 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %2, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 10094868, i8 noundef zeroext 8, i64 noundef -335, i8 noundef zeroext 1) #9
  %31 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 6, i32 1
  store ptr %30, ptr %31, align 4
  %32 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %2, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 10094850, i64 noundef -4, i64 noundef 4, i64 noundef 1, i64 noundef 0) #9
  %33 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 6, i32 9
  store ptr %32, ptr %33, align 4
  %34 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %2, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 10094873, i8 noundef zeroext 3, i64 noundef -16, i8 noundef zeroext 0) #9
  %35 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 6, i32 11
  store ptr %34, ptr %35, align 4
  %36 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %2, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 3) #9
  %37 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %2, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 10094872, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 1) #9
  %38 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 6, i32 2
  store ptr %37, ptr %38, align 4
  %39 = tail call ptr @v4l2_ctrl_new_int_menu(ptr noundef %2, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 10094871, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef nonnull @iso_qmenu) #9
  %40 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 6, i32 2, i32 1
  store ptr %39, ptr %40, align 4
  %41 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %2, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 10094875, i64 noundef 0, i64 noundef 3, i64 noundef 0, i64 noundef 0) #9
  %42 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 6, i32 10
  store ptr %41, ptr %42, align 4
  %43 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %2, ptr noundef nonnull @fimc_isp_ctrl_ops, i32 noundef 9963807, i8 noundef zeroext 16, i64 noundef -65552, i8 noundef zeroext 0) #9
  %44 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 6, i32 13
  store ptr %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 6, i32 0, i32 9
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %18
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %38, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  %49 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 1, i32 8
  store ptr %2, ptr %49, align 4
  %50 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 1, i32 7
  store ptr @fimc_is_subdev_internal_ops, ptr %50, align 4
  %51 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 1, i32 0, i32 11
  store ptr @fimc_is_subdev_media_ops, ptr %51, align 4
  %52 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 1, i32 11
  store ptr %0, ptr %52, align 4
  %53 = getelementptr i8, ptr %0, i32 -128
  %54 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 4
  store i32 1296, ptr %54, align 8
  %55 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 4, i32 1
  store i32 732, ptr %55, align 4
  %56 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 4, i32 2
  store i32 12298, ptr %56, align 8
  %57 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 3
  store i32 1280, ptr %57, align 8
  %58 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 3, i32 1
  store i32 720, ptr %58, align 4
  %59 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 3, i32 2
  store i32 12298, ptr %59, align 8
  tail call void @__is_set_frame_size(ptr noundef %53, ptr noundef %57) #9
  br label %60

60:                                               ; preds = %48, %18, %1
  %61 = phi i32 [ 0, %48 ], [ %16, %1 ], [ %46, %18 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_isp_subdev_destroy(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 1, i32 11
  store ptr null, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_is_s_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -524
  %5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  switch i32 %6, label %93 [
    i32 9963777, label %7
    i32 9963778, label %10
    i32 9963803, label %13
    i32 10094850, label %16
    i32 9963776, label %19
    i32 9963779, label %22
    i32 10094873, label %25
    i32 10094868, label %32
    i32 10094875, label %40
    i32 10094872, label %54
    i32 9963800, label %69
    i32 9963807, label %76
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  tail call void @__is_set_isp_adjust(ptr noundef %4, i32 noundef 1, i32 noundef %9) #9
  br label %101

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  tail call void @__is_set_isp_adjust(ptr noundef %4, i32 noundef 2, i32 noundef %12) #9
  br label %101

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  tail call void @__is_set_isp_adjust(ptr noundef %4, i32 noundef 4, i32 noundef %15) #9
  br label %101

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %18 = load i32, ptr %17, align 4
  tail call void @__is_set_isp_adjust(ptr noundef %4, i32 noundef 8, i32 noundef %18) #9
  br label %101

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %21 = load i32, ptr %20, align 4
  tail call void @__is_set_isp_adjust(ptr noundef %4, i32 noundef 16, i32 noundef %21) #9
  br label %101

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %24 = load i32, ptr %23, align 4
  tail call void @__is_set_isp_adjust(ptr noundef %4, i32 noundef 32, i32 noundef %24) #9
  br label %101

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %29, label %93

29:                                               ; preds = %25
  %30 = getelementptr inbounds [4 x i32], ptr @switch.table.fimc_is_s_ctrl, i32 0, i32 %27
  %31 = load i32, ptr %30, align 4
  tail call void @__is_set_isp_metering(ptr noundef %4, i32 noundef 0, i32 noundef %31) #9
  br label %101

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %34 = load i32, ptr %33, align 4
  switch i32 %34, label %93 [
    i32 1, label %35
    i32 6, label %36
    i32 8, label %37
    i32 2, label %38
    i32 3, label %39
  ]

35:                                               ; preds = %32
  tail call void @__is_set_isp_awb(ptr noundef %4, i32 noundef 0, i32 noundef 0) #9
  br label %101

36:                                               ; preds = %32
  tail call void @__is_set_isp_awb(ptr noundef %4, i32 noundef 1, i32 noundef 0) #9
  br label %101

37:                                               ; preds = %32
  tail call void @__is_set_isp_awb(ptr noundef %4, i32 noundef 1, i32 noundef 1) #9
  br label %101

38:                                               ; preds = %32
  tail call void @__is_set_isp_awb(ptr noundef %4, i32 noundef 1, i32 noundef 2) #9
  br label %101

39:                                               ; preds = %32
  tail call void @__is_set_isp_awb(ptr noundef %4, i32 noundef 1, i32 noundef 3) #9
  br label %101

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = getelementptr i8, ptr %3, i32 9048
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.is_param_region, ptr %45, i32 0, i32 3, i32 4
  store i32 %43, ptr %46, align 1
  %47 = getelementptr inbounds %struct.is_param_region, ptr %45, i32 0, i32 3, i32 4, i32 1
  store i32 2, ptr %47, align 1
  %48 = getelementptr i8, ptr %3, i32 9044
  %49 = load i32, ptr %48, align 8
  %50 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 22, i32 %49, i32 5
  tail call void @_set_bit(i32 noundef 11, ptr noundef %50) #9
  %51 = getelementptr i8, ptr %3, i32 9072
  store i32 %43, ptr %51, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %52 = tail call i32 @fimc_is_itf_s_param(ptr noundef %4, i1 noundef zeroext false) #9
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %93, label %85

54:                                               ; preds = %1
  %55 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  tail call void @__is_set_isp_iso(ptr noundef %4, i32 noundef 0, i32 noundef 0) #9
  br label %101

59:                                               ; preds = %54
  %60 = getelementptr i8, ptr %3, i32 120
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.v4l2_ctrl, ptr %61, i32 0, i32 22
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %63, 4
  br i1 %64, label %93, label %65

65:                                               ; preds = %59
  %66 = getelementptr [5 x i64], ptr @iso_qmenu, i32 0, i32 %63
  %67 = load i64, ptr %66, align 8
  %68 = trunc i64 %67 to i32
  tail call void @__is_set_isp_iso(ptr noundef %4, i32 noundef 1, i32 noundef %68) #9
  br label %101

69:                                               ; preds = %1
  %70 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %71 = load i32, ptr %70, align 4
  switch i32 %71, label %93 [
    i32 0, label %72
    i32 1, label %73
    i32 2, label %74
    i32 3, label %75
  ]

72:                                               ; preds = %69
  tail call void @__is_set_isp_afc(ptr noundef %4, i32 noundef 0, i32 noundef 0) #9
  br label %101

73:                                               ; preds = %69
  tail call void @__is_set_isp_afc(ptr noundef %4, i32 noundef 2, i32 noundef 50) #9
  br label %101

74:                                               ; preds = %69
  tail call void @__is_set_isp_afc(ptr noundef %4, i32 noundef 2, i32 noundef 60) #9
  br label %101

75:                                               ; preds = %69
  tail call void @__is_set_isp_afc(ptr noundef %4, i32 noundef 1, i32 noundef 0) #9
  br label %101

76:                                               ; preds = %1
  %77 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %78 = load i32, ptr %77, align 4
  switch i32 %78, label %101 [
    i32 0, label %80
    i32 1, label %80
    i32 2, label %80
    i32 3, label %80
    i32 16, label %79
  ]

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %79, %76, %76, %76, %76
  %81 = phi i32 [ %78, %76 ], [ 4, %79 ], [ %78, %76 ], [ %78, %76 ], [ %78, %76 ]
  %82 = getelementptr [5 x [2 x i8]], ptr @__ctrl_set_image_effect.effects, i32 0, i32 %81, i32 1
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  tail call void @__is_set_isp_effect(ptr noundef %4, i32 noundef %84) #9
  br label %101

85:                                               ; preds = %40
  %86 = lshr i32 %42, 1
  %87 = and i32 %86, 1
  store i32 %87, ptr %46, align 1
  store i32 2, ptr %47, align 1
  %88 = load i32, ptr %48, align 8
  %89 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 22, i32 %88, i32 5
  tail call void @_set_bit(i32 noundef 11, ptr noundef %89) #9
  %90 = getelementptr i8, ptr %3, i32 9076
  store i32 %87, ptr %90, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %91 = tail call i32 @fimc_is_itf_s_param(ptr noundef %4, i1 noundef zeroext false) #9
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %85, %69, %59, %40, %32, %25, %1
  %94 = phi i32 [ %91, %85 ], [ -22, %69 ], [ -22, %59 ], [ %52, %40 ], [ -22, %32 ], [ -22, %25 ], [ -22, %1 ]
  %95 = getelementptr i8, ptr %3, i32 -276
  %96 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 9
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %99 = load i32, ptr %98, align 4
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %95, ptr noundef %97, i32 noundef %99) #10
  br label %108

101:                                              ; preds = %80, %76, %75, %74, %73, %72, %65, %58, %39, %38, %37, %36, %35, %29, %22, %19, %16, %13, %10, %7
  %102 = getelementptr i8, ptr %3, i32 2000
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %103, 128
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = tail call i32 @fimc_is_itf_s_param(ptr noundef %4, i1 noundef zeroext true) #9
  br label %108

108:                                              ; preds = %106, %101, %93, %85
  %109 = phi i32 [ %94, %93 ], [ %107, %106 ], [ 0, %101 ], [ 0, %85 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__is_set_isp_adjust(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_itf_s_param(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__is_set_isp_metering(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__is_set_isp_awb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__is_set_isp_iso(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__is_set_isp_afc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__is_set_isp_effect(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_isp_subdev_s_power(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -128
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #9, !srcloc !13
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 0, i32 -1, ptr elementtype(i32) %13) #9, !srcloc !14
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %63, label %17

17:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  br label %63

18:                                               ; preds = %7
  %19 = getelementptr i8, ptr %4, i32 2396
  tail call void @_set_bit(i32 noundef 1, ptr noundef %19) #9
  %20 = tail call i32 @fimc_is_start_firmware(ptr noundef %5) #9
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %23) #10
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %27 = tail call i32 @__pm_runtime_idle(ptr noundef %26, i32 noundef 5) #9
  br label %63

28:                                               ; preds = %18
  tail call void @_set_bit(i32 noundef 12, ptr noundef %19) #9
  %29 = tail call i32 @fimc_is_hw_initialize(ptr noundef %5) #9
  br label %63

30:                                               ; preds = %2
  %31 = getelementptr i8, ptr %4, i32 2396
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  tail call void @fimc_is_hw_close_sensor(ptr noundef %5, i32 noundef 0) #9
  %36 = tail call i32 @fimc_is_wait_event(ptr noundef %5, i32 noundef 4, i32 noundef 0, i32 noundef 3000) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %39) #10
  br label %63

41:                                               ; preds = %35, %30
  %42 = phi i32 [ 0, %30 ], [ %36, %35 ]
  %43 = load volatile i32, ptr %31, align 4
  %44 = and i32 %43, 4096
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  tail call void @fimc_is_hw_subip_power_off(ptr noundef %5) #9
  %47 = tail call i32 @fimc_is_wait_event(ptr noundef %5, i32 noundef 12, i32 noundef 0, i32 noundef 3000) #9
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %50) #10
  br label %63

52:                                               ; preds = %46, %41
  %53 = phi i32 [ %47, %46 ], [ %42, %41 ]
  %54 = tail call i32 @fimc_is_cpu_set_power(ptr noundef %5, i32 noundef 0) #9
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3
  %57 = tail call i32 @__pm_runtime_idle(ptr noundef %56, i32 noundef 4) #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %31) #9
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %31) #9
  store i32 0, ptr %31, align 4
  %58 = getelementptr i8, ptr %4, i32 9440
  %59 = load i32, ptr %58, align 8
  %60 = getelementptr %struct.fimc_is, ptr %5, i32 0, i32 22, i32 %59, i32 5
  store i32 0, ptr %60, align 8
  %61 = load i32, ptr %58, align 8
  %62 = getelementptr %struct.fimc_is, ptr %5, i32 0, i32 22, i32 %61, i32 5, i32 1
  store i32 0, ptr %62, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %31) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  br label %63

63:                                               ; preds = %52, %49, %38, %28, %22, %17, %12
  %64 = phi i32 [ %20, %22 ], [ %47, %49 ], [ %36, %38 ], [ %29, %28 ], [ %53, %52 ], [ %10, %12 ], [ %10, %17 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_start_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_hw_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_close_sensor(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_wait_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_subip_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_cpu_set_power(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_isp_subdev_s_stream(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -128
  %6 = load i32, ptr @fimc_isp_debug, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %9, ptr noundef nonnull @__func__.fimc_isp_subdev_s_stream, i32 noundef %1) #10
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr i8, ptr %4, i32 2396
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %49, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %16
  %19 = tail call i32 @__get_pending_param_count(ptr noundef %5) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @fimc_is_itf_s_param(ptr noundef %5, i1 noundef zeroext true) #9
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %21, %18
  %25 = load i32, ptr @fimc_isp_debug, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %29 = getelementptr i8, ptr %4, i32 9440
  %30 = load i32, ptr %29, align 8
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %28, i32 noundef %30) #10
  br label %32

32:                                               ; preds = %27, %24
  %33 = tail call i32 @fimc_is_itf_mode_change(ptr noundef %5) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %12) #9
  tail call void @fimc_is_hw_stream_on(ptr noundef %5) #9
  %36 = tail call i32 @fimc_is_wait_event(ptr noundef %5, i32 noundef 7, i32 noundef 1, i32 noundef 3000) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %39) #10
  br label %49

41:                                               ; preds = %16
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %12) #9
  tail call void @fimc_is_hw_stream_off(ptr noundef %5) #9
  %42 = tail call i32 @fimc_is_wait_event(ptr noundef %5, i32 noundef 8, i32 noundef 1, i32 noundef 3000) #9
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %45) #10
  br label %49

47:                                               ; preds = %41
  %48 = getelementptr i8, ptr %4, i32 2140
  store i32 0, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %44, %38, %35, %32, %21, %11
  %50 = phi i32 [ %36, %38 ], [ %42, %44 ], [ -16, %11 ], [ %22, %21 ], [ -22, %32 ], [ 0, %35 ], [ 0, %47 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_pending_param_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_itf_mode_change(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_stream_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_stream_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fimc_is_subdev_enum_mbus_code(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #5 {
  %4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 2
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %5, 2
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %5, 1
  %11 = icmp eq i32 %5, 0
  %12 = select i1 %11, ptr @fimc_isp_formats, ptr null
  %13 = select i1 %10, ptr getelementptr inbounds ([3 x %struct.fimc_fmt], ptr @fimc_isp_formats, i32 0, i32 1), ptr %12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %9, %7
  %16 = phi ptr [ %13, %9 ], [ getelementptr inbounds ([3 x %struct.fimc_fmt], ptr @fimc_isp_formats, i32 0, i32 2), %7 ]
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %9, %3
  %20 = phi i32 [ 0, %15 ], [ -22, %9 ], [ -22, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_isp_subdev_get_fmt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %17, label %16, !prof !18

16:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %17

17:                                               ; preds = %16, %9
  %18 = phi i32 [ 0, %16 ], [ %11, %9 ]
  %19 = load ptr, ptr %1, align 4
  %20 = getelementptr %struct.v4l2_subdev_pad_config, ptr %19, i32 %18
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %6, ptr noundef align 4 dereferenceable(48) %20, i32 48, i1 false)
  br label %46

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  store i32 8, ptr %22, align 4
  %23 = getelementptr inbounds %struct.fimc_isp, ptr %5, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %23) #9
  %24 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.fimc_isp, ptr %5, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %6, ptr noundef align 8 dereferenceable(48) %28, i32 48, i1 false)
  br label %34

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.fimc_isp, ptr %5, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %6, ptr noundef align 8 dereferenceable(48) %30, i32 48, i1 false)
  %31 = icmp eq i32 %25, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  store i32 7, ptr %22, align 4
  %33 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  store i32 8214, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %29, %27
  tail call void @mutex_unlock(ptr noundef %23) #9
  %35 = load i32, ptr @fimc_isp_debug, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %39 = load i32, ptr %24, align 4
  %40 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %6, align 4
  %43 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %38, ptr noundef nonnull @__func__.fimc_isp_subdev_get_fmt, i32 noundef %39, i32 noundef %41, i32 noundef %42, i32 noundef %44) #10
  br label %46

46:                                               ; preds = %37, %34, %17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_isp_subdev_set_fmt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = alloca [60 x i8], align 4
  %5 = alloca [60 x i8], align 4
  %6 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -128
  %9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %10 = load i32, ptr @fimc_isp_debug, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %14 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %9, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %13, ptr noundef nonnull @__func__.fimc_isp_subdev_set_fmt, i32 noundef %15, i32 noundef %17, i32 noundef %18, i32 noundef %20) #10
  br label %22

22:                                               ; preds = %12, %3
  %23 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %23) #9
  %24 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  store i32 8, ptr %24, align 4
  %25 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %9, i32 noundef 24, i32 noundef 3984, i32 noundef 0, ptr noundef %29, i32 noundef 20, i32 noundef 4012, i32 noundef 0, i32 noundef 0) #9
  %30 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  store i32 12298, ptr %30, align 4
  br label %61

31:                                               ; preds = %22
  %32 = load i32, ptr %2, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 1, i32 0, i32 5
  %36 = load i16, ptr %35, align 4
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %40, !prof !19

38:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  %39 = load i32, ptr %25, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i32 [ %26, %34 ], [ %39, %38 ]
  %42 = load ptr, ptr %1, align 4
  br label %45

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i32 [ %41, %40 ], [ %26, %43 ]
  %47 = phi ptr [ %42, %40 ], [ %44, %43 ]
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -16
  store i32 %49, ptr %9, align 4
  %50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %47, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, -12
  %53 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  store i32 %52, ptr %53, align 4
  %54 = icmp eq i32 %46, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  store i32 8214, ptr %56, align 4
  store i32 7, ptr %24, align 4
  br label %61

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %47, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  store i32 %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %57, %55, %28
  %62 = load i32, ptr %2, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %137

64:                                               ; preds = %61
  %65 = load i32, ptr %25, align 4
  %66 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %71, label %70, !prof !18

70:                                               ; preds = %64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %71

71:                                               ; preds = %70, %64
  %72 = phi i32 [ 0, %70 ], [ %65, %64 ]
  %73 = load ptr, ptr %1, align 4
  %74 = getelementptr %struct.v4l2_subdev_pad_config, ptr %73, i32 %72
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %74, ptr noundef align 4 dereferenceable(48) %9, i32 48, i1 false)
  %75 = load i32, ptr %25, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %164

77:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %4)
  %78 = load i32, ptr %2, align 4
  %79 = getelementptr inbounds i8, ptr %2, i32 20
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds i8, ptr %2, i32 28
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %4, ptr noundef align 4 dereferenceable(60) %81, i32 60, i1 false)
  %82 = icmp eq i32 %78, 0
  %83 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 4
  %84 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 1, i32 0, i32 5
  br i1 %82, label %85, label %91

85:                                               ; preds = %77
  %86 = load i16, ptr %84, align 4
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %89, !prof !19

88:                                               ; preds = %85
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %89

89:                                               ; preds = %88, %85
  %90 = load ptr, ptr %1, align 4
  br label %91

91:                                               ; preds = %89, %77
  %92 = phi ptr [ %90, %89 ], [ %83, %77 ]
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, -16
  %95 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %92, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, -12
  %98 = load i16, ptr %66, align 4
  %99 = icmp ugt i16 %98, 1
  br i1 %99, label %101, label %100, !prof !18

100:                                              ; preds = %91
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %101

101:                                              ; preds = %100, %91
  %102 = phi i32 [ 0, %100 ], [ 1, %91 ]
  %103 = load ptr, ptr %1, align 4
  %104 = getelementptr %struct.v4l2_subdev_pad_config, ptr %103, i32 %102
  store i32 %94, ptr %104, align 4
  %105 = getelementptr inbounds i8, ptr %104, i32 4
  store i32 %97, ptr %105, align 4
  %106 = getelementptr inbounds i8, ptr %104, i32 8
  store i32 8214, ptr %106, align 4
  %107 = getelementptr inbounds i8, ptr %104, i32 12
  store i32 %80, ptr %107, align 4
  %108 = getelementptr inbounds i8, ptr %104, i32 16
  store i32 7, ptr %108, align 4
  %109 = getelementptr inbounds i8, ptr %104, i32 20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %109, ptr noundef nonnull align 4 dereferenceable(28) %4, i32 28, i1 false)
  br i1 %82, label %110, label %116

110:                                              ; preds = %101
  %111 = load i16, ptr %84, align 4
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %114, !prof !19

113:                                              ; preds = %110
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %114

114:                                              ; preds = %113, %110
  %115 = load ptr, ptr %1, align 4
  br label %116

116:                                              ; preds = %114, %101
  %117 = phi ptr [ %115, %114 ], [ %83, %101 ]
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, -16
  %120 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %117, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, -12
  %123 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %117, i32 0, i32 2
  %124 = load i32, ptr %123, align 4
  %125 = load i16, ptr %66, align 4
  %126 = icmp ugt i16 %125, 2
  br i1 %126, label %128, label %127, !prof !18

127:                                              ; preds = %116
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %128

128:                                              ; preds = %127, %116
  %129 = phi i32 [ 0, %127 ], [ 2, %116 ]
  %130 = load ptr, ptr %1, align 4
  %131 = getelementptr %struct.v4l2_subdev_pad_config, ptr %130, i32 %129
  store i32 %119, ptr %131, align 4
  %132 = getelementptr inbounds i8, ptr %131, i32 4
  store i32 %122, ptr %132, align 4
  %133 = getelementptr inbounds i8, ptr %131, i32 8
  store i32 %124, ptr %133, align 4
  %134 = getelementptr inbounds i8, ptr %131, i32 12
  store i32 %80, ptr %134, align 4
  %135 = getelementptr inbounds i8, ptr %131, i32 16
  store i32 8, ptr %135, align 4
  %136 = getelementptr inbounds i8, ptr %131, i32 20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %136, ptr noundef nonnull align 4 dereferenceable(28) %4, i32 28, i1 false)
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %4)
  br label %164

137:                                              ; preds = %61
  %138 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 12
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %164

141:                                              ; preds = %137
  %142 = load i32, ptr %25, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5)
  %145 = getelementptr inbounds i8, ptr %2, i32 20
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr inbounds i8, ptr %2, i32 28
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %5, ptr noundef align 4 dereferenceable(60) %147, i32 60, i1 false)
  %148 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(48) %148, ptr noundef align 4 dereferenceable(48) %9, i32 48, i1 false)
  %149 = load i32, ptr %148, align 4
  %150 = add i32 %149, -16
  %151 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 4, i32 1
  %152 = load i32, ptr %151, align 4
  %153 = add i32 %152, -12
  %154 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 4, i32 2
  %155 = load i32, ptr %154, align 4
  %156 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 3
  store i32 %150, ptr %156, align 8
  %157 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 3, i32 1
  store i32 %153, ptr %157, align 4
  %158 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 3, i32 2
  store i32 %155, ptr %158, align 8
  %159 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 3, i32 3
  store i32 %146, ptr %159, align 4
  %160 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 3, i32 4
  store i32 8, ptr %160, align 8
  %161 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 3, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %161, ptr noundef nonnull align 4 dereferenceable(28) %5, i32 28, i1 false)
  tail call void @__is_set_frame_size(ptr noundef %8, ptr noundef %156) #9
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5)
  br label %164

162:                                              ; preds = %141
  %163 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(48) %163, ptr noundef align 4 dereferenceable(48) %9, i32 48, i1 false)
  br label %164

164:                                              ; preds = %162, %144, %137, %128, %71
  %165 = phi i32 [ 0, %128 ], [ 0, %71 ], [ 0, %144 ], [ 0, %162 ], [ -16, %137 ]
  tail call void @mutex_unlock(ptr noundef %23) #9
  ret i32 %165
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__is_set_frame_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_isp_subdev_registered(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fimc_isp, ptr %3, i32 0, i32 12, i32 0, i32 1
  store ptr %5, ptr %6, align 8
  %7 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @fimc_isp_video_device_register(ptr noundef %3, ptr noundef %8, i32 noundef 9) #9
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store ptr null, ptr %6, align 8
  br label %12

12:                                               ; preds = %11, %1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimc_isp_subdev_unregistered(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  tail call void @fimc_isp_video_device_unregister(ptr noundef %3, i32 noundef 9) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_isp_subdev_open(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %9, !prof !19

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %9

9:                                                ; preds = %8, %2
  %10 = load ptr, ptr %4, align 4
  store i32 1296, ptr %10, align 4
  %11 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 732, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %10, i32 8
  store i32 12290, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %10, i32 12
  store i32 1, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %10, i32 16
  store i32 8, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %10, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %15, i8 0, i64 28, i1 false)
  %16 = load ptr, ptr %3, align 4
  %17 = load i16, ptr %5, align 4
  %18 = icmp ugt i16 %17, 1
  br i1 %18, label %20, label %19, !prof !18

19:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %20

20:                                               ; preds = %19, %9
  %21 = phi i32 [ 0, %19 ], [ 1, %9 ]
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr %struct.v4l2_subdev_pad_config, ptr %22, i32 %21
  store i32 1280, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 720, ptr %24, align 4
  %25 = getelementptr inbounds i8, ptr %23, i32 8
  store i32 12290, ptr %25, align 4
  %26 = getelementptr inbounds i8, ptr %23, i32 12
  store i32 1, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %23, i32 16
  store i32 8, ptr %27, align 4
  %28 = getelementptr inbounds i8, ptr %23, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %28, i8 0, i64 28, i1 false)
  %29 = load ptr, ptr %3, align 4
  %30 = load i16, ptr %5, align 4
  %31 = icmp ugt i16 %30, 2
  br i1 %31, label %33, label %32, !prof !18

32:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %33

33:                                               ; preds = %32, %20
  %34 = phi i32 [ 0, %32 ], [ 2, %20 ]
  %35 = load ptr, ptr %29, align 4
  %36 = getelementptr %struct.v4l2_subdev_pad_config, ptr %35, i32 %34
  store i32 1280, ptr %36, align 4
  %37 = getelementptr inbounds i8, ptr %36, i32 4
  store i32 720, ptr %37, align 4
  %38 = getelementptr inbounds i8, ptr %36, i32 8
  store i32 12290, ptr %38, align 4
  %39 = getelementptr inbounds i8, ptr %36, i32 12
  store i32 1, ptr %39, align 4
  %40 = getelementptr inbounds i8, ptr %36, i32 16
  store i32 8, ptr %40, align 4
  %41 = getelementptr inbounds i8, ptr %36, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %41, i8 0, i64 28, i1 false)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_isp_video_device_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_isp_video_device_unregister(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @fimc_is_link_setup(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #7 {
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 5845541}
!9 = !{i64 2155249762}
!10 = !{i64 2155263776}
!11 = !{i64 2155263903}
!12 = !{i64 2148155597}
!13 = !{i64 591262, i64 2148092828, i64 2148092854, i64 2148092901, i64 2148092923, i64 2148092951, i64 2148092971}
!14 = !{i64 577831, i64 577856, i64 577878, i64 577894, i64 577906, i64 577926, i64 577950, i64 577966, i64 577978}
!15 = !{i64 2148155723}
!16 = !{i64 2155263516}
!17 = !{i64 2155248330}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!"branch_weights", i32 1, i32 2000}
