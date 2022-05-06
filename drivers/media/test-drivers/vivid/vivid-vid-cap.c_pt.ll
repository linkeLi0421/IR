; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-vid-cap.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-vid-cap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_frmsize_discrete = type { i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vivid_fmt = type { i32, i32, i8, [3 x i8], i32, i8, i8, [3 x i32], [3 x i32] }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.84 }
%union.anon.84 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.v4l2_dv_timings = type { i32, %union.anon.82 }
%union.anon.82 = type { [32 x i32] }
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
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.92, i32, i32 }
%union.anon.92 = type { i32 }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.72, i32 }
%union.anon.72 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vivid_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.79, %union.anon.80, i32, ptr, i32, %struct.anon.81, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.79 = type { i64 }
%union.anon.80 = type { ptr }
%struct.anon.81 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], ptr }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.98, [2 x i32] }
%union.anon.98 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.99, [2 x i32] }
%union.anon.99 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.v4l2_streamparm = type { i32, %union.anon.100 }
%union.anon.100 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }

@vivid_vid_cap_qops = dso_local local_unnamed_addr constant %struct.vb2_ops { ptr @vid_cap_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @vid_cap_buf_prepare, ptr @vid_cap_buf_finish, ptr null, ptr @vid_cap_start_streaming, ptr @vid_cap_stop_streaming, ptr @vid_cap_buf_queue, ptr @vid_cap_buf_request_complete }, align 4
@webcam_sizes = internal constant [6 x %struct.v4l2_frmsize_discrete] [%struct.v4l2_frmsize_discrete { i32 320, i32 180 }, %struct.v4l2_frmsize_discrete { i32 640, i32 360 }, %struct.v4l2_frmsize_discrete { i32 640, i32 480 }, %struct.v4l2_frmsize_discrete { i32 1280, i32 720 }, %struct.v4l2_frmsize_discrete { i32 1920, i32 1080 }, %struct.v4l2_frmsize_discrete { i32 3840, i32 2160 }], align 4
@webcam_intervals = internal unnamed_addr constant [12 x %struct.v4l2_fract] [%struct.v4l2_fract { i32 1, i32 1 }, %struct.v4l2_fract { i32 1, i32 2 }, %struct.v4l2_fract { i32 1, i32 4 }, %struct.v4l2_fract { i32 1, i32 5 }, %struct.v4l2_fract { i32 1, i32 10 }, %struct.v4l2_fract { i32 2, i32 25 }, %struct.v4l2_fract { i32 1, i32 15 }, %struct.v4l2_fract { i32 1, i32 25 }, %struct.v4l2_fract { i32 1, i32 30 }, %struct.v4l2_fract { i32 1, i32 40 }, %struct.v4l2_fract { i32 1, i32 50 }, %struct.v4l2_fract { i32 1, i32 60 }], align 4
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [39 x i8] c"\017%s: Fourcc format (0x%08x) unknown.\0A\00", align 1
@vivid_min_rect = external dso_local local_unnamed_addr constant %struct.v4l2_rect, align 4
@vivid_max_rect = external dso_local local_unnamed_addr constant %struct.v4l2_rect, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"\017%s: %s device busy\0A\00", align 1
@__func__.vivid_s_fmt_vid_cap = private unnamed_addr constant [20 x i8] c"vivid_s_fmt_vid_cap\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\017%s: overlay is active, can't change pixelformat\0A\00", align 1
@formats_ovl = internal unnamed_addr constant [3 x %struct.vivid_fmt] [%struct.vivid_fmt { i32 1346520914, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892424792, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892424769, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }], align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"\017%s: mismatch between overlay and video capture pixelformats\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Webcam %u\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"TV %u\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"S-Video %u\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"HDMI %u\00", align 1
@vivid_audio_inputs = internal unnamed_addr constant [2 x %struct.v4l2_audio] [%struct.v4l2_audio { i32 0, [32 x i8] c"TV\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, [2 x i32] zeroinitializer }, %struct.v4l2_audio { i32 1, [32 x i8] c"Line-In\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, [2 x i32] zeroinitializer }], align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"TV Tuner\00", align 1
@vivid_standard = dso_local local_unnamed_addr constant [16 x i64] [i64 4096, i64 8192, i64 32768, i64 16384, i64 15, i64 16, i64 224, i64 256, i64 512, i64 1024, i64 2048, i64 851968, i64 3276800, i64 4194304, i64 8388608, i64 0], align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"NTSC-M\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"NTSC-M-JP\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"NTSC-M-KR\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"NTSC-443\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"PAL-BGH\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"PAL-I\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"PAL-DK\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"PAL-M\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"PAL-N\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"PAL-Nc\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"PAL-60\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"SECAM-BGH\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"SECAM-DK\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"SECAM-L\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"SECAM-Lc\00", align 1
@vivid_ctrl_standard_strings = dso_local local_unnamed_addr constant [16 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr null], align 4
@vivid_dv_timings_cap = external dso_local constant %struct.v4l2_dv_timings_cap, align 4
@v4l2_dv_timings_presets = external dso_local local_unnamed_addr constant [0 x %struct.v4l2_dv_timings], align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"\017%s: %s: count=%d\0A\00", align 1
@__func__.vid_cap_queue_setup = private unnamed_addr constant [20 x i8] c"vid_cap_queue_setup\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\017%s: %s: size[%u]=%u\0A\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"\017%s: %s\0A\00", align 1
@__func__.vid_cap_buf_prepare = private unnamed_addr constant [20 x i8] c"vid_cap_buf_prepare\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"drivers/media/test-drivers/vivid/vivid-vid-cap.c\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"\017%s: %s data will not fit into plane %u (%lu < %lu)\0A\00", align 1
@__func__.vid_cap_start_streaming = private unnamed_addr constant [24 x i8] c"vid_cap_start_streaming\00", align 1
@__func__.vid_cap_stop_streaming = private unnamed_addr constant [23 x i8] c"vid_cap_stop_streaming\00", align 1
@__func__.vid_cap_buf_queue = private unnamed_addr constant [18 x i8] c"vid_cap_buf_queue\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@switch.table.vivid_vid_cap_s_selection = private unnamed_addr constant [6 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 1], align 4
@switch.table.vivid_vid_cap_s_selection.32 = private unnamed_addr constant [6 x i32] [i32 2, i32 2, i32 1, i32 1, i32 1, i32 2], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vid_cap_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #0 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 231, i32 33
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 238, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 236
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 7
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 29
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %156

19:                                               ; preds = %15, %5
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 153
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i8 0, ptr %20, align 1
  br label %156

24:                                               ; preds = %19
  %25 = load i32, ptr %2, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = icmp eq i32 %9, 0
  br i1 %28, label %123, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 231, i32 35
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 231, i32 34
  %32 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 234
  br label %80

33:                                               ; preds = %24
  %34 = icmp eq i32 %25, %9
  br i1 %34, label %35, label %156

35:                                               ; preds = %33
  %36 = icmp eq i32 %9, 0
  br i1 %36, label %123, label %37

37:                                               ; preds = %35
  %38 = icmp eq i32 %9, 1
  %39 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 231, i32 35
  %40 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 231, i32 34
  %41 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 234
  %42 = load ptr, ptr %41, align 4
  br label %46

43:                                               ; preds = %73
  %44 = add nuw i32 %47, 1
  %45 = icmp eq i32 %44, %9
  br i1 %45, label %123, label %46

46:                                               ; preds = %43, %37
  %47 = phi i32 [ 0, %37 ], [ %44, %43 ]
  %48 = getelementptr i32, ptr %3, i32 %47
  %49 = load i32, ptr %48, align 4
  br i1 %38, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8, ptr %39, align 4, !range !8
  %52 = icmp eq i8 %51, 0
  br label %56

53:                                               ; preds = %46
  %54 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 231, i32 43, i32 %47
  %55 = load i32, ptr %54, align 4
  br label %73

56:                                               ; preds = %64, %50
  %57 = phi i32 [ %71, %64 ], [ 0, %50 ]
  %58 = phi i32 [ %72, %64 ], [ 0, %50 ]
  br i1 %52, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, ptr %40, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i32 [ %60, %59 ], [ 1, %56 ]
  %63 = icmp ult i32 %58, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 231, i32 43, i32 %58
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 231, i32 36, i32 %58
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = udiv i32 %66, %69
  %71 = add i32 %70, %57
  %72 = add nuw i32 %58, 1
  br label %56

73:                                               ; preds = %61, %53
  %74 = phi i32 [ %55, %53 ], [ %57, %61 ]
  %75 = mul i32 %74, %11
  %76 = getelementptr %struct.vivid_fmt, ptr %42, i32 0, i32 7, i32 %47
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, %75
  %79 = icmp ult i32 %49, %78
  br i1 %79, label %156, label %43

80:                                               ; preds = %121, %29
  %81 = phi i32 [ %9, %29 ], [ %122, %121 ]
  %82 = phi i32 [ 0, %29 ], [ %119, %121 ]
  %83 = icmp ugt i32 %81, 1
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load i8, ptr %30, align 4, !range !8
  %86 = icmp eq i8 %85, 0
  br label %90

87:                                               ; preds = %80
  %88 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 231, i32 43, i32 %82
  %89 = load i32, ptr %88, align 4
  br label %107

90:                                               ; preds = %98, %84
  %91 = phi i32 [ %105, %98 ], [ 0, %84 ]
  %92 = phi i32 [ %106, %98 ], [ 0, %84 ]
  br i1 %86, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, ptr %31, align 4
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi i32 [ %94, %93 ], [ 1, %90 ]
  %97 = icmp ult i32 %92, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 231, i32 43, i32 %92
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 231, i32 36, i32 %92
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = udiv i32 %100, %103
  %105 = add i32 %104, %91
  %106 = add nuw i32 %92, 1
  br label %90

107:                                              ; preds = %95, %87
  %108 = phi i32 [ %89, %87 ], [ %91, %95 ]
  %109 = mul i32 %108, %11
  %110 = load ptr, ptr %32, align 4
  %111 = getelementptr %struct.vivid_fmt, ptr %110, i32 0, i32 3, i32 %82
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = udiv i32 %109, %113
  %115 = getelementptr %struct.vivid_fmt, ptr %110, i32 0, i32 7, i32 %82
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, %114
  %118 = getelementptr i32, ptr %3, i32 %82
  store i32 %117, ptr %118, align 4
  %119 = add nuw i32 %82, 1
  %120 = icmp eq i32 %119, %9
  br i1 %120, label %123, label %121

121:                                              ; preds = %107
  %122 = load i32, ptr %8, align 4
  br label %80

123:                                              ; preds = %107, %43, %35, %27
  %124 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 21
  %125 = load i32, ptr %124, align 4
  %126 = load i32, ptr %1, align 4
  %127 = add i32 %126, %125
  %128 = icmp ult i32 %127, 2
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = sub i32 2, %125
  store i32 %130, ptr %1, align 4
  br label %131

131:                                              ; preds = %129, %123
  store i32 %9, ptr %2, align 4
  %132 = load i32, ptr @vivid_debug, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 1, i32 4
  %136 = load i32, ptr %1, align 4
  %137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %135, ptr noundef nonnull @__func__.vid_cap_queue_setup, i32 noundef %136) #16
  br label %138

138:                                              ; preds = %134, %131
  %139 = icmp eq i32 %9, 0
  br i1 %139, label %156, label %140

140:                                              ; preds = %138
  %141 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 1, i32 4
  %142 = load i32, ptr @vivid_debug, align 4
  br label %143

143:                                              ; preds = %152, %140
  %144 = phi i32 [ %142, %140 ], [ %153, %152 ]
  %145 = phi i32 [ 0, %140 ], [ %154, %152 ]
  %146 = icmp eq i32 %144, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %143
  %148 = getelementptr i32, ptr %3, i32 %145
  %149 = load i32, ptr %148, align 4
  %150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %141, ptr noundef nonnull @__func__.vid_cap_queue_setup, i32 noundef %145, i32 noundef %149) #16
  %151 = load i32, ptr @vivid_debug, align 4
  br label %152

152:                                              ; preds = %147, %143
  %153 = phi i32 [ 0, %143 ], [ %151, %147 ]
  %154 = add nuw i32 %145, 1
  %155 = icmp eq i32 %154, %9
  br i1 %155, label %156, label %143

156:                                              ; preds = %152, %138, %73, %33, %23, %15
  %157 = phi i32 [ -22, %23 ], [ -22, %15 ], [ -22, %33 ], [ 0, %138 ], [ 0, %152 ], [ -22, %73 ]
  ret i32 %157
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vid_cap_buf_prepare(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 231, i32 33
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr @vivid_debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %10, ptr noundef nonnull @__func__.vid_cap_buf_prepare) #16
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 234
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !9

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 148, i32 noundef 9, ptr noundef null) #17
  br label %96

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 154
  %19 = load i8, ptr %18, align 2, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = icmp eq i32 %6, 0
  br i1 %22, label %96, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 231, i32 35
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 231, i32 34
  %26 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 238, i32 3
  %27 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 8
  br label %30

29:                                               ; preds = %17
  store i8 0, ptr %18, align 2
  br label %96

30:                                               ; preds = %91, %23
  %31 = phi i32 [ 0, %23 ], [ %94, %91 ]
  %32 = load i32, ptr %5, align 4
  %33 = icmp ugt i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr %24, align 4, !range !8
  %36 = icmp eq i8 %35, 0
  br label %40

37:                                               ; preds = %30
  %38 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 231, i32 43, i32 %31
  %39 = load i32, ptr %38, align 4
  br label %57

40:                                               ; preds = %48, %34
  %41 = phi i32 [ %55, %48 ], [ 0, %34 ]
  %42 = phi i32 [ %56, %48 ], [ 0, %34 ]
  br i1 %36, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, ptr %25, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i32 [ %44, %43 ], [ 1, %40 ]
  %47 = icmp ult i32 %42, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 231, i32 43, i32 %42
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 231, i32 36, i32 %42
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = udiv i32 %50, %53
  %55 = add i32 %54, %41
  %56 = add nuw i32 %42, 1
  br label %40

57:                                               ; preds = %45, %37
  %58 = phi i32 [ %39, %37 ], [ %41, %45 ]
  %59 = load i32, ptr %26, align 4
  %60 = mul i32 %59, %58
  %61 = load ptr, ptr %13, align 4
  %62 = getelementptr %struct.vivid_fmt, ptr %61, i32 0, i32 3, i32 %31
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = udiv i32 %60, %64
  %66 = getelementptr %struct.vivid_fmt, ptr %61, i32 0, i32 7, i32 %31
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, %65
  %69 = icmp ugt i32 %28, %31
  br i1 %69, label %70, label %74

70:                                               ; preds = %57
  %71 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %31, i32 4
  %72 = load i32, ptr %71, align 8
  %73 = icmp ult i32 %72, %68
  br i1 %73, label %76, label %86

74:                                               ; preds = %57
  %75 = icmp eq i32 %68, 0
  br i1 %75, label %91, label %79

76:                                               ; preds = %70
  %77 = load i32, ptr @vivid_debug, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %96, label %82

79:                                               ; preds = %74
  %80 = load i32, ptr @vivid_debug, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %79, %76
  %83 = phi i32 [ 0, %79 ], [ %72, %76 ]
  %84 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %84, ptr noundef nonnull @__func__.vid_cap_buf_prepare, i32 noundef %31, i32 noundef %83, i32 noundef %68) #16
  br label %96

86:                                               ; preds = %70
  %87 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %31, i32 3
  store i32 %68, ptr %87, align 4
  %88 = load ptr, ptr %13, align 4
  %89 = getelementptr %struct.vivid_fmt, ptr %88, i32 0, i32 7, i32 %31
  %90 = load i32, ptr %89, align 4
  br label %91

91:                                               ; preds = %86, %74
  %92 = phi i32 [ %67, %74 ], [ %90, %86 ]
  %93 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %31, i32 7
  store i32 %92, ptr %93, align 4
  %94 = add nuw i32 %31, 1
  %95 = icmp eq i32 %94, %6
  br i1 %95, label %96, label %30

96:                                               ; preds = %91, %82, %79, %76, %29, %21, %16
  %97 = phi i32 [ -22, %16 ], [ -22, %29 ], [ -22, %82 ], [ -22, %76 ], [ -22, %79 ], [ 0, %21 ], [ 0, %91 ]
  ret i32 %97
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @vid_cap_buf_finish(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 173
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 53, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = add i8 %8, -1
  %10 = icmp ult i8 %9, 2
  br i1 %10, label %11, label %47

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 3
  %15 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = or i32 %16, 256
  store i32 %17, ptr %15, align 8
  %18 = load i32, ptr %5, align 4
  %19 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 174, i32 %18
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 63744
  %22 = icmp eq i64 %21, 0
  %23 = select i1 %22, i32 2, i32 3
  %24 = select i1 %22, i32 25, i32 30
  store i32 %23, ptr %14, align 4
  %25 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 3, i32 1
  store i32 0, ptr %25, align 4
  %26 = freeze i32 %13
  %27 = freeze i32 %24
  %28 = udiv i32 %26, %27
  %29 = mul i32 %28, %27
  %30 = sub i32 %26, %29
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 3, i32 2
  store i8 %31, ptr %32, align 4
  %33 = urem i32 %28, 60
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 3, i32 3
  store i8 %34, ptr %35, align 1
  %36 = mul nuw nsw i32 %24, 60
  %37 = udiv i32 %13, %36
  %38 = urem i32 %37, 60
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 3, i32 4
  store i8 %39, ptr %40, align 2
  %41 = mul nuw nsw i32 %24, 3600
  %42 = udiv i32 %13, %41
  %43 = trunc i32 %42 to i16
  %44 = urem i16 %43, 24
  %45 = trunc i16 %44 to i8
  %46 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 3, i32 5
  store i8 %45, ptr %46, align 1
  br label %47

47:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vid_cap_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 286, i32 28
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = tail call zeroext i1 @vivid_vid_can_loop(ptr noundef %4) #17
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 77
  %12 = zext i1 %10 to i8
  store i8 %12, ptr %11, align 2
  br label %13

13:                                               ; preds = %9, %2
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 259
  store i32 0, ptr %14, align 8
  %15 = load i32, ptr @vivid_debug, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %18, ptr noundef nonnull @__func__.vid_cap_start_streaming) #16
  br label %20

20:                                               ; preds = %17, %13
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 231, i32 47
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, 100
  %24 = zext i1 %23 to i8
  %25 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 0
  store i8 %24, ptr %25, align 1
  %26 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 1
  store i8 %24, ptr %26, align 1
  %27 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 2
  store i8 %24, ptr %27, align 1
  %28 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 3
  store i8 %24, ptr %28, align 1
  %29 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 4
  store i8 %24, ptr %29, align 1
  %30 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 5
  store i8 %24, ptr %30, align 1
  %31 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 6
  store i8 %24, ptr %31, align 1
  %32 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 7
  store i8 %24, ptr %32, align 1
  %33 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 8
  store i8 %24, ptr %33, align 1
  %34 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 9
  store i8 %24, ptr %34, align 1
  %35 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 10
  store i8 %24, ptr %35, align 1
  %36 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 11
  store i8 %24, ptr %36, align 1
  %37 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 12
  store i8 %24, ptr %37, align 1
  %38 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 13
  store i8 %24, ptr %38, align 1
  %39 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 14
  store i8 %24, ptr %39, align 1
  %40 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 15
  store i8 %24, ptr %40, align 1
  %41 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 16
  store i8 %24, ptr %41, align 1
  %42 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 17
  store i8 %24, ptr %42, align 1
  %43 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 18
  store i8 %24, ptr %43, align 1
  %44 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 19
  store i8 %24, ptr %44, align 1
  %45 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 20
  store i8 %24, ptr %45, align 1
  %46 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 21
  store i8 %24, ptr %46, align 1
  %47 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 22
  store i8 %24, ptr %47, align 1
  %48 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 23
  store i8 %24, ptr %48, align 1
  %49 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 24
  store i8 %24, ptr %49, align 1
  %50 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 25
  store i8 %24, ptr %50, align 1
  %51 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 26
  store i8 %24, ptr %51, align 1
  %52 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 27
  store i8 %24, ptr %52, align 1
  %53 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 28
  store i8 %24, ptr %53, align 1
  %54 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 29
  store i8 %24, ptr %54, align 1
  %55 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 30
  store i8 %24, ptr %55, align 1
  %56 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 233, i32 31
  store i8 %24, ptr %56, align 1
  %57 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 155
  %58 = load i8, ptr %57, align 1, !range !8
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %20
  store i8 0, ptr %57, align 1
  br label %65

61:                                               ; preds = %20
  %62 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 260
  %63 = tail call i32 @vivid_start_generating_vid_cap(ptr noundef %4, ptr noundef %62) #17
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %61, %60
  %66 = phi i32 [ -22, %60 ], [ %63, %61 ]
  %67 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 243
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, %67
  br i1 %69, label %78, label %70

70:                                               ; preds = %70, %65
  %71 = phi ptr [ %73, %70 ], [ %68, %65 ]
  %72 = getelementptr i8, ptr %71, i32 -640
  %73 = load ptr, ptr %71, align 8
  %74 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  store ptr %75, ptr %76, align 4
  store volatile ptr %73, ptr %75, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %71, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %74, align 4
  tail call void @vb2_buffer_done(ptr noundef %72, i32 noundef 3) #17
  %77 = icmp eq ptr %73, %67
  br i1 %77, label %78, label %70

78:                                               ; preds = %70, %65, %61
  %79 = phi i32 [ 0, %61 ], [ %66, %65 ], [ %66, %70 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vid_cap_stop_streaming(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @vivid_debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %7, ptr noundef nonnull @__func__.vid_cap_stop_streaming) #16
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 260
  tail call void @vivid_stop_generating_vid_cap(ptr noundef %3, ptr noundef %10) #17
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 77
  store i8 0, ptr %11, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vid_cap_buf_queue(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %8, ptr noundef nonnull @__func__.vid_cap_buf_queue) #16
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %11) #17
  %12 = getelementptr inbounds %struct.vivid_buffer, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 243
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 243, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %12, ptr %14, align 4
  store ptr %13, ptr %12, align 4
  %16 = getelementptr inbounds %struct.vivid_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %12, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %17 = load i16, ptr %11, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vid_cap_buf_request_complete(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 7, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 19
  tail call void @v4l2_ctrl_request_complete(ptr noundef %6, ptr noundef %7) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @vivid_update_quality(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 139
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp ne i8 %3, 0
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 173
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 53, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, -2
  %10 = icmp eq i8 %9, 2
  %11 = select i1 %4, i1 %10, i1 false
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %107, label %20

20:                                               ; preds = %16, %12
  store i32 2, ptr %13, align 4
  br label %103

21:                                               ; preds = %1
  %22 = icmp eq i8 %8, 3
  br i1 %22, label %23, label %37

23:                                               ; preds = %21
  %24 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 166, i32 %6
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -1
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %28, label %56

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 11
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %107, label %36

36:                                               ; preds = %32, %28
  store i32 2, ptr %29, align 4
  br label %103

37:                                               ; preds = %21
  %38 = add i8 %8, -1
  %39 = icmp ult i8 %38, 2
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 162, i32 %6
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, -1
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 10
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 11
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %107, label %53

53:                                               ; preds = %49, %45
  store i32 2, ptr %46, align 4
  br label %103

54:                                               ; preds = %40
  %55 = icmp eq i8 %8, 1
  br i1 %55, label %65, label %56

56:                                               ; preds = %54, %37, %23
  %57 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 10
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 11
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %107, label %64

64:                                               ; preds = %60, %56
  store i32 0, ptr %57, align 4
  br label %103

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 184
  %67 = load i32, ptr %66, align 8
  %68 = add i32 %67, -676
  %69 = urem i32 %68, 96
  %70 = icmp ugt i32 %69, 32
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = xor i32 %67, 21
  %73 = mul i32 %72, 13
  %74 = add i32 %73, 31
  %75 = and i32 %74, 63
  %76 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 10
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 11
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, %75
  br i1 %82, label %107, label %83

83:                                               ; preds = %79, %71
  store i32 2, ptr %76, align 4
  br label %103

84:                                               ; preds = %65
  %85 = add nsw i32 %69, -21
  %86 = icmp ult i32 %85, -9
  %87 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 10
  %88 = load i32, ptr %87, align 4
  br i1 %86, label %89, label %96

89:                                               ; preds = %84
  %90 = icmp eq i32 %88, 1
  br i1 %90, label %91, label %95

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 11
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %91, %89
  store i32 1, ptr %87, align 4
  br label %103

96:                                               ; preds = %84
  %97 = icmp eq i32 %88, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 11
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %98, %96
  store i32 0, ptr %87, align 4
  br label %103

103:                                              ; preds = %102, %95, %83, %64, %53, %36, %20
  %104 = phi i32 [ 0, %102 ], [ 0, %95 ], [ %75, %83 ], [ 0, %64 ], [ 0, %53 ], [ 0, %36 ], [ 0, %20 ]
  %105 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 11
  store i32 %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 59
  store i8 1, ptr %106, align 4
  br label %107

107:                                              ; preds = %103, %98, %91, %79, %60, %49, %32, %16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @vivid_get_video_aspect(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 173
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 53, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = add i8 %5, -1
  %7 = icmp ult i8 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 165, i32 %3
  br label %14

10:                                               ; preds = %1
  %11 = icmp eq i8 %5, 3
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 172, i32 %3
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %13, %12 ], [ %9, %8 ]
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i32 [ 0, %10 ], [ %16, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_update_format_cap(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 173
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 175, i32 %4, i32 1
  %6 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 53, i32 %4
  %7 = load i8, ptr %6, align 1
  switch i8 %7, label %8 [
    i8 3, label %50
    i8 1, label %27
    i8 2, label %27
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 182
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr [6 x %struct.v4l2_frmsize_discrete], ptr @webcam_sizes, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 237, i32 2
  store i32 %12, ptr %13, align 4
  %14 = getelementptr [6 x %struct.v4l2_frmsize_discrete], ptr @webcam_sizes, i32 0, i32 %10, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 237, i32 3
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 235
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 183
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr [12 x %struct.v4l2_fract], ptr @webcam_intervals, i32 0, i32 %19
  %21 = load i64, ptr %20, align 4
  store i64 %21, ptr %17, align 8
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 236
  store i32 1, ptr %22, align 8
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 31
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %199, label %26

26:                                               ; preds = %8
  store i32 0, ptr %23, align 4
  br label %197

27:                                               ; preds = %2, %2
  %28 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 186
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 236
  store i32 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 237, i32 2
  store i32 720, ptr %31, align 4
  %32 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 174, i32 %4
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 63744
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %27
  %38 = phi i32 [ 576, %36 ], [ 480, %27 ]
  %39 = phi i32 [ 1000, %36 ], [ 1001, %27 ]
  %40 = phi i32 [ 25000, %36 ], [ 30000, %27 ]
  %41 = phi i32 [ 16385, %36 ], [ 4096, %27 ]
  %42 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 237, i32 3
  store i32 %38, ptr %42, align 4
  %43 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 235
  store i32 %39, ptr %43, align 8
  %44 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 235, i32 1
  store i32 %40, ptr %44, align 4
  %45 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 177
  store i32 %41, ptr %45, align 8
  %46 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 31
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %199, label %49

49:                                               ; preds = %37
  store i32 0, ptr %46, align 4
  br label %197

50:                                               ; preds = %2
  %51 = load i32, ptr %5, align 1
  %52 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 237, i32 2
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 1
  %54 = load i32, ptr %53, align 1
  %55 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 237, i32 3
  store i32 %54, ptr %55, align 4
  %56 = load i32, ptr %5, align 1
  %57 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 5
  %58 = load i32, ptr %57, align 1
  %59 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 6
  %60 = load i32, ptr %59, align 1
  %61 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 7
  %62 = load i32, ptr %61, align 1
  %63 = add i32 %58, %56
  %64 = add i32 %63, %60
  %65 = add i32 %64, %62
  %66 = load i32, ptr %53, align 1
  %67 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 8
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 9
  %70 = load i32, ptr %69, align 1
  %71 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 10
  %72 = load i32, ptr %71, align 1
  %73 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 11
  %74 = load i32, ptr %73, align 1
  %75 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 12
  %76 = load i32, ptr %75, align 1
  %77 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 13
  %78 = load i32, ptr %77, align 1
  %79 = add i32 %68, %66
  %80 = add i32 %79, %70
  %81 = add i32 %80, %72
  %82 = add i32 %81, %74
  %83 = add i32 %82, %76
  %84 = add i32 %83, %78
  %85 = mul i32 %84, %65
  %86 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 140
  %87 = load i8, ptr %86, align 2, !range !8
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %118, label %89

89:                                               ; preds = %50
  %90 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 14
  %91 = load i32, ptr %90, align 1
  %92 = and i32 %91, 4
  %93 = icmp ne i32 %92, 0
  %94 = icmp eq i32 %70, 8
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %104, label %96

96:                                               ; preds = %89
  %97 = and i32 %91, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %118, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 15
  %101 = load i32, ptr %100, align 1
  %102 = and i32 %101, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %118, label %104

104:                                              ; preds = %99, %89
  %105 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 4
  %106 = load i64, ptr %105, align 1
  %107 = mul i64 %106, 1000
  %108 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9011446405638332408, i64 %107, i32 0) #18, !srcloc !14
  %109 = extractvalue { i64, i32 } %108, 0
  %110 = extractvalue { i64, i32 } %108, 1
  %111 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9011446405638332408, i64 %107, i64 %109, i32 %110) #18, !srcloc !15
  %112 = extractvalue { i64, i32 } %111, 0
  %113 = lshr i64 %112, 9
  %114 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 15
  %115 = load i32, ptr %114, align 1
  %116 = or i32 %115, 4
  store i32 %116, ptr %114, align 1
  %117 = trunc i64 %113 to i32
  br label %125

118:                                              ; preds = %99, %96, %50
  %119 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 4
  %120 = load i64, ptr %119, align 1
  %121 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 15
  %122 = load i32, ptr %121, align 1
  %123 = and i32 %122, -5
  store i32 %123, ptr %121, align 1
  %124 = trunc i64 %120 to i32
  br label %125

125:                                              ; preds = %118, %104
  %126 = phi i32 [ %124, %118 ], [ %117, %104 ]
  %127 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 235
  %128 = udiv i32 %85, 100
  %129 = udiv i32 %126, 100
  store i32 %128, ptr %127, align 8
  %130 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 235, i32 1
  store i32 %129, ptr %130, align 4
  %131 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 2
  %132 = load i32, ptr %131, align 1
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, i32 1, i32 7
  %135 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 236
  store i32 %134, ptr %135, align 8
  br i1 %1, label %199, label %136

136:                                              ; preds = %125
  %137 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 96
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %199, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %5, i32 0, i32 15
  %142 = load i32, ptr %141, align 1
  %143 = and i32 %142, 16
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %169, label %145

145:                                              ; preds = %140
  %146 = load i32, ptr %5, align 1
  %147 = icmp eq i32 %146, 720
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i32, ptr %53, align 1
  %150 = icmp ult i32 %149, 577
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  tail call fastcc void @v4l2_ctrl_s_ctrl(ptr noundef nonnull %138, i32 noundef 0)
  br label %161

152:                                              ; preds = %148, %145
  %153 = getelementptr inbounds %struct.v4l2_ctrl, ptr %138, i32 0, i32 2
  %154 = load ptr, ptr %153, align 8
  %155 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %154, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  tail call void @mutex_lock(ptr noundef %156) #17
  %157 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %138, i32 noundef 1) #17
  %158 = load ptr, ptr %153, align 8
  %159 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %158, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  tail call void @mutex_unlock(ptr noundef %160) #17
  br label %161

161:                                              ; preds = %152, %151
  %162 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 98
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.v4l2_ctrl, ptr %163, i32 0, i32 2
  %165 = load ptr, ptr %164, align 8
  %166 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %165, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  tail call void @mutex_lock(ptr noundef %167) #17
  %168 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %163, i32 noundef 1) #17
  br label %185

169:                                              ; preds = %140
  %170 = getelementptr inbounds %struct.v4l2_ctrl, ptr %138, i32 0, i32 2
  %171 = load ptr, ptr %170, align 8
  %172 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %171, i32 0, i32 1
  %173 = load ptr, ptr %172, align 4
  tail call void @mutex_lock(ptr noundef %173) #17
  %174 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %138, i32 noundef 2) #17
  %175 = load ptr, ptr %170, align 8
  %176 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %175, i32 0, i32 1
  %177 = load ptr, ptr %176, align 4
  tail call void @mutex_unlock(ptr noundef %177) #17
  %178 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 98
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.v4l2_ctrl, ptr %179, i32 0, i32 2
  %181 = load ptr, ptr %180, align 8
  %182 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %181, i32 0, i32 1
  %183 = load ptr, ptr %182, align 4
  tail call void @mutex_lock(ptr noundef %183) #17
  %184 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %179, i32 noundef 0) #17
  br label %185

185:                                              ; preds = %169, %161
  %186 = phi ptr [ %180, %169 ], [ %164, %161 ]
  %187 = load ptr, ptr %186, align 8
  %188 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %187, i32 0, i32 1
  %189 = load ptr, ptr %188, align 4
  tail call void @mutex_unlock(ptr noundef %189) #17
  %190 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 97
  %191 = load ptr, ptr %190, align 8
  %192 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %191) #17
  %193 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 31
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %194, %192
  br i1 %195, label %199, label %196

196:                                              ; preds = %185
  store i32 %192, ptr %193, align 4
  br label %197

197:                                              ; preds = %196, %49, %26
  %198 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 59
  store i8 1, ptr %198, align 4
  br label %199

199:                                              ; preds = %197, %185, %136, %125, %37, %8
  %200 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 195
  %201 = load ptr, ptr %200, align 4
  tail call void @vfree(ptr noundef %201) #17
  store ptr null, ptr %200, align 4
  tail call void @vivid_update_quality(ptr noundef %0)
  %202 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231
  %203 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 237
  %204 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 237, i32 2
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 237, i32 3
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 236
  %209 = load i32, ptr %208, align 8
  tail call void @tpg_reset_source(ptr noundef %202, i32 noundef %205, i32 noundef %207, i32 noundef %209) #17
  %210 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 239
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %210, ptr noundef align 4 dereferenceable(16) %203, i32 16, i1 false)
  %211 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 241
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %211, ptr noundef align 4 dereferenceable(16) %203, i32 16, i1 false)
  %212 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 240
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %212, ptr noundef align 4 dereferenceable(16) %203, i32 16, i1 false)
  %213 = load i32, ptr %208, align 8
  switch i32 %213, label %218 [
    i32 3, label %214
    i32 2, label %214
    i32 7, label %214
  ]

214:                                              ; preds = %199, %199, %199
  %215 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 240, i32 3
  %216 = load i32, ptr %215, align 4
  %217 = lshr i32 %216, 1
  store i32 %217, ptr %215, align 4
  br label %218

218:                                              ; preds = %214, %199
  %219 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 238
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %219, ptr noundef align 4 dereferenceable(16) %212, i32 16, i1 false)
  %220 = load i32, ptr %3, align 4
  %221 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 53, i32 %220
  %222 = load i8, ptr %221, align 1
  %223 = add i8 %222, -1
  %224 = icmp ult i8 %223, 2
  br i1 %224, label %225, label %227

225:                                              ; preds = %218
  %226 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 165, i32 %220
  br label %231

227:                                              ; preds = %218
  %228 = icmp eq i8 %222, 3
  br i1 %228, label %229, label %234

229:                                              ; preds = %227
  %230 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 172, i32 %220
  br label %231

231:                                              ; preds = %229, %225
  %232 = phi ptr [ %230, %229 ], [ %226, %225 ]
  %233 = load i32, ptr %232, align 4
  br label %234

234:                                              ; preds = %231, %227
  %235 = phi i32 [ 0, %227 ], [ %233, %231 ]
  %236 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 29
  %237 = load i32, ptr %236, align 4
  %238 = icmp eq i32 %237, %235
  br i1 %238, label %243, label %239

239:                                              ; preds = %234
  store i32 %235, ptr %236, align 4
  %240 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 61
  store i8 1, ptr %240, align 2
  %241 = load i8, ptr %221, align 1
  %242 = add i8 %241, -1
  br label %243

243:                                              ; preds = %239, %234
  %244 = phi i8 [ %223, %234 ], [ %242, %239 ]
  %245 = phi i8 [ %222, %234 ], [ %241, %239 ]
  %246 = icmp ult i8 %244, 2
  br i1 %246, label %247, label %253

247:                                              ; preds = %243
  %248 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 174, i32 %220
  %249 = load i64, ptr %248, align 8
  %250 = and i64 %249, 63744
  %251 = icmp eq i64 %250, 0
  %252 = select i1 %251, i32 2, i32 1
  br label %264

253:                                              ; preds = %243
  %254 = icmp eq i8 %245, 3
  br i1 %254, label %255, label %264

255:                                              ; preds = %253
  %256 = load i32, ptr %204, align 4
  %257 = icmp eq i32 %256, 720
  br i1 %257, label %258, label %264

258:                                              ; preds = %255
  %259 = load i32, ptr %206, align 4
  %260 = icmp ult i32 %259, 577
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = icmp eq i32 %259, 480
  %263 = select i1 %262, i32 1, i32 2
  br label %264

264:                                              ; preds = %261, %258, %255, %253, %247
  %265 = phi i32 [ %252, %247 ], [ %263, %261 ], [ 0, %258 ], [ 0, %255 ], [ 0, %253 ]
  %266 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 30
  %267 = load i32, ptr %266, align 4
  %268 = icmp eq i32 %267, %265
  br i1 %268, label %271, label %269

269:                                              ; preds = %264
  store i32 %265, ptr %266, align 4
  %270 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 61
  store i8 1, ptr %270, align 2
  br label %271

271:                                              ; preds = %269, %264
  tail call void @tpg_update_mv_step(ptr noundef %202) #17
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @v4l2_ctrl_s_ctrl(ptr noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @mutex_lock(ptr noundef %6) #17
  %7 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %0, i32 noundef %1) #17
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef %10) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_reset_source(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_update_mv_step(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_g_fmt_vid_cap(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 238, i32 2
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %7, align 1
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 238, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %11, ptr %12, align 1
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 236
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 %14, ptr %15, align 1
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 234
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 139
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = icmp ult i8 %27, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %3
  %30 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 20
  br label %33

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 202
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %30, %29 ], [ %32, %31 ]
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %35, ptr %36, align 1
  %37 = load i8, ptr %20, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = icmp ult i8 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %33
  %46 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 21
  br label %49

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 206
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi ptr [ %46, %45 ], [ %48, %47 ]
  %51 = load i32, ptr %50, align 4
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 10
  store i8 %52, ptr %53, align 1
  %54 = load ptr, ptr %16, align 4
  %55 = getelementptr inbounds %struct.vivid_fmt, ptr %54, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 2
  %58 = load i8, ptr %20, align 1, !range !8
  %59 = icmp eq i8 %58, 0
  br i1 %57, label %60, label %71

60:                                               ; preds = %49
  br i1 %59, label %67, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %63
  %65 = load i8, ptr %64, align 1
  %66 = icmp ult i8 %65, 2
  br i1 %66, label %67, label %69

67:                                               ; preds = %61, %60
  %68 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 23
  br label %82

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 204
  br label %82

71:                                               ; preds = %49
  br i1 %59, label %78, label %72

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %74
  %76 = load i8, ptr %75, align 1
  %77 = icmp ult i8 %76, 2
  br i1 %77, label %78, label %80

78:                                               ; preds = %72, %71
  %79 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 22
  br label %82

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 203
  br label %82

82:                                               ; preds = %80, %78, %69, %67
  %83 = phi ptr [ %68, %67 ], [ %70, %69 ], [ %79, %78 ], [ %81, %80 ]
  %84 = load i32, ptr %83, align 4
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 8
  store i8 %85, ptr %86, align 1
  %87 = load i8, ptr %20, align 1, !range !8
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %91
  %93 = load i8, ptr %92, align 1
  %94 = icmp ult i8 %93, 2
  br i1 %94, label %95, label %97

95:                                               ; preds = %89, %82
  %96 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 27
  br label %99

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 205
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi ptr [ %96, %95 ], [ %98, %97 ]
  %101 = load i32, ptr %100, align 4
  %102 = trunc i32 %101 to i8
  %103 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 9
  store i8 %102, ptr %103, align 1
  %104 = load ptr, ptr %16, align 4
  %105 = getelementptr inbounds %struct.vivid_fmt, ptr %104, i32 0, i32 6
  %106 = load i8, ptr %105, align 1
  %107 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 6
  store i8 %106, ptr %107, align 1
  %108 = icmp eq i8 %106, 0
  br i1 %108, label %159, label %109

109:                                              ; preds = %99
  %110 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 33
  %111 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 35
  %112 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 34
  br label %113

113:                                              ; preds = %143, %109
  %114 = phi i32 [ 0, %109 ], [ %155, %143 ]
  %115 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 43, i32 %114
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 %114
  %118 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 %114, i32 1
  store i32 %116, ptr %118, align 1
  %119 = load i32, ptr %110, align 4
  %120 = icmp ugt i32 %119, 1
  br i1 %120, label %124, label %121

121:                                              ; preds = %113
  %122 = load i8, ptr %111, align 4, !range !8
  %123 = icmp eq i8 %122, 0
  br label %126

124:                                              ; preds = %113
  %125 = load i32, ptr %115, align 4
  br label %143

126:                                              ; preds = %134, %121
  %127 = phi i32 [ %141, %134 ], [ 0, %121 ]
  %128 = phi i32 [ %142, %134 ], [ 0, %121 ]
  br i1 %123, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, ptr %112, align 4
  br label %131

131:                                              ; preds = %129, %126
  %132 = phi i32 [ %130, %129 ], [ 1, %126 ]
  %133 = icmp ult i32 %128, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 43, i32 %128
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 36, i32 %128
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = udiv i32 %136, %139
  %141 = add i32 %140, %127
  %142 = add nuw i32 %128, 1
  br label %126

143:                                              ; preds = %131, %124
  %144 = phi i32 [ %125, %124 ], [ %127, %131 ]
  %145 = load i32, ptr %12, align 1
  %146 = mul i32 %145, %144
  %147 = load ptr, ptr %16, align 4
  %148 = getelementptr %struct.vivid_fmt, ptr %147, i32 0, i32 3, i32 %114
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = udiv i32 %146, %150
  %152 = getelementptr %struct.vivid_fmt, ptr %147, i32 0, i32 7, i32 %114
  %153 = load i32, ptr %152, align 4
  %154 = add i32 %153, %151
  store i32 %154, ptr %117, align 1
  %155 = add nuw nsw i32 %114, 1
  %156 = load i8, ptr %107, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp ult i32 %155, %157
  br i1 %158, label %113, label %159

159:                                              ; preds = %143, %99
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_try_fmt_vid_cap(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %5 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %6 = tail call ptr @video_devdata(ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 5, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 7
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 2
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %14 = load i32, ptr %13, align 1
  %15 = tail call ptr @vivid_get_format(ptr noundef %8, i32 noundef %14) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i32, ptr @vivid_debug, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 1, i32 4
  %22 = load i32, ptr %13, align 1
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %21, i32 noundef %22) #16
  br label %24

24:                                               ; preds = %20, %17
  store i32 1448695129, ptr %13, align 1
  %25 = tail call ptr @vivid_get_format(ptr noundef %8, i32 noundef 1448695129) #17
  br label %26

26:                                               ; preds = %24, %3
  %27 = phi ptr [ %15, %3 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  %29 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 173
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 53, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = add i8 %32, -1
  %34 = icmp ult i8 %33, 2
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i32, ptr %28, align 1
  %37 = add i32 %36, -2
  %38 = icmp ult i32 %37, 8
  %39 = select i1 %38, i32 %36, i32 4
  br label %47

40:                                               ; preds = %26
  %41 = icmp eq i8 %32, 3
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 175, i32 %30, i32 1, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 1, i32 7
  br label %47

47:                                               ; preds = %42, %40, %35
  %48 = phi i32 [ %46, %42 ], [ 1, %40 ], [ %39, %35 ]
  store i32 %48, ptr %28, align 1
  %49 = load i32, ptr %29, align 4
  %50 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 53, i32 %49
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i32, ptr %4, align 1
  %55 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %56 = load i32, ptr %55, align 1
  %57 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @webcam_sizes, i32 noundef 6, i32 noundef 8, i32 noundef 0, i32 noundef 4, i32 noundef %54, i32 noundef %56) #17
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.v4l2_frmsize_discrete, ptr %57, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = load i32, ptr %28, align 1
  br label %76

62:                                               ; preds = %47
  %63 = add i8 %51, -1
  %64 = icmp ult i8 %63, 2
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 174, i32 %49
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 63744
  %69 = icmp eq i64 %68, 0
  %70 = select i1 %69, i32 576, i32 480
  br label %76

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 237, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 237, i32 3
  %75 = load i32, ptr %74, align 4
  br label %76

76:                                               ; preds = %71, %65, %53
  %77 = phi i32 [ %61, %53 ], [ %48, %65 ], [ %48, %71 ]
  %78 = phi i32 [ %58, %53 ], [ 720, %65 ], [ %73, %71 ]
  %79 = phi i32 [ %60, %53 ], [ %70, %65 ], [ %75, %71 ]
  %80 = add i32 %77, -2
  %81 = icmp ult i32 %80, 6
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_vid_cap_s_selection.32, i32 0, i32 %80
  %84 = load i32, ptr %83, align 4
  br label %85

85:                                               ; preds = %82, %76
  %86 = phi i32 [ 1, %76 ], [ %84, %82 ]
  %87 = load i32, ptr %29, align 4
  %88 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 53, i32 %87
  %89 = load i8, ptr %88, align 1
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 325
  %93 = load i8, ptr %92, align 1, !range !8
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 323
  %97 = load i8, ptr %96, align 1, !range !8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 324
  %101 = load i8, ptr %100, align 2, !range !8
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99, %85
  store i32 %78, ptr %4, align 1
  %104 = udiv i32 %79, %86
  %105 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %104, ptr %105, align 1
  br label %154

106:                                              ; preds = %99, %95, %91
  %107 = load i32, ptr %4, align 1
  %108 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %109 = load i32, ptr %108, align 1
  %110 = mul i32 %109, %86
  %111 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2), align 4
  %112 = tail call i32 @llvm.umax.i32(i32 %107, i32 %111)
  %113 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3), align 4
  %114 = tail call i32 @llvm.umax.i32(i32 %110, i32 %113)
  %115 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_max_rect, i32 0, i32 2), align 4
  %116 = tail call i32 @llvm.umin.i32(i32 %112, i32 %115)
  %117 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_max_rect, i32 0, i32 3), align 4
  %118 = tail call i32 @llvm.umin.i32(i32 %114, i32 %117)
  br i1 %94, label %128, label %119

119:                                              ; preds = %106
  %120 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 324
  %121 = load i8, ptr %120, align 2, !range !8
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %150

123:                                              ; preds = %119
  %124 = shl i32 %78, 2
  %125 = shl i32 %79, 2
  %126 = tail call i32 @llvm.umin.i32(i32 %116, i32 %124)
  %127 = tail call i32 @llvm.umin.i32(i32 %118, i32 %125)
  br label %150

128:                                              ; preds = %106
  %129 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 323
  %130 = load i8, ptr %129, align 1, !range !8
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 324
  %134 = load i8, ptr %133, align 2, !range !8
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 237, i32 2
  %138 = load i32, ptr %137, align 4
  %139 = tail call i32 @llvm.umin.i32(i32 %116, i32 %138)
  %140 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 237, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = tail call i32 @llvm.umin.i32(i32 %118, i32 %141)
  br label %150

143:                                              ; preds = %128
  %144 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 237, i32 2
  %145 = load i32, ptr %144, align 4
  %146 = tail call i32 @llvm.umax.i32(i32 %116, i32 %145)
  %147 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 237, i32 3
  %148 = load i32, ptr %147, align 4
  %149 = tail call i32 @llvm.umax.i32(i32 %118, i32 %148)
  br label %150

150:                                              ; preds = %143, %136, %132, %123, %119
  %151 = phi i32 [ %116, %119 ], [ %126, %123 ], [ %139, %136 ], [ %146, %143 ], [ %116, %132 ]
  %152 = phi i32 [ %118, %119 ], [ %127, %123 ], [ %142, %136 ], [ %149, %143 ], [ %118, %132 ]
  store i32 %151, ptr %4, align 1
  %153 = udiv i32 %152, %86
  store i32 %153, ptr %108, align 1
  br label %154

154:                                              ; preds = %150, %103
  %155 = phi i32 [ %151, %150 ], [ %78, %103 ]
  %156 = getelementptr inbounds %struct.vivid_fmt, ptr %27, i32 0, i32 6
  %157 = load i8, ptr %156, align 1
  %158 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 6
  store i8 %157, ptr %158, align 1
  %159 = load i8, ptr %156, align 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  br label %178

163:                                              ; preds = %196, %154
  %164 = phi i8 [ 0, %154 ], [ %208, %196 ]
  %165 = getelementptr inbounds %struct.vivid_fmt, ptr %27, i32 0, i32 5
  %166 = load i8, ptr %165, align 4
  %167 = icmp ult i8 %164, %166
  br i1 %167, label %168, label %233

168:                                              ; preds = %163
  %169 = zext i8 %164 to i32
  %170 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %171 = load i32, ptr %170, align 1
  %172 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %173 = load i32, ptr %172, align 1
  %174 = mul i32 %173, %171
  %175 = getelementptr inbounds %struct.vivid_fmt, ptr %27, i32 0, i32 8
  %176 = getelementptr inbounds %struct.vivid_fmt, ptr %27, i32 0, i32 3
  %177 = load i32, ptr %5, align 1
  br label %213

178:                                              ; preds = %211, %161
  %179 = phi i32 [ %155, %161 ], [ %212, %211 ]
  %180 = phi i32 [ 0, %161 ], [ %207, %211 ]
  %181 = getelementptr %struct.vivid_fmt, ptr %27, i32 0, i32 8, i32 %180
  %182 = load i32, ptr %181, align 4
  %183 = mul i32 %182, %179
  %184 = lshr i32 %183, 3
  %185 = shl i32 %182, 11
  %186 = and i32 %185, 536868864
  %187 = getelementptr %struct.v4l2_plane_pix_format, ptr %5, i32 %180
  %188 = getelementptr %struct.v4l2_plane_pix_format, ptr %5, i32 %180, i32 1
  %189 = load i32, ptr %188, align 1
  %190 = icmp ugt i32 %189, %186
  %191 = call i32 @llvm.umin.i32(i32 %189, i32 %186)
  %192 = icmp ult i32 %191, %184
  %193 = call i32 @llvm.umax.i32(i32 %191, i32 %184)
  %194 = or i1 %190, %192
  br i1 %194, label %195, label %196

195:                                              ; preds = %178
  store i32 %193, ptr %188, align 1
  br label %196

196:                                              ; preds = %195, %178
  %197 = load i32, ptr %162, align 1
  %198 = mul i32 %197, %193
  %199 = getelementptr %struct.vivid_fmt, ptr %27, i32 0, i32 3, i32 %180
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %200 to i32
  %202 = udiv i32 %198, %201
  %203 = getelementptr %struct.vivid_fmt, ptr %27, i32 0, i32 7, i32 %180
  %204 = load i32, ptr %203, align 4
  %205 = add i32 %204, %202
  store i32 %205, ptr %187, align 1
  %206 = getelementptr %struct.v4l2_plane_pix_format, ptr %5, i32 %180, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(12) %206, i8 0, i32 12, i1 false)
  %207 = add nuw nsw i32 %180, 1
  %208 = load i8, ptr %156, align 1
  %209 = zext i8 %208 to i32
  %210 = icmp ult i32 %207, %209
  br i1 %210, label %211, label %163

211:                                              ; preds = %196
  %212 = load i32, ptr %4, align 1
  br label %178

213:                                              ; preds = %213, %168
  %214 = phi i32 [ %177, %168 ], [ %228, %213 ]
  %215 = phi i32 [ %169, %168 ], [ %229, %213 ]
  %216 = getelementptr %struct.vivid_fmt, ptr %27, i32 0, i32 8, i32 %215
  %217 = load i32, ptr %216, align 4
  %218 = getelementptr %struct.vivid_fmt, ptr %27, i32 0, i32 3, i32 %215
  %219 = load i8, ptr %218, align 1
  %220 = zext i8 %219 to i32
  %221 = udiv i32 %217, %220
  %222 = mul i32 %174, %221
  %223 = load i32, ptr %175, align 4
  %224 = load i8, ptr %176, align 1
  %225 = zext i8 %224 to i32
  %226 = udiv i32 %223, %225
  %227 = udiv i32 %222, %226
  %228 = add i32 %214, %227
  store i32 %228, ptr %5, align 1
  %229 = add nuw nsw i32 %215, 1
  %230 = load i8, ptr %165, align 4
  %231 = zext i8 %230 to i32
  %232 = icmp ult i32 %229, %231
  br i1 %232, label %213, label %233

233:                                              ; preds = %213, %163
  br i1 %12, label %261, label %234

234:                                              ; preds = %233
  %235 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  %236 = load i32, ptr %235, align 1
  %237 = add i32 %236, -1
  %238 = icmp ult i32 %237, 12
  br i1 %238, label %255, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 139
  %241 = load i8, ptr %240, align 1, !range !8
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %239
  %244 = load i32, ptr %29, align 4
  %245 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 53, i32 %244
  %246 = load i8, ptr %245, align 1
  %247 = icmp ult i8 %246, 2
  br i1 %247, label %248, label %250

248:                                              ; preds = %243, %239
  %249 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 20
  br label %252

250:                                              ; preds = %243
  %251 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 202
  br label %252

252:                                              ; preds = %250, %248
  %253 = phi ptr [ %249, %248 ], [ %251, %250 ]
  %254 = load i32, ptr %253, align 4
  store i32 %254, ptr %235, align 1
  br label %255

255:                                              ; preds = %252, %234
  %256 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 10
  %257 = load i8, ptr %256, align 1
  %258 = zext i8 %257 to i32
  %259 = add nsw i32 %258, -1
  %260 = icmp ult i32 %259, 7
  br i1 %260, label %296, label %278

261:                                              ; preds = %233
  %262 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 139
  %263 = load i8, ptr %262, align 1, !range !8
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %270, label %265

265:                                              ; preds = %261
  %266 = load i32, ptr %29, align 4
  %267 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 53, i32 %266
  %268 = load i8, ptr %267, align 1
  %269 = icmp ult i8 %268, 2
  br i1 %269, label %270, label %272

270:                                              ; preds = %265, %261
  %271 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 20
  br label %274

272:                                              ; preds = %265
  %273 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 202
  br label %274

274:                                              ; preds = %272, %270
  %275 = phi ptr [ %271, %270 ], [ %273, %272 ]
  %276 = load i32, ptr %275, align 4
  %277 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %276, ptr %277, align 1
  br label %278

278:                                              ; preds = %274, %255
  %279 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 139
  %280 = load i8, ptr %279, align 1, !range !8
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %287, label %282

282:                                              ; preds = %278
  %283 = load i32, ptr %29, align 4
  %284 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 53, i32 %283
  %285 = load i8, ptr %284, align 1
  %286 = icmp ult i8 %285, 2
  br i1 %286, label %287, label %289

287:                                              ; preds = %282, %278
  %288 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 21
  br label %291

289:                                              ; preds = %282
  %290 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 206
  br label %291

291:                                              ; preds = %289, %287
  %292 = phi ptr [ %288, %287 ], [ %290, %289 ]
  %293 = load i32, ptr %292, align 4
  %294 = trunc i32 %293 to i8
  %295 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 10
  store i8 %294, ptr %295, align 1
  br label %296

296:                                              ; preds = %291, %255
  %297 = getelementptr inbounds %struct.vivid_fmt, ptr %27, i32 0, i32 1
  %298 = load i32, ptr %297, align 4
  switch i32 %298, label %336 [
    i32 2, label %299
    i32 1, label %317
  ]

299:                                              ; preds = %296
  br i1 %12, label %304, label %300

300:                                              ; preds = %299
  %301 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 8
  %302 = load i8, ptr %301, align 1
  %303 = icmp slt i8 %302, -126
  br i1 %303, label %354, label %304

304:                                              ; preds = %300, %299
  %305 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 139
  %306 = load i8, ptr %305, align 1, !range !8
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %313, label %308

308:                                              ; preds = %304
  %309 = load i32, ptr %29, align 4
  %310 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 53, i32 %309
  %311 = load i8, ptr %310, align 1
  %312 = icmp ult i8 %311, 2
  br i1 %312, label %313, label %315

313:                                              ; preds = %308, %304
  %314 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 23
  br label %349

315:                                              ; preds = %308
  %316 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 204
  br label %349

317:                                              ; preds = %296
  br i1 %12, label %323, label %318

318:                                              ; preds = %317
  %319 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 8
  %320 = load i8, ptr %319, align 1
  %321 = add i8 %320, -1
  %322 = icmp ult i8 %321, 8
  br i1 %322, label %354, label %323

323:                                              ; preds = %318, %317
  %324 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 139
  %325 = load i8, ptr %324, align 1, !range !8
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %323
  %328 = load i32, ptr %29, align 4
  %329 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 53, i32 %328
  %330 = load i8, ptr %329, align 1
  %331 = icmp ult i8 %330, 2
  br i1 %331, label %332, label %334

332:                                              ; preds = %327, %323
  %333 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 22
  br label %349

334:                                              ; preds = %327
  %335 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 203
  br label %349

336:                                              ; preds = %296
  %337 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 139
  %338 = load i8, ptr %337, align 1, !range !8
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %345, label %340

340:                                              ; preds = %336
  %341 = load i32, ptr %29, align 4
  %342 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 53, i32 %341
  %343 = load i8, ptr %342, align 1
  %344 = icmp ult i8 %343, 2
  br i1 %344, label %345, label %347

345:                                              ; preds = %340, %336
  %346 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 22
  br label %349

347:                                              ; preds = %340
  %348 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 203
  br label %349

349:                                              ; preds = %347, %345, %334, %332, %315, %313
  %350 = phi ptr [ %314, %313 ], [ %316, %315 ], [ %333, %332 ], [ %335, %334 ], [ %346, %345 ], [ %348, %347 ]
  %351 = load i32, ptr %350, align 4
  %352 = trunc i32 %351 to i8
  %353 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 8
  store i8 %352, ptr %353, align 1
  br label %354

354:                                              ; preds = %349, %318, %300
  %355 = load i32, ptr %297, align 4
  %356 = icmp ult i32 %355, 2
  br i1 %356, label %357, label %376

357:                                              ; preds = %354
  br i1 %12, label %363, label %358

358:                                              ; preds = %357
  %359 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 9
  %360 = load i8, ptr %359, align 1
  %361 = add i8 %360, -1
  %362 = icmp ult i8 %361, 2
  br i1 %362, label %394, label %363

363:                                              ; preds = %358, %357
  %364 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 139
  %365 = load i8, ptr %364, align 1, !range !8
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %372, label %367

367:                                              ; preds = %363
  %368 = load i32, ptr %29, align 4
  %369 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 53, i32 %368
  %370 = load i8, ptr %369, align 1
  %371 = icmp ult i8 %370, 2
  br i1 %371, label %372, label %374

372:                                              ; preds = %367, %363
  %373 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 27
  br label %389

374:                                              ; preds = %367
  %375 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 205
  br label %389

376:                                              ; preds = %354
  %377 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 139
  %378 = load i8, ptr %377, align 1, !range !8
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %385, label %380

380:                                              ; preds = %376
  %381 = load i32, ptr %29, align 4
  %382 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 53, i32 %381
  %383 = load i8, ptr %382, align 1
  %384 = icmp ult i8 %383, 2
  br i1 %384, label %385, label %387

385:                                              ; preds = %380, %376
  %386 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 27
  br label %389

387:                                              ; preds = %380
  %388 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 205
  br label %389

389:                                              ; preds = %387, %385, %374, %372
  %390 = phi ptr [ %373, %372 ], [ %375, %374 ], [ %386, %385 ], [ %388, %387 ]
  %391 = load i32, ptr %390, align 4
  %392 = trunc i32 %391 to i8
  %393 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 9
  store i8 %392, ptr %393, align 1
  br label %394

394:                                              ; preds = %389, %358
  %395 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 11
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(7) %395, i8 0, i32 7, i1 false)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vivid_get_format(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_find_nearest_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_s_fmt_vid_cap(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = alloca %struct.v4l2_rect, align 8
  %5 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %6 = tail call ptr @video_devdata(ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 5, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 239
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 240
  %11 = tail call i32 @vivid_try_fmt_vid_cap(ptr noundef %0, ptr undef, ptr noundef %2)
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 242, i32 21
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32, ptr @vivid_debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %487, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 1, i32 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %19, ptr noundef nonnull @__func__.vivid_s_fmt_vid_cap) #16
  br label %487

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 190
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %27 = load i32, ptr %26, align 1
  br label %40

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 189, i32 3, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %32 = load i32, ptr %31, align 1
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr @vivid_debug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %487, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 1, i32 4
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %38) #16
  br label %487

40:                                               ; preds = %28, %25
  %41 = phi i32 [ %27, %25 ], [ %30, %28 ]
  %42 = tail call ptr @vivid_get_format(ptr noundef %8, i32 noundef %41) #17
  %43 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 234
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  %45 = load i32, ptr %44, align 1
  %46 = add i32 %45, -2
  %47 = icmp ult i32 %46, 6
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_vid_cap_s_selection.32, i32 0, i32 %46
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %40
  %52 = phi i32 [ 1, %40 ], [ %50, %48 ]
  %53 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 173
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 53, i32 %54
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, ptr %5, align 1
  %60 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  switch i32 %59, label %372 [
    i32 320, label %354
    i32 640, label %357
    i32 1280, label %363
    i32 1920, label %366
    i32 3840, label %369
  ]

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 325
  %63 = load i8, ptr %62, align 1, !range !8
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 323
  %67 = load i8, ptr %66, align 1, !range !8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 324
  %71 = load i8, ptr %70, align 2, !range !8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %384, label %73

73:                                               ; preds = %69, %65, %61
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %74 = getelementptr inbounds %struct.v4l2_rect, ptr %4, i32 0, i32 2
  store i64 0, ptr %4, align 8
  %75 = load i32, ptr %5, align 1
  store i32 %75, ptr %74, align 8
  %76 = getelementptr inbounds %struct.v4l2_rect, ptr %4, i32 0, i32 3
  %77 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %78 = load i32, ptr %77, align 1
  store i32 %78, ptr %76, align 4
  br i1 %64, label %257, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 324
  %81 = load i8, ptr %80, align 2, !range !8
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %120, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 240, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = icmp ugt i32 %85, %75
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 %75, ptr %84, align 4
  br label %88

88:                                               ; preds = %87, %83
  %89 = phi i32 [ %75, %87 ], [ %85, %83 ]
  %90 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 240, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = icmp ugt i32 %91, %78
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 %78, ptr %90, align 4
  br label %94

94:                                               ; preds = %93, %88
  %95 = phi i32 [ %91, %88 ], [ %78, %93 ]
  %96 = load i32, ptr %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 0, ptr %10, align 4
  br label %99

99:                                               ; preds = %98, %94
  %100 = phi i32 [ 0, %98 ], [ %96, %94 ]
  %101 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 240, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 0, ptr %101, align 4
  br label %105

105:                                              ; preds = %104, %99
  %106 = phi i32 [ 0, %104 ], [ %102, %99 ]
  %107 = add i32 %100, %89
  %108 = icmp ugt i32 %107, %75
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = sub i32 %75, %89
  store i32 %110, ptr %10, align 4
  br label %111

111:                                              ; preds = %109, %105
  %112 = add i32 %106, %95
  %113 = icmp ugt i32 %112, %78
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = sub i32 %78, %95
  store i32 %115, ptr %101, align 4
  br label %116

116:                                              ; preds = %114, %111
  %117 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 323
  %118 = load i8, ptr %117, align 1, !range !8
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %353, label %124

120:                                              ; preds = %79
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  %121 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 323
  %122 = load i8, ptr %121, align 1, !range !8
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %353, label %125

124:                                              ; preds = %116
  br i1 %82, label %125, label %189

125:                                              ; preds = %124, %120
  %126 = lshr i32 %75, 2
  %127 = mul i32 %78, %52
  %128 = lshr i32 %127, 2
  %129 = shl i32 %75, 2
  %130 = shl i32 %127, 2
  %131 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 239, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = icmp ult i32 %132, %126
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  store i32 %126, ptr %131, align 4
  br label %135

135:                                              ; preds = %134, %125
  %136 = phi i32 [ %126, %134 ], [ %132, %125 ]
  %137 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 239, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = icmp ult i32 %138, %128
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i32 %128, ptr %137, align 4
  br label %141

141:                                              ; preds = %140, %135
  %142 = phi i32 [ %138, %135 ], [ %128, %140 ]
  %143 = icmp ugt i32 %136, %129
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 %129, ptr %131, align 4
  br label %145

145:                                              ; preds = %144, %141
  %146 = phi i32 [ %129, %144 ], [ %136, %141 ]
  %147 = icmp ugt i32 %142, %130
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 %130, ptr %137, align 4
  br label %149

149:                                              ; preds = %148, %145
  %150 = phi i32 [ %142, %145 ], [ %130, %148 ]
  %151 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 241
  %152 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 241, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = icmp ugt i32 %146, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  store i32 %153, ptr %131, align 4
  br label %156

156:                                              ; preds = %155, %149
  %157 = phi i32 [ %153, %155 ], [ %146, %149 ]
  %158 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 241, i32 3
  %159 = load i32, ptr %158, align 4
  %160 = icmp ugt i32 %150, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32 %159, ptr %137, align 4
  br label %162

162:                                              ; preds = %161, %156
  %163 = phi i32 [ %150, %156 ], [ %159, %161 ]
  %164 = load i32, ptr %9, align 4
  %165 = load i32, ptr %151, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  store i32 %165, ptr %9, align 4
  br label %168

168:                                              ; preds = %167, %162
  %169 = phi i32 [ %165, %167 ], [ %164, %162 ]
  %170 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 239, i32 1
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 241, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  store i32 %173, ptr %170, align 4
  br label %176

176:                                              ; preds = %175, %168
  %177 = phi i32 [ %173, %175 ], [ %171, %168 ]
  %178 = add i32 %169, %157
  %179 = add i32 %153, %165
  %180 = icmp ugt i32 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = sub i32 %179, %157
  store i32 %182, ptr %9, align 4
  br label %183

183:                                              ; preds = %181, %176
  %184 = add i32 %177, %163
  %185 = add i32 %159, %173
  %186 = icmp ugt i32 %184, %185
  br i1 %186, label %187, label %353

187:                                              ; preds = %183
  %188 = sub i32 %185, %163
  store i32 %188, ptr %170, align 4
  br label %353

189:                                              ; preds = %124
  %190 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 240, i32 2
  %191 = load i32, ptr %190, align 4
  %192 = lshr i32 %191, 2
  %193 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 240, i32 3
  %194 = load i32, ptr %193, align 4
  %195 = mul i32 %194, %52
  %196 = lshr i32 %195, 2
  %197 = shl i32 %191, 2
  %198 = shl i32 %195, 2
  %199 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 239, i32 2
  %200 = load i32, ptr %199, align 4
  %201 = icmp ult i32 %200, %192
  br i1 %201, label %202, label %203

202:                                              ; preds = %189
  store i32 %192, ptr %199, align 4
  br label %203

203:                                              ; preds = %202, %189
  %204 = phi i32 [ %192, %202 ], [ %200, %189 ]
  %205 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 239, i32 3
  %206 = load i32, ptr %205, align 4
  %207 = icmp ult i32 %206, %196
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i32 %196, ptr %205, align 4
  br label %209

209:                                              ; preds = %208, %203
  %210 = phi i32 [ %206, %203 ], [ %196, %208 ]
  %211 = icmp ugt i32 %204, %197
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  store i32 %197, ptr %199, align 4
  br label %213

213:                                              ; preds = %212, %209
  %214 = phi i32 [ %197, %212 ], [ %204, %209 ]
  %215 = icmp ugt i32 %210, %198
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  store i32 %198, ptr %205, align 4
  br label %217

217:                                              ; preds = %216, %213
  %218 = phi i32 [ %210, %213 ], [ %198, %216 ]
  %219 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 241
  %220 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 241, i32 2
  %221 = load i32, ptr %220, align 4
  %222 = icmp ugt i32 %214, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  store i32 %221, ptr %199, align 4
  br label %224

224:                                              ; preds = %223, %217
  %225 = phi i32 [ %221, %223 ], [ %214, %217 ]
  %226 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 241, i32 3
  %227 = load i32, ptr %226, align 4
  %228 = icmp ugt i32 %218, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  store i32 %227, ptr %205, align 4
  br label %230

230:                                              ; preds = %229, %224
  %231 = phi i32 [ %218, %224 ], [ %227, %229 ]
  %232 = load i32, ptr %9, align 4
  %233 = load i32, ptr %219, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  store i32 %233, ptr %9, align 4
  br label %236

236:                                              ; preds = %235, %230
  %237 = phi i32 [ %233, %235 ], [ %232, %230 ]
  %238 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 239, i32 1
  %239 = load i32, ptr %238, align 4
  %240 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 241, i32 1
  %241 = load i32, ptr %240, align 4
  %242 = icmp slt i32 %239, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  store i32 %241, ptr %238, align 4
  br label %244

244:                                              ; preds = %243, %236
  %245 = phi i32 [ %241, %243 ], [ %239, %236 ]
  %246 = add i32 %237, %225
  %247 = add i32 %221, %233
  %248 = icmp ugt i32 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %244
  %250 = sub i32 %247, %225
  store i32 %250, ptr %9, align 4
  br label %251

251:                                              ; preds = %249, %244
  %252 = add i32 %245, %231
  %253 = add i32 %227, %241
  %254 = icmp ugt i32 %252, %253
  br i1 %254, label %255, label %353

255:                                              ; preds = %251
  %256 = sub i32 %253, %231
  store i32 %256, ptr %238, align 4
  br label %353

257:                                              ; preds = %73
  %258 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 323
  %259 = load i8, ptr %258, align 1, !range !8
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %275, label %261

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 324
  %263 = load i8, ptr %262, align 2, !range !8
  %264 = icmp eq i8 %263, 0
  %265 = mul i32 %78, %52
  br i1 %264, label %266, label %276

266:                                              ; preds = %261
  %267 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 239, i32 2
  store i32 %75, ptr %267, align 4
  %268 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 239, i32 3
  store i32 %265, ptr %268, align 4
  %269 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 241
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %9, ptr noundef %269)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %9, i32 16, i1 false)
  %270 = load i32, ptr %76, align 4
  %271 = udiv i32 %270, %52
  %272 = load i32, ptr %74, align 8
  %273 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 240, i32 2
  store i32 %272, ptr %273, align 4
  %274 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 240, i32 3
  store i32 %271, ptr %274, align 4
  br label %353

275:                                              ; preds = %257
  call fastcc void @v4l2_rect_map_inside(ptr noundef %10, ptr noundef nonnull %4)
  br label %353

276:                                              ; preds = %261
  store i32 %265, ptr %76, align 4
  %277 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 239, i32 2
  %278 = load i32, ptr %277, align 4
  %279 = icmp ugt i32 %278, %75
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  store i32 %75, ptr %277, align 4
  br label %281

281:                                              ; preds = %280, %276
  %282 = phi i32 [ %75, %280 ], [ %278, %276 ]
  %283 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 239, i32 3
  %284 = load i32, ptr %283, align 4
  %285 = icmp ugt i32 %284, %265
  br i1 %285, label %286, label %287

286:                                              ; preds = %281
  store i32 %265, ptr %283, align 4
  br label %287

287:                                              ; preds = %286, %281
  %288 = phi i32 [ %284, %281 ], [ %265, %286 ]
  %289 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 241
  %290 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 241, i32 2
  %291 = load i32, ptr %290, align 4
  %292 = icmp ugt i32 %282, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %287
  store i32 %291, ptr %277, align 4
  br label %294

294:                                              ; preds = %293, %287
  %295 = phi i32 [ %291, %293 ], [ %282, %287 ]
  %296 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 241, i32 3
  %297 = load i32, ptr %296, align 4
  %298 = icmp ugt i32 %288, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %294
  store i32 %297, ptr %283, align 4
  br label %300

300:                                              ; preds = %299, %294
  %301 = phi i32 [ %288, %294 ], [ %297, %299 ]
  %302 = load i32, ptr %9, align 4
  %303 = load i32, ptr %289, align 4
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %305, label %306

305:                                              ; preds = %300
  store i32 %303, ptr %9, align 4
  br label %306

306:                                              ; preds = %305, %300
  %307 = phi i32 [ %303, %305 ], [ %302, %300 ]
  %308 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 239, i32 1
  %309 = load i32, ptr %308, align 4
  %310 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 241, i32 1
  %311 = load i32, ptr %310, align 4
  %312 = icmp slt i32 %309, %311
  br i1 %312, label %313, label %314

313:                                              ; preds = %306
  store i32 %311, ptr %308, align 4
  br label %314

314:                                              ; preds = %313, %306
  %315 = phi i32 [ %311, %313 ], [ %309, %306 ]
  %316 = add i32 %307, %295
  %317 = add i32 %291, %303
  %318 = icmp ugt i32 %316, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %314
  %320 = sub i32 %317, %295
  store i32 %320, ptr %9, align 4
  br label %321

321:                                              ; preds = %319, %314
  %322 = add i32 %315, %301
  %323 = add i32 %297, %311
  %324 = icmp ugt i32 %322, %323
  br i1 %324, label %325, label %327

325:                                              ; preds = %321
  %326 = sub i32 %323, %301
  store i32 %326, ptr %308, align 4
  br label %327

327:                                              ; preds = %325, %321
  %328 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 240, i32 1
  %329 = load i32, ptr %328, align 4
  %330 = mul i32 %329, %52
  %331 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 240, i32 3
  %332 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 240, i32 2
  %333 = call i32 @llvm.umin.i32(i32 %295, i32 %75)
  store i32 %333, ptr %332, align 4
  %334 = call i32 @llvm.umin.i32(i32 %295, i32 %75)
  %335 = call i32 @llvm.umin.i32(i32 %301, i32 %265)
  %336 = load i32, ptr %10, align 4
  %337 = icmp slt i32 %336, 0
  %338 = call i32 @llvm.smax.i32(i32 %336, i32 0)
  %339 = call i32 @llvm.smax.i32(i32 %330, i32 0)
  %340 = add i32 %338, %334
  %341 = icmp ugt i32 %340, %75
  %342 = or i1 %337, %341
  br i1 %342, label %343, label %346

343:                                              ; preds = %327
  %344 = sub i32 %75, %334
  %345 = select i1 %341, i32 %344, i32 %338
  store i32 %345, ptr %10, align 4
  br label %346

346:                                              ; preds = %343, %327
  %347 = add i32 %339, %335
  %348 = icmp ugt i32 %347, %265
  %349 = sub i32 %265, %335
  %350 = select i1 %348, i32 %349, i32 %339
  %351 = udiv i32 %350, %52
  store i32 %351, ptr %328, align 4
  %352 = udiv i32 %335, %52
  store i32 %352, ptr %331, align 4
  br label %353

353:                                              ; preds = %346, %275, %266, %255, %251, %187, %183, %120, %116
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br label %393

354:                                              ; preds = %58
  %355 = load i32, ptr %60, align 1
  %356 = icmp eq i32 %355, 180
  br i1 %356, label %373, label %372

357:                                              ; preds = %58
  %358 = load i32, ptr %60, align 1
  %359 = icmp eq i32 %358, 360
  br i1 %359, label %373, label %360

360:                                              ; preds = %357
  %361 = load i32, ptr %60, align 1
  %362 = icmp eq i32 %361, 480
  br i1 %362, label %373, label %372

363:                                              ; preds = %58
  %364 = load i32, ptr %60, align 1
  %365 = icmp eq i32 %364, 720
  br i1 %365, label %373, label %372

366:                                              ; preds = %58
  %367 = load i32, ptr %60, align 1
  %368 = icmp eq i32 %367, 1080
  br i1 %368, label %373, label %372

369:                                              ; preds = %58
  %370 = load i32, ptr %60, align 1
  %371 = icmp eq i32 %370, 2160
  br i1 %371, label %373, label %372

372:                                              ; preds = %369, %366, %363, %360, %354, %58
  br label %373

373:                                              ; preds = %372, %369, %366, %363, %360, %357, %354
  %374 = phi i32 [ 0, %354 ], [ 1, %357 ], [ 2, %360 ], [ 3, %363 ], [ 4, %366 ], [ 5, %369 ], [ 6, %372 ]
  %375 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 182
  store i32 %374, ptr %375, align 8
  %376 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 183
  %377 = load i32, ptr %376, align 4
  %378 = mul nsw i32 %374, -2
  %379 = add nsw i32 %378, 12
  %380 = icmp ult i32 %377, %379
  br i1 %380, label %383, label %381

381:                                              ; preds = %373
  %382 = add nsw i32 %378, 11
  store i32 %382, ptr %376, align 4
  br label %383

383:                                              ; preds = %381, %373
  tail call void @vivid_update_format_cap(ptr noundef %8, i1 noundef zeroext false)
  br label %393

384:                                              ; preds = %69
  %385 = load i32, ptr %5, align 1
  %386 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %387 = load i32, ptr %386, align 1
  %388 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 240, i32 2
  store i32 %385, ptr %388, align 4
  %389 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 240, i32 3
  store i32 %387, ptr %389, align 4
  %390 = mul i32 %387, %52
  %391 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 239, i32 2
  store i32 %385, ptr %391, align 4
  %392 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 239, i32 3
  store i32 %390, ptr %392, align 4
  br label %393

393:                                              ; preds = %384, %383, %353
  %394 = load i32, ptr %5, align 1
  %395 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 238, i32 2
  store i32 %394, ptr %395, align 4
  %396 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %397 = load i32, ptr %396, align 1
  %398 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 238, i32 3
  store i32 %397, ptr %398, align 4
  %399 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231
  %400 = load i32, ptr %396, align 1
  %401 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 2
  store i32 %400, ptr %401, align 4
  %402 = load ptr, ptr %43, align 4
  %403 = load i32, ptr %402, align 4
  %404 = tail call zeroext i1 @tpg_s_fourcc(ptr noundef %399, i32 noundef %403) #17
  %405 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 33
  %406 = load i32, ptr %405, align 4
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %449, label %408

408:                                              ; preds = %393
  %409 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 35
  %410 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 34
  %411 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 42
  %412 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 43
  %413 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 43, i32 1
  br label %414

414:                                              ; preds = %445, %408
  %415 = phi i32 [ %406, %408 ], [ %447, %445 ]
  %416 = phi i32 [ 0, %408 ], [ %446, %445 ]
  %417 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 %416, i32 1
  %418 = load i32, ptr %417, align 1
  %419 = icmp ugt i32 %415, 1
  br i1 %419, label %420, label %422

420:                                              ; preds = %414
  %421 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 43, i32 %416
  store i32 %418, ptr %421, align 4
  br label %445

422:                                              ; preds = %431, %414
  %423 = phi i32 [ %442, %431 ], [ 0, %414 ]
  %424 = load i8, ptr %409, align 4, !range !8
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %428, label %426

426:                                              ; preds = %422
  %427 = icmp eq i32 %423, 0
  br i1 %427, label %431, label %443

428:                                              ; preds = %422
  %429 = load i32, ptr %410, align 4
  %430 = icmp ult i32 %423, %429
  br i1 %430, label %431, label %445

431:                                              ; preds = %428, %426
  %432 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 42, i32 %423
  %433 = load i32, ptr %432, align 4
  %434 = mul i32 %433, %418
  %435 = load i32, ptr %411, align 4
  %436 = udiv i32 %434, %435
  %437 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 37, i32 %423
  %438 = load i8, ptr %437, align 1
  %439 = zext i8 %438 to i32
  %440 = udiv i32 %436, %439
  %441 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 43, i32 %423
  store i32 %440, ptr %441, align 4
  %442 = add nuw i32 %423, 1
  br label %422

443:                                              ; preds = %426
  %444 = load i32, ptr %412, align 4
  store i32 %444, ptr %413, align 4
  br label %445

445:                                              ; preds = %443, %428, %420
  %446 = add nuw i32 %416, 1
  %447 = load i32, ptr %405, align 4
  %448 = icmp ult i32 %446, %447
  br i1 %448, label %414, label %449

449:                                              ; preds = %445, %393
  %450 = load i32, ptr %44, align 1
  %451 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 236
  store i32 %450, ptr %451, align 8
  %452 = icmp eq i32 %450, 7
  %453 = select i1 %452, i32 2, i32 %450
  %454 = zext i1 %452 to i8
  %455 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 4
  store i32 %453, ptr %455, align 4
  %456 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 5
  store i8 %454, ptr %456, align 4
  tail call void @tpg_s_crop_compose(ptr noundef %399, ptr noundef %9, ptr noundef %10) #17
  %457 = load i32, ptr %53, align 4
  %458 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 53, i32 %457
  %459 = load i8, ptr %458, align 1
  %460 = add i8 %459, -1
  %461 = icmp ult i8 %460, 2
  br i1 %461, label %462, label %465

462:                                              ; preds = %449
  %463 = load i32, ptr %44, align 1
  %464 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 186
  store i32 %463, ptr %464, align 8
  br label %465

465:                                              ; preds = %462, %449
  tail call void @tpg_update_mv_step(ptr noundef %399) #17
  %466 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  %467 = load i32, ptr %466, align 1
  %468 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 20
  store i32 %467, ptr %468, align 4
  %469 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 10
  %470 = load i8, ptr %469, align 1
  %471 = zext i8 %470 to i32
  %472 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 21
  store i32 %471, ptr %472, align 4
  %473 = load ptr, ptr %43, align 4
  %474 = getelementptr inbounds %struct.vivid_fmt, ptr %473, i32 0, i32 1
  %475 = load i32, ptr %474, align 4
  %476 = icmp eq i32 %475, 1
  %477 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 8
  %478 = load i8, ptr %477, align 1
  %479 = zext i8 %478 to i32
  %480 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 23
  %481 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 22
  %482 = select i1 %476, ptr %481, ptr %480
  store i32 %479, ptr %482, align 4
  %483 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 9
  %484 = load i8, ptr %483, align 1
  %485 = zext i8 %484 to i32
  %486 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 231, i32 27
  store i32 %485, ptr %486, align 4
  br label %487

487:                                              ; preds = %465, %37, %34, %18, %15
  %488 = phi i32 [ 0, %465 ], [ -16, %18 ], [ -16, %15 ], [ -16, %37 ], [ -16, %34 ]
  ret i32 %488
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @v4l2_rect_map_inside(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
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
declare dso_local zeroext i1 @tpg_s_fourcc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_s_crop_compose(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_vid_cap_mplane(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @vivid_g_fmt_vid_cap(ptr noundef %0, ptr undef, ptr noundef %2)
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ 0, %10 ], [ -25, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_vid_cap_mplane(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @vivid_try_fmt_vid_cap(ptr noundef %0, ptr undef, ptr noundef %2)
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ 0, %10 ], [ -25, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_vid_cap_mplane(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @vivid_s_fmt_vid_cap(ptr noundef %0, ptr undef, ptr noundef %2)
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ %11, %10 ], [ -25, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_vid_cap(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 @fmt_sp2mp_func(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @vivid_g_fmt_vid_cap) #17
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ %11, %10 ], [ -25, %3 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fmt_sp2mp_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_vid_cap(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 @fmt_sp2mp_func(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @vivid_try_fmt_vid_cap) #17
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ %11, %10 ], [ -25, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_vid_cap(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 @fmt_sp2mp_func(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @vivid_s_fmt_vid_cap) #17
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ %11, %10 ], [ -25, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_g_selection(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 323
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 324
  %12 = load i8, ptr %11, align 2, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %55, label %14

14:                                               ; preds = %10, %3
  %15 = load i32, ptr %2, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %25 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 0, ptr %25, align 4
  store i32 0, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %55 [
    i32 0, label %28
    i32 1, label %33
    i32 2, label %33
    i32 258, label %38
    i32 256, label %43
    i32 257, label %49
  ]

28:                                               ; preds = %23
  %29 = load i8, ptr %7, align 1, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 239
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %24, ptr noundef align 4 dereferenceable(16) %32, i32 16, i1 false)
  br label %55

33:                                               ; preds = %23, %23
  %34 = load i8, ptr %7, align 1, !range !8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 237
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %24, ptr noundef align 4 dereferenceable(16) %37, i32 16, i1 false)
  br label %55

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 324
  %40 = load i8, ptr %39, align 2, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) @vivid_max_rect, i32 16, i1 false)
  br label %55

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 324
  %45 = load i8, ptr %44, align 2, !range !8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 240
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %24, ptr noundef align 4 dereferenceable(16) %48, i32 16, i1 false)
  br label %55

49:                                               ; preds = %23
  %50 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 324
  %51 = load i8, ptr %50, align 2, !range !8
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 238
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %24, ptr noundef align 4 dereferenceable(16) %54, i32 16, i1 false)
  br label %55

55:                                               ; preds = %53, %49, %47, %43, %42, %38, %36, %33, %31, %28, %23, %17, %14, %10
  %56 = phi i32 [ -25, %10 ], [ -22, %14 ], [ -61, %17 ], [ -22, %28 ], [ -22, %33 ], [ -22, %38 ], [ -22, %43 ], [ -22, %49 ], [ -22, %23 ], [ 0, %53 ], [ 0, %47 ], [ 0, %42 ], [ 0, %36 ], [ 0, %31 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_s_selection(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 239
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 240
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 236
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, -2
  %12 = icmp ult i32 %11, 6
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_vid_cap_s_selection, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_vid_cap_s_selection.32, i32 0, i32 %11
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi i32 [ 0, %3 ], [ %15, %13 ]
  %20 = phi i32 [ 1, %3 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 323
  %22 = load i8, ptr %21, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 324
  %26 = load i8, ptr %25, align 2, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %318, label %28

28:                                               ; preds = %24, %18
  %29 = load i32, ptr %2, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %318

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %318, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  switch i32 %39, label %318 [
    i32 0, label %40
    i32 256, label %183
  ]

40:                                               ; preds = %37
  br i1 %23, label %318, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %45 = tail call i32 @vivid_vid_adjust_sel(i32 noundef %43, ptr noundef %44) #17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %318

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2), align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 %50, ptr %48, align 4
  br label %53

53:                                               ; preds = %52, %47
  %54 = phi i32 [ %50, %52 ], [ %49, %47 ]
  %55 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3), align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 %57, ptr %55, align 4
  br label %60

60:                                               ; preds = %59, %53
  %61 = phi i32 [ %56, %53 ], [ %57, %59 ]
  %62 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 237, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %54, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 %63, ptr %48, align 4
  br label %66

66:                                               ; preds = %65, %60
  %67 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 237, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = icmp ugt i32 %61, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 %68, ptr %55, align 4
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 241
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %44, ptr noundef %72)
  %73 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = lshr i32 %74, %19
  store i32 %75, ptr %73, align 4
  %76 = load i32, ptr %55, align 4
  %77 = lshr i32 %76, %19
  store i32 %77, ptr %55, align 4
  %78 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 325
  %79 = load i8, ptr %78, align 1, !range !8
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %130, label %81

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 238
  %83 = load i64, ptr %82, align 4
  %84 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 238, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 238, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = load i32, ptr %48, align 4
  %89 = shl i32 %88, 2
  %90 = shl i32 %77, 2
  %91 = lshr i32 %88, 2
  %92 = lshr i32 %77, 2
  %93 = tail call i32 @llvm.umax.i32(i32 %85, i32 %91)
  %94 = tail call i32 @llvm.umax.i32(i32 %87, i32 %92)
  %95 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 324
  %96 = load i8, ptr %95, align 2, !range !8
  %97 = icmp eq i8 %96, 0
  %98 = tail call i32 @llvm.umin.i32(i32 %93, i32 %89)
  %99 = tail call i32 @llvm.umin.i32(i32 %94, i32 %90)
  %100 = select i1 %97, i32 %98, i32 %93
  %101 = select i1 %97, i32 %99, i32 %94
  %102 = icmp eq i32 %85, %100
  %103 = icmp eq i32 %87, %101
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %109, label %105

105:                                              ; preds = %81
  %106 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 242, i32 21
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %318

109:                                              ; preds = %105, %81
  br i1 %97, label %128, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 240, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = icmp ult i32 %112, %91
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 %91, ptr %111, align 4
  br label %115

115:                                              ; preds = %114, %110
  %116 = phi i32 [ %91, %114 ], [ %112, %110 ]
  %117 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 240, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = icmp ult i32 %118, %92
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 %92, ptr %117, align 4
  br label %121

121:                                              ; preds = %120, %115
  %122 = phi i32 [ %118, %115 ], [ %92, %120 ]
  %123 = icmp ugt i32 %116, %89
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 %89, ptr %111, align 4
  br label %125

125:                                              ; preds = %124, %121
  %126 = icmp ugt i32 %122, %90
  br i1 %126, label %127, label %128

127:                                              ; preds = %125
  store i32 %90, ptr %117, align 4
  br label %128

128:                                              ; preds = %127, %125, %109
  store i64 %83, ptr %82, align 4
  store i32 %100, ptr %84, align 4
  store i32 %101, ptr %86, align 4
  %129 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 2
  store i32 %101, ptr %129, align 4
  br label %178

130:                                              ; preds = %71
  %131 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 324
  %132 = load i8, ptr %131, align 2, !range !8
  %133 = icmp eq i8 %132, 0
  %134 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 238
  br i1 %133, label %156, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 238, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 238, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = load i32, ptr %48, align 4
  %141 = tail call i32 @llvm.umax.i32(i32 %137, i32 %140)
  %142 = tail call i32 @llvm.umax.i32(i32 %139, i32 %77)
  %143 = icmp ult i32 %137, %140
  %144 = icmp ult i32 %139, %77
  %145 = select i1 %143, i1 true, i1 %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %135
  %147 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 242, i32 21
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %318

150:                                              ; preds = %146, %135
  store i32 %141, ptr %136, align 4
  store i32 %142, ptr %138, align 4
  %151 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 2
  store i32 %142, ptr %151, align 4
  %152 = load i32, ptr %48, align 4
  %153 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 240, i32 2
  store i32 %152, ptr %153, align 4
  %154 = load i32, ptr %55, align 4
  %155 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 240, i32 3
  store i32 %154, ptr %155, align 4
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %8, ptr noundef %134)
  br label %178

156:                                              ; preds = %130
  %157 = load i32, ptr %48, align 4
  %158 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 238, i32 2
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 238, i32 3
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %77, %163
  br i1 %164, label %169, label %165

165:                                              ; preds = %161, %156
  %166 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 242, i32 21
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %318

169:                                              ; preds = %165, %161
  store i32 %157, ptr %158, align 4
  %170 = load i32, ptr %55, align 4
  %171 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 238, i32 3
  store i32 %170, ptr %171, align 4
  %172 = load i32, ptr %48, align 4
  %173 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 240, i32 2
  store i32 %172, ptr %173, align 4
  %174 = load i32, ptr %55, align 4
  %175 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 240, i32 3
  store i32 %174, ptr %175, align 4
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %8, ptr noundef %134)
  %176 = load i32, ptr %171, align 4
  %177 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 2
  store i32 %176, ptr %177, align 4
  br label %178

178:                                              ; preds = %169, %150, %128
  %179 = load i32, ptr %73, align 4
  %180 = mul i32 %179, %20
  store i32 %180, ptr %73, align 4
  %181 = load i32, ptr %55, align 4
  %182 = mul i32 %181, %20
  store i32 %182, ptr %55, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %7, ptr noundef align 4 dereferenceable(16) %44, i32 16, i1 false)
  br label %316

183:                                              ; preds = %37
  %184 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 324
  %185 = load i8, ptr %184, align 2, !range !8
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %318, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 2
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %191 = tail call i32 @vivid_vid_adjust_sel(i32 noundef %189, ptr noundef %190) #17
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %318

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %195 = load i32, ptr %194, align 4
  %196 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 2), align 4
  %197 = icmp ult i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  store i32 %196, ptr %194, align 4
  br label %199

199:                                              ; preds = %198, %193
  %200 = phi i32 [ %196, %198 ], [ %195, %193 ]
  %201 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %202 = load i32, ptr %201, align 4
  %203 = load i32, ptr getelementptr inbounds (%struct.v4l2_rect, ptr @vivid_min_rect, i32 0, i32 3), align 4
  %204 = icmp ult i32 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  store i32 %203, ptr %201, align 4
  br label %206

206:                                              ; preds = %205, %199
  %207 = phi i32 [ %202, %199 ], [ %203, %205 ]
  %208 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 238
  %209 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 238, i32 2
  %210 = load i32, ptr %209, align 4
  %211 = icmp ugt i32 %200, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  store i32 %210, ptr %194, align 4
  br label %213

213:                                              ; preds = %212, %206
  %214 = phi i32 [ %210, %212 ], [ %200, %206 ]
  %215 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 238, i32 3
  %216 = load i32, ptr %215, align 4
  %217 = icmp ugt i32 %207, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  store i32 %216, ptr %201, align 4
  br label %219

219:                                              ; preds = %218, %213
  %220 = phi i32 [ %207, %213 ], [ %216, %218 ]
  %221 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 325
  %222 = load i8, ptr %221, align 1, !range !8
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %267, label %224

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 237, i32 2
  %226 = load i32, ptr %225, align 4
  %227 = shl i32 %226, 2
  %228 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 237, i32 3
  %229 = load i32, ptr %228, align 4
  %230 = lshr i32 %229, %19
  %231 = shl i32 %230, 2
  %232 = icmp ugt i32 %214, %227
  br i1 %232, label %233, label %234

233:                                              ; preds = %224
  store i32 %227, ptr %194, align 4
  br label %234

234:                                              ; preds = %233, %224
  %235 = phi i32 [ %227, %233 ], [ %214, %224 ]
  %236 = icmp ugt i32 %220, %231
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  store i32 %231, ptr %201, align 4
  br label %238

238:                                              ; preds = %237, %234
  %239 = phi i32 [ %220, %234 ], [ %231, %237 ]
  %240 = load i8, ptr %21, align 1, !range !8
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %300, label %242

242:                                              ; preds = %238
  %243 = lshr i32 %235, 2
  %244 = mul i32 %239, %20
  %245 = lshr i32 %244, 2
  %246 = shl i32 %235, 2
  %247 = shl i32 %244, 2
  %248 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 239, i32 2
  %249 = load i32, ptr %248, align 4
  %250 = icmp ult i32 %249, %243
  br i1 %250, label %251, label %252

251:                                              ; preds = %242
  store i32 %243, ptr %248, align 4
  br label %252

252:                                              ; preds = %251, %242
  %253 = phi i32 [ %243, %251 ], [ %249, %242 ]
  %254 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 239, i32 3
  %255 = load i32, ptr %254, align 4
  %256 = icmp ult i32 %255, %245
  br i1 %256, label %257, label %258

257:                                              ; preds = %252
  store i32 %245, ptr %254, align 4
  br label %258

258:                                              ; preds = %257, %252
  %259 = phi i32 [ %255, %252 ], [ %245, %257 ]
  %260 = icmp ugt i32 %253, %246
  br i1 %260, label %261, label %262

261:                                              ; preds = %258
  store i32 %246, ptr %248, align 4
  br label %262

262:                                              ; preds = %261, %258
  %263 = icmp ugt i32 %259, %247
  br i1 %263, label %264, label %265

264:                                              ; preds = %262
  store i32 %247, ptr %254, align 4
  br label %265

265:                                              ; preds = %264, %262
  %266 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 241
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %7, ptr noundef %266)
  br label %300

267:                                              ; preds = %219
  %268 = load i8, ptr %21, align 1, !range !8
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %294, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  %272 = load i32, ptr %271, align 4
  %273 = mul i32 %272, %20
  store i32 %273, ptr %271, align 4
  %274 = mul i32 %220, %20
  store i32 %274, ptr %201, align 4
  %275 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 237, i32 2
  %276 = load i32, ptr %275, align 4
  %277 = icmp ugt i32 %214, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %270
  store i32 %276, ptr %194, align 4
  br label %279

279:                                              ; preds = %278, %270
  %280 = phi i32 [ %276, %278 ], [ %214, %270 ]
  %281 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 237, i32 3
  %282 = load i32, ptr %281, align 4
  %283 = icmp ugt i32 %274, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %279
  store i32 %282, ptr %201, align 4
  br label %285

285:                                              ; preds = %284, %279
  %286 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 239, i32 2
  store i32 %280, ptr %286, align 4
  %287 = load i32, ptr %201, align 4
  %288 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 239, i32 3
  store i32 %287, ptr %288, align 4
  %289 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 241
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %7, ptr noundef %289)
  %290 = load i32, ptr %271, align 4
  %291 = lshr i32 %290, %19
  store i32 %291, ptr %271, align 4
  %292 = load i32, ptr %201, align 4
  %293 = lshr i32 %292, %19
  store i32 %293, ptr %201, align 4
  br label %300

294:                                              ; preds = %267
  %295 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 237, i32 2
  %296 = load i32, ptr %295, align 4
  store i32 %296, ptr %194, align 4
  %297 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 237, i32 3
  %298 = load i32, ptr %297, align 4
  %299 = lshr i32 %298, %19
  store i32 %299, ptr %201, align 4
  br label %300

300:                                              ; preds = %294, %285, %265, %238
  tail call fastcc void @v4l2_rect_map_inside(ptr noundef %190, ptr noundef %208)
  %301 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 195
  %302 = load ptr, ptr %301, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %315, label %304

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 240, i32 2
  %306 = load i32, ptr %305, align 4
  %307 = load i32, ptr %194, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %314

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 240, i32 3
  %311 = load i32, ptr %310, align 4
  %312 = load i32, ptr %201, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %315, label %314

314:                                              ; preds = %309, %304
  tail call void @vfree(ptr noundef nonnull %302) #17
  store ptr null, ptr %301, align 4
  br label %315

315:                                              ; preds = %314, %309, %300
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %8, ptr noundef align 4 dereferenceable(16) %190, i32 16, i1 false)
  br label %316

316:                                              ; preds = %315, %178
  %317 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 231
  tail call void @tpg_s_crop_compose(ptr noundef %317, ptr noundef %7, ptr noundef %8) #17
  br label %318

318:                                              ; preds = %316, %187, %183, %165, %146, %105, %41, %40, %37, %31, %28, %24
  %319 = phi i32 [ 0, %316 ], [ -25, %24 ], [ -22, %28 ], [ -61, %31 ], [ -22, %40 ], [ %45, %41 ], [ -16, %165 ], [ -22, %183 ], [ %191, %187 ], [ -22, %37 ], [ -16, %105 ], [ -16, %146 ]
  ret i32 %319
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_adjust_sel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_g_pixelaspect(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %0) #17
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq i32 %2, 1
  br i1 %8, label %9, label %38

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 173
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 53, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = add i8 %13, -1
  %15 = icmp ult i8 %14, 2
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 174, i32 %11
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 63744
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %33, label %34

21:                                               ; preds = %9
  %22 = icmp eq i8 %13, 3
  br i1 %22, label %23, label %38

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 237, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 720
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 237, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, 577
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = icmp eq i32 %29, 480
  br i1 %32, label %34, label %33

33:                                               ; preds = %31, %16
  br label %34

34:                                               ; preds = %33, %31, %16
  %35 = phi i32 [ 54, %33 ], [ 11, %31 ], [ 11, %16 ]
  %36 = phi i32 [ 59, %33 ], [ 10, %31 ], [ 10, %16 ]
  store i32 %35, ptr %3, align 4
  %37 = getelementptr inbounds %struct.v4l2_fract, ptr %3, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %34, %27, %23, %21, %4
  %39 = phi i32 [ -22, %4 ], [ 0, %27 ], [ 0, %23 ], [ 0, %21 ], [ 0, %34 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_enum_fmt_vid_overlay(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i32, ptr %2, align 4
  %12 = icmp ugt i32 %11, 2
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = getelementptr [3 x %struct.vivid_fmt], ptr @formats_ovl, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %10, %3
  %18 = phi i32 [ 0, %13 ], [ -25, %3 ], [ -22, %10 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_vid_overlay(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %75

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 192
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 193
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %11, align 4
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 240, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 240, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 194
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 198
  %29 = load i32, ptr %28, align 8
  store i32 %29, ptr %12, align 4
  %30 = load i32, ptr %28, align 8
  %31 = tail call i32 @llvm.umin.i32(i32 %13, i32 %30)
  %32 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 195
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  br i1 %34, label %36, label %37

36:                                               ; preds = %10
  store ptr null, ptr %35, align 4
  br label %66

37:                                               ; preds = %10
  %38 = load ptr, ptr %35, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %66, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr %19, align 4
  %42 = add i32 %41, 7
  %43 = lshr i32 %42, 3
  %44 = load i32, ptr %22, align 4
  %45 = mul i32 %43, %44
  %46 = icmp slt i32 %45, 0
  %47 = load i1, ptr @check_copy_size.__already_done, align 1
  %48 = xor i1 %47, true
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %51, !prof !9

50:                                               ; preds = %40
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #17
  br label %51

51:                                               ; preds = %50, %40
  br i1 %46, label %75, label %52, !prof !9

52:                                               ; preds = %51
  %53 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %38, i32 %45, i32 -1090519040) #18, !srcloc !16
  %54 = extractvalue { i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = tail call ptr @llvm.thread.pointer() #17
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %59 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %58) #19, !srcloc !17
  %60 = and i32 %59, -13
  %61 = or i32 %60, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #17, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %62 = tail call i32 @arm_copy_to_user(ptr noundef nonnull %38, ptr noundef nonnull %33, i32 noundef %45) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #17, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  br label %63

63:                                               ; preds = %56, %52
  %64 = phi i32 [ %62, %56 ], [ %45, %52 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63, %37, %36
  %67 = icmp eq i32 %31, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 196
  %74 = mul i32 %31, 20
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %70, ptr align 8 %73, i32 %74, i1 false)
  br label %75

75:                                               ; preds = %72, %68, %66, %63, %51, %3
  %76 = phi i32 [ -25, %3 ], [ -14, %63 ], [ 0, %72 ], [ 0, %68 ], [ 0, %66 ], [ -14, %51 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_vid_overlay(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %138

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 189, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 0, %14
  %16 = tail call i32 @llvm.smax.i32(i32 %12, i32 %15)
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 %14)
  store i32 %17, ptr %11, align 4
  %18 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 189, i32 3, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 0, %21
  %23 = tail call i32 @llvm.smax.i32(i32 %19, i32 %22)
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 %21)
  store i32 %24, ptr %18, align 4
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 240, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 240, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, -2
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %36, label %35

35:                                               ; preds = %10
  store i32 0, ptr %31, align 4
  br label %36

36:                                               ; preds = %35, %10
  %37 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i8 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %138, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, ptr %39, align 4
  br label %138

47:                                               ; preds = %42
  %48 = icmp ugt i32 %40, 16
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  store i32 16, ptr %39, align 4
  br label %54

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = mul i32 %40, 20
  br label %54

54:                                               ; preds = %50, %49
  %55 = phi ptr [ %44, %49 ], [ %52, %50 ]
  %56 = phi i32 [ 320, %49 ], [ %53, %50 ]
  %57 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 197
  %58 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %57, ptr align 4 %55, i32 %56, i1 false)
  %59 = load i32, ptr %39, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %67

61:                                               ; preds = %67
  %62 = add i32 %93, -1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %134, label %64

64:                                               ; preds = %61, %54
  %65 = phi i32 [ %62, %61 ], [ -1, %54 ]
  %66 = phi i32 [ %93, %61 ], [ 0, %54 ]
  br label %97

67:                                               ; preds = %67, %54
  %68 = phi i32 [ %92, %67 ], [ 0, %54 ]
  %69 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 197, i32 %68
  %70 = getelementptr inbounds %struct.v4l2_rect, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 @llvm.smax.i32(i32 %71, i32 0)
  %73 = load i32, ptr %20, align 4
  %74 = add i32 %73, -1
  %75 = tail call i32 @llvm.smin.i32(i32 %72, i32 %74)
  store i32 %75, ptr %70, align 4
  %76 = getelementptr inbounds %struct.v4l2_rect, ptr %69, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = tail call i32 @llvm.smax.i32(i32 %77, i32 1)
  %79 = load i32, ptr %20, align 4
  %80 = sub i32 %79, %75
  %81 = tail call i32 @llvm.smin.i32(i32 %78, i32 %80)
  store i32 %81, ptr %76, align 4
  %82 = load i32, ptr %69, align 4
  %83 = load i32, ptr %13, align 4
  %84 = add i32 %83, -1
  %85 = tail call i32 @llvm.umin.i32(i32 %82, i32 %84)
  store i32 %85, ptr %69, align 4
  %86 = getelementptr inbounds %struct.v4l2_rect, ptr %69, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = tail call i32 @llvm.umax.i32(i32 %87, i32 1)
  %89 = load i32, ptr %13, align 4
  %90 = sub i32 %89, %85
  %91 = tail call i32 @llvm.umin.i32(i32 %88, i32 %90)
  store i32 %91, ptr %86, align 4
  %92 = add nuw i32 %68, 1
  %93 = load i32, ptr %39, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %67, label %61

95:                                               ; preds = %131, %97
  %96 = icmp eq i32 %99, %65
  br i1 %96, label %134, label %97

97:                                               ; preds = %95, %64
  %98 = phi i32 [ %99, %95 ], [ 0, %64 ]
  %99 = add nuw i32 %98, 1
  %100 = icmp ult i32 %99, %66
  br i1 %100, label %101, label %95

101:                                              ; preds = %97
  %102 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 197, i32 %98
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.v4l2_rect, ptr %102, i32 0, i32 2
  %105 = getelementptr inbounds %struct.v4l2_rect, ptr %102, i32 0, i32 1
  %106 = getelementptr inbounds %struct.v4l2_rect, ptr %102, i32 0, i32 3
  br label %107

107:                                              ; preds = %131, %101
  %108 = phi i32 [ %99, %101 ], [ %132, %131 ]
  %109 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 197, i32 %108
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.v4l2_rect, ptr %109, i32 0, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, %110
  %114 = icmp ult i32 %103, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %107
  %116 = load i32, ptr %104, align 4
  %117 = add i32 %116, %103
  %118 = icmp ult i32 %110, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load i32, ptr %105, align 4
  %121 = getelementptr inbounds %struct.v4l2_rect, ptr %109, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds %struct.v4l2_rect, ptr %109, i32 0, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, %122
  %126 = icmp ult i32 %120, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = load i32, ptr %106, align 4
  %129 = add i32 %128, %120
  %130 = icmp ult i32 %122, %129
  br i1 %130, label %138, label %131

131:                                              ; preds = %127, %119, %115, %107
  %132 = add i32 %108, 1
  %133 = icmp eq i32 %132, %66
  br i1 %133, label %95, label %107

134:                                              ; preds = %95, %61
  %135 = phi i32 [ 1, %61 ], [ %66, %95 ]
  %136 = load ptr, ptr %58, align 4
  %137 = mul i32 %135, 20
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %136, ptr align 8 %57, i32 %137, i1 false)
  br label %138

138:                                              ; preds = %134, %127, %46, %36, %3
  %139 = phi i32 [ -25, %3 ], [ 0, %134 ], [ 0, %46 ], [ 0, %36 ], [ -22, %127 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_vid_overlay(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = tail call i32 @vidioc_try_fmt_vid_overlay(ptr noundef %0, ptr undef, ptr noundef %2)
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 240, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 7
  %12 = lshr i32 %11, 3
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 240, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %12, %14
  %16 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, 20
  %19 = icmp eq i32 %8, 0
  br i1 %19, label %20, label %71

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %53, label %24

24:                                               ; preds = %20
  %25 = tail call noalias ptr @vzalloc(i32 noundef %15) #20
  %26 = icmp eq ptr %25, null
  br i1 %26, label %71, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %21, align 4
  %29 = icmp slt i32 %15, 0
  %30 = load i1, ptr @check_copy_size.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !9

33:                                               ; preds = %27
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #17
  br label %34

34:                                               ; preds = %33, %27
  br i1 %29, label %52, label %35, !prof !9

35:                                               ; preds = %34
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %28, i32 %15, i32 -1090519040) #18, !srcloc !20
  %37 = extractvalue { i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46, !prof !21

39:                                               ; preds = %35
  %40 = tail call ptr @llvm.thread.pointer() #17
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %41) #19, !srcloc !17
  %43 = and i32 %42, -13
  %44 = or i32 %43, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #17, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  %45 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %25, ptr noundef %28, i32 noundef %15) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #17, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !19
  br label %46

46:                                               ; preds = %39, %35
  %47 = phi i32 [ %45, %39 ], [ %15, %35 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49, !prof !21

49:                                               ; preds = %46
  %50 = sub i32 %15, %47
  %51 = getelementptr i8, ptr %25, i32 %50
  tail call void @llvm.memset.p0.i32(ptr align 1 %51, i8 0, i32 %47, i1 false) #17
  br label %52

52:                                               ; preds = %49, %34
  tail call void @vfree(ptr noundef nonnull %25) #17
  br label %71

53:                                               ; preds = %46, %20
  %54 = phi ptr [ null, %20 ], [ %25, %46 ]
  %55 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 192
  store i32 %56, ptr %57, align 8
  %58 = load i32, ptr %7, align 4
  %59 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 193
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 194
  store i32 %61, ptr %62, align 8
  %63 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 195
  %64 = load ptr, ptr %63, align 4
  tail call void @vfree(ptr noundef %64) #17
  store ptr %54, ptr %63, align 4
  %65 = load i32, ptr %16, align 4
  %66 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 198
  store i32 %65, ptr %66, align 8
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %53
  %69 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 196
  %70 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 197
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %69, ptr align 8 %70, i32 %18, i1 false)
  br label %71

71:                                               ; preds = %68, %53, %52, %24, %3
  %72 = phi i32 [ -14, %52 ], [ %8, %3 ], [ -12, %24 ], [ 0, %68 ], [ 0, %53 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_overlay(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 191
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 189, i32 3, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 234
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %16
  %24 = load i32, ptr @vivid_debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 1, i32 4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %27) #16
  br label %37

29:                                               ; preds = %16, %10
  %30 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 190
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  %33 = icmp eq ptr %31, %1
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = select i1 %11, ptr null, ptr %1
  store ptr %36, ptr %30, align 8
  br label %37

37:                                               ; preds = %35, %29, %26, %23, %12, %3
  %38 = phi i32 [ 0, %35 ], [ -25, %3 ], [ -22, %12 ], [ -22, %26 ], [ -22, %23 ], [ -16, %29 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_g_fbuf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 189
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %2, ptr noundef align 4 dereferenceable(44) %11, i32 36, i1 false)
  store i32 12, ptr %2, align 4
  %12 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 1
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 3, i32 3
  store i32 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 3, i32 6
  store i32 8, ptr %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 3, i32 7
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ 0, %10 ], [ -25, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_s_fbuf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %78

10:                                               ; preds = %3
  %11 = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = tail call zeroext i1 @capable(i32 noundef 17) #17
  br i1 %13, label %14, label %78

14:                                               ; preds = %12, %10
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 190
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %78

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 189, i32 2
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 191
  store ptr null, ptr %24, align 4
  br label %78

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, 48
  br i1 %28, label %78, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 3, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, 32
  br i1 %32, label %78, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 3, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = tail call ptr @vivid_get_format(ptr noundef %6, i32 noundef %35) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %78, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.vivid_fmt, ptr %36, i32 0, i32 2
  %40 = load i8, ptr %39, align 4, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %78, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 3, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %26, align 4
  %46 = getelementptr inbounds %struct.vivid_fmt, ptr %36, i32 0, i32 8
  %47 = load i32, ptr %46, align 4
  %48 = mul i32 %47, %45
  %49 = lshr i32 %48, 3
  %50 = icmp ult i32 %44, %49
  br i1 %50, label %78, label %51

51:                                               ; preds = %42
  %52 = load i32, ptr %30, align 4
  %53 = mul i32 %52, %44
  %54 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %2, i32 0, i32 3, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp ult i32 %53, %55
  br i1 %56, label %78, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %19, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %59, i32 -2130706432, i32 8454144) #18, !srcloc !22
  %61 = inttoptr i32 %60 to ptr
  %62 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 191
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 189
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %63, ptr noundef align 4 dereferenceable(44) %2, i32 44, i1 false)
  %64 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 193
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 189, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = sub i32 0, %67
  %69 = tail call i32 @llvm.smax.i32(i32 %65, i32 %68)
  %70 = tail call i32 @llvm.smin.i32(i32 %69, i32 %67)
  store i32 %70, ptr %64, align 4
  %71 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 192
  %72 = load i32, ptr %71, align 8
  %73 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 189, i32 3, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = sub i32 0, %74
  %76 = tail call i32 @llvm.smax.i32(i32 %72, i32 %75)
  %77 = tail call i32 @llvm.smin.i32(i32 %76, i32 %74)
  store i32 %77, ptr %71, align 8
  br label %78

78:                                               ; preds = %57, %51, %42, %38, %33, %29, %25, %22, %14, %12, %3
  %79 = phi i32 [ 0, %22 ], [ 0, %57 ], [ -25, %3 ], [ -1, %12 ], [ -16, %14 ], [ -22, %29 ], [ -22, %25 ], [ -22, %38 ], [ -22, %33 ], [ -22, %42 ], [ -22, %51 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_enum_input(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 8
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 51
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %114

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 2
  store i32 2, ptr %12, align 4
  %13 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %7
  %14 = load i8, ptr %13, align 1
  switch i8 %14, label %73 [
    i8 0, label %15
    i8 1, label %22
    i8 2, label %36
    i8 3, label %50
  ]

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 1
  %17 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 54, i32 %7
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %19)
  %21 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 7
  store i32 0, ptr %21, align 4
  br label %73

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 1
  %24 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 54, i32 %7
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %26)
  store i32 1, ptr %12, align 4
  %28 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 5
  store i64 16777215, ptr %28, align 8
  %29 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 59
  %30 = load i8, ptr %29, align 4, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 3
  store i32 3, ptr %33, align 8
  br label %34

34:                                               ; preds = %32, %22
  %35 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 7
  store i32 4, ptr %35, align 4
  br label %73

36:                                               ; preds = %11
  %37 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 1
  %38 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 54, i32 %7
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %37, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %40)
  %42 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 5
  store i64 16777215, ptr %42, align 8
  %43 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 59
  %44 = load i8, ptr %43, align 4, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 3
  store i32 3, ptr %47, align 8
  br label %48

48:                                               ; preds = %46, %36
  %49 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 7
  store i32 4, ptr %49, align 4
  br label %73

50:                                               ; preds = %11
  %51 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 1
  %52 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 54, i32 %7
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %51, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %54)
  %56 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 7
  store i32 2, ptr %56, align 4
  %57 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 180
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 166, i32 %62
  %64 = load i32, ptr %63, align 4
  switch i32 %64, label %73 [
    i32 1, label %65
    i32 2, label %69
    i32 3, label %69
  ]

65:                                               ; preds = %60, %50
  %66 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 6
  %67 = load i32, ptr %66, align 8
  %68 = or i32 %67, 2
  store i32 %68, ptr %66, align 8
  br label %73

69:                                               ; preds = %60, %60
  %70 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 6
  %71 = load i32, ptr %70, align 8
  %72 = or i32 %71, 256
  store i32 %72, ptr %70, align 8
  br label %73

73:                                               ; preds = %69, %65, %60, %48, %34, %15, %11
  %74 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 134
  %75 = load i8, ptr %74, align 8, !range !8
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 6
  %79 = load i32, ptr %78, align 8
  %80 = or i32 %79, 16
  store i32 %80, ptr %78, align 8
  br label %81

81:                                               ; preds = %77, %73
  %82 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 135
  %83 = load i8, ptr %82, align 1, !range !8
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 6
  %87 = load i32, ptr %86, align 8
  %88 = or i32 %87, 32
  store i32 %88, ptr %86, align 8
  br label %89

89:                                               ; preds = %85, %81
  %90 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %91 = load i32, ptr %90, align 4
  %92 = load i32, ptr %2, align 8
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %89
  %95 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %91
  %96 = load i8, ptr %95, align 1
  %97 = add i8 %96, -1
  %98 = icmp ult i8 %97, 2
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 162, i32 %91
  %101 = load i32, ptr %100, align 4
  switch i32 %101, label %103 [
    i32 1, label %109
    i32 2, label %102
  ]

102:                                              ; preds = %99
  br label %109

103:                                              ; preds = %99
  %104 = icmp eq i8 %96, 1
  br i1 %104, label %105, label %114

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 10
  %107 = load i32, ptr %106, align 4
  switch i32 %107, label %114 [
    i32 1, label %109
    i32 2, label %108
  ]

108:                                              ; preds = %105
  br label %109

109:                                              ; preds = %108, %105, %102, %99
  %110 = phi i32 [ 256, %102 ], [ 256, %108 ], [ 2, %99 ], [ 512, %105 ]
  %111 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 6
  %112 = load i32, ptr %111, align 8
  %113 = or i32 %112, %110
  store i32 %113, ptr %111, align 8
  br label %114

114:                                              ; preds = %109, %105, %103, %94, %89, %3
  %115 = phi i32 [ -22, %3 ], [ 0, %103 ], [ 0, %105 ], [ 0, %94 ], [ 0, %89 ], [ 0, %109 ]
  ret i32 %115
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_input(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_input(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 51
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %2
  br i1 %11, label %12, label %153

12:                                               ; preds = %3
  %13 = icmp eq i32 %8, %2
  br i1 %13, label %153, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 242, i32 21
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %153

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 244, i32 21
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %153

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 246, i32 21
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %153

26:                                               ; preds = %22
  store i32 %2, ptr %7, align 4
  %27 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 18, i32 22
  store i64 0, ptr %27, align 8
  %28 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %2
  %29 = load i8, ptr %28, align 1
  %30 = add i8 %29, -1
  %31 = icmp ult i8 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = icmp ne i8 %29, 1
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 187
  store i32 %34, ptr %35, align 4
  store i64 16777215, ptr %27, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = phi i64 [ 0, %26 ], [ 16777215, %32 ]
  %38 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 22, i32 22
  store i64 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 32, i32 22
  store i64 %37, ptr %39, align 8
  tail call void @vivid_update_format_cap(ptr noundef %6, i1 noundef zeroext false)
  %40 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 96
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %62, label %43

43:                                               ; preds = %36
  %44 = load i8, ptr %28, align 1
  switch i8 %44, label %62 [
    i8 0, label %60
    i8 1, label %45
    i8 2, label %45
    i8 3, label %46
  ]

45:                                               ; preds = %43, %43
  br label %60

46:                                               ; preds = %43
  %47 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 175, i32 %8, i32 1, i32 0, i32 16
  %48 = load i32, ptr %47, align 1
  %49 = and i32 %48, 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 237, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 720
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 237, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = icmp ult i32 %57, 577
  br i1 %58, label %60, label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %55, %46, %45, %43
  %61 = phi i32 [ 0, %45 ], [ 1, %59 ], [ 2, %43 ], [ 0, %55 ], [ 2, %46 ]
  tail call fastcc void @v4l2_ctrl_s_ctrl(ptr noundef nonnull %41, i32 noundef %61)
  br label %62

62:                                               ; preds = %60, %43, %36
  %63 = shl i32 %2, 7
  %64 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 131, i32 %2
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %63
  %67 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 78
  %68 = load ptr, ptr %67, align 8
  %69 = zext i32 %63 to i64
  %70 = add i32 %63, 255
  %71 = zext i32 %70 to i64
  %72 = add i32 %63, 128
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.v4l2_ctrl, ptr %68, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  tail call void @mutex_lock(ptr noundef %77) #17
  %78 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %68, i64 noundef %69, i64 noundef %71, i64 noundef 1, i64 noundef %73) #17
  %79 = load ptr, ptr %74, align 8
  %80 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  tail call void @mutex_unlock(ptr noundef %81) #17
  %82 = load ptr, ptr %67, align 8
  %83 = getelementptr inbounds %struct.v4l2_ctrl, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  tail call void @mutex_lock(ptr noundef %86) #17
  %87 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %82, i32 noundef %66) #17
  %88 = load ptr, ptr %83, align 8
  %89 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  tail call void @mutex_unlock(ptr noundef %90) #17
  %91 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 100
  %92 = load ptr, ptr %91, align 8
  %93 = load i32, ptr %7, align 4
  %94 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %93
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 3
  tail call void @v4l2_ctrl_activate(ptr noundef %92, i1 noundef zeroext %96) #17
  %97 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 100, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = load i32, ptr %7, align 4
  %100 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %99
  %101 = load i8, ptr %100, align 1
  %102 = icmp eq i8 %101, 3
  br i1 %102, label %103, label %107

103:                                              ; preds = %62
  %104 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 166, i32 %99
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 4
  br label %107

107:                                              ; preds = %103, %62
  %108 = phi i1 [ false, %62 ], [ %106, %103 ]
  tail call void @v4l2_ctrl_activate(ptr noundef %98, i1 noundef zeroext %108) #17
  %109 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 99
  %110 = load ptr, ptr %109, align 8
  %111 = load i32, ptr %7, align 4
  %112 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %111
  %113 = load i8, ptr %112, align 1
  %114 = add i8 %113, -1
  %115 = icmp ult i8 %114, 2
  tail call void @v4l2_ctrl_activate(ptr noundef %110, i1 noundef zeroext %115) #17
  %116 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 99, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = load i32, ptr %7, align 4
  %119 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %118
  %120 = load i8, ptr %119, align 1
  %121 = add i8 %120, -1
  %122 = icmp ult i8 %121, 2
  br i1 %122, label %123, label %127

123:                                              ; preds = %107
  %124 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 162, i32 %118
  %125 = load i32, ptr %124, align 4
  %126 = icmp ne i32 %125, 0
  br label %127

127:                                              ; preds = %123, %107
  %128 = phi i1 [ false, %107 ], [ %126, %123 ]
  tail call void @v4l2_ctrl_activate(ptr noundef %117, i1 noundef zeroext %128) #17
  %129 = load i32, ptr %7, align 4
  %130 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %129
  %131 = load i8, ptr %130, align 1
  %132 = icmp eq i8 %131, 3
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load ptr, ptr %91, align 8
  %135 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 166, i32 %129
  %136 = load i32, ptr %135, align 4
  tail call fastcc void @v4l2_ctrl_s_ctrl(ptr noundef %134, i32 noundef %136)
  %137 = load i32, ptr %7, align 4
  %138 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 171, i32 %137
  br label %148

139:                                              ; preds = %127
  %140 = add i8 %131, -1
  %141 = icmp ult i8 %140, 2
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load ptr, ptr %109, align 8
  %144 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 162, i32 %129
  %145 = load i32, ptr %144, align 4
  tail call fastcc void @v4l2_ctrl_s_ctrl(ptr noundef %143, i32 noundef %145)
  %146 = load i32, ptr %7, align 4
  %147 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 162, i32 %146
  br label %148

148:                                              ; preds = %142, %133
  %149 = phi ptr [ %138, %133 ], [ %147, %142 ]
  %150 = phi ptr [ %97, %133 ], [ %116, %142 ]
  %151 = load ptr, ptr %150, align 4
  %152 = load i32, ptr %149, align 4
  tail call fastcc void @v4l2_ctrl_s_ctrl(ptr noundef %151, i32 noundef %152)
  br label %153

153:                                              ; preds = %148, %139, %22, %18, %14, %12, %3
  %154 = phi i32 [ -22, %3 ], [ 0, %12 ], [ -16, %22 ], [ -16, %18 ], [ -16, %14 ], [ 0, %139 ], [ 0, %148 ]
  ret i32 %154
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @vidioc_enumaudio(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #13 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = getelementptr [2 x %struct.v4l2_audio], ptr @vivid_audio_inputs, i32 0, i32 %4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %2, ptr noundef align 4 dereferenceable(52) %7, i32 52, i1 false)
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_audio(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = add i8 %10, -1
  %12 = icmp ult i8 %11, 2
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 187
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr [2 x %struct.v4l2_audio], ptr @vivid_audio_inputs, i32 0, i32 %15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %2, ptr noundef align 4 dereferenceable(52) %16, i32 52, i1 false)
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i32 [ 0, %13 ], [ -22, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_audio(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = add i8 %10, -1
  %12 = icmp ult i8 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, ptr %2, align 4
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 187
  store i32 %14, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %13, %3
  %19 = phi i32 [ 0, %16 ], [ -22, %3 ], [ -22, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_video_g_frequency(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = load i32, ptr %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %9, i32 0, i32 184
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_video_s_frequency(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 704)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 15328)
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 184
  store i32 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  tail call void @vivid_update_quality(ptr noundef %6)
  br label %21

21:                                               ; preds = %20, %9, %3
  %22 = phi i32 [ -22, %3 ], [ 0, %20 ], [ 0, %9 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_video_s_tuner(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 4
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 185
  store i32 %11, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %9, %3
  %16 = phi i32 [ 0, %13 ], [ -22, %3 ], [ -22, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_video_g_tuner(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %61

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 3
  store i32 114, ptr %10, align 4
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 185
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 7
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 4
  store i32 704, ptr %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 5
  store i32 15328, ptr %15, align 4
  %16 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  store i32 0, ptr %16, align 4
  br label %19

19:                                               ; preds = %18, %9
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 10
  %21 = load i32, ptr %20, align 4
  switch i32 %21, label %22 [
    i32 0, label %35
    i32 2, label %29
  ]

22:                                               ; preds = %19
  br i1 %17, label %32, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 184
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, -676
  %27 = urem i32 %26, 96
  %28 = add nsw i32 %27, -16
  store i32 %28, ptr %16, align 4
  br label %32

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 8
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 6
  store i32 0, ptr %31, align 4
  br label %58

32:                                               ; preds = %23, %22
  %33 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 8
  store i32 32768, ptr %33, align 4
  %34 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 6
  store i32 1, ptr %34, align 4
  br label %58

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 8
  store i32 65535, ptr %36, align 4
  %37 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 184
  %38 = load i32, ptr %37, align 8
  %39 = udiv i32 %38, 96
  %40 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 174, i32 %41
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 4096
  %45 = icmp eq i64 %44, 0
  %46 = select i1 %45, i32 3, i32 4
  %47 = urem i32 %39, %46
  switch i32 %47, label %58 [
    i32 0, label %48
    i32 1, label %50
    i32 2, label %52
    i32 3, label %56
  ]

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 6
  store i32 1, ptr %49, align 4
  br label %58

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 6
  store i32 2, ptr %51, align 4
  br label %58

52:                                               ; preds = %35
  %53 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 6
  br i1 %45, label %55, label %54

54:                                               ; preds = %52
  store i32 5, ptr %53, align 4
  br label %58

55:                                               ; preds = %52
  store i32 12, ptr %53, align 4
  br label %58

56:                                               ; preds = %35
  %57 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 6
  store i32 6, ptr %57, align 4
  br label %58

58:                                               ; preds = %56, %55, %54, %50, %48, %35, %32, %29
  %59 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 1
  %60 = tail call i32 @strscpy(ptr noundef %59, ptr noundef nonnull @.str.8, i32 noundef 32) #17
  br label %61

61:                                               ; preds = %58, %3
  %62 = phi i32 [ 0, %58 ], [ -22, %3 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_querystd(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 163, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %8
  %12 = load i8, ptr %11, align 1
  %13 = add i8 %12, -1
  %14 = icmp ult i8 %13, 2
  br i1 %14, label %15, label %42

15:                                               ; preds = %3
  %16 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 162, i32 %8
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i64 0, ptr %2, align 8
  br label %42

21:                                               ; preds = %15
  %22 = icmp eq i8 %12, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 231, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i64 0, ptr %2, align 8
  br label %42

28:                                               ; preds = %23, %21
  switch i32 %17, label %35 [
    i32 0, label %29
    i32 4, label %32
  ]

29:                                               ; preds = %28
  %30 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 174, i32 %8
  %31 = load i64, ptr %30, align 8
  store i64 %31, ptr %2, align 8
  br label %42

32:                                               ; preds = %28
  %33 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 164, i32 %8
  %34 = load i64, ptr %33, align 8
  store i64 %34, ptr %2, align 8
  br label %42

35:                                               ; preds = %28
  %36 = getelementptr [16 x i64], ptr @vivid_standard, i32 0, i32 %10
  %37 = load i64, ptr %36, align 8
  store i64 %37, ptr %2, align 8
  %38 = add i32 %10, 1
  %39 = and i32 %38, 15
  %40 = load i32, ptr %7, align 4
  %41 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 163, i32 %40
  store i32 %39, ptr %41, align 4
  br label %42

42:                                               ; preds = %35, %32, %29, %27, %20, %3
  %43 = phi i32 [ 0, %20 ], [ -61, %3 ], [ 0, %29 ], [ 0, %35 ], [ 0, %32 ], [ 0, %27 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_s_std(ptr noundef %0, ptr nocapture noundef readnone %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = add i8 %10, -1
  %12 = icmp ult i8 %11, 2
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 174, i32 %8
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %15, %2
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 242, i32 21
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 244, i32 21
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i64 %2, ptr %14, align 8
  tail call void @vivid_update_format_cap(ptr noundef %6, i1 noundef zeroext false)
  br label %26

26:                                               ; preds = %25, %21, %17, %13, %3
  %27 = phi i32 [ 0, %25 ], [ -61, %3 ], [ 0, %13 ], [ -16, %21 ], [ -16, %17 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_s_dv_timings(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 3
  br i1 %11, label %12, label %132

12:                                               ; preds = %3
  %13 = tail call zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef %2, ptr noundef nonnull @vivid_dv_timings_cap, i32 noundef 0, ptr noundef null, ptr noundef null) #17
  br i1 %13, label %121, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1
  %16 = tail call zeroext i1 @v4l2_valid_dv_timings(ptr noundef %2, ptr noundef nonnull @vivid_dv_timings_cap, ptr noundef null, ptr noundef null) #17
  br i1 %16, label %17, label %132

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 1
  %19 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 6
  %20 = load i32, ptr %19, align 1
  %21 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 7
  %22 = load i32, ptr %21, align 1
  %23 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 8
  %24 = load i32, ptr %23, align 1
  %25 = add i32 %20, %18
  %26 = add i32 %25, %22
  %27 = add i32 %26, %24
  %28 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 1
  %29 = load i32, ptr %28, align 1
  %30 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 9
  %31 = load i32, ptr %30, align 1
  %32 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 10
  %33 = load i32, ptr %32, align 1
  %34 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 11
  %35 = load i32, ptr %34, align 1
  %36 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 12
  %37 = load i32, ptr %36, align 1
  %38 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 13
  %39 = load i32, ptr %38, align 1
  %40 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 14
  %41 = load i32, ptr %40, align 1
  %42 = add i32 %31, %29
  %43 = add i32 %42, %33
  %44 = add i32 %43, %35
  %45 = add i32 %44, %37
  %46 = add i32 %45, %39
  %47 = add i32 %46, %41
  %48 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 4
  %49 = load i64, ptr %48, align 1
  %50 = trunc i64 %49 to i32
  %51 = udiv i32 %50, %27
  %52 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 15
  %53 = load i32, ptr %52, align 1
  %54 = icmp ne i32 %53, 0
  %55 = and i32 %53, 4
  %56 = icmp eq i32 %55, 0
  %57 = and i1 %54, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %17
  %59 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 3
  %60 = load i32, ptr %59, align 1
  %61 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 2
  %62 = load i32, ptr %61, align 1
  %63 = icmp ne i32 %62, 0
  %64 = tail call zeroext i1 @v4l2_detect_cvt(i32 noundef %47, i32 noundef %51, i32 noundef %33, i32 noundef %18, i32 noundef %60, i1 noundef zeroext %63, ptr noundef %2) #17
  br i1 %64, label %121, label %65

65:                                               ; preds = %58
  %66 = load i32, ptr %52, align 1
  br label %67

67:                                               ; preds = %65, %17
  %68 = phi i32 [ %66, %65 ], [ %53, %17 ]
  %69 = icmp ne i32 %68, 0
  %70 = and i32 %68, 8
  %71 = icmp eq i32 %70, 0
  %72 = and i1 %69, %71
  br i1 %72, label %132, label %73

73:                                               ; preds = %67
  %74 = load i32, ptr %15, align 1
  %75 = load i32, ptr %28, align 1
  %76 = urem i32 %75, 3
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = shl i32 %75, 2
  %80 = udiv i32 %79, 3
  %81 = icmp eq i32 %80, %74
  br i1 %81, label %109, label %82

82:                                               ; preds = %78, %73
  %83 = urem i32 %75, 9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = shl i32 %75, 4
  %87 = udiv i32 %86, 9
  %88 = icmp eq i32 %87, %74
  br i1 %88, label %109, label %89

89:                                               ; preds = %85, %82
  %90 = urem i32 %75, 10
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = shl i32 %75, 4
  %94 = udiv i32 %93, 10
  %95 = icmp eq i32 %94, %74
  br i1 %95, label %109, label %96

96:                                               ; preds = %92, %89
  %97 = and i32 %75, 3
  %98 = icmp eq i32 %97, 0
  %99 = mul i32 %75, 5
  %100 = lshr i32 %99, 2
  %101 = icmp eq i32 %100, %74
  %102 = and i1 %98, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %96
  br i1 %84, label %104, label %108

104:                                              ; preds = %103
  %105 = mul i32 %75, 15
  %106 = udiv i32 %105, 9
  %107 = icmp eq i32 %106, %74
  br i1 %107, label %109, label %108

108:                                              ; preds = %104, %103
  br label %109

109:                                              ; preds = %108, %104, %96, %92, %85, %78
  %110 = phi i32 [ 16, %108 ], [ 4, %78 ], [ 16, %85 ], [ 16, %92 ], [ 5, %96 ], [ 15, %104 ]
  %111 = phi i32 [ 9, %108 ], [ 3, %78 ], [ 9, %85 ], [ 10, %92 ], [ 4, %96 ], [ 9, %104 ]
  %112 = load i32, ptr %32, align 1
  %113 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 3
  %114 = load i32, ptr %113, align 1
  %115 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 2
  %116 = load i32, ptr %115, align 1
  %117 = icmp ne i32 %116, 0
  %118 = insertvalue [2 x i32] poison, i32 %110, 0
  %119 = insertvalue [2 x i32] %118, i32 %111, 1
  %120 = tail call zeroext i1 @v4l2_detect_gtf(i32 noundef %47, i32 noundef %51, i32 noundef %112, i32 noundef %114, i1 noundef zeroext %117, [2 x i32] %119, ptr noundef %2) #17
  br i1 %120, label %121, label %132

121:                                              ; preds = %109, %58, %12
  %122 = load i32, ptr %7, align 4
  %123 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 175, i32 %122
  %124 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %2, ptr noundef %123, i32 noundef 0, i1 noundef zeroext false) #17
  br i1 %124, label %132, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 242, i32 21
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, ptr %7, align 4
  %131 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 175, i32 %130
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(132) %131, ptr noundef align 1 dereferenceable(132) %2, i32 132, i1 false)
  tail call void @vivid_update_format_cap(ptr noundef %6, i1 noundef zeroext false)
  br label %132

132:                                              ; preds = %129, %125, %121, %109, %67, %14, %3
  %133 = phi i32 [ 0, %129 ], [ -61, %3 ], [ 0, %121 ], [ -16, %125 ], [ -22, %14 ], [ -22, %109 ], [ -22, %67 ]
  ret i32 %133
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_match_dv_timings(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_query_dv_timings(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 170, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %8
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 3
  br i1 %13, label %14, label %39

14:                                               ; preds = %3
  %15 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 166, i32 %8
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %39, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 180
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  switch i32 %16, label %33 [
    i32 2, label %39
    i32 3, label %23
    i32 0, label %27
    i32 4, label %29
  ]

23:                                               ; preds = %22
  %24 = load i64, ptr getelementptr inbounds (%struct.v4l2_dv_timings_cap, ptr @vivid_dv_timings_cap, i32 0, i32 3, i32 0, i32 5), align 4
  %25 = shl i64 %24, 1
  %26 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i64 %25, ptr %26, align 1
  br label %39

27:                                               ; preds = %22
  %28 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 175, i32 %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(132) %2, ptr noundef align 4 dereferenceable(132) %28, i32 132, i1 false)
  br label %39

29:                                               ; preds = %22
  %30 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 171, i32 %8
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr [0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 %31
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(132) %2, ptr noundef align 1 dereferenceable(132) %32, i32 132, i1 false)
  br label %39

33:                                               ; preds = %22
  %34 = getelementptr [0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 %10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(132) %2, ptr noundef align 1 dereferenceable(132) %34, i32 132, i1 false)
  %35 = add i32 %10, 1
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 169
  %37 = load i32, ptr %36, align 8
  %38 = urem i32 %35, %37
  store i32 %38, ptr %9, align 4
  br label %39

39:                                               ; preds = %33, %29, %27, %23, %22, %18, %14, %3
  %40 = phi i32 [ -34, %23 ], [ -61, %3 ], [ -67, %18 ], [ -67, %14 ], [ -37, %22 ], [ 0, %29 ], [ 0, %33 ], [ 0, %27 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_edid(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i16, align 2
  %5 = tail call ptr @video_devdata(ptr noundef %0) #17
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #17
  %8 = getelementptr inbounds %struct.v4l2_edid, ptr %2, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false)
  %9 = load i32, ptr %2, align 4
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 51
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %122

13:                                               ; preds = %3
  %14 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 53, i32 %9
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 3
  br i1 %16, label %17, label %122

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.v4l2_edid, ptr %2, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %122

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.v4l2_edid, ptr %2, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 180
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 110
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void @mutex_lock(ptr noundef %32) #17
  %33 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %28, i32 noundef 0) #17
  %34 = load ptr, ptr %29, align 8
  %35 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void @mutex_unlock(ptr noundef %36) #17
  %37 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 111
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void @mutex_lock(ptr noundef %42) #17
  %43 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %38, i32 noundef 0) #17
  %44 = load ptr, ptr %39, align 8
  %45 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  tail call void @mutex_unlock(ptr noundef %46) #17
  store i16 -1, ptr %4, align 2
  br label %100

47:                                               ; preds = %21
  %48 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 181
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %23, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 %49, ptr %22, align 4
  br label %122

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.v4l2_edid, ptr %2, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = shl i32 %23, 7
  %56 = tail call zeroext i16 @cec_get_edid_phys_addr(ptr noundef %54, i32 noundef %55, ptr noundef null) #17
  store i16 %56, ptr %4, align 2
  %57 = call i32 @v4l2_phys_addr_validate(i16 noundef zeroext %56, ptr noundef nonnull %4, ptr noundef null) #17
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %122

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 242, i32 21
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %122

63:                                               ; preds = %59
  %64 = load i32, ptr %22, align 4
  %65 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 180
  store i32 %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 179
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %53, align 4
  %69 = load i32, ptr %22, align 4
  %70 = shl i32 %69, 7
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %67, ptr align 1 %68, i32 %70, i1 false)
  %71 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 55
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %93, label %74

74:                                               ; preds = %88, %63
  %75 = phi i32 [ %90, %88 ], [ 0, %63 ]
  %76 = phi i32 [ %91, %88 ], [ 0, %63 ]
  %77 = phi i32 [ %89, %88 ], [ 0, %63 ]
  %78 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 57, i32 %76
  %79 = load i8, ptr %78, align 1
  %80 = icmp eq i8 %79, 3
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 219, i32 %76
  %83 = load i8, ptr %82, align 1, !range !8
  %84 = zext i8 %83 to i32
  %85 = add i32 %75, 1
  %86 = shl nuw i32 %84, %75
  %87 = or i32 %86, %77
  br label %88

88:                                               ; preds = %81, %74
  %89 = phi i32 [ %87, %81 ], [ %77, %74 ]
  %90 = phi i32 [ %85, %81 ], [ %75, %74 ]
  %91 = add nuw i32 %76, 1
  %92 = icmp eq i32 %91, %72
  br i1 %92, label %93, label %74

93:                                               ; preds = %88, %63
  %94 = phi i32 [ 0, %63 ], [ %89, %88 ]
  %95 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 110
  %96 = load ptr, ptr %95, align 4
  call fastcc void @v4l2_ctrl_s_ctrl(ptr noundef %96, i32 noundef %94)
  %97 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 111
  %98 = load ptr, ptr %97, align 8
  call fastcc void @v4l2_ctrl_s_ctrl(ptr noundef %98, i32 noundef %94)
  %99 = load i16, ptr %4, align 2
  br label %100

100:                                              ; preds = %93, %25
  %101 = phi i16 [ %99, %93 ], [ -1, %25 ]
  %102 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 352
  %103 = load ptr, ptr %102, align 8
  call void @cec_s_phys_addr(ptr noundef %103, i16 noundef zeroext %101, i1 noundef zeroext false) #17
  br label %104

104:                                              ; preds = %118, %100
  %105 = phi i32 [ 0, %100 ], [ %120, %118 ]
  %106 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 353, i32 %105
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %122, label %109

109:                                              ; preds = %104
  %110 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 219, i32 %105
  %111 = load i8, ptr %110, align 1, !range !8
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = load i16, ptr %4, align 2
  %115 = trunc i32 %105 to i8
  %116 = add nuw nsw i8 %115, 1
  %117 = call zeroext i16 @v4l2_phys_addr_for_input(i16 noundef zeroext %114, i8 noundef zeroext %116) #17
  br label %118

118:                                              ; preds = %113, %109
  %119 = phi i16 [ %117, %113 ], [ -1, %109 ]
  call void @cec_s_phys_addr(ptr noundef nonnull %107, i16 noundef zeroext %119, i1 noundef zeroext false) #17
  %120 = add nuw nsw i32 %105, 1
  %121 = icmp eq i32 %120, 16
  br i1 %121, label %122, label %104

122:                                              ; preds = %118, %104, %59, %52, %51, %17, %13, %3
  %123 = phi i32 [ -7, %51 ], [ -22, %3 ], [ -22, %17 ], [ -22, %13 ], [ %57, %52 ], [ -16, %59 ], [ 0, %118 ], [ 0, %104 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #17
  ret i32 %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cec_get_edid_phys_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_phys_addr_validate(i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @v4l2_phys_addr_for_input(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_enum_framesizes(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 325
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %44, label %16

16:                                               ; preds = %12, %3
  %17 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @vivid_get_format(ptr noundef %6, i32 noundef %18) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %44, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %7, align 4
  %23 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  %26 = load i32, ptr %2, align 4
  br i1 %25, label %27, label %34

27:                                               ; preds = %21
  %28 = icmp ugt i32 %26, 5
  br i1 %28, label %44, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 2
  store i32 1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3
  %32 = getelementptr [6 x %struct.v4l2_frmsize_discrete], ptr @webcam_sizes, i32 0, i32 %26
  %33 = load i64, ptr %32, align 4
  store i64 %33, ptr %31, align 4
  br label %44

34:                                               ; preds = %21
  %35 = icmp eq i32 %26, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 2
  store i32 3, ptr %37, align 4
  %38 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3
  store i32 16, ptr %38, align 4
  %39 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3, i32 0, i32 1
  store i32 16384, ptr %39, align 4
  %40 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3, i32 0, i32 2
  store i32 2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3, i32 0, i32 3
  store i32 16, ptr %41, align 4
  %42 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3, i32 0, i32 4
  store i32 8640, ptr %42, align 4
  %43 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3, i32 0, i32 5
  store i32 2, ptr %43, align 4
  br label %44

44:                                               ; preds = %36, %34, %29, %27, %16, %12
  %45 = phi i32 [ 0, %29 ], [ 0, %36 ], [ -22, %12 ], [ -22, %16 ], [ -22, %27 ], [ -22, %34 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_enum_frameintervals(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @vivid_get_format(ptr noundef %6, i32 noundef %8) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %66, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 3
  switch i32 %19, label %66 [
    i32 320, label %39
    i32 640, label %42
    i32 1280, label %48
    i32 1920, label %51
    i32 3840, label %54
  ]

21:                                               ; preds = %11
  %22 = load i32, ptr %2, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -16385
  %28 = icmp ult i32 %27, -16369
  br i1 %28, label %66, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -8641
  %33 = icmp ult i32 %32, -8625
  br i1 %33, label %66, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 4
  store i32 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5
  %37 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 235
  %38 = load i64, ptr %37, align 8
  store i64 %38, ptr %36, align 4
  br label %66

39:                                               ; preds = %17
  %40 = load i32, ptr %20, align 4
  %41 = icmp eq i32 %40, 180
  br i1 %41, label %57, label %66

42:                                               ; preds = %17
  %43 = load i32, ptr %20, align 4
  %44 = icmp eq i32 %43, 360
  br i1 %44, label %57, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %20, align 4
  %47 = icmp eq i32 %46, 480
  br i1 %47, label %57, label %66

48:                                               ; preds = %17
  %49 = load i32, ptr %20, align 4
  %50 = icmp eq i32 %49, 720
  br i1 %50, label %57, label %66

51:                                               ; preds = %17
  %52 = load i32, ptr %20, align 4
  %53 = icmp eq i32 %52, 1080
  br i1 %53, label %57, label %66

54:                                               ; preds = %17
  %55 = load i32, ptr %20, align 4
  %56 = icmp eq i32 %55, 2160
  br i1 %56, label %57, label %66

57:                                               ; preds = %54, %51, %48, %45, %42, %39
  %58 = phi i32 [ 12, %39 ], [ 10, %42 ], [ 8, %45 ], [ 6, %48 ], [ 4, %51 ], [ 2, %54 ]
  %59 = load i32, ptr %2, align 4
  %60 = icmp ult i32 %59, %58
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 4
  store i32 1, ptr %62, align 4
  %63 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5
  %64 = getelementptr [12 x %struct.v4l2_fract], ptr @webcam_intervals, i32 0, i32 %59
  %65 = load i64, ptr %64, align 4
  store i64 %65, ptr %63, align 4
  br label %66

66:                                               ; preds = %61, %57, %54, %51, %48, %45, %39, %34, %29, %24, %21, %17, %3
  %67 = phi i32 [ 0, %61 ], [ 0, %34 ], [ -22, %3 ], [ -22, %21 ], [ -22, %24 ], [ -22, %29 ], [ -22, %57 ], [ -22, %54 ], [ -22, %51 ], [ -22, %48 ], [ -22, %39 ], [ -22, %45 ], [ -22, %17 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_g_parm(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %9 = load i8, ptr %8, align 8, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 1, i32 9
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1
  store i32 4096, ptr %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 235
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %13 ], [ -22, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_vid_cap_s_parm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 182
  %8 = load i32, ptr %7, align 8
  %9 = mul i32 %8, -2
  %10 = add i32 %9, 12
  %11 = load i32, ptr %2, align 4
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %13 = load i8, ptr %12, align 8, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i32 1, i32 9
  %16 = icmp eq i32 %11, %15
  br i1 %16, label %17, label %86

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %17
  %24 = tail call ptr @video_devdata(ptr noundef %0) #17
  %25 = getelementptr inbounds %struct.video_device, ptr %24, i32 0, i32 5, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = load i32, ptr %2, align 4
  %28 = getelementptr inbounds %struct.vivid_dev, ptr %26, i32 0, i32 50
  %29 = load i8, ptr %28, align 8, !range !8
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, i32 1, i32 9
  %32 = icmp eq i32 %27, %31
  br i1 %32, label %33, label %86

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1
  store i32 4096, ptr %34, align 4
  %35 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %26, i32 0, i32 235
  %37 = load i64, ptr %36, align 8
  store i64 %37, ptr %35, align 4
  br label %84

38:                                               ; preds = %17
  %39 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1
  %40 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2
  %41 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = add i32 %9, 11
  %46 = getelementptr [12 x %struct.v4l2_fract], ptr @webcam_intervals, i32 0, i32 %45
  %47 = getelementptr inbounds i8, ptr %46, i32 4
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi ptr [ %46, %44 ], [ %40, %38 ]
  %51 = phi i32 [ %48, %44 ], [ %42, %38 ]
  %52 = load i32, ptr %50, align 4
  %53 = zext i32 %52 to i64
  %54 = icmp eq i32 %10, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %49
  %56 = zext i32 %51 to i64
  br label %57

57:                                               ; preds = %68, %55
  %58 = phi i32 [ 0, %55 ], [ %69, %68 ]
  %59 = getelementptr [12 x %struct.v4l2_fract], ptr @webcam_intervals, i32 0, i32 %58
  %60 = getelementptr [12 x %struct.v4l2_fract], ptr @webcam_intervals, i32 0, i32 %58, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = zext i32 %61 to i64
  %63 = mul nuw i64 %62, %53
  %64 = load i32, ptr %59, align 4
  %65 = zext i32 %64 to i64
  %66 = mul nuw i64 %65, %56
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = add nuw i32 %58, 1
  %70 = icmp eq i32 %69, %10
  br i1 %70, label %71, label %57

71:                                               ; preds = %68, %57, %49
  %72 = phi i32 [ 0, %49 ], [ %58, %57 ], [ %10, %68 ]
  %73 = icmp eq i32 %72, %10
  %74 = add i32 %9, 11
  %75 = select i1 %73, i32 %74, i32 %72
  %76 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 183
  store i32 %75, ptr %76, align 4
  %77 = getelementptr [12 x %struct.v4l2_fract], ptr @webcam_intervals, i32 0, i32 %75
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds i8, ptr %77, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 257
  store i8 1, ptr %81, align 8
  %82 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 235
  store i32 %78, ptr %82, align 8
  %83 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 235, i32 1
  store i32 %80, ptr %83, align 4
  store i32 4096, ptr %39, align 4
  store i32 %78, ptr %40, align 4
  store i32 %80, ptr %41, align 4
  br label %84

84:                                               ; preds = %71, %33
  %85 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 1, ptr %85, align 4
  br label %86

86:                                               ; preds = %84, %23, %3
  %87 = phi i32 [ -22, %3 ], [ -22, %23 ], [ 0, %84 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vivid_vid_can_loop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_start_generating_vid_cap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_stop_generating_vid_cap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_valid_dv_timings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_detect_cvt(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_detect_gtf(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, [2 x i32], ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind readonly }
attributes #20 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149217184}
!11 = !{i64 2149213008}
!12 = !{i64 2149213083, i64 2149213110, i64 2149213157, i64 2149213179, i64 2149213207, i64 2149213227}
!13 = !{i64 2149240187}
!14 = !{i64 894305, i64 894332, i64 894354, i64 894382}
!15 = !{i64 894713, i64 894740, i64 894773, i64 894794, i64 894821, i64 894847}
!16 = !{i64 2151313301, i64 2151313326}
!17 = !{i64 3808835}
!18 = !{i64 3809032}
!19 = !{i64 2151294311}
!20 = !{i64 2151312723, i64 2151312748}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2148812606, i64 2148812629, i64 2148812661, i64 2148812693, i64 2148812731, i64 2148812761}
