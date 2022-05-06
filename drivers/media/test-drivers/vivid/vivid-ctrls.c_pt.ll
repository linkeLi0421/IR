; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-ctrls.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-ctrls.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%struct.v4l2_area = type { i32, i32 }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.82, %struct.anon.83, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.v4l2_dv_timings = type { i32, %union.anon.76 }
%union.anon.76 = type { [32 x i32] }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.89 }
%union.anon.89 = type { [16 x i32] }

@vivid_vid_cap_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_vid_cap_s_ctrl }, align 4
@.str = private unnamed_addr constant [11 x i8] c"DV Timings\00", align 1
@__const.vivid_create_controls.vivid_ctrl_dv_timings = private unnamed_addr constant { ptr, ptr, i32, ptr, i32, [4 x i8], i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, [4 x i8], i64, ptr, ptr, i8, [7 x i8] } { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790143, ptr @.str, i32 3, [4 x i8] zeroinitializer, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer }, align 8
@vivid_ctrl_class = internal constant %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 15728641, ptr @.str.4, i32 6, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 68, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_user_vid_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr @vivid_user_vid_g_volatile_ctrl, ptr null, ptr @vivid_user_vid_s_ctrl }, align 4
@vivid_ctrl_button = internal constant %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025216, ptr @.str.6, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_int32 = internal constant %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025218, ptr @.str.7, i32 1, i64 -2147483648, i64 2147483647, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_int64 = internal constant %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025219, ptr @.str.8, i32 5, i64 -9223372036854775808, i64 9223372036854775807, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_boolean = internal constant %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025217, ptr @.str.9, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_menu = internal constant %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025220, ptr @.str.10, i32 3, i64 1, i64 4, i64 0, i64 3, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 4, ptr @vivid_ctrl_menu_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_string = internal constant %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025221, ptr @.str.17, i32 7, i64 2, i64 4, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_bitmask = internal constant %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025222, ptr @.str.18, i32 8, i64 0, i64 2151686160, i64 0, i64 2147491840, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_int_menu = internal constant %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025223, ptr @.str.19, i32 9, i64 1, i64 8, i64 0, i64 4, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 2, ptr null, ptr @vivid_ctrl_int_menu_values, i8 0 }, align 8
@vivid_ctrl_ro_int32 = internal constant %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025228, ptr @.str.20, i32 1, i64 0, i64 255, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 4, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_area = internal constant %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025227, ptr @.str.21, i32 262, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr { ptr @area }, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_u32_array = internal constant %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025224, ptr @.str.22, i32 258, i64 16, i64 131072, i64 1, i64 24, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] [i32 1, i32 0, i32 0, i32 0], i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_u16_matrix = internal constant %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025225, ptr @.str.23, i32 257, i64 16, i64 8192, i64 1, i64 24, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] [i32 8, i32 16, i32 0, i32 0], i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_u8_4d_array = internal constant %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 10025226, ptr @.str.24, i32 256, i64 16, i64 32, i64 1, i64 24, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] [i32 2, i32 3, i32 4, i32 5], i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Test Pattern\00", align 1
@tpg_pattern_strings = external dso_local constant [0 x ptr], align 4
@__const.vivid_create_controls.vivid_ctrl_test_pattern = private unnamed_addr constant { ptr, ptr, i32, ptr, i32, [4 x i8], i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, [4 x i8], i64, ptr, ptr, i8, [7 x i8] } { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790080, ptr @.str.1, i32 3, [4 x i8] zeroinitializer, i64 0, i64 21, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @tpg_pattern_strings, ptr null, i8 0, [7 x i8] zeroinitializer }, align 8
@vivid_ctrl_perc_fill = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790121, ptr @.str.25, i32 1, i64 0, i64 100, i64 1, i64 100, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_hor_movement = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790082, ptr @.str.26, i32 3, i64 0, i64 6, i64 0, i64 3, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_hor_movement_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_vert_movement = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790083, ptr @.str.34, i32 3, i64 0, i64 6, i64 0, i64 3, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_vert_movement_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_osd_mode = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790081, ptr @.str.41, i32 3, i64 0, i64 2, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_osd_mode_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_show_border = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790084, ptr @.str.45, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_show_square = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790085, ptr @.str.46, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_hflip = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790100, ptr @.str.47, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_vflip = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790101, ptr @.str.48, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_insert_sav = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790086, ptr @.str.49, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_insert_eav = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790087, ptr @.str.50, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_reduced_fps = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790122, ptr @.str.51, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_has_crop_cap = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790111, ptr @.str.52, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_has_compose_cap = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790112, ptr @.str.53, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_has_scaler_cap = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790113, ptr @.str.54, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_tstamp_src = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790104, ptr @.str.55, i32 3, i64 0, i64 1, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_tstamp_src_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_colorspace = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790105, ptr @.str.58, i32 3, i64 0, i64 8, i64 0, i64 2, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_colorspace_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_xfer_func = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790106, ptr @.str.68, i32 3, i64 0, i64 7, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_xfer_func_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_ycbcr_enc = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790107, ptr @.str.71, i32 3, i64 0, i64 8, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 32, ptr @vivid_ctrl_ycbcr_enc_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_hsv_enc = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790123, ptr @.str.77, i32 3, i64 0, i64 1, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_hsv_enc_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_quantization = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790108, ptr @.str.80, i32 3, i64 0, i64 2, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_quantization_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_alpha_mode = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790110, ptr @.str.83, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_has_crop_out = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_out_ctrl_ops, ptr null, i32 15790114, ptr @.str.84, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_has_compose_out = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_out_ctrl_ops, ptr null, i32 15790115, ptr @.str.85, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_has_scaler_out = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_out_ctrl_ops, ptr null, i32 15790116, ptr @.str.86, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_disconnect = internal constant %struct.v4l2_ctrl_config { ptr @vivid_user_gen_ctrl_ops, ptr null, i32 15790145, ptr @.str.87, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_dqbuf_error = internal constant %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790146, ptr @.str.88, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_perc_dropped = internal constant %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790144, ptr @.str.89, i32 1, i64 0, i64 100, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_queue_setup_error = internal constant %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790147, ptr @.str.90, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_buf_prepare_error = internal constant %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790148, ptr @.str.91, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_start_streaming_error = internal constant %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790149, ptr @.str.92, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_queue_error = internal constant %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790150, ptr @.str.93, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_req_validate_error = internal constant %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790152, ptr @.str.94, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_seq_wrap = internal constant %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790118, ptr @.str.95, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_time_wrap = internal constant %struct.v4l2_ctrl_config { ptr @vivid_streaming_ctrl_ops, ptr null, i32 15790119, ptr @.str.96, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_std_aspect_ratio = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790102, ptr @.str.97, i32 3, i64 1, i64 4, i64 0, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @tpg_aspect_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_std_signal_mode = internal constant %struct.v4l2_ctrl_config { ptr @vivid_sdtv_cap_ctrl_ops, ptr null, i32 15790140, ptr @.str.98, i32 3, i64 0, i64 5, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 8, ptr @vivid_ctrl_std_signal_mode_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_standard = internal constant %struct.v4l2_ctrl_config { ptr @vivid_sdtv_cap_ctrl_ops, ptr null, i32 15790141, ptr @.str.104, i32 3, i64 0, i64 14, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_standard_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_vbi_cap_interlaced = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vbi_cap_ctrl_ops, ptr null, i32 15790088, ptr @.str.105, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_dv_timings_signal_mode = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790142, ptr @.str.106, i32 3, i64 0, i64 5, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_dv_timings_signal_mode_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_dv_timings_aspect_ratio = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790103, ptr @.str.112, i32 3, i64 0, i64 3, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @tpg_aspect_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_max_edid_blocks = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790120, ptr @.str.113, i32 1, i64 1, i64 256, i64 1, i64 2, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_limited_rgb_range = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_cap_ctrl_ops, ptr null, i32 15790109, ptr @.str.114, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_display_present = internal constant %struct.v4l2_ctrl_config { ptr @vivid_vid_out_ctrl_ops, ptr null, i32 15790124, ptr @.str.115, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_loop_video = internal constant %struct.v4l2_ctrl_config { ptr @vivid_loop_cap_ctrl_ops, ptr null, i32 15790117, ptr @.str.116, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_clear_fb = internal constant %struct.v4l2_ctrl_config { ptr @vivid_fb_ctrl_ops, ptr null, i32 15790151, ptr @.str.117, i32 4, i64 0, i64 0, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_radio_hw_seek_mode = internal constant %struct.v4l2_ctrl_config { ptr @vivid_radio_rx_ctrl_ops, ptr null, i32 15790170, ptr @.str.118, i32 3, i64 0, i64 2, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_radio_hw_seek_mode_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_radio_hw_seek_prog_lim = internal constant %struct.v4l2_ctrl_config { ptr @vivid_radio_rx_ctrl_ops, ptr null, i32 15790171, ptr @.str.122, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_radio_rx_rds_blockio = internal constant %struct.v4l2_ctrl_config { ptr @vivid_radio_rx_ctrl_ops, ptr null, i32 15790173, ptr @.str.123, i32 3, i64 0, i64 1, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_radio_rds_mode_strings, ptr null, i8 0 }, align 8
@vivid_ctrl_radio_rx_rds_rbds = internal constant %struct.v4l2_ctrl_config { ptr @vivid_radio_rx_ctrl_ops, ptr null, i32 15790172, ptr @.str.126, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_radio_rx_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_radio_rx_s_ctrl }, align 4
@vivid_ctrl_radio_tx_rds_blockio = internal constant %struct.v4l2_ctrl_config { ptr @vivid_radio_tx_ctrl_ops, ptr null, i32 15790174, ptr @.str.127, i32 3, i64 0, i64 1, i64 0, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @vivid_ctrl_radio_rds_mode_strings, ptr null, i8 0 }, align 8
@vivid_radio_tx_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_radio_tx_s_ctrl }, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"VIVID-TX\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"This is a VIVID default Radio Text template text, change at will\00", align 1
@vivid_ctrl_sdr_cap_fm_deviation = internal constant %struct.v4l2_ctrl_config { ptr @vivid_sdr_cap_ctrl_ops, ptr null, i32 15790190, ptr @.str.128, i32 1, i64 100, i64 200000, i64 1, i64 75000, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_meta_has_pts = internal constant %struct.v4l2_ctrl_config { ptr @vivid_meta_cap_ctrl_ops, ptr null, i32 15790191, ptr @.str.129, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_ctrl_meta_has_src_clk = internal constant %struct.v4l2_ctrl_config { ptr @vivid_meta_cap_ctrl_ops, ptr null, i32 15790192, ptr @.str.130, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@vivid_vid_cap_s_ctrl.colorspaces = internal unnamed_addr constant [9 x i32] [i32 1, i32 3, i32 8, i32 9, i32 10, i32 12, i32 2, i32 5, i32 6], align 4
@vivid_user_gen_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_user_gen_s_ctrl }, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Vivid Controls\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"\016%s: disconnect\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.6 = private unnamed_addr constant [7 x i8] c"Button\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Integer 32 Bits\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Integer 64 Bits\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Boolean\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Menu\00", align 1
@vivid_ctrl_menu_strings = internal constant [7 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null], align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"Menu Item 0 (Skipped)\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Menu Item 1\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Menu Item 2 (Skipped)\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Menu Item 3\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Menu Item 4\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Menu Item 5 (Skipped)\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Bitmask\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Integer Menu\00", align 1
@vivid_ctrl_int_menu_values = internal constant [9 x i64] [i64 1, i64 1, i64 2, i64 3, i64 5, i64 8, i64 13, i64 21, i64 42], align 8
@.str.20 = private unnamed_addr constant [26 x i8] c"Read-Only Integer 32 Bits\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Area\00", align 1
@area = internal constant %struct.v4l2_area { i32 1000, i32 2000 }, align 4
@.str.22 = private unnamed_addr constant [20 x i8] c"U32 1 Element Array\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"U16 8x16 Matrix\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"U8 2x3x4x5 Array\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Fill Percentage of Frame\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"Horizontal Movement\00", align 1
@vivid_ctrl_hor_movement_strings = internal constant [8 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr null], align 4
@.str.27 = private unnamed_addr constant [15 x i8] c"Move Left Fast\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Move Left\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Move Left Slow\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"No Movement\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Move Right Slow\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"Move Right\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"Move Right Fast\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Vertical Movement\00", align 1
@vivid_ctrl_vert_movement_strings = internal constant [8 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.30, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr null], align 4
@.str.35 = private unnamed_addr constant [13 x i8] c"Move Up Fast\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"Move Up\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Move Up Slow\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"Move Down Slow\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"Move Down\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"Move Down Fast\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"OSD Text Mode\00", align 1
@vivid_ctrl_osd_mode_strings = internal constant [4 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr null], align 4
@.str.42 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"Counters Only\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"Show Border\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"Show Square\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"Sensor Flipped Horizontally\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"Sensor Flipped Vertically\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"Insert SAV Code in Image\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"Insert EAV Code in Image\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"Reduced Framerate\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"Enable Capture Cropping\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"Enable Capture Composing\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"Enable Capture Scaler\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"Timestamp Source\00", align 1
@vivid_ctrl_tstamp_src_strings = internal constant [3 x ptr] [ptr @.str.56, ptr @.str.57, ptr null], align 4
@.str.56 = private unnamed_addr constant [13 x i8] c"End of Frame\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"Start of Exposure\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"Colorspace\00", align 1
@vivid_ctrl_colorspace_strings = internal constant [10 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr null], align 4
@.str.59 = private unnamed_addr constant [11 x i8] c"SMPTE 170M\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"Rec. 709\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"sRGB\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"opRGB\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"BT.2020\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"DCI-P3\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"SMPTE 240M\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"470 System M\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"470 System BG\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"Transfer Function\00", align 1
@vivid_ctrl_xfer_func_strings = internal constant [9 x ptr] [ptr @.str.69, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.65, ptr @.str.44, ptr @.str.64, ptr @.str.70, ptr null], align 4
@.str.69 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"SMPTE 2084\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"Y'CbCr Encoding\00", align 1
@vivid_ctrl_ycbcr_enc_strings = internal constant [10 x ptr] [ptr @.str.69, ptr @.str.72, ptr @.str.60, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.63, ptr @.str.76, ptr @.str.65, ptr null], align 4
@.str.72 = private unnamed_addr constant [10 x i8] c"ITU-R 601\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"xvYCC 601\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"xvYCC 709\00", align 1
@.str.75 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"BT.2020 Constant Luminance\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"HSV Encoding\00", align 1
@vivid_ctrl_hsv_enc_strings = internal constant [3 x ptr] [ptr @.str.78, ptr @.str.79, ptr null], align 4
@.str.78 = private unnamed_addr constant [10 x i8] c"Hue 0-179\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"Hue 0-256\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"Quantization\00", align 1
@vivid_ctrl_quantization_strings = internal constant [4 x ptr] [ptr @.str.69, ptr @.str.81, ptr @.str.82, ptr null], align 4
@.str.81 = private unnamed_addr constant [11 x i8] c"Full Range\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"Limited Range\00", align 1
@.str.83 = private unnamed_addr constant [24 x i8] c"Apply Alpha To Red Only\00", align 1
@vivid_vid_out_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_vid_out_s_ctrl }, align 4
@.str.84 = private unnamed_addr constant [23 x i8] c"Enable Output Cropping\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"Enable Output Composing\00", align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"Enable Output Scaler\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"Disconnect\00", align 1
@vivid_streaming_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_streaming_s_ctrl }, align 4
@.str.88 = private unnamed_addr constant [27 x i8] c"Inject V4L2_BUF_FLAG_ERROR\00", align 1
@.str.89 = private unnamed_addr constant [30 x i8] c"Percentage of Dropped Buffers\00", align 1
@.str.90 = private unnamed_addr constant [28 x i8] c"Inject VIDIOC_REQBUFS Error\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"Inject VIDIOC_QBUF Error\00", align 1
@.str.92 = private unnamed_addr constant [29 x i8] c"Inject VIDIOC_STREAMON Error\00", align 1
@.str.93 = private unnamed_addr constant [29 x i8] c"Inject Fatal Streaming Error\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"Inject req_validate() Error\00", align 1
@.str.95 = private unnamed_addr constant [21 x i8] c"Wrap Sequence Number\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"Wrap Timestamp\00", align 1
@.str.97 = private unnamed_addr constant [22 x i8] c"Standard Aspect Ratio\00", align 1
@tpg_aspect_strings = external dso_local constant [0 x ptr], align 4
@vivid_sdtv_cap_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_sdtv_cap_s_ctrl }, align 4
@.str.98 = private unnamed_addr constant [21 x i8] c"Standard Signal Mode\00", align 1
@vivid_ctrl_std_signal_mode_strings = internal constant [7 x ptr] [ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.75, ptr @.str.102, ptr @.str.103, ptr null], align 4
@vivid_standard = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.99 = private unnamed_addr constant [17 x i8] c"Current Standard\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"No Signal\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"No Lock\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"Selected Standard\00", align 1
@.str.103 = private unnamed_addr constant [28 x i8] c"Cycle Through All Standards\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@vivid_ctrl_standard_strings = external dso_local constant [0 x ptr], align 4
@vivid_vbi_cap_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_vbi_cap_s_ctrl }, align 4
@.str.105 = private unnamed_addr constant [22 x i8] c"Interlaced VBI Format\00", align 1
@.str.106 = private unnamed_addr constant [23 x i8] c"DV Timings Signal Mode\00", align 1
@vivid_ctrl_dv_timings_signal_mode_strings = internal constant [8 x ptr] [ptr @.str.107, ptr @.str.100, ptr @.str.101, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr null], align 4
@.str.107 = private unnamed_addr constant [19 x i8] c"Current DV Timings\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"Out of Range\00", align 1
@.str.109 = private unnamed_addr constant [20 x i8] c"Selected DV Timings\00", align 1
@.str.110 = private unnamed_addr constant [29 x i8] c"Cycle Through All DV Timings\00", align 1
@.str.111 = private unnamed_addr constant [18 x i8] c"Custom DV Timings\00", align 1
@.str.112 = private unnamed_addr constant [24 x i8] c"DV Timings Aspect Ratio\00", align 1
@.str.113 = private unnamed_addr constant [20 x i8] c"Maximum EDID Blocks\00", align 1
@.str.114 = private unnamed_addr constant [27 x i8] c"Limited RGB Range (16-235)\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"Display Present\00", align 1
@vivid_loop_cap_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_loop_cap_s_ctrl }, align 4
@.str.116 = private unnamed_addr constant [11 x i8] c"Loop Video\00", align 1
@vivid_fb_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_fb_s_ctrl }, align 4
@.str.117 = private unnamed_addr constant [18 x i8] c"Clear Framebuffer\00", align 1
@.str.118 = private unnamed_addr constant [19 x i8] c"Radio HW Seek Mode\00", align 1
@vivid_ctrl_radio_hw_seek_mode_strings = internal constant [4 x ptr] [ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr null], align 4
@.str.119 = private unnamed_addr constant [8 x i8] c"Bounded\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"Wrap Around\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"Both\00", align 1
@.str.122 = private unnamed_addr constant [27 x i8] c"Radio Programmable HW Seek\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"RDS Rx I/O Mode\00", align 1
@vivid_ctrl_radio_rds_mode_strings = internal constant [3 x ptr] [ptr @.str.124, ptr @.str.125, ptr null], align 4
@.str.124 = private unnamed_addr constant [10 x i8] c"Block I/O\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"Controls\00", align 1
@.str.126 = private unnamed_addr constant [29 x i8] c"Generate RBDS Instead of RDS\00", align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"RDS Tx I/O Mode\00", align 1
@vivid_sdr_cap_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_sdr_cap_s_ctrl }, align 4
@.str.128 = private unnamed_addr constant [13 x i8] c"FM Deviation\00", align 1
@vivid_meta_cap_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vivid_meta_cap_s_ctrl }, align 4
@.str.129 = private unnamed_addr constant [13 x i8] c"Generate PTS\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"Generate SCR\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_create_controls(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca %struct.v4l2_ctrl_config, align 8
  %8 = alloca %struct.v4l2_ctrl_config, align 8
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 11
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 12
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 13
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 14
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 15
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 16
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 17
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 19
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 21
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 23
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 25
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 27
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 29
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 31
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 33
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 35
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 37
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %7) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull align 8 dereferenceable(112) @__const.vivid_create_controls.vivid_ctrl_dv_timings, i32 112, i1 false)
  %26 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %9, i32 noundef 10, ptr noundef null, ptr noundef null) #7
  %27 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %9, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %28 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %10, i32 noundef 9, ptr noundef null, ptr noundef null) #7
  %29 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %10, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %30 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %11, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  %31 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %11, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %32 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %12, i32 noundef 8, ptr noundef null, ptr noundef null) #7
  %33 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %12, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %34 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %13, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  %35 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %13, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %36 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %14, i32 noundef 1, ptr noundef null, ptr noundef null) #7
  %37 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %14, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %38 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %15, i32 noundef 1, ptr noundef null, ptr noundef null) #7
  %39 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %15, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %40 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %16, i32 noundef 55, ptr noundef null, ptr noundef null) #7
  %41 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %42 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %17, i32 noundef 26, ptr noundef null, ptr noundef null) #7
  br i1 %3, label %43, label %51

43:                                               ; preds = %6
  %44 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 72
  %45 = load i8, ptr %44, align 1, !range !8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 56
  %49 = load i32, ptr %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %61

51:                                               ; preds = %6
  %52 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %17, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %53 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %18, i32 noundef 21, ptr noundef null, ptr noundef null) #7
  %54 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %18, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %55 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %19, i32 noundef 19, ptr noundef null, ptr noundef null) #7
  %56 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %19, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  br label %71

57:                                               ; preds = %47
  %58 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %18, i32 noundef 21, ptr noundef null, ptr noundef null) #7
  %59 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %18, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %60 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %19, i32 noundef 19, ptr noundef null, ptr noundef null) #7
  br label %71

61:                                               ; preds = %47
  %62 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %17, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %63 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %18, i32 noundef 21, ptr noundef null, ptr noundef null) #7
  %64 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %18, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %65 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %19, i32 noundef 19, ptr noundef null, ptr noundef null) #7
  br label %71

66:                                               ; preds = %43
  %67 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %17, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %68 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %18, i32 noundef 21, ptr noundef null, ptr noundef null) #7
  %69 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %18, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %70 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %19, i32 noundef 19, ptr noundef null, ptr noundef null) #7
  br label %71

71:                                               ; preds = %66, %61, %57, %51
  %72 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %20, i32 noundef 17, ptr noundef null, ptr noundef null) #7
  %73 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %20, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %74 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %21, i32 noundef 17, ptr noundef null, ptr noundef null) #7
  %75 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %21, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %76 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %22, i32 noundef 19, ptr noundef null, ptr noundef null) #7
  %77 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %22, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %78 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %23, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  %79 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %23, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %80 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %24, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  %81 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %24, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %82 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %25, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  %83 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %25, ptr noundef nonnull @vivid_ctrl_class, ptr noundef null) #7
  %84 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %11, ptr noundef null, i32 noundef 9963781, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 200) #7
  %85 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 83
  store ptr %84, ptr %85, align 8
  %86 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %11, ptr noundef null, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %87 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 84
  store ptr %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 61
  %89 = load i8, ptr %88, align 2, !range !8
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %124, label %91

91:                                               ; preds = %71
  %92 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %10, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %93 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 78
  store ptr %92, ptr %93, align 8
  %94 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 131, i32 0
  store i32 128, ptr %94, align 4
  %95 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 131, i32 1
  store i32 128, ptr %95, align 4
  %96 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 131, i32 2
  store i32 128, ptr %96, align 4
  %97 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 131, i32 3
  store i32 128, ptr %97, align 4
  %98 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 131, i32 4
  store i32 128, ptr %98, align 4
  %99 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 131, i32 5
  store i32 128, ptr %99, align 4
  %100 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 131, i32 6
  store i32 128, ptr %100, align 4
  %101 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 131, i32 7
  store i32 128, ptr %101, align 4
  %102 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 131, i32 8
  store i32 128, ptr %102, align 4
  %103 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 131, i32 9
  store i32 128, ptr %103, align 4
  %104 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 131, i32 10
  store i32 128, ptr %104, align 4
  %105 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 131, i32 11
  store i32 128, ptr %105, align 4
  %106 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 131, i32 12
  store i32 128, ptr %106, align 4
  %107 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 131, i32 13
  store i32 128, ptr %107, align 4
  %108 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 131, i32 14
  store i32 128, ptr %108, align 4
  %109 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 131, i32 15
  store i32 128, ptr %109, align 4
  %110 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %10, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %111 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 79
  store ptr %110, ptr %111, align 4
  %112 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %10, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %113 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 80
  store ptr %112, ptr %113, align 8
  %114 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %10, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 128, i64 noundef 1, i64 noundef 0) #7
  %115 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 81
  store ptr %114, ptr %115, align 4
  %116 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %10, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %117 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %10, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %118 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %10, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %119 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 82
  store ptr %118, ptr %119, align 8
  %120 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %10, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 100) #7
  %121 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 82, i32 1
  store ptr %120, ptr %121, align 4
  %122 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %10, ptr noundef nonnull @vivid_user_vid_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 0) #7
  %123 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 85
  store ptr %122, ptr %123, align 8
  br label %124

124:                                              ; preds = %91, %71
  %125 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %9, ptr noundef nonnull @vivid_ctrl_button, ptr noundef null) #7
  %126 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 86
  store ptr %125, ptr %126, align 4
  %127 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %9, ptr noundef nonnull @vivid_ctrl_int32, ptr noundef null) #7
  %128 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 88
  store ptr %127, ptr %128, align 4
  %129 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %9, ptr noundef nonnull @vivid_ctrl_int64, ptr noundef null) #7
  %130 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 89
  store ptr %129, ptr %130, align 8
  %131 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %9, ptr noundef nonnull @vivid_ctrl_boolean, ptr noundef null) #7
  %132 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 87
  store ptr %131, ptr %132, align 8
  %133 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %9, ptr noundef nonnull @vivid_ctrl_menu, ptr noundef null) #7
  %134 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 90
  store ptr %133, ptr %134, align 4
  %135 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %9, ptr noundef nonnull @vivid_ctrl_string, ptr noundef null) #7
  %136 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 91
  store ptr %135, ptr %136, align 8
  %137 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %9, ptr noundef nonnull @vivid_ctrl_bitmask, ptr noundef null) #7
  %138 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 92
  store ptr %137, ptr %138, align 4
  %139 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %9, ptr noundef nonnull @vivid_ctrl_int_menu, ptr noundef null) #7
  %140 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 93
  store ptr %139, ptr %140, align 8
  %141 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %9, ptr noundef nonnull @vivid_ctrl_ro_int32, ptr noundef null) #7
  %142 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 94
  store ptr %141, ptr %142, align 4
  %143 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %9, ptr noundef nonnull @vivid_ctrl_area, ptr noundef null) #7
  %144 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %9, ptr noundef nonnull @vivid_ctrl_u32_array, ptr noundef null) #7
  %145 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %9, ptr noundef nonnull @vivid_ctrl_u16_matrix, ptr noundef null) #7
  %146 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %9, ptr noundef nonnull @vivid_ctrl_u8_4d_array, ptr noundef null) #7
  %147 = load i8, ptr %88, align 2, !range !8
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %179, label %149

149:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %8) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(112) @__const.vivid_create_controls.vivid_ctrl_test_pattern, i32 112, i1 false)
  %150 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull %8, ptr noundef null) #7
  %151 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 95
  store ptr %150, ptr %151, align 8
  %152 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_perc_fill, ptr noundef null) #7
  %153 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_hor_movement, ptr noundef null) #7
  %154 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_vert_movement, ptr noundef null) #7
  %155 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_osd_mode, ptr noundef null) #7
  %156 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_show_border, ptr noundef null) #7
  %157 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_show_square, ptr noundef null) #7
  %158 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_hflip, ptr noundef null) #7
  %159 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_vflip, ptr noundef null) #7
  %160 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_insert_sav, ptr noundef null) #7
  %161 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_insert_eav, ptr noundef null) #7
  %162 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_reduced_fps, ptr noundef null) #7
  br i1 %1, label %163, label %170

163:                                              ; preds = %149
  %164 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_has_crop_cap, ptr noundef null) #7
  %165 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 102
  store ptr %164, ptr %165, align 4
  %166 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_has_compose_cap, ptr noundef null) #7
  %167 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 103
  store ptr %166, ptr %167, align 8
  %168 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_has_scaler_cap, ptr noundef null) #7
  %169 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 104
  store ptr %168, ptr %169, align 4
  br label %170

170:                                              ; preds = %163, %149
  %171 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_tstamp_src, ptr noundef null) #7
  %172 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_colorspace, ptr noundef null) #7
  %173 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 96
  store ptr %172, ptr %173, align 4
  %174 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_xfer_func, ptr noundef null) #7
  %175 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_ycbcr_enc, ptr noundef null) #7
  %176 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_hsv_enc, ptr noundef null) #7
  %177 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_quantization, ptr noundef null) #7
  %178 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_alpha_mode, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %8) #7
  br label %179

179:                                              ; preds = %170, %124
  %180 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 62
  %181 = load i8, ptr %180, align 1, !range !8
  %182 = icmp ne i8 %181, 0
  %183 = and i1 %182, %2
  br i1 %183, label %184, label %191

184:                                              ; preds = %179
  %185 = call ptr @v4l2_ctrl_new_custom(ptr noundef %17, ptr noundef nonnull @vivid_ctrl_has_crop_out, ptr noundef null) #7
  %186 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 105
  store ptr %185, ptr %186, align 8
  %187 = call ptr @v4l2_ctrl_new_custom(ptr noundef %17, ptr noundef nonnull @vivid_ctrl_has_compose_out, ptr noundef null) #7
  %188 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 106
  store ptr %187, ptr %188, align 4
  %189 = call ptr @v4l2_ctrl_new_custom(ptr noundef %17, ptr noundef nonnull @vivid_ctrl_has_scaler_out, ptr noundef null) #7
  %190 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 107
  store ptr %189, ptr %190, align 8
  br label %191

191:                                              ; preds = %184, %179
  br i1 %3, label %203, label %192

192:                                              ; preds = %191
  %193 = call ptr @v4l2_ctrl_new_custom(ptr noundef %9, ptr noundef nonnull @vivid_ctrl_disconnect, ptr noundef null) #7
  %194 = call ptr @v4l2_ctrl_new_custom(ptr noundef %12, ptr noundef nonnull @vivid_ctrl_dqbuf_error, ptr noundef null) #7
  %195 = call ptr @v4l2_ctrl_new_custom(ptr noundef %12, ptr noundef nonnull @vivid_ctrl_perc_dropped, ptr noundef null) #7
  %196 = call ptr @v4l2_ctrl_new_custom(ptr noundef %12, ptr noundef nonnull @vivid_ctrl_queue_setup_error, ptr noundef null) #7
  %197 = call ptr @v4l2_ctrl_new_custom(ptr noundef %12, ptr noundef nonnull @vivid_ctrl_buf_prepare_error, ptr noundef null) #7
  %198 = call ptr @v4l2_ctrl_new_custom(ptr noundef %12, ptr noundef nonnull @vivid_ctrl_start_streaming_error, ptr noundef null) #7
  %199 = call ptr @v4l2_ctrl_new_custom(ptr noundef %12, ptr noundef nonnull @vivid_ctrl_queue_error, ptr noundef null) #7
  %200 = call ptr @v4l2_ctrl_new_custom(ptr noundef %12, ptr noundef nonnull @vivid_ctrl_req_validate_error, ptr noundef null) #7
  %201 = call ptr @v4l2_ctrl_new_custom(ptr noundef %12, ptr noundef nonnull @vivid_ctrl_seq_wrap, ptr noundef null) #7
  %202 = call ptr @v4l2_ctrl_new_custom(ptr noundef %12, ptr noundef nonnull @vivid_ctrl_time_wrap, ptr noundef null) #7
  br label %203

203:                                              ; preds = %192, %191
  br i1 %4, label %204, label %227

204:                                              ; preds = %203
  %205 = load i8, ptr %88, align 2, !range !8
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 63
  %209 = load i8, ptr %208, align 8, !range !8
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %227, label %213

211:                                              ; preds = %204
  %212 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_std_aspect_ratio, ptr noundef null) #7
  br label %213

213:                                              ; preds = %211, %207
  %214 = call ptr @v4l2_ctrl_new_custom(ptr noundef %13, ptr noundef nonnull @vivid_ctrl_std_signal_mode, ptr noundef null) #7
  %215 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 99
  store ptr %214, ptr %215, align 8
  %216 = call ptr @v4l2_ctrl_new_custom(ptr noundef %13, ptr noundef nonnull @vivid_ctrl_standard, ptr noundef null) #7
  %217 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 99, i32 1
  store ptr %216, ptr %217, align 4
  %218 = load ptr, ptr %215, align 8
  %219 = icmp eq ptr %218, null
  br i1 %219, label %221, label %220

220:                                              ; preds = %213
  call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %215) #7
  br label %221

221:                                              ; preds = %220, %213
  %222 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 64
  %223 = load i8, ptr %222, align 1, !range !8
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %221
  %226 = call ptr @v4l2_ctrl_new_custom(ptr noundef %18, ptr noundef nonnull @vivid_ctrl_vbi_cap_interlaced, ptr noundef null) #7
  br label %227

227:                                              ; preds = %225, %221, %207, %203
  %228 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 52
  %229 = load i32, ptr %228, align 8
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %259, label %231

231:                                              ; preds = %227
  %232 = sub i32 32, %229
  %233 = lshr i32 -1, %232
  %234 = zext i32 %233 to i64
  %235 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_dv_timings_signal_mode, ptr noundef null) #7
  %236 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 100
  store ptr %235, ptr %236, align 8
  %237 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 169
  %238 = load i32, ptr %237, align 8
  %239 = add i32 %238, -1
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %7, i32 0, i32 6
  store i64 %240, ptr %241, align 8
  %242 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 167
  %243 = load ptr, ptr %242, align 8
  %244 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %7, i32 0, i32 14
  store ptr %243, ptr %244, align 8
  %245 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull %7, ptr noundef null) #7
  %246 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 100, i32 1
  store ptr %245, ptr %246, align 4
  %247 = load ptr, ptr %236, align 8
  %248 = icmp eq ptr %247, null
  br i1 %248, label %250, label %249

249:                                              ; preds = %231
  call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %236) #7
  br label %250

250:                                              ; preds = %249, %231
  %251 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_dv_timings_aspect_ratio, ptr noundef null) #7
  %252 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_max_edid_blocks, ptr noundef null) #7
  %253 = call ptr @v4l2_ctrl_new_custom(ptr noundef %16, ptr noundef nonnull @vivid_ctrl_limited_rgb_range, ptr noundef null) #7
  %254 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 98
  store ptr %253, ptr %254, align 4
  %255 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %16, ptr noundef nonnull @vivid_vid_cap_ctrl_ops, i32 noundef 10488165, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #7
  %256 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 97
  store ptr %255, ptr %256, align 8
  %257 = call ptr @v4l2_ctrl_new_std(ptr noundef %16, ptr noundef null, i32 noundef 10488164, i64 noundef 0, i64 noundef %234, i64 noundef 0, i64 noundef %234) #7
  %258 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 113
  store ptr %257, ptr %258, align 8
  br label %259

259:                                              ; preds = %250, %227
  %260 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 56
  %261 = load i32, ptr %260, align 8
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %279, label %263

263:                                              ; preds = %259
  %264 = sub i32 32, %261
  %265 = lshr i32 -1, %264
  %266 = zext i32 %265 to i64
  %267 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %17, ptr noundef null, i32 noundef 10488069, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #7
  %268 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 109
  store ptr %267, ptr %268, align 8
  %269 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %17, ptr noundef null, i32 noundef 10488068, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 1) #7
  %270 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 108
  store ptr %269, ptr %270, align 4
  %271 = call ptr @v4l2_ctrl_new_custom(ptr noundef %17, ptr noundef nonnull @vivid_ctrl_display_present, ptr noundef null) #7
  %272 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 101
  store ptr %271, ptr %272, align 8
  %273 = call ptr @v4l2_ctrl_new_std(ptr noundef %17, ptr noundef null, i32 noundef 10488065, i64 noundef 0, i64 noundef %266, i64 noundef 0, i64 noundef %266) #7
  %274 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 111
  store ptr %273, ptr %274, align 8
  %275 = call ptr @v4l2_ctrl_new_std(ptr noundef %17, ptr noundef null, i32 noundef 10488066, i64 noundef 0, i64 noundef %266, i64 noundef 0, i64 noundef %266) #7
  %276 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 112
  store ptr %275, ptr %276, align 4
  %277 = call ptr @v4l2_ctrl_new_std(ptr noundef %17, ptr noundef null, i32 noundef 10488067, i64 noundef 0, i64 noundef %266, i64 noundef 0, i64 noundef %266) #7
  %278 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 110
  store ptr %277, ptr %278, align 4
  br label %279

279:                                              ; preds = %263, %259
  %280 = load i8, ptr %88, align 2, !range !8
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %279
  %283 = load i8, ptr %180, align 1, !range !8
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %282, %279
  %286 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 63
  %287 = load i8, ptr %286, align 8, !range !8
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %295, label %289

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 66
  %291 = load i8, ptr %290, align 1, !range !8
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %289, %282
  %294 = call ptr @v4l2_ctrl_new_custom(ptr noundef %14, ptr noundef nonnull @vivid_ctrl_loop_video, ptr noundef null) #7
  br label %295

295:                                              ; preds = %293, %289, %285
  %296 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 72
  %297 = load i8, ptr %296, align 1, !range !8
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %301, label %299

299:                                              ; preds = %295
  %300 = call ptr @v4l2_ctrl_new_custom(ptr noundef %15, ptr noundef nonnull @vivid_ctrl_clear_fb, ptr noundef null) #7
  br label %301

301:                                              ; preds = %299, %295
  %302 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 69
  %303 = load i8, ptr %302, align 2, !range !8
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %323, label %305

305:                                              ; preds = %301
  %306 = call ptr @v4l2_ctrl_new_custom(ptr noundef %20, ptr noundef nonnull @vivid_ctrl_radio_hw_seek_mode, ptr noundef null) #7
  %307 = call ptr @v4l2_ctrl_new_custom(ptr noundef %20, ptr noundef nonnull @vivid_ctrl_radio_hw_seek_prog_lim, ptr noundef null) #7
  %308 = call ptr @v4l2_ctrl_new_custom(ptr noundef %20, ptr noundef nonnull @vivid_ctrl_radio_rx_rds_blockio, ptr noundef null) #7
  %309 = call ptr @v4l2_ctrl_new_custom(ptr noundef %20, ptr noundef nonnull @vivid_ctrl_radio_rx_rds_rbds, ptr noundef null) #7
  %310 = call ptr @v4l2_ctrl_new_std(ptr noundef %20, ptr noundef nonnull @vivid_radio_rx_ctrl_ops, i32 noundef 10553602, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %311 = call ptr @v4l2_ctrl_new_std(ptr noundef %20, ptr noundef nonnull @vivid_radio_rx_ctrl_ops, i32 noundef 10553603, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 0) #7
  %312 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 125
  store ptr %311, ptr %312, align 8
  %313 = call ptr @v4l2_ctrl_new_std(ptr noundef %20, ptr noundef nonnull @vivid_radio_rx_ctrl_ops, i32 noundef 10553604, i64 noundef 0, i64 noundef 8, i64 noundef 8, i64 noundef 0) #7
  %314 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 129
  store ptr %313, ptr %314, align 8
  %315 = call ptr @v4l2_ctrl_new_std(ptr noundef %20, ptr noundef nonnull @vivid_radio_rx_ctrl_ops, i32 noundef 10553605, i64 noundef 0, i64 noundef 64, i64 noundef 64, i64 noundef 0) #7
  %316 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 130
  store ptr %315, ptr %316, align 4
  %317 = call ptr @v4l2_ctrl_new_std(ptr noundef %20, ptr noundef nonnull @vivid_radio_rx_ctrl_ops, i32 noundef 10553606, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %318 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 126
  store ptr %317, ptr %318, align 4
  %319 = call ptr @v4l2_ctrl_new_std(ptr noundef %20, ptr noundef nonnull @vivid_radio_rx_ctrl_ops, i32 noundef 10553607, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %320 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 127
  store ptr %319, ptr %320, align 8
  %321 = call ptr @v4l2_ctrl_new_std(ptr noundef %20, ptr noundef nonnull @vivid_radio_rx_ctrl_ops, i32 noundef 10553608, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %322 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 128
  store ptr %321, ptr %322, align 4
  br label %323

323:                                              ; preds = %305, %301
  %324 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 70
  %325 = load i8, ptr %324, align 1, !range !8
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %373, label %327

327:                                              ; preds = %323
  %328 = call ptr @v4l2_ctrl_new_custom(ptr noundef %21, ptr noundef nonnull @vivid_ctrl_radio_tx_rds_blockio, ptr noundef null) #7
  %329 = call ptr @v4l2_ctrl_new_std(ptr noundef %21, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160386, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 32904) #7
  %330 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 114
  store ptr %329, ptr %330, align 4
  %331 = call ptr @v4l2_ctrl_new_std(ptr noundef %21, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160387, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 3) #7
  %332 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 115
  store ptr %331, ptr %332, align 8
  %333 = call ptr @v4l2_ctrl_new_std(ptr noundef %21, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160389, i64 noundef 0, i64 noundef 8, i64 noundef 8, i64 noundef 0) #7
  %334 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 123
  store ptr %333, ptr %334, align 8
  %335 = icmp eq ptr %333, null
  br i1 %335, label %345, label %336

336:                                              ; preds = %327
  %337 = getelementptr inbounds %struct.v4l2_ctrl, ptr %333, i32 0, i32 2
  %338 = load ptr, ptr %337, align 8
  %339 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %338, i32 0, i32 1
  %340 = load ptr, ptr %339, align 4
  call void @mutex_lock(ptr noundef %340) #7
  %341 = call i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef nonnull %333, ptr noundef nonnull @.str.2) #7
  %342 = load ptr, ptr %337, align 8
  %343 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %342, i32 0, i32 1
  %344 = load ptr, ptr %343, align 4
  call void @mutex_unlock(ptr noundef %344) #7
  br label %345

345:                                              ; preds = %336, %327
  %346 = call ptr @v4l2_ctrl_new_std(ptr noundef %21, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160390, i64 noundef 0, i64 noundef 128, i64 noundef 64, i64 noundef 0) #7
  %347 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 124
  store ptr %346, ptr %347, align 4
  %348 = icmp eq ptr %346, null
  br i1 %348, label %358, label %349

349:                                              ; preds = %345
  %350 = getelementptr inbounds %struct.v4l2_ctrl, ptr %346, i32 0, i32 2
  %351 = load ptr, ptr %350, align 8
  %352 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %351, i32 0, i32 1
  %353 = load ptr, ptr %352, align 4
  call void @mutex_lock(ptr noundef %353) #7
  %354 = call i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef nonnull %346, ptr noundef nonnull @.str.3) #7
  %355 = load ptr, ptr %350, align 8
  %356 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %355, i32 0, i32 1
  %357 = load ptr, ptr %356, align 4
  call void @mutex_unlock(ptr noundef %357) #7
  br label %358

358:                                              ; preds = %349, %345
  %359 = call ptr @v4l2_ctrl_new_std(ptr noundef %21, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160391, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %360 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 116
  store ptr %359, ptr %360, align 4
  %361 = call ptr @v4l2_ctrl_new_std(ptr noundef %21, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160392, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %362 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 117
  store ptr %361, ptr %362, align 8
  %363 = call ptr @v4l2_ctrl_new_std(ptr noundef %21, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160393, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %364 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 118
  store ptr %363, ptr %364, align 4
  %365 = call ptr @v4l2_ctrl_new_std(ptr noundef %21, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160394, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %366 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 119
  store ptr %365, ptr %366, align 8
  %367 = call ptr @v4l2_ctrl_new_std(ptr noundef %21, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160395, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %368 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 120
  store ptr %367, ptr %368, align 4
  %369 = call ptr @v4l2_ctrl_new_std(ptr noundef %21, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160396, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %370 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 121
  store ptr %369, ptr %370, align 8
  %371 = call ptr @v4l2_ctrl_new_std(ptr noundef %21, ptr noundef nonnull @vivid_radio_tx_ctrl_ops, i32 noundef 10160397, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %372 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 122
  store ptr %371, ptr %372, align 4
  br label %373

373:                                              ; preds = %358, %323
  %374 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 71
  %375 = load i8, ptr %374, align 8, !range !8
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %379, label %377

377:                                              ; preds = %373
  %378 = call ptr @v4l2_ctrl_new_custom(ptr noundef %22, ptr noundef nonnull @vivid_ctrl_sdr_cap_fm_deviation, ptr noundef null) #7
  br label %379

379:                                              ; preds = %377, %373
  %380 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 73
  %381 = load i8, ptr %380, align 2, !range !8
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %386, label %383

383:                                              ; preds = %379
  %384 = call ptr @v4l2_ctrl_new_custom(ptr noundef %23, ptr noundef nonnull @vivid_ctrl_meta_has_pts, ptr noundef null) #7
  %385 = call ptr @v4l2_ctrl_new_custom(ptr noundef %23, ptr noundef nonnull @vivid_ctrl_meta_has_src_clk, ptr noundef null) #7
  br label %386

386:                                              ; preds = %383, %379
  %387 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 11, i32 9
  %388 = load i32, ptr %387, align 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %537

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 12, i32 9
  %392 = load i32, ptr %391, align 4
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %537

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 13, i32 9
  %396 = load i32, ptr %395, align 4
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %537

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 14, i32 9
  %400 = load i32, ptr %399, align 4
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %537

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 31, i32 9
  %404 = load i32, ptr %403, align 4
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %537

406:                                              ; preds = %402
  %407 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 16, i32 9
  %408 = load i32, ptr %407, align 4
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %537

410:                                              ; preds = %406
  %411 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 82
  %412 = load ptr, ptr %411, align 8
  %413 = icmp eq ptr %412, null
  br i1 %413, label %415, label %414

414:                                              ; preds = %410
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %411, i8 noundef zeroext 0, i1 noundef zeroext true) #7
  br label %415

415:                                              ; preds = %414, %410
  %416 = load i8, ptr %88, align 2, !range !8
  %417 = icmp eq i8 %416, 0
  br i1 %417, label %431, label %418

418:                                              ; preds = %415
  %419 = call i32 @v4l2_ctrl_add_handler(ptr noundef %16, ptr noundef %9, ptr noundef null, i1 noundef zeroext false) #7
  %420 = call i32 @v4l2_ctrl_add_handler(ptr noundef %16, ptr noundef %10, ptr noundef null, i1 noundef zeroext false) #7
  %421 = call i32 @v4l2_ctrl_add_handler(ptr noundef %16, ptr noundef %11, ptr noundef null, i1 noundef zeroext false) #7
  %422 = call i32 @v4l2_ctrl_add_handler(ptr noundef %16, ptr noundef %12, ptr noundef null, i1 noundef zeroext false) #7
  %423 = call i32 @v4l2_ctrl_add_handler(ptr noundef %16, ptr noundef %13, ptr noundef null, i1 noundef zeroext false) #7
  %424 = call i32 @v4l2_ctrl_add_handler(ptr noundef %16, ptr noundef %14, ptr noundef null, i1 noundef zeroext false) #7
  %425 = call i32 @v4l2_ctrl_add_handler(ptr noundef %16, ptr noundef %15, ptr noundef null, i1 noundef zeroext false) #7
  %426 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 19, i32 9
  %427 = load i32, ptr %426, align 4
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %537

429:                                              ; preds = %418
  %430 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18, i32 9
  store ptr %16, ptr %430, align 4
  br label %431

431:                                              ; preds = %429, %415
  %432 = load i8, ptr %180, align 1, !range !8
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %444, label %434

434:                                              ; preds = %431
  %435 = call i32 @v4l2_ctrl_add_handler(ptr noundef %17, ptr noundef %9, ptr noundef null, i1 noundef zeroext false) #7
  %436 = call i32 @v4l2_ctrl_add_handler(ptr noundef %17, ptr noundef %11, ptr noundef null, i1 noundef zeroext false) #7
  %437 = call i32 @v4l2_ctrl_add_handler(ptr noundef %17, ptr noundef %12, ptr noundef null, i1 noundef zeroext false) #7
  %438 = call i32 @v4l2_ctrl_add_handler(ptr noundef %17, ptr noundef %15, ptr noundef null, i1 noundef zeroext false) #7
  %439 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 21, i32 9
  %440 = load i32, ptr %439, align 4
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %537

442:                                              ; preds = %434
  %443 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 20, i32 9
  store ptr %17, ptr %443, align 4
  br label %444

444:                                              ; preds = %442, %431
  %445 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 63
  %446 = load i8, ptr %445, align 8, !range !8
  %447 = icmp eq i8 %446, 0
  br i1 %447, label %458, label %448

448:                                              ; preds = %444
  %449 = call i32 @v4l2_ctrl_add_handler(ptr noundef %18, ptr noundef %9, ptr noundef null, i1 noundef zeroext false) #7
  %450 = call i32 @v4l2_ctrl_add_handler(ptr noundef %18, ptr noundef %12, ptr noundef null, i1 noundef zeroext false) #7
  %451 = call i32 @v4l2_ctrl_add_handler(ptr noundef %18, ptr noundef %13, ptr noundef null, i1 noundef zeroext false) #7
  %452 = call i32 @v4l2_ctrl_add_handler(ptr noundef %18, ptr noundef %14, ptr noundef null, i1 noundef zeroext false) #7
  %453 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 23, i32 9
  %454 = load i32, ptr %453, align 4
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %537

456:                                              ; preds = %448
  %457 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22, i32 9
  store ptr %18, ptr %457, align 4
  br label %458

458:                                              ; preds = %456, %444
  %459 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 66
  %460 = load i8, ptr %459, align 1, !range !8
  %461 = icmp eq i8 %460, 0
  br i1 %461, label %470, label %462

462:                                              ; preds = %458
  %463 = call i32 @v4l2_ctrl_add_handler(ptr noundef %19, ptr noundef %9, ptr noundef null, i1 noundef zeroext false) #7
  %464 = call i32 @v4l2_ctrl_add_handler(ptr noundef %19, ptr noundef %12, ptr noundef null, i1 noundef zeroext false) #7
  %465 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 25, i32 9
  %466 = load i32, ptr %465, align 4
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %537

468:                                              ; preds = %462
  %469 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 24, i32 9
  store ptr %19, ptr %469, align 4
  br label %470

470:                                              ; preds = %468, %458
  %471 = load i8, ptr %302, align 2, !range !8
  %472 = icmp eq i8 %471, 0
  br i1 %472, label %481, label %473

473:                                              ; preds = %470
  %474 = call i32 @v4l2_ctrl_add_handler(ptr noundef %20, ptr noundef %9, ptr noundef null, i1 noundef zeroext false) #7
  %475 = call i32 @v4l2_ctrl_add_handler(ptr noundef %20, ptr noundef %11, ptr noundef null, i1 noundef zeroext false) #7
  %476 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 27, i32 9
  %477 = load i32, ptr %476, align 4
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %537

479:                                              ; preds = %473
  %480 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 26, i32 9
  store ptr %20, ptr %480, align 4
  br label %481

481:                                              ; preds = %479, %470
  %482 = load i8, ptr %324, align 1, !range !8
  %483 = icmp eq i8 %482, 0
  br i1 %483, label %492, label %484

484:                                              ; preds = %481
  %485 = call i32 @v4l2_ctrl_add_handler(ptr noundef %21, ptr noundef %9, ptr noundef null, i1 noundef zeroext false) #7
  %486 = call i32 @v4l2_ctrl_add_handler(ptr noundef %21, ptr noundef %11, ptr noundef null, i1 noundef zeroext false) #7
  %487 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 29, i32 9
  %488 = load i32, ptr %487, align 4
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %537

490:                                              ; preds = %484
  %491 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 28, i32 9
  store ptr %21, ptr %491, align 4
  br label %492

492:                                              ; preds = %490, %481
  %493 = load i8, ptr %374, align 8, !range !8
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %502, label %495

495:                                              ; preds = %492
  %496 = call i32 @v4l2_ctrl_add_handler(ptr noundef %22, ptr noundef %9, ptr noundef null, i1 noundef zeroext false) #7
  %497 = call i32 @v4l2_ctrl_add_handler(ptr noundef %22, ptr noundef %12, ptr noundef null, i1 noundef zeroext false) #7
  %498 = load i32, ptr %403, align 4
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %537

500:                                              ; preds = %495
  %501 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 30, i32 9
  store ptr %22, ptr %501, align 4
  br label %502

502:                                              ; preds = %500, %492
  %503 = load i8, ptr %380, align 2, !range !8
  %504 = icmp eq i8 %503, 0
  br i1 %504, label %513, label %505

505:                                              ; preds = %502
  %506 = call i32 @v4l2_ctrl_add_handler(ptr noundef %23, ptr noundef %9, ptr noundef null, i1 noundef zeroext false) #7
  %507 = call i32 @v4l2_ctrl_add_handler(ptr noundef %23, ptr noundef %12, ptr noundef null, i1 noundef zeroext false) #7
  %508 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 33, i32 9
  %509 = load i32, ptr %508, align 4
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %537

511:                                              ; preds = %505
  %512 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 32, i32 9
  store ptr %23, ptr %512, align 4
  br label %513

513:                                              ; preds = %511, %502
  %514 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 74
  %515 = load i8, ptr %514, align 1, !range !8
  %516 = icmp eq i8 %515, 0
  br i1 %516, label %525, label %517

517:                                              ; preds = %513
  %518 = call i32 @v4l2_ctrl_add_handler(ptr noundef %24, ptr noundef %9, ptr noundef null, i1 noundef zeroext false) #7
  %519 = call i32 @v4l2_ctrl_add_handler(ptr noundef %24, ptr noundef %12, ptr noundef null, i1 noundef zeroext false) #7
  %520 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 35, i32 9
  %521 = load i32, ptr %520, align 4
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %537

523:                                              ; preds = %517
  %524 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 34, i32 9
  store ptr %24, ptr %524, align 4
  br label %525

525:                                              ; preds = %523, %513
  %526 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 76
  %527 = load i8, ptr %526, align 1, !range !8
  %528 = icmp eq i8 %527, 0
  br i1 %528, label %537, label %529

529:                                              ; preds = %525
  %530 = call i32 @v4l2_ctrl_add_handler(ptr noundef %25, ptr noundef %9, ptr noundef null, i1 noundef zeroext false) #7
  %531 = call i32 @v4l2_ctrl_add_handler(ptr noundef %25, ptr noundef %12, ptr noundef null, i1 noundef zeroext false) #7
  %532 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 37, i32 9
  %533 = load i32, ptr %532, align 4
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %535, label %537

535:                                              ; preds = %529
  %536 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 36, i32 9
  store ptr %25, ptr %536, align 4
  br label %537

537:                                              ; preds = %535, %529, %525, %517, %505, %495, %484, %473, %462, %448, %434, %418, %406, %402, %398, %394, %390, %386
  %538 = phi i32 [ %388, %386 ], [ %392, %390 ], [ %396, %394 ], [ %400, %398 ], [ %404, %402 ], [ %408, %406 ], [ %427, %418 ], [ %440, %434 ], [ %454, %448 ], [ %466, %462 ], [ %477, %473 ], [ %488, %484 ], [ %498, %495 ], [ %509, %505 ], [ %521, %517 ], [ %533, %529 ], [ 0, %535 ], [ 0, %525 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #7
  ret i32 %538
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_free_controls(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 19
  tail call void @v4l2_ctrl_handler_free(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 21
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 23
  tail call void @v4l2_ctrl_handler_free(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 25
  tail call void @v4l2_ctrl_handler_free(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 27
  tail call void @v4l2_ctrl_handler_free(ptr noundef %6) #7
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 29
  tail call void @v4l2_ctrl_handler_free(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 31
  tail call void @v4l2_ctrl_handler_free(ptr noundef %8) #7
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 11
  tail call void @v4l2_ctrl_handler_free(ptr noundef %9) #7
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 12
  tail call void @v4l2_ctrl_handler_free(ptr noundef %10) #7
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 13
  tail call void @v4l2_ctrl_handler_free(ptr noundef %11) #7
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 14
  tail call void @v4l2_ctrl_handler_free(ptr noundef %12) #7
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 15
  tail call void @v4l2_ctrl_handler_free(ptr noundef %13) #7
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 16
  tail call void @v4l2_ctrl_handler_free(ptr noundef %14) #7
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 17
  tail call void @v4l2_ctrl_handler_free(ptr noundef %15) #7
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 33
  tail call void @v4l2_ctrl_handler_free(ptr noundef %16) #7
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 35
  tail call void @v4l2_ctrl_handler_free(ptr noundef %17) #7
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 37
  tail call void @v4l2_ctrl_handler_free(ptr noundef %18) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_vid_cap_s_ctrl(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -2416
  %5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  switch i32 %6, label %292 [
    i32 15790080, label %7
    i32 15790105, label %15
    i32 15790106, label %26
    i32 15790107, label %35
    i32 15790123, label %44
    i32 15790108, label %55
    i32 10488165, label %64
    i32 15790109, label %78
    i32 15790110, label %88
    i32 15790082, label %98
    i32 15790083, label %103
    i32 15790081, label %108
    i32 15790121, label %112
    i32 15790086, label %125
    i32 15790087, label %131
    i32 15790100, label %137
    i32 15790101, label %152
    i32 15790122, label %162
    i32 15790111, label %168
    i32 15790112, label %174
    i32 15790113, label %180
    i32 15790084, label %186
    i32 15790085, label %192
    i32 15790102, label %198
    i32 15790142, label %211
    i32 15790103, label %260
    i32 15790104, label %273
    i32 15790120, label %284
  ]

7:                                                ; preds = %1
  tail call void @vivid_update_quality(ptr noundef %4) #7
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %3, i32 17672
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %9
  br i1 %12, label %292, label %13

13:                                               ; preds = %7
  store i32 %9, ptr %10, align 4
  %14 = getelementptr i8, ptr %3, i32 17716
  store i8 1, ptr %14, align 4
  br label %292

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [9 x i32], ptr @vivid_vid_cap_s_ctrl.colorspaces, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %3, i32 16676
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %19
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  store i32 %19, ptr %20, align 4
  %24 = getelementptr i8, ptr %3, i32 17716
  store i8 1, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %15
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 1) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 2) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 3) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 0) #7
  br label %292

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %3, i32 16680
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %28
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  store i32 %28, ptr %29, align 4
  %33 = getelementptr i8, ptr %3, i32 17716
  store i8 1, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %26
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 1) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 2) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 3) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 0) #7
  br label %292

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %3, i32 16684
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %37
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  store i32 %37, ptr %38, align 4
  %42 = getelementptr i8, ptr %3, i32 17716
  store i8 1, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %35
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 1) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 2) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 3) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 0) #7
  br label %292

44:                                               ; preds = %1
  %45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 128, i32 129
  %49 = getelementptr i8, ptr %3, i32 16688
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, %48
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  store i32 %48, ptr %49, align 4
  %53 = getelementptr i8, ptr %3, i32 17716
  store i8 1, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %44
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 1) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 2) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 3) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 0) #7
  br label %292

55:                                               ; preds = %1
  %56 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr i8, ptr %3, i32 16704
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, %57
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  store i32 %57, ptr %58, align 4
  %62 = getelementptr i8, ptr %3, i32 17716
  store i8 1, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %55
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 1) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 2) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 3) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 0) #7
  br label %292

64:                                               ; preds = %1
  %65 = getelementptr i8, ptr %3, i32 10980
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 53, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 3
  br i1 %69, label %70, label %292

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i8, ptr %3, i32 16720
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, %72
  br i1 %75, label %292, label %76

76:                                               ; preds = %70
  store i32 %72, ptr %73, align 4
  %77 = getelementptr i8, ptr %3, i32 17716
  store i8 1, ptr %77, align 4
  br label %292

78:                                               ; preds = %1
  %79 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i32 2, i32 1
  %83 = getelementptr i8, ptr %3, i32 16724
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, %82
  br i1 %85, label %292, label %86

86:                                               ; preds = %78
  store i32 %82, ptr %83, align 4
  %87 = getelementptr i8, ptr %3, i32 17716
  store i8 1, ptr %87, align 4
  br label %292

88:                                               ; preds = %1
  %89 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %90 = load i32, ptr %89, align 4
  %91 = icmp ne i32 %90, 0
  %92 = getelementptr i8, ptr %3, i32 16661
  %93 = load i8, ptr %92, align 1, !range !8
  %94 = zext i1 %91 to i8
  %95 = icmp eq i8 %93, %94
  br i1 %95, label %292, label %96

96:                                               ; preds = %88
  store i8 %94, ptr %92, align 1
  %97 = getelementptr i8, ptr %3, i32 17716
  store i8 1, ptr %97, align 4
  br label %292

98:                                               ; preds = %1
  %99 = getelementptr i8, ptr %3, i32 16564
  %100 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr i8, ptr %3, i32 17692
  store i32 %101, ptr %102, align 4
  tail call void @tpg_update_mv_step(ptr noundef %99) #7
  br label %292

103:                                              ; preds = %1
  %104 = getelementptr i8, ptr %3, i32 16564
  %105 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr i8, ptr %3, i32 17704
  store i32 %106, ptr %107, align 4
  tail call void @tpg_update_mv_step(ptr noundef %104) #7
  br label %292

108:                                              ; preds = %1
  %109 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr i8, ptr %3, i32 9280
  store i32 %110, ptr %111, align 8
  br label %292

112:                                              ; preds = %1
  %113 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr i8, ptr %3, i32 17680
  store i32 %114, ptr %115, align 4
  %116 = getelementptr i8, ptr %3, i32 17956
  br label %117

117:                                              ; preds = %117, %112
  %118 = phi i32 [ 0, %112 ], [ %123, %117 ]
  %119 = load i32, ptr %113, align 4
  %120 = icmp slt i32 %119, 100
  %121 = getelementptr [32 x i8], ptr %116, i32 0, i32 %118
  %122 = zext i1 %120 to i8
  store i8 %122, ptr %121, align 1
  %123 = add nuw nsw i32 %118, 1
  %124 = icmp eq i32 %123, 32
  br i1 %124, label %292, label %117

125:                                              ; preds = %1
  %126 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %127 = load i32, ptr %126, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i8
  %130 = getelementptr i8, ptr %3, i32 17687
  store i8 %129, ptr %130, align 1
  br label %292

131:                                              ; preds = %1
  %132 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %133 = load i32, ptr %132, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i8
  %136 = getelementptr i8, ptr %3, i32 17688
  store i8 %135, ptr %136, align 4
  br label %292

137:                                              ; preds = %1
  %138 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %139 = load i32, ptr %138, align 4
  %140 = icmp ne i32 %139, 0
  %141 = getelementptr i8, ptr %3, i32 9288
  %142 = zext i1 %140 to i8
  store i8 %142, ptr %141, align 8
  %143 = getelementptr i8, ptr %3, i32 9290
  %144 = load i8, ptr %143, align 2, !range !8
  %145 = getelementptr i8, ptr %3, i32 17676
  %146 = load i8, ptr %145, align 4, !range !8
  %147 = xor i8 %144, %142
  %148 = icmp eq i8 %146, %147
  br i1 %148, label %292, label %149

149:                                              ; preds = %137
  %150 = getelementptr i8, ptr %3, i32 16564
  store i8 %147, ptr %145, align 4
  tail call void @tpg_update_mv_step(ptr noundef %150) #7
  %151 = getelementptr i8, ptr %3, i32 17717
  store i8 1, ptr %151, align 1
  br label %292

152:                                              ; preds = %1
  %153 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %154 = load i32, ptr %153, align 4
  %155 = icmp ne i32 %154, 0
  %156 = getelementptr i8, ptr %3, i32 9289
  %157 = zext i1 %155 to i8
  store i8 %157, ptr %156, align 1
  %158 = getelementptr i8, ptr %3, i32 9291
  %159 = load i8, ptr %158, align 1, !range !8
  %160 = xor i8 %159, %157
  %161 = getelementptr i8, ptr %3, i32 17677
  store i8 %160, ptr %161, align 1
  br label %292

162:                                              ; preds = %1
  %163 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %164 = load i32, ptr %163, align 4
  %165 = icmp ne i32 %164, 0
  %166 = getelementptr i8, ptr %3, i32 9294
  %167 = zext i1 %165 to i8
  store i8 %167, ptr %166, align 2
  tail call void @vivid_update_format_cap(ptr noundef %4, i1 noundef zeroext true) #7
  br label %292

168:                                              ; preds = %1
  %169 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %170 = load i32, ptr %169, align 4
  %171 = icmp ne i32 %170, 0
  %172 = getelementptr i8, ptr %3, i32 21325
  %173 = zext i1 %171 to i8
  store i8 %173, ptr %172, align 1
  tail call void @vivid_update_format_cap(ptr noundef %4, i1 noundef zeroext true) #7
  br label %292

174:                                              ; preds = %1
  %175 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %176 = load i32, ptr %175, align 4
  %177 = icmp ne i32 %176, 0
  %178 = getelementptr i8, ptr %3, i32 21326
  %179 = zext i1 %177 to i8
  store i8 %179, ptr %178, align 2
  tail call void @vivid_update_format_cap(ptr noundef %4, i1 noundef zeroext true) #7
  br label %292

180:                                              ; preds = %1
  %181 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %182 = load i32, ptr %181, align 4
  %183 = icmp ne i32 %182, 0
  %184 = getelementptr i8, ptr %3, i32 21327
  %185 = zext i1 %183 to i8
  store i8 %185, ptr %184, align 1
  tail call void @vivid_update_format_cap(ptr noundef %4, i1 noundef zeroext true) #7
  br label %292

186:                                              ; preds = %1
  %187 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %188 = load i32, ptr %187, align 4
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i8
  %191 = getelementptr i8, ptr %3, i32 17685
  store i8 %190, ptr %191, align 1
  br label %292

192:                                              ; preds = %1
  %193 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %194 = load i32, ptr %193, align 4
  %195 = icmp ne i32 %194, 0
  %196 = zext i1 %195 to i8
  %197 = getelementptr i8, ptr %3, i32 17686
  store i8 %196, ptr %197, align 2
  br label %292

198:                                              ; preds = %1
  %199 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr i8, ptr %3, i32 10648
  %202 = getelementptr i8, ptr %3, i32 10980
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr [16 x i32], ptr %201, i32 0, i32 %203
  store i32 %200, ptr %204, align 4
  %205 = tail call i32 @vivid_get_video_aspect(ptr noundef %4) #7
  %206 = getelementptr i8, ptr %3, i32 16712
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, %205
  br i1 %208, label %292, label %209

209:                                              ; preds = %198
  store i32 %205, ptr %206, align 4
  %210 = getelementptr i8, ptr %3, i32 17718
  store i8 1, ptr %210, align 2
  br label %292

211:                                              ; preds = %1
  %212 = getelementptr i8, ptr %3, i32 9088
  %213 = load ptr, ptr %212, align 8
  %214 = getelementptr inbounds %struct.v4l2_ctrl, ptr %213, i32 0, i32 22
  %215 = load i32, ptr %214, align 4
  %216 = getelementptr i8, ptr %3, i32 10712
  %217 = getelementptr i8, ptr %3, i32 10980
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr [16 x i32], ptr %216, i32 0, i32 %218
  store i32 %215, ptr %219, align 4
  %220 = getelementptr i8, ptr %3, i32 9092
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.v4l2_ctrl, ptr %221, i32 0, i32 22
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr i8, ptr %3, i32 10852
  %225 = load i32, ptr %217, align 4
  %226 = getelementptr [16 x i32], ptr %224, i32 0, i32 %225
  store i32 %223, ptr %226, align 4
  %227 = getelementptr i8, ptr %3, i32 14944
  store i32 0, ptr %227, align 8
  %228 = getelementptr i8, ptr %3, i32 8900
  br label %229

229:                                              ; preds = %246, %211
  %230 = phi i32 [ 0, %211 ], [ %247, %246 ]
  %231 = phi i32 [ 0, %211 ], [ %248, %246 ]
  %232 = phi i32 [ 0, %211 ], [ %249, %246 ]
  %233 = getelementptr [16 x i8], ptr %228, i32 0, i32 %232
  %234 = load i8, ptr %233, align 1
  %235 = icmp eq i8 %234, 3
  br i1 %235, label %236, label %246

236:                                              ; preds = %229
  %237 = getelementptr [16 x i32], ptr %216, i32 0, i32 %232
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %243, label %240

240:                                              ; preds = %236
  %241 = shl nuw i32 1, %231
  %242 = or i32 %230, %241
  store i32 %242, ptr %227, align 8
  br label %243

243:                                              ; preds = %240, %236
  %244 = phi i32 [ %242, %240 ], [ %230, %236 ]
  %245 = add i32 %231, 1
  br label %246

246:                                              ; preds = %243, %229
  %247 = phi i32 [ %244, %243 ], [ %230, %229 ]
  %248 = phi i32 [ %245, %243 ], [ %231, %229 ]
  %249 = add nuw nsw i32 %232, 1
  %250 = icmp eq i32 %249, 16
  br i1 %250, label %251, label %229

251:                                              ; preds = %246
  %252 = getelementptr i8, ptr %3, i32 9144
  %253 = load ptr, ptr %252, align 8
  %254 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %253, i32 noundef %247) #7
  %255 = load ptr, ptr %220, align 4
  %256 = load i32, ptr %217, align 4
  %257 = getelementptr [16 x i32], ptr %216, i32 0, i32 %256
  %258 = load i32, ptr %257, align 4
  %259 = icmp eq i32 %258, 4
  tail call void @v4l2_ctrl_activate(ptr noundef %255, i1 noundef zeroext %259) #7
  tail call void @vivid_update_quality(ptr noundef %4) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 3) #7
  br label %292

260:                                              ; preds = %1
  %261 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %262 = load i32, ptr %261, align 4
  %263 = getelementptr i8, ptr %3, i32 10916
  %264 = getelementptr i8, ptr %3, i32 10980
  %265 = load i32, ptr %264, align 4
  %266 = getelementptr [16 x i32], ptr %263, i32 0, i32 %265
  store i32 %262, ptr %266, align 4
  %267 = tail call i32 @vivid_get_video_aspect(ptr noundef %4) #7
  %268 = getelementptr i8, ptr %3, i32 16712
  %269 = load i32, ptr %268, align 4
  %270 = icmp eq i32 %269, %267
  br i1 %270, label %292, label %271

271:                                              ; preds = %260
  store i32 %267, ptr %268, align 4
  %272 = getelementptr i8, ptr %3, i32 17718
  store i8 1, ptr %272, align 2
  br label %292

273:                                              ; preds = %1
  %274 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %275 = load i32, ptr %274, align 4
  %276 = icmp ne i32 %275, 0
  %277 = getelementptr i8, ptr %3, i32 21324
  %278 = zext i1 %276 to i8
  store i8 %278, ptr %277, align 4
  %279 = getelementptr i8, ptr %3, i32 18136
  %280 = load i32, ptr %279, align 4
  %281 = and i32 %280, -458753
  store i32 %281, ptr %279, align 4
  br i1 %276, label %282, label %292

282:                                              ; preds = %273
  %283 = or i32 %281, 65536
  store i32 %283, ptr %279, align 4
  br label %292

284:                                              ; preds = %1
  %285 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %286 = load i32, ptr %285, align 4
  %287 = getelementptr i8, ptr %3, i32 14916
  store i32 %286, ptr %287, align 4
  %288 = getelementptr i8, ptr %3, i32 14912
  %289 = load i32, ptr %288, align 8
  %290 = icmp ugt i32 %289, %286
  br i1 %290, label %291, label %292

291:                                              ; preds = %284
  store i32 %286, ptr %288, align 8
  br label %292

292:                                              ; preds = %291, %284, %282, %273, %271, %260, %251, %209, %198, %192, %186, %180, %174, %168, %162, %152, %149, %137, %131, %125, %117, %108, %103, %98, %96, %88, %86, %78, %76, %70, %64, %63, %54, %43, %34, %25, %13, %7, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_update_quality(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_send_source_change(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_update_format_cap(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_get_video_aspect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_update_mv_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_user_gen_s_ctrl(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %81 [
    i32 15790145, label %6
    i32 10025216, label %79
  ]

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 -752
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %7) #8
  %9 = getelementptr i8, ptr %3, i32 12008
  store i8 1, ptr %9, align 8
  %10 = getelementptr i8, ptr %3, i32 10614
  %11 = load i8, ptr %10, align 2, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %3, i32 784
  %15 = getelementptr i8, ptr %3, i32 1568
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %15) #7
  tail call void @v4l2_event_wake_all(ptr noundef %14) #7
  br label %16

16:                                               ; preds = %13, %6
  %17 = getelementptr i8, ptr %3, i32 10615
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %3, i32 1752
  %22 = getelementptr i8, ptr %3, i32 2536
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %22) #7
  tail call void @v4l2_event_wake_all(ptr noundef %21) #7
  br label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr i8, ptr %3, i32 10616
  %25 = load i8, ptr %24, align 8, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %3, i32 2720
  %29 = getelementptr i8, ptr %3, i32 3504
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %29) #7
  tail call void @v4l2_event_wake_all(ptr noundef %28) #7
  br label %30

30:                                               ; preds = %27, %23
  %31 = getelementptr i8, ptr %3, i32 10619
  %32 = load i8, ptr %31, align 1, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %3, i32 3688
  %36 = getelementptr i8, ptr %3, i32 4472
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %36) #7
  tail call void @v4l2_event_wake_all(ptr noundef %35) #7
  br label %37

37:                                               ; preds = %34, %30
  %38 = getelementptr i8, ptr %3, i32 10622
  %39 = load i8, ptr %38, align 2, !range !8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %3, i32 4656
  %43 = getelementptr i8, ptr %3, i32 5440
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %43) #7
  tail call void @v4l2_event_wake_all(ptr noundef %42) #7
  br label %44

44:                                               ; preds = %41, %37
  %45 = getelementptr i8, ptr %3, i32 10623
  %46 = load i8, ptr %45, align 1, !range !8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %3, i32 5624
  %50 = getelementptr i8, ptr %3, i32 6408
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %50) #7
  tail call void @v4l2_event_wake_all(ptr noundef %49) #7
  br label %51

51:                                               ; preds = %48, %44
  %52 = getelementptr i8, ptr %3, i32 10624
  %53 = load i8, ptr %52, align 8, !range !8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %3, i32 6592
  %57 = getelementptr i8, ptr %3, i32 7376
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %57) #7
  tail call void @v4l2_event_wake_all(ptr noundef %56) #7
  br label %58

58:                                               ; preds = %55, %51
  %59 = getelementptr i8, ptr %3, i32 10626
  %60 = load i8, ptr %59, align 2, !range !8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %3, i32 7560
  %64 = getelementptr i8, ptr %3, i32 8344
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %64) #7
  tail call void @v4l2_event_wake_all(ptr noundef %63) #7
  br label %65

65:                                               ; preds = %62, %58
  %66 = getelementptr i8, ptr %3, i32 10627
  %67 = load i8, ptr %66, align 1, !range !8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %3, i32 8528
  %71 = getelementptr i8, ptr %3, i32 9312
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %71) #7
  tail call void @v4l2_event_wake_all(ptr noundef %70) #7
  br label %72

72:                                               ; preds = %69, %65
  %73 = getelementptr i8, ptr %3, i32 10629
  %74 = load i8, ptr %73, align 1, !range !8
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = getelementptr i8, ptr %3, i32 9496
  %78 = getelementptr i8, ptr %3, i32 10280
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %78) #7
  tail call void @v4l2_event_wake_all(ptr noundef %77) #7
  br label %81

79:                                               ; preds = %1
  %80 = getelementptr i8, ptr %3, i32 10924
  store i32 30, ptr %80, align 4
  br label %81

81:                                               ; preds = %79, %76, %72, %1
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_wake_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_user_vid_g_volatile_ctrl(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 9963794
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = tail call i32 @jiffies_to_msecs(i32 noundef %8) #7
  %10 = udiv i32 %9, 1000
  %11 = and i32 %10, 255
  %12 = getelementptr i8, ptr %7, i32 10540
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 22
  store i32 %11, ptr %14, align 4
  br label %15

15:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_user_vid_s_ctrl(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %87 [
    i32 9963776, label %6
    i32 9963777, label %24
    i32 9963778, label %33
    i32 9963779, label %42
    i32 9963796, label %53
    i32 9963797, label %68
    i32 9963817, label %78
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %3, i32 12508
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, -128
  %12 = add i32 %11, %8
  %13 = getelementptr i8, ptr %3, i32 10744
  %14 = getelementptr [16 x i32], ptr %13, i32 0, i32 %10
  store i32 %12, ptr %14, align 4
  %15 = load i32, ptr %9, align 4
  %16 = getelementptr [16 x i32], ptr %13, i32 0, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i8
  %19 = getelementptr i8, ptr %3, i32 18190
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, %18
  br i1 %21, label %87, label %22

22:                                               ; preds = %6
  store i8 %18, ptr %19, align 2
  %23 = getelementptr i8, ptr %3, i32 19244
  store i8 1, ptr %23, align 4
  br label %87

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %26 = load i32, ptr %25, align 4
  %27 = trunc i32 %26 to i8
  %28 = getelementptr i8, ptr %3, i32 18191
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, %27
  br i1 %30, label %87, label %31

31:                                               ; preds = %24
  store i8 %27, ptr %28, align 1
  %32 = getelementptr i8, ptr %3, i32 19244
  store i8 1, ptr %32, align 4
  br label %87

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %35 to i8
  %37 = getelementptr i8, ptr %3, i32 18192
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, %36
  br i1 %39, label %87, label %40

40:                                               ; preds = %33
  store i8 %36, ptr %37, align 4
  %41 = getelementptr i8, ptr %3, i32 19244
  store i8 1, ptr %41, align 4
  br label %87

42:                                               ; preds = %1
  %43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %44 = load i32, ptr %43, align 4
  %45 = trunc i32 %44 to i16
  %46 = tail call i16 @llvm.smax.i16(i16 %45, i16 -128) #7
  %47 = tail call i16 @llvm.smin.i16(i16 %46, i16 128) #7
  %48 = getelementptr i8, ptr %3, i32 18194
  %49 = load i16, ptr %48, align 2
  %50 = icmp eq i16 %49, %47
  br i1 %50, label %87, label %51

51:                                               ; preds = %42
  store i16 %47, ptr %48, align 2
  %52 = getelementptr i8, ptr %3, i32 19244
  store i8 1, ptr %52, align 4
  br label %87

53:                                               ; preds = %1
  %54 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %55 = load i32, ptr %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = getelementptr i8, ptr %3, i32 10818
  %58 = zext i1 %56 to i8
  store i8 %58, ptr %57, align 2
  %59 = getelementptr i8, ptr %3, i32 10816
  %60 = load i8, ptr %59, align 8, !range !8
  %61 = getelementptr i8, ptr %3, i32 19204
  %62 = load i8, ptr %61, align 4, !range !8
  %63 = xor i8 %60, %58
  %64 = icmp eq i8 %62, %63
  br i1 %64, label %87, label %65

65:                                               ; preds = %53
  %66 = getelementptr i8, ptr %3, i32 18092
  store i8 %63, ptr %61, align 4
  tail call void @tpg_update_mv_step(ptr noundef %66) #7
  %67 = getelementptr i8, ptr %3, i32 19245
  store i8 1, ptr %67, align 1
  br label %87

68:                                               ; preds = %1
  %69 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %70 = load i32, ptr %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = getelementptr i8, ptr %3, i32 10819
  %73 = zext i1 %71 to i8
  store i8 %73, ptr %72, align 1
  %74 = getelementptr i8, ptr %3, i32 10817
  %75 = load i8, ptr %74, align 1, !range !8
  %76 = xor i8 %75, %73
  %77 = getelementptr i8, ptr %3, i32 19205
  store i8 %76, ptr %77, align 1
  br label %87

78:                                               ; preds = %1
  %79 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %80 = load i32, ptr %79, align 4
  %81 = trunc i32 %80 to i8
  %82 = getelementptr i8, ptr %3, i32 18188
  %83 = load i8, ptr %82, align 4
  %84 = icmp eq i8 %83, %81
  br i1 %84, label %87, label %85

85:                                               ; preds = %78
  store i8 %81, ptr %82, align 4
  %86 = getelementptr i8, ptr %3, i32 19244
  store i8 1, ptr %86, align 4
  br label %87

87:                                               ; preds = %85, %78, %68, %65, %53, %51, %42, %40, %33, %31, %24, %22, %6, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_vid_out_s_ctrl(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -3384
  %5 = getelementptr i8, ptr %3, i32 14708
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %131 [
    i32 15790114, label %8
    i32 15790115, label %14
    i32 15790116, label %20
    i32 10488068, label %26
    i32 15790124, label %60
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = getelementptr i8, ptr %3, i32 20360
  %13 = zext i1 %11 to i8
  store i8 %13, ptr %12, align 8
  tail call void @vivid_update_format_out(ptr noundef %4) #7
  br label %131

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = getelementptr i8, ptr %3, i32 20361
  %19 = zext i1 %17 to i8
  store i8 %19, ptr %18, align 1
  tail call void @vivid_update_format_out(ptr noundef %4) #7
  br label %131

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = getelementptr i8, ptr %3, i32 20362
  %25 = zext i1 %23 to i8
  store i8 %25, ptr %24, align 2
  tail call void @vivid_update_format_out(ptr noundef %4) #7
  br label %131

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr i8, ptr %3, i32 14889
  %31 = zext i1 %29 to i8
  store i8 %31, ptr %30, align 1
  %32 = getelementptr i8, ptr %3, i32 14692
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 57, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 3
  br i1 %36, label %37, label %131

37:                                               ; preds = %26
  br i1 %29, label %51, label %38

38:                                               ; preds = %37
  %39 = getelementptr i8, ptr %3, i32 14772
  %40 = load i32, ptr %39, align 1
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load i32, ptr %5, align 1
  %45 = icmp eq i32 %44, 720
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = getelementptr i8, ptr %3, i32 14712
  %48 = load i32, ptr %47, align 1
  %49 = icmp ult i32 %48, 577
  br i1 %49, label %51, label %50

50:                                               ; preds = %46, %43
  br label %51

51:                                               ; preds = %50, %46, %38, %37
  %52 = phi i32 [ 3, %50 ], [ 1, %46 ], [ 8, %38 ], [ 8, %37 ]
  %53 = phi i32 [ 0, %50 ], [ 0, %46 ], [ 0, %38 ], [ 2, %37 ]
  %54 = getelementptr i8, ptr %3, i32 14836
  store i32 %52, ptr %54, align 4
  %55 = getelementptr i8, ptr %3, i32 14848
  store i32 %53, ptr %55, align 8
  %56 = getelementptr i8, ptr %3, i32 8325
  %57 = load i8, ptr %56, align 1, !range !8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %131, label %59

59:                                               ; preds = %51
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 3) #7
  br label %131

60:                                               ; preds = %1
  %61 = getelementptr i8, ptr %3, i32 7972
  %62 = getelementptr i8, ptr %3, i32 14692
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr [16 x i8], ptr %61, i32 0, i32 %63
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %65, 3
  br i1 %66, label %67, label %131

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %69 = load i32, ptr %68, align 4
  %70 = icmp ne i32 %69, 0
  %71 = getelementptr i8, ptr %3, i32 14904
  %72 = getelementptr [16 x i8], ptr %71, i32 0, i32 %63
  %73 = zext i1 %70 to i8
  store i8 %73, ptr %72, align 1
  %74 = getelementptr i8, ptr %3, i32 7964
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %96, label %77

77:                                               ; preds = %91, %67
  %78 = phi i32 [ %93, %91 ], [ 0, %67 ]
  %79 = phi i32 [ %94, %91 ], [ 0, %67 ]
  %80 = phi i32 [ %92, %91 ], [ 0, %67 ]
  %81 = getelementptr [16 x i8], ptr %61, i32 0, i32 %79
  %82 = load i8, ptr %81, align 1
  %83 = icmp eq i8 %82, 3
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = getelementptr [16 x i8], ptr %71, i32 0, i32 %79
  %86 = load i8, ptr %85, align 1, !range !8
  %87 = zext i8 %86 to i32
  %88 = add i32 %78, 1
  %89 = shl nuw i32 %87, %78
  %90 = or i32 %89, %80
  br label %91

91:                                               ; preds = %84, %77
  %92 = phi i32 [ %90, %84 ], [ %80, %77 ]
  %93 = phi i32 [ %88, %84 ], [ %78, %77 ]
  %94 = add nuw i32 %79, 1
  %95 = icmp eq i32 %94, %75
  br i1 %95, label %96, label %77

96:                                               ; preds = %91, %67
  %97 = phi i32 [ 0, %67 ], [ %92, %91 ]
  %98 = getelementptr i8, ptr %3, i32 8172
  %99 = load ptr, ptr %98, align 4
  %100 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %99, i32 noundef %97) #7
  %101 = getelementptr i8, ptr %3, i32 13944
  %102 = load i32, ptr %101, align 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %96
  %105 = getelementptr i8, ptr %3, i32 8164
  %106 = load ptr, ptr %105, align 4
  %107 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %106, i32 noundef %97) #7
  %108 = getelementptr i8, ptr %3, i32 8168
  %109 = load ptr, ptr %108, align 8
  %110 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %109, i32 noundef %97) #7
  br label %111

111:                                              ; preds = %104, %96
  %112 = getelementptr i8, ptr %3, i32 21284
  %113 = load i32, ptr %62, align 4
  %114 = getelementptr [16 x i8], ptr %112, i32 0, i32 %113
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i32
  %117 = getelementptr i8, ptr %3, i32 21220
  %118 = getelementptr [16 x ptr], ptr %117, i32 0, i32 %116
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %131, label %121

121:                                              ; preds = %111
  %122 = load i32, ptr %68, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = load i32, ptr %101, align 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.cec_adapter, ptr %119, i32 0, i32 18
  %129 = load i16, ptr %128, align 2
  tail call void @cec_s_phys_addr(ptr noundef nonnull %119, i16 noundef zeroext %129, i1 noundef zeroext false) #7
  br label %131

130:                                              ; preds = %124, %121
  tail call void @cec_s_phys_addr(ptr noundef nonnull %119, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  br label %131

131:                                              ; preds = %130, %127, %111, %60, %59, %51, %26, %20, %14, %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_update_format_out(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_streaming_s_ctrl(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store i64 0, ptr %2, align 8, !annotation !9
  %5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  switch i32 %6, label %78 [
    i32 15790146, label %7
    i32 15790144, label %9
    i32 15790147, label %13
    i32 15790148, label %15
    i32 15790149, label %17
    i32 15790152, label %19
    i32 15790150, label %21
    i32 15790118, label %56
    i32 15790119, label %62
  ]

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %4, i32 11676
  store i8 1, ptr %8, align 4
  br label %78

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %4, i32 11688
  store i32 %11, ptr %12, align 8
  br label %78

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %4, i32 11673
  store i8 1, ptr %14, align 1
  br label %78

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %4, i32 11674
  store i8 1, ptr %16, align 2
  br label %78

17:                                               ; preds = %1
  %18 = getelementptr i8, ptr %4, i32 11675
  store i8 1, ptr %18, align 1
  br label %78

19:                                               ; preds = %1
  %20 = getelementptr i8, ptr %4, i32 11677
  store i8 1, ptr %20, align 1
  br label %78

21:                                               ; preds = %1
  %22 = getelementptr i8, ptr %4, i32 19684
  %23 = load i16, ptr %22, align 4
  %24 = and i16 %23, 2
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %4, i32 19388
  tail call void @vb2_queue_error(ptr noundef %27) #7
  br label %28

28:                                               ; preds = %26, %21
  %29 = getelementptr i8, ptr %4, i32 20032
  %30 = load i16, ptr %29, align 4
  %31 = and i16 %30, 2
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %4, i32 19736
  tail call void @vb2_queue_error(ptr noundef %34) #7
  br label %35

35:                                               ; preds = %33, %28
  %36 = getelementptr i8, ptr %4, i32 21352
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %37, 2
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %4, i32 21056
  tail call void @vb2_queue_error(ptr noundef %41) #7
  br label %42

42:                                               ; preds = %40, %35
  %43 = getelementptr i8, ptr %4, i32 21700
  %44 = load i16, ptr %43, align 4
  %45 = and i16 %44, 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = getelementptr i8, ptr %4, i32 21404
  tail call void @vb2_queue_error(ptr noundef %48) #7
  br label %49

49:                                               ; preds = %47, %42
  %50 = getelementptr i8, ptr %4, i32 22548
  %51 = load i16, ptr %50, align 4
  %52 = and i16 %51, 2
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %49
  %55 = getelementptr i8, ptr %4, i32 22252
  tail call void @vb2_queue_error(ptr noundef %55) #7
  br label %78

56:                                               ; preds = %1
  %57 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %58 = load i32, ptr %57, align 4
  %59 = icmp ne i32 %58, 0
  %60 = getelementptr i8, ptr %4, i32 11678
  %61 = zext i1 %59 to i8
  store i8 %61, ptr %60, align 2
  br label %78

62:                                               ; preds = %1
  %63 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %64 = load i32, ptr %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = getelementptr i8, ptr %4, i32 11679
  %67 = zext i1 %65 to i8
  store i8 %67, ptr %66, align 1
  %68 = load i32, ptr %63, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = getelementptr i8, ptr %4, i32 11680
  store i64 0, ptr %71, align 8
  br label %78

72:                                               ; preds = %62
  %73 = tail call i64 @ktime_get() #7
  %74 = call i64 @div64_u64_rem(i64 noundef %73, i64 noundef 4294967296000000000, ptr noundef nonnull %2) #7
  %75 = load i64, ptr %2, align 8
  %76 = sub i64 4294967280000000000, %75
  %77 = getelementptr i8, ptr %4, i32 11680
  store i64 %76, ptr %77, align 8
  br label %78

78:                                               ; preds = %72, %70, %56, %54, %49, %19, %17, %15, %13, %9, %7, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_error(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_sdtv_cap_s_ctrl(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -1224
  %5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 15790140
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %3, i32 10272
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %3, i32 11580
  %14 = getelementptr i8, ptr %3, i32 12172
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr [16 x i32], ptr %13, i32 0, i32 %15
  store i32 %12, ptr %16, align 4
  %17 = load i32, ptr %14, align 4
  %18 = getelementptr [16 x i32], ptr %13, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %33

21:                                               ; preds = %8
  %22 = getelementptr i8, ptr %3, i32 10276
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr [0 x i64], ptr @vivid_standard, i32 0, i32 %25
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr i8, ptr %3, i32 11712
  %29 = getelementptr [16 x i64], ptr %28, i32 0, i32 %17
  store i64 %27, ptr %29, align 8
  %30 = load i32, ptr %14, align 4
  %31 = getelementptr [16 x i32], ptr %13, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %21, %8
  %34 = phi i32 [ %32, %21 ], [ %19, %8 ]
  %35 = getelementptr i8, ptr %3, i32 10276
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq i32 %34, 4
  tail call void @v4l2_ctrl_activate(ptr noundef %36, i1 noundef zeroext %37) #7
  tail call void @vivid_update_quality(ptr noundef %4) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 1) #7
  tail call void @vivid_send_source_change(ptr noundef %4, i32 noundef 2) #7
  br label %38

38:                                               ; preds = %33, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @vivid_vbi_cap_s_ctrl(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 15790088
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = getelementptr i8, ptr %7, i32 7356
  %12 = zext i1 %10 to i8
  store i8 %12, ptr %11, align 4
  br label %13

13:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_loop_cap_s_ctrl(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 15790117
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -1336
  %9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = getelementptr i8, ptr %7, i32 10373
  %13 = zext i1 %11 to i8
  store i8 %13, ptr %12, align 1
  tail call void @vivid_update_quality(ptr noundef %8) #7
  tail call void @vivid_send_source_change(ptr noundef %8, i32 noundef 2) #7
  tail call void @vivid_send_source_change(ptr noundef %8, i32 noundef 3) #7
  br label %14

14:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_fb_s_ctrl(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 15790151
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -1448
  tail call void @vivid_clear_fb(ptr noundef %8) #7
  br label %9

9:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_clear_fb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_radio_rx_s_ctrl(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %86 [
    i32 15790170, label %6
    i32 15790171, label %10
    i32 15790172, label %16
    i32 15790173, label %22
    i32 10553602, label %80
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %3, i32 18260
  store i32 %8, ptr %9, align 4
  br label %86

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = getelementptr i8, ptr %3, i32 18264
  %15 = zext i1 %13 to i8
  store i8 %15, ptr %14, align 8
  br label %86

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = getelementptr i8, ptr %3, i32 18162
  %21 = zext i1 %19 to i8
  store i8 %21, ptr %20, align 2
  br label %86

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %24 = load i32, ptr %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = getelementptr i8, ptr %3, i32 18265
  %27 = zext i1 %25 to i8
  store i8 %27, ptr %26, align 1
  %28 = getelementptr i8, ptr %3, i32 4996
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, -16777217
  store i32 %30, ptr %28, align 4
  %31 = getelementptr i8, ptr %3, i32 18268
  store i32 0, ptr %31, align 4
  br i1 %25, label %54, label %32

32:                                               ; preds = %22
  %33 = or i32 %29, 16777216
  store i32 %33, ptr %28, align 4
  %34 = getelementptr i8, ptr %3, i32 5320
  %35 = load ptr, ptr %34, align 8
  %36 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %35, i32 noundef 0) #7
  %37 = getelementptr i8, ptr %3, i32 5324
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %38, i32 noundef 0) #7
  %40 = getelementptr i8, ptr %3, i32 5328
  %41 = load ptr, ptr %40, align 8
  %42 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %41, i32 noundef 0) #7
  %43 = getelementptr i8, ptr %3, i32 5332
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %44, i32 noundef 0) #7
  %46 = getelementptr i8, ptr %3, i32 5336
  %47 = load ptr, ptr %46, align 8
  %48 = tail call i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef %47, ptr noundef nonnull @.str.75) #7
  %49 = getelementptr i8, ptr %3, i32 5340
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef %50, ptr noundef nonnull @.str.75) #7
  %52 = load i8, ptr %26, align 1, !range !8
  %53 = icmp ne i8 %52, 0
  br label %54

54:                                               ; preds = %32, %22
  %55 = phi i1 [ %53, %32 ], [ true, %22 ]
  %56 = getelementptr i8, ptr %3, i32 5320
  %57 = load ptr, ptr %56, align 8
  tail call void @v4l2_ctrl_activate(ptr noundef %57, i1 noundef zeroext %55) #7
  %58 = getelementptr i8, ptr %3, i32 5336
  %59 = load ptr, ptr %58, align 8
  %60 = load i8, ptr %26, align 1, !range !8
  %61 = icmp ne i8 %60, 0
  tail call void @v4l2_ctrl_activate(ptr noundef %59, i1 noundef zeroext %61) #7
  %62 = getelementptr i8, ptr %3, i32 5340
  %63 = load ptr, ptr %62, align 4
  %64 = load i8, ptr %26, align 1, !range !8
  %65 = icmp ne i8 %64, 0
  tail call void @v4l2_ctrl_activate(ptr noundef %63, i1 noundef zeroext %65) #7
  %66 = getelementptr i8, ptr %3, i32 5324
  %67 = load ptr, ptr %66, align 4
  %68 = load i8, ptr %26, align 1, !range !8
  %69 = icmp ne i8 %68, 0
  tail call void @v4l2_ctrl_activate(ptr noundef %67, i1 noundef zeroext %69) #7
  %70 = getelementptr i8, ptr %3, i32 5328
  %71 = load ptr, ptr %70, align 8
  %72 = load i8, ptr %26, align 1, !range !8
  %73 = icmp ne i8 %72, 0
  tail call void @v4l2_ctrl_activate(ptr noundef %71, i1 noundef zeroext %73) #7
  %74 = getelementptr i8, ptr %3, i32 5332
  %75 = load ptr, ptr %74, align 4
  %76 = load i8, ptr %26, align 1, !range !8
  %77 = icmp ne i8 %76, 0
  tail call void @v4l2_ctrl_activate(ptr noundef %75, i1 noundef zeroext %77) #7
  %78 = load i32, ptr %28, align 4
  %79 = getelementptr i8, ptr %3, i32 -624
  store i32 %78, ptr %79, align 8
  br label %86

80:                                               ; preds = %1
  %81 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %82 = load i32, ptr %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = getelementptr i8, ptr %3, i32 18266
  %85 = zext i1 %83 to i8
  store i8 %85, ptr %84, align 2
  br label %86

86:                                               ; preds = %80, %54, %16, %10, %6, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_radio_tx_s_ctrl(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %120 [
    i32 15790174, label %6
    i32 10160387, label %18
    i32 10160389, label %35
    i32 10160390, label %52
    i32 10160395, label %69
    i32 10160396, label %86
    i32 10160397, label %103
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = getelementptr i8, ptr %3, i32 17320
  %11 = zext i1 %9 to i8
  store i8 %11, ptr %10, align 8
  %12 = getelementptr i8, ptr %3, i32 4032
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, -16777217
  %15 = select i1 %9, i32 0, i32 16777216
  %16 = or i32 %14, %15
  store i32 %16, ptr %12, align 8
  %17 = getelementptr i8, ptr %3, i32 -624
  store i32 %16, ptr %17, align 8
  br label %120

18:                                               ; preds = %1
  %19 = getelementptr i8, ptr %3, i32 17297
  %20 = load i8, ptr %19, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %120, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %3, i32 4352
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void @mutex_lock(ptr noundef %30) #7
  %31 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %24, i32 noundef %26) #7
  %32 = load ptr, ptr %27, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void @mutex_unlock(ptr noundef %34) #7
  br label %120

35:                                               ; preds = %1
  %36 = getelementptr i8, ptr %3, i32 17297
  %37 = load i8, ptr %36, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %120, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %3, i32 4368
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 25
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.v4l2_ctrl, ptr %41, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void @mutex_lock(ptr noundef %47) #7
  %48 = tail call i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef %41, ptr noundef %43) #7
  %49 = load ptr, ptr %44, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  tail call void @mutex_unlock(ptr noundef %51) #7
  br label %120

52:                                               ; preds = %1
  %53 = getelementptr i8, ptr %3, i32 17297
  %54 = load i8, ptr %53, align 1, !range !8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %120, label %56

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %3, i32 4372
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 25
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.v4l2_ctrl, ptr %58, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void @mutex_lock(ptr noundef %64) #7
  %65 = tail call i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef %58, ptr noundef %60) #7
  %66 = load ptr, ptr %61, align 8
  %67 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  tail call void @mutex_unlock(ptr noundef %68) #7
  br label %120

69:                                               ; preds = %1
  %70 = getelementptr i8, ptr %3, i32 17297
  %71 = load i8, ptr %70, align 1, !range !8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %120, label %73

73:                                               ; preds = %69
  %74 = getelementptr i8, ptr %3, i32 4356
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.v4l2_ctrl, ptr %75, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  tail call void @mutex_lock(ptr noundef %81) #7
  %82 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %75, i32 noundef %77) #7
  %83 = load ptr, ptr %78, align 8
  %84 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  tail call void @mutex_unlock(ptr noundef %85) #7
  br label %120

86:                                               ; preds = %1
  %87 = getelementptr i8, ptr %3, i32 17297
  %88 = load i8, ptr %87, align 1, !range !8
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %120, label %90

90:                                               ; preds = %86
  %91 = getelementptr i8, ptr %3, i32 4360
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.v4l2_ctrl, ptr %92, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  tail call void @mutex_lock(ptr noundef %98) #7
  %99 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %92, i32 noundef %94) #7
  %100 = load ptr, ptr %95, align 8
  %101 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  tail call void @mutex_unlock(ptr noundef %102) #7
  br label %120

103:                                              ; preds = %1
  %104 = getelementptr i8, ptr %3, i32 17297
  %105 = load i8, ptr %104, align 1, !range !8
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %120, label %107

107:                                              ; preds = %103
  %108 = getelementptr i8, ptr %3, i32 4364
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.v4l2_ctrl, ptr %109, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  tail call void @mutex_lock(ptr noundef %115) #7
  %116 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %109, i32 noundef %111) #7
  %117 = load ptr, ptr %112, align 8
  %118 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %117, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  tail call void @mutex_unlock(ptr noundef %119) #7
  br label %120

120:                                              ; preds = %107, %103, %90, %86, %73, %69, %56, %52, %39, %35, %22, %18, %6, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @vivid_sdr_cap_s_ctrl(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 15790190
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 15504
  store i32 %9, ptr %10, align 8
  br label %11

11:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @vivid_meta_cap_s_ctrl(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %18 [
    i32 15790191, label %6
    i32 15790192, label %12
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = getelementptr i8, ptr %3, i32 15984
  %11 = zext i1 %9 to i8
  store i8 %11, ptr %10, align 8
  br label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = getelementptr i8, ptr %3, i32 15985
  %17 = zext i1 %15 to i8
  store i8 %17, ptr %16, align 1
  br label %18

18:                                               ; preds = %12, %6, %1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
