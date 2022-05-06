; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-core.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-core.c"
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
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_fract = type { i32, i32 }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.vivid_fmt = type { i32, i32, i8, [3 x i8], i32, i8, i8, [3 x i32], [3 x i32] }
%struct.lock_class_key = type {}
%struct.v4l2_dv_timings = type { i32, %union.anon.71 }
%union.anon.71 = type { [32 x i32] }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.font_desc = type { i32, ptr, i32, i32, i32, ptr, i32 }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.106, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.107, %struct.anon.108, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.72], %struct.media_entity_enum, i32 }
%struct.anon.72 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.106 = type { ptr, ptr }
%struct.anon.107 = type { ptr, ptr }
%struct.anon.108 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.109, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.109 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.89 }
%struct.anon.89 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.84, i32, i32 }
%union.anon.84 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.v4l2_create_buffers = type { i32, i32, i32, %struct.v4l2_format, i32, i32, [6 x i32] }
%struct.v4l2_format = type { i32, %union.anon.83 }
%union.anon.83 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.85, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.85 = type { i8 }

@__UNIQUE_ID_description273 = internal constant [38 x i8] c"description=Virtual Video Test Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author274 = internal constant [20 x i8] c"author=Hans Verkuil\00", section ".modinfo", align 1
@__UNIQUE_ID_license275 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__param_str_n_devs = internal constant [7 x i8] c"n_devs\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@n_devs = internal global i32 1, align 4
@__param_n_devs = internal constant %struct.kernel_param { ptr @__param_str_n_devs, ptr @__this_module, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @n_devs } }, section "__param", align 4
@__UNIQUE_ID_n_devstype276 = internal constant [21 x i8] c"parmtype=n_devs:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_n_devs277 = internal constant [50 x i8] c"parm=n_devs: number of driver instances to create\00", section ".modinfo", align 1
@__param_str_vid_cap_nr = internal constant [11 x i8] c"vid_cap_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_vid_cap_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @vid_cap_nr }, align 4
@__param_vid_cap_nr = internal constant %struct.kernel_param { ptr @__param_str_vid_cap_nr, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_vid_cap_nr } }, section "__param", align 4
@__UNIQUE_ID_vid_cap_nrtype278 = internal constant [33 x i8] c"parmtype=vid_cap_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_vid_cap_nr279 = internal constant [55 x i8] c"parm=vid_cap_nr: videoX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_vid_out_nr = internal constant [11 x i8] c"vid_out_nr\00", align 1
@__param_arr_vid_out_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @vid_out_nr }, align 4
@__param_vid_out_nr = internal constant %struct.kernel_param { ptr @__param_str_vid_out_nr, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_vid_out_nr } }, section "__param", align 4
@__UNIQUE_ID_vid_out_nrtype280 = internal constant [33 x i8] c"parmtype=vid_out_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_vid_out_nr281 = internal constant [55 x i8] c"parm=vid_out_nr: videoX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_vbi_cap_nr = internal constant [11 x i8] c"vbi_cap_nr\00", align 1
@__param_arr_vbi_cap_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @vbi_cap_nr }, align 4
@__param_vbi_cap_nr = internal constant %struct.kernel_param { ptr @__param_str_vbi_cap_nr, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_vbi_cap_nr } }, section "__param", align 4
@__UNIQUE_ID_vbi_cap_nrtype282 = internal constant [33 x i8] c"parmtype=vbi_cap_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_vbi_cap_nr283 = internal constant [53 x i8] c"parm=vbi_cap_nr: vbiX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_vbi_out_nr = internal constant [11 x i8] c"vbi_out_nr\00", align 1
@__param_arr_vbi_out_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @vbi_out_nr }, align 4
@__param_vbi_out_nr = internal constant %struct.kernel_param { ptr @__param_str_vbi_out_nr, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_vbi_out_nr } }, section "__param", align 4
@__UNIQUE_ID_vbi_out_nrtype284 = internal constant [33 x i8] c"parmtype=vbi_out_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_vbi_out_nr285 = internal constant [53 x i8] c"parm=vbi_out_nr: vbiX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_sdr_cap_nr = internal constant [11 x i8] c"sdr_cap_nr\00", align 1
@__param_arr_sdr_cap_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @sdr_cap_nr }, align 4
@__param_sdr_cap_nr = internal constant %struct.kernel_param { ptr @__param_str_sdr_cap_nr, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_sdr_cap_nr } }, section "__param", align 4
@__UNIQUE_ID_sdr_cap_nrtype286 = internal constant [33 x i8] c"parmtype=sdr_cap_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_sdr_cap_nr287 = internal constant [57 x i8] c"parm=sdr_cap_nr: swradioX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_radio_rx_nr = internal constant [12 x i8] c"radio_rx_nr\00", align 1
@__param_arr_radio_rx_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @radio_rx_nr }, align 4
@__param_radio_rx_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_rx_nr, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_radio_rx_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_rx_nrtype288 = internal constant [34 x i8] c"parmtype=radio_rx_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_rx_nr289 = internal constant [56 x i8] c"parm=radio_rx_nr: radioX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_radio_tx_nr = internal constant [12 x i8] c"radio_tx_nr\00", align 1
@__param_arr_radio_tx_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @radio_tx_nr }, align 4
@__param_radio_tx_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_tx_nr, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_radio_tx_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_tx_nrtype290 = internal constant [34 x i8] c"parmtype=radio_tx_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_tx_nr291 = internal constant [56 x i8] c"parm=radio_tx_nr: radioX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_meta_cap_nr = internal constant [12 x i8] c"meta_cap_nr\00", align 1
@__param_arr_meta_cap_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @meta_cap_nr }, align 4
@__param_meta_cap_nr = internal constant %struct.kernel_param { ptr @__param_str_meta_cap_nr, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_meta_cap_nr } }, section "__param", align 4
@__UNIQUE_ID_meta_cap_nrtype292 = internal constant [34 x i8] c"parmtype=meta_cap_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_meta_cap_nr293 = internal constant [56 x i8] c"parm=meta_cap_nr: videoX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_meta_out_nr = internal constant [12 x i8] c"meta_out_nr\00", align 1
@__param_arr_meta_out_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @meta_out_nr }, align 4
@__param_meta_out_nr = internal constant %struct.kernel_param { ptr @__param_str_meta_out_nr, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_meta_out_nr } }, section "__param", align 4
@__UNIQUE_ID_meta_out_nrtype294 = internal constant [34 x i8] c"parmtype=meta_out_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_meta_out_nr295 = internal constant [56 x i8] c"parm=meta_out_nr: videoX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_touch_cap_nr = internal constant [13 x i8] c"touch_cap_nr\00", align 1
@__param_arr_touch_cap_nr = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @touch_cap_nr }, align 4
@__param_touch_cap_nr = internal constant %struct.kernel_param { ptr @__param_str_touch_cap_nr, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_touch_cap_nr } }, section "__param", align 4
@__UNIQUE_ID_touch_cap_nrtype296 = internal constant [35 x i8] c"parmtype=touch_cap_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_touch_cap_nr297 = internal constant [61 x i8] c"parm=touch_cap_nr: v4l-touchX start number, -1 is autodetect\00", section ".modinfo", align 1
@__param_str_ccs_cap_mode = internal constant [13 x i8] c"ccs_cap_mode\00", align 1
@__param_arr_ccs_cap_mode = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @ccs_cap_mode }, align 4
@__param_ccs_cap_mode = internal constant %struct.kernel_param { ptr @__param_str_ccs_cap_mode, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_ccs_cap_mode } }, section "__param", align 4
@__UNIQUE_ID_ccs_cap_modetype298 = internal constant [35 x i8] c"parmtype=ccs_cap_mode:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_ccs_cap_mode299 = internal constant [125 x i8] c"parm=ccs_cap_mode: capture crop/compose/scale mode:\0A\09\09    bit 0=crop, 1=compose, 2=scale,\0A\09\09    -1=user-controlled (default)\00", section ".modinfo", align 1
@__param_str_ccs_out_mode = internal constant [13 x i8] c"ccs_out_mode\00", align 1
@__param_arr_ccs_out_mode = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @ccs_out_mode }, align 4
@__param_ccs_out_mode = internal constant %struct.kernel_param { ptr @__param_str_ccs_out_mode, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_ccs_out_mode } }, section "__param", align 4
@__UNIQUE_ID_ccs_out_modetype300 = internal constant [35 x i8] c"parmtype=ccs_out_mode:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_ccs_out_mode301 = internal constant [124 x i8] c"parm=ccs_out_mode: output crop/compose/scale mode:\0A\09\09    bit 0=crop, 1=compose, 2=scale,\0A\09\09    -1=user-controlled (default)\00", section ".modinfo", align 1
@__param_str_multiplanar = internal constant [12 x i8] c"multiplanar\00", align 1
@__param_arr_multiplanar = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @multiplanar }, align 4
@__param_multiplanar = internal constant %struct.kernel_param { ptr @__param_str_multiplanar, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_multiplanar } }, section "__param", align 4
@__UNIQUE_ID_multiplanartype302 = internal constant [35 x i8] c"parmtype=multiplanar:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_multiplanar303 = internal constant [94 x i8] c"parm=multiplanar: 1 (default) creates a single planar device, 2 creates a multiplanar device.\00", section ".modinfo", align 1
@__param_str_node_types = internal constant [11 x i8] c"node_types\00", align 1
@__param_arr_node_types = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @node_types }, align 4
@__param_node_types = internal constant %struct.kernel_param { ptr @__param_str_node_types, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_node_types } }, section "__param", align 4
@__UNIQUE_ID_node_typestype304 = internal constant [34 x i8] c"parmtype=node_types:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_node_types305 = internal constant [583 x i8] c"parm=node_types: node types, default is 0xe1d3d. Bitmask with the following meaning:\0A\09\09    bit 0: Video Capture node\0A\09\09    bit 2-3: VBI Capture node: 0 = none, 1 = raw vbi, 2 = sliced vbi, 3 = both\0A\09\09    bit 4: Radio Receiver node\0A\09\09    bit 5: Software Defined Radio Receiver node\0A\09\09    bit 8: Video Output node\0A\09\09    bit 10-11: VBI Output node: 0 = none, 1 = raw vbi, 2 = sliced vbi, 3 = both\0A\09\09    bit 12: Radio Transmitter node\0A\09\09    bit 16: Framebuffer for testing overlays\0A\09\09    bit 17: Metadata Capture node\0A\09\09    bit 18: Metadata Output node\0A\09\09    bit 19: Touch Capture node\0A\00", section ".modinfo", align 1
@__param_str_num_inputs = internal constant [11 x i8] c"num_inputs\00", align 1
@__param_arr_num_inputs = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @num_inputs }, align 4
@__param_num_inputs = internal constant %struct.kernel_param { ptr @__param_str_num_inputs, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_num_inputs } }, section "__param", align 4
@__UNIQUE_ID_num_inputstype306 = internal constant [34 x i8] c"parmtype=num_inputs:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_inputs307 = internal constant [48 x i8] c"parm=num_inputs: number of inputs, default is 4\00", section ".modinfo", align 1
@__param_str_input_types = internal constant [12 x i8] c"input_types\00", align 1
@__param_arr_input_types = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @input_types }, align 4
@__param_input_types = internal constant %struct.kernel_param { ptr @__param_str_input_types, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_input_types } }, section "__param", align 4
@__UNIQUE_ID_input_typestype308 = internal constant [35 x i8] c"parmtype=input_types:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_input_types309 = internal constant [176 x i8] c"parm=input_types: input types, default is 0xe4. Two bits per input,\0A\09\09    bits 0-1 == input 0, bits 31-30 == input 15.\0A\09\09    Type 0 == webcam, 1 == TV, 2 == S-Video, 3 == HDMI\00", section ".modinfo", align 1
@__param_str_num_outputs = internal constant [12 x i8] c"num_outputs\00", align 1
@__param_arr_num_outputs = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @num_outputs }, align 4
@__param_num_outputs = internal constant %struct.kernel_param { ptr @__param_str_num_outputs, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_num_outputs } }, section "__param", align 4
@__UNIQUE_ID_num_outputstype310 = internal constant [35 x i8] c"parmtype=num_outputs:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_outputs311 = internal constant [50 x i8] c"parm=num_outputs: number of outputs, default is 2\00", section ".modinfo", align 1
@__param_str_output_types = internal constant [13 x i8] c"output_types\00", align 1
@__param_arr_output_types = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @output_types }, align 4
@__param_output_types = internal constant %struct.kernel_param { ptr @__param_str_output_types, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_output_types } }, section "__param", align 4
@__UNIQUE_ID_output_typestype312 = internal constant [36 x i8] c"parmtype=output_types:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_output_types313 = internal constant [151 x i8] c"parm=output_types: output types, default is 0x02. One bit per output,\0A\09\09    bit 0 == output 0, bit 15 == output 15.\0A\09\09    Type 0 == S-Video, 1 == HDMI\00", section ".modinfo", align 1
@__param_str_vivid_debug = internal constant [12 x i8] c"vivid_debug\00", align 1
@vivid_debug = dso_local global i32 0, align 4
@__param_vivid_debug = internal constant %struct.kernel_param { ptr @__param_str_vivid_debug, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @vivid_debug } }, section "__param", align 4
@__UNIQUE_ID_vivid_debugtype314 = internal constant [26 x i8] c"parmtype=vivid_debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_vivid_debug315 = internal constant [39 x i8] c"parm=vivid_debug: activates debug info\00", section ".modinfo", align 1
@__param_str_no_error_inj = internal constant [13 x i8] c"no_error_inj\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@no_error_inj = internal global i8 0, align 1
@__param_no_error_inj = internal constant %struct.kernel_param { ptr @__param_str_no_error_inj, ptr @__this_module, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @no_error_inj } }, section "__param", align 4
@__UNIQUE_ID_no_error_injtype316 = internal constant [27 x i8] c"parmtype=no_error_inj:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_no_error_inj317 = internal constant [63 x i8] c"parm=no_error_inj: if set disable the error injecting controls\00", section ".modinfo", align 1
@__param_str_allocators = internal constant [11 x i8] c"allocators\00", align 1
@__param_arr_allocators = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @allocators }, align 4
@__param_allocators = internal constant %struct.kernel_param { ptr @__param_str_allocators, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_allocators } }, section "__param", align 4
@__UNIQUE_ID_allocatorstype318 = internal constant [34 x i8] c"parmtype=allocators:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_allocators319 = internal constant [100 x i8] c"parm=allocators: memory allocator selection, default is 0.\0A\09\09    0 == vmalloc\0A\09\09    1 == dma-contig\00", section ".modinfo", align 1
@__param_str_cache_hints = internal constant [12 x i8] c"cache_hints\00", align 1
@__param_arr_cache_hints = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @cache_hints }, align 4
@__param_cache_hints = internal constant %struct.kernel_param { ptr @__param_str_cache_hints, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_cache_hints } }, section "__param", align 4
@__UNIQUE_ID_cache_hintstype320 = internal constant [35 x i8] c"parmtype=cache_hints:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_cache_hints321 = internal constant [91 x i8] c"parm=cache_hints: user-space cache hints, default is 0.\0A\09\09    0 == forbid\0A\09\09    1 == allow\00", section ".modinfo", align 1
@__param_str_supports_requests = internal constant [18 x i8] c"supports_requests\00", align 1
@__param_arr_supports_requests = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @supports_requests }, align 4
@__param_supports_requests = internal constant %struct.kernel_param { ptr @__param_str_supports_requests, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_supports_requests } }, section "__param", align 4
@__UNIQUE_ID_supports_requeststype322 = internal constant [41 x i8] c"parmtype=supports_requests:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_supports_requests323 = internal constant [140 x i8] c"parm=supports_requests: support for requests, default is 1.\0A\09\09    0 == no support\0A\09\09    1 == supports requests\0A\09\09    2 == requires requests\00", section ".modinfo", align 1
@vivid_min_rect = dso_local local_unnamed_addr constant %struct.v4l2_rect { i32 0, i32 0, i32 16, i32 16 }, align 4
@vivid_max_rect = dso_local local_unnamed_addr constant %struct.v4l2_rect { i32 0, i32 0, i32 16384, i32 8640 }, align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@vid_cap_nr = internal global [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@vid_out_nr = internal global [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@vbi_cap_nr = internal global [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@vbi_out_nr = internal global [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@sdr_cap_nr = internal global [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@radio_rx_nr = internal global [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@radio_tx_nr = internal global [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@meta_cap_nr = internal global [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@meta_out_nr = internal global [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@touch_cap_nr = internal global [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@ccs_cap_mode = internal global [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@ccs_out_mode = internal global [64 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@multiplanar = internal global [64 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 4
@node_types = internal global [64 x i32] [i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989, i32 924989], align 4
@num_inputs = internal global [64 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 4
@input_types = internal global [64 x i32] [i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228, i32 228], align 4
@num_outputs = internal global [64 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 4
@output_types = internal global [64 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 4
@allocators = internal global [64 x i32] zeroinitializer, align 4
@cache_hints = internal global [64 x i32] zeroinitializer, align 4
@supports_requests = internal global [64 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 4
@vivid_pdev = internal global %struct.platform_device { ptr @.str, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @vivid_pdev_release, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, align 8
@vivid_pdrv = internal global %struct.platform_driver { ptr @vivid_probe, ptr @vivid_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [6 x i8] c"vivid\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"VGA8x16\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\013vivid: could not find font\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\013vivid: error %d while loading driver\0A\00", align 1
@vivid_create_instance.def_dv_timings = internal unnamed_addr constant { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 110, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 4, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"platform:%s-%03d\00", align 1
@vivid_media_ops = internal constant %struct.media_device_ops { ptr null, ptr null, ptr null, ptr @vivid_req_validate, ptr @vb2_request_queue }, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"%s-%03d\00", align 1
@vivid_formats = external dso_local global [0 x %struct.vivid_fmt], align 4
@vivid_hdmi_edid = internal unnamed_addr constant [256 x i8] c"\00\FF\FF\FF\FF\FF\FF\001\D84\12\00\00\00\00\22\1A\01\03\80`6x\0F\EE\91\A3TL\99&\0FPT/\CF\001YEY\81\80\81@\90@\95\00\A9@\B3\00\08\E8\000\F2pZ\80\B0X\8A\00\C0\1C2\00\00\1E\00\00\00\FD\00\18U\18\87<\00\0A      \00\00\00\FC\00vivid\0A       \00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01{\02\03?\F1Qa`_^]\10\1F\04\13\22! \05\14\02\11\01#\09\07\07\83\01\00\00m\03\0C\00\10\00\00<!\00`\01\02\03g\D8]\C4\01x\00\00\E2\00\CA\E3\05\00\00\E3\06\01\00M\D0\00\A0\F0p>\800 5\00\C0\1C2\00\00\1E\1A6\80\A0p8\1F@0 5\00\C0\1C2\00\00\1A\1A\1D\00\80Q\D0\1C @\805\00\C0\1C2\00\00\1C\00\00\00\00\00\00\00\00\00\00\82", align 1
@vivid_create_instance.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"&dev->mutex\00", align 1
@vivid_devs = internal unnamed_addr global [64 x ptr] zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"\016%s: using %splanar format API\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"single \00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"\014%s: Webcam or HDMI input without video or metadata nodes\0A\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"\014%s: TV or S-Video input without video, VBI or metadata nodes\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"\014%s: S-Video output without video, VBI or metadata nodes\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"\014%s: HDMI output without video or metadata nodes\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"\016%s: Capture Crop: %c Compose: %c Scaler: %c\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"\016%s: Output Crop: %c Compose: %c Scaler: %c\0A\00", align 1
@v4l2_dv_timings_presets = external dso_local local_unnamed_addr constant [0 x %struct.v4l2_dv_timings], align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"%ux%u%s%u\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@vivid_vid_cap_qops = external dso_local constant %struct.vb2_ops, align 4
@vivid_vid_out_qops = external dso_local constant %struct.vb2_ops, align 4
@vivid_vbi_cap_qops = external dso_local constant %struct.vb2_ops, align 4
@vivid_vbi_out_qops = external dso_local constant %struct.vb2_ops, align 4
@vivid_sdr_cap_qops = external dso_local constant %struct.vb2_ops, align 4
@vivid_meta_cap_qops = external dso_local constant %struct.vb2_ops, align 4
@vivid_meta_out_qops = external dso_local constant %struct.vb2_ops, align 4
@vivid_touch_cap_qops = external dso_local constant %struct.vb2_ops, align 4
@.str.19 = private unnamed_addr constant [45 x i8] c"\016%s: Framebuffer device registered as fb%d\0A\00", align 1
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.20 = private unnamed_addr constant [19 x i8] c"vivid-%03d-vid-cap\00", align 1
@vivid_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr @vb2_fop_read, ptr @vb2_fop_write, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vivid_fop_release }, align 4
@vivid_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vivid_enum_fmt_cap, ptr @vidioc_enum_fmt_vid_overlay, ptr @vivid_enum_fmt_vid, ptr @vidioc_enum_fmt_sdr_cap, ptr null, ptr @vidioc_enum_fmt_meta_cap, ptr @vidioc_enum_fmt_meta_out, ptr @vivid_g_fmt_cap, ptr @vidioc_g_fmt_vid_overlay, ptr @vidioc_g_fmt_vid_out, ptr @vidioc_g_fmt_vid_out_overlay, ptr @vidioc_g_fmt_vbi_cap, ptr @vidioc_g_fmt_vbi_out, ptr @vidioc_g_fmt_sliced_vbi_cap, ptr @vidioc_g_fmt_sliced_vbi_out, ptr @vivid_g_fmt_cap_mplane, ptr @vidioc_g_fmt_vid_out_mplane, ptr @vidioc_g_fmt_sdr_cap, ptr null, ptr @vidioc_g_fmt_meta_cap, ptr @vidioc_g_fmt_meta_out, ptr @vivid_s_fmt_cap, ptr @vidioc_s_fmt_vid_overlay, ptr @vidioc_s_fmt_vid_out, ptr @vidioc_s_fmt_vid_out_overlay, ptr @vidioc_s_fmt_vbi_cap, ptr @vidioc_s_fmt_vbi_out, ptr @vidioc_s_fmt_sliced_vbi_cap, ptr @vidioc_s_fmt_sliced_vbi_out, ptr @vivid_s_fmt_cap_mplane, ptr @vidioc_s_fmt_vid_out_mplane, ptr @vidioc_s_fmt_sdr_cap, ptr null, ptr @vidioc_g_fmt_meta_cap, ptr @vidioc_g_fmt_meta_out, ptr @vivid_try_fmt_cap, ptr @vidioc_try_fmt_vid_overlay, ptr @vidioc_try_fmt_vid_out, ptr @vidioc_try_fmt_vid_out_overlay, ptr @vidioc_g_fmt_vbi_cap, ptr @vidioc_g_fmt_vbi_out, ptr @vidioc_try_fmt_sliced_vbi_cap, ptr @vidioc_try_fmt_sliced_vbi_out, ptr @vivid_try_fmt_cap_mplane, ptr @vidioc_try_fmt_vid_out_mplane, ptr @vidioc_try_fmt_sdr_cap, ptr null, ptr @vidioc_g_fmt_meta_cap, ptr @vidioc_g_fmt_meta_out, ptr @vidioc_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vidioc_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr @vidioc_overlay, ptr @vidioc_g_fbuf, ptr @vidioc_s_fbuf, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr @vidioc_querystd, ptr @vivid_enum_input, ptr @vivid_g_input, ptr @vivid_s_input, ptr @vidioc_enum_output, ptr @vidioc_g_output, ptr @vidioc_s_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_enumaudio, ptr @vidioc_g_audio, ptr @vidioc_s_audio, ptr @vidioc_enumaudout, ptr @vidioc_g_audout, ptr @vidioc_s_audout, ptr @vidioc_g_modulator, ptr @vidioc_s_modulator, ptr @vidioc_g_pixelaspect, ptr @vidioc_g_selection, ptr @vidioc_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_parm, ptr @vidioc_s_parm, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr @vidioc_enum_freq_bands, ptr @vidioc_g_sliced_vbi_cap, ptr @vidioc_log_status, ptr @vidioc_s_hw_freq_seek, ptr @vidioc_enum_framesizes, ptr @vidioc_enum_frameintervals, ptr @vidioc_s_dv_timings, ptr @vidioc_g_dv_timings, ptr @vidioc_query_dv_timings, ptr @vidioc_enum_dv_timings, ptr @vidioc_dv_timings_cap, ptr @vidioc_g_edid, ptr @vidioc_s_edid, ptr @vidioc_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@.str.21 = private unnamed_addr constant [44 x i8] c"\016%s: V4L2 capture device registered as %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"vivid-%03d-vid-out\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"\016%s: V4L2 output device registered as %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"vivid-%03d-vbi-cap\00", align 1
@.str.25 = private unnamed_addr constant [61 x i8] c"\016%s: V4L2 capture device registered as %s, supports %s VBI\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"raw and sliced\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"sliced\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"vivid-%03d-vbi-out\00", align 1
@.str.30 = private unnamed_addr constant [60 x i8] c"\016%s: V4L2 output device registered as %s, supports %s VBI\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"vivid-%03d-sdr-cap\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"vivid-%03d-rad-rx\00", align 1
@vivid_radio_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr @vivid_radio_read, ptr @vivid_radio_write, ptr @vivid_radio_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @v4l2_fh_open, ptr @vivid_fop_release }, align 4
@.str.33 = private unnamed_addr constant [45 x i8] c"\016%s: V4L2 receiver device registered as %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"vivid-%03d-rad-tx\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"\016%s: V4L2 transmitter device registered as %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"vivid-%03d-meta-cap\00", align 1
@.str.37 = private unnamed_addr constant [53 x i8] c"\016%s: V4L2 metadata capture device registered as %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"vivid-%03d-meta-out\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"\016%s: V4L2 metadata output device registered as %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"vivid-%03d-touch-cap\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"\016%s: V4L2 touch capture device registered as %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"media device register failed (err=%d)\0A\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"\016%s: reconnect\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"\016%s: unregistering %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"\016%s: unregistering fb%d\0A\00", align 1
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_allocators319, ptr @__UNIQUE_ID_allocatorstype318, ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_cache_hints321, ptr @__UNIQUE_ID_cache_hintstype320, ptr @__UNIQUE_ID_ccs_cap_mode299, ptr @__UNIQUE_ID_ccs_cap_modetype298, ptr @__UNIQUE_ID_ccs_out_mode301, ptr @__UNIQUE_ID_ccs_out_modetype300, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_input_types309, ptr @__UNIQUE_ID_input_typestype308, ptr @__UNIQUE_ID_license275, ptr @__UNIQUE_ID_meta_cap_nr293, ptr @__UNIQUE_ID_meta_cap_nrtype292, ptr @__UNIQUE_ID_meta_out_nr295, ptr @__UNIQUE_ID_meta_out_nrtype294, ptr @__UNIQUE_ID_multiplanar303, ptr @__UNIQUE_ID_multiplanartype302, ptr @__UNIQUE_ID_n_devs277, ptr @__UNIQUE_ID_n_devstype276, ptr @__UNIQUE_ID_no_error_inj317, ptr @__UNIQUE_ID_no_error_injtype316, ptr @__UNIQUE_ID_node_types305, ptr @__UNIQUE_ID_node_typestype304, ptr @__UNIQUE_ID_num_inputs307, ptr @__UNIQUE_ID_num_inputstype306, ptr @__UNIQUE_ID_num_outputs311, ptr @__UNIQUE_ID_num_outputstype310, ptr @__UNIQUE_ID_output_types313, ptr @__UNIQUE_ID_output_typestype312, ptr @__UNIQUE_ID_radio_rx_nr289, ptr @__UNIQUE_ID_radio_rx_nrtype288, ptr @__UNIQUE_ID_radio_tx_nr291, ptr @__UNIQUE_ID_radio_tx_nrtype290, ptr @__UNIQUE_ID_sdr_cap_nr287, ptr @__UNIQUE_ID_sdr_cap_nrtype286, ptr @__UNIQUE_ID_supports_requests323, ptr @__UNIQUE_ID_supports_requeststype322, ptr @__UNIQUE_ID_touch_cap_nr297, ptr @__UNIQUE_ID_touch_cap_nrtype296, ptr @__UNIQUE_ID_vbi_cap_nr283, ptr @__UNIQUE_ID_vbi_cap_nrtype282, ptr @__UNIQUE_ID_vbi_out_nr285, ptr @__UNIQUE_ID_vbi_out_nrtype284, ptr @__UNIQUE_ID_vid_cap_nr279, ptr @__UNIQUE_ID_vid_cap_nrtype278, ptr @__UNIQUE_ID_vid_out_nr281, ptr @__UNIQUE_ID_vid_out_nrtype280, ptr @__UNIQUE_ID_vivid_debug315, ptr @__UNIQUE_ID_vivid_debugtype314, ptr @__param_allocators, ptr @__param_cache_hints, ptr @__param_ccs_cap_mode, ptr @__param_ccs_out_mode, ptr @__param_input_types, ptr @__param_meta_cap_nr, ptr @__param_meta_out_nr, ptr @__param_multiplanar, ptr @__param_n_devs, ptr @__param_no_error_inj, ptr @__param_node_types, ptr @__param_num_inputs, ptr @__param_num_outputs, ptr @__param_output_types, ptr @__param_radio_rx_nr, ptr @__param_radio_tx_nr, ptr @__param_sdr_cap_nr, ptr @__param_supports_requests, ptr @__param_touch_cap_nr, ptr @__param_vbi_cap_nr, ptr @__param_vbi_out_nr, ptr @__param_vid_cap_nr, ptr @__param_vid_out_nr, ptr @__param_vivid_debug], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @platform_device_register(ptr noundef nonnull @vivid_pdev) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vivid_pdrv, ptr noundef nonnull @__this_module) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @platform_device_unregister(ptr noundef nonnull @vivid_pdev) #12
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @vivid_pdrv) #12
  tail call void @platform_device_unregister(ptr noundef nonnull @vivid_pdev) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @vivid_pdev_release(ptr nocapture noundef %0) #3 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_probe(ptr noundef %0) #4 {
  %2 = alloca [4 x i32], align 4
  %3 = alloca [4 x i32], align 4
  %4 = tail call ptr @find_font(ptr noundef nonnull @.str.1) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %867

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.font_desc, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void @tpg_set_font(ptr noundef %10) #12
  %11 = load i32, ptr @n_devs, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 1)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 64)
  store i32 %13, ptr @n_devs, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %15 = getelementptr inbounds i32, ptr %2, i32 1
  %16 = getelementptr inbounds i32, ptr %2, i32 2
  %17 = getelementptr inbounds i32, ptr %2, i32 3
  %18 = getelementptr inbounds i32, ptr %3, i32 2
  %19 = getelementptr inbounds i32, ptr %3, i32 3
  br label %20

20:                                               ; preds = %854, %8
  %21 = phi i32 [ 0, %8 ], [ %856, %854 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #12
  %22 = getelementptr [64 x i32], ptr @ccs_cap_mode, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr [64 x i32], ptr @ccs_out_mode, i32 0, i32 %21
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr [64 x i32], ptr @node_types, i32 0, i32 %21
  %27 = load i32, ptr %26, align 4
  %28 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 25184, i32 noundef 3520, i32 noundef 3) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %852, label %30

30:                                               ; preds = %20
  store i32 %21, ptr %28, align 4096
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 2
  %32 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 1
  %33 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 1, i32 1
  store ptr %31, ptr %33, align 8
  %34 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 2, i32 2
  %35 = tail call i32 @strscpy(ptr noundef %34, ptr noundef nonnull @.str, i32 noundef 32) #12
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 2, i32 5
  %37 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %36, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef %21) #12
  store ptr %14, ptr %31, align 32
  tail call void @media_device_init(ptr noundef %31) #12
  %38 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 2, i32 21
  store ptr @vivid_media_ops, ptr %38, align 8
  %39 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 1, i32 4
  %40 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %39, i32 noundef 36, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef %21) #12
  %41 = tail call i32 @v4l2_device_register(ptr noundef %14, ptr noundef %32) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %30
  tail call void @kfree(ptr noundef nonnull %28) #12
  br label %849

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 1, i32 9
  store ptr @vivid_dev_release, ptr %45, align 8
  %46 = getelementptr [64 x i32], ptr @multiplanar, i32 0, i32 %21
  %47 = load i32, ptr %46, align 4
  %48 = icmp ugt i32 %47, 1
  %49 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 50
  %50 = zext i1 %48 to i8
  store i8 %50, ptr %49, align 8
  %51 = select i1 %48, ptr @.str.8, ptr @.str.9
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %39, ptr noundef nonnull %51) #13
  %53 = getelementptr [64 x i32], ptr @num_inputs, i32 0, i32 %21
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 51
  %56 = icmp eq i32 %54, 0
  %57 = tail call i32 @llvm.umin.i32(i32 %54, i32 16) #12
  %58 = select i1 %56, i32 1, i32 %57
  store i32 %58, ptr %55, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %83, label %60

60:                                               ; preds = %44
  %61 = getelementptr [64 x i32], ptr @input_types, i32 0, i32 %21
  %62 = load i32, ptr %61, align 4
  br label %63

63:                                               ; preds = %63, %60
  %64 = phi i32 [ 0, %60 ], [ %76, %63 ]
  %65 = shl i32 %64, 1
  %66 = lshr i32 %62, %65
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 3
  %69 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 53, i32 %64
  store i8 %68, ptr %69, align 1
  %70 = zext i8 %68 to i32
  %71 = getelementptr i32, ptr %2, i32 %70
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %71, align 4
  %74 = trunc i32 %72 to i8
  %75 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 54, i32 %64
  store i8 %74, ptr %75, align 1
  %76 = add nuw i32 %64, 1
  %77 = load i32, ptr %55, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %63, label %79

79:                                               ; preds = %63
  %80 = load i32, ptr %15, align 4
  %81 = load i32, ptr %16, align 4
  %82 = load i32, ptr %17, align 4
  br label %83

83:                                               ; preds = %79, %44
  %84 = phi i32 [ %77, %79 ], [ 0, %44 ]
  %85 = phi i32 [ %82, %79 ], [ 0, %44 ]
  %86 = phi i32 [ %81, %79 ], [ 0, %44 ]
  %87 = phi i32 [ %80, %79 ], [ 0, %44 ]
  %88 = icmp eq i32 %87, 0
  %89 = icmp ne i32 %86, 0
  %90 = xor i1 %88, true
  %91 = select i1 %90, i1 %89, i1 false
  %92 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 59
  %93 = zext i1 %91 to i8
  store i8 %93, ptr %92, align 4
  %94 = icmp eq i32 %85, 16
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  store i32 15, ptr %17, align 4
  %96 = add i32 %84, -1
  store i32 %96, ptr %55, align 4
  br label %97

97:                                               ; preds = %95, %83
  %98 = phi i32 [ 15, %95 ], [ %85, %83 ]
  %99 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 52
  store i32 %98, ptr %99, align 16
  %100 = getelementptr [64 x i32], ptr @num_outputs, i32 0, i32 %21
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 55
  %103 = icmp eq i32 %101, 0
  %104 = tail call i32 @llvm.umin.i32(i32 %101, i32 16) #12
  %105 = select i1 %103, i32 1, i32 %104
  store i32 %105, ptr %102, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 60
  store i8 0, ptr %108, align 1
  br label %138

109:                                              ; preds = %97
  %110 = getelementptr [64 x i32], ptr @output_types, i32 0, i32 %21
  %111 = load i32, ptr %110, align 4
  br label %112

112:                                              ; preds = %112, %109
  %113 = phi i32 [ 0, %109 ], [ %126, %112 ]
  %114 = shl nuw i32 1, %113
  %115 = and i32 %114, %111
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i8 2, i8 3
  %118 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 57, i32 %113
  store i8 %117, ptr %118, align 1
  %119 = zext i8 %117 to i32
  %120 = getelementptr i32, ptr %3, i32 %119
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, 1
  store i32 %122, ptr %120, align 4
  %123 = trunc i32 %121 to i8
  %124 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 58, i32 %113
  store i8 %123, ptr %124, align 1
  %125 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 219, i32 %113
  store i8 1, ptr %125, align 1
  %126 = add nuw i32 %113, 1
  %127 = load i32, ptr %102, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %112, label %129

129:                                              ; preds = %112
  %130 = load i32, ptr %18, align 4
  %131 = load i32, ptr %19, align 4
  %132 = icmp ne i32 %130, 0
  %133 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 60
  %134 = zext i1 %132 to i8
  store i8 %134, ptr %133, align 1
  %135 = icmp eq i32 %131, 16
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  store i32 15, ptr %19, align 4
  %137 = add i32 %127, -1
  store i32 %137, ptr %102, align 4
  br label %138

138:                                              ; preds = %136, %129, %107
  %139 = phi ptr [ %133, %136 ], [ %133, %129 ], [ %108, %107 ]
  %140 = phi i1 [ %132, %136 ], [ %132, %129 ], [ false, %107 ]
  %141 = phi i32 [ %130, %136 ], [ %130, %129 ], [ 0, %107 ]
  %142 = phi i32 [ 15, %136 ], [ %131, %129 ], [ 0, %107 ]
  %143 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 56
  store i32 %142, ptr %143, align 8
  %144 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 61
  %145 = trunc i32 %27 to i8
  %146 = and i8 %145, 1
  store i8 %146, ptr %144, align 2
  %147 = icmp eq i32 %86, 0
  %148 = select i1 %88, i1 %147, i1 false
  br i1 %148, label %158, label %149

149:                                              ; preds = %138
  %150 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 64
  %151 = lshr i8 %145, 2
  %152 = and i8 %151, 1
  store i8 %152, ptr %150, align 1
  %153 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 65
  %154 = lshr i8 %145, 3
  %155 = and i8 %154, 1
  store i8 %155, ptr %153, align 2
  %156 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 63
  %157 = or i8 %152, %155
  store i8 %157, ptr %156, align 128
  br label %158

158:                                              ; preds = %149, %138
  %159 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 73
  %160 = lshr i32 %27, 17
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  store i8 %162, ptr %159, align 2
  %163 = load i32, ptr %2, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %158
  %166 = icmp ne i32 %98, 0
  %167 = and i32 %27, 131073
  %168 = icmp eq i32 %167, 0
  %169 = and i1 %168, %166
  br i1 %169, label %173, label %175

170:                                              ; preds = %158
  %171 = and i32 %27, 131073
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170, %165
  %174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %39) #13
  br label %846

175:                                              ; preds = %170, %165
  %176 = icmp eq i8 %146, 0
  br i1 %88, label %177, label %179

177:                                              ; preds = %175
  %178 = and i1 %176, %89
  br i1 %178, label %180, label %187

179:                                              ; preds = %175
  br i1 %176, label %180, label %187

180:                                              ; preds = %179, %177
  %181 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 63
  %182 = load i8, ptr %181, align 128, !range !8
  %183 = or i8 %182, %162
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %39) #13
  br label %846

187:                                              ; preds = %180, %179, %177
  %188 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 62
  %189 = lshr i32 %27, 8
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  store i8 %191, ptr %188, align 1
  %192 = icmp eq i32 %141, 0
  br i1 %192, label %215, label %193

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 67
  %195 = lshr i32 %27, 10
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  store i8 %197, ptr %194, align 4
  %198 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 68
  %199 = lshr i32 %27, 11
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  store i8 %201, ptr %198, align 1
  %202 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 66
  %203 = or i8 %197, %201
  store i8 %203, ptr %202, align 1
  %204 = and i32 %27, 262144
  %205 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 74
  %206 = lshr exact i32 %204, 18
  %207 = trunc i32 %206 to i8
  store i8 %207, ptr %205, align 1
  %208 = icmp eq i8 %191, 0
  br i1 %208, label %209, label %231

209:                                              ; preds = %193
  %210 = icmp ne i32 %204, 0
  %211 = icmp ne i8 %203, 0
  %212 = or i1 %210, %211
  br i1 %212, label %225, label %213

213:                                              ; preds = %209
  %214 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %39) #13
  br label %846

215:                                              ; preds = %187
  %216 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 74
  %217 = lshr i32 %27, 18
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  store i8 %219, ptr %216, align 1
  %220 = icmp ne i32 %142, 0
  %221 = icmp eq i8 %191, 0
  %222 = and i1 %221, %220
  %223 = icmp eq i8 %219, 0
  %224 = select i1 %222, i1 %223, i1 false
  br i1 %224, label %229, label %231

225:                                              ; preds = %209
  %226 = icmp ne i32 %142, 0
  %227 = icmp eq i8 %207, 0
  %228 = select i1 %226, i1 %227, i1 false
  br i1 %228, label %229, label %231

229:                                              ; preds = %225, %215
  %230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %39) #13
  br label %846

231:                                              ; preds = %225, %215, %193
  %232 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 69
  %233 = lshr i8 %145, 4
  %234 = and i8 %233, 1
  store i8 %234, ptr %232, align 2
  %235 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 70
  %236 = lshr i32 %27, 12
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  store i8 %238, ptr %235, align 1
  %239 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 71
  %240 = lshr i8 %145, 5
  %241 = and i8 %240, 1
  store i8 %241, ptr %239, align 8
  %242 = icmp ne i32 %87, 0
  %243 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 75
  %244 = zext i1 %242 to i8
  store i8 %244, ptr %243, align 4
  br i1 %176, label %245, label %249

245:                                              ; preds = %231
  %246 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 63
  %247 = load i8, ptr %246, align 128, !range !8
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %245, %231
  %250 = icmp eq i8 %234, 0
  %251 = and i1 %250, %88
  br i1 %251, label %254, label %256

252:                                              ; preds = %245
  %253 = icmp eq i8 %234, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %252, %249
  %255 = icmp ne i8 %241, 0
  br label %256

256:                                              ; preds = %254, %249
  %257 = phi i1 [ true, %249 ], [ %255, %254 ]
  br i1 %176, label %263, label %258

258:                                              ; preds = %256
  %259 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 72
  %260 = lshr i32 %27, 16
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  store i8 %262, ptr %259, align 1
  br label %263

263:                                              ; preds = %258, %256, %252
  %264 = phi i1 [ %257, %258 ], [ %257, %256 ], [ true, %252 ]
  %265 = load i8, ptr @no_error_inj, align 1, !range !8
  %266 = icmp eq i8 %265, 0
  %267 = icmp eq i32 %23, -1
  br i1 %266, label %270, label %268

268:                                              ; preds = %263
  %269 = select i1 %267, i32 7, i32 %23
  br label %271

270:                                              ; preds = %263
  br i1 %267, label %295, label %271

271:                                              ; preds = %270, %268
  %272 = phi i32 [ %23, %270 ], [ %269, %268 ]
  %273 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 323
  %274 = trunc i32 %272 to i8
  %275 = and i8 %274, 1
  store i8 %275, ptr %273, align 1
  %276 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 324
  %277 = lshr i8 %274, 1
  %278 = and i8 %277, 1
  store i8 %278, ptr %276, align 2
  %279 = and i32 %272, 4
  %280 = icmp eq i32 %279, 0
  %281 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 325
  %282 = lshr exact i32 %279, 2
  %283 = trunc i32 %282 to i8
  store i8 %283, ptr %281, align 1
  %284 = icmp eq i8 %275, 0
  %285 = select i1 %284, i32 78, i32 89
  %286 = icmp eq i8 %278, 0
  %287 = select i1 %286, i32 78, i32 89
  %288 = select i1 %280, i32 78, i32 89
  %289 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %39, i32 noundef %285, i32 noundef %287, i32 noundef %288) #13
  %290 = load i8, ptr @no_error_inj, align 1
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %271
  %293 = icmp eq i32 %25, -1
  %294 = select i1 %293, i32 7, i32 %25
  br label %298

295:                                              ; preds = %271, %270
  %296 = phi i32 [ -1, %270 ], [ %272, %271 ]
  %297 = icmp eq i32 %25, -1
  br i1 %297, label %318, label %298

298:                                              ; preds = %295, %292
  %299 = phi i32 [ %296, %295 ], [ %272, %292 ]
  %300 = phi i32 [ %25, %295 ], [ %294, %292 ]
  %301 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 326
  %302 = trunc i32 %300 to i8
  %303 = and i8 %302, 1
  store i8 %303, ptr %301, align 64
  %304 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 327
  %305 = lshr i8 %302, 1
  %306 = and i8 %305, 1
  store i8 %306, ptr %304, align 1
  %307 = and i32 %300, 4
  %308 = icmp eq i32 %307, 0
  %309 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 328
  %310 = lshr exact i32 %307, 2
  %311 = trunc i32 %310 to i8
  store i8 %311, ptr %309, align 2
  %312 = icmp eq i8 %303, 0
  %313 = select i1 %312, i32 78, i32 89
  %314 = icmp eq i8 %306, 0
  %315 = select i1 %314, i32 78, i32 89
  %316 = select i1 %308, i32 78, i32 89
  %317 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %39, i32 noundef %313, i32 noundef %315, i32 noundef %316) #13
  br label %318

318:                                              ; preds = %298, %295
  %319 = phi i32 [ %296, %295 ], [ %299, %298 ]
  %320 = phi i32 [ -1, %295 ], [ %300, %298 ]
  %321 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 76
  %322 = lshr i32 %27, 19
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  store i8 %324, ptr %321, align 1
  %325 = load i8, ptr %144, align 2, !range !8
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %342, label %327

327:                                              ; preds = %318
  %328 = load i8, ptr %49, align 8, !range !8
  %329 = icmp eq i8 %328, 0
  %330 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 40
  %331 = select i1 %329, i32 83886085, i32 83890176
  store i32 %331, ptr %330, align 1024
  %332 = load i8, ptr %92, align 4, !range !8
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %336, label %334

334:                                              ; preds = %327
  %335 = or i32 %331, 131072
  store i32 %335, ptr %330, align 1024
  br label %336

336:                                              ; preds = %334, %327
  %337 = phi i32 [ %335, %334 ], [ %331, %327 ]
  %338 = load i8, ptr %243, align 4, !range !8
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %342, label %340

340:                                              ; preds = %336
  %341 = or i32 %337, 65536
  store i32 %341, ptr %330, align 1024
  br label %342

342:                                              ; preds = %340, %336, %318
  %343 = load i8, ptr %188, align 1, !range !8
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %360, label %345

345:                                              ; preds = %342
  %346 = load i8, ptr %49, align 8, !range !8
  %347 = icmp eq i8 %346, 0
  %348 = select i1 %347, i32 2, i32 8192
  %349 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 41
  %350 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 72
  %351 = load i8, ptr %350, align 1, !range !8
  %352 = icmp eq i8 %351, 0
  %353 = or i32 %348, 512
  %354 = select i1 %352, i32 %348, i32 %353
  %355 = or i32 %354, 83886080
  store i32 %355, ptr %349, align 4
  %356 = load i8, ptr %139, align 1, !range !8
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %360, label %358

358:                                              ; preds = %345
  %359 = or i32 %354, 84017152
  store i32 %359, ptr %349, align 4
  br label %360

360:                                              ; preds = %358, %345, %342
  %361 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 63
  %362 = load i8, ptr %361, align 128, !range !8
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %386, label %364

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 64
  %366 = load i8, ptr %365, align 1, !range !8
  %367 = icmp eq i8 %366, 0
  %368 = select i1 %367, i32 0, i32 16
  %369 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 65
  %370 = load i8, ptr %369, align 2, !range !8
  %371 = icmp eq i8 %370, 0
  %372 = select i1 %371, i32 0, i32 64
  %373 = or i32 %372, %368
  %374 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 42
  %375 = or i32 %373, 83886080
  store i32 %375, ptr %374, align 8
  %376 = load i8, ptr %92, align 4, !range !8
  %377 = icmp eq i8 %376, 0
  br i1 %377, label %380, label %378

378:                                              ; preds = %364
  %379 = or i32 %373, 84017152
  store i32 %379, ptr %374, align 8
  br label %380

380:                                              ; preds = %378, %364
  %381 = phi i32 [ %379, %378 ], [ %375, %364 ]
  %382 = load i8, ptr %243, align 4, !range !8
  %383 = icmp eq i8 %382, 0
  br i1 %383, label %386, label %384

384:                                              ; preds = %380
  %385 = or i32 %381, 65536
  store i32 %385, ptr %374, align 8
  br label %386

386:                                              ; preds = %384, %380, %360
  %387 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 66
  %388 = load i8, ptr %387, align 1, !range !8
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %406, label %390

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 67
  %392 = load i8, ptr %391, align 4, !range !8
  %393 = icmp eq i8 %392, 0
  %394 = select i1 %393, i32 0, i32 32
  %395 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 68
  %396 = load i8, ptr %395, align 1, !range !8
  %397 = icmp eq i8 %396, 0
  %398 = select i1 %397, i32 0, i32 128
  %399 = or i32 %398, %394
  %400 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 43
  %401 = or i32 %399, 83886080
  store i32 %401, ptr %400, align 4
  %402 = load i8, ptr %139, align 1, !range !8
  %403 = icmp eq i8 %402, 0
  br i1 %403, label %406, label %404

404:                                              ; preds = %390
  %405 = or i32 %399, 84017152
  store i32 %405, ptr %400, align 4
  br label %406

406:                                              ; preds = %404, %390, %386
  %407 = load i8, ptr %239, align 8, !range !8
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %411, label %409

409:                                              ; preds = %406
  %410 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 44
  store i32 85000192, ptr %410, align 16
  br label %411

411:                                              ; preds = %409, %406
  %412 = load i8, ptr %232, align 2, !range !8
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %416, label %414

414:                                              ; preds = %411
  %415 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 45
  store i32 17106176, ptr %415, align 4
  br label %416

416:                                              ; preds = %414, %411
  %417 = load i8, ptr %235, align 1, !range !8
  %418 = icmp eq i8 %417, 0
  br i1 %418, label %421, label %419

419:                                              ; preds = %416
  %420 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 46
  store i32 17303552, ptr %420, align 8
  br label %421

421:                                              ; preds = %419, %416
  %422 = load i8, ptr %159, align 2, !range !8
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %433, label %424

424:                                              ; preds = %421
  %425 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 47
  %426 = load i8, ptr %92, align 4, !range !8
  %427 = icmp eq i8 %426, 0
  %428 = select i1 %427, i32 92274688, i32 92405760
  store i32 %428, ptr %425, align 4
  %429 = load i8, ptr %243, align 4, !range !8
  %430 = icmp eq i8 %429, 0
  br i1 %430, label %433, label %431

431:                                              ; preds = %424
  %432 = or i32 %428, 65536
  store i32 %432, ptr %425, align 4
  br label %433

433:                                              ; preds = %431, %424, %421
  %434 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 74
  %435 = load i8, ptr %434, align 1, !range !8
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %442, label %437

437:                                              ; preds = %433
  %438 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 48
  %439 = load i8, ptr %139, align 1, !range !8
  %440 = icmp eq i8 %439, 0
  %441 = select i1 %440, i32 218103808, i32 218234880
  store i32 %441, ptr %438, align 32
  br label %442

442:                                              ; preds = %437, %433
  %443 = icmp eq i8 %324, 0
  br i1 %443, label %449, label %444

444:                                              ; preds = %442
  %445 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 49
  %446 = load i8, ptr %49, align 8, !range !8
  %447 = icmp eq i8 %446, 0
  %448 = select i1 %447, i32 352321537, i32 352325632
  store i32 %448, ptr %445, align 4
  br label %449

449:                                              ; preds = %444, %442
  %450 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 231
  tail call void @tpg_init(ptr noundef %450, i32 noundef 640, i32 noundef 360) #12
  %451 = tail call i32 @tpg_alloc(ptr noundef %450, i32 noundef 16384) #12
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %846

453:                                              ; preds = %449
  %454 = tail call noalias ptr @vzalloc(i32 noundef 16384) #14
  %455 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 216
  store ptr %454, ptr %455, align 4
  %456 = icmp eq ptr %454, null
  br i1 %456, label %846, label %457

457:                                              ; preds = %453
  %458 = tail call noalias ptr @vzalloc(i32 noundef 16384) #14
  %459 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 217
  store ptr %458, ptr %459, align 8
  %460 = icmp eq ptr %458, null
  br i1 %460, label %846, label %461

461:                                              ; preds = %457
  %462 = tail call noalias ptr @vmalloc(i32 noundef 32768) #14
  %463 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 179
  store ptr %462, ptr %463, align 4
  %464 = icmp eq ptr %462, null
  br i1 %464, label %846, label %465

465:                                              ; preds = %461
  %466 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 169
  %467 = load i32, ptr %466, align 16
  %468 = getelementptr [0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 %467, i32 1
  %469 = load i32, ptr %468, align 1
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %478, label %471

471:                                              ; preds = %471, %465
  %472 = phi i32 [ %473, %471 ], [ %467, %465 ]
  %473 = add i32 %472, 1
  %474 = getelementptr [0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 %473, i32 1
  %475 = load i32, ptr %474, align 1
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %471

477:                                              ; preds = %471
  store i32 %473, ptr %466, align 16
  br label %478

478:                                              ; preds = %477, %465
  %479 = phi i32 [ %467, %465 ], [ %473, %477 ]
  %480 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %479, i32 4) #12
  %481 = extractvalue { i32, i1 } %480, 1
  br i1 %481, label %485, label %482, !prof !9

482:                                              ; preds = %478
  %483 = extractvalue { i32, i1 } %480, 0
  %484 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %483, i32 noundef 3264) #14
  br label %485

485:                                              ; preds = %482, %478
  %486 = phi ptr [ %484, %482 ], [ null, %478 ]
  %487 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 167
  store ptr %486, ptr %487, align 8
  %488 = load i32, ptr %466, align 16
  %489 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %488, i32 32) #12
  %490 = extractvalue { i32, i1 } %489, 1
  br i1 %490, label %491, label %493, !prof !9

491:                                              ; preds = %485
  %492 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 168
  store ptr null, ptr %492, align 4
  br label %846

493:                                              ; preds = %485
  %494 = extractvalue { i32, i1 } %489, 0
  %495 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %494, i32 noundef 3264) #14
  %496 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 168
  store ptr %495, ptr %496, align 4
  %497 = load ptr, ptr %487, align 8
  %498 = icmp eq ptr %497, null
  %499 = icmp eq ptr %495, null
  %500 = select i1 %498, i1 true, i1 %499
  br i1 %500, label %846, label %501

501:                                              ; preds = %493
  %502 = load i32, ptr %466, align 16
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %558, label %504

504:                                              ; preds = %555, %501
  %505 = phi ptr [ %557, %555 ], [ %497, %501 ]
  %506 = phi ptr [ %556, %555 ], [ %495, %501 ]
  %507 = phi i32 [ %552, %555 ], [ 0, %501 ]
  %508 = getelementptr [0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 %507, i32 1
  %509 = shl i32 %507, 5
  %510 = getelementptr i8, ptr %506, i32 %509
  %511 = getelementptr ptr, ptr %505, i32 %507
  store ptr %510, ptr %511, align 4
  %512 = load i32, ptr %508, align 1
  %513 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %508, i32 0, i32 5
  %514 = load i32, ptr %513, align 1
  %515 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %508, i32 0, i32 6
  %516 = load i32, ptr %515, align 1
  %517 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %508, i32 0, i32 7
  %518 = load i32, ptr %517, align 1
  %519 = add i32 %514, %512
  %520 = add i32 %519, %516
  %521 = add i32 %520, %518
  %522 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %508, i32 0, i32 1
  %523 = load i32, ptr %522, align 1
  %524 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %508, i32 0, i32 8
  %525 = load i32, ptr %524, align 1
  %526 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %508, i32 0, i32 9
  %527 = load i32, ptr %526, align 1
  %528 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %508, i32 0, i32 10
  %529 = load i32, ptr %528, align 1
  %530 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %508, i32 0, i32 11
  %531 = load i32, ptr %530, align 1
  %532 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %508, i32 0, i32 12
  %533 = load i32, ptr %532, align 1
  %534 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %508, i32 0, i32 13
  %535 = load i32, ptr %534, align 1
  %536 = add i32 %525, %523
  %537 = add i32 %536, %527
  %538 = add i32 %537, %529
  %539 = add i32 %538, %531
  %540 = add i32 %539, %533
  %541 = add i32 %540, %535
  %542 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %508, i32 0, i32 2
  %543 = load i32, ptr %542, align 1
  %544 = icmp eq i32 %543, 0
  %545 = select i1 %544, ptr @.str.18, ptr @.str.17
  %546 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %508, i32 0, i32 4
  %547 = load i64, ptr %546, align 1
  %548 = trunc i64 %547 to i32
  %549 = mul i32 %541, %521
  %550 = udiv i32 %548, %549
  %551 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %510, i32 noundef 32, ptr noundef nonnull @.str.16, i32 noundef %512, i32 noundef %523, ptr noundef nonnull %545, i32 noundef %550) #12
  %552 = add nuw i32 %507, 1
  %553 = load i32, ptr %466, align 16
  %554 = icmp ult i32 %552, %553
  br i1 %554, label %555, label %558

555:                                              ; preds = %504
  %556 = load ptr, ptr %496, align 4
  %557 = load ptr, ptr %487, align 8
  br label %504

558:                                              ; preds = %504, %501
  %559 = icmp ne i8 %238, 0
  %560 = load i8, ptr %92, align 4, !range !8
  %561 = icmp eq i8 %560, 0
  br i1 %561, label %562, label %566

562:                                              ; preds = %558
  %563 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 18, i32 25
  tail call void @_set_bit(i32 noundef 34, ptr noundef %563) #12
  tail call void @_set_bit(i32 noundef 33, ptr noundef %563) #12
  tail call void @_set_bit(i32 noundef 65, ptr noundef %563) #12
  %564 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 22, i32 25
  tail call void @_set_bit(i32 noundef 34, ptr noundef %564) #12
  tail call void @_set_bit(i32 noundef 33, ptr noundef %564) #12
  tail call void @_set_bit(i32 noundef 65, ptr noundef %564) #12
  %565 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 32, i32 25
  tail call void @_set_bit(i32 noundef 34, ptr noundef %565) #12
  tail call void @_set_bit(i32 noundef 33, ptr noundef %565) #12
  tail call void @_set_bit(i32 noundef 65, ptr noundef %565) #12
  br label %566

566:                                              ; preds = %562, %558
  %567 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 60
  %568 = load i8, ptr %567, align 1, !range !8
  %569 = icmp eq i8 %568, 0
  br i1 %569, label %570, label %574

570:                                              ; preds = %566
  %571 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 20, i32 25
  tail call void @_set_bit(i32 noundef 50, ptr noundef %571) #12
  tail call void @_set_bit(i32 noundef 49, ptr noundef %571) #12
  tail call void @_set_bit(i32 noundef 66, ptr noundef %571) #12
  %572 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 24, i32 25
  tail call void @_set_bit(i32 noundef 50, ptr noundef %572) #12
  tail call void @_set_bit(i32 noundef 49, ptr noundef %572) #12
  tail call void @_set_bit(i32 noundef 66, ptr noundef %572) #12
  %573 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 34, i32 25
  tail call void @_set_bit(i32 noundef 50, ptr noundef %573) #12
  tail call void @_set_bit(i32 noundef 49, ptr noundef %573) #12
  tail call void @_set_bit(i32 noundef 66, ptr noundef %573) #12
  br label %574

574:                                              ; preds = %570, %566
  br i1 %148, label %575, label %577

575:                                              ; preds = %574
  %576 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 18, i32 25
  tail call void @_set_bit(i32 noundef 24, ptr noundef %576) #12
  tail call void @_set_bit(i32 noundef 23, ptr noundef %576) #12
  tail call void @_set_bit(i32 noundef 25, ptr noundef %576) #12
  tail call void @_set_bit(i32 noundef 63, ptr noundef %576) #12
  br label %577

577:                                              ; preds = %575, %574
  br i1 %192, label %578, label %580

578:                                              ; preds = %577
  %579 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 20, i32 25
  tail call void @_set_bit(i32 noundef 24, ptr noundef %579) #12
  tail call void @_set_bit(i32 noundef 23, ptr noundef %579) #12
  tail call void @_set_bit(i32 noundef 25, ptr noundef %579) #12
  br label %580

580:                                              ; preds = %578, %577
  %581 = or i1 %559, %264
  br i1 %581, label %586, label %582

582:                                              ; preds = %580
  %583 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 18, i32 25
  tail call void @_set_bit(i32 noundef 57, ptr noundef %583) #12
  tail call void @_set_bit(i32 noundef 56, ptr noundef %583) #12
  %584 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 22, i32 25
  tail call void @_set_bit(i32 noundef 57, ptr noundef %584) #12
  tail call void @_set_bit(i32 noundef 56, ptr noundef %584) #12
  %585 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 32, i32 25
  tail call void @_set_bit(i32 noundef 57, ptr noundef %585) #12
  tail call void @_set_bit(i32 noundef 56, ptr noundef %585) #12
  br label %586

586:                                              ; preds = %582, %580
  br i1 %264, label %591, label %587

587:                                              ; preds = %586
  %588 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 18, i32 25
  tail call void @_set_bit(i32 noundef 30, ptr noundef %588) #12
  tail call void @_set_bit(i32 noundef 29, ptr noundef %588) #12
  %589 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 22, i32 25
  tail call void @_set_bit(i32 noundef 30, ptr noundef %589) #12
  tail call void @_set_bit(i32 noundef 29, ptr noundef %589) #12
  %590 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 32, i32 25
  tail call void @_set_bit(i32 noundef 30, ptr noundef %590) #12
  tail call void @_set_bit(i32 noundef 29, ptr noundef %590) #12
  br label %591

591:                                              ; preds = %587, %586
  %592 = icmp eq i32 %98, 0
  br i1 %592, label %593, label %595

593:                                              ; preds = %591
  %594 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 18, i32 25
  tail call void @_set_bit(i32 noundef 41, ptr noundef %594) #12
  tail call void @_set_bit(i32 noundef 40, ptr noundef %594) #12
  tail call void @_set_bit(i32 noundef 100, ptr noundef %594) #12
  tail call void @_set_bit(i32 noundef 88, ptr noundef %594) #12
  tail call void @_set_bit(i32 noundef 87, ptr noundef %594) #12
  tail call void @_set_bit(i32 noundef 98, ptr noundef %594) #12
  tail call void @_set_bit(i32 noundef 99, ptr noundef %594) #12
  br label %595

595:                                              ; preds = %593, %591
  %596 = icmp eq i32 %142, 0
  br i1 %596, label %597, label %599

597:                                              ; preds = %595
  %598 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 20, i32 25
  tail call void @_set_bit(i32 noundef 40, ptr noundef %598) #12
  tail call void @_set_bit(i32 noundef 100, ptr noundef %598) #12
  tail call void @_set_bit(i32 noundef 88, ptr noundef %598) #12
  tail call void @_set_bit(i32 noundef 87, ptr noundef %598) #12
  tail call void @_set_bit(i32 noundef 98, ptr noundef %598) #12
  br label %599

599:                                              ; preds = %597, %595
  %600 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 72
  %601 = load i8, ptr %600, align 1, !range !8
  %602 = icmp eq i8 %601, 0
  br i1 %602, label %603, label %605

603:                                              ; preds = %599
  %604 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 20, i32 25
  tail call void @_set_bit(i32 noundef 10, ptr noundef %604) #12
  tail call void @_set_bit(i32 noundef 11, ptr noundef %604) #12
  tail call void @_set_bit(i32 noundef 14, ptr noundef %604) #12
  br label %605

605:                                              ; preds = %603, %599
  %606 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 18, i32 25
  tail call void @_set_bit(i32 noundef 82, ptr noundef %606) #12
  %607 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 22, i32 25
  tail call void @_set_bit(i32 noundef 82, ptr noundef %607) #12
  %608 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 30, i32 25
  tail call void @_set_bit(i32 noundef 82, ptr noundef %608) #12
  %609 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 32, i32 25
  tail call void @_set_bit(i32 noundef 82, ptr noundef %609) #12
  %610 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 20, i32 25
  tail call void @_set_bit(i32 noundef 57, ptr noundef %610) #12
  tail call void @_set_bit(i32 noundef 56, ptr noundef %610) #12
  tail call void @_set_bit(i32 noundef 74, ptr noundef %610) #12
  tail call void @_set_bit(i32 noundef 75, ptr noundef %610) #12
  %611 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 24, i32 25
  tail call void @_set_bit(i32 noundef 57, ptr noundef %611) #12
  tail call void @_set_bit(i32 noundef 56, ptr noundef %611) #12
  %612 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 34, i32 25
  tail call void @_set_bit(i32 noundef 57, ptr noundef %612) #12
  tail call void @_set_bit(i32 noundef 56, ptr noundef %612) #12
  %613 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 36, i32 25
  tail call void @_set_bit(i32 noundef 22, ptr noundef %613) #12
  tail call void @_set_bit(i32 noundef 74, ptr noundef %613) #12
  tail call void @_set_bit(i32 noundef 75, ptr noundef %613) #12
  %614 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 234
  store ptr @vivid_formats, ptr %614, align 4
  %615 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 278
  store ptr @vivid_formats, ptr %615, align 8
  %616 = load i8, ptr %49, align 8, !range !8
  %617 = icmp eq i8 %616, 0
  br i1 %617, label %618, label %619

618:                                              ; preds = %605
  store i32 0, ptr getelementptr inbounds ([0 x %struct.vivid_fmt], ptr @vivid_formats, i32 0, i32 0, i32 7), align 4
  br label %619

619:                                              ; preds = %618, %605
  %620 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 182
  store i32 1, ptr %620, align 8
  %621 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 183
  store i32 3, ptr %621, align 4
  %622 = load i32, ptr @vivid_formats, align 4
  %623 = tail call zeroext i1 @tpg_s_fourcc(ptr noundef %450, i32 noundef %622) #12
  %624 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 200
  store i64 255, ptr %624, align 32
  %625 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 53
  %626 = load i8, ptr %625, align 4
  %627 = add i8 %626, -1
  %628 = icmp ult i8 %627, 2
  %629 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 57
  %630 = load i8, ptr %629, align 4
  %631 = icmp eq i8 %630, 2
  %632 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 175, i32 0
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(132) %632, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %633 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 174, i32 0
  store i64 255, ptr %633, align 8
  %634 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 175, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(132) %634, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %635 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 174, i32 1
  store i64 255, ptr %635, align 32
  %636 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 175, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 32 dereferenceable(132) %636, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %637 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 174, i32 2
  store i64 255, ptr %637, align 8
  %638 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 175, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(132) %638, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %639 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 174, i32 3
  store i64 255, ptr %639, align 16
  %640 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 175, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(132) %640, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %641 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 174, i32 4
  store i64 255, ptr %641, align 8
  %642 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 175, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(132) %642, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %643 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 174, i32 5
  store i64 255, ptr %643, align 128
  %644 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 175, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 16 dereferenceable(132) %644, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %645 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 174, i32 6
  store i64 255, ptr %645, align 8
  %646 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 175, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(132) %646, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %647 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 174, i32 7
  store i64 255, ptr %647, align 16
  %648 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 175, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(132) %648, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %649 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 174, i32 8
  store i64 255, ptr %649, align 8
  %650 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 175, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(132) %650, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %651 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 174, i32 9
  store i64 255, ptr %651, align 32
  %652 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 175, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 512 dereferenceable(132) %652, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %653 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 174, i32 10
  store i64 255, ptr %653, align 8
  %654 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 175, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(132) %654, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %655 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 174, i32 11
  store i64 255, ptr %655, align 16
  %656 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 175, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(132) %656, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %657 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 174, i32 12
  store i64 255, ptr %657, align 8
  %658 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 175, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(132) %658, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %659 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 174, i32 13
  store i64 255, ptr %659, align 64
  %660 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 175, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 16 dereferenceable(132) %660, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %661 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 174, i32 14
  store i64 255, ptr %661, align 8
  %662 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 175, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(132) %662, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %663 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 174, i32 15
  store i64 255, ptr %663, align 16
  %664 = select i1 %628, i64 16777215, i64 0
  %665 = select i1 %631, i64 16777215, i64 0
  %666 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 201
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(132) %666, ptr noundef nonnull align 1 dereferenceable(132) @vivid_create_instance.def_dv_timings, i32 132, i1 false) #12
  %667 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 184
  store i32 2804, ptr %667, align 64
  %668 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 185
  store i32 1, ptr %668, align 4
  %669 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 186
  store i32 4, ptr %669, align 8
  %670 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 209
  store i32 4, ptr %670, align 16
  %671 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 335
  store i32 1520000, ptr %671, align 8
  %672 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 336
  store i32 1, ptr %672, align 4
  %673 = load i8, ptr %235, align 1, !range !8
  %674 = icmp eq i8 %673, 0
  br i1 %674, label %678, label %675

675:                                              ; preds = %619
  %676 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 345
  store i32 1528000, ptr %676, align 8
  %677 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 350
  store i8 0, ptr %677, align 4
  br label %678

678:                                              ; preds = %675, %619
  %679 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 346
  store i32 18, ptr %679, align 4
  %680 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 317
  store i32 300000, ptr %680, align 8
  %681 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 318
  store i32 50000000, ptr %681, align 4
  %682 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 315
  store i32 942691651, ptr %682, align 32
  %683 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 316
  store i32 32768, ptr %683, align 4
  %684 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 180
  store i32 2, ptr %684, align 16
  %685 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 181
  store i32 2, ptr %685, align 4
  %686 = load ptr, ptr %463, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(256) %686, ptr noundef nonnull align 1 dereferenceable(256) @vivid_hdmi_edid, i32 256, i1 false) #12
  %687 = tail call i64 @ktime_get() #12
  %688 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 351
  store i64 %687, ptr %688, align 16
  %689 = icmp eq i32 %319, -1
  %690 = icmp eq i32 %320, -1
  %691 = load i8, ptr @no_error_inj, align 1, !range !8
  %692 = icmp ne i8 %691, 0
  %693 = select i1 %242, i1 true, i1 %89
  %694 = select i1 %693, i1 true, i1 %140
  %695 = icmp ne i32 %98, 0
  %696 = icmp ne i32 %142, 0
  %697 = select i1 %695, i1 true, i1 %696
  %698 = tail call i32 @vivid_create_controls(ptr noundef nonnull %28, i1 noundef zeroext %689, i1 noundef zeroext %690, i1 noundef zeroext %692, i1 noundef zeroext %694, i1 noundef zeroext %697) #12
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %700, label %795

700:                                              ; preds = %678
  %701 = load i32, ptr %102, align 4
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %709, label %703

703:                                              ; preds = %700
  %704 = load i8, ptr %629, align 4
  %705 = icmp eq i8 %704, 3
  br i1 %705, label %709, label %706

706:                                              ; preds = %703
  %707 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 101
  %708 = load ptr, ptr %707, align 8
  tail call void @v4l2_ctrl_activate(ptr noundef %708, i1 noundef zeroext false) #12
  br label %709

709:                                              ; preds = %706, %703, %700
  %710 = load i32, ptr %55, align 4
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %726, label %712

712:                                              ; preds = %709
  %713 = load i8, ptr %625, align 4
  %714 = icmp eq i8 %713, 3
  br i1 %714, label %719, label %715

715:                                              ; preds = %712
  %716 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 100
  %717 = load ptr, ptr %716, align 16
  tail call void @v4l2_ctrl_activate(ptr noundef %717, i1 noundef zeroext false) #12
  %718 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 100, i32 1
  br label %723

719:                                              ; preds = %712
  %720 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 99
  %721 = load ptr, ptr %720, align 8
  tail call void @v4l2_ctrl_activate(ptr noundef %721, i1 noundef zeroext false) #12
  %722 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 99, i32 1
  br label %723

723:                                              ; preds = %719, %715
  %724 = phi ptr [ %722, %719 ], [ %718, %715 ]
  %725 = load ptr, ptr %724, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %725, i1 noundef zeroext false) #12
  br label %726

726:                                              ; preds = %723, %709
  tail call void @vivid_update_format_cap(ptr noundef nonnull %28, i1 noundef zeroext false) #12
  tail call void @vivid_update_format_out(ptr noundef nonnull %28) #12
  %727 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 237, i32 2
  %728 = load i32, ptr %727, align 4
  %729 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 189, i32 3
  store i32 %728, ptr %729, align 32
  %730 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 237, i32 3
  %731 = load i32, ptr %730, align 16
  %732 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 189, i32 3, i32 1
  store i32 %731, ptr %732, align 4
  %733 = load ptr, ptr %614, align 4
  %734 = load i32, ptr %733, align 4
  %735 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 189, i32 3, i32 2
  store i32 %734, ptr %735, align 8
  %736 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 231, i32 42
  %737 = load i32, ptr %736, align 32
  %738 = mul i32 %737, %728
  %739 = lshr i32 %738, 1
  %740 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 189, i32 3, i32 4
  store i32 %739, ptr %740, align 16
  %741 = mul i32 %739, %731
  %742 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 189, i32 3, i32 5
  store i32 %741, ptr %742, align 4
  %743 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 275
  store i32 1, ptr %743, align 4
  %744 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 275, i32 1
  store i32 10, ptr %744, align 512
  %745 = tail call i32 @vivid_set_touch(ptr noundef nonnull %28, i32 noundef 0) #12
  %746 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 38
  store i32 0, ptr %746, align 8
  %747 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 39
  tail call void @__mutex_init(ptr noundef %747, ptr noundef nonnull @.str.6, ptr noundef nonnull @vivid_create_instance.__key) #12
  %748 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 243
  store volatile ptr %748, ptr %748, align 8
  %749 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 243, i32 1
  store ptr %748, ptr %749, align 4
  %750 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 287
  store volatile ptr %750, ptr %750, align 4
  %751 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 287, i32 1
  store ptr %750, ptr %751, align 16
  %752 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 245
  store volatile ptr %752, ptr %752, align 4
  %753 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 245, i32 1
  store ptr %752, ptr %753, align 8
  %754 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 289
  store volatile ptr %754, ptr %754, align 8
  %755 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 289, i32 1
  store ptr %754, ptr %755, align 4
  %756 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 314
  store volatile ptr %756, ptr %756, align 8
  %757 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 314, i32 1
  store ptr %756, ptr %757, align 4
  %758 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 247
  store volatile ptr %758, ptr %758, align 32
  %759 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 247, i32 1
  store ptr %758, ptr %759, align 4
  %760 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 291
  store volatile ptr %760, ptr %760, align 4
  %761 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 291, i32 1
  store ptr %760, ptr %761, align 8
  %762 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 249
  store volatile ptr %762, ptr %762, align 4
  %763 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 249, i32 1
  store ptr %762, ptr %763, align 128
  %764 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 358
  store i32 0, ptr %764, align 4
  %765 = getelementptr [64 x i32], ptr @allocators, i32 0, i32 %21
  %766 = load i32, ptr %765, align 4
  %767 = icmp eq i32 %766, 1
  br i1 %767, label %768, label %769

768:                                              ; preds = %726
  tail call fastcc void @dma_coerce_mask_and_coherent(ptr noundef %14) #12
  br label %769

769:                                              ; preds = %768, %726
  %770 = tail call fastcc i32 @vivid_create_queues(ptr noundef nonnull %28) #12
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %772, label %795

772:                                              ; preds = %769
  %773 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 19
  %774 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %773) #12
  %775 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 21
  %776 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %775) #12
  %777 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 23
  %778 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %777) #12
  %779 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 25
  %780 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %779) #12
  %781 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 27
  %782 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %781) #12
  %783 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 29
  %784 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %783) #12
  %785 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 31
  %786 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %785) #12
  %787 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 33
  %788 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %787) #12
  %789 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 35
  %790 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %789) #12
  %791 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 37
  %792 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %791) #12
  %793 = tail call fastcc i32 @vivid_create_devnodes(ptr noundef nonnull %28, i32 noundef %21, i64 noundef %664, i64 noundef %665) #12
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %854, label %795

795:                                              ; preds = %772, %769, %678
  %796 = phi i32 [ %698, %678 ], [ %770, %769 ], [ %793, %772 ]
  %797 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 36
  tail call void @vb2_video_unregister_device(ptr noundef %797) #12
  %798 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 34
  tail call void @vb2_video_unregister_device(ptr noundef %798) #12
  %799 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 32
  tail call void @vb2_video_unregister_device(ptr noundef %799) #12
  %800 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 28
  tail call void @video_unregister_device(ptr noundef %800) #12
  %801 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 26
  tail call void @video_unregister_device(ptr noundef %801) #12
  %802 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 30
  tail call void @vb2_video_unregister_device(ptr noundef %802) #12
  %803 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 24
  tail call void @vb2_video_unregister_device(ptr noundef %803) #12
  %804 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 22
  tail call void @vb2_video_unregister_device(ptr noundef %804) #12
  %805 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 20
  tail call void @vb2_video_unregister_device(ptr noundef %805) #12
  %806 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 18
  tail call void @vb2_video_unregister_device(ptr noundef %806) #12
  %807 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 352
  %808 = load ptr, ptr %807, align 8
  tail call void @cec_unregister_adapter(ptr noundef %808) #12
  %809 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 353, i32 0
  %810 = load ptr, ptr %809, align 4
  tail call void @cec_unregister_adapter(ptr noundef %810) #12
  %811 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 353, i32 1
  %812 = load ptr, ptr %811, align 32
  tail call void @cec_unregister_adapter(ptr noundef %812) #12
  %813 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 353, i32 2
  %814 = load ptr, ptr %813, align 4
  tail call void @cec_unregister_adapter(ptr noundef %814) #12
  %815 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 353, i32 3
  %816 = load ptr, ptr %815, align 8
  tail call void @cec_unregister_adapter(ptr noundef %816) #12
  %817 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 353, i32 4
  %818 = load ptr, ptr %817, align 4
  tail call void @cec_unregister_adapter(ptr noundef %818) #12
  %819 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 353, i32 5
  %820 = load ptr, ptr %819, align 16
  tail call void @cec_unregister_adapter(ptr noundef %820) #12
  %821 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 353, i32 6
  %822 = load ptr, ptr %821, align 4
  tail call void @cec_unregister_adapter(ptr noundef %822) #12
  %823 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 353, i32 7
  %824 = load ptr, ptr %823, align 8
  tail call void @cec_unregister_adapter(ptr noundef %824) #12
  %825 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 353, i32 8
  %826 = load ptr, ptr %825, align 4
  tail call void @cec_unregister_adapter(ptr noundef %826) #12
  %827 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 353, i32 9
  %828 = load ptr, ptr %827, align 64
  tail call void @cec_unregister_adapter(ptr noundef %828) #12
  %829 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 353, i32 10
  %830 = load ptr, ptr %829, align 4
  tail call void @cec_unregister_adapter(ptr noundef %830) #12
  %831 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 353, i32 11
  %832 = load ptr, ptr %831, align 8
  tail call void @cec_unregister_adapter(ptr noundef %832) #12
  %833 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 353, i32 12
  %834 = load ptr, ptr %833, align 4
  tail call void @cec_unregister_adapter(ptr noundef %834) #12
  %835 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 353, i32 13
  %836 = load ptr, ptr %835, align 16
  tail call void @cec_unregister_adapter(ptr noundef %836) #12
  %837 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 353, i32 14
  %838 = load ptr, ptr %837, align 4
  tail call void @cec_unregister_adapter(ptr noundef %838) #12
  %839 = getelementptr %struct.vivid_dev, ptr %28, i32 0, i32 353, i32 15
  %840 = load ptr, ptr %839, align 8
  tail call void @cec_unregister_adapter(ptr noundef %840) #12
  %841 = getelementptr inbounds %struct.vivid_dev, ptr %28, i32 0, i32 355
  %842 = load ptr, ptr %841, align 4
  %843 = icmp eq ptr %842, null
  br i1 %843, label %846, label %844

844:                                              ; preds = %795
  %845 = tail call i32 @kthread_stop(ptr noundef nonnull %842) #12
  br label %846

846:                                              ; preds = %844, %795, %493, %491, %461, %457, %453, %449, %229, %213, %185, %173
  %847 = phi i32 [ %796, %844 ], [ %796, %795 ], [ -22, %229 ], [ -22, %213 ], [ -22, %185 ], [ -22, %173 ], [ -12, %491 ], [ -12, %449 ], [ -12, %453 ], [ -12, %457 ], [ -12, %461 ], [ -12, %493 ]
  %848 = tail call i32 @v4l2_device_put(ptr noundef %32) #12
  br label %849

849:                                              ; preds = %846, %43
  %850 = phi i32 [ %847, %846 ], [ %41, %43 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  %851 = icmp eq i32 %21, 0
  br i1 %851, label %859, label %864

852:                                              ; preds = %20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  %853 = icmp eq i32 %21, 0
  br i1 %853, label %861, label %864

854:                                              ; preds = %772
  %855 = getelementptr [64 x ptr], ptr @vivid_devs, i32 0, i32 %21
  store ptr %28, ptr %855, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  %856 = add nuw i32 %21, 1
  %857 = load i32, ptr @n_devs, align 4
  %858 = icmp ult i32 %856, %857
  br i1 %858, label %20, label %864

859:                                              ; preds = %849
  %860 = icmp slt i32 %850, 0
  br i1 %860, label %861, label %864

861:                                              ; preds = %859, %852
  %862 = phi i32 [ %850, %859 ], [ -12, %852 ]
  %863 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %862) #13
  br label %867

864:                                              ; preds = %859, %854, %852, %849
  %865 = phi i32 [ 0, %859 ], [ %21, %849 ], [ %21, %852 ], [ %856, %854 ]
  %866 = phi i32 [ %850, %859 ], [ 0, %849 ], [ 0, %852 ], [ 0, %854 ]
  store i32 %865, ptr @n_devs, align 4
  br label %867

867:                                              ; preds = %864, %861, %6
  %868 = phi i32 [ -19, %6 ], [ %862, %861 ], [ %866, %864 ]
  ret i32 %868
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_remove(ptr nocapture noundef readnone %0) #4 {
  %2 = load i32, ptr @n_devs, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %234, label %4

4:                                                ; preds = %230, %1
  %5 = phi i32 [ %231, %230 ], [ %2, %1 ]
  %6 = phi i32 [ %232, %230 ], [ 0, %1 ]
  %7 = getelementptr [64 x ptr], ptr @vivid_devs, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %230, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 152
  %12 = load i8, ptr %11, align 8, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call fastcc void @vivid_reconnect(ptr noundef nonnull %8)
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 2
  tail call void @media_device_unregister(ptr noundef %16) #12
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 61
  %18 = load i8, ptr %17, align 2, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 1, i32 4
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 18
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 18, i32 5, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 18, i32 5
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi ptr [ %28, %26 ], [ %24, %20 ]
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %21, ptr noundef %30) #13
  tail call void @vb2_video_unregister_device(ptr noundef %22) #12
  br label %32

32:                                               ; preds = %29, %15
  %33 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 62
  %34 = load i8, ptr %33, align 1, !range !8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 1, i32 4
  %38 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 20
  %39 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 20, i32 5, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 20, i32 5
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %36
  %46 = phi ptr [ %44, %42 ], [ %40, %36 ]
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %37, ptr noundef %46) #13
  tail call void @vb2_video_unregister_device(ptr noundef %38) #12
  br label %48

48:                                               ; preds = %45, %32
  %49 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 63
  %50 = load i8, ptr %49, align 8, !range !8
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 1, i32 4
  %54 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 22
  %55 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 22, i32 5, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 22, i32 5
  %60 = load ptr, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %52
  %62 = phi ptr [ %60, %58 ], [ %56, %52 ]
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %53, ptr noundef %62) #13
  tail call void @vb2_video_unregister_device(ptr noundef %54) #12
  br label %64

64:                                               ; preds = %61, %48
  %65 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 66
  %66 = load i8, ptr %65, align 1, !range !8
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 1, i32 4
  %70 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 24
  %71 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 24, i32 5, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 24, i32 5
  %76 = load ptr, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %68
  %78 = phi ptr [ %76, %74 ], [ %72, %68 ]
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %69, ptr noundef %78) #13
  tail call void @vb2_video_unregister_device(ptr noundef %70) #12
  br label %80

80:                                               ; preds = %77, %64
  %81 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 71
  %82 = load i8, ptr %81, align 8, !range !8
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 1, i32 4
  %86 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 30
  %87 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 30, i32 5, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 30, i32 5
  %92 = load ptr, ptr %91, align 4
  br label %93

93:                                               ; preds = %90, %84
  %94 = phi ptr [ %92, %90 ], [ %88, %84 ]
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %85, ptr noundef %94) #13
  tail call void @vb2_video_unregister_device(ptr noundef %86) #12
  br label %96

96:                                               ; preds = %93, %80
  %97 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 69
  %98 = load i8, ptr %97, align 2, !range !8
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 1, i32 4
  %102 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 26
  %103 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 26, i32 5, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 26, i32 5
  %108 = load ptr, ptr %107, align 4
  br label %109

109:                                              ; preds = %106, %100
  %110 = phi ptr [ %108, %106 ], [ %104, %100 ]
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %101, ptr noundef %110) #13
  tail call void @video_unregister_device(ptr noundef %102) #12
  br label %112

112:                                              ; preds = %109, %96
  %113 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 70
  %114 = load i8, ptr %113, align 1, !range !8
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 1, i32 4
  %118 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 28
  %119 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 28, i32 5, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 28, i32 5
  %124 = load ptr, ptr %123, align 4
  br label %125

125:                                              ; preds = %122, %116
  %126 = phi ptr [ %124, %122 ], [ %120, %116 ]
  %127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %117, ptr noundef %126) #13
  tail call void @video_unregister_device(ptr noundef %118) #12
  br label %128

128:                                              ; preds = %125, %112
  %129 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 72
  %130 = load i8, ptr %129, align 1, !range !8
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 1, i32 4
  %134 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 149
  %135 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 149, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %133, i32 noundef %136) #13
  tail call void @unregister_framebuffer(ptr noundef %134) #12
  tail call void @vivid_fb_release_buffers(ptr noundef nonnull %8) #12
  br label %138

138:                                              ; preds = %132, %128
  %139 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 73
  %140 = load i8, ptr %139, align 2, !range !8
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %154, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 1, i32 4
  %144 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 32
  %145 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 32, i32 5, i32 3
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 32, i32 5
  %150 = load ptr, ptr %149, align 4
  br label %151

151:                                              ; preds = %148, %142
  %152 = phi ptr [ %150, %148 ], [ %146, %142 ]
  %153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %143, ptr noundef %152) #13
  tail call void @vb2_video_unregister_device(ptr noundef %144) #12
  br label %154

154:                                              ; preds = %151, %138
  %155 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 74
  %156 = load i8, ptr %155, align 1, !range !8
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 1, i32 4
  %160 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 34
  %161 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 34, i32 5, i32 3
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 34, i32 5
  %166 = load ptr, ptr %165, align 4
  br label %167

167:                                              ; preds = %164, %158
  %168 = phi ptr [ %166, %164 ], [ %162, %158 ]
  %169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %159, ptr noundef %168) #13
  tail call void @vb2_video_unregister_device(ptr noundef %160) #12
  br label %170

170:                                              ; preds = %167, %154
  %171 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 76
  %172 = load i8, ptr %171, align 1, !range !8
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %186, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 1, i32 4
  %176 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 36
  %177 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 36, i32 5, i32 3
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 36, i32 5
  %182 = load ptr, ptr %181, align 4
  br label %183

183:                                              ; preds = %180, %174
  %184 = phi ptr [ %182, %180 ], [ %178, %174 ]
  %185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %175, ptr noundef %184) #13
  tail call void @vb2_video_unregister_device(ptr noundef %176) #12
  br label %186

186:                                              ; preds = %183, %170
  %187 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 352
  %188 = load ptr, ptr %187, align 8
  tail call void @cec_unregister_adapter(ptr noundef %188) #12
  %189 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 353, i32 0
  %190 = load ptr, ptr %189, align 4
  tail call void @cec_unregister_adapter(ptr noundef %190) #12
  %191 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 353, i32 1
  %192 = load ptr, ptr %191, align 4
  tail call void @cec_unregister_adapter(ptr noundef %192) #12
  %193 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 353, i32 2
  %194 = load ptr, ptr %193, align 4
  tail call void @cec_unregister_adapter(ptr noundef %194) #12
  %195 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 353, i32 3
  %196 = load ptr, ptr %195, align 4
  tail call void @cec_unregister_adapter(ptr noundef %196) #12
  %197 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 353, i32 4
  %198 = load ptr, ptr %197, align 4
  tail call void @cec_unregister_adapter(ptr noundef %198) #12
  %199 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 353, i32 5
  %200 = load ptr, ptr %199, align 4
  tail call void @cec_unregister_adapter(ptr noundef %200) #12
  %201 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 353, i32 6
  %202 = load ptr, ptr %201, align 4
  tail call void @cec_unregister_adapter(ptr noundef %202) #12
  %203 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 353, i32 7
  %204 = load ptr, ptr %203, align 4
  tail call void @cec_unregister_adapter(ptr noundef %204) #12
  %205 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 353, i32 8
  %206 = load ptr, ptr %205, align 4
  tail call void @cec_unregister_adapter(ptr noundef %206) #12
  %207 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 353, i32 9
  %208 = load ptr, ptr %207, align 4
  tail call void @cec_unregister_adapter(ptr noundef %208) #12
  %209 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 353, i32 10
  %210 = load ptr, ptr %209, align 4
  tail call void @cec_unregister_adapter(ptr noundef %210) #12
  %211 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 353, i32 11
  %212 = load ptr, ptr %211, align 4
  tail call void @cec_unregister_adapter(ptr noundef %212) #12
  %213 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 353, i32 12
  %214 = load ptr, ptr %213, align 4
  tail call void @cec_unregister_adapter(ptr noundef %214) #12
  %215 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 353, i32 13
  %216 = load ptr, ptr %215, align 4
  tail call void @cec_unregister_adapter(ptr noundef %216) #12
  %217 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 353, i32 14
  %218 = load ptr, ptr %217, align 4
  tail call void @cec_unregister_adapter(ptr noundef %218) #12
  %219 = getelementptr %struct.vivid_dev, ptr %8, i32 0, i32 353, i32 15
  %220 = load ptr, ptr %219, align 4
  tail call void @cec_unregister_adapter(ptr noundef %220) #12
  %221 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 355
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %226, label %224

224:                                              ; preds = %186
  %225 = tail call i32 @kthread_stop(ptr noundef nonnull %222) #12
  br label %226

226:                                              ; preds = %224, %186
  %227 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 1
  %228 = tail call i32 @v4l2_device_put(ptr noundef %227) #12
  store ptr null, ptr %7, align 4
  %229 = load i32, ptr @n_devs, align 4
  br label %230

230:                                              ; preds = %226, %4
  %231 = phi i32 [ %5, %4 ], [ %229, %226 ]
  %232 = add nuw i32 %6, 1
  %233 = icmp ult i32 %232, %231
  br i1 %233, label %4, label %234

234:                                              ; preds = %230, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_font(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_set_font(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vivid_dev_release(ptr noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -4
  tail call void @vivid_free_controls(ptr noundef %2) #12
  tail call void @v4l2_device_unregister(ptr noundef %0) #12
  %3 = getelementptr i8, ptr %0, i32 92
  tail call void @media_device_cleanup(ptr noundef %3) #12
  %4 = getelementptr i8, ptr %0, i32 18272
  %5 = load ptr, ptr %4, align 4
  tail call void @vfree(ptr noundef %5) #12
  %6 = getelementptr i8, ptr %0, i32 18276
  %7 = load ptr, ptr %6, align 8
  tail call void @vfree(ptr noundef %7) #12
  %8 = getelementptr i8, ptr %0, i32 17320
  %9 = load ptr, ptr %8, align 4
  tail call void @vfree(ptr noundef %9) #12
  %10 = getelementptr i8, ptr %0, i32 17424
  %11 = load ptr, ptr %10, align 4
  tail call void @vfree(ptr noundef %11) #12
  %12 = getelementptr i8, ptr %0, i32 18316
  %13 = load ptr, ptr %12, align 8
  tail call void @vfree(ptr noundef %13) #12
  %14 = getelementptr i8, ptr %0, i32 18976
  tail call void @tpg_free(ptr noundef %14) #12
  %15 = getelementptr i8, ptr %0, i32 13188
  %16 = load ptr, ptr %15, align 8
  tail call void @kfree(ptr noundef %16) #12
  %17 = getelementptr i8, ptr %0, i32 13192
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #12
  tail call void @kfree(ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpg_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tpg_s_fourcc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_create_controls(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_update_format_cap(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_update_format_out(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_set_touch(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dma_coerce_mask_and_coherent(ptr noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16
  store ptr %2, ptr %3, align 4
  %4 = tail call i32 @dma_set_mask(ptr noundef %0, i64 noundef 4294967295) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 @dma_set_coherent_mask(ptr noundef %0, i64 noundef 4294967295) #12
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vivid_create_queues(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 61
  %3 = load i8, ptr %2, align 2, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 242
  %7 = tail call fastcc i32 @vivid_create_queue(ptr noundef %0, ptr noundef %6, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @vivid_vid_cap_qops)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %77

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 62
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 286
  %15 = tail call fastcc i32 @vivid_create_queue(ptr noundef %0, ptr noundef %14, i32 noundef 2, i32 noundef 2, ptr noundef nonnull @vivid_vid_out_qops)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %77

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 63
  %19 = load i8, ptr %18, align 8, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 244
  %23 = tail call fastcc i32 @vivid_create_queue(ptr noundef %0, ptr noundef %22, i32 noundef 4, i32 noundef 2, ptr noundef nonnull @vivid_vbi_cap_qops)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %77

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 66
  %27 = load i8, ptr %26, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 288
  %31 = tail call fastcc i32 @vivid_create_queue(ptr noundef %0, ptr noundef %30, i32 noundef 5, i32 noundef 2, ptr noundef nonnull @vivid_vbi_out_qops)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 71
  %35 = load i8, ptr %34, align 8, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 313
  %39 = tail call fastcc i32 @vivid_create_queue(ptr noundef %0, ptr noundef %38, i32 noundef 11, i32 noundef 8, ptr noundef nonnull @vivid_sdr_cap_qops)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %37, %33
  %42 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 73
  %43 = load i8, ptr %42, align 2, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 246
  %47 = tail call fastcc i32 @vivid_create_queue(ptr noundef %0, ptr noundef %46, i32 noundef 13, i32 noundef 2, ptr noundef nonnull @vivid_meta_cap_qops)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %45, %41
  %50 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 74
  %51 = load i8, ptr %50, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 290
  %55 = tail call fastcc i32 @vivid_create_queue(ptr noundef %0, ptr noundef %54, i32 noundef 14, i32 noundef 1, ptr noundef nonnull @vivid_meta_out_qops)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %53, %49
  %58 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 76
  %59 = load i8, ptr %58, align 1, !range !8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 248
  %63 = tail call fastcc i32 @vivid_create_queue(ptr noundef %0, ptr noundef %62, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @vivid_touch_cap_qops)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61, %57
  %66 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 72
  %67 = load i8, ptr %66, align 1, !range !8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = tail call i32 @vivid_fb_init(ptr noundef %0) #12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %74 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %73, i32 noundef %75) #13
  br label %77

77:                                               ; preds = %72, %69, %65, %61, %53, %45, %37, %29, %21, %13, %5
  %78 = phi i32 [ %7, %5 ], [ %15, %13 ], [ %23, %21 ], [ %31, %29 ], [ %39, %37 ], [ %47, %45 ], [ %55, %53 ], [ %63, %61 ], [ %70, %69 ], [ 0, %72 ], [ 0, %65 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vivid_create_devnodes(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 61
  %6 = load i8, ptr %5, align 2, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18, i32 12
  %11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.20, i32 noundef %1)
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18, i32 3
  store ptr @vivid_fops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18, i32 24
  store ptr @vivid_ioctl_ops, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 40
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18, i32 4
  store i32 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18, i32 23
  store ptr @video_device_release_empty, ptr %17, align 8
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18, i32 7
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 242
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18, i32 10
  store ptr %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18, i32 22
  store i64 %2, ptr %22, align 8
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 39
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18, i32 26
  store ptr %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18, i32 5, i32 8
  store ptr %0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 3
  %27 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 3, i32 4
  store i32 1, ptr %27, align 4
  %28 = tail call i32 @media_entity_pads_init(ptr noundef %9, i16 noundef zeroext 1, ptr noundef %26) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %455

30:                                               ; preds = %8
  %31 = getelementptr [64 x i32], ptr @vid_cap_nr, i32 0, i32 %1
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %12, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @__video_register_device(ptr noundef %9, i32 noundef 0, i32 noundef %32, i32 noundef 1, ptr noundef %34) #12
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %455, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %39 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18, i32 5, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18, i32 5
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = phi ptr [ %44, %42 ], [ %40, %37 ]
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %38, ptr noundef %46) #13
  br label %48

48:                                               ; preds = %45, %4
  %49 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 62
  %50 = load i8, ptr %49, align 1, !range !8
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %93, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 20
  %54 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 20, i32 12
  %55 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %54, i32 noundef 32, ptr noundef nonnull @.str.22, i32 noundef %1)
  %56 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 20, i32 14
  store i32 1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 20, i32 3
  store ptr @vivid_fops, ptr %57, align 4
  %58 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 20, i32 24
  store ptr @vivid_ioctl_ops, ptr %58, align 4
  %59 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 41
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 20, i32 4
  store i32 %60, ptr %61, align 8
  %62 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 20, i32 23
  store ptr @video_device_release_empty, ptr %62, align 8
  %63 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1
  %64 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 20, i32 7
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 286
  %66 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 20, i32 10
  store ptr %65, ptr %66, align 8
  %67 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 20, i32 22
  store i64 %3, ptr %67, align 8
  %68 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 39
  %69 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 20, i32 26
  store ptr %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 20, i32 5, i32 8
  store ptr %0, ptr %70, align 8
  %71 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 4
  %72 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 4, i32 4
  store i32 2, ptr %72, align 4
  %73 = tail call i32 @media_entity_pads_init(ptr noundef %53, i16 noundef zeroext 1, ptr noundef %71) #12
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %455

75:                                               ; preds = %52
  %76 = getelementptr [64 x i32], ptr @vid_out_nr, i32 0, i32 %1
  %77 = load i32, ptr %76, align 4
  %78 = load ptr, ptr %57, align 4
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @__video_register_device(ptr noundef %53, i32 noundef 0, i32 noundef %77, i32 noundef 1, ptr noundef %79) #12
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %455, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %84 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 20, i32 5, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 20, i32 5
  %89 = load ptr, ptr %88, align 4
  br label %90

90:                                               ; preds = %87, %82
  %91 = phi ptr [ %89, %87 ], [ %85, %82 ]
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %83, ptr noundef %91) #13
  br label %93

93:                                               ; preds = %90, %48
  %94 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 63
  %95 = load i8, ptr %94, align 8, !range !8
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %148, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22
  %99 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22, i32 12
  %100 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %99, i32 noundef 32, ptr noundef nonnull @.str.24, i32 noundef %1)
  %101 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22, i32 3
  store ptr @vivid_fops, ptr %101, align 4
  %102 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22, i32 24
  store ptr @vivid_ioctl_ops, ptr %102, align 4
  %103 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 42
  %104 = load i32, ptr %103, align 8
  %105 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22, i32 4
  store i32 %104, ptr %105, align 8
  %106 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22, i32 23
  store ptr @video_device_release_empty, ptr %106, align 8
  %107 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1
  %108 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22, i32 7
  store ptr %107, ptr %108, align 4
  %109 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 244
  %110 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22, i32 10
  store ptr %109, ptr %110, align 8
  %111 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 39
  %112 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22, i32 26
  store ptr %111, ptr %112, align 8
  %113 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22, i32 22
  store i64 %2, ptr %113, align 8
  %114 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22, i32 5, i32 8
  store ptr %0, ptr %114, align 8
  %115 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 5
  %116 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 5, i32 4
  store i32 1, ptr %116, align 4
  %117 = tail call i32 @media_entity_pads_init(ptr noundef %98, i16 noundef zeroext 1, ptr noundef %115) #12
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %455

119:                                              ; preds = %97
  %120 = getelementptr [64 x i32], ptr @vbi_cap_nr, i32 0, i32 %1
  %121 = load i32, ptr %120, align 4
  %122 = load ptr, ptr %101, align 4
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 @__video_register_device(ptr noundef %98, i32 noundef 1, i32 noundef %121, i32 noundef 1, ptr noundef %123) #12
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %455, label %126

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %128 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22, i32 5, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22, i32 5
  %133 = load ptr, ptr %132, align 4
  br label %134

134:                                              ; preds = %131, %126
  %135 = phi ptr [ %133, %131 ], [ %129, %126 ]
  %136 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 64
  %137 = load i8, ptr %136, align 1, !range !8
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 65
  %141 = load i8, ptr %140, align 2, !range !8
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139, %134
  %144 = phi ptr [ @.str.27, %139 ], [ @.str.28, %134 ]
  br label %145

145:                                              ; preds = %143, %139
  %146 = phi ptr [ %144, %143 ], [ @.str.26, %139 ]
  %147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %127, ptr noundef %135, ptr noundef nonnull %146) #13
  br label %148

148:                                              ; preds = %145, %93
  %149 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 66
  %150 = load i8, ptr %149, align 1, !range !8
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %204, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 24
  %154 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 24, i32 12
  %155 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %154, i32 noundef 32, ptr noundef nonnull @.str.29, i32 noundef %1)
  %156 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 24, i32 14
  store i32 1, ptr %156, align 4
  %157 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 24, i32 3
  store ptr @vivid_fops, ptr %157, align 4
  %158 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 24, i32 24
  store ptr @vivid_ioctl_ops, ptr %158, align 4
  %159 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 43
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 24, i32 4
  store i32 %160, ptr %161, align 8
  %162 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 24, i32 23
  store ptr @video_device_release_empty, ptr %162, align 8
  %163 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1
  %164 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 24, i32 7
  store ptr %163, ptr %164, align 4
  %165 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 288
  %166 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 24, i32 10
  store ptr %165, ptr %166, align 8
  %167 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 39
  %168 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 24, i32 26
  store ptr %167, ptr %168, align 8
  %169 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 24, i32 22
  store i64 %3, ptr %169, align 8
  %170 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 24, i32 5, i32 8
  store ptr %0, ptr %170, align 8
  %171 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 6, i32 4
  store i32 2, ptr %172, align 4
  %173 = tail call i32 @media_entity_pads_init(ptr noundef %153, i16 noundef zeroext 1, ptr noundef %171) #12
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %455

175:                                              ; preds = %152
  %176 = getelementptr [64 x i32], ptr @vbi_out_nr, i32 0, i32 %1
  %177 = load i32, ptr %176, align 4
  %178 = load ptr, ptr %157, align 4
  %179 = load ptr, ptr %178, align 4
  %180 = tail call i32 @__video_register_device(ptr noundef %153, i32 noundef 1, i32 noundef %177, i32 noundef 1, ptr noundef %179) #12
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %455, label %182

182:                                              ; preds = %175
  %183 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %184 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 24, i32 5, i32 3
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 24, i32 5
  %189 = load ptr, ptr %188, align 4
  br label %190

190:                                              ; preds = %187, %182
  %191 = phi ptr [ %189, %187 ], [ %185, %182 ]
  %192 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 67
  %193 = load i8, ptr %192, align 4, !range !8
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 68
  %197 = load i8, ptr %196, align 1, !range !8
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %195, %190
  %200 = phi ptr [ @.str.27, %195 ], [ @.str.28, %190 ]
  br label %201

201:                                              ; preds = %199, %195
  %202 = phi ptr [ %200, %199 ], [ @.str.26, %195 ]
  %203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %183, ptr noundef %191, ptr noundef nonnull %202) #13
  br label %204

204:                                              ; preds = %201, %148
  %205 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 71
  %206 = load i8, ptr %205, align 8, !range !8
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %247, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 30
  %210 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 30, i32 12
  %211 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %210, i32 noundef 32, ptr noundef nonnull @.str.31, i32 noundef %1)
  %212 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 30, i32 3
  store ptr @vivid_fops, ptr %212, align 4
  %213 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 30, i32 24
  store ptr @vivid_ioctl_ops, ptr %213, align 4
  %214 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 44
  %215 = load i32, ptr %214, align 8
  %216 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 30, i32 4
  store i32 %215, ptr %216, align 8
  %217 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 30, i32 23
  store ptr @video_device_release_empty, ptr %217, align 8
  %218 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1
  %219 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 30, i32 7
  store ptr %218, ptr %219, align 4
  %220 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 313
  %221 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 30, i32 10
  store ptr %220, ptr %221, align 8
  %222 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 39
  %223 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 30, i32 26
  store ptr %222, ptr %223, align 8
  %224 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 30, i32 5, i32 8
  store ptr %0, ptr %224, align 8
  %225 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 7
  %226 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 7, i32 4
  store i32 1, ptr %226, align 4
  %227 = tail call i32 @media_entity_pads_init(ptr noundef %209, i16 noundef zeroext 1, ptr noundef %225) #12
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %455

229:                                              ; preds = %208
  %230 = getelementptr [64 x i32], ptr @sdr_cap_nr, i32 0, i32 %1
  %231 = load i32, ptr %230, align 4
  %232 = load ptr, ptr %212, align 4
  %233 = load ptr, ptr %232, align 4
  %234 = tail call i32 @__video_register_device(ptr noundef %209, i32 noundef 4, i32 noundef %231, i32 noundef 1, ptr noundef %233) #12
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %455, label %236

236:                                              ; preds = %229
  %237 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %238 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 30, i32 5, i32 3
  %239 = load ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 30, i32 5
  %243 = load ptr, ptr %242, align 4
  br label %244

244:                                              ; preds = %241, %236
  %245 = phi ptr [ %243, %241 ], [ %239, %236 ]
  %246 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %237, ptr noundef %245) #13
  br label %247

247:                                              ; preds = %244, %204
  %248 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 69
  %249 = load i8, ptr %248, align 2, !range !8
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %281, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 26
  %253 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 26, i32 12
  %254 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %253, i32 noundef 32, ptr noundef nonnull @.str.32, i32 noundef %1)
  %255 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 26, i32 3
  store ptr @vivid_radio_fops, ptr %255, align 4
  %256 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 26, i32 24
  store ptr @vivid_ioctl_ops, ptr %256, align 4
  %257 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 45
  %258 = load i32, ptr %257, align 4
  %259 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 26, i32 4
  store i32 %258, ptr %259, align 8
  %260 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 26, i32 23
  store ptr @video_device_release_empty, ptr %260, align 8
  %261 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1
  %262 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 26, i32 7
  store ptr %261, ptr %262, align 4
  %263 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 39
  %264 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 26, i32 26
  store ptr %263, ptr %264, align 8
  %265 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 26, i32 5, i32 8
  store ptr %0, ptr %265, align 8
  %266 = getelementptr [64 x i32], ptr @radio_rx_nr, i32 0, i32 %1
  %267 = load i32, ptr %266, align 4
  %268 = tail call i32 @__video_register_device(ptr noundef %252, i32 noundef 2, i32 noundef %267, i32 noundef 1, ptr noundef nonnull @__this_module) #12
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %455, label %270

270:                                              ; preds = %251
  %271 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %272 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 26, i32 5, i32 3
  %273 = load ptr, ptr %272, align 4
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 26, i32 5
  %277 = load ptr, ptr %276, align 4
  br label %278

278:                                              ; preds = %275, %270
  %279 = phi ptr [ %277, %275 ], [ %273, %270 ]
  %280 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %271, ptr noundef %279) #13
  br label %281

281:                                              ; preds = %278, %247
  %282 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 70
  %283 = load i8, ptr %282, align 1, !range !8
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %316, label %285

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 28
  %287 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 28, i32 12
  %288 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %287, i32 noundef 32, ptr noundef nonnull @.str.34, i32 noundef %1)
  %289 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 28, i32 14
  store i32 1, ptr %289, align 4
  %290 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 28, i32 3
  store ptr @vivid_radio_fops, ptr %290, align 4
  %291 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 28, i32 24
  store ptr @vivid_ioctl_ops, ptr %291, align 4
  %292 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 46
  %293 = load i32, ptr %292, align 8
  %294 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 28, i32 4
  store i32 %293, ptr %294, align 8
  %295 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 28, i32 23
  store ptr @video_device_release_empty, ptr %295, align 8
  %296 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1
  %297 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 28, i32 7
  store ptr %296, ptr %297, align 4
  %298 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 39
  %299 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 28, i32 26
  store ptr %298, ptr %299, align 8
  %300 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 28, i32 5, i32 8
  store ptr %0, ptr %300, align 8
  %301 = getelementptr [64 x i32], ptr @radio_tx_nr, i32 0, i32 %1
  %302 = load i32, ptr %301, align 4
  %303 = tail call i32 @__video_register_device(ptr noundef %286, i32 noundef 2, i32 noundef %302, i32 noundef 1, ptr noundef nonnull @__this_module) #12
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %455, label %305

305:                                              ; preds = %285
  %306 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %307 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 28, i32 5, i32 3
  %308 = load ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %313

310:                                              ; preds = %305
  %311 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 28, i32 5
  %312 = load ptr, ptr %311, align 4
  br label %313

313:                                              ; preds = %310, %305
  %314 = phi ptr [ %312, %310 ], [ %308, %305 ]
  %315 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %306, ptr noundef %314) #13
  br label %316

316:                                              ; preds = %313, %281
  %317 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 73
  %318 = load i8, ptr %317, align 2, !range !8
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %360, label %320

320:                                              ; preds = %316
  %321 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 32
  %322 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 32, i32 12
  %323 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %322, i32 noundef 32, ptr noundef nonnull @.str.36, i32 noundef %1)
  %324 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 32, i32 3
  store ptr @vivid_fops, ptr %324, align 4
  %325 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 32, i32 24
  store ptr @vivid_ioctl_ops, ptr %325, align 4
  %326 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 47
  %327 = load i32, ptr %326, align 4
  %328 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 32, i32 4
  store i32 %327, ptr %328, align 8
  %329 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 32, i32 23
  store ptr @video_device_release_empty, ptr %329, align 8
  %330 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1
  %331 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 32, i32 7
  store ptr %330, ptr %331, align 4
  %332 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 246
  %333 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 32, i32 10
  store ptr %332, ptr %333, align 8
  %334 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 39
  %335 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 32, i32 26
  store ptr %334, ptr %335, align 8
  %336 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 32, i32 22
  store i64 %2, ptr %336, align 8
  %337 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 32, i32 5, i32 8
  store ptr %0, ptr %337, align 8
  %338 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 8
  %339 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 8, i32 4
  store i32 1, ptr %339, align 4
  %340 = tail call i32 @media_entity_pads_init(ptr noundef %321, i16 noundef zeroext 1, ptr noundef %338) #12
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %455

342:                                              ; preds = %320
  %343 = getelementptr [64 x i32], ptr @meta_cap_nr, i32 0, i32 %1
  %344 = load i32, ptr %343, align 4
  %345 = load ptr, ptr %324, align 4
  %346 = load ptr, ptr %345, align 4
  %347 = tail call i32 @__video_register_device(ptr noundef %321, i32 noundef 0, i32 noundef %344, i32 noundef 1, ptr noundef %346) #12
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %455, label %349

349:                                              ; preds = %342
  %350 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %351 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 32, i32 5, i32 3
  %352 = load ptr, ptr %351, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %354, label %357

354:                                              ; preds = %349
  %355 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 32, i32 5
  %356 = load ptr, ptr %355, align 4
  br label %357

357:                                              ; preds = %354, %349
  %358 = phi ptr [ %356, %354 ], [ %352, %349 ]
  %359 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %350, ptr noundef %358) #13
  br label %360

360:                                              ; preds = %357, %316
  %361 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 74
  %362 = load i8, ptr %361, align 1, !range !8
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %405, label %364

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 34
  %366 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 34, i32 12
  %367 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %366, i32 noundef 32, ptr noundef nonnull @.str.38, i32 noundef %1)
  %368 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 34, i32 14
  store i32 1, ptr %368, align 4
  %369 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 34, i32 3
  store ptr @vivid_fops, ptr %369, align 4
  %370 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 34, i32 24
  store ptr @vivid_ioctl_ops, ptr %370, align 4
  %371 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 48
  %372 = load i32, ptr %371, align 8
  %373 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 34, i32 4
  store i32 %372, ptr %373, align 8
  %374 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 34, i32 23
  store ptr @video_device_release_empty, ptr %374, align 8
  %375 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1
  %376 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 34, i32 7
  store ptr %375, ptr %376, align 4
  %377 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 290
  %378 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 34, i32 10
  store ptr %377, ptr %378, align 8
  %379 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 39
  %380 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 34, i32 26
  store ptr %379, ptr %380, align 8
  %381 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 34, i32 22
  store i64 %3, ptr %381, align 8
  %382 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 34, i32 5, i32 8
  store ptr %0, ptr %382, align 8
  %383 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 9
  %384 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 9, i32 4
  store i32 2, ptr %384, align 4
  %385 = tail call i32 @media_entity_pads_init(ptr noundef %365, i16 noundef zeroext 1, ptr noundef %383) #12
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %455

387:                                              ; preds = %364
  %388 = getelementptr [64 x i32], ptr @meta_out_nr, i32 0, i32 %1
  %389 = load i32, ptr %388, align 4
  %390 = load ptr, ptr %369, align 4
  %391 = load ptr, ptr %390, align 4
  %392 = tail call i32 @__video_register_device(ptr noundef %365, i32 noundef 0, i32 noundef %389, i32 noundef 1, ptr noundef %391) #12
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %455, label %394

394:                                              ; preds = %387
  %395 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %396 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 34, i32 5, i32 3
  %397 = load ptr, ptr %396, align 4
  %398 = icmp eq ptr %397, null
  br i1 %398, label %399, label %402

399:                                              ; preds = %394
  %400 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 34, i32 5
  %401 = load ptr, ptr %400, align 4
  br label %402

402:                                              ; preds = %399, %394
  %403 = phi ptr [ %401, %399 ], [ %397, %394 ]
  %404 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %395, ptr noundef %403) #13
  br label %405

405:                                              ; preds = %402, %360
  %406 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 76
  %407 = load i8, ptr %406, align 1, !range !8
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %449, label %409

409:                                              ; preds = %405
  %410 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 36
  %411 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 36, i32 12
  %412 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %411, i32 noundef 32, ptr noundef nonnull @.str.40, i32 noundef %1)
  %413 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 36, i32 3
  store ptr @vivid_fops, ptr %413, align 4
  %414 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 36, i32 24
  store ptr @vivid_ioctl_ops, ptr %414, align 4
  %415 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 49
  %416 = load i32, ptr %415, align 4
  %417 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 36, i32 4
  store i32 %416, ptr %417, align 8
  %418 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 36, i32 23
  store ptr @video_device_release_empty, ptr %418, align 8
  %419 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1
  %420 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 36, i32 7
  store ptr %419, ptr %420, align 4
  %421 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 248
  %422 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 36, i32 10
  store ptr %421, ptr %422, align 8
  %423 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 36, i32 22
  store i64 %2, ptr %423, align 8
  %424 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 39
  %425 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 36, i32 26
  store ptr %424, ptr %425, align 8
  %426 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 36, i32 5, i32 8
  store ptr %0, ptr %426, align 8
  %427 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 10
  %428 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 10, i32 4
  store i32 1, ptr %428, align 4
  %429 = tail call i32 @media_entity_pads_init(ptr noundef %410, i16 noundef zeroext 1, ptr noundef %427) #12
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %455

431:                                              ; preds = %409
  %432 = getelementptr [64 x i32], ptr @touch_cap_nr, i32 0, i32 %1
  %433 = load i32, ptr %432, align 4
  %434 = load ptr, ptr %413, align 4
  %435 = load ptr, ptr %434, align 4
  %436 = tail call i32 @__video_register_device(ptr noundef %410, i32 noundef 5, i32 noundef %433, i32 noundef 1, ptr noundef %435) #12
  %437 = icmp slt i32 %436, 0
  br i1 %437, label %455, label %438

438:                                              ; preds = %431
  %439 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %440 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 36, i32 5, i32 3
  %441 = load ptr, ptr %440, align 4
  %442 = icmp eq ptr %441, null
  br i1 %442, label %443, label %446

443:                                              ; preds = %438
  %444 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 36, i32 5
  %445 = load ptr, ptr %444, align 4
  br label %446

446:                                              ; preds = %443, %438
  %447 = phi ptr [ %445, %443 ], [ %441, %438 ]
  %448 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %439, ptr noundef %447) #13
  br label %449

449:                                              ; preds = %446, %405
  %450 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 2
  %451 = tail call i32 @__media_device_register(ptr noundef %450, ptr noundef nonnull @__this_module) #12
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %455, label %453

453:                                              ; preds = %449
  %454 = load ptr, ptr %450, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %454, ptr noundef nonnull @.str.42, i32 noundef %451) #13
  br label %455

455:                                              ; preds = %453, %449, %431, %409, %387, %364, %342, %320, %285, %251, %229, %208, %175, %152, %119, %97, %75, %52, %30, %8
  %456 = phi i32 [ %451, %453 ], [ %28, %8 ], [ %35, %30 ], [ %73, %52 ], [ %80, %75 ], [ %117, %97 ], [ %124, %119 ], [ %173, %152 ], [ %180, %175 ], [ %227, %208 ], [ %234, %229 ], [ %268, %251 ], [ %303, %285 ], [ %340, %320 ], [ %347, %342 ], [ %385, %364 ], [ %392, %387 ], [ %429, %409 ], [ %436, %431 ], [ 0, %449 ]
  ret i32 %456
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_req_validate(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 12693
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8 0, ptr %3, align 1
  br label %9

7:                                                ; preds = %1
  %8 = tail call i32 @vb2_request_validate(ptr noundef %0) #12
  br label %9

9:                                                ; preds = %7, %6
  %10 = phi i32 [ -22, %6 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_request_queue(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_request_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_free_controls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vivid_create_queue(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 {
  switch i32 %2, label %32 [
    i32 1, label %6
    i32 2, label %11
    i32 4, label %16
    i32 5, label %21
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 1, i32 9
  br label %26

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 50
  %13 = load i8, ptr %12, align 8, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i32 2, i32 10
  br label %29

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 64
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i32 6, i32 4
  br label %26

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 67
  %23 = load i8, ptr %22, align 4, !range !8
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i32 7, i32 5
  br label %29

26:                                               ; preds = %16, %6
  %27 = phi i32 [ %10, %6 ], [ %20, %16 ]
  store i32 %27, ptr %1, align 4
  %28 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 1
  store i32 17, ptr %28, align 4
  br label %34

29:                                               ; preds = %21, %11
  %30 = phi i32 [ %15, %11 ], [ %25, %21 ]
  store i32 %30, ptr %1, align 4
  %31 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 1
  store i32 17, ptr %31, align 4
  br label %39

32:                                               ; preds = %5
  store i32 %2, ptr %1, align 4
  %33 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 1
  store i32 17, ptr %33, align 4
  switch i32 %2, label %34 [
    i32 12, label %39
    i32 10, label %39
    i32 8, label %39
    i32 7, label %39
    i32 3, label %39
  ]

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %28, %26 ], [ %33, %32 ]
  %36 = phi i32 [ %27, %26 ], [ %2, %32 ]
  %37 = icmp eq i32 %36, 14
  %38 = select i1 %37, i32 25, i32 21
  br label %39

39:                                               ; preds = %34, %32, %32, %32, %32, %32, %29
  %40 = phi ptr [ %35, %34 ], [ %33, %32 ], [ %33, %32 ], [ %33, %32 ], [ %33, %32 ], [ %33, %32 ], [ %31, %29 ]
  %41 = phi i32 [ %38, %34 ], [ 25, %32 ], [ 25, %32 ], [ 25, %32 ], [ 25, %32 ], [ 25, %32 ], [ 25, %29 ]
  store i32 %41, ptr %40, align 4
  %42 = load i32, ptr %0, align 8
  %43 = getelementptr [64 x i32], ptr @allocators, i32 0, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = or i32 %41, 2
  store i32 %47, ptr %40, align 4
  br label %48

48:                                               ; preds = %46, %39
  %49 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  store ptr %0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 12
  store i32 648, ptr %50, align 4
  %51 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 7
  store ptr %4, ptr %51, align 4
  %52 = load i32, ptr %0, align 8
  %53 = getelementptr [64 x i32], ptr @allocators, i32 0, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 1
  %56 = select i1 %55, ptr @vb2_dma_contig_memops, ptr @vb2_vmalloc_memops
  %57 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 8
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 13
  store i32 8192, ptr %58, align 4
  %59 = load i32, ptr %0, align 8
  %60 = getelementptr [64 x i32], ptr @supports_requests, i32 0, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 %3, i32 0
  %64 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 15
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 39
  %66 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 5
  store ptr %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 2
  store ptr %68, ptr %69, align 4
  %70 = load i32, ptr %0, align 8
  %71 = getelementptr [64 x i32], ptr @supports_requests, i32 0, i32 %70
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 4
  %74 = trunc i32 %72 to i16
  %75 = load i16, ptr %73, align 4
  %76 = shl i16 %74, 5
  %77 = and i16 %76, 32
  %78 = and i16 %75, -33
  %79 = or i16 %77, %78
  store i16 %79, ptr %73, align 4
  %80 = load i32, ptr %0, align 8
  %81 = getelementptr [64 x i32], ptr @supports_requests, i32 0, i32 %80
  %82 = load i32, ptr %81, align 4
  %83 = icmp ugt i32 %82, 1
  %84 = select i1 %83, i16 64, i16 0
  %85 = and i16 %79, -65
  %86 = or i16 %84, %85
  store i16 %86, ptr %73, align 4
  %87 = load i32, ptr %0, align 8
  %88 = getelementptr [64 x i32], ptr @cache_hints, i32 0, i32 %87
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 1
  %91 = select i1 %90, i16 512, i16 0
  %92 = and i16 %86, -513
  %93 = or i16 %91, %92
  store i16 %93, ptr %73, align 4
  %94 = tail call i32 @vb2_queue_init(ptr noundef %1) #12
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_fb_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_fop_release(ptr noundef %0) #4 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @video_devdata(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 39
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = load i8, ptr @no_error_inj, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %157

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @v4l2_fh_is_singular(ptr noundef %11) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %157, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 152
  %16 = load i8, ptr %15, align 8, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %157, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 17
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %157

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 61
  %25 = load i8, ptr %24, align 2, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 18, i32 19
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #12
  %30 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 18, i32 20
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp ne ptr %31, %30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #12
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %27, %23
  %35 = phi i32 [ %33, %27 ], [ 0, %23 ]
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 62
  %37 = load i8, ptr %36, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 20, i32 19
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #12
  %42 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 20, i32 20
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp ne ptr %43, %42
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %41) #12
  %45 = zext i1 %44 to i32
  br label %46

46:                                               ; preds = %39, %34
  %47 = phi i32 [ %45, %39 ], [ 0, %34 ]
  %48 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 63
  %49 = load i8, ptr %48, align 8, !range !8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 22, i32 19
  %53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %52) #12
  %54 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 22, i32 20
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp ne ptr %55, %54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %53) #12
  %57 = zext i1 %56 to i32
  br label %58

58:                                               ; preds = %51, %46
  %59 = phi i32 [ %57, %51 ], [ 0, %46 ]
  %60 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 66
  %61 = load i8, ptr %60, align 1, !range !8
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 24, i32 19
  %65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %64) #12
  %66 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 24, i32 20
  %67 = load volatile ptr, ptr %66, align 4
  %68 = icmp ne ptr %67, %66
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %65) #12
  %69 = zext i1 %68 to i32
  br label %70

70:                                               ; preds = %63, %58
  %71 = phi i32 [ %69, %63 ], [ 0, %58 ]
  %72 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 69
  %73 = load i8, ptr %72, align 2, !range !8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 26, i32 19
  %77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %76) #12
  %78 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 26, i32 20
  %79 = load volatile ptr, ptr %78, align 4
  %80 = icmp ne ptr %79, %78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %76, i32 noundef %77) #12
  %81 = zext i1 %80 to i32
  br label %82

82:                                               ; preds = %75, %70
  %83 = phi i32 [ %81, %75 ], [ 0, %70 ]
  %84 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 70
  %85 = load i8, ptr %84, align 1, !range !8
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 28, i32 19
  %89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %88) #12
  %90 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 28, i32 20
  %91 = load volatile ptr, ptr %90, align 4
  %92 = icmp ne ptr %91, %90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %88, i32 noundef %89) #12
  %93 = zext i1 %92 to i32
  br label %94

94:                                               ; preds = %87, %82
  %95 = phi i32 [ %93, %87 ], [ 0, %82 ]
  %96 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 71
  %97 = load i8, ptr %96, align 8, !range !8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 30, i32 19
  %101 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %100) #12
  %102 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 30, i32 20
  %103 = load volatile ptr, ptr %102, align 4
  %104 = icmp ne ptr %103, %102
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %100, i32 noundef %101) #12
  %105 = zext i1 %104 to i32
  br label %106

106:                                              ; preds = %99, %94
  %107 = phi i32 [ %105, %99 ], [ 0, %94 ]
  %108 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 73
  %109 = load i8, ptr %108, align 2, !range !8
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 32, i32 19
  %113 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %112) #12
  %114 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 32, i32 20
  %115 = load volatile ptr, ptr %114, align 4
  %116 = icmp ne ptr %115, %114
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %112, i32 noundef %113) #12
  %117 = zext i1 %116 to i32
  br label %118

118:                                              ; preds = %111, %106
  %119 = phi i32 [ %117, %111 ], [ 0, %106 ]
  %120 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 74
  %121 = load i8, ptr %120, align 1, !range !8
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 34, i32 19
  %125 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %124) #12
  %126 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 34, i32 20
  %127 = load volatile ptr, ptr %126, align 4
  %128 = icmp ne ptr %127, %126
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %124, i32 noundef %125) #12
  %129 = zext i1 %128 to i32
  br label %130

130:                                              ; preds = %123, %118
  %131 = phi i32 [ %129, %123 ], [ 0, %118 ]
  %132 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 76
  %133 = load i8, ptr %132, align 1, !range !8
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 36, i32 19
  %137 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %136) #12
  %138 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 36, i32 20
  %139 = load volatile ptr, ptr %138, align 4
  %140 = icmp ne ptr %139, %138
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %136, i32 noundef %137) #12
  %141 = zext i1 %140 to i32
  br label %142

142:                                              ; preds = %135, %130
  %143 = phi i32 [ %141, %135 ], [ 0, %130 ]
  %144 = add nuw nsw i32 %47, %35
  %145 = add nuw nsw i32 %144, %59
  %146 = add nuw nsw i32 %145, %71
  %147 = add nuw nsw i32 %146, %83
  %148 = add nuw nsw i32 %147, %95
  %149 = add nuw nsw i32 %148, %107
  %150 = add nuw nsw i32 %149, %119
  %151 = add nuw nsw i32 %150, %131
  %152 = add nuw nsw i32 %151, %143
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %157

154:                                              ; preds = %142
  %155 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %155) #13
  tail call fastcc void @vivid_reconnect(ptr noundef %4)
  br label %157

157:                                              ; preds = %154, %142, %18, %14, %9, %1
  tail call void @mutex_unlock(ptr noundef %6) #12
  %158 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 190
  %161 = load ptr, ptr %160, align 8
  %162 = icmp eq ptr %159, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  store ptr null, ptr %160, align 8
  %164 = load ptr, ptr %158, align 8
  br label %165

165:                                              ; preds = %163, %157
  %166 = phi ptr [ %164, %163 ], [ %159, %157 ]
  %167 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 344
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %166, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 343
  store i32 0, ptr %171, align 8
  store ptr null, ptr %167, align 4
  %172 = load ptr, ptr %158, align 8
  br label %173

173:                                              ; preds = %170, %165
  %174 = phi ptr [ %172, %170 ], [ %166, %165 ]
  %175 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 349
  %176 = load ptr, ptr %175, align 8
  %177 = icmp eq ptr %174, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 348
  store i32 0, ptr %179, align 4
  store ptr null, ptr %175, align 8
  br label %180

180:                                              ; preds = %178, %173
  %181 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 10
  %182 = load ptr, ptr %181, align 8
  %183 = icmp eq ptr %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %180
  %185 = tail call i32 @vb2_fop_release(ptr noundef %0) #12
  br label %188

186:                                              ; preds = %180
  %187 = tail call i32 @v4l2_fh_release(ptr noundef %0) #12
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i32 [ %185, %184 ], [ %187, %186 ]
  ret i32 %189
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vivid_reconnect(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 61
  %3 = load i8, ptr %2, align 2, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 18, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %6) #12
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 62
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 20, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %12) #12
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 63
  %15 = load i8, ptr %14, align 8, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 22, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %18) #12
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 66
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 24, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %24) #12
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 69
  %27 = load i8, ptr %26, align 2, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 26, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %30) #12
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 70
  %33 = load i8, ptr %32, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 28, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %36) #12
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 71
  %39 = load i8, ptr %38, align 8, !range !8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 30, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %42) #12
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 73
  %45 = load i8, ptr %44, align 2, !range !8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 32, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %48) #12
  br label %49

49:                                               ; preds = %47, %43
  %50 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 74
  %51 = load i8, ptr %50, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 34, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %54) #12
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 76
  %57 = load i8, ptr %56, align 1, !range !8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 36, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %60) #12
  br label %61

61:                                               ; preds = %59, %55
  %62 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 152
  store i8 0, ptr %62, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 16) #12
  %8 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %9 = tail call i32 @strscpy(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef 32) #12
  %10 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 1, i32 4
  %12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.44, ptr noundef %11)
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 40
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 41
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 42
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 43
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 45
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 46
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 44
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 47
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 48
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 49
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %14, %16
  %34 = or i32 %33, %18
  %35 = or i32 %34, %20
  %36 = or i32 %35, %22
  %37 = or i32 %36, %24
  %38 = or i32 %37, %26
  %39 = or i32 %38, %28
  %40 = or i32 %39, %30
  %41 = or i32 %40, %32
  %42 = or i32 %41, -2147483648
  %43 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 4
  store i32 %42, ptr %43, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_enum_fmt_cap(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_enum_fmt_tch(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vivid_enum_fmt_vid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_fmt_vid_overlay(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_enum_fmt_vid(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_fmt_sdr_cap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_fmt_meta_cap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_fmt_meta_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_g_fmt_cap(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_g_fmt_tch(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vidioc_g_fmt_vid_cap(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_vid_overlay(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_vid_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_vid_out_overlay(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_vbi_cap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_vbi_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_sliced_vbi_cap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_sliced_vbi_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_g_fmt_cap_mplane(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_g_fmt_tch_mplane(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vidioc_g_fmt_vid_cap_mplane(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_vid_out_mplane(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_sdr_cap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_meta_cap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_meta_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_s_fmt_cap(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_g_fmt_tch(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vidioc_s_fmt_vid_cap(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_vid_overlay(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_vid_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_vid_out_overlay(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_vbi_cap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_vbi_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_sliced_vbi_cap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_sliced_vbi_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_s_fmt_cap_mplane(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_g_fmt_tch_mplane(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vidioc_s_fmt_vid_cap_mplane(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_vid_out_mplane(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_sdr_cap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_try_fmt_cap(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_g_fmt_tch(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vidioc_try_fmt_vid_cap(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_vid_overlay(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_vid_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_vid_out_overlay(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_sliced_vbi_cap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_sliced_vbi_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_try_fmt_cap_mplane(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_g_fmt_tch_mplane(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vidioc_try_fmt_vid_cap_mplane(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_vid_out_mplane(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_sdr_cap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_reqbufs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %12 [
    i32 6, label %7
    i32 4, label %7
  ]

7:                                                ; preds = %3, %3
  %8 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @vb2_queue_change_type(ptr noundef %9, i32 noundef %6) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7, %3
  %13 = tail call i32 @vb2_ioctl_reqbufs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i32 [ %13, %12 ], [ %10, %7 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_create_bufs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.v4l2_create_buffers, ptr %2, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %12 [
    i32 6, label %7
    i32 4, label %7
  ]

7:                                                ; preds = %3, %3
  %8 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @vb2_queue_change_type(ptr noundef %9, i32 noundef %6) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7, %3
  %13 = tail call i32 @vb2_ioctl_create_bufs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i32 [ %13, %12 ], [ %10, %7 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_overlay(ptr noundef %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_vid_cap_overlay(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vivid_vid_out_overlay(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_g_fbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_vid_cap_g_fbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vivid_vid_out_g_fbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_s_fbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_vid_cap_s_fbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vivid_vid_out_s_fbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_std(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_vid_cap_s_std(ptr noundef %0, ptr noundef %1, i64 noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vivid_vid_out_s_std(ptr noundef %0, ptr noundef %1, i64 noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_querystd(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_enum_input(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_enum_input_tch(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vidioc_enum_input(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_g_input(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_g_input_tch(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vidioc_g_input(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_s_input(ptr noundef %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_s_input_tch(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vidioc_s_input(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_output(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_output(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_output(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enumaudio(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_audio(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_audio(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enumaudout(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_audout(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_audout(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_modulator(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_modulator(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_g_pixelaspect(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #4 {
  %5 = tail call ptr @video_devdata(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 @vivid_vid_cap_g_pixelaspect(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  br label %13

11:                                               ; preds = %4
  %12 = tail call i32 @vivid_vid_out_g_pixelaspect(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_g_selection(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_vid_cap_g_selection(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vivid_vid_out_g_selection(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_s_selection(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_vid_cap_s_selection(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vivid_vid_out_s_selection(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_g_parm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_g_parm_tch(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 14
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i32 @vivid_vid_cap_g_parm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %18

16:                                               ; preds = %10
  %17 = tail call i32 @vivid_vid_out_g_parm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %18

18:                                               ; preds = %16, %14, %8
  %19 = phi i32 [ %9, %8 ], [ %15, %14 ], [ %17, %16 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_s_parm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_vid_cap_s_parm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ -25, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  switch i32 %6, label %11 [
    i32 2, label %7
    i32 4, label %9
  ]

7:                                                ; preds = %3
  %8 = tail call i32 @vivid_radio_rx_g_tuner(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %13

9:                                                ; preds = %3
  %10 = tail call i32 @vivid_sdr_g_tuner(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %13

11:                                               ; preds = %3
  %12 = tail call i32 @vivid_video_g_tuner(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %13

13:                                               ; preds = %11, %9, %7
  %14 = phi i32 [ %8, %7 ], [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  switch i32 %6, label %11 [
    i32 2, label %7
    i32 4, label %9
  ]

7:                                                ; preds = %3
  %8 = tail call i32 @vivid_radio_rx_s_tuner(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %13

9:                                                ; preds = %3
  %10 = tail call i32 @vivid_sdr_s_tuner(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %13

11:                                               ; preds = %3
  %12 = tail call i32 @vivid_video_s_tuner(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %13

13:                                               ; preds = %11, %9, %7
  %14 = phi i32 [ %8, %7 ], [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #12
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 13
  %9 = load i32, ptr %8, align 8
  switch i32 %9, label %20 [
    i32 2, label %10
    i32 4, label %18
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 14
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 335
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 345
  %16 = select i1 %13, ptr %14, ptr %15
  %17 = tail call i32 @vivid_radio_g_frequency(ptr noundef %0, ptr noundef %16, ptr noundef %2) #12
  br label %22

18:                                               ; preds = %3
  %19 = tail call i32 @vivid_sdr_g_frequency(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %22

20:                                               ; preds = %3
  %21 = tail call i32 @vivid_video_g_frequency(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %22

22:                                               ; preds = %20, %18, %10
  %23 = phi i32 [ %17, %10 ], [ %19, %18 ], [ %21, %20 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #12
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 13
  %9 = load i32, ptr %8, align 8
  switch i32 %9, label %20 [
    i32 2, label %10
    i32 4, label %18
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 14
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 335
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 345
  %16 = select i1 %13, ptr %14, ptr %15
  %17 = tail call i32 @vivid_radio_s_frequency(ptr noundef %0, ptr noundef %16, ptr noundef %2) #12
  br label %22

18:                                               ; preds = %3
  %19 = tail call i32 @vivid_sdr_s_frequency(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %22

20:                                               ; preds = %3
  %21 = tail call i32 @vivid_video_s_frequency(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %22

22:                                               ; preds = %20, %18, %10
  %23 = phi i32 [ %17, %10 ], [ %19, %18 ], [ %21, %20 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_enum_freq_bands(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  switch i32 %6, label %11 [
    i32 2, label %7
    i32 4, label %9
  ]

7:                                                ; preds = %3
  %8 = tail call i32 @vivid_radio_rx_enum_freq_bands(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %11

9:                                                ; preds = %3
  %10 = tail call i32 @vivid_sdr_enum_freq_bands(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %11

11:                                               ; preds = %9, %7, %3
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ], [ -25, %3 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_sliced_vbi_cap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_log_status(ptr noundef %0, ptr noundef %1) #4 {
  %3 = tail call ptr @video_devdata(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 5, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @video_devdata(ptr noundef %0) #12
  %7 = tail call i32 @v4l2_ctrl_log_status(ptr noundef %0, ptr noundef %1) #12
  %8 = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 13
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %5, i32 0, i32 231
  tail call void @tpg_log_status(ptr noundef %16) #12
  br label %17

17:                                               ; preds = %15, %11, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_s_hw_freq_seek(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_radio_rx_s_hw_freq_seek(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ -25, %3 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_framesizes(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_frameintervals(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_s_dv_timings(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vivid_vid_cap_s_dv_timings(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vivid_vid_out_s_dv_timings(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_dv_timings(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_query_dv_timings(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_dv_timings(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_dv_timings_cap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_edid(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_edid(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_enum_fmt_tch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_g_fmt_tch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_vid_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_g_fmt_tch_mplane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_fmt_vid_cap_mplane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_vid_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_fmt_vid_cap_mplane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_vid_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_try_fmt_vid_cap_mplane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_change_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_overlay(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_overlay(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_g_fbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_g_fbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_s_fbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_s_fbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_s_std(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_s_std(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_enum_input_tch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_enum_input(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_g_input_tch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_g_input(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_s_input_tch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidioc_s_input(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_g_pixelaspect(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_g_pixelaspect(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_g_selection(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_g_selection(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_s_selection(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_s_selection(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_g_parm_tch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_g_parm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_g_parm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_s_parm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_rx_g_tuner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_sdr_g_tuner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_video_g_tuner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_rx_s_tuner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_sdr_s_tuner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_video_s_tuner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_g_frequency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_sdr_g_frequency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_video_g_frequency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_s_frequency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_sdr_s_frequency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_video_s_frequency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_rx_enum_freq_bands(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_sdr_enum_freq_bands(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_log_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_rx_s_hw_freq_seek(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_cap_s_dv_timings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_vid_out_s_dv_timings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_radio_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #4 {
  %5 = tail call ptr @video_devdata(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @vivid_radio_rx_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %10, %9 ], [ -22, %4 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_radio_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #4 {
  %5 = tail call ptr @video_devdata(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @vivid_radio_tx_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %10, %9 ], [ -22, %4 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_radio_poll(ptr noundef %0, ptr noundef %1) #4 {
  %3 = tail call ptr @video_devdata(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @vivid_radio_rx_poll(ptr noundef %0, ptr noundef %1) #12
  br label %11

9:                                                ; preds = %2
  %10 = tail call i32 @vivid_radio_tx_poll(ptr noundef %0, ptr noundef %1) #12
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_rx_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_tx_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_rx_poll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_radio_tx_poll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_fb_release_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

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
