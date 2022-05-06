; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-vid-out.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-vid-out.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_audioout = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.84 }
%union.anon.84 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.88, %struct.anon.89, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.87 = type { ptr, ptr }
%struct.anon.88 = type { ptr, ptr }
%struct.anon.89 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.90, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.90 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.91 }
%struct.anon.91 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.82 }
%union.anon.82 = type { [32 x i32] }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.92, i32, i32 }
%union.anon.92 = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.vivid_fmt = type { i32, i32, i8, [3 x i8], i32, i8, i8, [3 x i32], [3 x i32] }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.72, i32 }
%union.anon.72 = type { i32 }
%struct.vivid_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.v4l2_output = type { i32, [32 x i8], i32, i32, i32, i64, i32, [3 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.79, %union.anon.80, i32, ptr, i32, %struct.anon.81, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.79 = type { i64 }
%union.anon.80 = type { ptr }
%struct.anon.81 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_streamparm = type { i32, %union.anon.98 }
%union.anon.98 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@vivid_vid_out_qops = dso_local local_unnamed_addr constant %struct.vb2_ops { ptr @vid_out_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr @vid_out_buf_out_validate, ptr null, ptr @vid_out_buf_prepare, ptr null, ptr null, ptr @vid_out_start_streaming, ptr @vid_out_stop_streaming, ptr @vid_out_buf_queue, ptr @vid_out_buf_request_complete }, align 4
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [39 x i8] c"\017%s: Fourcc format (0x%08x) unknown.\0A\00", align 1
@vivid_min_rect = external dso_local local_unnamed_addr constant %struct.v4l2_rect, align 4
@vivid_max_rect = external dso_local local_unnamed_addr constant %struct.v4l2_rect, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"\017%s: %s device busy\0A\00", align 1
@__func__.vivid_s_fmt_vid_out = private unnamed_addr constant [20 x i8] c"vivid_s_fmt_vid_out\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"\017%s: unsupported output format for output overlay\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"S-Video %u\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"HDMI %u\00", align 1
@vivid_audio_outputs = internal unnamed_addr constant [2 x %struct.v4l2_audioout] [%struct.v4l2_audioout { i32 0, [32 x i8] c"Line-Out 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, [2 x i32] zeroinitializer }, %struct.v4l2_audioout { i32 1, [32 x i8] c"Line-Out 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, [2 x i32] zeroinitializer }], align 4
@vivid_dv_timings_cap = external dso_local constant %struct.v4l2_dv_timings_cap, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"\017%s: %s: count=%d\0A\00", align 1
@__func__.vid_out_queue_setup = private unnamed_addr constant [20 x i8] c"vid_out_queue_setup\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"\017%s: %s: size[%u]=%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"\017%s: %s\0A\00", align 1
@__func__.vid_out_buf_out_validate = private unnamed_addr constant [25 x i8] c"vid_out_buf_out_validate\00", align 1
@__func__.vid_out_buf_prepare = private unnamed_addr constant [20 x i8] c"vid_out_buf_prepare\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"drivers/media/test-drivers/vivid/vivid-vid-out.c\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"\017%s: %s the payload is too small for plane %u (%lu < %u)\0A\00", align 1
@__func__.vid_out_start_streaming = private unnamed_addr constant [24 x i8] c"vid_out_start_streaming\00", align 1
@__func__.vid_out_stop_streaming = private unnamed_addr constant [23 x i8] c"vid_out_stop_streaming\00", align 1
@__func__.vid_out_buf_queue = private unnamed_addr constant [18 x i8] c"vid_out_buf_queue\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@switch.table.vivid_vid_out_s_selection = private unnamed_addr constant [6 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 1], align 4
@switch.table.vivid_vid_out_s_selection.12 = private unnamed_addr constant [6 x i32] [i32 2, i32 2, i32 1, i32 1, i32 1, i32 2], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vid_out_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #0 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 278
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.vivid_fmt, ptr %9, i32 0, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 282, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 208
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, %14
  %18 = getelementptr inbounds %struct.vivid_fmt, ptr %9, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %17, %19
  %21 = getelementptr inbounds %struct.vivid_fmt, ptr %9, i32 0, i32 5
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = icmp ult i8 %11, %22
  br i1 %24, label %25, label %41

25:                                               ; preds = %25, %5
  %26 = phi i32 [ %39, %25 ], [ %12, %5 ]
  %27 = phi i32 [ %38, %25 ], [ %20, %5 ]
  %28 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 208, i32 %26
  %29 = load i32, ptr %28, align 4
  %30 = mul i32 %29, %14
  %31 = getelementptr %struct.vivid_fmt, ptr %9, i32 0, i32 3, i32 %26
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = udiv i32 %30, %33
  %35 = getelementptr %struct.vivid_fmt, ptr %9, i32 0, i32 7, i32 %26
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %34, %27
  %38 = add i32 %37, %36
  %39 = add nuw nsw i32 %26, 1
  %40 = icmp eq i32 %39, %23
  br i1 %40, label %41, label %25

41:                                               ; preds = %25, %5
  %42 = phi i32 [ %20, %5 ], [ %38, %25 ]
  %43 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 280
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 7
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 29
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %127

50:                                               ; preds = %46, %41
  %51 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 153
  %52 = load i8, ptr %51, align 1, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i8 0, ptr %51, align 1
  br label %127

55:                                               ; preds = %50
  %56 = load i32, ptr %2, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = icmp eq i8 %11, 0
  br i1 %59, label %94, label %60

60:                                               ; preds = %58
  store i32 %42, ptr %3, align 4
  %61 = icmp eq i8 %11, 1
  br i1 %61, label %94, label %83

62:                                               ; preds = %55
  %63 = icmp eq i32 %56, %12
  br i1 %63, label %64, label %127

64:                                               ; preds = %62
  %65 = load i32, ptr %3, align 4
  %66 = icmp ult i32 %65, %42
  br i1 %66, label %127, label %67

67:                                               ; preds = %64
  %68 = icmp ugt i8 %11, 1
  br i1 %68, label %72, label %94

69:                                               ; preds = %72
  %70 = add nuw nsw i32 %73, 1
  %71 = icmp eq i32 %70, %12
  br i1 %71, label %94, label %72

72:                                               ; preds = %69, %67
  %73 = phi i32 [ %70, %69 ], [ 1, %67 ]
  %74 = getelementptr i32, ptr %3, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 208, i32 %73
  %77 = load i32, ptr %76, align 4
  %78 = mul i32 %77, %14
  %79 = getelementptr %struct.vivid_fmt, ptr %9, i32 0, i32 7, i32 %73
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %78, %80
  %82 = icmp ult i32 %75, %81
  br i1 %82, label %127, label %69

83:                                               ; preds = %83, %60
  %84 = phi i32 [ %92, %83 ], [ 1, %60 ]
  %85 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 208, i32 %84
  %86 = load i32, ptr %85, align 4
  %87 = mul i32 %86, %14
  %88 = getelementptr %struct.vivid_fmt, ptr %9, i32 0, i32 7, i32 %84
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %87, %89
  %91 = getelementptr i32, ptr %3, i32 %84
  store i32 %90, ptr %91, align 4
  %92 = add nuw nsw i32 %84, 1
  %93 = icmp eq i32 %92, %12
  br i1 %93, label %94, label %83, !llvm.loop !9

94:                                               ; preds = %83, %69, %67, %60, %58
  %95 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 21
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr %1, align 4
  %98 = add i32 %97, %96
  %99 = icmp ult i32 %98, 2
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = sub i32 2, %96
  store i32 %101, ptr %1, align 4
  br label %102

102:                                              ; preds = %100, %94
  store i32 %12, ptr %2, align 4
  %103 = load i32, ptr @vivid_debug, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 1, i32 4
  %107 = load i32, ptr %1, align 4
  %108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %106, ptr noundef nonnull @__func__.vid_out_queue_setup, i32 noundef %107) #12
  br label %109

109:                                              ; preds = %105, %102
  %110 = icmp eq i8 %11, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 1, i32 4
  %113 = load i32, ptr @vivid_debug, align 4
  br label %114

114:                                              ; preds = %123, %111
  %115 = phi i32 [ %113, %111 ], [ %124, %123 ]
  %116 = phi i32 [ 0, %111 ], [ %125, %123 ]
  %117 = icmp eq i32 %115, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = getelementptr i32, ptr %3, i32 %116
  %120 = load i32, ptr %119, align 4
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %112, ptr noundef nonnull @__func__.vid_out_queue_setup, i32 noundef %116, i32 noundef %120) #12
  %122 = load i32, ptr @vivid_debug, align 4
  br label %123

123:                                              ; preds = %118, %114
  %124 = phi i32 [ 0, %114 ], [ %122, %118 ]
  %125 = add nuw nsw i32 %116, 1
  %126 = icmp eq i32 %125, %12
  br i1 %126, label %127, label %114

127:                                              ; preds = %123, %109, %72, %64, %62, %54, %46
  %128 = phi i32 [ -22, %54 ], [ -22, %46 ], [ -22, %62 ], [ -22, %64 ], [ 0, %109 ], [ 0, %123 ], [ -22, %72 ]
  ret i32 %128
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vid_out_buf_out_validate(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %8, ptr noundef nonnull @__func__.vid_out_buf_out_validate) #12
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 280
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 7
  %14 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 2
  br i1 %13, label %16, label %15

15:                                               ; preds = %10
  store i32 %12, ptr %14, align 4
  br label %20

16:                                               ; preds = %10
  %17 = load i32, ptr %14, align 4
  %18 = and i32 %17, -2
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %15
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ 0, %20 ], [ -22, %16 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vid_out_buf_prepare(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 278
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_fmt, ptr %6, i32 0, i32 6
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 282, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 208
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %11
  %15 = getelementptr inbounds %struct.vivid_fmt, ptr %6, i32 0, i32 5
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = icmp ult i8 %8, %16
  br i1 %18, label %19, label %32

19:                                               ; preds = %19, %1
  %20 = phi i32 [ %30, %19 ], [ %9, %1 ]
  %21 = phi i32 [ %29, %19 ], [ %14, %1 ]
  %22 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 208, i32 %20
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, %11
  %25 = getelementptr %struct.vivid_fmt, ptr %6, i32 0, i32 3, i32 %20
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = udiv i32 %24, %27
  %29 = add i32 %28, %21
  %30 = add nuw nsw i32 %20, 1
  %31 = icmp eq i32 %30, %17
  br i1 %31, label %32, label %19

32:                                               ; preds = %19, %1
  %33 = phi i32 [ %14, %1 ], [ %29, %19 ]
  %34 = load i32, ptr @vivid_debug, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %37, ptr noundef nonnull @__func__.vid_out_buf_prepare) #12
  %39 = load ptr, ptr %5, align 8
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi ptr [ %39, %36 ], [ %6, %32 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44, !prof !11

43:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 116, i32 noundef 9, ptr noundef null) #13
  br label %88

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 154
  %46 = load i8, ptr %45, align 2, !range !8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = icmp eq i8 %8, 0
  br i1 %49, label %88, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %52 = load i32, ptr %51, align 8
  br label %54

53:                                               ; preds = %44
  store i8 0, ptr %45, align 2
  br label %88

54:                                               ; preds = %85, %50
  %55 = phi i32 [ 0, %50 ], [ %86, %85 ]
  %56 = phi i32 [ %33, %50 ], [ %66, %85 ]
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 208, i32 %55
  %60 = load i32, ptr %59, align 4
  %61 = mul i32 %60, %11
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i32 [ %61, %58 ], [ %56, %54 ]
  %64 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %55, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %63
  %67 = icmp ugt i32 %52, %55
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %55, i32 3
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = phi i32 [ %70, %68 ], [ 0, %62 ]
  %73 = icmp ult i32 %72, %66
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i32, ptr @vivid_debug, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  br i1 %67, label %79, label %82

79:                                               ; preds = %77
  %80 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %55, i32 3
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %77
  %83 = phi i32 [ %81, %79 ], [ 0, %77 ]
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %78, ptr noundef nonnull @__func__.vid_out_buf_prepare, i32 noundef %55, i32 noundef %83, i32 noundef %66) #12
  br label %88

85:                                               ; preds = %71
  %86 = add nuw nsw i32 %55, 1
  %87 = icmp eq i32 %86, %9
  br i1 %87, label %88, label %54

88:                                               ; preds = %85, %82, %74, %53, %48, %43
  %89 = phi i32 [ -22, %43 ], [ -22, %53 ], [ -22, %82 ], [ -22, %74 ], [ 0, %48 ], [ 0, %85 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vid_out_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 242, i32 28
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = tail call zeroext i1 @vivid_vid_can_loop(ptr noundef %4) #13
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 77
  %12 = zext i1 %10 to i8
  store i8 %12, ptr %11, align 2
  br label %13

13:                                               ; preds = %9, %2
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 304
  store i32 0, ptr %14, align 4
  %15 = load i32, ptr @vivid_debug, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %18, ptr noundef nonnull @__func__.vid_out_start_streaming) #12
  br label %20

20:                                               ; preds = %17, %13
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 155
  %22 = load i8, ptr %21, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i8 0, ptr %21, align 1
  br label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 305
  %27 = tail call i32 @vivid_start_generating_vid_out(ptr noundef %4, ptr noundef %26) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %25, %24
  %30 = phi i32 [ -22, %24 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 287
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %42, label %34

34:                                               ; preds = %34, %29
  %35 = phi ptr [ %37, %34 ], [ %32, %29 ]
  %36 = getelementptr i8, ptr %35, i32 -640
  %37 = load ptr, ptr %35, align 8
  %38 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  store volatile ptr %37, ptr %39, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %38, align 4
  tail call void @vb2_buffer_done(ptr noundef %36, i32 noundef 3) #13
  %41 = icmp eq ptr %37, %31
  br i1 %41, label %42, label %34

42:                                               ; preds = %34, %29, %25
  %43 = phi i32 [ 0, %25 ], [ %30, %29 ], [ %30, %34 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vid_out_stop_streaming(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @vivid_debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %7, ptr noundef nonnull @__func__.vid_out_stop_streaming) #12
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 305
  tail call void @vivid_stop_generating_vid_out(ptr noundef %3, ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 77
  store i8 0, ptr %11, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vid_out_buf_queue(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %8, ptr noundef nonnull @__func__.vid_out_buf_queue) #12
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %11) #13
  %12 = getelementptr inbounds %struct.vivid_buffer, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 287
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 287, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %12, ptr %14, align 4
  store ptr %13, ptr %12, align 4
  %16 = getelementptr inbounds %struct.vivid_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %12, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %17 = load i16, ptr %11, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vid_out_buf_request_complete(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 7, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 21
  tail call void @v4l2_ctrl_request_complete(ptr noundef %6, ptr noundef %7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_update_format_out(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 199
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 57, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 3
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 209
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 280
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 281, i32 2
  store i32 720, ptr %11, align 8
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 200
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 63744
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %16, %7
  %18 = phi i32 [ 576, %16 ], [ 480, %7 ]
  %19 = phi i32 [ 1000, %16 ], [ 1001, %7 ]
  %20 = phi i32 [ 25000, %16 ], [ 30000, %7 ]
  %21 = phi i32 [ 16385, %16 ], [ 4096, %7 ]
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 281, i32 3
  store i32 %18, ptr %22, align 4
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 279
  store i32 %19, ptr %23, align 4
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 279, i32 1
  store i32 %20, ptr %24, align 4
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 207
  store i32 %21, ptr %25, align 8
  %26 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 202
  store i32 1, ptr %26, align 4
  br label %126

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1
  %29 = load i32, ptr %28, align 1
  %30 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 281, i32 2
  store i32 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 1
  %32 = load i32, ptr %31, align 1
  %33 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 281, i32 3
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 6
  %35 = load i32, ptr %34, align 1
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 7
  %37 = load i32, ptr %36, align 1
  %38 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 8
  %39 = load i32, ptr %38, align 1
  %40 = add i32 %35, %29
  %41 = add i32 %40, %37
  %42 = add i32 %41, %39
  %43 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 9
  %44 = load i32, ptr %43, align 1
  %45 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 10
  %46 = load i32, ptr %45, align 1
  %47 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 11
  %48 = load i32, ptr %47, align 1
  %49 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 12
  %50 = load i32, ptr %49, align 1
  %51 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 13
  %52 = load i32, ptr %51, align 1
  %53 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 14
  %54 = load i32, ptr %53, align 1
  %55 = add i32 %44, %32
  %56 = add i32 %55, %46
  %57 = add i32 %56, %48
  %58 = add i32 %57, %50
  %59 = add i32 %58, %52
  %60 = add i32 %59, %54
  %61 = mul i32 %60, %42
  %62 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 15
  %63 = load i32, ptr %62, align 1
  %64 = and i32 %63, 4
  %65 = icmp ne i32 %64, 0
  %66 = icmp eq i32 %46, 8
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %68, label %71

68:                                               ; preds = %27
  %69 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 16
  %70 = load i32, ptr %69, align 1
  br label %79

71:                                               ; preds = %27
  %72 = and i32 %63, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %94, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 16
  %76 = load i32, ptr %75, align 1
  %77 = and i32 %76, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %74, %68
  %80 = phi i32 [ %70, %68 ], [ %76, %74 ]
  %81 = and i32 %80, 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 4
  %85 = load i64, ptr %84, align 1
  %86 = mul i64 %85, 1000
  %87 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9011446405638332408, i64 %86, i32 0) #14, !srcloc !16
  %88 = extractvalue { i64, i32 } %87, 0
  %89 = extractvalue { i64, i32 } %87, 1
  %90 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9011446405638332408, i64 %86, i64 %88, i32 %89) #14, !srcloc !17
  %91 = extractvalue { i64, i32 } %90, 0
  %92 = lshr i64 %91, 9
  %93 = trunc i64 %92 to i32
  br label %98

94:                                               ; preds = %79, %74, %71
  %95 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 4
  %96 = load i64, ptr %95, align 1
  %97 = trunc i64 %96 to i32
  br label %98

98:                                               ; preds = %94, %83
  %99 = phi i32 [ %97, %94 ], [ %93, %83 ]
  %100 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 279
  %101 = udiv i32 %61, 100
  %102 = udiv i32 %99, 100
  store i32 %101, ptr %100, align 4
  %103 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 279, i32 1
  store i32 %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 2
  %105 = load i32, ptr %104, align 1
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 1, i32 7
  %108 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 280
  store i32 %107, ptr %108, align 4
  %109 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 215
  %110 = load i8, ptr %109, align 1, !range !8
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %98
  %113 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 201, i32 1, i32 0, i32 16
  %114 = load i32, ptr %113, align 1
  %115 = and i32 %114, 16
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %112
  %118 = icmp eq i32 %29, 720
  %119 = icmp ult i32 %32, 577
  %120 = select i1 %118, i1 %119, i1 false
  %121 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 202
  br i1 %120, label %122, label %123

122:                                              ; preds = %117
  store i32 1, ptr %121, align 4
  br label %126

123:                                              ; preds = %117
  store i32 3, ptr %121, align 4
  br label %126

124:                                              ; preds = %112, %98
  %125 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 202
  store i32 8, ptr %125, align 4
  br label %126

126:                                              ; preds = %124, %123, %122, %17
  %127 = phi i32 [ %29, %124 ], [ %29, %123 ], [ 720, %122 ], [ 720, %17 ]
  %128 = phi i32 [ %107, %124 ], [ %107, %123 ], [ %107, %122 ], [ %9, %17 ]
  %129 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 206
  store i32 0, ptr %129, align 4
  %130 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 203
  store i32 0, ptr %130, align 8
  %131 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 204
  store i32 128, ptr %131, align 4
  %132 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 205
  store i32 0, ptr %132, align 8
  %133 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 284
  %134 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 281
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %133, ptr noundef align 8 dereferenceable(16) %134, i32 16, i1 false)
  %135 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 285
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %135, ptr noundef align 8 dereferenceable(16) %134, i32 16, i1 false)
  %136 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 283
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %136, ptr noundef align 8 dereferenceable(16) %134, i32 16, i1 false)
  switch i32 %128, label %141 [
    i32 3, label %137
    i32 2, label %137
    i32 7, label %137
  ]

137:                                              ; preds = %126, %126, %126
  %138 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 283, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = lshr i32 %139, 1
  store i32 %140, ptr %138, align 4
  br label %141

141:                                              ; preds = %137, %126
  %142 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 282
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %142, ptr noundef align 8 dereferenceable(16) %136, i32 16, i1 false)
  %143 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 278
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.vivid_fmt, ptr %144, i32 0, i32 5
  %146 = load i8, ptr %145, align 4
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %174, label %148

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 281, i32 2
  %150 = getelementptr %struct.vivid_fmt, ptr %144, i32 0, i32 8, i32 0
  %151 = load i32, ptr %150, align 4
  %152 = mul i32 %151, %127
  %153 = lshr i32 %152, 3
  %154 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 208, i32 0
  store i32 %153, ptr %154, align 4
  %155 = load ptr, ptr %143, align 8
  %156 = getelementptr inbounds %struct.vivid_fmt, ptr %155, i32 0, i32 5
  %157 = load i8, ptr %156, align 4
  %158 = icmp ugt i8 %157, 1
  br i1 %158, label %159, label %174

159:                                              ; preds = %159, %148
  %160 = phi ptr [ %169, %159 ], [ %155, %148 ]
  %161 = phi i32 [ %168, %159 ], [ 1, %148 ]
  %162 = load i32, ptr %149, align 8
  %163 = getelementptr %struct.vivid_fmt, ptr %160, i32 0, i32 8, i32 %161
  %164 = load i32, ptr %163, align 4
  %165 = mul i32 %164, %162
  %166 = lshr i32 %165, 3
  %167 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 208, i32 %161
  store i32 %166, ptr %167, align 4
  %168 = add nuw nsw i32 %161, 1
  %169 = load ptr, ptr %143, align 8
  %170 = getelementptr inbounds %struct.vivid_fmt, ptr %169, i32 0, i32 5
  %171 = load i8, ptr %170, align 4
  %172 = zext i8 %171 to i32
  %173 = icmp ult i32 %168, %172
  br i1 %173, label %159, label %174

174:                                              ; preds = %159, %148, %141
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_g_fmt_vid_out(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 278
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 282, i32 2
  %11 = load i32, ptr %10, align 8
  store i32 %11, ptr %7, align 1
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 282, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %13, ptr %14, align 1
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 280
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 %16, ptr %17, align 1
  %18 = load i32, ptr %9, align 4
  %19 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 202
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 206
  %24 = load i32, ptr %23, align 4
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 10
  store i8 %25, ptr %26, align 1
  %27 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 203
  %28 = load i32, ptr %27, align 8
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 8
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 205
  %32 = load i32, ptr %31, align 8
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 9
  store i8 %33, ptr %34, align 1
  %35 = getelementptr inbounds %struct.vivid_fmt, ptr %9, i32 0, i32 6
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 6
  store i8 %36, ptr %37, align 1
  %38 = icmp eq i8 %36, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %39, %3
  %40 = phi i32 [ %50, %39 ], [ 0, %3 ]
  %41 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 208, i32 %40
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 %40
  %44 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 %40, i32 1
  store i32 %42, ptr %44, align 1
  %45 = load i32, ptr %14, align 1
  %46 = mul i32 %45, %42
  %47 = getelementptr %struct.vivid_fmt, ptr %9, i32 0, i32 7, i32 %40
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %46, %48
  store i32 %49, ptr %43, align 1
  %50 = add nuw nsw i32 %40, 1
  %51 = load i8, ptr %37, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ult i32 %50, %52
  br i1 %53, label %39, label %54

54:                                               ; preds = %39, %3
  %55 = load i8, ptr %35, align 1
  %56 = getelementptr inbounds %struct.vivid_fmt, ptr %9, i32 0, i32 5
  %57 = load i8, ptr %56, align 4
  %58 = icmp ult i8 %55, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %54
  %60 = zext i8 %55 to i32
  %61 = load i32, ptr %14, align 1
  %62 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %63 = load i32, ptr %62, align 1
  br label %64

64:                                               ; preds = %64, %59
  %65 = phi i32 [ %63, %59 ], [ %74, %64 ]
  %66 = phi i32 [ %60, %59 ], [ %75, %64 ]
  %67 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 208, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = mul i32 %61, %68
  %70 = getelementptr %struct.vivid_fmt, ptr %9, i32 0, i32 3, i32 %66
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = udiv i32 %69, %72
  %74 = add i32 %65, %73
  store i32 %74, ptr %62, align 1
  %75 = add nuw nsw i32 %66, 1
  %76 = load i8, ptr %56, align 4
  %77 = zext i8 %76 to i32
  %78 = icmp ult i32 %75, %77
  br i1 %78, label %64, label %79

79:                                               ; preds = %64, %54
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_try_fmt_vid_out(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 201, i32 1
  %8 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %10 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %11 = load i32, ptr %10, align 1
  %12 = tail call ptr @vivid_get_format(ptr noundef %6, i32 noundef %11) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32, ptr @vivid_debug, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 1, i32 4
  %19 = load i32, ptr %10, align 1
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %18, i32 noundef %19) #12
  br label %21

21:                                               ; preds = %17, %14
  store i32 1448695129, ptr %10, align 1
  %22 = tail call ptr @vivid_get_format(ptr noundef %6, i32 noundef 1448695129) #13
  br label %23

23:                                               ; preds = %21, %3
  %24 = phi ptr [ %12, %3 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  %26 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 199
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %27
  %29 = load i8, ptr %28, align 1
  switch i8 %29, label %40 [
    i8 2, label %30
    i8 3, label %35
  ]

30:                                               ; preds = %23
  %31 = load i32, ptr %25, align 1
  %32 = add i32 %31, -5
  %33 = icmp ult i32 %32, 5
  %34 = select i1 %33, i32 %31, i32 4
  br label %40

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 201, i32 1, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 1, i32 7
  br label %40

40:                                               ; preds = %35, %30, %23
  %41 = phi i32 [ %39, %35 ], [ %34, %30 ], [ 1, %23 ]
  store i32 %41, ptr %25, align 1
  %42 = load i32, ptr %26, align 4
  %43 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 2
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 200
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 63744
  %50 = icmp eq i64 %49, 0
  %51 = select i1 %50, i32 576, i32 480
  br label %57

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 281, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 281, i32 3
  %56 = load i32, ptr %55, align 4
  br label %57

57:                                               ; preds = %52, %46
  %58 = phi i32 [ 720, %46 ], [ %54, %52 ]
  %59 = phi i32 [ %51, %46 ], [ %56, %52 ]
  %60 = add i32 %41, -2
  %61 = icmp ult i32 %60, 6
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_vid_out_s_selection.12, i32 0, i32 %60
  %64 = load i32, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = phi i32 [ 1, %57 ], [ %64, %62 ]
  %67 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 328
  %68 = load i8, ptr %67, align 2, !range !8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 326
  %72 = load i8, ptr %71, align 8, !range !8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 327
  %76 = load i8, ptr %75, align 1, !range !8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  store i32 %58, ptr %8, align 1
  %79 = udiv i32 %59, %66
  %80 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %79, ptr %80, align 1
  br label %129

81:                                               ; preds = %74, %70, %65
  %82 = load i32, ptr %8, align 1
  %83 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %84 = load i32, ptr %83, align 1
  %85 = mul i32 %84, %66
  %86 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2), align 4
  %87 = tail call i32 @llvm.umax.i32(i32 %82, i32 %86)
  %88 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3), align 4
  %89 = tail call i32 @llvm.umax.i32(i32 %85, i32 %88)
  %90 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_max_rect, i32 0, i32 2), align 4
  %91 = tail call i32 @llvm.umin.i32(i32 %87, i32 %90)
  %92 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_max_rect, i32 0, i32 3), align 4
  %93 = tail call i32 @llvm.umin.i32(i32 %89, i32 %92)
  br i1 %69, label %103, label %94

94:                                               ; preds = %81
  %95 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 326
  %96 = load i8, ptr %95, align 8, !range !8
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %94
  %99 = shl i32 %58, 2
  %100 = shl i32 %59, 2
  %101 = tail call i32 @llvm.umin.i32(i32 %91, i32 %99)
  %102 = tail call i32 @llvm.umin.i32(i32 %93, i32 %100)
  br label %125

103:                                              ; preds = %81
  %104 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 327
  %105 = load i8, ptr %104, align 1, !range !8
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 326
  %109 = load i8, ptr %108, align 8, !range !8
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 281, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = tail call i32 @llvm.umin.i32(i32 %91, i32 %113)
  %115 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 281, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = tail call i32 @llvm.umin.i32(i32 %93, i32 %116)
  br label %125

118:                                              ; preds = %103
  %119 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 281, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = tail call i32 @llvm.umax.i32(i32 %91, i32 %120)
  %122 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 281, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = tail call i32 @llvm.umax.i32(i32 %93, i32 %123)
  br label %125

125:                                              ; preds = %118, %111, %107, %98, %94
  %126 = phi i32 [ %91, %94 ], [ %101, %98 ], [ %114, %111 ], [ %121, %118 ], [ %91, %107 ]
  %127 = phi i32 [ %93, %94 ], [ %102, %98 ], [ %117, %111 ], [ %124, %118 ], [ %93, %107 ]
  store i32 %126, ptr %8, align 1
  %128 = udiv i32 %127, %66
  store i32 %128, ptr %83, align 1
  br label %129

129:                                              ; preds = %125, %78
  %130 = phi i32 [ %126, %125 ], [ %58, %78 ]
  %131 = getelementptr inbounds %struct.vivid_fmt, ptr %24, i32 0, i32 6
  %132 = load i8, ptr %131, align 1
  %133 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 6
  store i8 %132, ptr %133, align 1
  %134 = load i8, ptr %131, align 1
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  br label %153

138:                                              ; preds = %171, %129
  %139 = phi i8 [ 0, %129 ], [ %183, %171 ]
  %140 = getelementptr inbounds %struct.vivid_fmt, ptr %24, i32 0, i32 5
  %141 = load i8, ptr %140, align 4
  %142 = icmp ult i8 %139, %141
  br i1 %142, label %143, label %208

143:                                              ; preds = %138
  %144 = zext i8 %139 to i32
  %145 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %148 = load i32, ptr %147, align 1
  %149 = mul i32 %148, %146
  %150 = getelementptr inbounds %struct.vivid_fmt, ptr %24, i32 0, i32 8
  %151 = getelementptr inbounds %struct.vivid_fmt, ptr %24, i32 0, i32 3
  %152 = load i32, ptr %9, align 1
  br label %188

153:                                              ; preds = %186, %136
  %154 = phi i32 [ %130, %136 ], [ %187, %186 ]
  %155 = phi i32 [ 0, %136 ], [ %182, %186 ]
  %156 = getelementptr %struct.vivid_fmt, ptr %24, i32 0, i32 8, i32 %155
  %157 = load i32, ptr %156, align 4
  %158 = mul i32 %157, %154
  %159 = lshr i32 %158, 3
  %160 = shl i32 %157, 11
  %161 = and i32 %160, 536868864
  %162 = getelementptr %struct.v4l2_plane_pix_format, ptr %9, i32 %155
  %163 = getelementptr %struct.v4l2_plane_pix_format, ptr %9, i32 %155, i32 1
  %164 = load i32, ptr %163, align 1
  %165 = icmp ugt i32 %164, %161
  %166 = call i32 @llvm.umin.i32(i32 %164, i32 %161)
  %167 = icmp ult i32 %166, %159
  %168 = call i32 @llvm.umax.i32(i32 %166, i32 %159)
  %169 = or i1 %165, %167
  br i1 %169, label %170, label %171

170:                                              ; preds = %153
  store i32 %168, ptr %163, align 1
  br label %171

171:                                              ; preds = %170, %153
  %172 = load i32, ptr %137, align 1
  %173 = mul i32 %172, %168
  %174 = getelementptr %struct.vivid_fmt, ptr %24, i32 0, i32 3, i32 %155
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  %177 = udiv i32 %173, %176
  %178 = getelementptr %struct.vivid_fmt, ptr %24, i32 0, i32 7, i32 %155
  %179 = load i32, ptr %178, align 4
  %180 = add i32 %179, %177
  store i32 %180, ptr %162, align 1
  %181 = getelementptr %struct.v4l2_plane_pix_format, ptr %9, i32 %155, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(12) %181, i8 0, i32 12, i1 false)
  %182 = add nuw nsw i32 %155, 1
  %183 = load i8, ptr %131, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp ult i32 %182, %184
  br i1 %185, label %186, label %138

186:                                              ; preds = %171
  %187 = load i32, ptr %8, align 1
  br label %153

188:                                              ; preds = %188, %143
  %189 = phi i32 [ %152, %143 ], [ %203, %188 ]
  %190 = phi i32 [ %144, %143 ], [ %204, %188 ]
  %191 = getelementptr %struct.vivid_fmt, ptr %24, i32 0, i32 8, i32 %190
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr %struct.vivid_fmt, ptr %24, i32 0, i32 3, i32 %190
  %194 = load i8, ptr %193, align 1
  %195 = zext i8 %194 to i32
  %196 = udiv i32 %192, %195
  %197 = mul i32 %149, %196
  %198 = load i32, ptr %150, align 4
  %199 = load i8, ptr %151, align 1
  %200 = zext i8 %199 to i32
  %201 = udiv i32 %198, %200
  %202 = udiv i32 %197, %201
  %203 = add i32 %189, %202
  store i32 %203, ptr %9, align 1
  %204 = add nuw nsw i32 %190, 1
  %205 = load i8, ptr %140, align 4
  %206 = zext i8 %205 to i32
  %207 = icmp ult i32 %204, %206
  br i1 %207, label %188, label %208

208:                                              ; preds = %188, %138
  %209 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 10
  store i8 0, ptr %209, align 1
  %210 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 8
  store i8 0, ptr %210, align 1
  %211 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 9
  store i8 0, ptr %211, align 1
  %212 = load i32, ptr %26, align 4
  %213 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %212
  %214 = load i8, ptr %213, align 1
  %215 = icmp eq i8 %214, 2
  br i1 %215, label %216, label %218

216:                                              ; preds = %208
  %217 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 1, ptr %217, align 1
  br label %245

218:                                              ; preds = %208
  %219 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 215
  %220 = load i8, ptr %219, align 1, !range !8
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 201, i32 1, i32 0, i32 16
  %224 = load i32, ptr %223, align 1
  %225 = and i32 %224, 16
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %222, %218
  %228 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 8, ptr %228, align 1
  %229 = load i8, ptr %219, align 1, !range !8
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %245, label %231

231:                                              ; preds = %227
  store i8 2, ptr %211, align 1
  br label %245

232:                                              ; preds = %222
  %233 = load i32, ptr %7, align 1
  %234 = icmp eq i32 %233, 720
  br i1 %234, label %235, label %241

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 201, i32 1, i32 0, i32 1
  %237 = load i32, ptr %236, align 1
  %238 = icmp ult i32 %237, 577
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 1, ptr %240, align 1
  br label %245

241:                                              ; preds = %235, %232
  %242 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  %243 = load i32, ptr %242, align 1
  switch i32 %243, label %244 [
    i32 1, label %245
    i32 3, label %245
    i32 9, label %245
    i32 10, label %245
    i32 8, label %245
  ]

244:                                              ; preds = %241
  store i32 3, ptr %242, align 1
  br label %245

245:                                              ; preds = %244, %241, %241, %241, %241, %241, %239, %231, %227, %216
  %246 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 11
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(7) %246, i8 0, i32 7, i1 false)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vivid_get_format(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_s_fmt_vid_out(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %5 = tail call ptr @video_devdata(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 283
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284
  %10 = tail call i32 @vivid_try_fmt_vid_out(ptr noundef %0, ptr undef, ptr noundef %2)
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 286, i32 21
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %50, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 199
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 57, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 2
  br i1 %19, label %44, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %4, align 1
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 282, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %27 = load i32, ptr %26, align 1
  %28 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 282, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %33 = load i32, ptr %32, align 1
  %34 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 278
  %35 = load ptr, ptr %34, align 8
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  %40 = load i32, ptr %39, align 1
  %41 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 280
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %484, label %44

44:                                               ; preds = %38, %31, %25, %20, %14
  %45 = load i32, ptr @vivid_debug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %504, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 1, i32 4
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %48, ptr noundef nonnull @__func__.vivid_s_fmt_vid_out) #12
  br label %504

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %52 = load i32, ptr %51, align 1
  %53 = tail call ptr @vivid_get_format(ptr noundef %7, i32 noundef %52) #13
  %54 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 278
  store ptr %53, ptr %54, align 8
  %55 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  %56 = load i32, ptr %55, align 1
  %57 = add i32 %56, -2
  %58 = icmp ult i32 %57, 6
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_vid_out_s_selection.12, i32 0, i32 %57
  %61 = load i32, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %50
  %63 = phi i32 [ 1, %50 ], [ %61, %59 ]
  %64 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 328
  %65 = load i8, ptr %64, align 2, !range !8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 326
  %69 = load i8, ptr %68, align 8, !range !8
  %70 = icmp eq i8 %69, 0
  %71 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 327
  %72 = load i8, ptr %71, align 1, !range !8
  br i1 %70, label %73, label %260

73:                                               ; preds = %67
  %74 = icmp eq i8 %72, 0
  %75 = load i32, ptr %4, align 1
  %76 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %77 = load i32, ptr %76, align 1
  %78 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 283, i32 2
  store i32 %75, ptr %78, align 4
  %79 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 283, i32 3
  store i32 %77, ptr %79, align 4
  br i1 %74, label %422, label %265

80:                                               ; preds = %62
  %81 = load i32, ptr %4, align 1
  %82 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %83 = load i32, ptr %82, align 1
  %84 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 326
  %85 = load i8, ptr %84, align 8, !range !8
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %124, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 283, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = icmp ugt i32 %89, %81
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 %81, ptr %88, align 4
  br label %92

92:                                               ; preds = %91, %87
  %93 = phi i32 [ %81, %91 ], [ %89, %87 ]
  %94 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 283, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = icmp ugt i32 %95, %83
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 %83, ptr %94, align 4
  br label %98

98:                                               ; preds = %97, %92
  %99 = phi i32 [ %95, %92 ], [ %83, %97 ]
  %100 = load i32, ptr %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 0, ptr %8, align 4
  br label %103

103:                                              ; preds = %102, %98
  %104 = phi i32 [ 0, %102 ], [ %100, %98 ]
  %105 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 283, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 0, ptr %105, align 4
  br label %109

109:                                              ; preds = %108, %103
  %110 = phi i32 [ 0, %108 ], [ %106, %103 ]
  %111 = add i32 %104, %93
  %112 = icmp ugt i32 %111, %81
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = sub i32 %81, %93
  store i32 %114, ptr %8, align 4
  br label %115

115:                                              ; preds = %113, %109
  %116 = add i32 %110, %99
  %117 = icmp ugt i32 %116, %83
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = sub i32 %83, %99
  store i32 %119, ptr %105, align 4
  br label %120

120:                                              ; preds = %118, %115
  %121 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 327
  %122 = load i8, ptr %121, align 1, !range !8
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %426, label %131

124:                                              ; preds = %80
  store i32 0, ptr %8, align 4
  %125 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 283, i32 1
  store i32 0, ptr %125, align 4
  %126 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 283, i32 2
  store i32 %81, ptr %126, align 4
  %127 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 283, i32 3
  store i32 %83, ptr %127, align 4
  %128 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 327
  %129 = load i8, ptr %128, align 1, !range !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %426, label %132

131:                                              ; preds = %120
  br i1 %86, label %132, label %196

132:                                              ; preds = %131, %124
  %133 = lshr i32 %81, 2
  %134 = mul i32 %83, %63
  %135 = lshr i32 %134, 2
  %136 = shl i32 %81, 2
  %137 = shl i32 %134, 2
  %138 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = icmp ult i32 %139, %133
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  store i32 %133, ptr %138, align 4
  br label %142

142:                                              ; preds = %141, %132
  %143 = phi i32 [ %133, %141 ], [ %139, %132 ]
  %144 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284, i32 3
  %145 = load i32, ptr %144, align 4
  %146 = icmp ult i32 %145, %135
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i32 %135, ptr %144, align 4
  br label %148

148:                                              ; preds = %147, %142
  %149 = phi i32 [ %145, %142 ], [ %135, %147 ]
  %150 = icmp ugt i32 %143, %136
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 %136, ptr %138, align 4
  br label %152

152:                                              ; preds = %151, %148
  %153 = phi i32 [ %136, %151 ], [ %143, %148 ]
  %154 = icmp ugt i32 %149, %137
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 %137, ptr %144, align 4
  br label %156

156:                                              ; preds = %155, %152
  %157 = phi i32 [ %149, %152 ], [ %137, %155 ]
  %158 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 285
  %159 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 285, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = icmp ugt i32 %153, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  store i32 %160, ptr %138, align 4
  br label %163

163:                                              ; preds = %162, %156
  %164 = phi i32 [ %160, %162 ], [ %153, %156 ]
  %165 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 285, i32 3
  %166 = load i32, ptr %165, align 4
  %167 = icmp ugt i32 %157, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i32 %166, ptr %144, align 4
  br label %169

169:                                              ; preds = %168, %163
  %170 = phi i32 [ %157, %163 ], [ %166, %168 ]
  %171 = load i32, ptr %9, align 4
  %172 = load i32, ptr %158, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  store i32 %172, ptr %9, align 4
  br label %175

175:                                              ; preds = %174, %169
  %176 = phi i32 [ %172, %174 ], [ %171, %169 ]
  %177 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284, i32 1
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 285, i32 1
  %180 = load i32, ptr %179, align 4
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  store i32 %180, ptr %177, align 4
  br label %183

183:                                              ; preds = %182, %175
  %184 = phi i32 [ %180, %182 ], [ %178, %175 ]
  %185 = add i32 %176, %164
  %186 = add i32 %160, %172
  %187 = icmp ugt i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = sub i32 %186, %164
  store i32 %189, ptr %9, align 4
  br label %190

190:                                              ; preds = %188, %183
  %191 = add i32 %184, %170
  %192 = add i32 %166, %180
  %193 = icmp ugt i32 %191, %192
  br i1 %193, label %194, label %426

194:                                              ; preds = %190
  %195 = sub i32 %192, %170
  store i32 %195, ptr %177, align 4
  br label %426

196:                                              ; preds = %131
  %197 = lshr i32 %93, 2
  %198 = mul i32 %99, %63
  %199 = lshr i32 %198, 2
  %200 = shl i32 %93, 2
  %201 = shl i32 %198, 2
  %202 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284, i32 2
  %203 = load i32, ptr %202, align 4
  %204 = icmp ult i32 %203, %197
  br i1 %204, label %205, label %206

205:                                              ; preds = %196
  store i32 %197, ptr %202, align 4
  br label %206

206:                                              ; preds = %205, %196
  %207 = phi i32 [ %197, %205 ], [ %203, %196 ]
  %208 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284, i32 3
  %209 = load i32, ptr %208, align 4
  %210 = icmp ult i32 %209, %199
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  store i32 %199, ptr %208, align 4
  br label %212

212:                                              ; preds = %211, %206
  %213 = phi i32 [ %209, %206 ], [ %199, %211 ]
  %214 = icmp ugt i32 %207, %200
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  store i32 %200, ptr %202, align 4
  br label %216

216:                                              ; preds = %215, %212
  %217 = phi i32 [ %200, %215 ], [ %207, %212 ]
  %218 = icmp ugt i32 %213, %201
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  store i32 %201, ptr %208, align 4
  br label %220

220:                                              ; preds = %219, %216
  %221 = phi i32 [ %213, %216 ], [ %201, %219 ]
  %222 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 285
  %223 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 285, i32 2
  %224 = load i32, ptr %223, align 4
  %225 = icmp ugt i32 %217, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %220
  store i32 %224, ptr %202, align 4
  br label %227

227:                                              ; preds = %226, %220
  %228 = phi i32 [ %224, %226 ], [ %217, %220 ]
  %229 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 285, i32 3
  %230 = load i32, ptr %229, align 4
  %231 = icmp ugt i32 %221, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  store i32 %230, ptr %208, align 4
  br label %233

233:                                              ; preds = %232, %227
  %234 = phi i32 [ %221, %227 ], [ %230, %232 ]
  %235 = load i32, ptr %9, align 4
  %236 = load i32, ptr %222, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  store i32 %236, ptr %9, align 4
  br label %239

239:                                              ; preds = %238, %233
  %240 = phi i32 [ %236, %238 ], [ %235, %233 ]
  %241 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284, i32 1
  %242 = load i32, ptr %241, align 4
  %243 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 285, i32 1
  %244 = load i32, ptr %243, align 4
  %245 = icmp slt i32 %242, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %239
  store i32 %244, ptr %241, align 4
  br label %247

247:                                              ; preds = %246, %239
  %248 = phi i32 [ %244, %246 ], [ %242, %239 ]
  %249 = add i32 %240, %228
  %250 = add i32 %224, %236
  %251 = icmp ugt i32 %249, %250
  br i1 %251, label %252, label %254

252:                                              ; preds = %247
  %253 = sub i32 %250, %228
  store i32 %253, ptr %9, align 4
  br label %254

254:                                              ; preds = %252, %247
  %255 = add i32 %248, %234
  %256 = add i32 %230, %244
  %257 = icmp ugt i32 %255, %256
  br i1 %257, label %258, label %426

258:                                              ; preds = %254
  %259 = sub i32 %256, %234
  store i32 %259, ptr %241, align 4
  br label %426

260:                                              ; preds = %67
  %261 = load i32, ptr %4, align 1
  %262 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %263 = load i32, ptr %262, align 1
  %264 = icmp eq i8 %72, 0
  br i1 %264, label %307, label %344

265:                                              ; preds = %73
  %266 = mul i32 %77, %63
  %267 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284, i32 2
  store i32 %75, ptr %267, align 4
  %268 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284, i32 3
  store i32 %266, ptr %268, align 4
  %269 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 285
  %270 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 285, i32 2
  %271 = load i32, ptr %270, align 4
  %272 = icmp ugt i32 %75, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %265
  store i32 %271, ptr %267, align 4
  br label %274

274:                                              ; preds = %273, %265
  %275 = phi i32 [ %271, %273 ], [ %75, %265 ]
  %276 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 285, i32 3
  %277 = load i32, ptr %276, align 4
  %278 = icmp ugt i32 %266, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  store i32 %277, ptr %268, align 4
  br label %280

280:                                              ; preds = %279, %274
  %281 = phi i32 [ %266, %274 ], [ %277, %279 ]
  %282 = load i32, ptr %9, align 4
  %283 = load i32, ptr %269, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  store i32 %283, ptr %9, align 4
  br label %286

286:                                              ; preds = %285, %280
  %287 = phi i32 [ %283, %285 ], [ %282, %280 ]
  %288 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284, i32 1
  %289 = load i32, ptr %288, align 4
  %290 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 285, i32 1
  %291 = load i32, ptr %290, align 4
  %292 = icmp slt i32 %289, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %286
  store i32 %291, ptr %288, align 4
  br label %294

294:                                              ; preds = %293, %286
  %295 = phi i32 [ %291, %293 ], [ %289, %286 ]
  %296 = add i32 %287, %275
  %297 = add i32 %271, %283
  %298 = icmp ugt i32 %296, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %294
  %300 = sub i32 %297, %275
  store i32 %300, ptr %9, align 4
  br label %301

301:                                              ; preds = %299, %294
  %302 = add i32 %295, %281
  %303 = add i32 %277, %291
  %304 = icmp ugt i32 %302, %303
  br i1 %304, label %305, label %426

305:                                              ; preds = %301
  %306 = sub i32 %303, %281
  store i32 %306, ptr %288, align 4
  br label %426

307:                                              ; preds = %260
  %308 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 283, i32 2
  %309 = load i32, ptr %308, align 4
  %310 = icmp ugt i32 %309, %261
  br i1 %310, label %311, label %312

311:                                              ; preds = %307
  store i32 %261, ptr %308, align 4
  br label %312

312:                                              ; preds = %311, %307
  %313 = phi i32 [ %261, %311 ], [ %309, %307 ]
  %314 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 283, i32 3
  %315 = load i32, ptr %314, align 4
  %316 = icmp ugt i32 %315, %263
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  store i32 %263, ptr %314, align 4
  br label %318

318:                                              ; preds = %317, %312
  %319 = phi i32 [ %315, %312 ], [ %263, %317 ]
  %320 = load i32, ptr %8, align 4
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %318
  store i32 0, ptr %8, align 4
  br label %323

323:                                              ; preds = %322, %318
  %324 = phi i32 [ 0, %322 ], [ %320, %318 ]
  %325 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 283, i32 1
  %326 = load i32, ptr %325, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %323
  store i32 0, ptr %325, align 4
  br label %329

329:                                              ; preds = %328, %323
  %330 = phi i32 [ 0, %328 ], [ %326, %323 ]
  %331 = add i32 %324, %313
  %332 = icmp ugt i32 %331, %261
  br i1 %332, label %333, label %335

333:                                              ; preds = %329
  %334 = sub i32 %261, %313
  store i32 %334, ptr %8, align 4
  br label %335

335:                                              ; preds = %333, %329
  %336 = add i32 %330, %319
  %337 = icmp ugt i32 %336, %263
  br i1 %337, label %338, label %340

338:                                              ; preds = %335
  %339 = sub i32 %263, %319
  store i32 %339, ptr %325, align 4
  br label %340

340:                                              ; preds = %338, %335
  %341 = udiv i32 %263, %63
  %342 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284, i32 2
  store i32 %261, ptr %342, align 4
  %343 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284, i32 3
  store i32 %341, ptr %343, align 4
  br label %426

344:                                              ; preds = %260
  %345 = mul i32 %263, %63
  %346 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284, i32 2
  %347 = load i32, ptr %346, align 4
  %348 = icmp ugt i32 %347, %261
  br i1 %348, label %349, label %350

349:                                              ; preds = %344
  store i32 %261, ptr %346, align 4
  br label %350

350:                                              ; preds = %349, %344
  %351 = phi i32 [ %261, %349 ], [ %347, %344 ]
  %352 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284, i32 3
  %353 = load i32, ptr %352, align 4
  %354 = icmp ugt i32 %353, %345
  br i1 %354, label %355, label %356

355:                                              ; preds = %350
  store i32 %345, ptr %352, align 4
  br label %356

356:                                              ; preds = %355, %350
  %357 = phi i32 [ %353, %350 ], [ %345, %355 ]
  %358 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 285
  %359 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 285, i32 2
  %360 = load i32, ptr %359, align 4
  %361 = icmp ugt i32 %351, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %356
  store i32 %360, ptr %346, align 4
  br label %363

363:                                              ; preds = %362, %356
  %364 = phi i32 [ %360, %362 ], [ %351, %356 ]
  %365 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 285, i32 3
  %366 = load i32, ptr %365, align 4
  %367 = icmp ugt i32 %357, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %363
  store i32 %366, ptr %352, align 4
  br label %369

369:                                              ; preds = %368, %363
  %370 = phi i32 [ %357, %363 ], [ %366, %368 ]
  %371 = load i32, ptr %9, align 4
  %372 = load i32, ptr %358, align 4
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %374, label %375

374:                                              ; preds = %369
  store i32 %372, ptr %9, align 4
  br label %375

375:                                              ; preds = %374, %369
  %376 = phi i32 [ %372, %374 ], [ %371, %369 ]
  %377 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284, i32 1
  %378 = load i32, ptr %377, align 4
  %379 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 285, i32 1
  %380 = load i32, ptr %379, align 4
  %381 = icmp slt i32 %378, %380
  br i1 %381, label %382, label %383

382:                                              ; preds = %375
  store i32 %380, ptr %377, align 4
  br label %383

383:                                              ; preds = %382, %375
  %384 = phi i32 [ %380, %382 ], [ %378, %375 ]
  %385 = add i32 %376, %364
  %386 = add i32 %360, %372
  %387 = icmp ugt i32 %385, %386
  br i1 %387, label %388, label %390

388:                                              ; preds = %383
  %389 = sub i32 %386, %364
  store i32 %389, ptr %9, align 4
  br label %390

390:                                              ; preds = %388, %383
  %391 = add i32 %384, %370
  %392 = add i32 %366, %380
  %393 = icmp ugt i32 %391, %392
  br i1 %393, label %394, label %396

394:                                              ; preds = %390
  %395 = sub i32 %392, %370
  store i32 %395, ptr %377, align 4
  br label %396

396:                                              ; preds = %394, %390
  %397 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 283, i32 1
  %398 = load i32, ptr %397, align 4
  %399 = mul i32 %398, %63
  %400 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 283, i32 3
  %401 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 283, i32 2
  %402 = call i32 @llvm.umin.i32(i32 %364, i32 %261)
  store i32 %402, ptr %401, align 4
  %403 = call i32 @llvm.umin.i32(i32 %364, i32 %261)
  %404 = call i32 @llvm.umin.i32(i32 %370, i32 %345)
  %405 = load i32, ptr %8, align 4
  %406 = icmp slt i32 %405, 0
  %407 = call i32 @llvm.smax.i32(i32 %405, i32 0)
  %408 = call i32 @llvm.smax.i32(i32 %399, i32 0)
  %409 = add i32 %407, %403
  %410 = icmp ugt i32 %409, %261
  %411 = or i1 %406, %410
  br i1 %411, label %412, label %415

412:                                              ; preds = %396
  %413 = sub i32 %261, %403
  %414 = select i1 %410, i32 %413, i32 %407
  store i32 %414, ptr %8, align 4
  br label %415

415:                                              ; preds = %412, %396
  %416 = add i32 %408, %404
  %417 = icmp ugt i32 %416, %345
  %418 = sub i32 %345, %404
  %419 = select i1 %417, i32 %418, i32 %408
  %420 = udiv i32 %419, %63
  store i32 %420, ptr %397, align 4
  %421 = udiv i32 %404, %63
  store i32 %421, ptr %400, align 4
  br label %426

422:                                              ; preds = %73
  %423 = udiv i32 %77, %63
  %424 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284, i32 2
  store i32 %75, ptr %424, align 4
  %425 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 284, i32 3
  store i32 %423, ptr %425, align 4
  br label %426

426:                                              ; preds = %422, %415, %340, %305, %301, %258, %254, %194, %190, %124, %120
  %427 = load i32, ptr %4, align 1
  %428 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 282, i32 2
  store i32 %427, ptr %428, align 8
  %429 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %430 = load i32, ptr %429, align 1
  %431 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 282, i32 3
  store i32 %430, ptr %431, align 4
  %432 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 6
  %433 = load i8, ptr %432, align 1
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %446, label %435

435:                                              ; preds = %435, %426
  %436 = phi i32 [ %440, %435 ], [ 0, %426 ]
  %437 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 %436, i32 1
  %438 = load i32, ptr %437, align 1
  %439 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 208, i32 %436
  store i32 %438, ptr %439, align 4
  %440 = add nuw nsw i32 %436, 1
  %441 = load i8, ptr %432, align 1
  %442 = zext i8 %441 to i32
  %443 = icmp ult i32 %440, %442
  br i1 %443, label %435, label %444

444:                                              ; preds = %435
  %445 = load ptr, ptr %54, align 8
  br label %446

446:                                              ; preds = %444, %426
  %447 = phi ptr [ %445, %444 ], [ %53, %426 ]
  %448 = getelementptr inbounds %struct.vivid_fmt, ptr %447, i32 0, i32 6
  %449 = load i8, ptr %448, align 1
  %450 = getelementptr inbounds %struct.vivid_fmt, ptr %447, i32 0, i32 5
  %451 = load i8, ptr %450, align 4
  %452 = icmp ult i8 %449, %451
  br i1 %452, label %453, label %473

453:                                              ; preds = %446
  %454 = zext i8 %449 to i32
  %455 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 208
  br label %456

456:                                              ; preds = %456, %453
  %457 = phi ptr [ %447, %453 ], [ %468, %456 ]
  %458 = phi i32 [ %454, %453 ], [ %467, %456 ]
  %459 = load i32, ptr %455, align 4
  %460 = getelementptr inbounds %struct.vivid_fmt, ptr %457, i32 0, i32 8
  %461 = getelementptr %struct.vivid_fmt, ptr %457, i32 0, i32 8, i32 %458
  %462 = load i32, ptr %461, align 4
  %463 = mul i32 %462, %459
  %464 = load i32, ptr %460, align 4
  %465 = udiv i32 %463, %464
  %466 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 208, i32 %458
  store i32 %465, ptr %466, align 4
  %467 = add nuw nsw i32 %458, 1
  %468 = load ptr, ptr %54, align 8
  %469 = getelementptr inbounds %struct.vivid_fmt, ptr %468, i32 0, i32 5
  %470 = load i8, ptr %469, align 4
  %471 = zext i8 %470 to i32
  %472 = icmp ult i32 %467, %471
  br i1 %472, label %456, label %473

473:                                              ; preds = %456, %446
  %474 = load i32, ptr %55, align 1
  %475 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 280
  store i32 %474, ptr %475, align 4
  %476 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 199
  %477 = load i32, ptr %476, align 4
  %478 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 57, i32 %477
  %479 = load i8, ptr %478, align 1
  %480 = icmp eq i8 %479, 2
  br i1 %480, label %481, label %484

481:                                              ; preds = %473
  %482 = load i32, ptr %55, align 1
  %483 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 209
  store i32 %482, ptr %483, align 8
  br label %484

484:                                              ; preds = %481, %473, %38
  %485 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  %486 = load i32, ptr %485, align 1
  %487 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 202
  store i32 %486, ptr %487, align 4
  %488 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 10
  %489 = load i8, ptr %488, align 1
  %490 = zext i8 %489 to i32
  %491 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 206
  store i32 %490, ptr %491, align 4
  %492 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 8
  %493 = load i8, ptr %492, align 1
  %494 = zext i8 %493 to i32
  %495 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 203
  store i32 %494, ptr %495, align 8
  %496 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 9
  %497 = load i8, ptr %496, align 1
  %498 = zext i8 %497 to i32
  %499 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 205
  store i32 %498, ptr %499, align 8
  %500 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 139
  %501 = load i8, ptr %500, align 1, !range !8
  %502 = icmp eq i8 %501, 0
  br i1 %502, label %504, label %503

503:                                              ; preds = %484
  tail call void @vivid_send_source_change(ptr noundef %7, i32 noundef 2) #13
  tail call void @vivid_send_source_change(ptr noundef %7, i32 noundef 3) #13
  br label %504

504:                                              ; preds = %503, %484, %47, %44
  %505 = phi i32 [ -16, %47 ], [ -16, %44 ], [ 0, %503 ], [ 0, %484 ]
  ret i32 %505
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @v4l2_rect_map_inside(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.v4l2_rect, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.v4l2_rect, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 %6, ptr %3, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = phi i32 [ %6, %8 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.v4l2_rect, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_rect, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 %14, ptr %11, align 4
  br label %17

17:                                               ; preds = %16, %9
  %18 = phi i32 [ %12, %9 ], [ %14, %16 ]
  %19 = load i32, ptr %0, align 4
  %20 = load i32, ptr %1, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 %20, ptr %0, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i32 [ %20, %22 ], [ %19, %17 ]
  %25 = getelementptr inbounds %struct.v4l2_rect, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.v4l2_rect, ptr %1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 %28, ptr %25, align 4
  br label %31

31:                                               ; preds = %30, %23
  %32 = phi i32 [ %28, %30 ], [ %26, %23 ]
  %33 = add i32 %10, %24
  %34 = load i32, ptr %1, align 4
  %35 = load i32, ptr %5, align 4
  %36 = add i32 %35, %34
  %37 = icmp ugt i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = sub i32 %36, %10
  store i32 %39, ptr %0, align 4
  br label %40

40:                                               ; preds = %38, %31
  %41 = add i32 %18, %32
  %42 = load i32, ptr %27, align 4
  %43 = load i32, ptr %13, align 4
  %44 = add i32 %43, %42
  %45 = icmp ugt i32 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = sub i32 %44, %18
  store i32 %47, ptr %25, align 4
  br label %48

48:                                               ; preds = %46, %40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_send_source_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_vid_out_mplane(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @vivid_g_fmt_vid_out(ptr noundef %0, ptr undef, ptr noundef %2)
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ 0, %10 ], [ -25, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_vid_out_mplane(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @vivid_try_fmt_vid_out(ptr noundef %0, ptr undef, ptr noundef %2)
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ 0, %10 ], [ -25, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_vid_out_mplane(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @vivid_s_fmt_vid_out(ptr noundef %0, ptr undef, ptr noundef %2)
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ %11, %10 ], [ -25, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_vid_out(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 @fmt_sp2mp_func(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @vivid_g_fmt_vid_out) #13
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ %11, %10 ], [ -25, %3 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fmt_sp2mp_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_vid_out(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 @fmt_sp2mp_func(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @vivid_try_fmt_vid_out) #13
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ %11, %10 ], [ -25, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_vid_out(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 @fmt_sp2mp_func(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @vivid_s_fmt_vid_out) #13
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ %11, %10 ], [ -25, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_g_selection(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 326
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 327
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %10, %3
  %15 = load i32, ptr %2, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %48

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %19 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 0, ptr %19, align 4
  store i32 0, ptr %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  switch i32 %21, label %48 [
    i32 0, label %22
    i32 1, label %27
    i32 2, label %32
    i32 256, label %36
    i32 257, label %42
    i32 258, label %42
  ]

22:                                               ; preds = %17
  %23 = load i8, ptr %7, align 8, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 283
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %18, ptr noundef align 8 dereferenceable(16) %26, i32 16, i1 false)
  br label %48

27:                                               ; preds = %17
  %28 = load i8, ptr %7, align 8, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 282
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %18, ptr noundef align 8 dereferenceable(16) %31, i32 16, i1 false)
  br label %48

32:                                               ; preds = %17
  %33 = load i8, ptr %7, align 8, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(16) @vivid_max_rect, i32 16, i1 false)
  br label %48

36:                                               ; preds = %17
  %37 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 327
  %38 = load i8, ptr %37, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 284
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %18, ptr noundef align 8 dereferenceable(16) %41, i32 16, i1 false)
  br label %48

42:                                               ; preds = %17, %17
  %43 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 327
  %44 = load i8, ptr %43, align 1, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 281
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %18, ptr noundef align 8 dereferenceable(16) %47, i32 16, i1 false)
  br label %48

48:                                               ; preds = %46, %42, %40, %36, %35, %32, %30, %27, %25, %22, %17, %14, %10
  %49 = phi i32 [ -25, %10 ], [ -22, %14 ], [ -22, %22 ], [ -22, %27 ], [ -22, %32 ], [ -22, %36 ], [ -22, %42 ], [ -22, %17 ], [ 0, %46 ], [ 0, %40 ], [ 0, %35 ], [ 0, %30 ], [ 0, %25 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_s_selection(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 283
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 284
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 280
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -2
  %12 = icmp ult i32 %11, 6
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_vid_out_s_selection, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_vid_out_s_selection.12, i32 0, i32 %11
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi i32 [ 0, %3 ], [ %15, %13 ]
  %20 = phi i32 [ 1, %3 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 326
  %22 = load i8, ptr %21, align 8, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 327
  %26 = load i8, ptr %25, align 1, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %384, label %28

28:                                               ; preds = %24, %18
  %29 = load i32, ptr %2, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %384

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  switch i32 %33, label %384 [
    i32 0, label %34
    i32 256, label %193
  ]

34:                                               ; preds = %31
  br i1 %23, label %384, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %39 = tail call i32 @vivid_vid_adjust_sel(i32 noundef %37, ptr noundef %38) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %384

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2), align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 %44, ptr %42, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = phi i32 [ %44, %46 ], [ %43, %41 ]
  %49 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3), align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 %51, ptr %49, align 4
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi i32 [ %50, %47 ], [ %51, %53 ]
  %56 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 282
  %57 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 282, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = icmp ugt i32 %48, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 %58, ptr %42, align 4
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi i32 [ %58, %60 ], [ %48, %54 ]
  %63 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 282, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = icmp ugt i32 %55, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 %64, ptr %49, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = phi i32 [ %55, %61 ], [ %64, %66 ]
  %69 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 328
  %70 = load i8, ptr %69, align 2, !range !8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %116, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 281, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = shl i32 %74, 2
  %76 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 281, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = lshr i32 %77, %19
  %79 = shl i32 %78, 2
  %80 = icmp ugt i32 %62, %75
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32 %75, ptr %42, align 4
  br label %82

82:                                               ; preds = %81, %72
  %83 = phi i32 [ %75, %81 ], [ %62, %72 ]
  %84 = icmp ugt i32 %68, %79
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 %79, ptr %49, align 4
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi i32 [ %68, %82 ], [ %79, %85 ]
  %88 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 327
  %89 = load i8, ptr %88, align 1, !range !8
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %150, label %91

91:                                               ; preds = %86
  %92 = lshr i32 %83, 2
  %93 = mul i32 %87, %20
  %94 = lshr i32 %93, 2
  %95 = shl i32 %83, 2
  %96 = shl i32 %93, 2
  %97 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 284, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = icmp ult i32 %98, %92
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i32 %92, ptr %97, align 4
  br label %101

101:                                              ; preds = %100, %91
  %102 = phi i32 [ %92, %100 ], [ %98, %91 ]
  %103 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 284, i32 3
  %104 = load i32, ptr %103, align 4
  %105 = icmp ult i32 %104, %94
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 %94, ptr %103, align 4
  br label %107

107:                                              ; preds = %106, %101
  %108 = phi i32 [ %104, %101 ], [ %94, %106 ]
  %109 = icmp ugt i32 %102, %95
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 %95, ptr %97, align 4
  br label %111

111:                                              ; preds = %110, %107
  %112 = icmp ugt i32 %108, %96
  br i1 %112, label %113, label %114

113:                                              ; preds = %111
  store i32 %96, ptr %103, align 4
  br label %114

114:                                              ; preds = %113, %111
  %115 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 285
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %8, ptr noundef %115)
  br label %150

116:                                              ; preds = %67
  %117 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 327
  %118 = load i8, ptr %117, align 1, !range !8
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %144, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = mul i32 %122, %20
  store i32 %123, ptr %121, align 4
  %124 = mul i32 %68, %20
  store i32 %124, ptr %49, align 4
  %125 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 281, i32 2
  %126 = load i32, ptr %125, align 4
  %127 = icmp ugt i32 %62, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 %126, ptr %42, align 4
  br label %129

129:                                              ; preds = %128, %120
  %130 = phi i32 [ %126, %128 ], [ %62, %120 ]
  %131 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 281, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = icmp ugt i32 %124, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 %132, ptr %49, align 4
  br label %135

135:                                              ; preds = %134, %129
  %136 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 284, i32 2
  store i32 %130, ptr %136, align 4
  %137 = load i32, ptr %49, align 4
  %138 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 284, i32 3
  store i32 %137, ptr %138, align 4
  %139 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 285
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %8, ptr noundef %139)
  %140 = load i32, ptr %121, align 4
  %141 = lshr i32 %140, %19
  store i32 %141, ptr %121, align 4
  %142 = load i32, ptr %49, align 4
  %143 = lshr i32 %142, %19
  store i32 %143, ptr %49, align 4
  br label %150

144:                                              ; preds = %116
  %145 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 281, i32 2
  %146 = load i32, ptr %145, align 4
  store i32 %146, ptr %42, align 4
  %147 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 281, i32 3
  %148 = load i32, ptr %147, align 4
  %149 = lshr i32 %148, %19
  store i32 %149, ptr %49, align 4
  br label %150

150:                                              ; preds = %144, %135, %114, %86
  %151 = load i32, ptr %42, align 4
  %152 = load i32, ptr %57, align 4
  %153 = icmp ugt i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i32 %152, ptr %42, align 4
  br label %155

155:                                              ; preds = %154, %150
  %156 = phi i32 [ %152, %154 ], [ %151, %150 ]
  %157 = load i32, ptr %49, align 4
  %158 = load i32, ptr %63, align 4
  %159 = icmp ugt i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  store i32 %158, ptr %49, align 4
  br label %161

161:                                              ; preds = %160, %155
  %162 = phi i32 [ %157, %155 ], [ %158, %160 ]
  %163 = load i32, ptr %38, align 4
  %164 = load i32, ptr %56, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  store i32 %164, ptr %38, align 4
  br label %167

167:                                              ; preds = %166, %161
  %168 = phi i32 [ %164, %166 ], [ %163, %161 ]
  %169 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 282, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  store i32 %172, ptr %169, align 4
  br label %175

175:                                              ; preds = %174, %167
  %176 = phi i32 [ %172, %174 ], [ %170, %167 ]
  %177 = add i32 %168, %156
  %178 = load i32, ptr %56, align 4
  %179 = load i32, ptr %57, align 4
  %180 = add i32 %179, %178
  %181 = icmp ugt i32 %177, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %175
  %183 = sub i32 %180, %156
  store i32 %183, ptr %38, align 4
  br label %184

184:                                              ; preds = %182, %175
  %185 = add i32 %176, %162
  %186 = load i32, ptr %171, align 4
  %187 = load i32, ptr %63, align 4
  %188 = add i32 %187, %186
  %189 = icmp ugt i32 %185, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = sub i32 %188, %162
  store i32 %191, ptr %169, align 4
  br label %192

192:                                              ; preds = %190, %184
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %7, ptr noundef align 4 dereferenceable(16) %38, i32 16, i1 false)
  br label %384

193:                                              ; preds = %31
  %194 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 327
  %195 = load i8, ptr %194, align 1, !range !8
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %384, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 2
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %201 = tail call i32 @vivid_vid_adjust_sel(i32 noundef %199, ptr noundef %200) #13
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %384

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %205 = load i32, ptr %204, align 4
  %206 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2), align 4
  %207 = icmp ult i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i32 %206, ptr %204, align 4
  br label %209

209:                                              ; preds = %208, %203
  %210 = phi i32 [ %206, %208 ], [ %205, %203 ]
  %211 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %212 = load i32, ptr %211, align 4
  %213 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3), align 4
  %214 = icmp ult i32 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  store i32 %213, ptr %211, align 4
  br label %216

216:                                              ; preds = %215, %209
  %217 = phi i32 [ %212, %209 ], [ %213, %215 ]
  %218 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 281, i32 2
  %219 = load i32, ptr %218, align 4
  %220 = icmp ugt i32 %210, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  store i32 %219, ptr %204, align 4
  br label %222

222:                                              ; preds = %221, %216
  %223 = phi i32 [ %219, %221 ], [ %210, %216 ]
  %224 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 281, i32 3
  %225 = load i32, ptr %224, align 4
  %226 = icmp ugt i32 %217, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  store i32 %225, ptr %211, align 4
  br label %228

228:                                              ; preds = %227, %222
  %229 = phi i32 [ %217, %222 ], [ %225, %227 ]
  %230 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 285
  %231 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 285, i32 2
  %232 = load i32, ptr %231, align 4
  %233 = icmp ugt i32 %223, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  store i32 %232, ptr %204, align 4
  br label %235

235:                                              ; preds = %234, %228
  %236 = phi i32 [ %232, %234 ], [ %223, %228 ]
  %237 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 285, i32 3
  %238 = load i32, ptr %237, align 4
  %239 = icmp ugt i32 %229, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  store i32 %238, ptr %211, align 4
  br label %241

241:                                              ; preds = %240, %235
  %242 = phi i32 [ %229, %235 ], [ %238, %240 ]
  %243 = load i32, ptr %200, align 4
  %244 = load i32, ptr %230, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  store i32 %244, ptr %200, align 4
  br label %247

247:                                              ; preds = %246, %241
  %248 = phi i32 [ %244, %246 ], [ %243, %241 ]
  %249 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  %250 = load i32, ptr %249, align 4
  %251 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 285, i32 1
  %252 = load i32, ptr %251, align 4
  %253 = icmp slt i32 %250, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %247
  store i32 %252, ptr %249, align 4
  br label %255

255:                                              ; preds = %254, %247
  %256 = phi i32 [ %252, %254 ], [ %250, %247 ]
  %257 = add i32 %248, %236
  %258 = load i32, ptr %230, align 4
  %259 = load i32, ptr %231, align 4
  %260 = add i32 %259, %258
  %261 = icmp ugt i32 %257, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %255
  %263 = sub i32 %260, %236
  store i32 %263, ptr %200, align 4
  br label %264

264:                                              ; preds = %262, %255
  %265 = add i32 %256, %242
  %266 = load i32, ptr %251, align 4
  %267 = load i32, ptr %237, align 4
  %268 = add i32 %267, %266
  %269 = icmp ugt i32 %265, %268
  %270 = sub i32 %268, %242
  %271 = select i1 %269, i32 %270, i32 %256
  %272 = lshr i32 %271, %19
  store i32 %272, ptr %249, align 4
  %273 = lshr i32 %242, %19
  store i32 %273, ptr %211, align 4
  %274 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 328
  %275 = load i8, ptr %274, align 2, !range !8
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %323, label %277

277:                                              ; preds = %264
  %278 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 282
  %279 = load i64, ptr %278, align 8
  %280 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 282, i32 2
  %281 = load i32, ptr %280, align 8
  %282 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 282, i32 3
  %283 = load i32, ptr %282, align 4
  %284 = shl i32 %236, 2
  %285 = shl i32 %273, 2
  %286 = lshr i32 %236, 2
  %287 = lshr i32 %273, 2
  %288 = tail call i32 @llvm.umax.i32(i32 %281, i32 %286)
  %289 = tail call i32 @llvm.umax.i32(i32 %283, i32 %287)
  %290 = load i8, ptr %21, align 8, !range !8
  %291 = icmp eq i8 %290, 0
  %292 = tail call i32 @llvm.umin.i32(i32 %288, i32 %284)
  %293 = tail call i32 @llvm.umin.i32(i32 %289, i32 %285)
  %294 = select i1 %291, i32 %292, i32 %288
  %295 = select i1 %291, i32 %293, i32 %289
  %296 = icmp eq i32 %281, %294
  %297 = icmp eq i32 %283, %295
  %298 = select i1 %296, i1 %297, i1 false
  br i1 %298, label %303, label %299

299:                                              ; preds = %277
  %300 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 286, i32 21
  %301 = load i32, ptr %300, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %384

303:                                              ; preds = %299, %277
  br i1 %291, label %322, label %304

304:                                              ; preds = %303
  %305 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 283, i32 2
  %306 = load i32, ptr %305, align 4
  %307 = icmp ult i32 %306, %286
  br i1 %307, label %308, label %309

308:                                              ; preds = %304
  store i32 %286, ptr %305, align 4
  br label %309

309:                                              ; preds = %308, %304
  %310 = phi i32 [ %286, %308 ], [ %306, %304 ]
  %311 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 283, i32 3
  %312 = load i32, ptr %311, align 4
  %313 = icmp ult i32 %312, %287
  br i1 %313, label %314, label %315

314:                                              ; preds = %309
  store i32 %287, ptr %311, align 4
  br label %315

315:                                              ; preds = %314, %309
  %316 = phi i32 [ %312, %309 ], [ %287, %314 ]
  %317 = icmp ugt i32 %310, %284
  br i1 %317, label %318, label %319

318:                                              ; preds = %315
  store i32 %284, ptr %305, align 4
  br label %319

319:                                              ; preds = %318, %315
  %320 = icmp ugt i32 %316, %285
  br i1 %320, label %321, label %322

321:                                              ; preds = %319
  store i32 %285, ptr %311, align 4
  br label %322

322:                                              ; preds = %321, %319, %303
  store i64 %279, ptr %278, align 8
  store i32 %294, ptr %280, align 8
  store i32 %295, ptr %282, align 4
  br label %365

323:                                              ; preds = %264
  %324 = load i8, ptr %21, align 8, !range !8
  %325 = icmp eq i8 %324, 0
  %326 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 282
  %327 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 282, i32 2
  br i1 %325, label %346, label %328

328:                                              ; preds = %323
  %329 = load i32, ptr %327, align 8
  %330 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 282, i32 3
  %331 = load i32, ptr %330, align 4
  %332 = tail call i32 @llvm.umax.i32(i32 %329, i32 %236)
  %333 = tail call i32 @llvm.umax.i32(i32 %331, i32 %273)
  %334 = icmp ult i32 %329, %236
  %335 = icmp ult i32 %331, %273
  %336 = select i1 %334, i1 true, i1 %335
  br i1 %336, label %337, label %341

337:                                              ; preds = %328
  %338 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 286, i32 21
  %339 = load i32, ptr %338, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %384

341:                                              ; preds = %337, %328
  store i32 %332, ptr %327, align 8
  store i32 %333, ptr %330, align 4
  %342 = load i32, ptr %204, align 4
  %343 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 283, i32 2
  store i32 %342, ptr %343, align 4
  %344 = load i32, ptr %211, align 4
  %345 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 283, i32 3
  store i32 %344, ptr %345, align 4
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %7, ptr noundef %326)
  br label %365

346:                                              ; preds = %323
  %347 = load i32, ptr %327, align 4
  %348 = icmp eq i32 %236, %347
  br i1 %348, label %349, label %353

349:                                              ; preds = %346
  %350 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 282, i32 3
  %351 = load i32, ptr %350, align 4
  %352 = icmp eq i32 %273, %351
  br i1 %352, label %357, label %353

353:                                              ; preds = %349, %346
  %354 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 286, i32 21
  %355 = load i32, ptr %354, align 4
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %384

357:                                              ; preds = %353, %349
  store i32 %236, ptr %327, align 4
  %358 = load i32, ptr %211, align 4
  %359 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 282, i32 3
  store i32 %358, ptr %359, align 4
  %360 = load i32, ptr %204, align 4
  %361 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 283, i32 2
  store i32 %360, ptr %361, align 4
  %362 = load i32, ptr %211, align 4
  %363 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 283, i32 3
  %364 = lshr i32 %362, %19
  store i32 %364, ptr %363, align 4
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %7, ptr noundef %326)
  br label %365

365:                                              ; preds = %357, %341, %322
  %366 = load i32, ptr %249, align 4
  %367 = mul i32 %366, %20
  store i32 %367, ptr %249, align 4
  %368 = load i32, ptr %211, align 4
  %369 = mul i32 %368, %20
  store i32 %369, ptr %211, align 4
  %370 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 224
  %371 = load ptr, ptr %370, align 8
  %372 = icmp eq ptr %371, null
  br i1 %372, label %383, label %373

373:                                              ; preds = %365
  %374 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 284, i32 2
  %375 = load i32, ptr %374, align 4
  %376 = load i32, ptr %204, align 4
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %378, label %382

378:                                              ; preds = %373
  %379 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 284, i32 3
  %380 = load i32, ptr %379, align 4
  %381 = icmp eq i32 %380, %369
  br i1 %381, label %383, label %382

382:                                              ; preds = %378, %373
  tail call void @vfree(ptr noundef nonnull %371) #13
  store ptr null, ptr %370, align 8
  br label %383

383:                                              ; preds = %382, %378, %365
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %8, ptr noundef align 4 dereferenceable(16) %200, i32 16, i1 false)
  br label %384

384:                                              ; preds = %383, %353, %337, %299, %197, %193, %192, %35, %34, %31, %28, %24
  %385 = phi i32 [ -25, %24 ], [ -22, %28 ], [ -22, %34 ], [ %39, %35 ], [ -22, %193 ], [ %201, %197 ], [ -16, %353 ], [ -22, %31 ], [ 0, %383 ], [ 0, %192 ], [ -16, %299 ], [ -16, %337 ]
  ret i32 %385
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_adjust_sel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_g_pixelaspect(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq i32 %2, 2
  br i1 %8, label %9, label %34

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 199
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 57, i32 %11
  %13 = load i8, ptr %12, align 1
  switch i8 %13, label %34 [
    i8 2, label %14
    i8 3, label %19
  ]

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 200
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 63744
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %29, label %30

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 281, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 720
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 281, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, 577
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = icmp eq i32 %25, 480
  br i1 %28, label %30, label %29

29:                                               ; preds = %27, %14
  br label %30

30:                                               ; preds = %29, %27, %14
  %31 = phi i32 [ 54, %29 ], [ 11, %27 ], [ 11, %14 ]
  %32 = phi i32 [ 59, %29 ], [ 10, %27 ], [ 10, %14 ]
  store i32 %31, ptr %3, align 4
  %33 = getelementptr inbounds %struct.v4l2_fract, ptr %3, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %30, %23, %19, %9, %4
  %35 = phi i32 [ -22, %4 ], [ 0, %23 ], [ 0, %19 ], [ 0, %9 ], [ 0, %30 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_vid_out_overlay(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 72
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %79, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 222
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 223
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %11, align 4
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 284, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 284, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 227
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %12, align 4
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 229
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 230
  %32 = load i8, ptr %31, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i8 %32, ptr %33, align 4
  %34 = load i32, ptr %25, align 4
  %35 = tail call i32 @llvm.umin.i32(i32 %13, i32 %34)
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 224
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  %39 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  br i1 %38, label %40, label %41

40:                                               ; preds = %10
  store ptr null, ptr %39, align 4
  br label %70

41:                                               ; preds = %10
  %42 = load ptr, ptr %39, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %70, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr %19, align 8
  %46 = add i32 %45, 7
  %47 = lshr i32 %46, 3
  %48 = load i32, ptr %22, align 4
  %49 = mul i32 %47, %48
  %50 = icmp slt i32 %49, 0
  %51 = load i1, ptr @check_copy_size.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %55, !prof !11

54:                                               ; preds = %44
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %55

55:                                               ; preds = %54, %44
  br i1 %50, label %79, label %56, !prof !11

56:                                               ; preds = %55
  %57 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %42, i32 %49, i32 -1090519040) #14, !srcloc !18
  %58 = extractvalue { i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = tail call ptr @llvm.thread.pointer() #13
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %63 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %62) #15, !srcloc !19
  %64 = and i32 %63, -13
  %65 = or i32 %64, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #13, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !21
  %66 = tail call i32 @arm_copy_to_user(ptr noundef nonnull %42, ptr noundef nonnull %37, i32 noundef %49) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #13, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !21
  br label %67

67:                                               ; preds = %60, %56
  %68 = phi i32 [ %66, %60 ], [ %49, %56 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67, %41, %40
  %71 = icmp eq i32 %35, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 225
  %78 = mul i32 %35, 20
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %74, ptr align 4 %77, i32 %78, i1 false)
  br label %79

79:                                               ; preds = %76, %72, %70, %67, %55, %3
  %80 = phi i32 [ -22, %3 ], [ -14, %67 ], [ 0, %76 ], [ 0, %72 ], [ 0, %70 ], [ -14, %55 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_vid_out_overlay(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 72
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %131, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 144
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 0, %14
  %16 = tail call i32 @llvm.smax.i32(i32 %12, i32 %15)
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 %14)
  store i32 %17, ptr %11, align 4
  %18 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 145
  %21 = load i32, ptr %20, align 8
  %22 = sub i32 0, %21
  %23 = tail call i32 @llvm.smax.i32(i32 %19, i32 %22)
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 %21)
  store i32 %24, ptr %18, align 4
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 284, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 284, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %131, label %35

35:                                               ; preds = %10
  %36 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, ptr %32, align 4
  br label %131

40:                                               ; preds = %35
  %41 = icmp ugt i32 %33, 16
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  store i32 16, ptr %32, align 4
  br label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = mul i32 %33, 20
  br label %47

47:                                               ; preds = %43, %42
  %48 = phi ptr [ %37, %42 ], [ %45, %43 ]
  %49 = phi i32 [ 320, %42 ], [ %46, %43 ]
  %50 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 226
  %51 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %50, ptr align 4 %48, i32 %49, i1 false)
  %52 = load i32, ptr %32, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %60

54:                                               ; preds = %60
  %55 = add i32 %86, -1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %127, label %57

57:                                               ; preds = %54, %47
  %58 = phi i32 [ %55, %54 ], [ -1, %47 ]
  %59 = phi i32 [ %86, %54 ], [ 0, %47 ]
  br label %90

60:                                               ; preds = %60, %47
  %61 = phi i32 [ %85, %60 ], [ 0, %47 ]
  %62 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 226, i32 %61
  %63 = getelementptr inbounds %struct.v4l2_rect, ptr %62, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = tail call i32 @llvm.smax.i32(i32 %64, i32 0)
  %66 = load i32, ptr %20, align 8
  %67 = add i32 %66, -1
  %68 = tail call i32 @llvm.smin.i32(i32 %65, i32 %67)
  store i32 %68, ptr %63, align 4
  %69 = getelementptr inbounds %struct.v4l2_rect, ptr %62, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @llvm.smax.i32(i32 %70, i32 1)
  %72 = load i32, ptr %20, align 8
  %73 = sub i32 %72, %68
  %74 = tail call i32 @llvm.smin.i32(i32 %71, i32 %73)
  store i32 %74, ptr %69, align 4
  %75 = load i32, ptr %62, align 4
  %76 = load i32, ptr %13, align 4
  %77 = add i32 %76, -1
  %78 = tail call i32 @llvm.umin.i32(i32 %75, i32 %77)
  store i32 %78, ptr %62, align 4
  %79 = getelementptr inbounds %struct.v4l2_rect, ptr %62, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = tail call i32 @llvm.umax.i32(i32 %80, i32 1)
  %82 = load i32, ptr %13, align 4
  %83 = sub i32 %82, %78
  %84 = tail call i32 @llvm.umin.i32(i32 %81, i32 %83)
  store i32 %84, ptr %79, align 4
  %85 = add nuw i32 %61, 1
  %86 = load i32, ptr %32, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %60, label %54

88:                                               ; preds = %124, %90
  %89 = icmp eq i32 %92, %58
  br i1 %89, label %127, label %90

90:                                               ; preds = %88, %57
  %91 = phi i32 [ %92, %88 ], [ 0, %57 ]
  %92 = add nuw i32 %91, 1
  %93 = icmp ult i32 %92, %59
  br i1 %93, label %94, label %88

94:                                               ; preds = %90
  %95 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 226, i32 %91
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.v4l2_rect, ptr %95, i32 0, i32 2
  %98 = getelementptr inbounds %struct.v4l2_rect, ptr %95, i32 0, i32 1
  %99 = getelementptr inbounds %struct.v4l2_rect, ptr %95, i32 0, i32 3
  br label %100

100:                                              ; preds = %124, %94
  %101 = phi i32 [ %92, %94 ], [ %125, %124 ]
  %102 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 226, i32 %101
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.v4l2_rect, ptr %102, i32 0, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, %103
  %107 = icmp ult i32 %96, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %100
  %109 = load i32, ptr %97, align 4
  %110 = add i32 %109, %96
  %111 = icmp ult i32 %103, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %108
  %113 = load i32, ptr %98, align 4
  %114 = getelementptr inbounds %struct.v4l2_rect, ptr %102, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.v4l2_rect, ptr %102, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = add i32 %117, %115
  %119 = icmp ult i32 %113, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %112
  %121 = load i32, ptr %99, align 4
  %122 = add i32 %121, %113
  %123 = icmp ult i32 %115, %122
  br i1 %123, label %131, label %124

124:                                              ; preds = %120, %112, %108, %100
  %125 = add i32 %101, 1
  %126 = icmp eq i32 %125, %59
  br i1 %126, label %88, label %100

127:                                              ; preds = %88, %54
  %128 = phi i32 [ 1, %54 ], [ %59, %88 ]
  %129 = load ptr, ptr %51, align 4
  %130 = mul i32 %128, 20
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %129, ptr align 4 %50, i32 %130, i1 false)
  br label %131

131:                                              ; preds = %127, %120, %39, %10, %3
  %132 = phi i32 [ -22, %3 ], [ 0, %127 ], [ 0, %39 ], [ 0, %10 ], [ -22, %120 ]
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_vid_out_overlay(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = tail call i32 @vidioc_try_fmt_vid_out_overlay(ptr noundef %0, ptr undef, ptr noundef %2)
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 284, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 7
  %12 = lshr i32 %11, 3
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 284, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %12, %14
  %16 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, 20
  %19 = icmp eq i32 %8, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %53, label %24

24:                                               ; preds = %20
  %25 = tail call noalias ptr @vzalloc(i32 noundef %15) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %75, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %21, align 4
  %29 = icmp slt i32 %15, 0
  %30 = load i1, ptr @check_copy_size.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !11

33:                                               ; preds = %27
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %34

34:                                               ; preds = %33, %27
  br i1 %29, label %52, label %35, !prof !11

35:                                               ; preds = %34
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %28, i32 %15, i32 -1090519040) #14, !srcloc !22
  %37 = extractvalue { i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46, !prof !23

39:                                               ; preds = %35
  %40 = tail call ptr @llvm.thread.pointer() #13
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %41) #15, !srcloc !19
  %43 = and i32 %42, -13
  %44 = or i32 %43, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #13, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !21
  %45 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %25, ptr noundef %28, i32 noundef %15) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #13, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !21
  br label %46

46:                                               ; preds = %39, %35
  %47 = phi i32 [ %45, %39 ], [ %15, %35 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49, !prof !23

49:                                               ; preds = %46
  %50 = sub i32 %15, %47
  %51 = getelementptr i8, ptr %25, i32 %50
  tail call void @llvm.memset.p0.i32(ptr align 1 %51, i8 0, i32 %47, i1 false) #13
  br label %52

52:                                               ; preds = %49, %34
  tail call void @vfree(ptr noundef nonnull %25) #13
  br label %75

53:                                               ; preds = %46, %20
  %54 = phi ptr [ null, %20 ], [ %25, %46 ]
  %55 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 222
  store i32 %56, ptr %57, align 8
  %58 = load i32, ptr %7, align 4
  %59 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 223
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 224
  %61 = load ptr, ptr %60, align 8
  tail call void @vfree(ptr noundef %61) #13
  store ptr %54, ptr %60, align 8
  %62 = load i32, ptr %16, align 4
  %63 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 227
  store i32 %62, ptr %63, align 4
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 225
  %67 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 226
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %66, ptr align 4 %67, i32 %18, i1 false)
  br label %68

68:                                               ; preds = %65, %53
  %69 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 229
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %73 = load i8, ptr %72, align 4
  %74 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 230
  store i8 %73, ptr %74, align 8
  br label %75

75:                                               ; preds = %68, %52, %24, %3
  %76 = phi i32 [ -14, %52 ], [ 0, %68 ], [ %8, %3 ], [ -12, %24 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_overlay(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne i32 %2, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 278
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.vivid_fmt, ptr %10, i32 0, i32 2
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i32, ptr @vivid_debug, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 1, i32 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %18) #12
  br label %23

20:                                               ; preds = %8, %3
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 221
  %22 = zext i1 %7 to i8
  store i8 %22, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %17, %14
  %24 = phi i32 [ 0, %20 ], [ -22, %17 ], [ -22, %14 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_g_fbuf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  store i32 255, ptr %2, align 4
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 228
  %8 = load i32, ptr %7, align 8
  %9 = or i32 %8, 2
  %10 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 141
  %12 = load i32, ptr %11, align 8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 2
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 144
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 145
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 3, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 150, i32 9, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 5
  %24 = select i1 %23, i32 892424769, i32 1346520914
  %25 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 3, i32 2
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 146
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 3, i32 4
  store i32 %27, ptr %28, align 4
  %29 = mul i32 %27, %19
  %30 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 3, i32 5
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 3, i32 3
  store i32 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 3, i32 6
  store i32 8, ptr %32, align 4
  %33 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 3, i32 7
  store i32 0, ptr %33, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_s_fbuf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 68
  %10 = icmp eq i32 %9, 68
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = lshr i32 %8, 3
  %13 = and i32 %12, 7
  switch i32 %13, label %21 [
    i32 0, label %14
    i32 2, label %14
    i32 1, label %14
    i32 4, label %14
  ]

14:                                               ; preds = %11, %11, %11, %11
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 228
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, -125
  store i32 %17, ptr %15, align 8
  %18 = load i32, ptr %7, align 4
  %19 = and i32 %18, 124
  %20 = or i32 %19, %17
  store i32 %20, ptr %15, align 8
  br label %21

21:                                               ; preds = %14, %11, %3
  %22 = phi i32 [ 0, %14 ], [ -22, %3 ], [ -22, %11 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_enum_output(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 8
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 55
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.v4l2_output, ptr %2, i32 0, i32 2
  store i32 2, ptr %12, align 4
  %13 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %7
  %14 = load i8, ptr %13, align 1
  switch i8 %14, label %36 [
    i8 2, label %15
    i8 3, label %27
  ]

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.v4l2_output, ptr %2, i32 0, i32 1
  %17 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 58, i32 %7
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %19)
  %21 = getelementptr inbounds %struct.v4l2_output, ptr %2, i32 0, i32 5
  store i64 16777215, ptr %21, align 8
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 60
  %23 = load i8, ptr %22, align 1, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.v4l2_output, ptr %2, i32 0, i32 3
  store i32 3, ptr %26, align 8
  br label %33

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.v4l2_output, ptr %2, i32 0, i32 1
  %29 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 58, i32 %7
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %28, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %31)
  br label %33

33:                                               ; preds = %27, %25, %15
  %34 = phi i32 [ 2, %27 ], [ 4, %25 ], [ 4, %15 ]
  %35 = getelementptr inbounds %struct.v4l2_output, ptr %2, i32 0, i32 6
  store i32 %34, ptr %35, align 8
  br label %36

36:                                               ; preds = %33, %11, %3
  %37 = phi i32 [ -22, %3 ], [ 0, %11 ], [ 0, %33 ]
  ret i32 %37
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_output(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 199
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_output(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 55
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %2
  br i1 %9, label %10, label %50

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 199
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %50, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 286, i32 21
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 288, i32 21
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 290, i32 21
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  store i32 %2, ptr %11, align 4
  %27 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 210
  store i32 0, ptr %27, align 4
  %28 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %2
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 2
  %31 = select i1 %30, i64 16777215, i64 0
  %32 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 20, i32 22
  store i64 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 24, i32 22
  store i64 %31, ptr %33, align 8
  %34 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 34, i32 22
  store i64 %31, ptr %34, align 8
  tail call void @vivid_update_format_out(ptr noundef %6)
  %35 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 101
  %36 = load ptr, ptr %35, align 8
  %37 = load i32, ptr %11, align 4
  %38 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %37
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 3
  tail call void @v4l2_ctrl_activate(ptr noundef %36, i1 noundef zeroext %40) #13
  %41 = load i32, ptr %11, align 4
  %42 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 3
  br i1 %44, label %45, label %50

45:                                               ; preds = %26
  %46 = load ptr, ptr %35, align 8
  %47 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 219, i32 %41
  %48 = load i8, ptr %47, align 1, !range !8
  %49 = zext i8 %48 to i32
  tail call fastcc void @v4l2_ctrl_s_ctrl(ptr noundef %46, i32 noundef %49)
  br label %50

50:                                               ; preds = %45, %26, %22, %18, %14, %10, %3
  %51 = phi i32 [ -22, %3 ], [ 0, %10 ], [ -16, %22 ], [ -16, %18 ], [ -16, %14 ], [ 0, %45 ], [ 0, %26 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @v4l2_ctrl_s_ctrl(ptr noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @mutex_lock(ptr noundef %6) #13
  %7 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %0, i32 noundef %1) #13
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef %10) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @vidioc_enumaudout(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #9 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = getelementptr [2 x %struct.v4l2_audioout], ptr @vivid_audio_outputs, i32 0, i32 %4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %2, ptr noundef align 4 dereferenceable(52) %7, i32 52, i1 false)
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_audout(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 199
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 210
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr [2 x %struct.v4l2_audioout], ptr @vivid_audio_outputs, i32 0, i32 %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %2, ptr noundef align 4 dereferenceable(52) %15, i32 52, i1 false)
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i32 [ 0, %12 ], [ -22, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_audout(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 199
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, ptr %2, align 4
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 210
  store i32 %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %12, %3
  %18 = phi i32 [ 0, %15 ], [ -22, %3 ], [ -22, %12 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_s_std(ptr noundef %0, ptr nocapture noundef readnone %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 199
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 200
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %14, %2
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 286, i32 21
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 288, i32 21
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i64 %2, ptr %13, align 8
  tail call void @vivid_update_format_out(ptr noundef %6)
  br label %25

25:                                               ; preds = %24, %20, %16, %12, %3
  %26 = phi i32 [ 0, %24 ], [ -61, %3 ], [ 0, %12 ], [ -16, %20 ], [ -16, %16 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_s_dv_timings(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 199
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 3
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = tail call zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef %2, ptr noundef nonnull @vivid_dv_timings_cap, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 15
  %16 = load i32, ptr %15, align 1
  %17 = and i32 %16, 12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = tail call zeroext i1 @v4l2_valid_dv_timings(ptr noundef %2, ptr noundef nonnull @vivid_dv_timings_cap, ptr noundef null, ptr noundef null) #13
  br i1 %20, label %21, label %29

21:                                               ; preds = %19, %12
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 201
  %23 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %2, ptr noundef %22, i32 noundef 0, i1 noundef zeroext true) #13
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 286, i32 21
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(132) %22, ptr noundef align 1 dereferenceable(132) %2, i32 132, i1 false)
  tail call void @vivid_update_format_out(ptr noundef %6)
  br label %29

29:                                               ; preds = %28, %24, %21, %19, %14, %3
  %30 = phi i32 [ 0, %28 ], [ -61, %3 ], [ 0, %21 ], [ -16, %24 ], [ -22, %14 ], [ -22, %19 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_match_dv_timings(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_out_g_parm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %9 = load i8, ptr %8, align 8, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 2, i32 10
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1
  store i32 4096, ptr %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 279
  %17 = load i64, ptr %16, align 4
  store i64 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %13 ], [ -22, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_subscribe_event(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 5
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = tail call i32 @v4l2_src_change_event_subscribe(ptr noundef %0, ptr noundef %1) #13
  br label %15

13:                                               ; preds = %2
  %14 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %0, ptr noundef %1) #13
  br label %15

15:                                               ; preds = %13, %11, %5
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ], [ -22, %5 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subscribe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vivid_vid_can_loop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_start_generating_vid_out(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_stop_generating_vid_out(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_valid_dv_timings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind readonly }
attributes #16 = { nounwind allocsize(0) }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2149196587}
!13 = !{i64 2149192411}
!14 = !{i64 2149192486, i64 2149192513, i64 2149192560, i64 2149192582, i64 2149192610, i64 2149192630}
!15 = !{i64 2149219590}
!16 = !{i64 873708, i64 873735, i64 873757, i64 873785}
!17 = !{i64 874116, i64 874143, i64 874176, i64 874197, i64 874224, i64 874250}
!18 = !{i64 2151271477, i64 2151271502}
!19 = !{i64 3767011}
!20 = !{i64 3767208}
!21 = !{i64 2151252487}
!22 = !{i64 2151270899, i64 2151270924}
!23 = !{!"branch_weights", i32 2000, i32 1}
