; ModuleID = '/llk/IR/drivers/media/i2c/ov7670.c_pt.bc'
source_filename = "../drivers/media/i2c/ov7670.c"
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
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ov7670_devtype = type { ptr, i32, ptr, ptr }
%struct.ov7670_format_struct = type { i32, i32, ptr, [6 x i32] }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regval_list = type { i8, i8 }
%struct.ov7670_win_size = type { i32, i32, i8, i32, i32, i32, i32, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.89, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.89 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_fract = type { i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.76 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { i32, i32 }
%struct.ov7670_info = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.anon.86, %struct.anon.87, %struct.anon.88, %struct.v4l2_mbus_framefmt, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.86 = type { ptr, ptr }
%struct.anon.87 = type { ptr, ptr }
%struct.anon.88 = type { ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.82, i16, i16, i16, [10 x i16] }
%union.anon.82 = type { i16 }
%struct.ov7670_config = type { i32, i32, i32, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.78, %union.anon.79, i32, ptr, i32, %struct.anon.80, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.78 = type { i64 }
%union.anon.79 = type { ptr }
%struct.anon.80 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author251 = internal constant [40 x i8] c"author=Jonathan Corbet <corbet@lwn.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [61 x i8] c"description=A low-level driver for OmniVision ov7670 sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i8 0, align 1
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype254 = internal constant [20 x i8] c"parmtype=debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_debug255 = internal constant [29 x i8] c"parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@ov7670_id = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ov7670\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ov7675\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], align 4
@ov7670_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov7670\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ov7670_driver = internal global %struct.i2c_driver { i32 0, ptr @ov7670_probe, ptr @ov7670_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov7670_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ov7670_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"ov7670\00", align 1
@ov7670_ops = internal constant %struct.v4l2_subdev_ops { ptr @ov7670_core_ops, ptr null, ptr null, ptr @ov7670_video_ops, ptr null, ptr null, ptr null, ptr @ov7670_pad_ops }, align 4
@ov7670_subdev_internal_ops = internal constant %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ov7670_open, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"xclk\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"\017%s %d-%04x: chip found @ 0x%x (%s) is not an ov7670 chip.\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\016%s %d-%04x: chip found @ 0x%02x (%s)\0A\00", align 1
@ov7670_devdata = internal constant [2 x %struct.ov7670_devtype] [%struct.ov7670_devtype { ptr @ov7670_win_sizes, i32 4, ptr @ov7670_set_framerate_legacy, ptr @ov7670_get_framerate_legacy }, %struct.ov7670_devtype { ptr @ov7675_win_sizes, i32 1, ptr @ov7675_set_framerate, ptr @ov7675_get_framerate }], align 4
@ov7670_formats = internal global [4 x %struct.ov7670_format_struct] [%struct.ov7670_format_struct { i32 8200, i32 8, ptr @ov7670_fmt_yuv422, [6 x i32] [i32 128, i32 -128, i32 0, i32 -34, i32 -94, i32 128] }, %struct.ov7670_format_struct { i32 4098, i32 8, ptr @ov7670_fmt_rgb444, [6 x i32] [i32 179, i32 -179, i32 0, i32 -61, i32 -176, i32 228] }, %struct.ov7670_format_struct { i32 4104, i32 8, ptr @ov7670_fmt_rgb565, [6 x i32] [i32 179, i32 -179, i32 0, i32 -61, i32 -176, i32 228] }, %struct.ov7670_format_struct { i32 12289, i32 8, ptr @ov7670_fmt_raw, [6 x i32] zeroinitializer }], align 4
@ov7670_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr @ov7670_g_volatile_ctrl, ptr null, ptr @ov7670_s_ctrl }, align 4
@ov7670_test_pattern_menu = internal constant [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], align 4
@ov7670_core_ops = internal constant %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr @ov7670_init, ptr null, ptr @ov7670_reset, ptr null, ptr null, ptr null, ptr @ov7670_s_power, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, align 4
@ov7670_video_ops = internal constant %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov7670_g_frame_interval, ptr @ov7670_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ov7670_pad_ops = internal constant %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov7670_enum_mbus_code, ptr @ov7670_enum_frame_size, ptr @ov7670_enum_frame_interval, ptr @ov7670_get_fmt, ptr @ov7670_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ov7670_default_regs = internal unnamed_addr constant [158 x %struct.regval_list] [%struct.regval_list { i8 18, i8 -128 }, %struct.regval_list { i8 17, i8 1 }, %struct.regval_list { i8 58, i8 4 }, %struct.regval_list { i8 18, i8 0 }, %struct.regval_list { i8 23, i8 19 }, %struct.regval_list { i8 24, i8 1 }, %struct.regval_list { i8 50, i8 -74 }, %struct.regval_list { i8 25, i8 2 }, %struct.regval_list { i8 26, i8 122 }, %struct.regval_list { i8 3, i8 10 }, %struct.regval_list { i8 12, i8 0 }, %struct.regval_list { i8 62, i8 0 }, %struct.regval_list { i8 112, i8 58 }, %struct.regval_list { i8 113, i8 53 }, %struct.regval_list { i8 114, i8 17 }, %struct.regval_list { i8 115, i8 -16 }, %struct.regval_list { i8 -94, i8 2 }, %struct.regval_list { i8 21, i8 0 }, %struct.regval_list { i8 122, i8 32 }, %struct.regval_list { i8 123, i8 16 }, %struct.regval_list { i8 124, i8 30 }, %struct.regval_list { i8 125, i8 53 }, %struct.regval_list { i8 126, i8 90 }, %struct.regval_list { i8 127, i8 105 }, %struct.regval_list { i8 -128, i8 118 }, %struct.regval_list { i8 -127, i8 -128 }, %struct.regval_list { i8 -126, i8 -120 }, %struct.regval_list { i8 -125, i8 -113 }, %struct.regval_list { i8 -124, i8 -106 }, %struct.regval_list { i8 -123, i8 -93 }, %struct.regval_list { i8 -122, i8 -81 }, %struct.regval_list { i8 -121, i8 -60 }, %struct.regval_list { i8 -120, i8 -41 }, %struct.regval_list { i8 -119, i8 -24 }, %struct.regval_list { i8 19, i8 -32 }, %struct.regval_list zeroinitializer, %struct.regval_list { i8 16, i8 0 }, %struct.regval_list { i8 13, i8 64 }, %struct.regval_list { i8 20, i8 24 }, %struct.regval_list { i8 -91, i8 5 }, %struct.regval_list { i8 -85, i8 7 }, %struct.regval_list { i8 36, i8 -107 }, %struct.regval_list { i8 37, i8 51 }, %struct.regval_list { i8 38, i8 -29 }, %struct.regval_list { i8 -97, i8 120 }, %struct.regval_list { i8 -96, i8 104 }, %struct.regval_list { i8 -95, i8 3 }, %struct.regval_list { i8 -90, i8 -40 }, %struct.regval_list { i8 -89, i8 -40 }, %struct.regval_list { i8 -88, i8 -16 }, %struct.regval_list { i8 -87, i8 -112 }, %struct.regval_list { i8 -86, i8 -108 }, %struct.regval_list { i8 19, i8 -27 }, %struct.regval_list { i8 14, i8 97 }, %struct.regval_list { i8 15, i8 75 }, %struct.regval_list { i8 22, i8 2 }, %struct.regval_list { i8 30, i8 7 }, %struct.regval_list { i8 33, i8 2 }, %struct.regval_list { i8 34, i8 -111 }, %struct.regval_list { i8 41, i8 7 }, %struct.regval_list { i8 51, i8 11 }, %struct.regval_list { i8 53, i8 11 }, %struct.regval_list { i8 55, i8 29 }, %struct.regval_list { i8 56, i8 113 }, %struct.regval_list { i8 57, i8 42 }, %struct.regval_list { i8 60, i8 120 }, %struct.regval_list { i8 77, i8 64 }, %struct.regval_list { i8 78, i8 32 }, %struct.regval_list { i8 105, i8 0 }, %struct.regval_list { i8 107, i8 74 }, %struct.regval_list { i8 116, i8 16 }, %struct.regval_list { i8 -115, i8 79 }, %struct.regval_list { i8 -114, i8 0 }, %struct.regval_list { i8 -113, i8 0 }, %struct.regval_list { i8 -112, i8 0 }, %struct.regval_list { i8 -111, i8 0 }, %struct.regval_list { i8 -106, i8 0 }, %struct.regval_list { i8 -102, i8 0 }, %struct.regval_list { i8 -80, i8 -124 }, %struct.regval_list { i8 -79, i8 12 }, %struct.regval_list { i8 -78, i8 14 }, %struct.regval_list { i8 -77, i8 -126 }, %struct.regval_list { i8 -72, i8 10 }, %struct.regval_list { i8 67, i8 10 }, %struct.regval_list { i8 68, i8 -16 }, %struct.regval_list { i8 69, i8 52 }, %struct.regval_list { i8 70, i8 88 }, %struct.regval_list { i8 71, i8 40 }, %struct.regval_list { i8 72, i8 58 }, %struct.regval_list { i8 89, i8 -120 }, %struct.regval_list { i8 90, i8 -120 }, %struct.regval_list { i8 91, i8 68 }, %struct.regval_list { i8 92, i8 103 }, %struct.regval_list { i8 93, i8 73 }, %struct.regval_list { i8 94, i8 14 }, %struct.regval_list { i8 108, i8 10 }, %struct.regval_list { i8 109, i8 85 }, %struct.regval_list { i8 110, i8 17 }, %struct.regval_list { i8 111, i8 -97 }, %struct.regval_list { i8 106, i8 64 }, %struct.regval_list { i8 1, i8 64 }, %struct.regval_list { i8 2, i8 96 }, %struct.regval_list { i8 19, i8 -25 }, %struct.regval_list { i8 79, i8 -128 }, %struct.regval_list { i8 80, i8 -128 }, %struct.regval_list { i8 81, i8 0 }, %struct.regval_list { i8 82, i8 34 }, %struct.regval_list { i8 83, i8 94 }, %struct.regval_list { i8 84, i8 -128 }, %struct.regval_list { i8 88, i8 -98 }, %struct.regval_list { i8 65, i8 8 }, %struct.regval_list { i8 63, i8 0 }, %struct.regval_list { i8 117, i8 5 }, %struct.regval_list { i8 118, i8 -31 }, %struct.regval_list { i8 76, i8 0 }, %struct.regval_list { i8 119, i8 1 }, %struct.regval_list { i8 61, i8 -61 }, %struct.regval_list { i8 75, i8 9 }, %struct.regval_list { i8 -55, i8 96 }, %struct.regval_list { i8 65, i8 56 }, %struct.regval_list { i8 86, i8 64 }, %struct.regval_list { i8 52, i8 17 }, %struct.regval_list { i8 59, i8 18 }, %struct.regval_list { i8 -92, i8 -120 }, %struct.regval_list { i8 -106, i8 0 }, %struct.regval_list { i8 -105, i8 48 }, %struct.regval_list { i8 -104, i8 32 }, %struct.regval_list { i8 -103, i8 48 }, %struct.regval_list { i8 -102, i8 -124 }, %struct.regval_list { i8 -101, i8 41 }, %struct.regval_list { i8 -100, i8 3 }, %struct.regval_list { i8 -99, i8 76 }, %struct.regval_list { i8 -98, i8 63 }, %struct.regval_list { i8 120, i8 4 }, %struct.regval_list { i8 121, i8 1 }, %struct.regval_list { i8 -56, i8 -16 }, %struct.regval_list { i8 121, i8 15 }, %struct.regval_list { i8 -56, i8 0 }, %struct.regval_list { i8 121, i8 16 }, %struct.regval_list { i8 -56, i8 126 }, %struct.regval_list { i8 121, i8 10 }, %struct.regval_list { i8 -56, i8 -128 }, %struct.regval_list { i8 121, i8 11 }, %struct.regval_list { i8 -56, i8 1 }, %struct.regval_list { i8 121, i8 12 }, %struct.regval_list { i8 -56, i8 15 }, %struct.regval_list { i8 121, i8 13 }, %struct.regval_list { i8 -56, i8 32 }, %struct.regval_list { i8 121, i8 9 }, %struct.regval_list { i8 -56, i8 -128 }, %struct.regval_list { i8 121, i8 2 }, %struct.regval_list { i8 -56, i8 -64 }, %struct.regval_list { i8 121, i8 3 }, %struct.regval_list { i8 -56, i8 64 }, %struct.regval_list { i8 121, i8 5 }, %struct.regval_list { i8 -56, i8 48 }, %struct.regval_list { i8 121, i8 38 }, %struct.regval_list { i8 -1, i8 -1 }], align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"\013Error %d on register write\0A\00", align 1
@ov7670_frame_rates = internal unnamed_addr constant [5 x i32] [i32 30, i32 15, i32 10, i32 5, i32 1], align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"include/media/v4l2-subdev.h\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"ov7670,pclk-hb-disable\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Unsupported media bus type\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"can't get %s GPIO\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@ov7670_win_sizes = internal global [4 x %struct.ov7670_win_size] [%struct.ov7670_win_size { i32 640, i32 480, i8 0, i32 158, i32 14, i32 10, i32 490, ptr null }, %struct.ov7670_win_size { i32 352, i32 288, i8 32, i32 170, i32 90, i32 14, i32 494, ptr null }, %struct.ov7670_win_size { i32 320, i32 240, i8 16, i32 168, i32 24, i32 12, i32 492, ptr null }, %struct.ov7670_win_size { i32 176, i32 144, i8 0, i32 456, i32 24, i32 14, i32 494, ptr @ov7670_qcif_regs }], align 4
@ov7675_win_sizes = internal global [1 x %struct.ov7670_win_size] [%struct.ov7670_win_size { i32 640, i32 480, i8 0, i32 158, i32 14, i32 14, i32 494, ptr null }], align 4
@ov7670_qcif_regs = internal global [16 x %struct.regval_list] [%struct.regval_list { i8 12, i8 12 }, %struct.regval_list { i8 12, i8 4 }, %struct.regval_list { i8 62, i8 17 }, %struct.regval_list { i8 115, i8 -15 }, %struct.regval_list { i8 -94, i8 82 }, %struct.regval_list { i8 123, i8 28 }, %struct.regval_list { i8 124, i8 40 }, %struct.regval_list { i8 125, i8 60 }, %struct.regval_list { i8 127, i8 105 }, %struct.regval_list { i8 20, i8 56 }, %struct.regval_list { i8 -95, i8 11 }, %struct.regval_list { i8 116, i8 25 }, %struct.regval_list { i8 -102, i8 -128 }, %struct.regval_list { i8 67, i8 20 }, %struct.regval_list { i8 61, i8 -64 }, %struct.regval_list { i8 -1, i8 -1 }], align 1
@ov7670_fmt_yuv422 = internal global [13 x %struct.regval_list] [%struct.regval_list { i8 18, i8 0 }, %struct.regval_list { i8 -116, i8 0 }, %struct.regval_list { i8 4, i8 0 }, %struct.regval_list { i8 64, i8 -64 }, %struct.regval_list { i8 20, i8 72 }, %struct.regval_list { i8 79, i8 -128 }, %struct.regval_list { i8 80, i8 -128 }, %struct.regval_list { i8 81, i8 0 }, %struct.regval_list { i8 82, i8 34 }, %struct.regval_list { i8 83, i8 94 }, %struct.regval_list { i8 84, i8 -128 }, %struct.regval_list { i8 61, i8 -64 }, %struct.regval_list { i8 -1, i8 -1 }], align 1
@ov7670_fmt_rgb444 = internal global [13 x %struct.regval_list] [%struct.regval_list { i8 18, i8 4 }, %struct.regval_list { i8 -116, i8 2 }, %struct.regval_list { i8 4, i8 0 }, %struct.regval_list { i8 64, i8 -112 }, %struct.regval_list { i8 20, i8 56 }, %struct.regval_list { i8 79, i8 -77 }, %struct.regval_list { i8 80, i8 -77 }, %struct.regval_list { i8 81, i8 0 }, %struct.regval_list { i8 82, i8 61 }, %struct.regval_list { i8 83, i8 -89 }, %struct.regval_list { i8 84, i8 -28 }, %struct.regval_list { i8 61, i8 -62 }, %struct.regval_list { i8 -1, i8 -1 }], align 1
@ov7670_fmt_rgb565 = internal global [13 x %struct.regval_list] [%struct.regval_list { i8 18, i8 4 }, %struct.regval_list { i8 -116, i8 0 }, %struct.regval_list { i8 4, i8 0 }, %struct.regval_list { i8 64, i8 16 }, %struct.regval_list { i8 20, i8 56 }, %struct.regval_list { i8 79, i8 -77 }, %struct.regval_list { i8 80, i8 -77 }, %struct.regval_list { i8 81, i8 0 }, %struct.regval_list { i8 82, i8 61 }, %struct.regval_list { i8 83, i8 -89 }, %struct.regval_list { i8 84, i8 -28 }, %struct.regval_list { i8 61, i8 -64 }, %struct.regval_list { i8 -1, i8 -1 }], align 1
@ov7670_fmt_raw = internal global [5 x %struct.regval_list] [%struct.regval_list { i8 18, i8 1 }, %struct.regval_list { i8 61, i8 8 }, %struct.regval_list { i8 65, i8 61 }, %struct.regval_list { i8 118, i8 -31 }, %struct.regval_list { i8 -1, i8 -1 }], align 1
@ov7670_sin_table = internal unnamed_addr constant [19 x i32] [i32 0, i32 87, i32 173, i32 258, i32 342, i32 422, i32 499, i32 573, i32 642, i32 707, i32 766, i32 819, i32 866, i32 906, i32 939, i32 965, i32 984, i32 996, i32 1000], align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"No test output\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Shifting \221\22\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"8-bar color bar\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Fade to gray color bar\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_debug255, ptr @__UNIQUE_ID_debugtype254, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license253, ptr @__param_debug], section "llvm.metadata"

@__mod_i2c__ov7670_id_device_table = dso_local alias [3 x %struct.i2c_device_id], ptr @ov7670_id
@__mod_of__ov7670_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @ov7670_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @ov7670_driver) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @ov7670_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ov7670_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %5 = alloca %struct.v4l2_fract, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 460, i32 noundef 3520) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %240, label %9

9:                                                ; preds = %2
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %7, ptr noundef %0, ptr noundef nonnull @ov7670_ops) #12
  %10 = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 7
  store ptr @ov7670_subdev_internal_ops, ptr %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 12
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 16
  store i32 30, ptr %14, align 4
  %15 = tail call ptr @dev_fwnode(ptr noundef %6) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %42, label %17

17:                                               ; preds = %9
  %18 = tail call ptr @dev_fwnode(ptr noundef %6) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 20
  store i8 0, ptr %21, align 1
  %22 = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %18, ptr noundef nonnull @.str.6) #12
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i8 1, ptr %21, align 1
  br label %24

24:                                               ; preds = %23, %20
  %25 = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef nonnull %18, ptr noundef null) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %25, ptr noundef nonnull %4) #12
  call void @fwnode_handle_put(ptr noundef nonnull %25) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %4, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #13
  br label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %4, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 13
  store i32 %37, ptr %38, align 4
  br label %41

39:                                               ; preds = %27, %24, %17
  %40 = phi i32 [ %28, %27 ], [ -22, %24 ], [ -22, %17 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  br label %240

41:                                               ; preds = %35, %34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  br label %71

42:                                               ; preds = %9
  %43 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %71, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %44, align 4
  %48 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 14
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ov7670_config, ptr %44, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 15
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.ov7670_config, ptr %44, i32 0, i32 3
  %53 = load i8, ptr %52, align 4, !range !9
  %54 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 18
  store i8 %53, ptr %54, align 1
  %55 = getelementptr inbounds %struct.ov7670_config, ptr %44, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  store i32 %56, ptr %14, align 4
  br label %59

59:                                               ; preds = %58, %46
  %60 = getelementptr inbounds %struct.ov7670_config, ptr %44, i32 0, i32 4
  %61 = load i8, ptr %60, align 1, !range !9
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 19
  store i8 1, ptr %64, align 2
  br label %65

65:                                               ; preds = %63, %59
  %66 = getelementptr inbounds %struct.ov7670_config, ptr %44, i32 0, i32 5
  %67 = load i8, ptr %66, align 2, !range !9
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 20
  store i8 1, ptr %70, align 1
  br label %71

71:                                               ; preds = %69, %65, %42, %41
  %72 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.1) #12
  %73 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 9
  store ptr %72, ptr %73, align 4
  %74 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = ptrtoint ptr %72 to i32
  %77 = icmp eq ptr %72, inttoptr (i32 -2 to ptr)
  br i1 %77, label %78, label %240

78:                                               ; preds = %75
  store ptr null, ptr %73, align 4
  br label %79

79:                                               ; preds = %78, %71
  %80 = call ptr @devm_gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.8, i32 noundef 3) #12
  %81 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 12
  store ptr %80, ptr %81, align 4
  %82 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = call ptr @devm_gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.10, i32 noundef 3) #12
  %85 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 11
  store ptr %84, ptr %85, align 4
  %86 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #12
  br label %94

88:                                               ; preds = %83, %79
  %89 = phi ptr [ @.str.8, %79 ], [ @.str.10, %83 ]
  %90 = phi ptr [ %81, %79 ], [ %85, %83 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef nonnull %89) #13
  %91 = load ptr, ptr %90, align 4
  %92 = ptrtoint ptr %91 to i32
  %93 = icmp eq ptr %91, null
  br i1 %93, label %94, label %240

94:                                               ; preds = %88, %87
  call fastcc void @ov7670_power_on(ptr noundef nonnull %7)
  %95 = load ptr, ptr %73, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = call i32 @clk_get_rate(ptr noundef nonnull %95) #12
  %99 = udiv i32 %98, 1000000
  store i32 %99, ptr %14, align 4
  %100 = add i32 %98, -49000000
  %101 = icmp ult i32 %100, -39000000
  br i1 %101, label %229, label %102

102:                                              ; preds = %97, %94
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 0, ptr %3, align 1, !annotation !8
  br label %103

103:                                              ; preds = %111, %102
  %104 = phi ptr [ @ov7670_default_regs, %102 ], [ %114, %111 ]
  %105 = load i8, ptr %104, align 1
  %106 = icmp eq i8 %105, -1
  %107 = getelementptr inbounds %struct.regval_list, ptr %104, i32 0, i32 1
  %108 = load i8, ptr %107, align 1
  %109 = icmp eq i8 %108, -1
  %110 = select i1 %106, i1 %109, i1 false
  br i1 %110, label %115, label %111

111:                                              ; preds = %103
  %112 = call fastcc i32 @ov7670_write(ptr noundef %7, i8 noundef zeroext %105, i8 noundef zeroext %108) #12
  %113 = icmp sgt i32 %112, -1
  %114 = getelementptr %struct.regval_list, ptr %104, i32 1
  br i1 %113, label %103, label %139

115:                                              ; preds = %103
  %116 = call fastcc i32 @ov7670_read(ptr noundef %7, i8 noundef zeroext 28, ptr noundef nonnull %3) #12
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %139, label %118

118:                                              ; preds = %115
  %119 = load i8, ptr %3, align 1
  %120 = icmp eq i8 %119, 127
  br i1 %120, label %121, label %139

121:                                              ; preds = %118
  %122 = call fastcc i32 @ov7670_read(ptr noundef %7, i8 noundef zeroext 29, ptr noundef nonnull %3) #12
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %139, label %124

124:                                              ; preds = %121
  %125 = load i8, ptr %3, align 1
  %126 = icmp eq i8 %125, -94
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = call fastcc i32 @ov7670_read(ptr noundef %7, i8 noundef zeroext 10, ptr noundef nonnull %3) #12
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %127
  %131 = load i8, ptr %3, align 1
  %132 = icmp eq i8 %131, 118
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = call fastcc i32 @ov7670_read(ptr noundef %7, i8 noundef zeroext 11, ptr noundef nonnull %3) #12
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = load i8, ptr %3, align 1
  %138 = icmp eq i8 %137, 115
  br i1 %138, label %157, label %139

139:                                              ; preds = %136, %133, %130, %127, %124, %121, %118, %115, %111
  %140 = phi i32 [ -19, %136 ], [ %134, %133 ], [ -19, %130 ], [ %128, %127 ], [ -19, %124 ], [ %122, %121 ], [ -19, %118 ], [ %116, %115 ], [ %112, %111 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %141 = load i8, ptr @debug, align 1, !range !9
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %229, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 6
  %145 = load ptr, ptr %144, align 8
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr inbounds %struct.i2c_adapter, ptr %148, i32 0, i32 11
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %152 = load i16, ptr %151, align 2
  %153 = zext i16 %152 to i32
  %154 = shl nuw nsw i32 %153, 1
  %155 = getelementptr inbounds %struct.i2c_adapter, ptr %148, i32 0, i32 12
  %156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %146, i32 noundef %150, i32 noundef %153, i32 noundef %154, ptr noundef %155) #13
  br label %229

157:                                              ; preds = %136
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %158 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 6
  %159 = load ptr, ptr %158, align 8
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %struct.i2c_adapter, ptr %162, i32 0, i32 11
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %166 = load i16, ptr %165, align 2
  %167 = zext i16 %166 to i32
  %168 = shl nuw nsw i32 %167, 1
  %169 = getelementptr inbounds %struct.i2c_adapter, ptr %162, i32 0, i32 12
  %170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %160, i32 noundef %164, i32 noundef %167, i32 noundef %168, ptr noundef %169) #13
  %171 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr [2 x %struct.ov7670_devtype], ptr @ov7670_devdata, i32 0, i32 %172
  %174 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 21
  store ptr %173, ptr %174, align 4
  %175 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 7
  store ptr @ov7670_formats, ptr %175, align 4
  %176 = load ptr, ptr %173, align 4
  %177 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 8
  store ptr %176, ptr %177, align 4
  %178 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 6
  %179 = load i32, ptr %176, align 4
  store i32 %179, ptr %178, align 4
  %180 = getelementptr inbounds %struct.ov7670_win_size, ptr %176, i32 0, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 6, i32 1
  store i32 %181, ptr %182, align 4
  %183 = load i32, ptr getelementptr inbounds ([4 x %struct.ov7670_format_struct], ptr @ov7670_formats, i32 0, i32 0, i32 1), align 4
  %184 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 6, i32 4
  store i32 %183, ptr %184, align 4
  %185 = load i32, ptr @ov7670_formats, align 4
  %186 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 6, i32 2
  store i32 %185, ptr %186, align 4
  %187 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 6, i32 3
  store i32 1, ptr %187, align 4
  %188 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 17
  store i8 0, ptr %188, align 4
  store i32 1, ptr %5, align 8
  %189 = getelementptr inbounds %struct.v4l2_fract, ptr %5, i32 0, i32 1
  store i32 30, ptr %189, align 4
  %190 = getelementptr [2 x %struct.ov7670_devtype], ptr @ov7670_devdata, i32 0, i32 %172, i32 2
  %191 = load ptr, ptr %190, align 4
  %192 = call i32 %191(ptr noundef nonnull %7, ptr noundef nonnull %5) #12
  %193 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 2
  %194 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %193, i32 noundef 10, ptr noundef null, ptr noundef null) #12
  %195 = call ptr @v4l2_ctrl_new_std(ptr noundef %193, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #12
  %196 = call ptr @v4l2_ctrl_new_std(ptr noundef %193, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #12
  %197 = call ptr @v4l2_ctrl_new_std(ptr noundef %193, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %198 = call ptr @v4l2_ctrl_new_std(ptr noundef %193, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %199 = call ptr @v4l2_ctrl_new_std(ptr noundef %193, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 256, i64 noundef 1, i64 noundef 128) #12
  %200 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 5
  store ptr %199, ptr %200, align 4
  %201 = call ptr @v4l2_ctrl_new_std(ptr noundef %193, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963779, i64 noundef -180, i64 noundef 180, i64 noundef 5, i64 noundef 0) #12
  %202 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 5, i32 1
  store ptr %201, ptr %202, align 4
  %203 = call ptr @v4l2_ctrl_new_std(ptr noundef %193, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #12
  %204 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 3
  %205 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 3, i32 1
  store ptr %203, ptr %205, align 4
  %206 = call ptr @v4l2_ctrl_new_std(ptr noundef %193, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #12
  store ptr %206, ptr %204, align 4
  %207 = call ptr @v4l2_ctrl_new_std(ptr noundef %193, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 500) #12
  %208 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 4
  %209 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 4, i32 1
  store ptr %207, ptr %209, align 4
  %210 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %193, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #12
  store ptr %210, ptr %208, align 4
  %211 = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %193, ptr noundef nonnull @ov7670_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov7670_test_pattern_menu) #12
  %212 = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 8
  store ptr %193, ptr %212, align 4
  %213 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 2, i32 9
  %214 = load i32, ptr %213, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %157
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %204, i8 noundef zeroext 0, i1 noundef zeroext true) #12
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %208, i8 noundef zeroext 1, i1 noundef zeroext false) #12
  call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %200) #12
  %217 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 1
  %218 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 1, i32 4
  store i32 2, ptr %218, align 4
  %219 = getelementptr inbounds %struct.media_entity, ptr %7, i32 0, i32 3
  store i32 131073, ptr %219, align 4
  %220 = call i32 @media_entity_pads_init(ptr noundef nonnull %7, i16 noundef zeroext 1, ptr noundef %217) #12
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %216
  %223 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %193) #12
  %224 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %7) #12
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %222
  call fastcc void @ov7670_power_off(ptr noundef nonnull %7)
  br label %240

227:                                              ; preds = %222, %216, %157
  %228 = phi i32 [ %220, %216 ], [ %214, %157 ], [ %224, %222 ]
  call void @v4l2_ctrl_handler_free(ptr noundef %193) #12
  br label %229

229:                                              ; preds = %227, %143, %139, %97
  %230 = phi i32 [ %140, %143 ], [ %140, %139 ], [ %228, %227 ], [ -22, %97 ]
  %231 = getelementptr inbounds %struct.ov7670_info, ptr %7, i32 0, i32 10
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %240, label %234

234:                                              ; preds = %229
  %235 = load ptr, ptr %73, align 4
  call void @clk_disable(ptr noundef %235) #12
  call void @clk_unprepare(ptr noundef %235) #12
  %236 = load ptr, ptr %81, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %234
  call void @gpiod_set_value(ptr noundef nonnull %236, i32 noundef 1) #12
  br label %239

239:                                              ; preds = %238, %234
  store i32 0, ptr %231, align 4
  br label %240

240:                                              ; preds = %239, %229, %226, %88, %75, %39, %2
  %241 = phi i32 [ 0, %226 ], [ -12, %2 ], [ %76, %75 ], [ %92, %88 ], [ %40, %39 ], [ %230, %229 ], [ %230, %239 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %241
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ov7670_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @v4l2_async_unregister_subdev(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.ov7670_info, ptr %3, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.ov7670_info, ptr %3, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ov7670_info, ptr %3, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #12
  tail call void @clk_unprepare(ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.ov7670_info, ptr %3, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void @gpiod_set_value(ptr noundef nonnull %12, i32 noundef 1) #12
  br label %15

15:                                               ; preds = %14, %8
  store i32 0, ptr %5, align 4
  br label %16

16:                                               ; preds = %15, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ov7670_power_on(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %36

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = tail call i32 @clk_enable(ptr noundef %7) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #12
  br label %14

14:                                               ; preds = %13, %10, %5
  %15 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @gpiod_set_value(ptr noundef nonnull %16, i32 noundef 0) #12
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  tail call void @gpiod_set_value(ptr noundef nonnull %21, i32 noundef 1) #12
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #12
  %24 = load ptr, ptr %20, align 4
  tail call void @gpiod_set_value(ptr noundef %24, i32 noundef 0) #12
  br label %25

25:                                               ; preds = %23, %19
  %26 = load ptr, ptr %15, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load ptr, ptr %20, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load ptr, ptr %6, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %28, %25
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #12
  br label %35

35:                                               ; preds = %34, %31
  store i32 1, ptr %2, align 4
  br label %36

36:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ov7670_power_off(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #12
  tail call void @clk_unprepare(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @gpiod_set_value(ptr noundef nonnull %9, i32 noundef 1) #12
  br label %12

12:                                               ; preds = %11, %5
  store i32 0, ptr %2, align 4
  br label %13

13:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ov7670_init(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  br label %3

3:                                                ; preds = %11, %2
  %4 = phi ptr [ @ov7670_default_regs, %2 ], [ %14, %11 ]
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, -1
  %7 = getelementptr inbounds %struct.regval_list, ptr %4, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, -1
  %10 = select i1 %6, i1 %9, i1 false
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = tail call fastcc i32 @ov7670_write(ptr noundef %0, i8 noundef zeroext %5, i8 noundef zeroext %8) #12
  %13 = icmp sgt i32 %12, -1
  %14 = getelementptr %struct.regval_list, ptr %4, i32 1
  br i1 %13, label %3, label %15

15:                                               ; preds = %11, %3
  %16 = phi i32 [ %12, %11 ], [ 0, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ov7670_reset(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 18
  %6 = load i8, ptr %5, align 1, !range !9
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  br i1 %7, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 18, i8 noundef zeroext -128) #12
  tail call void @msleep(i32 noundef 5) #12
  br label %22

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %13 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %13, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i8 18, ptr %4, align 2
  %14 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 -128, ptr %14, align 1
  %15 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  store i16 %16, ptr %3, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %3, i32 noundef 1) #12
  call void @msleep(i32 noundef 5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  br label %22

22:                                               ; preds = %12, %10
  call void @msleep(i32 noundef 1) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ov7670_s_power(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %6
  tail call fastcc void @ov7670_power_on(ptr noundef %0)
  br label %9

9:                                                ; preds = %17, %8
  %10 = phi ptr [ @ov7670_default_regs, %8 ], [ %20, %17 ]
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, -1
  %13 = getelementptr inbounds %struct.regval_list, ptr %10, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, -1
  %16 = select i1 %12, i1 %15, i1 false
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = tail call fastcc i32 @ov7670_write(ptr noundef %0, i8 noundef zeroext %11, i8 noundef zeroext %14) #12
  %19 = icmp sgt i32 %18, -1
  %20 = getelementptr %struct.regval_list, ptr %10, i32 1
  br i1 %19, label %9, label %21

21:                                               ; preds = %17, %9
  %22 = tail call fastcc i32 @ov7670_apply_fmt(ptr noundef %0)
  %23 = tail call fastcc i32 @ov7675_apply_framerate(ptr noundef %0)
  %24 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 2
  %25 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %24) #12
  br label %36

26:                                               ; preds = %6
  %27 = icmp eq i32 %4, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %30) #12
  tail call void @clk_unprepare(ptr noundef %30) #12
  %31 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 12
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  tail call void @gpiod_set_value(ptr noundef nonnull %32, i32 noundef 1) #12
  br label %35

35:                                               ; preds = %34, %28
  store i32 0, ptr %3, align 4
  br label %36

36:                                               ; preds = %35, %26, %21, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ov7670_write_array(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  br label %3

3:                                                ; preds = %11, %2
  %4 = phi ptr [ %1, %2 ], [ %14, %11 ]
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, -1
  %7 = getelementptr inbounds %struct.regval_list, ptr %4, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, -1
  %10 = select i1 %6, i1 %9, i1 false
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = tail call fastcc i32 @ov7670_write(ptr noundef %0, i8 noundef zeroext %5, i8 noundef zeroext %8)
  %13 = icmp sgt i32 %12, -1
  %14 = getelementptr %struct.regval_list, ptr %4, i32 1
  br i1 %13, label %3, label %15

15:                                               ; preds = %11, %3
  %16 = phi i32 [ %12, %11 ], [ 0, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ov7670_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 18
  %7 = load i8, ptr %6, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  br i1 %8, label %17, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2) #12
  %13 = icmp ne i8 %1, 18
  %14 = icmp sgt i8 %2, -1
  %15 = or i1 %13, %14
  br i1 %15, label %33, label %16

16:                                               ; preds = %11
  tail call void @msleep(i32 noundef 5) #12
  br label %33

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %18 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %18, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 %1, ptr %5, align 2
  %19 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %2, ptr %19, align 1
  %20 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 1
  %21 = load i16, ptr %20, align 2
  store i16 %21, ptr %4, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %4, i32 noundef 1) #12
  %27 = icmp ne i8 %1, 18
  %28 = icmp sgt i8 %2, -1
  %29 = or i1 %27, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  call void @msleep(i32 noundef 5) #12
  br label %31

31:                                               ; preds = %30, %17
  %32 = call i32 @llvm.smin.i32(i32 %26, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  br label %33

33:                                               ; preds = %31, %16, %11
  %34 = phi i32 [ %32, %31 ], [ %12, %11 ], [ %12, %16 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ov7670_apply_fmt(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca i8, align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [2 x i8], align 2
  %13 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ov7670_format_struct, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.regval_list, ptr %18, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds %struct.ov7670_win_size, ptr %14, i32 0, i32 2
  %22 = load i8, ptr %21, align 4
  %23 = or i8 %22, %20
  %24 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 18
  %25 = load i8, ptr %24, align 1, !range !9
  %26 = icmp eq i8 %25, 0
  %27 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  br i1 %26, label %33, label %29

29:                                               ; preds = %1
  %30 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 18, i8 noundef zeroext %23) #12
  %31 = icmp sgt i8 %23, -1
  br i1 %31, label %47, label %32

32:                                               ; preds = %29
  tail call void @msleep(i32 noundef 5) #12
  br label %47

33:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  %34 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %34, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i8 18, ptr %12, align 2
  %35 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 %23, ptr %35, align 1
  %36 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 1
  %37 = load i16, ptr %36, align 2
  store i16 %37, ptr %11, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %38, align 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %12, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %11, i32 noundef 1) #12
  %43 = icmp sgt i8 %23, -1
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  call void @msleep(i32 noundef 5) #12
  br label %45

45:                                               ; preds = %44, %33
  %46 = call i32 @llvm.smin.i32(i32 %42, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  br label %47

47:                                               ; preds = %45, %32, %29
  %48 = phi i32 [ %46, %45 ], [ %30, %29 ], [ %30, %32 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %218

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 13
  %52 = load i32, ptr %51, align 4
  %53 = trunc i32 %52 to i8
  %54 = lshr i8 %53, 4
  %55 = and i8 %54, 2
  %56 = and i8 %53, 8
  %57 = or i8 %55, %56
  %58 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 20
  %59 = load i8, ptr %58, align 1, !range !9
  %60 = icmp eq i8 %59, 0
  %61 = or i8 %57, 32
  %62 = select i1 %60, i8 %57, i8 %61
  %63 = load i8, ptr %24, align 1, !range !9
  %64 = icmp eq i8 %63, 0
  %65 = load ptr, ptr %27, align 4
  br i1 %64, label %68, label %66

66:                                               ; preds = %50
  %67 = call i32 @i2c_smbus_write_byte_data(ptr noundef %65, i8 noundef zeroext 21, i8 noundef zeroext %62) #12
  br label %79

68:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  %69 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %69, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #12
  store i8 21, ptr %10, align 2
  %70 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 %62, ptr %70, align 1
  %71 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 1
  %72 = load i16, ptr %71, align 2
  store i16 %72, ptr %9, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %73, align 2
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %10, ptr %74, align 4
  %75 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 3
  %76 = load ptr, ptr %75, align 8
  %77 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %9, i32 noundef 1) #12
  %78 = call i32 @llvm.smin.i32(i32 %77, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  br label %79

79:                                               ; preds = %68, %66
  %80 = phi i32 [ %78, %68 ], [ %67, %66 ]
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %218

82:                                               ; preds = %79
  %83 = load ptr, ptr %15, align 4
  %84 = getelementptr inbounds %struct.ov7670_format_struct, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  br label %86

86:                                               ; preds = %95, %82
  %87 = phi ptr [ %85, %82 ], [ %88, %95 ]
  %88 = getelementptr %struct.regval_list, ptr %87, i32 1
  %89 = load i8, ptr %88, align 1
  %90 = icmp eq i8 %89, -1
  %91 = getelementptr %struct.regval_list, ptr %87, i32 1, i32 1
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, -1
  %94 = select i1 %90, i1 %93, i1 false
  br i1 %94, label %98, label %95

95:                                               ; preds = %86
  %96 = call fastcc i32 @ov7670_write(ptr noundef %0, i8 noundef zeroext %89, i8 noundef zeroext %92) #12
  %97 = icmp sgt i32 %96, -1
  br i1 %97, label %86, label %218

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.ov7670_win_size, ptr %14, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.ov7670_win_size, ptr %14, i32 0, i32 4
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.ov7670_win_size, ptr %14, i32 0, i32 5
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr inbounds %struct.ov7670_win_size, ptr %14, i32 0, i32 6
  %106 = load i32, ptr %105, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  store i8 0, ptr %8, align 1, !annotation !8
  %107 = lshr i32 %100, 3
  %108 = trunc i32 %107 to i8
  %109 = load i8, ptr %24, align 1, !range !9
  %110 = icmp eq i8 %109, 0
  %111 = load ptr, ptr %27, align 4
  br i1 %110, label %114, label %112

112:                                              ; preds = %98
  %113 = call i32 @i2c_smbus_write_byte_data(ptr noundef %111, i8 noundef zeroext 23, i8 noundef zeroext %108) #12
  br label %125

114:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %115 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %115, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i8 23, ptr %7, align 2
  %116 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %108, ptr %116, align 1
  %117 = getelementptr inbounds %struct.i2c_client, ptr %111, i32 0, i32 1
  %118 = load i16, ptr %117, align 2
  store i16 %118, ptr %6, align 4
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %119, align 2
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %120, align 4
  %121 = getelementptr inbounds %struct.i2c_client, ptr %111, i32 0, i32 3
  %122 = load ptr, ptr %121, align 8
  %123 = call i32 @i2c_transfer(ptr noundef %122, ptr noundef nonnull %6, i32 noundef 1) #12
  %124 = call i32 @llvm.smin.i32(i32 %123, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  br label %125

125:                                              ; preds = %114, %112
  %126 = phi i32 [ %124, %114 ], [ %113, %112 ]
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %194

128:                                              ; preds = %125
  %129 = lshr i32 %102, 3
  %130 = trunc i32 %129 to i8
  %131 = load i8, ptr %24, align 1, !range !9
  %132 = icmp eq i8 %131, 0
  %133 = load ptr, ptr %27, align 4
  br i1 %132, label %136, label %134

134:                                              ; preds = %128
  %135 = call i32 @i2c_smbus_write_byte_data(ptr noundef %133, i8 noundef zeroext 24, i8 noundef zeroext %130) #12
  br label %147

136:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %137 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %137, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 24, ptr %5, align 2
  %138 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %130, ptr %138, align 1
  %139 = getelementptr inbounds %struct.i2c_client, ptr %133, i32 0, i32 1
  %140 = load i16, ptr %139, align 2
  store i16 %140, ptr %4, align 4
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %141, align 2
  %142 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %142, align 4
  %143 = getelementptr inbounds %struct.i2c_client, ptr %133, i32 0, i32 3
  %144 = load ptr, ptr %143, align 8
  %145 = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %4, i32 noundef 1) #12
  %146 = call i32 @llvm.smin.i32(i32 %145, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  br label %147

147:                                              ; preds = %136, %134
  %148 = phi i32 [ %146, %136 ], [ %135, %134 ]
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %194

150:                                              ; preds = %147
  %151 = call fastcc i32 @ov7670_read(ptr noundef %0, i8 noundef zeroext 50, ptr noundef nonnull %8) #12
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %194

153:                                              ; preds = %150
  %154 = load i8, ptr %8, align 1
  %155 = and i8 %154, -64
  %156 = shl i32 %102, 3
  %157 = and i32 %156, 56
  %158 = and i32 %100, 7
  %159 = or i32 %157, %158
  %160 = trunc i32 %159 to i8
  %161 = or i8 %155, %160
  store i8 %161, ptr %8, align 1
  call void @msleep(i32 noundef 10) #12
  %162 = load i8, ptr %24, align 1, !range !9
  %163 = icmp eq i8 %162, 0
  %164 = load ptr, ptr %27, align 4
  br i1 %163, label %167, label %165

165:                                              ; preds = %153
  %166 = call i32 @i2c_smbus_write_byte_data(ptr noundef %164, i8 noundef zeroext 50, i8 noundef zeroext %161) #12
  br label %178

167:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #12
  %168 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 2, ptr %168, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 50, ptr %3, align 2
  %169 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %161, ptr %169, align 1
  %170 = getelementptr inbounds %struct.i2c_client, ptr %164, i32 0, i32 1
  %171 = load i16, ptr %170, align 2
  store i16 %171, ptr %2, align 4
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %172, align 2
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %173, align 4
  %174 = getelementptr inbounds %struct.i2c_client, ptr %164, i32 0, i32 3
  %175 = load ptr, ptr %174, align 8
  %176 = call i32 @i2c_transfer(ptr noundef %175, ptr noundef nonnull %2, i32 noundef 1) #12
  %177 = call i32 @llvm.smin.i32(i32 %176, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #12
  br label %178

178:                                              ; preds = %167, %165
  %179 = phi i32 [ %177, %167 ], [ %166, %165 ]
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %194

181:                                              ; preds = %178
  %182 = lshr i32 %104, 2
  %183 = trunc i32 %182 to i8
  %184 = call fastcc i32 @ov7670_write(ptr noundef %0, i8 noundef zeroext 25, i8 noundef zeroext %183) #12
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %181
  %187 = lshr i32 %106, 2
  %188 = trunc i32 %187 to i8
  %189 = call fastcc i32 @ov7670_write(ptr noundef %0, i8 noundef zeroext 26, i8 noundef zeroext %188) #12
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = call fastcc i32 @ov7670_read(ptr noundef %0, i8 noundef zeroext 3, ptr noundef nonnull %8) #12
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %191, %186, %181, %178, %150, %147, %125
  %195 = phi i32 [ %192, %191 ], [ %189, %186 ], [ %184, %181 ], [ %179, %178 ], [ %151, %150 ], [ %148, %147 ], [ %126, %125 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  br label %218

196:                                              ; preds = %191
  %197 = load i8, ptr %8, align 1
  %198 = and i8 %197, -16
  %199 = shl i32 %106, 2
  %200 = and i32 %199, 12
  %201 = and i32 %104, 3
  %202 = or i32 %200, %201
  %203 = trunc i32 %202 to i8
  %204 = or i8 %198, %203
  call void @msleep(i32 noundef 10) #12
  %205 = call fastcc i32 @ov7670_write(ptr noundef %0, i8 noundef zeroext 3, i8 noundef zeroext %204) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %196
  %208 = getelementptr inbounds %struct.ov7670_win_size, ptr %14, i32 0, i32 7
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %207
  %212 = call fastcc i32 @ov7670_write_array(ptr noundef %0, ptr noundef nonnull %209)
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211, %207
  %215 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 17
  %216 = load i8, ptr %215, align 4
  %217 = call fastcc i32 @ov7670_write(ptr noundef %0, i8 noundef zeroext 17, i8 noundef zeroext %216)
  br label %218

218:                                              ; preds = %214, %211, %196, %194, %95, %79, %47
  %219 = phi i32 [ %48, %47 ], [ %80, %79 ], [ %205, %196 ], [ %212, %211 ], [ %217, %214 ], [ %195, %194 ], [ %96, %95 ]
  ret i32 %219
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ov7675_apply_framerate(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 17
  %7 = load i8, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 18
  %9 = load i8, ptr %8, align 1, !range !9
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  br i1 %10, label %15, label %13

13:                                               ; preds = %1
  %14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 17, i8 noundef zeroext %7) #12
  br label %26

15:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %16 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %16, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 17, ptr %5, align 2
  %17 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %7, ptr %17, align 1
  %18 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %19 = load i16, ptr %18, align 2
  store i16 %19, ptr %4, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %4, i32 noundef 1) #12
  %25 = call i32 @llvm.smin.i32(i32 %24, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  br label %26

26:                                               ; preds = %15, %13
  %27 = phi i32 [ %25, %15 ], [ %14, %13 ]
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 19
  %31 = load i8, ptr %30, align 2, !range !9
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i8 74, i8 10
  %34 = load i8, ptr %8, align 1, !range !9
  %35 = icmp eq i8 %34, 0
  %36 = load ptr, ptr %11, align 4
  br i1 %35, label %39, label %37

37:                                               ; preds = %29
  %38 = call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 107, i8 noundef zeroext %33) #12
  br label %50

39:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #12
  %40 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 2, ptr %40, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 107, ptr %3, align 2
  %41 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %33, ptr %41, align 1
  %42 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 1
  %43 = load i16, ptr %42, align 2
  store i16 %43, ptr %2, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %44, align 2
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %2, i32 noundef 1) #12
  %49 = call i32 @llvm.smin.i32(i32 %48, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #12
  br label %50

50:                                               ; preds = %39, %37, %26
  %51 = phi i32 [ %27, %26 ], [ %49, %39 ], [ %38, %37 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ov7670_read(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 18
  %7 = load i8, ptr %6, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  br i1 %8, label %16, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext %1) #12
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %36

14:                                               ; preds = %11
  %15 = trunc i32 %12 to i8
  store i8 %15, ptr %2, align 1
  br label %36

16:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 %1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %17 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 1, ptr %17, align 4, !annotation !8
  %18 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 1
  %19 = load i16, ptr %18, align 2
  store i16 %19, ptr %5, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %5, i32 noundef 1) #12
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %24) #13
  br label %34

28:                                               ; preds = %16
  store i16 1, ptr %20, align 2
  %29 = load ptr, ptr %22, align 8
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %5, i32 noundef 1) #12
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i8, ptr %4, align 1
  store i8 %33, ptr %2, align 1
  br label %34

34:                                               ; preds = %32, %28, %26
  %35 = phi i32 [ %24, %26 ], [ 0, %32 ], [ %30, %28 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  br label %36

36:                                               ; preds = %34, %14, %11
  %37 = phi i32 [ %35, %34 ], [ 0, %14 ], [ %12, %11 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ov7670_g_frame_interval(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 21
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ov7670_devtype, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %1, i32 0, i32 1
  tail call void %6(ptr noundef %0, ptr noundef %7) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ov7670_s_frame_interval(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ov7670_devtype, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, ptr noundef %3) #12
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ov7670_enum_mbus_code(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #6 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr [4 x %struct.ov7670_format_struct], ptr @ov7670_formats, i32 0, i32 %8
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %6, %3
  %15 = phi i32 [ 0, %10 ], [ -22, %6 ], [ -22, %3 ]
  ret i32 %15
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ov7670_enum_frame_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #7 {
  %4 = load i32, ptr %2, align 4
  %5 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 21
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ov7670_devtype, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = icmp ne i32 %8, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %49

14:                                               ; preds = %3
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 14
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 15
  br label %20

20:                                               ; preds = %45, %14
  %21 = phi i32 [ -1, %14 ], [ %46, %45 ]
  %22 = phi i32 [ 0, %14 ], [ %47, %45 ]
  %23 = getelementptr %struct.ov7670_win_size, ptr %15, i32 %22
  br i1 %18, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %23, align 4
  %26 = icmp slt i32 %25, %17
  br i1 %26, label %45, label %27

27:                                               ; preds = %24, %20
  %28 = load i32, ptr %19, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr %struct.ov7670_win_size, ptr %15, i32 %22, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp slt i32 %32, %28
  br i1 %33, label %45, label %34

34:                                               ; preds = %30, %27
  %35 = add i32 %21, 1
  %36 = icmp eq i32 %4, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, ptr %23, align 4
  %39 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 4
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 3
  store i32 %38, ptr %40, align 4
  %41 = getelementptr %struct.ov7670_win_size, ptr %15, i32 %22, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 6
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 5
  store i32 %42, ptr %44, align 4
  br label %49

45:                                               ; preds = %34, %30, %24
  %46 = phi i32 [ %35, %34 ], [ %21, %30 ], [ %21, %24 ]
  %47 = add nuw i32 %22, 1
  %48 = icmp eq i32 %47, %8
  br i1 %48, label %49, label %20

49:                                               ; preds = %45, %37, %3
  %50 = phi i32 [ 0, %37 ], [ -22, %3 ], [ -22, %45 ]
  ret i32 %50
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ov7670_enum_frame_interval(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #7 {
  %4 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ov7670_devtype, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %57

11:                                               ; preds = %3
  %12 = load i32, ptr %2, align 4
  %13 = icmp ugt i32 %12, 4
  br i1 %13, label %57, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %2, i32 0, i32 4
  %16 = icmp eq i32 %7, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 14
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 15
  %23 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %2, i32 0, i32 3
  br label %24

24:                                               ; preds = %46, %17
  %25 = phi i32 [ 0, %17 ], [ %47, %46 ]
  %26 = getelementptr %struct.ov7670_win_size, ptr %18, i32 %25
  br i1 %21, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %26, align 4
  %29 = icmp slt i32 %28, %20
  br i1 %29, label %46, label %30

30:                                               ; preds = %27, %24
  %31 = load i32, ptr %22, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr %struct.ov7670_win_size, ptr %18, i32 %25, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp slt i32 %35, %31
  br i1 %36, label %46, label %37

37:                                               ; preds = %33, %30
  %38 = load i32, ptr %23, align 4
  %39 = load i32, ptr %26, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, ptr %15, align 4
  %43 = getelementptr %struct.ov7670_win_size, ptr %18, i32 %25, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %41, %37, %33, %27
  %47 = add nuw i32 %25, 1
  %48 = icmp eq i32 %47, %7
  br i1 %48, label %57, label %24

49:                                               ; preds = %41, %14
  %50 = phi i32 [ 0, %14 ], [ %25, %41 ]
  %51 = icmp eq i32 %50, %7
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %2, i32 0, i32 5
  store i32 1, ptr %53, align 4
  %54 = getelementptr [5 x i32], ptr @ov7670_frame_rates, i32 0, i32 %12
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %2, i32 0, i32 5, i32 1
  store i32 %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %52, %49, %46, %11, %3
  %58 = phi i32 [ 0, %52 ], [ -22, %3 ], [ -22, %11 ], [ -22, %49 ], [ -22, %46 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ov7670_get_fmt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #2 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 998, i32 noundef 9, ptr noundef null) #12
  br label %11

11:                                               ; preds = %10, %6
  %12 = load ptr, ptr %1, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %13, ptr noundef align 4 dereferenceable(48) %12, i32 48, i1 false)
  br label %17

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %16 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %15, ptr noundef align 4 dereferenceable(48) %16, i32 48, i1 false)
  br label %17

17:                                               ; preds = %14, %11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ov7670_set_fmt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  br i1 %9, label %11, label %22

11:                                               ; preds = %7
  tail call fastcc void @ov7670_try_fmt_internal(ptr noundef %0, ptr noundef %10, ptr noundef null, ptr noundef null)
  %12 = load i32, ptr %4, align 4
  %13 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %18, label %17, !prof !11

17:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 998, i32 noundef 9, ptr noundef null) #12
  br label %18

18:                                               ; preds = %17, %11
  %19 = phi i32 [ 0, %17 ], [ %12, %11 ]
  %20 = load ptr, ptr %1, align 4
  %21 = getelementptr %struct.v4l2_subdev_pad_config, ptr %20, i32 %19
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %21, ptr noundef align 4 dereferenceable(48) %10, i32 48, i1 false)
  br label %30

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 7
  %24 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 8
  tail call fastcc void @ov7670_try_fmt_internal(ptr noundef %0, ptr noundef %10, ptr noundef %23, ptr noundef %24)
  %25 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = tail call fastcc i32 @ov7670_apply_fmt(ptr noundef %0)
  br label %30

30:                                               ; preds = %28, %22, %18, %3
  %31 = phi i32 [ 0, %18 ], [ %29, %28 ], [ -22, %3 ], [ 0, %22 ]
  ret i32 %31
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ov7670_try_fmt_internal(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #9 {
  %5 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 21
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ov7670_devtype, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr @ov7670_formats, align 4
  %12 = icmp eq i32 %11, %10
  br i1 %12, label %23, label %13

13:                                               ; preds = %4
  %14 = load i32, ptr getelementptr inbounds ([4 x %struct.ov7670_format_struct], ptr @ov7670_formats, i32 0, i32 1), align 4
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr getelementptr inbounds ([4 x %struct.ov7670_format_struct], ptr @ov7670_formats, i32 0, i32 2), align 4
  %18 = icmp eq i32 %17, %10
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr getelementptr inbounds ([4 x %struct.ov7670_format_struct], ptr @ov7670_formats, i32 0, i32 3), align 4
  %21 = icmp eq i32 %20, %10
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 %11, ptr %9, align 4
  br label %23

23:                                               ; preds = %22, %19, %16, %13, %4
  %24 = phi i32 [ 0, %22 ], [ 0, %4 ], [ 1, %13 ], [ 2, %16 ], [ 3, %19 ]
  %25 = icmp eq ptr %2, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = getelementptr %struct.ov7670_format_struct, ptr @ov7670_formats, i32 %24
  store ptr %27, ptr %2, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %1, i32 0, i32 3
  store i32 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 14
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 15
  %35 = load i32, ptr %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = icmp ne i32 %8, 0
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %41, label %58

39:                                               ; preds = %28
  %40 = icmp eq i32 %8, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %39, %33
  %42 = load ptr, ptr %5, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 15
  br label %45

45:                                               ; preds = %55, %41
  %46 = phi i32 [ 0, %41 ], [ %56, %55 ]
  %47 = getelementptr %struct.ov7670_win_size, ptr %43, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = icmp slt i32 %48, %31
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = getelementptr %struct.ov7670_win_size, ptr %43, i32 %46, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %44, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = add nuw i32 %46, 1
  %57 = icmp eq i32 %56, %8
  br i1 %57, label %58, label %45

58:                                               ; preds = %55, %50, %45, %39, %33
  %59 = phi i32 [ %8, %33 ], [ 0, %39 ], [ %8, %55 ], [ %46, %50 ], [ %46, %45 ]
  %60 = load ptr, ptr %5, align 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %1, i32 0, i32 1
  %63 = getelementptr %struct.ov7670_win_size, ptr %61, i32 %59
  %64 = icmp ult ptr %61, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %58
  %66 = load i32, ptr %1, align 4
  br label %67

67:                                               ; preds = %76, %65
  %68 = phi ptr [ %61, %65 ], [ %77, %76 ]
  %69 = load i32, ptr %68, align 4
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %62, align 4
  %73 = getelementptr inbounds %struct.ov7670_win_size, ptr %68, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71, %67
  %77 = getelementptr %struct.ov7670_win_size, ptr %68, i32 1
  %78 = icmp ult ptr %77, %63
  br i1 %78, label %67, label %79

79:                                               ; preds = %76, %71, %58
  %80 = phi ptr [ %61, %58 ], [ %68, %71 ], [ %77, %76 ]
  %81 = phi i32 [ -1, %58 ], [ 0, %71 ], [ -1, %76 ]
  %82 = getelementptr %struct.ov7670_win_size, ptr %80, i32 %81
  %83 = icmp eq ptr %3, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  store ptr %82, ptr %3, align 4
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i32, ptr %82, align 4
  store i32 %86, ptr %1, align 4
  %87 = getelementptr %struct.ov7670_win_size, ptr %80, i32 %81, i32 1
  %88 = load i32, ptr %87, align 4
  store i32 %88, ptr %62, align 4
  %89 = getelementptr [4 x %struct.ov7670_format_struct], ptr @ov7670_formats, i32 0, i32 %24, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %1, i32 0, i32 4
  store i32 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %92, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ov7670_open(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 998, i32 noundef 9, ptr noundef null) #12
  br label %9

9:                                                ; preds = %8, %2
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 21
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %10, align 4
  %15 = load ptr, ptr %11, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ov7670_win_size, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %10, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ov7670_format_struct, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %10, i32 0, i32 4
  store i32 %23, ptr %24, align 4
  %25 = load ptr, ptr %20, align 4
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %10, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %10, i32 0, i32 3
  store i32 1, ptr %28, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ov7670_set_framerate_legacy(ptr nocapture noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.v4l2_fract, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 16
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %5
  %15 = udiv i32 %14, %9
  %16 = icmp ugt i32 %9, %14
  %17 = tail call i32 @llvm.smin.i32(i32 %15, i32 63)
  %18 = select i1 %16, i32 1, i32 %17
  br label %19

19:                                               ; preds = %11, %7, %2
  %20 = phi i32 [ 1, %7 ], [ 1, %2 ], [ %18, %11 ]
  %21 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 17
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, -128
  %24 = trunc i32 %20 to i8
  %25 = or i8 %23, %24
  store i8 %25, ptr %21, align 4
  store i32 1, ptr %1, align 4
  %26 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 16
  %27 = load i32, ptr %26, align 4
  %28 = sdiv i32 %27, %20
  %29 = getelementptr inbounds %struct.v4l2_fract, ptr %1, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 10
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %19
  %34 = load i8, ptr %21, align 4
  %35 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 18
  %36 = load i8, ptr %35, align 1, !range !9
  %37 = icmp eq i8 %36, 0
  %38 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  br i1 %37, label %42, label %40

40:                                               ; preds = %33
  %41 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %39, i8 noundef zeroext 17, i8 noundef zeroext %34) #12
  br label %53

42:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %43 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %43, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i8 17, ptr %4, align 2
  %44 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %34, ptr %44, align 1
  %45 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 1
  %46 = load i16, ptr %45, align 2
  store i16 %46, ptr %3, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %47, align 2
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %3, i32 noundef 1) #12
  %52 = call i32 @llvm.smin.i32(i32 %51, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  br label %53

53:                                               ; preds = %42, %40, %19
  %54 = phi i32 [ 0, %19 ], [ %52, %42 ], [ %41, %40 ]
  ret i32 %54
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ov7670_get_framerate_legacy(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  store i32 1, ptr %1, align 4
  %3 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.v4l2_fract, ptr %1, i32 0, i32 1
  store i32 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 17
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = and i32 %8, 63
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = udiv i32 %4, %12
  store i32 %15, ptr %5, align 4
  br label %16

16:                                               ; preds = %14, %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ov7675_set_framerate(ptr nocapture noundef %0, ptr nocapture noundef %1) #2 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.v4l2_fract, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 19
  %11 = load i8, ptr %10, align 2, !range !9
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 20, i32 5
  %14 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 16
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, %3
  %17 = mul i32 %16, %13
  %18 = shl i32 %7, 2
  %19 = udiv i32 %17, %18
  %20 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 12289
  %24 = zext i1 %23 to i32
  %25 = shl i32 %19, %24
  %26 = add i32 %25, -1
  %27 = icmp eq i32 %26, 0
  %28 = tail call i32 @llvm.umin.i32(i32 %26, i32 63)
  %29 = trunc i32 %28 to i8
  br i1 %27, label %30, label %35

30:                                               ; preds = %9, %5, %2
  %31 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 19
  %32 = load i8, ptr %31, align 2, !range !9
  %33 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %30, %9
  %36 = phi ptr [ %34, %30 ], [ %21, %9 ]
  %37 = phi i8 [ %32, %30 ], [ %11, %9 ]
  %38 = phi i8 [ 64, %30 ], [ %29, %9 ]
  %39 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 17
  store i8 %38, ptr %39, align 4
  %40 = zext i8 %38 to i32
  %41 = icmp eq i8 %37, 0
  %42 = select i1 %41, i32 20, i32 5
  %43 = add nuw nsw i32 %40, 1
  %44 = load i32, ptr %36, align 4
  %45 = icmp eq i32 %44, 12289
  %46 = zext i1 %45 to i32
  %47 = lshr i32 %43, %46
  store i32 1, ptr %1, align 4
  %48 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 16
  %49 = load i32, ptr %48, align 4
  %50 = mul i32 %49, %42
  %51 = shl nuw nsw i32 %47, 2
  %52 = udiv i32 %50, %51
  %53 = getelementptr inbounds %struct.v4l2_fract, ptr %1, i32 0, i32 1
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 10
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %35
  %58 = tail call fastcc i32 @ov7675_apply_framerate(ptr noundef %0)
  br label %59

59:                                               ; preds = %57, %35
  %60 = phi i32 [ %58, %57 ], [ 0, %35 ]
  ret i32 %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ov7675_get_framerate(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 17
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 19
  %7 = load i8, ptr %6, align 2, !range !9
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i32 20, i32 5
  %10 = add nuw nsw i32 %5, 1
  %11 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 12289
  %15 = zext i1 %14 to i32
  %16 = lshr i32 %10, %15
  store i32 1, ptr %1, align 4
  %17 = getelementptr inbounds %struct.ov7670_info, ptr %0, i32 0, i32 16
  %18 = load i32, ptr %17, align 4
  %19 = mul i32 %18, %9
  %20 = shl nuw nsw i32 %16, 2
  %21 = udiv i32 %19, %20
  %22 = getelementptr inbounds %struct.v4l2_fract, ptr %1, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ov7670_g_volatile_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 9963794
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 -228
  %10 = getelementptr i8, ptr %8, i32 116
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  store i8 0, ptr %2, align 1, !annotation !8
  %12 = call fastcc i32 @ov7670_read(ptr noundef %9, i8 noundef zeroext 0, ptr noundef nonnull %2) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 22
  %16 = load i8, ptr %2, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, ptr %15, align 4
  br label %18

18:                                               ; preds = %14, %6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  br label %19

19:                                               ; preds = %18, %1
  %20 = phi i32 [ %12, %18 ], [ -22, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ov7670_s_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca i8, align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [2 x i8], align 2
  %24 = alloca i8, align 1
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [2 x i8], align 2
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [2 x i8], align 2
  %29 = alloca i8, align 1
  %30 = alloca %struct.i2c_msg, align 4
  %31 = alloca [2 x i8], align 2
  %32 = alloca i8, align 1
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca [2 x i8], align 2
  %35 = alloca i8, align 1
  %36 = alloca %struct.i2c_msg, align 4
  %37 = alloca [2 x i8], align 2
  %38 = alloca %struct.i2c_msg, align 4
  %39 = alloca [2 x i8], align 2
  %40 = alloca %struct.i2c_msg, align 4
  %41 = alloca [2 x i8], align 2
  %42 = alloca %struct.i2c_msg, align 4
  %43 = alloca [2 x i8], align 2
  %44 = alloca %struct.i2c_msg, align 4
  %45 = alloca [2 x i8], align 2
  %46 = alloca %struct.i2c_msg, align 4
  %47 = alloca [2 x i8], align 2
  %48 = alloca %struct.i2c_msg, align 4
  %49 = alloca [2 x i8], align 2
  %50 = alloca i8, align 1
  %51 = alloca %struct.i2c_msg, align 4
  %52 = alloca [2 x i8], align 2
  %53 = alloca %struct.i2c_msg, align 4
  %54 = alloca [2 x i8], align 2
  %55 = alloca %struct.i2c_msg, align 4
  %56 = alloca [2 x i8], align 2
  %57 = alloca i8, align 1
  %58 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr i8, ptr %59, i32 -228
  %61 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %62 = load i32, ptr %61, align 8
  switch i32 %62, label %804 [
    i32 9963776, label %63
    i32 9963777, label %111
    i32 9963778, label %133
    i32 9963797, label %463
    i32 9963796, label %494
    i32 9963794, label %525
    i32 10094849, label %606
    i32 10422531, label %744
  ]

63:                                               ; preds = %1
  %64 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %65 = load i32, ptr %64, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %57) #12
  store i8 0, ptr %57, align 1
  %66 = call fastcc i32 @ov7670_read(ptr noundef %60, i8 noundef zeroext 19, ptr noundef nonnull %57) #12
  %67 = load i8, ptr %57, align 1
  %68 = and i8 %67, -2
  store i8 %68, ptr %57, align 1
  %69 = getelementptr i8, ptr %59, i32 225
  %70 = load i8, ptr %69, align 1, !range !9
  %71 = icmp eq i8 %70, 0
  %72 = getelementptr i8, ptr %59, i32 -76
  %73 = load ptr, ptr %72, align 4
  br i1 %71, label %76, label %74

74:                                               ; preds = %63
  %75 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %73, i8 noundef zeroext 19, i8 noundef zeroext %68) #12
  br label %86

76:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %55) #12
  %77 = getelementptr inbounds i8, ptr %55, i32 4
  store i32 2, ptr %77, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %56) #12
  store i8 19, ptr %56, align 2
  %78 = getelementptr inbounds i8, ptr %56, i32 1
  store i8 %68, ptr %78, align 1
  %79 = getelementptr inbounds %struct.i2c_client, ptr %73, i32 0, i32 1
  %80 = load i16, ptr %79, align 2
  store i16 %80, ptr %55, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 1
  store i16 0, ptr %81, align 2
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 3
  store ptr %56, ptr %82, align 4
  %83 = getelementptr inbounds %struct.i2c_client, ptr %73, i32 0, i32 3
  %84 = load ptr, ptr %83, align 8
  %85 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %55, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %56) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %55) #12
  br label %86

86:                                               ; preds = %76, %74
  %87 = trunc i32 %65 to i8
  %88 = icmp slt i8 %87, 0
  %89 = and i8 %87, 127
  %90 = sub i8 0, %87
  %91 = or i8 %90, -128
  %92 = select i1 %88, i8 %89, i8 %91
  %93 = load i8, ptr %69, align 1, !range !9
  %94 = icmp eq i8 %93, 0
  %95 = load ptr, ptr %72, align 4
  br i1 %94, label %98, label %96

96:                                               ; preds = %86
  %97 = call i32 @i2c_smbus_write_byte_data(ptr noundef %95, i8 noundef zeroext 85, i8 noundef zeroext %92) #12
  br label %109

98:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %53) #12
  %99 = getelementptr inbounds i8, ptr %53, i32 4
  store i32 2, ptr %99, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %54) #12
  store i8 85, ptr %54, align 2
  %100 = getelementptr inbounds i8, ptr %54, i32 1
  store i8 %92, ptr %100, align 1
  %101 = getelementptr inbounds %struct.i2c_client, ptr %95, i32 0, i32 1
  %102 = load i16, ptr %101, align 2
  store i16 %102, ptr %53, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 1
  store i16 0, ptr %103, align 2
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 3
  store ptr %54, ptr %104, align 4
  %105 = getelementptr inbounds %struct.i2c_client, ptr %95, i32 0, i32 3
  %106 = load ptr, ptr %105, align 8
  %107 = call i32 @i2c_transfer(ptr noundef %106, ptr noundef nonnull %53, i32 noundef 1) #12
  %108 = call i32 @llvm.smin.i32(i32 %107, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %54) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %53) #12
  br label %109

109:                                              ; preds = %98, %96
  %110 = phi i32 [ %108, %98 ], [ %97, %96 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %57) #12
  br label %804

111:                                              ; preds = %1
  %112 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %113 = load i32, ptr %112, align 4
  %114 = trunc i32 %113 to i8
  %115 = getelementptr i8, ptr %59, i32 225
  %116 = load i8, ptr %115, align 1, !range !9
  %117 = icmp eq i8 %116, 0
  %118 = getelementptr i8, ptr %59, i32 -76
  %119 = load ptr, ptr %118, align 4
  br i1 %117, label %122, label %120

120:                                              ; preds = %111
  %121 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %119, i8 noundef zeroext 86, i8 noundef zeroext %114) #12
  br label %804

122:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %51) #12
  %123 = getelementptr inbounds i8, ptr %51, i32 4
  store i32 2, ptr %123, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %52) #12
  store i8 86, ptr %52, align 2
  %124 = getelementptr inbounds i8, ptr %52, i32 1
  store i8 %114, ptr %124, align 1
  %125 = getelementptr inbounds %struct.i2c_client, ptr %119, i32 0, i32 1
  %126 = load i16, ptr %125, align 2
  store i16 %126, ptr %51, align 4
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 1
  store i16 0, ptr %127, align 2
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 3
  store ptr %52, ptr %128, align 4
  %129 = getelementptr inbounds %struct.i2c_client, ptr %119, i32 0, i32 3
  %130 = load ptr, ptr %129, align 8
  %131 = call i32 @i2c_transfer(ptr noundef %130, ptr noundef nonnull %51, i32 noundef 1) #12
  %132 = call i32 @llvm.smin.i32(i32 %131, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %52) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %51) #12
  br label %804

133:                                              ; preds = %1
  %134 = getelementptr i8, ptr %59, i32 128
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.v4l2_ctrl, ptr %135, i32 0, i32 22
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr i8, ptr %59, i32 132
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.v4l2_ctrl, ptr %139, i32 0, i32 22
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr i8, ptr %59, i32 184
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr %struct.ov7670_format_struct, ptr %143, i32 0, i32 3, i32 0
  %145 = load i32, ptr %144, align 4
  %146 = mul i32 %145, %137
  %147 = ashr i32 %146, 7
  %148 = getelementptr %struct.ov7670_format_struct, ptr %143, i32 0, i32 3, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = mul i32 %149, %137
  %151 = ashr i32 %150, 7
  %152 = getelementptr %struct.ov7670_format_struct, ptr %143, i32 0, i32 3, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = mul i32 %153, %137
  %155 = ashr i32 %154, 7
  %156 = getelementptr %struct.ov7670_format_struct, ptr %143, i32 0, i32 3, i32 3
  %157 = load i32, ptr %156, align 4
  %158 = mul i32 %157, %137
  %159 = ashr i32 %158, 7
  %160 = getelementptr %struct.ov7670_format_struct, ptr %143, i32 0, i32 3, i32 4
  %161 = load i32, ptr %160, align 4
  %162 = mul i32 %161, %137
  %163 = ashr i32 %162, 7
  %164 = getelementptr %struct.ov7670_format_struct, ptr %143, i32 0, i32 3, i32 5
  %165 = load i32, ptr %164, align 4
  %166 = mul i32 %165, %137
  %167 = ashr i32 %166, 7
  %168 = icmp eq i32 %141, 0
  br i1 %168, label %235, label %169

169:                                              ; preds = %133
  %170 = tail call i32 @llvm.abs.i32(i32 %141, i1 false) #12
  %171 = icmp slt i32 %170, 91
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = sdiv i32 %170, 5
  %174 = getelementptr [19 x i32], ptr @ov7670_sin_table, i32 0, i32 %173
  %175 = load i32, ptr %174, align 4
  br label %182

176:                                              ; preds = %169
  %177 = add nsw i32 %170, -90
  %178 = udiv i32 %177, 5
  %179 = getelementptr [19 x i32], ptr @ov7670_sin_table, i32 0, i32 %178
  %180 = load i32, ptr %179, align 4
  %181 = sub i32 1000, %180
  br label %182

182:                                              ; preds = %176, %172
  %183 = phi i32 [ %175, %172 ], [ %181, %176 ]
  %184 = sub i32 0, %183
  %185 = icmp slt i32 %141, 0
  %186 = select i1 %185, i32 %184, i32 %183
  %187 = sub i32 90, %141
  %188 = icmp sgt i32 %187, 180
  %189 = sub i32 -270, %141
  %190 = icmp slt i32 %187, -180
  %191 = sub i32 450, %141
  %192 = select i1 %190, i32 %191, i32 %187
  %193 = select i1 %188, i32 %189, i32 %192
  %194 = tail call i32 @llvm.abs.i32(i32 %193, i1 false) #12
  %195 = icmp slt i32 %194, 91
  br i1 %195, label %196, label %200

196:                                              ; preds = %182
  %197 = sdiv i32 %194, 5
  %198 = getelementptr [19 x i32], ptr @ov7670_sin_table, i32 0, i32 %197
  %199 = load i32, ptr %198, align 4
  br label %206

200:                                              ; preds = %182
  %201 = add nsw i32 %194, -90
  %202 = udiv i32 %201, 5
  %203 = getelementptr [19 x i32], ptr @ov7670_sin_table, i32 0, i32 %202
  %204 = load i32, ptr %203, align 4
  %205 = sub i32 1000, %204
  br label %206

206:                                              ; preds = %200, %196
  %207 = phi i32 [ %199, %196 ], [ %205, %200 ]
  %208 = sub i32 0, %207
  %209 = icmp slt i32 %193, 0
  %210 = select i1 %209, i32 %208, i32 %207
  %211 = mul i32 %186, %159
  %212 = mul i32 %210, %147
  %213 = add i32 %212, %211
  %214 = sdiv i32 %213, 1000
  %215 = mul i32 %186, %163
  %216 = mul i32 %210, %151
  %217 = add i32 %216, %215
  %218 = sdiv i32 %217, 1000
  %219 = mul i32 %186, %167
  %220 = mul i32 %210, %155
  %221 = add i32 %220, %219
  %222 = sdiv i32 %221, 1000
  %223 = mul i32 %210, %159
  %224 = mul i32 %214, %186
  %225 = sub i32 %223, %224
  %226 = sdiv i32 %225, 1000
  %227 = mul i32 %210, %163
  %228 = mul i32 %218, %186
  %229 = sub i32 %227, %228
  %230 = sdiv i32 %229, 1000
  %231 = mul i32 %210, %167
  %232 = mul i32 %222, %186
  %233 = sub i32 %231, %232
  %234 = sdiv i32 %233, 1000
  br label %235

235:                                              ; preds = %206, %133
  %236 = phi i32 [ %147, %133 ], [ %214, %206 ]
  %237 = phi i32 [ %151, %133 ], [ %218, %206 ]
  %238 = phi i32 [ %155, %133 ], [ %222, %206 ]
  %239 = phi i32 [ %159, %133 ], [ %226, %206 ]
  %240 = phi i32 [ %163, %133 ], [ %230, %206 ]
  %241 = phi i32 [ %167, %133 ], [ %234, %206 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %50) #12
  store i8 0, ptr %50, align 1
  %242 = call fastcc i32 @ov7670_read(ptr noundef %60, i8 noundef zeroext 88, ptr noundef nonnull %50) #12
  %243 = load i8, ptr %50, align 1
  %244 = and i8 %243, -64
  %245 = icmp slt i32 %236, 0
  br i1 %245, label %415, label %421

246:                                              ; preds = %445
  %247 = icmp slt i32 %237, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %246
  %249 = call i32 @llvm.umin.i32(i32 %237, i32 255) #12
  %250 = trunc i32 %249 to i8
  br label %257

251:                                              ; preds = %246
  %252 = or i8 %425, 2
  %253 = icmp ult i32 %237, -255
  br i1 %253, label %257, label %254

254:                                              ; preds = %251
  %255 = trunc i32 %237 to i8
  %256 = sub i8 0, %255
  br label %257

257:                                              ; preds = %254, %251, %248
  %258 = phi i8 [ %252, %254 ], [ %252, %251 ], [ %425, %248 ]
  %259 = phi i8 [ %256, %254 ], [ -1, %251 ], [ %250, %248 ]
  %260 = load i8, ptr %427, align 1, !range !9
  %261 = icmp eq i8 %260, 0
  %262 = load ptr, ptr %430, align 4
  br i1 %261, label %265, label %263

263:                                              ; preds = %257
  %264 = call i32 @i2c_smbus_write_byte_data(ptr noundef %262, i8 noundef zeroext 80, i8 noundef zeroext %259) #12
  br label %276

265:                                              ; preds = %257
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #12
  %266 = getelementptr inbounds i8, ptr %36, i32 4
  store i32 2, ptr %266, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %37) #12
  store i8 80, ptr %37, align 2
  %267 = getelementptr inbounds i8, ptr %37, i32 1
  store i8 %259, ptr %267, align 1
  %268 = getelementptr inbounds %struct.i2c_client, ptr %262, i32 0, i32 1
  %269 = load i16, ptr %268, align 2
  store i16 %269, ptr %36, align 4
  %270 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 1
  store i16 0, ptr %270, align 2
  %271 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  store ptr %37, ptr %271, align 4
  %272 = getelementptr inbounds %struct.i2c_client, ptr %262, i32 0, i32 3
  %273 = load ptr, ptr %272, align 8
  %274 = call i32 @i2c_transfer(ptr noundef %273, ptr noundef nonnull %36, i32 noundef 1) #12
  %275 = call i32 @llvm.smin.i32(i32 %274, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %37) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #12
  br label %276

276:                                              ; preds = %265, %263
  %277 = phi i32 [ %275, %265 ], [ %264, %263 ]
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %461

279:                                              ; preds = %276
  %280 = icmp slt i32 %238, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %279
  %282 = call i32 @llvm.umin.i32(i32 %238, i32 255) #12
  %283 = trunc i32 %282 to i8
  br label %290

284:                                              ; preds = %279
  %285 = or i8 %258, 4
  %286 = icmp ult i32 %238, -255
  br i1 %286, label %290, label %287

287:                                              ; preds = %284
  %288 = trunc i32 %238 to i8
  %289 = sub i8 0, %288
  br label %290

290:                                              ; preds = %287, %284, %281
  %291 = phi i8 [ %285, %287 ], [ %285, %284 ], [ %258, %281 ]
  %292 = phi i8 [ %289, %287 ], [ -1, %284 ], [ %283, %281 ]
  %293 = load i8, ptr %427, align 1, !range !9
  %294 = icmp eq i8 %293, 0
  %295 = load ptr, ptr %430, align 4
  br i1 %294, label %298, label %296

296:                                              ; preds = %290
  %297 = call i32 @i2c_smbus_write_byte_data(ptr noundef %295, i8 noundef zeroext 81, i8 noundef zeroext %292) #12
  br label %309

298:                                              ; preds = %290
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #12
  %299 = getelementptr inbounds i8, ptr %38, i32 4
  store i32 2, ptr %299, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %39) #12
  store i8 81, ptr %39, align 2
  %300 = getelementptr inbounds i8, ptr %39, i32 1
  store i8 %292, ptr %300, align 1
  %301 = getelementptr inbounds %struct.i2c_client, ptr %295, i32 0, i32 1
  %302 = load i16, ptr %301, align 2
  store i16 %302, ptr %38, align 4
  %303 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  store i16 0, ptr %303, align 2
  %304 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  store ptr %39, ptr %304, align 4
  %305 = getelementptr inbounds %struct.i2c_client, ptr %295, i32 0, i32 3
  %306 = load ptr, ptr %305, align 8
  %307 = call i32 @i2c_transfer(ptr noundef %306, ptr noundef nonnull %38, i32 noundef 1) #12
  %308 = call i32 @llvm.smin.i32(i32 %307, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %39) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #12
  br label %309

309:                                              ; preds = %298, %296
  %310 = phi i32 [ %308, %298 ], [ %297, %296 ]
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %461

312:                                              ; preds = %309
  %313 = icmp slt i32 %239, 0
  br i1 %313, label %317, label %314

314:                                              ; preds = %312
  %315 = call i32 @llvm.umin.i32(i32 %239, i32 255) #12
  %316 = trunc i32 %315 to i8
  br label %323

317:                                              ; preds = %312
  %318 = or i8 %291, 8
  %319 = icmp ult i32 %239, -255
  br i1 %319, label %323, label %320

320:                                              ; preds = %317
  %321 = trunc i32 %239 to i8
  %322 = sub i8 0, %321
  br label %323

323:                                              ; preds = %320, %317, %314
  %324 = phi i8 [ %318, %320 ], [ %318, %317 ], [ %291, %314 ]
  %325 = phi i8 [ %322, %320 ], [ -1, %317 ], [ %316, %314 ]
  %326 = load i8, ptr %427, align 1, !range !9
  %327 = icmp eq i8 %326, 0
  %328 = load ptr, ptr %430, align 4
  br i1 %327, label %331, label %329

329:                                              ; preds = %323
  %330 = call i32 @i2c_smbus_write_byte_data(ptr noundef %328, i8 noundef zeroext 82, i8 noundef zeroext %325) #12
  br label %342

331:                                              ; preds = %323
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #12
  %332 = getelementptr inbounds i8, ptr %40, i32 4
  store i32 2, ptr %332, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %41) #12
  store i8 82, ptr %41, align 2
  %333 = getelementptr inbounds i8, ptr %41, i32 1
  store i8 %325, ptr %333, align 1
  %334 = getelementptr inbounds %struct.i2c_client, ptr %328, i32 0, i32 1
  %335 = load i16, ptr %334, align 2
  store i16 %335, ptr %40, align 4
  %336 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %336, align 2
  %337 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store ptr %41, ptr %337, align 4
  %338 = getelementptr inbounds %struct.i2c_client, ptr %328, i32 0, i32 3
  %339 = load ptr, ptr %338, align 8
  %340 = call i32 @i2c_transfer(ptr noundef %339, ptr noundef nonnull %40, i32 noundef 1) #12
  %341 = call i32 @llvm.smin.i32(i32 %340, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %41) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #12
  br label %342

342:                                              ; preds = %331, %329
  %343 = phi i32 [ %341, %331 ], [ %330, %329 ]
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %461

345:                                              ; preds = %342
  %346 = icmp slt i32 %240, 0
  br i1 %346, label %350, label %347

347:                                              ; preds = %345
  %348 = call i32 @llvm.umin.i32(i32 %240, i32 255) #12
  %349 = trunc i32 %348 to i8
  br label %356

350:                                              ; preds = %345
  %351 = or i8 %324, 16
  %352 = icmp ult i32 %240, -255
  br i1 %352, label %356, label %353

353:                                              ; preds = %350
  %354 = trunc i32 %240 to i8
  %355 = sub i8 0, %354
  br label %356

356:                                              ; preds = %353, %350, %347
  %357 = phi i8 [ %351, %353 ], [ %351, %350 ], [ %324, %347 ]
  %358 = phi i8 [ %355, %353 ], [ -1, %350 ], [ %349, %347 ]
  %359 = load i8, ptr %427, align 1, !range !9
  %360 = icmp eq i8 %359, 0
  %361 = load ptr, ptr %430, align 4
  br i1 %360, label %364, label %362

362:                                              ; preds = %356
  %363 = call i32 @i2c_smbus_write_byte_data(ptr noundef %361, i8 noundef zeroext 83, i8 noundef zeroext %358) #12
  br label %375

364:                                              ; preds = %356
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #12
  %365 = getelementptr inbounds i8, ptr %42, i32 4
  store i32 2, ptr %365, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %43) #12
  store i8 83, ptr %43, align 2
  %366 = getelementptr inbounds i8, ptr %43, i32 1
  store i8 %358, ptr %366, align 1
  %367 = getelementptr inbounds %struct.i2c_client, ptr %361, i32 0, i32 1
  %368 = load i16, ptr %367, align 2
  store i16 %368, ptr %42, align 4
  %369 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  store i16 0, ptr %369, align 2
  %370 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  store ptr %43, ptr %370, align 4
  %371 = getelementptr inbounds %struct.i2c_client, ptr %361, i32 0, i32 3
  %372 = load ptr, ptr %371, align 8
  %373 = call i32 @i2c_transfer(ptr noundef %372, ptr noundef nonnull %42, i32 noundef 1) #12
  %374 = call i32 @llvm.smin.i32(i32 %373, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %43) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #12
  br label %375

375:                                              ; preds = %364, %362
  %376 = phi i32 [ %374, %364 ], [ %363, %362 ]
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %461

378:                                              ; preds = %375
  %379 = icmp slt i32 %241, 0
  br i1 %379, label %383, label %380

380:                                              ; preds = %378
  %381 = call i32 @llvm.umin.i32(i32 %241, i32 255) #12
  %382 = trunc i32 %381 to i8
  br label %389

383:                                              ; preds = %378
  %384 = or i8 %357, 32
  %385 = icmp ult i32 %241, -255
  br i1 %385, label %389, label %386

386:                                              ; preds = %383
  %387 = trunc i32 %241 to i8
  %388 = sub i8 0, %387
  br label %389

389:                                              ; preds = %386, %383, %380
  %390 = phi i8 [ %384, %386 ], [ %384, %383 ], [ %357, %380 ]
  %391 = phi i8 [ %388, %386 ], [ -1, %383 ], [ %382, %380 ]
  %392 = load i8, ptr %427, align 1, !range !9
  %393 = icmp eq i8 %392, 0
  %394 = load ptr, ptr %430, align 4
  br i1 %393, label %397, label %395

395:                                              ; preds = %389
  %396 = call i32 @i2c_smbus_write_byte_data(ptr noundef %394, i8 noundef zeroext 84, i8 noundef zeroext %391) #12
  br label %408

397:                                              ; preds = %389
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #12
  %398 = getelementptr inbounds i8, ptr %44, i32 4
  store i32 2, ptr %398, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %45) #12
  store i8 84, ptr %45, align 2
  %399 = getelementptr inbounds i8, ptr %45, i32 1
  store i8 %391, ptr %399, align 1
  %400 = getelementptr inbounds %struct.i2c_client, ptr %394, i32 0, i32 1
  %401 = load i16, ptr %400, align 2
  store i16 %401, ptr %44, align 4
  %402 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  store i16 0, ptr %402, align 2
  %403 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  store ptr %45, ptr %403, align 4
  %404 = getelementptr inbounds %struct.i2c_client, ptr %394, i32 0, i32 3
  %405 = load ptr, ptr %404, align 8
  %406 = call i32 @i2c_transfer(ptr noundef %405, ptr noundef nonnull %44, i32 noundef 1) #12
  %407 = call i32 @llvm.smin.i32(i32 %406, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %45) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #12
  br label %408

408:                                              ; preds = %397, %395
  %409 = phi i32 [ %407, %397 ], [ %396, %395 ]
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %461

411:                                              ; preds = %408
  %412 = load i8, ptr %427, align 1, !range !9
  %413 = icmp eq i8 %412, 0
  %414 = load ptr, ptr %430, align 4
  br i1 %413, label %450, label %448

415:                                              ; preds = %235
  %416 = or i8 %244, 1
  %417 = icmp ult i32 %236, -255
  br i1 %417, label %424, label %418

418:                                              ; preds = %415
  %419 = trunc i32 %236 to i8
  %420 = sub i8 0, %419
  br label %424

421:                                              ; preds = %235
  %422 = tail call i32 @llvm.umin.i32(i32 %236, i32 255) #12
  %423 = trunc i32 %422 to i8
  br label %424

424:                                              ; preds = %421, %418, %415
  %425 = phi i8 [ %416, %418 ], [ %416, %415 ], [ %244, %421 ]
  %426 = phi i8 [ %420, %418 ], [ -1, %415 ], [ %423, %421 ]
  %427 = getelementptr i8, ptr %59, i32 225
  %428 = load i8, ptr %427, align 1, !range !9
  %429 = icmp eq i8 %428, 0
  %430 = getelementptr i8, ptr %59, i32 -76
  %431 = load ptr, ptr %430, align 4
  br i1 %429, label %434, label %432

432:                                              ; preds = %424
  %433 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %431, i8 noundef zeroext 79, i8 noundef zeroext %426) #12
  br label %445

434:                                              ; preds = %424
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #12
  %435 = getelementptr inbounds i8, ptr %46, i32 4
  store i32 2, ptr %435, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %47) #12
  store i8 79, ptr %47, align 2
  %436 = getelementptr inbounds i8, ptr %47, i32 1
  store i8 %426, ptr %436, align 1
  %437 = getelementptr inbounds %struct.i2c_client, ptr %431, i32 0, i32 1
  %438 = load i16, ptr %437, align 2
  store i16 %438, ptr %46, align 4
  %439 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %439, align 2
  %440 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store ptr %47, ptr %440, align 4
  %441 = getelementptr inbounds %struct.i2c_client, ptr %431, i32 0, i32 3
  %442 = load ptr, ptr %441, align 8
  %443 = call i32 @i2c_transfer(ptr noundef %442, ptr noundef nonnull %46, i32 noundef 1) #12
  %444 = call i32 @llvm.smin.i32(i32 %443, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %47) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #12
  br label %445

445:                                              ; preds = %434, %432
  %446 = phi i32 [ %444, %434 ], [ %433, %432 ]
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %246, label %461

448:                                              ; preds = %411
  %449 = call i32 @i2c_smbus_write_byte_data(ptr noundef %414, i8 noundef zeroext 88, i8 noundef zeroext %390) #12
  br label %461

450:                                              ; preds = %411
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48) #12
  %451 = getelementptr inbounds i8, ptr %48, i32 4
  store i32 2, ptr %451, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %49) #12
  store i8 88, ptr %49, align 2
  %452 = getelementptr inbounds i8, ptr %49, i32 1
  store i8 %390, ptr %452, align 1
  %453 = getelementptr inbounds %struct.i2c_client, ptr %414, i32 0, i32 1
  %454 = load i16, ptr %453, align 2
  store i16 %454, ptr %48, align 4
  %455 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 1
  store i16 0, ptr %455, align 2
  %456 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 3
  store ptr %49, ptr %456, align 4
  %457 = getelementptr inbounds %struct.i2c_client, ptr %414, i32 0, i32 3
  %458 = load ptr, ptr %457, align 8
  %459 = call i32 @i2c_transfer(ptr noundef %458, ptr noundef nonnull %48, i32 noundef 1) #12
  %460 = call i32 @llvm.smin.i32(i32 %459, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %49) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48) #12
  br label %461

461:                                              ; preds = %450, %448, %445, %408, %375, %342, %309, %276
  %462 = phi i32 [ %460, %450 ], [ %449, %448 ], [ %446, %445 ], [ %277, %276 ], [ %310, %309 ], [ %343, %342 ], [ %376, %375 ], [ %409, %408 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %50) #12
  br label %804

463:                                              ; preds = %1
  %464 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %465 = load i32, ptr %464, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %35) #12
  store i8 0, ptr %35, align 1
  %466 = call fastcc i32 @ov7670_read(ptr noundef %60, i8 noundef zeroext 30, ptr noundef nonnull %35) #12
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %492

468:                                              ; preds = %463
  %469 = icmp eq i32 %465, 0
  %470 = load i8, ptr %35, align 1
  %471 = and i8 %470, -17
  %472 = select i1 %469, i8 0, i8 16
  %473 = or i8 %471, %472
  tail call void @msleep(i32 noundef 10) #12
  %474 = getelementptr i8, ptr %59, i32 225
  %475 = load i8, ptr %474, align 1, !range !9
  %476 = icmp eq i8 %475, 0
  %477 = getelementptr i8, ptr %59, i32 -76
  %478 = load ptr, ptr %477, align 4
  br i1 %476, label %481, label %479

479:                                              ; preds = %468
  %480 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %478, i8 noundef zeroext 30, i8 noundef zeroext %473) #12
  br label %492

481:                                              ; preds = %468
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #12
  %482 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 2, ptr %482, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #12
  store i8 30, ptr %34, align 2
  %483 = getelementptr inbounds i8, ptr %34, i32 1
  store i8 %473, ptr %483, align 1
  %484 = getelementptr inbounds %struct.i2c_client, ptr %478, i32 0, i32 1
  %485 = load i16, ptr %484, align 2
  store i16 %485, ptr %33, align 4
  %486 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %486, align 2
  %487 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %34, ptr %487, align 4
  %488 = getelementptr inbounds %struct.i2c_client, ptr %478, i32 0, i32 3
  %489 = load ptr, ptr %488, align 8
  %490 = call i32 @i2c_transfer(ptr noundef %489, ptr noundef nonnull %33, i32 noundef 1) #12
  %491 = call i32 @llvm.smin.i32(i32 %490, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #12
  br label %492

492:                                              ; preds = %481, %479, %463
  %493 = phi i32 [ %466, %463 ], [ %491, %481 ], [ %480, %479 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %35) #12
  br label %804

494:                                              ; preds = %1
  %495 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %496 = load i32, ptr %495, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %32) #12
  store i8 0, ptr %32, align 1
  %497 = call fastcc i32 @ov7670_read(ptr noundef %60, i8 noundef zeroext 30, ptr noundef nonnull %32) #12
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %523

499:                                              ; preds = %494
  %500 = icmp eq i32 %496, 0
  %501 = load i8, ptr %32, align 1
  %502 = and i8 %501, -33
  %503 = select i1 %500, i8 0, i8 32
  %504 = or i8 %502, %503
  tail call void @msleep(i32 noundef 10) #12
  %505 = getelementptr i8, ptr %59, i32 225
  %506 = load i8, ptr %505, align 1, !range !9
  %507 = icmp eq i8 %506, 0
  %508 = getelementptr i8, ptr %59, i32 -76
  %509 = load ptr, ptr %508, align 4
  br i1 %507, label %512, label %510

510:                                              ; preds = %499
  %511 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %509, i8 noundef zeroext 30, i8 noundef zeroext %504) #12
  br label %523

512:                                              ; preds = %499
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #12
  %513 = getelementptr inbounds i8, ptr %30, i32 4
  store i32 2, ptr %513, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #12
  store i8 30, ptr %31, align 2
  %514 = getelementptr inbounds i8, ptr %31, i32 1
  store i8 %504, ptr %514, align 1
  %515 = getelementptr inbounds %struct.i2c_client, ptr %509, i32 0, i32 1
  %516 = load i16, ptr %515, align 2
  store i16 %516, ptr %30, align 4
  %517 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %517, align 2
  %518 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %31, ptr %518, align 4
  %519 = getelementptr inbounds %struct.i2c_client, ptr %509, i32 0, i32 3
  %520 = load ptr, ptr %519, align 8
  %521 = call i32 @i2c_transfer(ptr noundef %520, ptr noundef nonnull %30, i32 noundef 1) #12
  %522 = call i32 @llvm.smin.i32(i32 %521, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #12
  br label %523

523:                                              ; preds = %512, %510, %494
  %524 = phi i32 [ %497, %494 ], [ %522, %512 ], [ %511, %510 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %32) #12
  br label %804

525:                                              ; preds = %1
  %526 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %527 = load i32, ptr %526, align 4
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %580

529:                                              ; preds = %525
  %530 = getelementptr i8, ptr %59, i32 116
  %531 = load ptr, ptr %530, align 4
  %532 = getelementptr inbounds %struct.v4l2_ctrl, ptr %531, i32 0, i32 22
  %533 = load i32, ptr %532, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %29) #12
  store i8 0, ptr %29, align 1, !annotation !8
  %534 = trunc i32 %533 to i8
  %535 = getelementptr i8, ptr %59, i32 225
  %536 = load i8, ptr %535, align 1, !range !9
  %537 = icmp eq i8 %536, 0
  %538 = getelementptr i8, ptr %59, i32 -76
  %539 = load ptr, ptr %538, align 4
  br i1 %537, label %542, label %540

540:                                              ; preds = %529
  %541 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %539, i8 noundef zeroext 0, i8 noundef zeroext %534) #12
  br label %553

542:                                              ; preds = %529
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #12
  %543 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 2, ptr %543, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #12
  store i8 0, ptr %28, align 2
  %544 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 %534, ptr %544, align 1
  %545 = getelementptr inbounds %struct.i2c_client, ptr %539, i32 0, i32 1
  %546 = load i16, ptr %545, align 2
  store i16 %546, ptr %27, align 4
  %547 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %547, align 2
  %548 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %28, ptr %548, align 4
  %549 = getelementptr inbounds %struct.i2c_client, ptr %539, i32 0, i32 3
  %550 = load ptr, ptr %549, align 8
  %551 = call i32 @i2c_transfer(ptr noundef %550, ptr noundef nonnull %27, i32 noundef 1) #12
  %552 = call i32 @llvm.smin.i32(i32 %551, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #12
  br label %553

553:                                              ; preds = %542, %540
  %554 = phi i32 [ %552, %542 ], [ %541, %540 ]
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %578

556:                                              ; preds = %553
  %557 = call fastcc i32 @ov7670_read(ptr noundef %60, i8 noundef zeroext 19, ptr noundef nonnull %29) #12
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %578

559:                                              ; preds = %556
  %560 = load i8, ptr %29, align 1
  %561 = and i8 %560, -5
  %562 = load i8, ptr %535, align 1, !range !9
  %563 = icmp eq i8 %562, 0
  %564 = load ptr, ptr %538, align 4
  br i1 %563, label %567, label %565

565:                                              ; preds = %559
  %566 = call i32 @i2c_smbus_write_byte_data(ptr noundef %564, i8 noundef zeroext 19, i8 noundef zeroext %561) #12
  br label %578

567:                                              ; preds = %559
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #12
  %568 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 2, ptr %568, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #12
  store i8 19, ptr %26, align 2
  %569 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 %561, ptr %569, align 1
  %570 = getelementptr inbounds %struct.i2c_client, ptr %564, i32 0, i32 1
  %571 = load i16, ptr %570, align 2
  store i16 %571, ptr %25, align 4
  %572 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %572, align 2
  %573 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %26, ptr %573, align 4
  %574 = getelementptr inbounds %struct.i2c_client, ptr %564, i32 0, i32 3
  %575 = load ptr, ptr %574, align 8
  %576 = call i32 @i2c_transfer(ptr noundef %575, ptr noundef nonnull %25, i32 noundef 1) #12
  %577 = call i32 @llvm.smin.i32(i32 %576, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #12
  br label %578

578:                                              ; preds = %567, %565, %556, %553
  %579 = phi i32 [ %554, %553 ], [ %557, %556 ], [ %577, %567 ], [ %566, %565 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %29) #12
  br label %804

580:                                              ; preds = %525
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #12
  store i8 0, ptr %24, align 1, !annotation !8
  %581 = call fastcc i32 @ov7670_read(ptr noundef %60, i8 noundef zeroext 19, ptr noundef nonnull %24) #12
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %604

583:                                              ; preds = %580
  %584 = load i8, ptr %24, align 1
  %585 = or i8 %584, 4
  %586 = getelementptr i8, ptr %59, i32 225
  %587 = load i8, ptr %586, align 1, !range !9
  %588 = icmp eq i8 %587, 0
  %589 = getelementptr i8, ptr %59, i32 -76
  %590 = load ptr, ptr %589, align 4
  br i1 %588, label %593, label %591

591:                                              ; preds = %583
  %592 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %590, i8 noundef zeroext 19, i8 noundef zeroext %585) #12
  br label %604

593:                                              ; preds = %583
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #12
  %594 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 2, ptr %594, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #12
  store i8 19, ptr %23, align 2
  %595 = getelementptr inbounds i8, ptr %23, i32 1
  store i8 %585, ptr %595, align 1
  %596 = getelementptr inbounds %struct.i2c_client, ptr %590, i32 0, i32 1
  %597 = load i16, ptr %596, align 2
  store i16 %597, ptr %22, align 4
  %598 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %598, align 2
  %599 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %23, ptr %599, align 4
  %600 = getelementptr inbounds %struct.i2c_client, ptr %590, i32 0, i32 3
  %601 = load ptr, ptr %600, align 8
  %602 = call i32 @i2c_transfer(ptr noundef %601, ptr noundef nonnull %22, i32 noundef 1) #12
  %603 = call i32 @llvm.smin.i32(i32 %602, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #12
  br label %604

604:                                              ; preds = %593, %591, %580
  %605 = phi i32 [ %581, %580 ], [ %603, %593 ], [ %592, %591 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #12
  br label %804

606:                                              ; preds = %1
  %607 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %608 = load i32, ptr %607, align 4
  %609 = icmp eq i32 %608, 1
  br i1 %609, label %610, label %715

610:                                              ; preds = %606
  %611 = getelementptr i8, ptr %59, i32 124
  %612 = load ptr, ptr %611, align 4
  %613 = getelementptr inbounds %struct.v4l2_ctrl, ptr %612, i32 0, i32 22
  %614 = load i32, ptr %613, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #12
  store i8 0, ptr %19, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #12
  store i8 0, ptr %20, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #12
  store i8 0, ptr %21, align 1, !annotation !8
  %615 = call fastcc i32 @ov7670_read(ptr noundef %60, i8 noundef zeroext 4, ptr noundef nonnull %19) #12
  %616 = call fastcc i32 @ov7670_read(ptr noundef %60, i8 noundef zeroext 19, ptr noundef nonnull %20) #12
  %617 = add i32 %616, %615
  %618 = call fastcc i32 @ov7670_read(ptr noundef %60, i8 noundef zeroext 7, ptr noundef nonnull %21) #12
  %619 = add i32 %617, %618
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %713

621:                                              ; preds = %610
  %622 = load i8, ptr %19, align 1
  %623 = and i8 %622, -4
  %624 = trunc i32 %614 to i8
  %625 = and i8 %624, 3
  %626 = or i8 %623, %625
  store i8 %626, ptr %19, align 1
  %627 = lshr i32 %614, 2
  %628 = trunc i32 %627 to i8
  %629 = load i8, ptr %21, align 1
  %630 = and i8 %629, -64
  %631 = lshr i32 %614, 10
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 63
  %634 = or i8 %630, %633
  store i8 %634, ptr %21, align 1
  %635 = getelementptr i8, ptr %59, i32 225
  %636 = load i8, ptr %635, align 1, !range !9
  %637 = icmp eq i8 %636, 0
  %638 = getelementptr i8, ptr %59, i32 -76
  %639 = load ptr, ptr %638, align 4
  br i1 %637, label %642, label %640

640:                                              ; preds = %621
  %641 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %639, i8 noundef zeroext 4, i8 noundef zeroext %626) #12
  br label %653

642:                                              ; preds = %621
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #12
  %643 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %643, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #12
  store i8 4, ptr %18, align 2
  %644 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 %626, ptr %644, align 1
  %645 = getelementptr inbounds %struct.i2c_client, ptr %639, i32 0, i32 1
  %646 = load i16, ptr %645, align 2
  store i16 %646, ptr %17, align 4
  %647 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %647, align 2
  %648 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %18, ptr %648, align 4
  %649 = getelementptr inbounds %struct.i2c_client, ptr %639, i32 0, i32 3
  %650 = load ptr, ptr %649, align 8
  %651 = call i32 @i2c_transfer(ptr noundef %650, ptr noundef nonnull %17, i32 noundef 1) #12
  %652 = call i32 @llvm.smin.i32(i32 %651, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #12
  br label %653

653:                                              ; preds = %642, %640
  %654 = phi i32 [ %652, %642 ], [ %641, %640 ]
  %655 = load i8, ptr %635, align 1, !range !9
  %656 = icmp eq i8 %655, 0
  %657 = load ptr, ptr %638, align 4
  br i1 %656, label %660, label %658

658:                                              ; preds = %653
  %659 = call i32 @i2c_smbus_write_byte_data(ptr noundef %657, i8 noundef zeroext 16, i8 noundef zeroext %628) #12
  br label %671

660:                                              ; preds = %653
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  %661 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %661, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #12
  store i8 16, ptr %16, align 2
  %662 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 %628, ptr %662, align 1
  %663 = getelementptr inbounds %struct.i2c_client, ptr %657, i32 0, i32 1
  %664 = load i16, ptr %663, align 2
  store i16 %664, ptr %15, align 4
  %665 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %665, align 2
  %666 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %16, ptr %666, align 4
  %667 = getelementptr inbounds %struct.i2c_client, ptr %657, i32 0, i32 3
  %668 = load ptr, ptr %667, align 8
  %669 = call i32 @i2c_transfer(ptr noundef %668, ptr noundef nonnull %15, i32 noundef 1) #12
  %670 = call i32 @llvm.smin.i32(i32 %669, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  br label %671

671:                                              ; preds = %660, %658
  %672 = phi i32 [ %670, %660 ], [ %659, %658 ]
  %673 = add i32 %672, %654
  %674 = load i8, ptr %635, align 1, !range !9
  %675 = icmp eq i8 %674, 0
  %676 = load ptr, ptr %638, align 4
  br i1 %675, label %679, label %677

677:                                              ; preds = %671
  %678 = call i32 @i2c_smbus_write_byte_data(ptr noundef %676, i8 noundef zeroext 7, i8 noundef zeroext %634) #12
  br label %690

679:                                              ; preds = %671
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  %680 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %680, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #12
  store i8 7, ptr %14, align 2
  %681 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 %634, ptr %681, align 1
  %682 = getelementptr inbounds %struct.i2c_client, ptr %676, i32 0, i32 1
  %683 = load i16, ptr %682, align 2
  store i16 %683, ptr %13, align 4
  %684 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %684, align 2
  %685 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %14, ptr %685, align 4
  %686 = getelementptr inbounds %struct.i2c_client, ptr %676, i32 0, i32 3
  %687 = load ptr, ptr %686, align 8
  %688 = call i32 @i2c_transfer(ptr noundef %687, ptr noundef nonnull %13, i32 noundef 1) #12
  %689 = call i32 @llvm.smin.i32(i32 %688, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  br label %690

690:                                              ; preds = %679, %677
  %691 = phi i32 [ %689, %679 ], [ %678, %677 ]
  %692 = add i32 %673, %691
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %694, label %713

694:                                              ; preds = %690
  %695 = load i8, ptr %20, align 1
  %696 = and i8 %695, -2
  %697 = load i8, ptr %635, align 1, !range !9
  %698 = icmp eq i8 %697, 0
  %699 = load ptr, ptr %638, align 4
  br i1 %698, label %702, label %700

700:                                              ; preds = %694
  %701 = call i32 @i2c_smbus_write_byte_data(ptr noundef %699, i8 noundef zeroext 19, i8 noundef zeroext %696) #12
  br label %713

702:                                              ; preds = %694
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  %703 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %703, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i8 19, ptr %12, align 2
  %704 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 %696, ptr %704, align 1
  %705 = getelementptr inbounds %struct.i2c_client, ptr %699, i32 0, i32 1
  %706 = load i16, ptr %705, align 2
  store i16 %706, ptr %11, align 4
  %707 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %707, align 2
  %708 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %12, ptr %708, align 4
  %709 = getelementptr inbounds %struct.i2c_client, ptr %699, i32 0, i32 3
  %710 = load ptr, ptr %709, align 8
  %711 = call i32 @i2c_transfer(ptr noundef %710, ptr noundef nonnull %11, i32 noundef 1) #12
  %712 = call i32 @llvm.smin.i32(i32 %711, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  br label %713

713:                                              ; preds = %702, %700, %690, %610
  %714 = phi i32 [ %619, %610 ], [ %692, %690 ], [ %712, %702 ], [ %701, %700 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #12
  br label %804

715:                                              ; preds = %606
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #12
  store i8 0, ptr %10, align 1, !annotation !8
  %716 = call fastcc i32 @ov7670_read(ptr noundef %60, i8 noundef zeroext 19, ptr noundef nonnull %10) #12
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %718, label %742

718:                                              ; preds = %715
  %719 = icmp eq i32 %608, 0
  %720 = load i8, ptr %10, align 1
  %721 = and i8 %720, -2
  %722 = zext i1 %719 to i8
  %723 = or i8 %721, %722
  %724 = getelementptr i8, ptr %59, i32 225
  %725 = load i8, ptr %724, align 1, !range !9
  %726 = icmp eq i8 %725, 0
  %727 = getelementptr i8, ptr %59, i32 -76
  %728 = load ptr, ptr %727, align 4
  br i1 %726, label %731, label %729

729:                                              ; preds = %718
  %730 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %728, i8 noundef zeroext 19, i8 noundef zeroext %723) #12
  br label %742

731:                                              ; preds = %718
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  %732 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %732, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i8 19, ptr %9, align 2
  %733 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %723, ptr %733, align 1
  %734 = getelementptr inbounds %struct.i2c_client, ptr %728, i32 0, i32 1
  %735 = load i16, ptr %734, align 2
  store i16 %735, ptr %8, align 4
  %736 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %736, align 2
  %737 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %9, ptr %737, align 4
  %738 = getelementptr inbounds %struct.i2c_client, ptr %728, i32 0, i32 3
  %739 = load ptr, ptr %738, align 8
  %740 = call i32 @i2c_transfer(ptr noundef %739, ptr noundef nonnull %8, i32 noundef 1) #12
  %741 = call i32 @llvm.smin.i32(i32 %740, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  br label %742

742:                                              ; preds = %731, %729, %715
  %743 = phi i32 [ %716, %715 ], [ %741, %731 ], [ %730, %729 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #12
  br label %804

744:                                              ; preds = %1
  %745 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %746 = load i32, ptr %745, align 4
  %747 = trunc i32 %746 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  store i8 0, ptr %7, align 1, !annotation !8
  %748 = call fastcc i32 @ov7670_read(ptr noundef %60, i8 noundef zeroext 112, ptr noundef nonnull %7) #12
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %751, label %750

750:                                              ; preds = %744
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  br label %804

751:                                              ; preds = %744
  %752 = shl i8 %747, 7
  %753 = load i8, ptr %7, align 1
  %754 = and i8 %753, 127
  %755 = or i8 %754, %752
  %756 = getelementptr i8, ptr %59, i32 225
  %757 = load i8, ptr %756, align 1, !range !9
  %758 = icmp eq i8 %757, 0
  %759 = getelementptr i8, ptr %59, i32 -76
  %760 = load ptr, ptr %759, align 4
  br i1 %758, label %763, label %761

761:                                              ; preds = %751
  %762 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %760, i8 noundef zeroext 112, i8 noundef zeroext %755) #12
  br label %774

763:                                              ; preds = %751
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %764 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %764, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 112, ptr %5, align 2
  %765 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %755, ptr %765, align 1
  %766 = getelementptr inbounds %struct.i2c_client, ptr %760, i32 0, i32 1
  %767 = load i16, ptr %766, align 2
  store i16 %767, ptr %4, align 4
  %768 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %768, align 2
  %769 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %769, align 4
  %770 = getelementptr inbounds %struct.i2c_client, ptr %760, i32 0, i32 3
  %771 = load ptr, ptr %770, align 8
  %772 = call i32 @i2c_transfer(ptr noundef %771, ptr noundef nonnull %4, i32 noundef 1) #12
  %773 = call i32 @llvm.smin.i32(i32 %772, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  br label %774

774:                                              ; preds = %763, %761
  %775 = phi i32 [ %773, %763 ], [ %762, %761 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %777, label %804

777:                                              ; preds = %774
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 0, ptr %6, align 1, !annotation !8
  %778 = call fastcc i32 @ov7670_read(ptr noundef %60, i8 noundef zeroext 113, ptr noundef nonnull %6) #12
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %780, label %802

780:                                              ; preds = %777
  %781 = shl i8 %747, 6
  %782 = and i8 %781, -128
  %783 = load i8, ptr %6, align 1
  %784 = and i8 %783, 127
  %785 = or i8 %784, %782
  %786 = load i8, ptr %756, align 1, !range !9
  %787 = icmp eq i8 %786, 0
  %788 = load ptr, ptr %759, align 4
  br i1 %787, label %791, label %789

789:                                              ; preds = %780
  %790 = call i32 @i2c_smbus_write_byte_data(ptr noundef %788, i8 noundef zeroext 113, i8 noundef zeroext %785) #12
  br label %802

791:                                              ; preds = %780
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #12
  %792 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 2, ptr %792, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 113, ptr %3, align 2
  %793 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %785, ptr %793, align 1
  %794 = getelementptr inbounds %struct.i2c_client, ptr %788, i32 0, i32 1
  %795 = load i16, ptr %794, align 2
  store i16 %795, ptr %2, align 4
  %796 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %796, align 2
  %797 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %797, align 4
  %798 = getelementptr inbounds %struct.i2c_client, ptr %788, i32 0, i32 3
  %799 = load ptr, ptr %798, align 8
  %800 = call i32 @i2c_transfer(ptr noundef %799, ptr noundef nonnull %2, i32 noundef 1) #12
  %801 = call i32 @llvm.smin.i32(i32 %800, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #12
  br label %802

802:                                              ; preds = %791, %789, %777
  %803 = phi i32 [ %778, %777 ], [ %801, %791 ], [ %790, %789 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  br label %804

804:                                              ; preds = %802, %774, %750, %742, %713, %604, %578, %523, %492, %461, %122, %120, %109, %1
  %805 = phi i32 [ %714, %713 ], [ %743, %742 ], [ %605, %604 ], [ %579, %578 ], [ %524, %523 ], [ %493, %492 ], [ %462, %461 ], [ %110, %109 ], [ -22, %1 ], [ %132, %122 ], [ %121, %120 ], [ %803, %802 ], [ %775, %774 ], [ %748, %750 ]
  ret i32 %805
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
