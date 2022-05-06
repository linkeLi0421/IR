; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-vid-common.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-vid-common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon }
%union.anon = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.vivid_fmt = type { i32, i32, i8, [3 x i8], i32, i8, i8, [3 x i32], [3 x i32] }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.82, %struct.anon.83, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.66], %struct.media_entity_enum, i32 }
%struct.anon.66 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.81 = type { ptr, ptr }
%struct.anon.82 = type { ptr, ptr }
%struct.anon.83 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.84 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.85 }
%struct.anon.85 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.77 }
%union.anon.77 = type { [32 x i32] }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.86, i32, i32 }
%union.anon.86 = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_event = type { i32, %union.anon.96, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.96 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.97, i32, i32, i32, i32, i32 }
%union.anon.97 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.v4l2_event_src_change = type { i32 }
%struct.v4l2_format = type { i32, %union.anon.98 }
%union.anon.98 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.99, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.99 = type { i8 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], ptr }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.89 }
%union.anon.89 = type { [16 x i32] }

@vivid_dv_timings_cap = dso_local constant %struct.v4l2_dv_timings_cap { i32 0, i32 0, [2 x i32] zeroinitializer, %union.anon { %struct.v4l2_bt_timings_cap { i32 16, i32 4096, i32 16, i32 2160, i64 14000000, i64 775000000, i32 15, i32 3, [16 x i32] zeroinitializer }, [24 x i8] undef } }, align 4
@vivid_formats = dso_local global [91 x %struct.vivid_fmt] [%struct.vivid_fmt { i32 1448695129, i32 1, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] [i32 128, i32 0, i32 0], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 1498831189, i32 1, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 1431918169, i32 1, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 1498765654, i32 1, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 1345466932, i32 1, i8 0, [3 x i8] c"\01\01\01", i32 0, i8 3, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 4, i32 4] }, %struct.vivid_fmt { i32 842093913, i32 1, i8 0, [3 x i8] c"\01\02\02", i32 0, i8 3, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 4, i32 4] }, %struct.vivid_fmt { i32 842094169, i32 1, i8 0, [3 x i8] c"\01\02\02", i32 0, i8 3, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 4, i32 4] }, %struct.vivid_fmt { i32 842094158, i32 1, i8 0, [3 x i8] c"\01\02\00", i32 0, i8 2, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 8, i32 0] }, %struct.vivid_fmt { i32 825382478, i32 1, i8 0, [3 x i8] c"\01\02\00", i32 0, i8 2, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 8, i32 0] }, %struct.vivid_fmt { i32 909203022, i32 1, i8 0, [3 x i8] c"\01\01\00", i32 0, i8 2, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 8, i32 0] }, %struct.vivid_fmt { i32 825644622, i32 1, i8 0, [3 x i8] c"\01\01\00", i32 0, i8 2, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 8, i32 0] }, %struct.vivid_fmt { i32 875714126, i32 1, i8 0, [3 x i8] c"\01\01\00", i32 0, i8 2, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 16, i32 0] }, %struct.vivid_fmt { i32 842290766, i32 1, i8 0, [3 x i8] c"\01\01\00", i32 0, i8 2, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 16, i32 0] }, %struct.vivid_fmt { i32 1331058009, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 32768, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 1347835225, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 875836505, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 61440, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 878073177, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 255, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 1448433985, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 255, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 1448434008, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 1096373590, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 -16777216, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 1482249558, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 1497715271, i32 3, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 0, i32 0] }, %struct.vivid_fmt { i32 540029273, i32 3, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 540160345, i32 3, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 540422489, i32 3, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 -1607061159, i32 3, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 826427218, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 0, i32 0] }, %struct.vivid_fmt { i32 1346520914, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 1380075346, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 875836498, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842093144, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842093121, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 240, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842094674, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842088786, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 240, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842089048, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842089025, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 240, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842094658, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842088775, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 240, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 1329743698, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892424792, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892424769, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 32768, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892426322, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892420434, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 32768, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892420696, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892420673, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 32768, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892426306, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 892420418, i32 0, i8 1, [3 x i8] c"\01\00\00", i32 32768, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 1363298130, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 -1255058856, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 -1255058879, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 128, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 859981650, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 24, i32 0, i32 0] }, %struct.vivid_fmt { i32 861030210, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 24, i32 0, i32 0] }, %struct.vivid_fmt { i32 1213351746, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 876758866, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 877807426, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 875714626, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 875713112, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 875708738, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 255, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 875713089, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 -16777216, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 875709016, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 875714642, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 875708993, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 255, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 875708754, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 -16777216, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 825770306, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 0, i32 0] }, %struct.vivid_fmt { i32 1196573255, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 0, i32 0] }, %struct.vivid_fmt { i32 1195528775, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 0, i32 0] }, %struct.vivid_fmt { i32 1111967570, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 0, i32 0] }, %struct.vivid_fmt { i32 808535874, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 808534599, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 808534338, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 808535890, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842090306, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842089031, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842088770, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 842090322, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 844257602, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 909197895, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 909201991, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 909199186, i32 0, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 0, i32 0] }, %struct.vivid_fmt { i32 861295432, i32 2, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 24, i32 0, i32 0] }, %struct.vivid_fmt { i32 878072648, i32 2, i8 0, [3 x i8] c"\01\00\00", i32 0, i8 1, i8 1, [3 x i32] zeroinitializer, [3 x i32] [i32 32, i32 0, i32 0] }, %struct.vivid_fmt { i32 909200718, i32 1, i8 0, [3 x i8] c"\01\01\00", i32 0, i8 2, i8 2, [3 x i32] [i32 128, i32 0, i32 0], [3 x i32] [i32 8, i32 8, i32 0] }, %struct.vivid_fmt { i32 825642318, i32 1, i8 0, [3 x i8] c"\01\01\00", i32 0, i8 2, i8 2, [3 x i32] [i32 0, i32 128, i32 0], [3 x i32] [i32 8, i32 8, i32 0] }, %struct.vivid_fmt { i32 842091865, i32 1, i8 0, [3 x i8] c"\01\02\02", i32 0, i8 3, i8 3, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 4, i32 4] }, %struct.vivid_fmt { i32 825380185, i32 1, i8 0, [3 x i8] c"\01\02\02", i32 0, i8 3, i8 3, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 4, i32 4] }, %struct.vivid_fmt { i32 842091854, i32 1, i8 0, [3 x i8] c"\01\02\00", i32 0, i8 2, i8 2, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 8, i32 0] }, %struct.vivid_fmt { i32 825380174, i32 1, i8 0, [3 x i8] c"\01\02\00", i32 0, i8 2, i8 2, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 8, i32 0] }, %struct.vivid_fmt { i32 909200729, i32 1, i8 0, [3 x i8] c"\01\01\01", i32 0, i8 3, i8 3, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 4, i32 4] }, %struct.vivid_fmt { i32 825642329, i32 1, i8 0, [3 x i8] c"\01\01\01", i32 0, i8 3, i8 3, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 4, i32 4] }, %struct.vivid_fmt { i32 875711833, i32 1, i8 0, [3 x i8] c"\01\01\01", i32 0, i8 3, i8 3, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 8, i32 8] }, %struct.vivid_fmt { i32 842288473, i32 1, i8 0, [3 x i8] c"\01\01\01", i32 0, i8 3, i8 3, [3 x i32] zeroinitializer, [3 x i32] [i32 8, i32 8, i32 8] }], align 4
@switch.table.vivid_enum_fmt_vid = private unnamed_addr constant [3 x i32] [i32 352, i32 480, i32 224], align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @vivid_get_format(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 50
  br label %4

4:                                                ; preds = %16, %2
  %5 = phi i32 [ 0, %2 ], [ %17, %16 ]
  %6 = getelementptr [91 x %struct.vivid_fmt], ptr @vivid_formats, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = getelementptr [91 x %struct.vivid_fmt], ptr @vivid_formats, i32 0, i32 %5, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = load i8, ptr %3, align 8, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %4
  %17 = add nuw nsw i32 %5, 1
  %18 = icmp eq i32 %17, 91
  br i1 %18, label %19, label %4

19:                                               ; preds = %16, %13, %9
  %20 = phi ptr [ %6, %13 ], [ %6, %9 ], [ null, %16 ]
  ret ptr %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vivid_vid_can_loop(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 237, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 281, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %58

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 237, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 281, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %58

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 234
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 278
  %18 = load ptr, ptr %17, align 8
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 236
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 280
  %25 = load i32, ptr %24, align 4
  %26 = icmp ne i32 %23, %25
  %27 = add i32 %23, -5
  %28 = icmp ult i32 %27, 2
  %29 = or i1 %26, %28
  br i1 %29, label %58, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 173
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 53, i32 %32
  %34 = load i8, ptr %33, align 1
  switch i8 %34, label %57 [
    i8 2, label %35
    i8 3, label %51
  ]

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 199
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 57, i32 %37
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 2
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 174, i32 %32
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 63744
  %45 = icmp ne i64 %44, 0
  %46 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 200
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 63744
  %49 = icmp eq i64 %48, 0
  %50 = xor i1 %45, %49
  br label %58

51:                                               ; preds = %30
  %52 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 199
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 57, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 3
  br i1 %56, label %58, label %57

57:                                               ; preds = %51, %35, %30
  br label %58

58:                                               ; preds = %57, %51, %41, %21, %13, %7, %1
  %59 = phi i1 [ false, %57 ], [ false, %7 ], [ false, %1 ], [ false, %13 ], [ false, %21 ], [ %50, %41 ], [ true, %51 ]
  ret i1 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_send_source_change(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.v4l2_event, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i32 136, i1 false)
  store i32 5, ptr %3, align 8
  %4 = getelementptr inbounds { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32], [4 x i8] }, ptr %3, i32 0, i32 2
  store i32 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 51
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.v4l2_event, ptr %3, i32 0, i32 5
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18, i32 17
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 61
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22, i32 17
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 63
  br label %16

16:                                               ; preds = %38, %8
  %17 = phi i32 [ 0, %8 ], [ %39, %38 ]
  store i32 %17, ptr %9, align 8
  %18 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 53, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load volatile i32, ptr %11, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i8, ptr %12, align 2, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  call void @v4l2_event_queue(ptr noundef %10, ptr noundef nonnull %3) #9
  br label %30

30:                                               ; preds = %29, %26, %22
  %31 = load volatile i32, ptr %14, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr %15, align 8, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call void @v4l2_event_queue(ptr noundef %13, ptr noundef nonnull %3) #9
  br label %38

38:                                               ; preds = %37, %34, %30, %16
  %39 = add nuw i32 %17, 1
  %40 = load i32, ptr %5, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %16, label %42

42:                                               ; preds = %38, %2
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @fmt_sp2mp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5
  %5 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %0, align 4
  %7 = icmp eq i32 %6, 2
  %8 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 11
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(7) %8, i8 0, i32 7, i1 false)
  %9 = select i1 %7, i32 10, i32 9
  store i32 %9, ptr %1, align 4
  %10 = load i32, ptr %5, align 4
  store i32 %10, ptr %3, align 1
  %11 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  store i32 %12, ptr %13, align 1
  %14 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 2
  store i32 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 3
  store i32 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 4
  store i32 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 10
  store i8 %25, ptr %26, align 1
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 8
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 9
  store i8 %33, ptr %34, align 1
  %35 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 6
  store i8 1, ptr %35, align 1
  %36 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 7
  store i8 %38, ptr %39, align 1
  %40 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %4, align 1
  %42 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %43, ptr %44, align 1
  %45 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(12) %45, i8 0, i32 12, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fmt_sp2mp_func(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #3 {
  %5 = alloca %struct.v4l2_format, align 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %5) #9
  %6 = getelementptr inbounds i8, ptr %5, i32 44
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(204) %6, i8 0, i32 160, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %5, i32 0, i32 1
  %8 = getelementptr inbounds %struct.v4l2_format, ptr %5, i32 0, i32 1, i32 0, i32 5
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 2
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %5, i32 0, i32 1, i32 0, i32 11
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(7) %12, i8 0, i32 7, i1 false) #9
  %13 = select i1 %11, i32 10, i32 9
  store i32 %13, ptr %5, align 4
  %14 = load i32, ptr %9, align 4
  store i32 %14, ptr %7, align 4
  %15 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %5, i32 0, i32 1, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_format, ptr %5, i32 0, i32 1, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.v4l2_format, ptr %5, i32 0, i32 1, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %5, i32 0, i32 1, i32 0, i32 4
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %5, i32 0, i32 1, i32 0, i32 10
  store i8 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.v4l2_format, ptr %5, i32 0, i32 1, i32 0, i32 8
  store i8 %33, ptr %34, align 2
  %35 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.v4l2_format, ptr %5, i32 0, i32 1, i32 0, i32 9
  store i8 %37, ptr %38, align 1
  %39 = getelementptr inbounds %struct.v4l2_format, ptr %5, i32 0, i32 1, i32 0, i32 6
  store i8 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.v4l2_format, ptr %5, i32 0, i32 1, i32 0, i32 7
  store i8 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %8, align 4
  %46 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.v4l2_format, ptr %5, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.v4l2_format, ptr %5, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %49, i8 0, i32 12, i1 false) #9
  %50 = call i32 %3(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #9
  %51 = load i32, ptr %7, align 4
  store i32 %51, ptr %9, align 4
  %52 = load i32, ptr %17, align 4
  store i32 %52, ptr %15, align 4
  %53 = load i32, ptr %20, align 4
  store i32 %53, ptr %18, align 4
  %54 = load i32, ptr %23, align 4
  store i32 %54, ptr %21, align 4
  %55 = load i32, ptr %26, align 4
  store i32 %55, ptr %24, align 4
  %56 = load i8, ptr %30, align 4
  %57 = zext i8 %56 to i32
  store i32 %57, ptr %27, align 4
  %58 = load i8, ptr %34, align 2
  %59 = zext i8 %58 to i32
  store i32 %59, ptr %31, align 4
  %60 = load i8, ptr %38, align 1
  %61 = zext i8 %60 to i32
  store i32 %61, ptr %35, align 4
  %62 = load i32, ptr %8, align 4
  store i32 %62, ptr %44, align 4
  %63 = load i32, ptr %48, align 4
  store i32 %63, ptr %46, align 4
  %64 = load i8, ptr %43, align 1
  %65 = zext i8 %64 to i32
  store i32 %65, ptr %40, align 4
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %5) #9
  ret i32 %50
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @vivid_vid_adjust_sel(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.v4l2_rect, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.v4l2_rect, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %4, 65535
  %8 = and i32 %6, 65535
  %9 = and i32 %0, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = tail call i32 @llvm.umax.i32(i32 %7, i32 1)
  %13 = add nuw nsw i32 %12, 1
  %14 = tail call i32 @llvm.umax.i32(i32 %8, i32 1)
  %15 = add nuw nsw i32 %14, 1
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i32 [ %7, %2 ], [ %13, %11 ]
  %18 = phi i32 [ %8, %2 ], [ %15, %11 ]
  %19 = and i32 %0, 1
  %20 = icmp eq i32 %19, 0
  %21 = tail call i32 @llvm.umin.i32(i32 %17, i32 4096)
  %22 = tail call i32 @llvm.umin.i32(i32 %18, i32 2160)
  %23 = select i1 %20, i32 %21, i32 %17
  %24 = select i1 %20, i32 %22, i32 %18
  %25 = and i32 %23, -2
  %26 = and i32 %24, -2
  %27 = icmp eq i32 %25, 0
  %28 = icmp eq i32 %26, 0
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %59, label %30

30:                                               ; preds = %16
  %31 = icmp ugt i32 %25, 4096
  %32 = icmp ugt i32 %26, 2160
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %59, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.v4l2_rect, ptr %1, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = call i32 @llvm.smax.i32(i32 %36, i32 0)
  %38 = load i32, ptr %1, align 4
  %39 = call i32 @llvm.smax.i32(i32 %38, i32 0)
  %40 = and i32 %39, 65534
  store i32 %40, ptr %1, align 4
  %41 = and i32 %37, 65534
  store i32 %41, ptr %35, align 4
  %42 = add nuw nsw i32 %40, %25
  %43 = icmp ugt i32 %42, 4096
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = sub nuw nsw i32 4096, %25
  store i32 %45, ptr %1, align 4
  br label %46

46:                                               ; preds = %44, %34
  %47 = add nuw nsw i32 %41, %26
  %48 = icmp ugt i32 %47, 2160
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = sub nuw nsw i32 2160, %26
  store i32 %50, ptr %35, align 4
  br label %51

51:                                               ; preds = %49, %46
  %52 = and i32 %0, 3
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = icmp eq i32 %4, %25
  %56 = icmp eq i32 %6, %26
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %51
  store i32 %25, ptr %3, align 4
  store i32 %26, ptr %5, align 4
  br label %59

59:                                               ; preds = %58, %54, %30, %16
  %60 = phi i32 [ 0, %58 ], [ -34, %16 ], [ -34, %30 ], [ -34, %54 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_enum_fmt_vid(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %9 = load i8, ptr %8, align 8, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 81, i32 91
  %12 = icmp ult i32 %7, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = getelementptr [91 x %struct.vivid_fmt], ptr @vivid_formats, i32 0, i32 %7
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %30 [
    i32 1, label %19
    i32 9, label %19
  ]

19:                                               ; preds = %13, %13
  %20 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 96
  store i32 %22, ptr %20, align 4
  %23 = getelementptr [91 x %struct.vivid_fmt], ptr @vivid_formats, i32 0, i32 %7, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, 3
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = getelementptr inbounds [3 x i32], ptr @switch.table.vivid_enum_fmt_vid, i32 0, i32 %24
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %21, %28
  store i32 %29, ptr %20, align 4
  br label %30

30:                                               ; preds = %26, %19, %13, %3
  %31 = phi i32 [ -22, %3 ], [ 0, %13 ], [ 0, %19 ], [ 0, %26 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_std(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = add i8 %15, -1
  %17 = icmp ult i8 %16, 2
  br i1 %17, label %18, label %31

18:                                               ; preds = %11
  %19 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 174, i32 %13
  br label %28

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 199
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 200
  br label %28

28:                                               ; preds = %26, %18
  %29 = phi ptr [ %27, %26 ], [ %19, %18 ]
  %30 = load i64, ptr %29, align 8
  store i64 %30, ptr %2, align 8
  br label %31

31:                                               ; preds = %28, %20, %11
  %32 = phi i32 [ 0, %28 ], [ -61, %11 ], [ -61, %20 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_dv_timings(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 3
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 175, i32 %13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(132) %2, ptr noundef align 4 dereferenceable(132) %18, i32 132, i1 false)
  br label %27

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 199
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 3
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 201
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(132) %2, ptr noundef align 8 dereferenceable(132) %26, i32 132, i1 false)
  br label %27

27:                                               ; preds = %25, %19, %17, %11
  %28 = phi i32 [ -61, %11 ], [ -61, %19 ], [ 0, %25 ], [ 0, %17 ]
  ret i32 %28
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_enum_dv_timings(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 3
  br i1 %16, label %23, label %25

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 199
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 3
  br i1 %22, label %23, label %25

23:                                               ; preds = %17, %11
  %24 = tail call i32 @v4l2_enum_dv_timings_cap(ptr noundef %2, ptr noundef nonnull @vivid_dv_timings_cap, ptr noundef null, ptr noundef null) #9
  br label %25

25:                                               ; preds = %23, %17, %11
  %26 = phi i32 [ %24, %23 ], [ -61, %11 ], [ -61, %17 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_enum_dv_timings_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_dv_timings_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 3
  br i1 %16, label %23, label %24

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 199
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(144) %2, ptr noundef nonnull align 4 dereferenceable(144) @vivid_dv_timings_cap, i32 144, i1 false)
  br label %24

24:                                               ; preds = %23, %17, %11
  %25 = phi i32 [ 0, %23 ], [ -61, %11 ], [ -61, %17 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_edid(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.v4l2_edid, ptr %2, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false)
  %9 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr %2, align 4
  br i1 %11, label %13, label %23

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 51
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %87

17:                                               ; preds = %13
  %18 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %12
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 3
  br i1 %20, label %21, label %87

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 352
  br label %40

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 55
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %12, %25
  br i1 %26, label %27, label %87

27:                                               ; preds = %23
  %28 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %12
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 3
  br i1 %30, label %31, label %87

31:                                               ; preds = %27
  %32 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 219, i32 %12
  %33 = load i8, ptr %32, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %87, label %35

35:                                               ; preds = %31
  %36 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 354, i32 %12
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 353, i32 %38
  br label %40

40:                                               ; preds = %35, %21
  %41 = phi ptr [ %22, %21 ], [ %39, %35 ]
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.v4l2_edid, ptr %2, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.v4l2_edid, ptr %2, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 180
  %52 = load i32, ptr %51, align 8
  store i32 %52, ptr %47, align 4
  br label %87

53:                                               ; preds = %46, %40
  %54 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 180
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %87, label %57

57:                                               ; preds = %53
  %58 = icmp ugt i32 %55, %44
  br i1 %58, label %59, label %87

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.v4l2_edid, ptr %2, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = sub i32 %55, %44
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 %62, ptr %60, align 4
  br label %65

65:                                               ; preds = %64, %59
  %66 = phi i32 [ %62, %64 ], [ %61, %59 ]
  %67 = icmp eq ptr %42, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 179
  %70 = load ptr, ptr %69, align 4
  %71 = load i32, ptr %54, align 8
  %72 = shl i32 %71, 7
  %73 = getelementptr inbounds %struct.cec_adapter, ptr %42, i32 0, i32 18
  %74 = load i16, ptr %73, align 2
  tail call void @v4l2_set_edid_phys_addr(ptr noundef %70, i32 noundef %72, i16 noundef zeroext %74) #9
  %75 = load i32, ptr %43, align 4
  %76 = load i32, ptr %60, align 4
  br label %77

77:                                               ; preds = %68, %65
  %78 = phi i32 [ %76, %68 ], [ %66, %65 ]
  %79 = phi i32 [ %75, %68 ], [ %44, %65 ]
  %80 = getelementptr inbounds %struct.v4l2_edid, ptr %2, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 179
  %83 = load ptr, ptr %82, align 4
  %84 = shl i32 %79, 7
  %85 = getelementptr i8, ptr %83, i32 %84
  %86 = shl i32 %78, 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %81, ptr align 1 %85, i32 %86, i1 false)
  br label %87

87:                                               ; preds = %77, %57, %53, %50, %31, %27, %23, %17, %13
  %88 = phi i32 [ 0, %50 ], [ 0, %77 ], [ -22, %13 ], [ -22, %17 ], [ -61, %53 ], [ -22, %57 ], [ -61, %31 ], [ -22, %27 ], [ -22, %23 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_set_edid_phys_addr(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

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
