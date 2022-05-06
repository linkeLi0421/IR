; ModuleID = '/llk/IR/drivers/media/i2c/adv7604.c_pt.bc'
source_filename = "../drivers/media/i2c/adv7604.c"
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
%struct.adv76xx_chip_info = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, [2 x ptr], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.adv76xx_format_info = type { i32, i8, i8, i8, i8 }
%struct.adv76xx_reg_seq = type { i32, i8 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.81 }
%union.anon.81 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.v4l2_dv_timings = type { i32, %union.anon.79 }
%union.anon.79 = type { [32 x i32] }
%struct.adv76xx_cfg_read_infoframe = type { ptr, i8, i8, i8 }
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.adv76xx_video_standards = type <{ %struct.v4l2_dv_timings, i8, i8 }>
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.adv76xx_register_map = type { ptr, i8 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.90, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.90 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adv76xx_state = type { ptr, %struct.adv76xx_platform_data, [4 x ptr], ptr, %struct.v4l2_subdev, [7 x %struct.media_pad], i32, %struct.v4l2_ctrl_handler, i32, %struct.v4l2_dv_timings, ptr, %struct.anon.84, [2 x i16], %struct.v4l2_fract, i32, %struct.delayed_work, i8, ptr, [3 x i8], i8, i8, [13 x ptr], [13 x ptr], ptr, ptr, ptr, ptr, ptr }
%struct.adv76xx_platform_data = type { i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, [13 x i8] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.74 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.84 = type { [512 x i8], i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.76, %union.anon.77, i32, ptr, i32, %struct.anon.78, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.76 = type { i64 }
%union.anon.77 = type { ptr }
%struct.anon.78 = type { i32 }
%struct.stdi_readback = type { i16, i16, i16, i8, i8, i8 }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.80, i16, i16, i16, [10 x i16] }
%union.anon.80 = type { i16 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], ptr }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.87 }
%union.anon.87 = type { [16 x i32] }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype251 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug252 = internal constant [29 x i8] c"parm=debug:debug level (0-2)\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [65 x i8] c"description=Analog Devices ADV7604/10/11/12 video decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [45 x i8] c"author=Hans Verkuil <hans.verkuil@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [49 x i8] c"author=Mats Randgaard <mats.randgaard@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@adv76xx_i2c_id = internal constant [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adv7604\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv76xx_chip_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7610\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @adv76xx_chip_info, i64 172) to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7611\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @adv76xx_chip_info, i64 172) to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7612\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @adv76xx_chip_info, i64 344) to i32) }, %struct.i2c_device_id zeroinitializer], align 4
@adv76xx_of_id = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7610\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adv76xx_chip_info, i64 172) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7611\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adv76xx_chip_info, i64 172) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7612\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @adv76xx_chip_info, i64 344) }, %struct.of_device_id zeroinitializer], align 4
@adv76xx_chip_info = internal constant [3 x %struct.adv76xx_chip_info] [%struct.adv76xx_chip_info { i32 0, i8 1, i32 5, i32 4, i32 119, i32 125, i32 119, i32 16, i32 118, i32 64, i32 112, i32 179, i32 30, i32 224, i32 193, i32 252, i32 77, i32 38, i32 1, i8 1, ptr @adv7604_formats, i32 19, ptr @adv7604_set_termination, ptr @adv7604_setup_irqs, ptr @adv7604_read_hdmi_pixelclock, ptr @adv7604_read_cable_det, [2 x ptr] [ptr @adv7604_recommended_settings_afe, ptr @adv7604_recommended_settings_hdmi], [2 x i32] [i32 18, i32 14], i32 8191, i32 4095, i32 4095, i32 4095, i32 1023, i32 1023, i32 1023, i32 8191, i32 8191, i32 8191, i32 8191, i32 8191, i32 8191 }, %struct.adv76xx_chip_info { i32 1, i8 0, i32 0, i32 1, i32 116, i32 118, i32 122, i32 1, i32 0, i32 0, i32 0, i32 163, i32 1, i32 67, i32 3, i32 244, i32 147, i32 44, i32 2, i8 0, ptr @adv7611_formats, i32 13, ptr @adv7611_set_termination, ptr @adv7611_setup_irqs, ptr @adv7611_read_hdmi_pixelclock, ptr @adv7611_read_cable_det, [2 x ptr] [ptr null, ptr @adv7611_recommended_settings_hdmi], [2 x i32] [i32 0, i32 12], i32 3021, i32 8191, i32 8191, i32 8191, i32 8191, i32 8191, i32 8191, i32 16383, i32 16383, i32 16383, i32 16383, i32 16383, i32 16383 }, %struct.adv76xx_chip_info { i32 2, i8 0, i32 0, i32 1, i32 116, i32 118, i32 122, i32 1, i32 112, i32 1, i32 82, i32 163, i32 1, i32 67, i32 3, i32 244, i32 147, i32 44, i32 2, i8 0, ptr @adv7612_formats, i32 7, ptr @adv7611_set_termination, ptr @adv7612_setup_irqs, ptr @adv7611_read_hdmi_pixelclock, ptr @adv7612_read_cable_det, [2 x ptr] [ptr null, ptr @adv7612_recommended_settings_hdmi], [2 x i32] [i32 0, i32 10], i32 3021, i32 8191, i32 8191, i32 8191, i32 8191, i32 8191, i32 8191, i32 16383, i32 16383, i32 16383, i32 16383, i32 16383, i32 16383 }], align 4
@adv7604_formats = internal constant [19 x %struct.adv76xx_format_info] [%struct.adv76xx_format_info { i32 4106, i8 96, i8 1, i8 0, i8 64 }, %struct.adv76xx_format_info { i32 8200, i8 96, i8 0, i8 0, i8 0 }, %struct.adv76xx_format_info { i32 8201, i8 96, i8 0, i8 1, i8 0 }, %struct.adv76xx_format_info { i32 8203, i8 96, i8 0, i8 0, i8 1 }, %struct.adv76xx_format_info { i32 8204, i8 96, i8 0, i8 1, i8 1 }, %struct.adv76xx_format_info { i32 8222, i8 96, i8 0, i8 0, i8 2 }, %struct.adv76xx_format_info { i32 8223, i8 96, i8 0, i8 1, i8 2 }, %struct.adv76xx_format_info { i32 8207, i8 -96, i8 0, i8 0, i8 -128 }, %struct.adv76xx_format_info { i32 8208, i8 -96, i8 0, i8 1, i8 -128 }, %struct.adv76xx_format_info { i32 8209, i8 96, i8 0, i8 0, i8 -128 }, %struct.adv76xx_format_info { i32 8210, i8 96, i8 0, i8 1, i8 -128 }, %struct.adv76xx_format_info { i32 8218, i8 -96, i8 0, i8 0, i8 -127 }, %struct.adv76xx_format_info { i32 8219, i8 -96, i8 0, i8 1, i8 -127 }, %struct.adv76xx_format_info { i32 8205, i8 96, i8 0, i8 0, i8 -127 }, %struct.adv76xx_format_info { i32 8206, i8 96, i8 0, i8 1, i8 -127 }, %struct.adv76xx_format_info { i32 8224, i8 -96, i8 0, i8 0, i8 -126 }, %struct.adv76xx_format_info { i32 8225, i8 -96, i8 0, i8 1, i8 -126 }, %struct.adv76xx_format_info { i32 8226, i8 96, i8 0, i8 0, i8 -126 }, %struct.adv76xx_format_info { i32 8227, i8 96, i8 0, i8 1, i8 -126 }], align 4
@adv7604_recommended_settings_afe = internal constant [18 x %struct.adv76xx_reg_seq] [%struct.adv76xx_reg_seq { i32 2317, i8 4 }, %struct.adv76xx_reg_seq { i32 2317, i8 4 }, %struct.adv76xx_reg_seq { i32 2365, i8 0 }, %struct.adv76xx_reg_seq { i32 2366, i8 116 }, %struct.adv76xx_reg_seq { i32 2382, i8 59 }, %struct.adv76xx_reg_seq { i32 2391, i8 116 }, %struct.adv76xx_reg_seq { i32 2392, i8 99 }, %struct.adv76xx_reg_seq { i32 2445, i8 24 }, %struct.adv76xx_reg_seq { i32 2446, i8 52 }, %struct.adv76xx_reg_seq { i32 2451, i8 -120 }, %struct.adv76xx_reg_seq { i32 2452, i8 46 }, %struct.adv76xx_reg_seq { i32 2454, i8 0 }, %struct.adv76xx_reg_seq { i32 1554, i8 123 }, %struct.adv76xx_reg_seq { i32 1548, i8 31 }, %struct.adv76xx_reg_seq { i32 2878, i8 4 }, %struct.adv76xx_reg_seq { i32 3011, i8 57 }, %struct.adv76xx_reg_seq { i32 2880, i8 92 }, %struct.adv76xx_reg_seq { i32 65535, i8 0 }], align 4
@adv7604_recommended_settings_hdmi = internal constant [14 x %struct.adv76xx_reg_seq] [%struct.adv76xx_reg_seq { i32 2317, i8 -124 }, %struct.adv76xx_reg_seq { i32 2365, i8 16 }, %struct.adv76xx_reg_seq { i32 2366, i8 57 }, %struct.adv76xx_reg_seq { i32 2382, i8 59 }, %struct.adv76xx_reg_seq { i32 2391, i8 -74 }, %struct.adv76xx_reg_seq { i32 2392, i8 3 }, %struct.adv76xx_reg_seq { i32 2445, i8 24 }, %struct.adv76xx_reg_seq { i32 2446, i8 52 }, %struct.adv76xx_reg_seq { i32 2451, i8 -117 }, %struct.adv76xx_reg_seq { i32 2452, i8 45 }, %struct.adv76xx_reg_seq { i32 2454, i8 1 }, %struct.adv76xx_reg_seq { i32 1554, i8 -5 }, %struct.adv76xx_reg_seq { i32 1548, i8 13 }, %struct.adv76xx_reg_seq { i32 65535, i8 0 }], align 4
@adv7611_formats = internal constant [13 x %struct.adv76xx_format_info] [%struct.adv76xx_format_info { i32 4106, i8 96, i8 1, i8 0, i8 64 }, %struct.adv76xx_format_info { i32 8200, i8 96, i8 0, i8 0, i8 0 }, %struct.adv76xx_format_info { i32 8201, i8 96, i8 0, i8 1, i8 0 }, %struct.adv76xx_format_info { i32 8222, i8 96, i8 0, i8 0, i8 2 }, %struct.adv76xx_format_info { i32 8223, i8 96, i8 0, i8 1, i8 2 }, %struct.adv76xx_format_info { i32 8207, i8 -96, i8 0, i8 0, i8 -128 }, %struct.adv76xx_format_info { i32 8208, i8 -96, i8 0, i8 1, i8 -128 }, %struct.adv76xx_format_info { i32 8209, i8 96, i8 0, i8 0, i8 -128 }, %struct.adv76xx_format_info { i32 8210, i8 96, i8 0, i8 1, i8 -128 }, %struct.adv76xx_format_info { i32 8224, i8 -96, i8 0, i8 0, i8 -126 }, %struct.adv76xx_format_info { i32 8225, i8 -96, i8 0, i8 1, i8 -126 }, %struct.adv76xx_format_info { i32 8226, i8 96, i8 0, i8 0, i8 -126 }, %struct.adv76xx_format_info { i32 8227, i8 96, i8 0, i8 1, i8 -126 }], align 4
@adv7611_recommended_settings_hdmi = internal constant [12 x %struct.adv76xx_reg_seq] [%struct.adv76xx_reg_seq { i32 2924, i8 0 }, %struct.adv76xx_reg_seq { i32 2459, i8 3 }, %struct.adv76xx_reg_seq { i32 2415, i8 8 }, %struct.adv76xx_reg_seq { i32 2437, i8 31 }, %struct.adv76xx_reg_seq { i32 2439, i8 112 }, %struct.adv76xx_reg_seq { i32 2391, i8 -38 }, %struct.adv76xx_reg_seq { i32 2392, i8 1 }, %struct.adv76xx_reg_seq { i32 2307, i8 -104 }, %struct.adv76xx_reg_seq { i32 2380, i8 68 }, %struct.adv76xx_reg_seq { i32 2445, i8 4 }, %struct.adv76xx_reg_seq { i32 2446, i8 30 }, %struct.adv76xx_reg_seq { i32 65535, i8 0 }], align 4
@adv7612_formats = internal constant [7 x %struct.adv76xx_format_info] [%struct.adv76xx_format_info { i32 4106, i8 96, i8 1, i8 0, i8 64 }, %struct.adv76xx_format_info { i32 8200, i8 96, i8 0, i8 0, i8 0 }, %struct.adv76xx_format_info { i32 8201, i8 96, i8 0, i8 1, i8 0 }, %struct.adv76xx_format_info { i32 8207, i8 -96, i8 0, i8 0, i8 -128 }, %struct.adv76xx_format_info { i32 8208, i8 -96, i8 0, i8 1, i8 -128 }, %struct.adv76xx_format_info { i32 8209, i8 96, i8 0, i8 0, i8 -128 }, %struct.adv76xx_format_info { i32 8210, i8 96, i8 0, i8 1, i8 -128 }], align 4
@adv7612_recommended_settings_hdmi = internal constant [10 x %struct.adv76xx_reg_seq] [%struct.adv76xx_reg_seq { i32 2924, i8 0 }, %struct.adv76xx_reg_seq { i32 2459, i8 3 }, %struct.adv76xx_reg_seq { i32 2415, i8 8 }, %struct.adv76xx_reg_seq { i32 2437, i8 31 }, %struct.adv76xx_reg_seq { i32 2439, i8 112 }, %struct.adv76xx_reg_seq { i32 2391, i8 -38 }, %struct.adv76xx_reg_seq { i32 2392, i8 1 }, %struct.adv76xx_reg_seq { i32 2307, i8 -104 }, %struct.adv76xx_reg_seq { i32 2380, i8 68 }, %struct.adv76xx_reg_seq { i32 65535, i8 0 }], align 4
@.str = private unnamed_addr constant [40 x i8] c"\013%s %d-%04x: error reading %02x, %02x\0A\00", align 1
@adv76xx_driver = internal global %struct.i2c_driver { i32 0, ptr @adv76xx_probe, ptr @adv76xx_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adv76xx_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adv76xx_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"adv7604\00", align 1
@adv76xx_probe.cea640x480 = internal unnamed_addr constant { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 25175000, i32 16, i32 96, i32 48, i32 10, i32 2, i32 33, i32 0, i32 0, i32 0, i32 3, i32 128, %struct.v4l2_fract zeroinitializer, i8 1, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"\017%s %d-%04x: detecting adv76xx client on address 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\013%s %d-%04x: DT parsing error\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\013%s %d-%04x: No platform data!\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"hpd\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\016%s %d-%04x: Handling HPD %u GPIO\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@adv76xx_ops = internal constant %struct.v4l2_subdev_ops { ptr @adv76xx_core_ops, ptr null, ptr null, ptr @adv76xx_video_ops, ptr null, ptr null, ptr null, ptr @adv76xx_pad_ops }, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"%s %d-%04x\00", align 1
@adv76xx_int_ops = internal constant %struct.v4l2_subdev_internal_ops { ptr @adv76xx_registered, ptr @adv76xx_unregistered, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"\013%s: Error configuring IO regmap region\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"\013%s: Error %d reading IO Regmap\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"\013%s: not an ADV7604 on address 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"\013%s: not an %s on address 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"ADV7610/11\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"ADV7612\00", align 1
@adv76xx_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr @adv76xx_g_volatile_ctrl, ptr null, ptr @adv76xx_s_ctrl }, align 4
@adv7604_ctrl_analog_sampling_phase = internal constant %struct.v4l2_ctrl_config { ptr @adv76xx_ctrl_ops, ptr null, i32 10492160, ptr @.str.182, i32 1, i64 0, i64 31, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@adv76xx_ctrl_free_run_color_manual = internal constant %struct.v4l2_ctrl_config { ptr @adv76xx_ctrl_ops, ptr null, i32 10492161, ptr @.str.183, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@adv76xx_ctrl_free_run_color = internal constant %struct.v4l2_ctrl_config { ptr @adv76xx_ctrl_ops, ptr null, i32 10492162, ptr @.str.184, i32 1, i64 0, i64 16777215, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@.str.15 = private unnamed_addr constant [38 x i8] c"\013%s: failed to create i2c client %u\0A\00", align 1
@adv76xx_cec_adap_ops = internal constant %struct.cec_adap_ops { ptr @adv76xx_cec_adap_enable, ptr null, ptr null, ptr @adv76xx_cec_adap_log_addr, ptr @adv76xx_cec_adap_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"\016%s: %s found @ 0x%x (%s)\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"default-input\00", align 1
@adv76xx_core_ops = internal constant %struct.v4l2_subdev_core_ops { ptr @adv76xx_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv76xx_isr, ptr @adv76xx_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, align 4
@adv76xx_video_ops = internal constant %struct.v4l2_subdev_video_ops { ptr @adv76xx_s_routing, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv76xx_g_input_status, ptr null, ptr null, ptr null, ptr null, ptr @adv76xx_s_dv_timings, ptr @adv76xx_g_dv_timings, ptr @adv76xx_query_dv_timings, ptr null, ptr null, ptr null }, align 4
@adv76xx_pad_ops = internal constant %struct.v4l2_subdev_pad_ops { ptr null, ptr @adv76xx_enum_mbus_code, ptr null, ptr null, ptr @adv76xx_get_format, ptr @adv76xx_set_format, ptr @adv76xx_get_selection, ptr null, ptr @adv76xx_get_edid, ptr @adv76xx_set_edid, ptr @adv76xx_dv_timings_cap, ptr @adv76xx_enum_dv_timings, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@adv76xx_log_status.csc_coeff_sel_rb = internal unnamed_addr constant [16 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.20, ptr @.str.22, ptr @.str.20, ptr @.str.23, ptr @.str.20, ptr @.str.24, ptr @.str.25, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.26], align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"bypassed\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"YPbPr601 -> RGB\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"YPbPr709 -> RGB\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"RGB -> YPbPr601\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"RGB -> YPbPr709\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"YPbPr709 -> YPbPr601\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"YPbPr601 -> YPbPr709\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@adv76xx_log_status.input_color_space_txt = internal unnamed_addr constant [16 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.36], align 4
@.str.27 = private unnamed_addr constant [27 x i8] c"RGB limited range (16-235)\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"RGB full range (0-255)\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"YCbCr Bt.601 (16-235)\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"YCbCr Bt.709 (16-235)\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"xvYCC Bt.601\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"xvYCC Bt.709\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"YCbCr Bt.601 (0-255)\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"YCbCr Bt.709 (0-255)\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"automatic\00", align 1
@adv76xx_log_status.hdmi_color_space_txt = internal unnamed_addr constant [16 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35], align 4
@.str.37 = private unnamed_addr constant [5 x i8] c"sYCC\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"opYCC 601\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"opRGB\00", align 1
@adv76xx_log_status.rgb_quantization_range_txt = internal unnamed_addr constant [3 x ptr] [ptr @.str.40, ptr @.str.27, ptr @.str.28], align 4
@.str.40 = private unnamed_addr constant [10 x i8] c"Automatic\00", align 1
@adv76xx_log_status.deep_color_mode_txt = internal unnamed_addr constant [4 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], align 4
@.str.41 = private unnamed_addr constant [19 x i8] c"8-bits per channel\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"10-bits per channel\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"12-bits per channel\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"16-bits per channel (not supported)\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"\016%s: -----Chip status-----\0A\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"\016%s: Chip power: %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.49 = private unnamed_addr constant [52 x i8] c"\016%s: EDID enabled port A: %s, B: %s, C: %s, D: %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"\016%s: CEC: %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"\016%s: CEC Logical Address: 0x%x\0A\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"\016%s: -----Signal status-----\0A\00", align 1
@.str.57 = private unnamed_addr constant [66 x i8] c"\016%s: Cable detected (+5V power) port A: %s, B: %s, C: %s, D: %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"\016%s: TMDS signal detected: %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.61 = private unnamed_addr constant [30 x i8] c"\016%s: TMDS signal locked: %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"\016%s: SSPD locked: %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"\016%s: STDI locked: %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"\016%s: CP locked: %s\0A\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"\016%s: CP free run: %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [57 x i8] c"\016%s: Prim-mode = 0x%x, video std = 0x%x, v_freq = 0x%x\0A\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"\016%s: -----Video Timings-----\0A\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"\016%s: STDI: not locked\0A\00", align 1
@.str.69 = private unnamed_addr constant [91 x i8] c"\016%s: STDI: lcf (frame height - 1) = %d, bl = %d, lcvs (vsync) = %d, %s, %chsync, %cvsync\0A\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"\016%s: No video detected\0A\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"Detected format: \00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"Configured format: \00", align 1
@.str.75 = private unnamed_addr constant [29 x i8] c"\016%s: -----Color space-----\0A\00", align 1
@.str.76 = private unnamed_addr constant [39 x i8] c"\016%s: RGB quantization range ctrl: %s\0A\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"\016%s: Input color space: %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [47 x i8] c"\016%s: Output color space: %s %s, alt-gamma %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"YCbCr\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"(16-235)\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"(0-255)\00", align 1
@.str.83 = private unnamed_addr constant [34 x i8] c"\016%s: Color space conversion: %s\0A\00", align 1
@.str.84 = private unnamed_addr constant [27 x i8] c"\016%s: -----%s status-----\0A\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"DVI-D\00", align 1
@.str.87 = private unnamed_addr constant [39 x i8] c"\016%s: Digital video port selected: %c\0A\00", align 1
@.str.88 = private unnamed_addr constant [34 x i8] c"\016%s: HDCP encrypted content: %s\0A\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"\016%s: HDCP keys read: %s%s\0A\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.93 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.94 = private unnamed_addr constant [37 x i8] c"\016%s: Audio: pll %s, samples %s, %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"not locked\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"detected\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"not detected\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"muted\00", align 1
@.str.100 = private unnamed_addr constant [24 x i8] c"\016%s: Audio format: %s\0A\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"multi-channel\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.103 = private unnamed_addr constant [21 x i8] c"\016%s: Audio CTS: %u\0A\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"\016%s: Audio N: %u\0A\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"\016%s: AV Mute: %s\0A\00", align 1
@.str.106 = private unnamed_addr constant [27 x i8] c"\016%s: Deep color mode: %s\0A\00", align 1
@.str.107 = private unnamed_addr constant [27 x i8] c"\016%s: HDMI colorspace: %s\0A\00", align 1
@.str.108 = private unnamed_addr constant [39 x i8] c"\017%s: %s: STDI and/or SSPD not locked\0A\00", align 1
@__func__.read_stdi = private unnamed_addr constant [10 x i8] c"read_stdi\00", align 1
@.str.109 = private unnamed_addr constant [51 x i8] c"\017%s: %s: signal lost during readout of STDI/SSPD\0A\00", align 1
@.str.110 = private unnamed_addr constant [26 x i8] c"\017%s: %s: invalid signal\0A\00", align 1
@.str.111 = private unnamed_addr constant [89 x i8] c"\017%s: %s: lcf (frame height - 1) = %d, bl = %d, lcvs (vsync) = %d, %chsync, %cvsync, %s\0A\00", align 1
@.str.112 = private unnamed_addr constant [27 x i8] c"\017%s: %s: no valid signal\0A\00", align 1
@__func__.adv76xx_query_dv_timings = private unnamed_addr constant [25 x i8] c"adv76xx_query_dv_timings\00", align 1
@.str.113 = private unnamed_addr constant [32 x i8] c"\017%s: %s: STDI/SSPD not locked\0A\00", align 1
@.str.114 = private unnamed_addr constant [25 x i8] c"\017%s: %s: lcvs + 1 = %d\0A\00", align 1
@.str.115 = private unnamed_addr constant [25 x i8] c"\017%s: %s: lcvs - 1 = %d\0A\00", align 1
@.str.116 = private unnamed_addr constant [24 x i8] c"\017%s: %s: restart STDI\0A\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"\017%s: %s: format not supported\0A\00", align 1
@.str.118 = private unnamed_addr constant [38 x i8] c"\017%s: %s: signal lost during readout\0A\00", align 1
@.str.119 = private unnamed_addr constant [38 x i8] c"\017%s: %s: pixelclock out of range %d\0A\00", align 1
@.str.120 = private unnamed_addr constant [27 x i8] c"adv76xx_query_dv_timings: \00", align 1
@adv76xx_timings_cap_digital = internal constant %struct.v4l2_dv_timings_cap { i32 0, i32 0, [2 x i32] zeroinitializer, %union.anon.81 { %struct.v4l2_bt_timings_cap { i32 640, i32 1920, i32 350, i32 1200, i64 25000000, i64 225000000, i32 15, i32 14, [16 x i32] zeroinitializer }, [24 x i8] undef } }, align 4
@adv7604_timings_cap_analog = internal constant %struct.v4l2_dv_timings_cap { i32 0, i32 0, [2 x i32] zeroinitializer, %union.anon.81 { %struct.v4l2_bt_timings_cap { i32 640, i32 1920, i32 350, i32 1200, i64 25000000, i64 170000000, i32 15, i32 14, [16 x i32] zeroinitializer }, [24 x i8] undef } }, align 4
@adv76xx_timings_exceptions = internal constant <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, %struct.v4l2_dv_timings }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 1760, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 62, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, %struct.v4l2_dv_timings zeroinitializer }>, align 1
@v4l2_dv_timings_presets = external dso_local constant [0 x %struct.v4l2_dv_timings], align 1
@.str.122 = private unnamed_addr constant [86 x i8] c"\017%s: %s: No format candidate found for lcvs = %d, lcf=%d, bl = %d, %chsync, %cvsync\0A\00", align 1
@__func__.stdi2dv_timings = private unnamed_addr constant [16 x i8] c"stdi2dv_timings\00", align 1
@.str.123 = private unnamed_addr constant [43 x i8] c"\016%s: receive DVI-D signal, no infoframes\0A\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@adv76xx_cri = internal unnamed_addr constant [4 x %struct.adv76xx_cfg_read_infoframe] [%struct.adv76xx_cfg_read_infoframe { ptr @.str.128, i8 1, i8 -32, i8 0 }, %struct.adv76xx_cfg_read_infoframe { ptr @.str.129, i8 2, i8 -29, i8 28 }, %struct.adv76xx_cfg_read_infoframe { ptr @.str.130, i8 4, i8 -26, i8 42 }, %struct.adv76xx_cfg_read_infoframe { ptr @.str.131, i8 16, i8 -20, i8 84 }], align 4
@.str.125 = private unnamed_addr constant [33 x i8] c"\016%s: %s infoframe not received\0A\00", align 1
@.str.126 = private unnamed_addr constant [42 x i8] c"\013%s: %s: invalid %s infoframe length %d\0A\00", align 1
@__func__.adv76xx_read_infoframe = private unnamed_addr constant [23 x i8] c"adv76xx_read_infoframe\00", align 1
@.str.127 = private unnamed_addr constant [41 x i8] c"\013%s: %s: unpack of %s infoframe failed\0A\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"AVI\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"Audio\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"SDP\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"Vendor\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"\017%s: %s: \00", align 1
@__func__.adv76xx_isr = private unnamed_addr constant [12 x i8] c"adv76xx_isr\00", align 1
@.str.133 = private unnamed_addr constant [56 x i8] c"\017%s: %s: fmt_change = 0x%x, fmt_change_digital = 0x%x\0A\00", align 1
@.str.134 = private unnamed_addr constant [23 x i8] c"\017%s: %s: irq %s mode\0A\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"DVI\00", align 1
@.str.136 = private unnamed_addr constant [23 x i8] c"\017%s: %s: tx_5v: 0x%x\0A\00", align 1
@adv76xx_ev_fmt = internal constant { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, align 8
@.str.138 = private unnamed_addr constant [61 x i8] c"\017%s: %s: RGB quantization range: %d, RGB out: %d, HDMI: %d\0A\00", align 1
@__func__.set_rgb_quantization_range = private unnamed_addr constant [27 x i8] c"set_rgb_quantization_range\00", align 1
@.str.139 = private unnamed_addr constant [49 x i8] c"\017%s: %s: %s gain: a = 0x%x, b = 0x%x, c = 0x%x\0A\00", align 1
@__func__.adv76xx_set_gain = private unnamed_addr constant [17 x i8] c"adv76xx_set_gain\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c"Auto\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"Manual\00", align 1
@.str.142 = private unnamed_addr constant [62 x i8] c"\013%s: %s: i2c error writing to CP reg 0x73, 0x74, 0x75, 0x76\0A\00", align 1
@.str.143 = private unnamed_addr constant [51 x i8] c"\017%s: %s: %s offset: a = 0x%x, b = 0x%x, c = 0x%x\0A\00", align 1
@__func__.adv76xx_set_offset = private unnamed_addr constant [19 x i8] c"adv76xx_set_offset\00", align 1
@.str.144 = private unnamed_addr constant [62 x i8] c"\013%s: %s: i2c error writing to CP reg 0x77, 0x78, 0x79, 0x7a\0A\00", align 1
@.str.145 = private unnamed_addr constant [25 x i8] c"\017%s: %s: cec: irq 0x%x\0A\00", align 1
@__func__.adv76xx_cec_isr = private unnamed_addr constant [16 x i8] c"adv76xx_cec_isr\00", align 1
@.str.146 = private unnamed_addr constant [31 x i8] c"\017%s: %s: tx raw: tx disabled\0A\00", align 1
@__func__.adv76xx_cec_tx_raw_status = private unnamed_addr constant [26 x i8] c"adv76xx_cec_tx_raw_status\00", align 1
@.str.147 = private unnamed_addr constant [36 x i8] c"\017%s: %s: tx raw: arbitration lost\0A\00", align 1
@.str.148 = private unnamed_addr constant [32 x i8] c"\017%s: %s: tx raw: retry failed\0A\00", align 1
@.str.149 = private unnamed_addr constant [28 x i8] c"\017%s: %s: tx raw: ready ok\0A\00", align 1
@.str.150 = private unnamed_addr constant [38 x i8] c"\017%s: %s: input %d, selected input %d\00", align 1
@__func__.adv76xx_s_routing = private unnamed_addr constant [18 x i8] c"adv76xx_s_routing\00", align 1
@.str.151 = private unnamed_addr constant [36 x i8] c"\017%s: %s: Unknown port %d selected\0A\00", align 1
@__func__.select_input = private unnamed_addr constant [13 x i8] c"select_input\00", align 1
@__func__.enable_input = private unnamed_addr constant [13 x i8] c"enable_input\00", align 1
@.str.152 = private unnamed_addr constant [25 x i8] c"\017%s: %s: status = 0x%x\0A\00", align 1
@__func__.adv76xx_g_input_status = private unnamed_addr constant [23 x i8] c"adv76xx_g_input_status\00", align 1
@.str.153 = private unnamed_addr constant [21 x i8] c"\017%s: %s: no change\0A\00", align 1
@__func__.adv76xx_s_dv_timings = private unnamed_addr constant [21 x i8] c"adv76xx_s_dv_timings\00", align 1
@.str.154 = private unnamed_addr constant [23 x i8] c"adv76xx_s_dv_timings: \00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"\017%s: %s\00", align 1
@__func__.configure_predefined_video_timings = private unnamed_addr constant [35 x i8] c"configure_predefined_video_timings\00", align 1
@adv7604_prim_mode_comp = internal constant <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }> <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 576, i32 0, i32 0, i64 27000000, i32 12, i32 64, i32 68, i32 5, i32 5, i32 39, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 17, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 11, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 440, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 19, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 25, i8 1 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 110, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 4, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 25, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 638, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 32, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 4 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 528, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 33, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 3 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 34, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 2 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 528, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 31, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 1 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 3, i32 146, %struct.v4l2_fract zeroinitializer, i8 16, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 0 }>, %struct.adv76xx_video_standards zeroinitializer }>, align 1
@adv7604_prim_mode_gr = internal constant <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }> <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 25175000, i32 16, i32 96, i32 48, i32 10, i32 2, i32 33, i32 0, i32 0, i32 0, i32 3, i32 128, %struct.v4l2_fract zeroinitializer, i8 1, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 8, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 31500000, i32 24, i32 40, i32 128, i32 9, i32 3, i32 28, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 9, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 31500000, i32 16, i32 64, i32 120, i32 1, i32 3, i32 16, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 10, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 36000000, i32 56, i32 56, i32 80, i32 1, i32 3, i32 25, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 11, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 36000000, i32 24, i32 72, i32 128, i32 1, i32 2, i32 22, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 0, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 40000000, i32 40, i32 128, i32 88, i32 1, i32 4, i32 23, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 1, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 50000000, i32 56, i32 120, i32 64, i32 37, i32 6, i32 23, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 2, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 49500000, i32 16, i32 80, i32 160, i32 1, i32 3, i32 21, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 3, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 56250000, i32 32, i32 64, i32 152, i32 1, i32 3, i32 27, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 4, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 0, i64 65000000, i32 24, i32 136, i32 160, i32 3, i32 6, i32 29, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 12, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 0, i64 75000000, i32 24, i32 136, i32 144, i32 3, i32 6, i32 29, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 13, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 3, i64 78750000, i32 16, i32 96, i32 176, i32 1, i32 3, i32 28, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 14, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 3, i64 94500000, i32 48, i32 96, i32 208, i32 1, i32 3, i32 36, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 15, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 1024, i32 0, i32 3, i64 108000000, i32 48, i32 112, i32 248, i32 1, i32 3, i32 38, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 5, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 1024, i32 0, i32 3, i64 135000000, i32 16, i32 144, i32 248, i32 1, i32 3, i32 38, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 6, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1360, i32 768, i32 0, i32 3, i64 85500000, i32 64, i32 112, i32 256, i32 3, i32 6, i32 18, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 18, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1366, i32 768, i32 0, i32 3, i64 85500000, i32 70, i32 143, i32 213, i32 3, i32 3, i32 24, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 19, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1400, i32 1050, i32 0, i32 1, i64 121750000, i32 88, i32 144, i32 232, i32 3, i32 4, i32 32, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 20, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1400, i32 1050, i32 0, i32 1, i64 156000000, i32 104, i32 144, i32 248, i32 3, i32 4, i32 42, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 21, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1600, i32 1200, i32 0, i32 3, i64 162000000, i32 64, i32 192, i32 304, i32 1, i32 3, i32 46, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 22, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1680, i32 1050, i32 0, i32 1, i64 146250000, i32 104, i32 176, i32 280, i32 3, i32 6, i32 30, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 24, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1200, i32 0, i32 2, i64 154000000, i32 48, i32 32, i32 80, i32 3, i32 6, i32 26, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 25, i8 0 }>, %struct.adv76xx_video_standards zeroinitializer }>, align 1
@adv76xx_prim_mode_hdmi_comp = internal constant <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }> <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 480, i32 0, i32 0, i64 27000000, i32 16, i32 62, i32 60, i32 9, i32 6, i32 30, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 2, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 10, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 576, i32 0, i32 0, i64 27000000, i32 12, i32 64, i32 68, i32 5, i32 5, i32 39, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 17, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 11, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 440, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 19, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 19, i8 1 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 110, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 4, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 19, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 638, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 32, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 4 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 528, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 33, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 3 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 34, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 2 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 528, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 31, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 1 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 3, i32 146, %struct.v4l2_fract zeroinitializer, i8 16, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 30, i8 0 }>, %struct.adv76xx_video_standards zeroinitializer }>, align 1
@adv76xx_prim_mode_hdmi_gr = internal constant <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }> <{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 25175000, i32 16, i32 96, i32 48, i32 10, i32 2, i32 33, i32 0, i32 0, i32 0, i32 3, i32 128, %struct.v4l2_fract zeroinitializer, i8 1, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 8, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 31500000, i32 24, i32 40, i32 128, i32 9, i32 3, i32 28, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 9, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 31500000, i32 16, i32 64, i32 120, i32 1, i32 3, i32 16, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 10, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 36000000, i32 56, i32 56, i32 80, i32 1, i32 3, i32 25, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 11, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 36000000, i32 24, i32 72, i32 128, i32 1, i32 2, i32 22, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 0, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 40000000, i32 40, i32 128, i32 88, i32 1, i32 4, i32 23, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 1, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 50000000, i32 56, i32 120, i32 64, i32 37, i32 6, i32 23, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 2, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 49500000, i32 16, i32 80, i32 160, i32 1, i32 3, i32 21, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 3, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 56250000, i32 32, i32 64, i32 152, i32 1, i32 3, i32 27, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 4, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 0, i64 65000000, i32 24, i32 136, i32 160, i32 3, i32 6, i32 29, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 12, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 0, i64 75000000, i32 24, i32 136, i32 144, i32 3, i32 6, i32 29, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 13, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 3, i64 78750000, i32 16, i32 96, i32 176, i32 1, i32 3, i32 28, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 14, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 3, i64 94500000, i32 48, i32 96, i32 208, i32 1, i32 3, i32 36, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 15, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 1024, i32 0, i32 3, i64 108000000, i32 48, i32 112, i32 248, i32 1, i32 3, i32 38, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 5, i8 0 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 1024, i32 0, i32 3, i64 135000000, i32 16, i32 144, i32 248, i32 1, i32 3, i32 38, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, i8 6, i8 0 }>, %struct.adv76xx_video_standards zeroinitializer }>, align 1
@.str.160 = private unnamed_addr constant [10 x i8] c"\017%s: %s\0A\00", align 1
@__func__.configure_custom_video_timings = private unnamed_addr constant [31 x i8] c"configure_custom_video_timings\00", align 1
@.str.161 = private unnamed_addr constant [43 x i8] c"\013%s: writing to reg 0x16 and 0x17 failed\0A\00", align 1
@.str.162 = private unnamed_addr constant [28 x i8] c"include/media/v4l2-subdev.h\00", align 1
@adv76xx_op_ch_sel.op_ch_sel = internal unnamed_addr constant [6 x [6 x i32]] [[6 x i32] [i32 0, i32 32, i32 64, i32 96, i32 128, i32 160], [6 x i32] [i32 64, i32 96, i32 0, i32 32, i32 160, i32 128], [6 x i32] [i32 32, i32 0, i32 128, i32 160, i32 64, i32 96], [6 x i32] [i32 160, i32 128, i32 96, i32 64, i32 32, i32 0], [6 x i32] [i32 128, i32 160, i32 32, i32 0, i32 96, i32 64], [6 x i32] [i32 96, i32 64, i32 160, i32 128, i32 0, i32 32]], align 4
@.str.163 = private unnamed_addr constant [50 x i8] c"\017%s: %s: clear EDID pad %d, edid.present = 0x%x\0A\00", align 1
@__func__.adv76xx_set_edid = private unnamed_addr constant [17 x i8] c"adv76xx_set_edid\00", align 1
@.str.164 = private unnamed_addr constant [50 x i8] c"\017%s: %s: write EDID pad %d, edid.present = 0x%x\0A\00", align 1
@.str.165 = private unnamed_addr constant [36 x i8] c"\013%s: error %d writing edid pad %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.166 = private unnamed_addr constant [34 x i8] c"\013%s: error enabling edid (0x%x)\0A\00", align 1
@.str.167 = private unnamed_addr constant [38 x i8] c"\017%s: %s: write EDID block (%d byte)\0A\00", align 1
@__func__.edid_write_block = private unnamed_addr constant [17 x i8] c"edid_write_block\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@adv76xx_regmap_cnf = internal constant [13 x %struct.regmap_config] [%struct.regmap_config { ptr @.str.169, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.170, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.171, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.172, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.173, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.174, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.175, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.176, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.177, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.178, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.179, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.180, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.181, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], align 4
@.str.168 = private unnamed_addr constant [58 x i8] c"\013%s %d-%04x: Error initializing regmap %d with error %d\0A\00", align 1
@.str.169 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"avlink\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"cec\00", align 1
@.str.172 = private unnamed_addr constant [10 x i8] c"infoframe\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"esdp\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"epp\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"afe\00", align 1
@.str.176 = private unnamed_addr constant [4 x i8] c"rep\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"edid\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c"vdp\00", align 1
@.str.182 = private unnamed_addr constant [22 x i8] c"Analog Sampling Phase\00", align 1
@.str.183 = private unnamed_addr constant [27 x i8] c"Free Running Color, Manual\00", align 1
@.str.184 = private unnamed_addr constant [19 x i8] c"Free Running Color\00", align 1
@adv76xx_default_addresses = internal unnamed_addr constant [13 x %struct.adv76xx_register_map] [%struct.adv76xx_register_map { ptr @.str.185, i8 76 }, %struct.adv76xx_register_map { ptr @.str.170, i8 66 }, %struct.adv76xx_register_map { ptr @.str.171, i8 64 }, %struct.adv76xx_register_map { ptr @.str.172, i8 62 }, %struct.adv76xx_register_map { ptr @.str.173, i8 56 }, %struct.adv76xx_register_map { ptr @.str.186, i8 60 }, %struct.adv76xx_register_map { ptr @.str.175, i8 38 }, %struct.adv76xx_register_map { ptr @.str.176, i8 50 }, %struct.adv76xx_register_map { ptr @.str.177, i8 54 }, %struct.adv76xx_register_map { ptr @.str.178, i8 52 }, %struct.adv76xx_register_map { ptr @.str.179, i8 48 }, %struct.adv76xx_register_map { ptr @.str.180, i8 34 }, %struct.adv76xx_register_map { ptr @.str.181, i8 36 }], align 4
@.str.185 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"dpp\00", align 1
@.str.187 = private unnamed_addr constant [26 x i8] c"\017%s: %s: enable hotplug\0A\00", align 1
@__func__.adv76xx_delayed_work_enable_hotplug = private unnamed_addr constant [36 x i8] c"adv76xx_delayed_work_enable_hotplug\00", align 1
@.str.188 = private unnamed_addr constant [32 x i8] c"\013%s: %s: len exceeded 16 (%d)\0A\00", align 1
@__func__.adv76xx_cec_adap_transmit = private unnamed_addr constant [26 x i8] c"adv76xx_cec_adap_transmit\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_debug252, ptr @__UNIQUE_ID_debugtype251, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license256, ptr @__param_debug], section "llvm.metadata"

@__mod_i2c__adv76xx_i2c_id_device_table = dso_local alias [5 x %struct.i2c_device_id], ptr @adv76xx_i2c_id
@__mod_of__adv76xx_of_id_device_table = dso_local alias [4 x %struct.of_device_id], ptr @adv76xx_of_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @adv76xx_driver) #14
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @adv76xx_driver) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adv7604_set_termination(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1360
  %4 = load ptr, ptr %3, align 4
  %5 = select i1 %1, i32 0, i32 120
  %6 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 1, i32 noundef %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adv7604_setup_irqs(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 1324
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 65, i32 noundef 215) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7604_read_hdmi_pixelclock(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 1308
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr i8, ptr %0, i32 1360
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 6, ptr noundef nonnull %3) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %13, i32 noundef %17, i32 noundef %20, i32 noundef %20, i32 noundef 6) #15
  br label %24

22:                                               ; preds = %1
  %23 = load i32, ptr %3, align 4
  br label %24

24:                                               ; preds = %22, %10
  %25 = phi i32 [ %8, %10 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %26 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %27 = load ptr, ptr %6, align 4
  %28 = call i32 @regmap_read(ptr noundef %27, i32 noundef 59, ptr noundef nonnull %2) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4, i32 6
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %33, i32 noundef %37, i32 noundef %40, i32 noundef %40, i32 noundef 59) #15
  br label %44

42:                                               ; preds = %24
  %43 = load i32, ptr %2, align 4
  br label %44

44:                                               ; preds = %42, %30
  %45 = phi i32 [ %28, %30 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %46 = icmp slt i32 %25, 0
  %47 = icmp slt i32 %45, 0
  %48 = select i1 %46, i1 true, i1 %47
  %49 = mul i32 %25, 1000000
  %50 = lshr i32 %45, 4
  %51 = and i32 %50, 3
  %52 = mul nuw nsw i32 %51, 250000
  %53 = add i32 %52, %49
  %54 = select i1 %48, i32 0, i32 %53
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7604_read_cable_det(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 1272
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr i8, ptr %0, i32 1324
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 111, ptr noundef nonnull %2) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %12, i32 noundef %16, i32 noundef %19, i32 noundef %19, i32 noundef 111) #15
  br label %23

21:                                               ; preds = %1
  %22 = load i32, ptr %2, align 4
  br label %23

23:                                               ; preds = %21, %9
  %24 = phi i32 [ %7, %9 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %25 = lshr i32 %24, 4
  %26 = and i32 %25, 1
  %27 = lshr i32 %24, 2
  %28 = and i32 %27, 2
  %29 = and i32 %24, 4
  %30 = shl i32 %24, 2
  %31 = and i32 %30, 8
  %32 = or i32 %28, %29
  %33 = or i32 %32, %26
  %34 = or i32 %33, %31
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adv7611_set_termination(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1360
  %4 = load ptr, ptr %3, align 4
  %5 = select i1 %1, i32 254, i32 255
  %6 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 131, i32 noundef %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adv7611_setup_irqs(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 1324
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 65, i32 noundef 208) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7611_read_hdmi_pixelclock(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 1308
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr i8, ptr %0, i32 1360
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 81, ptr noundef nonnull %3) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %13, i32 noundef %17, i32 noundef %20, i32 noundef %20, i32 noundef 81) #15
  br label %24

22:                                               ; preds = %1
  %23 = load i32, ptr %3, align 4
  br label %24

24:                                               ; preds = %22, %10
  %25 = phi i32 [ %8, %10 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %26 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %27 = load ptr, ptr %6, align 4
  %28 = call i32 @regmap_read(ptr noundef %27, i32 noundef 82, ptr noundef nonnull %2) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4, i32 6
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %33, i32 noundef %37, i32 noundef %40, i32 noundef %40, i32 noundef 82) #15
  br label %44

42:                                               ; preds = %24
  %43 = load i32, ptr %2, align 4
  br label %44

44:                                               ; preds = %42, %30
  %45 = phi i32 [ %28, %30 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %46 = icmp slt i32 %25, 0
  %47 = icmp slt i32 %45, 0
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %44
  %50 = shl nuw i32 %25, 1
  %51 = lshr i32 %45, 7
  %52 = or i32 %51, %50
  %53 = mul i32 %52, 1000000
  %54 = and i32 %45, 127
  %55 = mul nuw nsw i32 %54, 1000000
  %56 = lshr i32 %55, 7
  %57 = add i32 %53, %56
  br label %58

58:                                               ; preds = %49, %44
  %59 = phi i32 [ %57, %49 ], [ 0, %44 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7611_read_cable_det(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 1272
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr i8, ptr %0, i32 1324
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 111, ptr noundef nonnull %2) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %12, i32 noundef %16, i32 noundef %19, i32 noundef %19, i32 noundef 111) #15
  br label %23

21:                                               ; preds = %1
  %22 = load i32, ptr %2, align 4
  br label %23

23:                                               ; preds = %21, %9
  %24 = phi i32 [ %7, %9 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %25 = and i32 %24, 1
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adv7612_setup_irqs(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 1324
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 65, i32 noundef 208) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7612_read_cable_det(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 1272
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr i8, ptr %0, i32 1324
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 111, ptr noundef nonnull %2) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %12, i32 noundef %16, i32 noundef %19, i32 noundef %19, i32 noundef 111) #15
  br label %23

21:                                               ; preds = %1
  %22 = load i32, ptr %2, align 4
  br label %23

23:                                               ; preds = %21, %9
  %24 = phi i32 [ %7, %9 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %25 = and i32 %24, 1
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_read(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #4 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 1308
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr i8, ptr %0, i32 1360
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %1 to i32
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %3) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %14, i32 noundef %18, i32 noundef %21, i32 noundef %21, i32 noundef %8) #15
  br label %25

23:                                               ; preds = %2
  %24 = load i32, ptr %3, align 4
  br label %25

25:                                               ; preds = %23, %11
  %26 = phi i32 [ %9, %11 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @io_read(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #4 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 1272
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr i8, ptr %0, i32 1324
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %1 to i32
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %3) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %14, i32 noundef %18, i32 noundef %21, i32 noundef %21, i32 noundef %8) #15
  br label %25

23:                                               ; preds = %2
  %24 = load i32, ptr %3, align 4
  br label %25

25:                                               ; preds = %23, %11
  %26 = phi i32 [ %9, %11 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_probe(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.i2c_algorithm, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %7) #14
  %13 = and i32 %12, 1572864
  %14 = icmp eq i32 %13, 1572864
  br i1 %14, label %15, label %463

15:                                               ; preds = %2
  %16 = load i32, ptr @debug, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = shl nuw nsw i32 %27, 1
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %28) #15
  br label %30

30:                                               ; preds = %18, %15
  %31 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %32 = tail call noalias ptr @devm_kmalloc(ptr noundef %31, i32 noundef 1484, i32 noundef 3520) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %463, label %34

34:                                               ; preds = %30
  %35 = getelementptr %struct.adv76xx_state, ptr %32, i32 0, i32 21
  store ptr %0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 16
  store i8 1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 8
  store i32 -1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %115, label %41

41:                                               ; preds = %34
  %42 = tail call ptr @of_match_node(ptr noundef nonnull @adv76xx_of_id, ptr noundef nonnull %39) #14
  %43 = getelementptr inbounds %struct.of_device_id, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  store ptr %44, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %45 = load ptr, ptr %35, align 4
  %46 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4, i32 25
  %47 = load ptr, ptr %46, align 8
  %48 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %47, ptr noundef null) #14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  br label %103

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.device_node, ptr %48, i32 0, i32 3
  %53 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %52, ptr noundef nonnull %3) #14
  call void @of_node_put(ptr noundef nonnull %48) #14
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %101

55:                                               ; preds = %51
  %56 = call i32 @of_property_read_variable_u32_array(ptr noundef %47, ptr noundef nonnull @.str.17, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #14
  %57 = icmp sgt i32 %56, -1
  %58 = load i32, ptr %4, align 4
  %59 = select i1 %57, i32 %58, i32 -1
  %60 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 1, i32 1
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %3, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 1, i32 6
  %67 = load i8, ptr %66, align 4
  %68 = or i8 %67, 32
  store i8 %68, ptr %66, align 4
  br label %69

69:                                               ; preds = %65, %55
  %70 = and i32 %62, 16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 1, i32 6
  %74 = load i8, ptr %73, align 4
  %75 = or i8 %74, 16
  store i8 %75, ptr %73, align 4
  br label %76

76:                                               ; preds = %72, %69
  %77 = and i32 %62, 64
  %78 = icmp eq i32 %77, 0
  %79 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 1, i32 6
  %80 = load i8, ptr %79, align 4
  br i1 %78, label %83, label %81

81:                                               ; preds = %76
  %82 = or i8 %80, 64
  store i8 %82, ptr %79, align 4
  br label %83

83:                                               ; preds = %81, %76
  %84 = phi i8 [ %82, %81 ], [ %80, %76 ]
  %85 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %3, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 2
  %88 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 1, i32 6
  %89 = or i8 %84, 4
  %90 = select i1 %87, i8 %89, i8 %84
  %91 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 1
  %92 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 1, i32 5
  store i32 2, ptr %92, align 4
  %93 = load i8, ptr %91, align 4
  %94 = and i8 %93, -4
  store i8 %94, ptr %91, align 4
  %95 = or i8 %90, 2
  store i8 %95, ptr %88, align 4
  %96 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 1, i32 4
  store i32 0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 1, i32 3
  store i32 0, ptr %97, align 4
  %98 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 1, i32 7
  store i32 2, ptr %98, align 4
  %99 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 1, i32 8
  store i32 2, ptr %99, align 4
  %100 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 1, i32 9
  store i32 2, ptr %100, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  br label %135

101:                                              ; preds = %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  %102 = icmp slt i32 %53, 0
  br i1 %102, label %103, label %135

103:                                              ; preds = %101, %50
  %104 = phi i32 [ -22, %50 ], [ %53, %101 ]
  %105 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 6
  %106 = load ptr, ptr %105, align 8
  %107 = load ptr, ptr %106, align 4
  %108 = load ptr, ptr %6, align 8
  %109 = getelementptr inbounds %struct.i2c_adapter, ptr %108, i32 0, i32 11
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %112 = load i16, ptr %111, align 2
  %113 = zext i16 %112 to i32
  %114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %107, i32 noundef %110, i32 noundef %113) #15
  br label %463

115:                                              ; preds = %34
  %116 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = inttoptr i32 %121 to ptr
  store ptr %122, ptr %32, align 4
  %123 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %123, ptr noundef nonnull align 4 dereferenceable(64) %117, i32 64, i1 false)
  br label %135

124:                                              ; preds = %115
  %125 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 6
  %126 = load ptr, ptr %125, align 8
  %127 = load ptr, ptr %126, align 4
  %128 = load ptr, ptr %6, align 8
  %129 = getelementptr inbounds %struct.i2c_adapter, ptr %128, i32 0, i32 11
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %132 = load i16, ptr %131, align 2
  %133 = zext i16 %132 to i32
  %134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %127, i32 noundef %130, i32 noundef %133) #15
  br label %463

135:                                              ; preds = %119, %101, %83
  %136 = load ptr, ptr %32, align 4
  %137 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %136, i32 0, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %167, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 6
  %142 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  br label %143

143:                                              ; preds = %161, %140
  %144 = phi i32 [ 0, %140 ], [ %162, %161 ]
  %145 = call ptr @devm_gpiod_get_index_optional(ptr noundef %31, ptr noundef nonnull @.str.5, i32 noundef %144, i32 noundef 3) #14
  %146 = getelementptr %struct.adv76xx_state, ptr %32, i32 0, i32 2, i32 %144
  store ptr %145, ptr %146, align 4
  %147 = icmp ugt ptr %145, inttoptr (i32 -4096 to ptr)
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = ptrtoint ptr %145 to i32
  br label %463

150:                                              ; preds = %143
  %151 = icmp eq ptr %145, null
  br i1 %151, label %161, label %152

152:                                              ; preds = %150
  %153 = load ptr, ptr %141, align 8
  %154 = load ptr, ptr %153, align 4
  %155 = load ptr, ptr %6, align 8
  %156 = getelementptr inbounds %struct.i2c_adapter, ptr %155, i32 0, i32 11
  %157 = load i32, ptr %156, align 4
  %158 = load i16, ptr %142, align 2
  %159 = zext i16 %158 to i32
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %154, i32 noundef %157, i32 noundef %159, i32 noundef %144) #15
  br label %161

161:                                              ; preds = %152, %150
  %162 = add nuw i32 %144, 1
  %163 = load ptr, ptr %32, align 4
  %164 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %163, i32 0, i32 3
  %165 = load i32, ptr %164, align 4
  %166 = icmp ult i32 %162, %165
  br i1 %166, label %143, label %167

167:                                              ; preds = %161, %135
  %168 = call ptr @devm_gpiod_get_optional(ptr noundef %31, ptr noundef nonnull @.str.7, i32 noundef 7) #14
  %169 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 3
  store ptr %168, ptr %169, align 4
  %170 = icmp ugt ptr %168, inttoptr (i32 -4096 to ptr)
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = ptrtoint ptr %168 to i32
  br label %463

173:                                              ; preds = %167
  %174 = icmp eq ptr %168, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %173
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %168, i32 noundef 0) #14
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #14
  %176 = load ptr, ptr %169, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %176, i32 noundef 1) #14
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #14
  br label %177

177:                                              ; preds = %175, %173
  %178 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(132) %178, ptr noundef nonnull align 1 dereferenceable(132) @adv76xx_probe.cea640x480, i32 132, i1 false)
  %179 = load ptr, ptr %32, align 4
  %180 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %179, i32 0, i32 21
  %181 = load i32, ptr %180, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %194, label %183

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %179, i32 0, i32 20
  %185 = load ptr, ptr %184, align 4
  br label %189

186:                                              ; preds = %189
  %187 = add nuw i32 %190, 1
  %188 = icmp eq i32 %187, %181
  br i1 %188, label %194, label %189

189:                                              ; preds = %186, %183
  %190 = phi i32 [ 0, %183 ], [ %187, %186 ]
  %191 = getelementptr %struct.adv76xx_format_info, ptr %185, i32 %190
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 8200
  br i1 %193, label %194, label %186

194:                                              ; preds = %189, %186, %177
  %195 = phi ptr [ null, %177 ], [ %191, %189 ], [ null, %186 ]
  %196 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 10
  store ptr %195, ptr %196, align 4
  %197 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 4
  call void @v4l2_i2c_subdev_init(ptr noundef %197, ptr noundef %0, ptr noundef nonnull @adv76xx_ops) #14
  %198 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 4, i32 9
  %199 = load ptr, ptr %6, align 8
  %200 = getelementptr inbounds %struct.i2c_adapter, ptr %199, i32 0, i32 11
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %203 = load i16, ptr %202, align 2
  %204 = zext i16 %203 to i32
  %205 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %198, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef %1, i32 noundef %201, i32 noundef %204)
  %206 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 4, i32 4
  %207 = load i32, ptr %206, align 4
  %208 = or i32 %207, 12
  store i32 %208, ptr %206, align 4
  %209 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 4, i32 7
  store ptr @adv76xx_int_ops, ptr %209, align 4
  %210 = load ptr, ptr %35, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %230, label %212

212:                                              ; preds = %194
  %213 = call ptr @__devm_regmap_init_i2c(ptr noundef nonnull %210, ptr noundef nonnull @adv76xx_regmap_cnf, ptr noundef null, ptr noundef null) #14
  %214 = getelementptr %struct.adv76xx_state, ptr %32, i32 0, i32 22, i32 0
  store ptr %213, ptr %214, align 4
  %215 = icmp ugt ptr %213, inttoptr (i32 -4096 to ptr)
  br i1 %215, label %216, label %232

216:                                              ; preds = %212
  %217 = ptrtoint ptr %213 to i32
  %218 = load ptr, ptr %35, align 4
  %219 = getelementptr inbounds %struct.i2c_client, ptr %218, i32 0, i32 4, i32 6
  %220 = load ptr, ptr %219, align 8
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.i2c_client, ptr %218, i32 0, i32 3
  %223 = load ptr, ptr %222, align 8
  %224 = getelementptr inbounds %struct.i2c_adapter, ptr %223, i32 0, i32 11
  %225 = load i32, ptr %224, align 4
  %226 = getelementptr inbounds %struct.i2c_client, ptr %218, i32 0, i32 1
  %227 = load i16, ptr %226, align 2
  %228 = zext i16 %227 to i32
  %229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef %221, i32 noundef %225, i32 noundef %228, i32 noundef 0, i32 noundef %217) #15
  br label %230

230:                                              ; preds = %216, %194
  %231 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %198) #15
  br label %463

232:                                              ; preds = %212
  %233 = load ptr, ptr %32, align 4
  %234 = load i32, ptr %233, align 4
  switch i32 %234, label %281 [
    i32 0, label %235
    i32 1, label %250
    i32 2, label %250
  ]

235:                                              ; preds = %232
  %236 = call i32 @regmap_read(ptr noundef %213, i32 noundef 251, ptr noundef nonnull %5) #14
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %235
  %239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %198, i32 noundef %236) #15
  br label %463

240:                                              ; preds = %235
  %241 = load i32, ptr %5, align 4
  %242 = icmp eq i32 %241, 104
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = load ptr, ptr %32, align 4
  br label %281

245:                                              ; preds = %240
  %246 = load i16, ptr %202, align 2
  %247 = zext i16 %246 to i32
  %248 = shl nuw nsw i32 %247, 1
  %249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %198, i32 noundef %248) #15
  br label %463

250:                                              ; preds = %232, %232
  %251 = call i32 @regmap_read(ptr noundef %213, i32 noundef 234, ptr noundef nonnull %5) #14
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %255, label %253

253:                                              ; preds = %250
  %254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %198, i32 noundef %251) #15
  br label %463

255:                                              ; preds = %250
  %256 = load i32, ptr %5, align 4
  %257 = load ptr, ptr %214, align 4
  %258 = call i32 @regmap_read(ptr noundef %257, i32 noundef 235, ptr noundef nonnull %5) #14
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %255
  %261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %198, i32 noundef %258) #15
  br label %463

262:                                              ; preds = %255
  %263 = shl i32 %256, 8
  %264 = load i32, ptr %5, align 4
  %265 = or i32 %264, %263
  store i32 %265, ptr %5, align 4
  %266 = load ptr, ptr %32, align 4
  %267 = load i32, ptr %266, align 4
  %268 = icmp eq i32 %267, 1
  %269 = icmp ne i32 %265, 8273
  %270 = select i1 %268, i1 %269, i1 false
  br i1 %270, label %275, label %271

271:                                              ; preds = %262
  %272 = icmp eq i32 %267, 2
  %273 = icmp ne i32 %265, 8257
  %274 = select i1 %272, i1 %273, i1 false
  br i1 %274, label %275, label %281

275:                                              ; preds = %271, %262
  %276 = select i1 %268, ptr @.str.13, ptr @.str.14
  %277 = load i16, ptr %202, align 2
  %278 = zext i16 %277 to i32
  %279 = shl nuw nsw i32 %278, 1
  %280 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %198, ptr noundef nonnull %276, i32 noundef %279) #15
  br label %463

281:                                              ; preds = %271, %243, %232
  %282 = phi ptr [ %244, %243 ], [ %266, %271 ], [ %233, %232 ]
  %283 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 7
  %284 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %282, i32 0, i32 1
  %285 = load i8, ptr %284, align 4, !range !9
  %286 = icmp eq i8 %285, 0
  %287 = select i1 %286, i32 8, i32 9
  %288 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %283, i32 noundef %287, ptr noundef null, ptr noundef null) #14
  %289 = call ptr @v4l2_ctrl_new_std(ptr noundef %283, ptr noundef nonnull @adv76xx_ctrl_ops, i32 noundef 9963776, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #14
  %290 = call ptr @v4l2_ctrl_new_std(ptr noundef %283, ptr noundef nonnull @adv76xx_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #14
  %291 = call ptr @v4l2_ctrl_new_std(ptr noundef %283, ptr noundef nonnull @adv76xx_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #14
  %292 = call ptr @v4l2_ctrl_new_std(ptr noundef %283, ptr noundef nonnull @adv76xx_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef 128, i64 noundef 1, i64 noundef 0) #14
  %293 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %283, ptr noundef nonnull @adv76xx_ctrl_ops, i32 noundef 10488166, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 4) #14
  %294 = icmp eq ptr %293, null
  br i1 %294, label %299, label %295

295:                                              ; preds = %281
  %296 = getelementptr inbounds %struct.v4l2_ctrl, ptr %293, i32 0, i32 20
  %297 = load i32, ptr %296, align 4
  %298 = or i32 %297, 128
  store i32 %298, ptr %296, align 4
  br label %299

299:                                              ; preds = %295, %281
  %300 = load ptr, ptr %32, align 4
  %301 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %300, i32 0, i32 3
  %302 = load i32, ptr %301, align 4
  %303 = shl nsw i32 -1, %302
  %304 = xor i32 %303, -1
  %305 = sext i32 %304 to i64
  %306 = call ptr @v4l2_ctrl_new_std(ptr noundef %283, ptr noundef null, i32 noundef 10488164, i64 noundef 0, i64 noundef %305, i64 noundef 0, i64 noundef 0) #14
  %307 = getelementptr %struct.adv76xx_state, ptr %32, i32 0, i32 23
  store ptr %306, ptr %307, align 4
  %308 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %283, ptr noundef nonnull @adv76xx_ctrl_ops, i32 noundef 10488165, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #14
  %309 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 27
  store ptr %308, ptr %309, align 4
  %310 = load ptr, ptr %32, align 4
  %311 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %310, i32 0, i32 1
  %312 = load i8, ptr %311, align 4, !range !9
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %317, label %314

314:                                              ; preds = %299
  %315 = call ptr @v4l2_ctrl_new_custom(ptr noundef %283, ptr noundef nonnull @adv7604_ctrl_analog_sampling_phase, ptr noundef null) #14
  %316 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 24
  store ptr %315, ptr %316, align 4
  br label %317

317:                                              ; preds = %314, %299
  %318 = call ptr @v4l2_ctrl_new_custom(ptr noundef %283, ptr noundef nonnull @adv76xx_ctrl_free_run_color_manual, ptr noundef null) #14
  %319 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 25
  store ptr %318, ptr %319, align 4
  %320 = call ptr @v4l2_ctrl_new_custom(ptr noundef %283, ptr noundef nonnull @adv76xx_ctrl_free_run_color, ptr noundef null) #14
  %321 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 26
  store ptr %320, ptr %321, align 4
  %322 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 4, i32 8
  store ptr %283, ptr %322, align 4
  %323 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 7, i32 9
  %324 = load i32, ptr %323, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %461

326:                                              ; preds = %317
  %327 = load ptr, ptr %32, align 4
  %328 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %327, i32 0, i32 25
  %329 = load ptr, ptr %328, align 4
  %330 = call i32 %329(ptr noundef %197) #14
  %331 = load ptr, ptr %307, align 4
  %332 = and i32 %330, 65535
  %333 = getelementptr inbounds %struct.v4l2_ctrl, ptr %331, i32 0, i32 2
  %334 = load ptr, ptr %333, align 8
  %335 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %334, i32 0, i32 1
  %336 = load ptr, ptr %335, align 4
  call void @mutex_lock(ptr noundef %336) #14
  %337 = call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %331, i32 noundef %332) #14
  %338 = load ptr, ptr %333, align 8
  %339 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %338, i32 0, i32 1
  %340 = load ptr, ptr %339, align 4
  call void @mutex_unlock(ptr noundef %340) #14
  %341 = icmp eq i32 %337, 0
  br i1 %341, label %342, label %461

342:                                              ; preds = %326
  %343 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 4, i32 11
  %344 = getelementptr %struct.adv76xx_state, ptr %32, i32 0, i32 1
  %345 = icmp eq ptr %344, null
  br label %346

346:                                              ; preds = %388, %342
  %347 = phi i32 [ 1, %342 ], [ %389, %388 ]
  %348 = shl nuw nsw i32 1, %347
  %349 = load ptr, ptr %32, align 4
  %350 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %349, i32 0, i32 28
  %351 = load i32, ptr %350, align 4
  %352 = and i32 %351, %348
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %388, label %354

354:                                              ; preds = %346
  %355 = load ptr, ptr %343, align 4
  br i1 %345, label %365, label %356

356:                                              ; preds = %354
  %357 = getelementptr %struct.adv76xx_state, ptr %32, i32 0, i32 1, i32 12, i32 %347
  %358 = load i8, ptr %357, align 1
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %365, label %360

360:                                              ; preds = %356
  %361 = getelementptr inbounds %struct.i2c_client, ptr %355, i32 0, i32 3
  %362 = load ptr, ptr %361, align 8
  %363 = zext i8 %358 to i16
  %364 = call ptr @i2c_new_dummy_device(ptr noundef %362, i16 noundef zeroext %363) #14
  br label %372

365:                                              ; preds = %356, %354
  %366 = getelementptr [13 x %struct.adv76xx_register_map], ptr @adv76xx_default_addresses, i32 0, i32 %347
  %367 = load ptr, ptr %366, align 4
  %368 = getelementptr [13 x %struct.adv76xx_register_map], ptr @adv76xx_default_addresses, i32 0, i32 %347, i32 1
  %369 = load i8, ptr %368, align 4
  %370 = zext i8 %369 to i16
  %371 = call ptr @i2c_new_ancillary_device(ptr noundef %355, ptr noundef %367, i16 noundef zeroext %370) #14
  br label %372

372:                                              ; preds = %365, %360
  %373 = phi ptr [ %364, %360 ], [ %371, %365 ]
  %374 = icmp ugt ptr %373, inttoptr (i32 -4096 to ptr)
  br i1 %374, label %385, label %375

375:                                              ; preds = %372
  %376 = add nuw nsw i32 %347, 242
  %377 = getelementptr inbounds %struct.i2c_client, ptr %373, i32 0, i32 1
  %378 = load i16, ptr %377, align 2
  %379 = zext i16 %378 to i32
  %380 = shl nuw nsw i32 %379, 1
  %381 = load ptr, ptr %214, align 4
  %382 = and i32 %380, 254
  %383 = call i32 @regmap_write(ptr noundef %381, i32 noundef %376, i32 noundef %382) #14
  %384 = getelementptr %struct.adv76xx_state, ptr %32, i32 0, i32 21, i32 %347
  store ptr %373, ptr %384, align 4
  br label %388

385:                                              ; preds = %372
  %386 = ptrtoint ptr %373 to i32
  %387 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %198, i32 noundef %347) #15
  br label %459

388:                                              ; preds = %375, %346
  %389 = add nuw nsw i32 %347, 1
  %390 = icmp eq i32 %389, 13
  br i1 %390, label %391, label %346

391:                                              ; preds = %388
  %392 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 15
  store i32 -32, ptr %392, align 4
  %393 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %393, ptr %393, align 4
  %394 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 15, i32 0, i32 1, i32 1
  store ptr %393, ptr %394, align 4
  %395 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 15, i32 0, i32 2
  store ptr @adv76xx_delayed_work_enable_hotplug, ptr %395, align 4
  %396 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 15, i32 1
  call void @init_timer_key(ptr noundef %396, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #14
  %397 = load ptr, ptr %32, align 4
  %398 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %397, i32 0, i32 3
  %399 = load i32, ptr %398, align 4
  %400 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %397, i32 0, i32 1
  %401 = load i8, ptr %400, align 4, !range !9
  %402 = icmp eq i8 %401, 0
  %403 = select i1 %402, i32 0, i32 2
  %404 = add i32 %403, %399
  %405 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 6
  store i32 %404, ptr %405, align 4
  %406 = icmp eq i32 %404, 0
  br i1 %406, label %412, label %407

407:                                              ; preds = %407, %391
  %408 = phi i32 [ %410, %407 ], [ 0, %391 ]
  %409 = getelementptr %struct.adv76xx_state, ptr %32, i32 0, i32 5, i32 %408, i32 4
  store i32 1, ptr %409, align 4
  %410 = add nuw i32 %408, 1
  %411 = icmp ult i32 %410, %404
  br i1 %411, label %407, label %412

412:                                              ; preds = %407, %391
  %413 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 5
  %414 = getelementptr %struct.adv76xx_state, ptr %32, i32 0, i32 5, i32 %404, i32 4
  store i32 2, ptr %414, align 4
  %415 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 4, i32 0, i32 3
  store i32 24577, ptr %415, align 4
  %416 = trunc i32 %404 to i16
  %417 = add i16 %416, 1
  %418 = call i32 @media_entity_pads_init(ptr noundef %197, i16 noundef zeroext %417, ptr noundef %413) #14
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %456

420:                                              ; preds = %412
  %421 = call fastcc i32 @configure_regmaps(ptr noundef nonnull %32)
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %456

423:                                              ; preds = %420
  %424 = call fastcc i32 @adv76xx_core_init(ptr noundef %197)
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %456

426:                                              ; preds = %423
  %427 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %428 = load i32, ptr %427, align 4
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %434, label %430

430:                                              ; preds = %426
  %431 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  %432 = call i32 @devm_request_threaded_irq(ptr noundef %31, i32 noundef %428, ptr noundef null, ptr noundef nonnull @adv76xx_irq_handler, i32 noundef 8196, ptr noundef %431, ptr noundef nonnull %32) #14
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %456

434:                                              ; preds = %430, %426
  %435 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 3
  %436 = load ptr, ptr %435, align 4
  %437 = icmp eq ptr %436, null
  br i1 %437, label %438, label %440

438:                                              ; preds = %434
  %439 = load ptr, ptr %31, align 4
  br label %440

440:                                              ; preds = %438, %434
  %441 = phi ptr [ %439, %438 ], [ %436, %434 ]
  %442 = call ptr @cec_allocate_adapter(ptr noundef nonnull @adv76xx_cec_adap_ops, ptr noundef nonnull %32, ptr noundef %441, i32 noundef 30, i8 noundef zeroext 3) #14
  %443 = getelementptr inbounds %struct.adv76xx_state, ptr %32, i32 0, i32 17
  store ptr %442, ptr %443, align 4
  %444 = icmp ugt ptr %442, inttoptr (i32 -4096 to ptr)
  %445 = ptrtoint ptr %442 to i32
  br i1 %444, label %456, label %446

446:                                              ; preds = %440
  %447 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  %448 = load i16, ptr %202, align 2
  %449 = zext i16 %448 to i32
  %450 = shl nuw nsw i32 %449, 1
  %451 = load ptr, ptr %6, align 8
  %452 = getelementptr inbounds %struct.i2c_adapter, ptr %451, i32 0, i32 12
  %453 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %198, ptr noundef %447, i32 noundef %450, ptr noundef %452) #15
  %454 = call i32 @v4l2_async_register_subdev(ptr noundef %197) #14
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %463, label %456

456:                                              ; preds = %446, %440, %430, %423, %420, %412
  %457 = phi i32 [ %418, %412 ], [ %421, %420 ], [ %424, %423 ], [ %432, %430 ], [ %445, %440 ], [ %454, %446 ]
  %458 = call zeroext i1 @cancel_delayed_work(ptr noundef %392) #14
  br label %459

459:                                              ; preds = %456, %385
  %460 = phi i32 [ %386, %385 ], [ %457, %456 ]
  call fastcc void @adv76xx_unregister_clients(ptr noundef nonnull %32)
  br label %461

461:                                              ; preds = %459, %326, %317
  %462 = phi i32 [ %460, %459 ], [ %324, %317 ], [ -19, %326 ]
  call void @v4l2_ctrl_handler_free(ptr noundef %283) #14
  br label %463

463:                                              ; preds = %461, %446, %275, %260, %253, %245, %238, %230, %171, %148, %124, %103, %30, %2
  %464 = phi i32 [ %149, %148 ], [ %172, %171 ], [ -19, %230 ], [ %462, %461 ], [ -19, %253 ], [ -19, %260 ], [ -19, %275 ], [ -19, %238 ], [ -19, %245 ], [ -19, %124 ], [ -5, %2 ], [ -12, %30 ], [ %104, %103 ], [ 0, %446 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 %464
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -88
  %5 = getelementptr i8, ptr %3, i32 1324
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 64, i32 noundef 0) #14
  %8 = load ptr, ptr %5, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 65, i32 noundef 0) #14
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 70, i32 noundef 0) #14
  %12 = load ptr, ptr %5, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 110, i32 noundef 0) #14
  %14 = load ptr, ptr %5, align 4
  %15 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 115, i32 noundef 0) #14
  %16 = getelementptr i8, ptr %3, i32 1212
  %17 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %16) #14
  tail call void @v4l2_async_unregister_subdev(ptr noundef %3) #14
  tail call fastcc void @adv76xx_unregister_clients(ptr noundef %4)
  %18 = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %19) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adv76xx_delayed_work_enable_hotplug(ptr noundef %0) #1 {
  %2 = load i32, ptr @debug, align 4
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -1096
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef %5, ptr noundef nonnull @__func__.adv76xx_delayed_work_enable_hotplug) #15
  br label %7

7:                                                ; preds = %4, %1
  %8 = getelementptr i8, ptr %0, i32 -1300
  %9 = getelementptr i8, ptr %0, i32 -24
  %10 = load i32, ptr %9, align 4
  tail call fastcc void @adv76xx_set_hpd(ptr noundef %8, i32 noundef %10)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @configure_regmaps(ptr nocapture noundef %0) unnamed_addr #1 {
  br label %2

2:                                                ; preds = %26, %1
  %3 = phi i32 [ 1, %1 ], [ %27, %26 ]
  %4 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 21, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr [13 x %struct.regmap_config], ptr @adv76xx_regmap_cnf, i32 0, i32 %3
  %9 = tail call ptr @__devm_regmap_init_i2c(ptr noundef nonnull %5, ptr noundef %8, ptr noundef null, ptr noundef null) #14
  %10 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 22, i32 %3
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i32
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef %17, i32 noundef %21, i32 noundef %24, i32 noundef %3, i32 noundef %13) #15
  br label %29

26:                                               ; preds = %7, %2
  %27 = add nuw nsw i32 %3, 1
  %28 = icmp eq i32 %27, 13
  br i1 %28, label %29, label %2

29:                                               ; preds = %26, %12
  %30 = phi i32 [ -22, %12 ], [ 0, %26 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @adv76xx_core_init(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr i8, ptr %0, i32 -88
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 -84
  %13 = load i8, ptr %12, align 4
  %14 = tail call i8 @llvm.bitreverse.i8(i8 %13)
  %15 = and i8 %14, -64
  %16 = getelementptr i8, ptr %0, i32 1360
  %17 = load ptr, ptr %16, align 4
  %18 = zext i8 %15 to i32
  %19 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 72, i32 noundef %18) #14
  tail call fastcc void @disable_input(ptr noundef %0)
  %20 = getelementptr i8, ptr %0, i32 -80
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = getelementptr i8, ptr %0, i32 420
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %21, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %0, i32 536
  store i32 %21, ptr %28, align 4
  tail call fastcc void @select_input(ptr noundef %0)
  tail call fastcc void @enable_input(ptr noundef %0)
  br label %29

29:                                               ; preds = %27, %23, %1
  %30 = getelementptr i8, ptr %0, i32 1324
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 12, i32 noundef 66) #14
  %33 = load ptr, ptr %30, align 4
  %34 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 11, i32 noundef 68) #14
  %35 = getelementptr i8, ptr %0, i32 1368
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 207, i32 noundef 1) #14
  %38 = load i32, ptr %11, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %90, label %40

40:                                               ; preds = %29
  %41 = getelementptr i8, ptr %0, i32 1272
  %42 = load ptr, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 0, ptr %9, align 4, !annotation !8
  %43 = load ptr, ptr %30, align 4
  %44 = call i32 @regmap_read(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %9) #14
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4, i32 6
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.i2c_adapter, ptr %51, i32 0, i32 11
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 1
  %55 = load i16, ptr %54, align 2
  %56 = zext i16 %55 to i32
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %49, i32 noundef %53, i32 noundef %56, i32 noundef %56, i32 noundef 32) #15
  br label %60

58:                                               ; preds = %40
  %59 = load i32, ptr %9, align 4
  br label %60

60:                                               ; preds = %58, %46
  %61 = phi i32 [ %44, %46 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %62 = and i32 %61, 63
  %63 = load ptr, ptr %30, align 4
  %64 = call i32 @regmap_write(ptr noundef %63, i32 noundef 32, i32 noundef %62) #14
  %65 = getelementptr i8, ptr %0, i32 1308
  %66 = load ptr, ptr %65, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !annotation !8
  %67 = load ptr, ptr %16, align 4
  %68 = call i32 @regmap_read(ptr noundef %67, i32 noundef 108, ptr noundef nonnull %8) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 4, i32 6
  %72 = load ptr, ptr %71, align 8
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.i2c_adapter, ptr %75, i32 0, i32 11
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 1
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %73, i32 noundef %77, i32 noundef %80, i32 noundef %80, i32 noundef 108) #15
  br label %84

82:                                               ; preds = %60
  %83 = load i32, ptr %8, align 4
  br label %84

84:                                               ; preds = %82, %70
  %85 = phi i32 [ %68, %70 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %86 = and i32 %85, 9
  %87 = or i32 %86, 38
  %88 = load ptr, ptr %16, align 4
  %89 = call i32 @regmap_write(ptr noundef %88, i32 noundef 108, i32 noundef %87) #14
  br label %90

90:                                               ; preds = %84, %29
  %91 = getelementptr i8, ptr %0, i32 -60
  %92 = load i8, ptr %91, align 4
  %93 = shl i8 %92, 3
  %94 = and i8 %93, 8
  %95 = getelementptr i8, ptr %0, i32 1272
  %96 = load ptr, ptr %95, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  %97 = load ptr, ptr %30, align 4
  %98 = call i32 @regmap_read(ptr noundef %97, i32 noundef 2, ptr noundef nonnull %7) #14
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.i2c_client, ptr %96, i32 0, i32 4, i32 6
  %102 = load ptr, ptr %101, align 8
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.i2c_client, ptr %96, i32 0, i32 3
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.i2c_adapter, ptr %105, i32 0, i32 11
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.i2c_client, ptr %96, i32 0, i32 1
  %109 = load i16, ptr %108, align 2
  %110 = zext i16 %109 to i32
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %103, i32 noundef %107, i32 noundef %110, i32 noundef %110, i32 noundef 2) #15
  br label %114

112:                                              ; preds = %90
  %113 = load i32, ptr %7, align 4
  br label %114

114:                                              ; preds = %112, %100
  %115 = phi i32 [ %98, %100 ], [ %113, %112 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, -16
  %118 = or i8 %117, %94
  %119 = load ptr, ptr %30, align 4
  %120 = zext i8 %118 to i32
  %121 = call i32 @regmap_write(ptr noundef %119, i32 noundef 2, i32 noundef %120) #14
  %122 = load i8, ptr %91, align 4
  %123 = shl i8 %122, 2
  %124 = and i8 %123, 8
  %125 = and i8 %122, 4
  %126 = or i8 %124, %125
  %127 = lshr i8 %122, 2
  %128 = and i8 %127, 2
  %129 = or i8 %126, %128
  %130 = load ptr, ptr %95, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %131 = load ptr, ptr %30, align 4
  %132 = call i32 @regmap_read(ptr noundef %131, i32 noundef 5, ptr noundef nonnull %6) #14
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %114
  %135 = getelementptr inbounds %struct.i2c_client, ptr %130, i32 0, i32 4, i32 6
  %136 = load ptr, ptr %135, align 8
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.i2c_client, ptr %130, i32 0, i32 3
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.i2c_adapter, ptr %139, i32 0, i32 11
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.i2c_client, ptr %130, i32 0, i32 1
  %143 = load i16, ptr %142, align 2
  %144 = zext i16 %143 to i32
  %145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %137, i32 noundef %141, i32 noundef %144, i32 noundef %144, i32 noundef 5) #15
  br label %148

146:                                              ; preds = %114
  %147 = load i32, ptr %6, align 4
  br label %148

148:                                              ; preds = %146, %134
  %149 = phi i32 [ %132, %134 ], [ %147, %146 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, -15
  %152 = or i8 %129, %151
  %153 = load ptr, ptr %30, align 4
  %154 = zext i8 %152 to i32
  %155 = call i32 @regmap_write(ptr noundef %153, i32 noundef 5, i32 noundef %154) #14
  call fastcc void @adv76xx_setup_format(ptr noundef %10)
  %156 = load ptr, ptr %35, align 4
  %157 = call i32 @regmap_write(ptr noundef %156, i32 noundef 105, i32 noundef 48) #14
  %158 = load i8, ptr %91, align 4
  %159 = lshr i8 %158, 2
  %160 = and i8 %159, 4
  %161 = lshr i8 %158, 4
  %162 = and i8 %161, 2
  %163 = lshr i8 %158, 6
  %164 = and i8 %163, 1
  %165 = or i8 %162, %160
  %166 = or i8 %165, %164
  %167 = or i8 %166, -96
  %168 = load ptr, ptr %30, align 4
  %169 = zext i8 %167 to i32
  %170 = call i32 @regmap_write(ptr noundef %168, i32 noundef 6, i32 noundef %169) #14
  %171 = getelementptr i8, ptr %0, i32 -56
  %172 = load i32, ptr %171, align 4
  %173 = shl i32 %172, 4
  %174 = getelementptr i8, ptr %0, i32 -52
  %175 = load i32, ptr %174, align 4
  %176 = shl i32 %175, 2
  %177 = or i32 %176, %173
  %178 = getelementptr i8, ptr %0, i32 -48
  %179 = load i32, ptr %178, align 4
  %180 = or i32 %177, %179
  %181 = load ptr, ptr %30, align 4
  %182 = and i32 %180, 191
  %183 = or i32 %182, 64
  %184 = call i32 @regmap_write(ptr noundef %181, i32 noundef 20, i32 noundef %183) #14
  %185 = getelementptr i8, ptr %0, i32 -40
  %186 = load i32, ptr %185, align 4
  %187 = shl i32 %186, 1
  %188 = load ptr, ptr %35, align 4
  %189 = and i32 %187, 254
  %190 = or i32 %189, 1
  %191 = call i32 @regmap_write(ptr noundef %188, i32 noundef 186, i32 noundef %190) #14
  %192 = load ptr, ptr %35, align 4
  %193 = call i32 @regmap_write(ptr noundef %192, i32 noundef 243, i32 noundef 220) #14
  %194 = load ptr, ptr %35, align 4
  %195 = call i32 @regmap_write(ptr noundef %194, i32 noundef 249, i32 noundef 35) #14
  %196 = load ptr, ptr %35, align 4
  %197 = call i32 @regmap_write(ptr noundef %196, i32 noundef 69, i32 noundef 35) #14
  %198 = load ptr, ptr %35, align 4
  %199 = call i32 @regmap_write(ptr noundef %198, i32 noundef 201, i32 noundef 45) #14
  %200 = getelementptr i8, ptr %0, i32 1308
  %201 = load ptr, ptr %200, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %202 = load ptr, ptr %16, align 4
  %203 = call i32 @regmap_read(ptr noundef %202, i32 noundef 21, ptr noundef nonnull %5) #14
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %217, label %205

205:                                              ; preds = %148
  %206 = getelementptr inbounds %struct.i2c_client, ptr %201, i32 0, i32 4, i32 6
  %207 = load ptr, ptr %206, align 8
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.i2c_client, ptr %201, i32 0, i32 3
  %210 = load ptr, ptr %209, align 8
  %211 = getelementptr inbounds %struct.i2c_adapter, ptr %210, i32 0, i32 11
  %212 = load i32, ptr %211, align 4
  %213 = getelementptr inbounds %struct.i2c_client, ptr %201, i32 0, i32 1
  %214 = load i16, ptr %213, align 2
  %215 = zext i16 %214 to i32
  %216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %208, i32 noundef %212, i32 noundef %215, i32 noundef %215, i32 noundef 21) #15
  br label %219

217:                                              ; preds = %148
  %218 = load i32, ptr %5, align 4
  br label %219

219:                                              ; preds = %217, %205
  %220 = phi i32 [ %203, %205 ], [ %218, %217 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %221 = load ptr, ptr %16, align 4
  %222 = and i32 %220, 252
  %223 = or i32 %222, 3
  %224 = call i32 @regmap_write(ptr noundef %221, i32 noundef 21, i32 noundef %223) #14
  %225 = load ptr, ptr %200, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %226 = load ptr, ptr %16, align 4
  %227 = call i32 @regmap_read(ptr noundef %226, i32 noundef 26, ptr noundef nonnull %4) #14
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %241, label %229

229:                                              ; preds = %219
  %230 = getelementptr inbounds %struct.i2c_client, ptr %225, i32 0, i32 4, i32 6
  %231 = load ptr, ptr %230, align 8
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.i2c_client, ptr %225, i32 0, i32 3
  %234 = load ptr, ptr %233, align 8
  %235 = getelementptr inbounds %struct.i2c_adapter, ptr %234, i32 0, i32 11
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr inbounds %struct.i2c_client, ptr %225, i32 0, i32 1
  %238 = load i16, ptr %237, align 2
  %239 = zext i16 %238 to i32
  %240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %232, i32 noundef %236, i32 noundef %239, i32 noundef %239, i32 noundef 26) #15
  br label %243

241:                                              ; preds = %219
  %242 = load i32, ptr %4, align 4
  br label %243

243:                                              ; preds = %241, %229
  %244 = phi i32 [ %227, %229 ], [ %242, %241 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %245 = and i32 %244, 241
  %246 = or i32 %245, 8
  %247 = load ptr, ptr %16, align 4
  %248 = call i32 @regmap_write(ptr noundef %247, i32 noundef 26, i32 noundef %246) #14
  %249 = load ptr, ptr %200, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %250 = load ptr, ptr %16, align 4
  %251 = call i32 @regmap_read(ptr noundef %250, i32 noundef 104, ptr noundef nonnull %3) #14
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %265, label %253

253:                                              ; preds = %243
  %254 = getelementptr inbounds %struct.i2c_client, ptr %249, i32 0, i32 4, i32 6
  %255 = load ptr, ptr %254, align 8
  %256 = load ptr, ptr %255, align 4
  %257 = getelementptr inbounds %struct.i2c_client, ptr %249, i32 0, i32 3
  %258 = load ptr, ptr %257, align 8
  %259 = getelementptr inbounds %struct.i2c_adapter, ptr %258, i32 0, i32 11
  %260 = load i32, ptr %259, align 4
  %261 = getelementptr inbounds %struct.i2c_client, ptr %249, i32 0, i32 1
  %262 = load i16, ptr %261, align 2
  %263 = zext i16 %262 to i32
  %264 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %256, i32 noundef %260, i32 noundef %263, i32 noundef %263, i32 noundef 104) #15
  br label %267

265:                                              ; preds = %243
  %266 = load i32, ptr %3, align 4
  br label %267

267:                                              ; preds = %265, %253
  %268 = phi i32 [ %251, %253 ], [ %266, %265 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %269 = load ptr, ptr %16, align 4
  %270 = and i32 %268, 249
  %271 = or i32 %270, 6
  %272 = call i32 @regmap_write(ptr noundef %269, i32 noundef 104, i32 noundef %271) #14
  %273 = getelementptr i8, ptr %0, i32 1348
  %274 = load ptr, ptr %273, align 4
  %275 = call i32 @regmap_write(ptr noundef %274, i32 noundef 181, i32 noundef 1) #14
  %276 = load ptr, ptr %10, align 4
  %277 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %276, i32 0, i32 1
  %278 = load i8, ptr %277, align 4, !range !9
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %316, label %280

280:                                              ; preds = %267
  %281 = getelementptr i8, ptr %0, i32 -76
  %282 = load i32, ptr %281, align 4
  %283 = load ptr, ptr %273, align 4
  %284 = and i32 %282, 255
  %285 = call i32 @regmap_write(ptr noundef %283, i32 noundef 2, i32 noundef %284) #14
  %286 = getelementptr i8, ptr %0, i32 -44
  %287 = load i8, ptr %286, align 4
  %288 = shl i8 %287, 4
  %289 = and i8 %288, 16
  %290 = load ptr, ptr %95, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %291 = load ptr, ptr %30, align 4
  %292 = call i32 @regmap_read(ptr noundef %291, i32 noundef 48, ptr noundef nonnull %2) #14
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %306, label %294

294:                                              ; preds = %280
  %295 = getelementptr inbounds %struct.i2c_client, ptr %290, i32 0, i32 4, i32 6
  %296 = load ptr, ptr %295, align 8
  %297 = load ptr, ptr %296, align 4
  %298 = getelementptr inbounds %struct.i2c_client, ptr %290, i32 0, i32 3
  %299 = load ptr, ptr %298, align 8
  %300 = getelementptr inbounds %struct.i2c_adapter, ptr %299, i32 0, i32 11
  %301 = load i32, ptr %300, align 4
  %302 = getelementptr inbounds %struct.i2c_client, ptr %290, i32 0, i32 1
  %303 = load i16, ptr %302, align 2
  %304 = zext i16 %303 to i32
  %305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %297, i32 noundef %301, i32 noundef %304, i32 noundef %304, i32 noundef 48) #15
  br label %308

306:                                              ; preds = %280
  %307 = load i32, ptr %2, align 4
  br label %308

308:                                              ; preds = %306, %294
  %309 = phi i32 [ %292, %294 ], [ %307, %306 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %310 = trunc i32 %309 to i8
  %311 = and i8 %310, -17
  %312 = or i8 %311, %289
  %313 = load ptr, ptr %30, align 4
  %314 = zext i8 %312 to i32
  %315 = call i32 @regmap_write(ptr noundef %313, i32 noundef 48, i32 noundef %314) #14
  br label %316

316:                                              ; preds = %308, %267
  %317 = getelementptr i8, ptr %0, i32 -64
  %318 = load i32, ptr %317, align 4
  %319 = load ptr, ptr %30, align 4
  %320 = and i32 %318, 63
  %321 = or i32 %320, 192
  %322 = call i32 @regmap_write(ptr noundef %319, i32 noundef 64, i32 noundef %321) #14
  %323 = load ptr, ptr %30, align 4
  %324 = call i32 @regmap_write(ptr noundef %323, i32 noundef 70, i32 noundef 152) #14
  %325 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %11, i32 0, i32 14
  %326 = load i32, ptr %325, align 4
  %327 = load ptr, ptr %30, align 4
  %328 = and i32 %326, 255
  %329 = call i32 @regmap_write(ptr noundef %327, i32 noundef 110, i32 noundef %328) #14
  %330 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %11, i32 0, i32 12
  %331 = load i32, ptr %330, align 4
  %332 = load ptr, ptr %30, align 4
  %333 = and i32 %331, 255
  %334 = call i32 @regmap_write(ptr noundef %332, i32 noundef 115, i32 noundef %333) #14
  %335 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %11, i32 0, i32 23
  %336 = load ptr, ptr %335, align 4
  call void %336(ptr noundef %0) #14
  %337 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 8
  %338 = load ptr, ptr %337, align 4
  %339 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %338) #14
  ret i32 %339
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_irq_handler(i32 noundef %0, ptr noundef %1) #1 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #14
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %struct.adv76xx_state, ptr %1, i32 0, i32 4
  %5 = call i32 @adv76xx_isr(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %3)
  %6 = load i8, ptr %3, align 1, !range !9
  %7 = zext i8 %6 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #14
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @adv76xx_unregister_clients(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 21, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #14
  %4 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 21, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @i2c_unregister_device(ptr noundef %5) #14
  %6 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 21, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @i2c_unregister_device(ptr noundef %7) #14
  %8 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 21, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @i2c_unregister_device(ptr noundef %9) #14
  %10 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 21, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void @i2c_unregister_device(ptr noundef %11) #14
  %12 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 21, i32 6
  %13 = load ptr, ptr %12, align 4
  tail call void @i2c_unregister_device(ptr noundef %13) #14
  %14 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 21, i32 7
  %15 = load ptr, ptr %14, align 4
  tail call void @i2c_unregister_device(ptr noundef %15) #14
  %16 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 21, i32 8
  %17 = load ptr, ptr %16, align 4
  tail call void @i2c_unregister_device(ptr noundef %17) #14
  %18 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 21, i32 9
  %19 = load ptr, ptr %18, align 4
  tail call void @i2c_unregister_device(ptr noundef %19) #14
  %20 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 21, i32 10
  %21 = load ptr, ptr %20, align 4
  tail call void @i2c_unregister_device(ptr noundef %21) #14
  %22 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 21, i32 11
  %23 = load ptr, ptr %22, align 4
  tail call void @i2c_unregister_device(ptr noundef %23) #14
  %24 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 21, i32 12
  %25 = load ptr, ptr %24, align 4
  tail call void @i2c_unregister_device(ptr noundef %25) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_log_status(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.v4l2_dv_timings, align 1
  %16 = alloca %struct.stdi_readback, align 2
  %17 = getelementptr i8, ptr %0, i32 -88
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %15) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(132) %15, i8 0, i32 132, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %16) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(10) %16, i8 0, i32 10, i1 false), !annotation !8
  %19 = getelementptr i8, ptr %0, i32 1272
  %20 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #14
  store i32 0, ptr %14, align 4, !annotation !8
  %21 = getelementptr i8, ptr %0, i32 1324
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @regmap_read(ptr noundef %22, i32 noundef 2, ptr noundef nonnull %14) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4, i32 6
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 11
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %28, i32 noundef %32, i32 noundef %35, i32 noundef %35, i32 noundef 2) #15
  br label %39

37:                                               ; preds = %1
  %38 = load i32, ptr %14, align 4
  br label %39

39:                                               ; preds = %37, %25
  %40 = phi i32 [ %23, %25 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  %41 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %41) #15
  %43 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #14
  store i32 0, ptr %13, align 4, !annotation !8
  %44 = load ptr, ptr %21, align 4
  %45 = call i32 @regmap_read(ptr noundef %44, i32 noundef 12, ptr noundef nonnull %13) #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4, i32 6
  %49 = load ptr, ptr %48, align 8
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 3
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, ptr %52, i32 0, i32 11
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 1
  %56 = load i16, ptr %55, align 2
  %57 = zext i16 %56 to i32
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %50, i32 noundef %54, i32 noundef %57, i32 noundef %57, i32 noundef 12) #15
  br label %61

59:                                               ; preds = %39
  %60 = load i32, ptr %13, align 4
  br label %61

61:                                               ; preds = %59, %47
  %62 = phi i32 [ %45, %47 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #14
  %63 = and i32 %62, 36
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, ptr @.str.48, ptr @.str.47
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %41, ptr noundef nonnull %65) #15
  %67 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %18, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr i8, ptr %0, i32 1300
  %70 = load ptr, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #14
  store i32 0, ptr %12, align 4, !annotation !8
  %71 = getelementptr i8, ptr %0, i32 1352
  %72 = load ptr, ptr %71, align 4
  %73 = and i32 %68, 255
  %74 = call i32 @regmap_read(ptr noundef %72, i32 noundef %73, ptr noundef nonnull %12) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %61
  %77 = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 4, i32 6
  %78 = load ptr, ptr %77, align 8
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 3
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.i2c_adapter, ptr %81, i32 0, i32 11
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 1
  %85 = load i16, ptr %84, align 2
  %86 = zext i16 %85 to i32
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %79, i32 noundef %83, i32 noundef %86, i32 noundef %86, i32 noundef %73) #15
  br label %90

88:                                               ; preds = %61
  %89 = load i32, ptr %12, align 4
  br label %90

90:                                               ; preds = %88, %76
  %91 = phi i32 [ %74, %76 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #14
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, ptr @.str.51, ptr @.str.50
  %95 = and i32 %91, 2
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, ptr @.str.51, ptr @.str.50
  %98 = and i32 %91, 4
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, ptr @.str.51, ptr @.str.50
  %101 = and i32 %91, 8
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, ptr @.str.51, ptr @.str.50
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %41, ptr noundef nonnull %94, ptr noundef nonnull %97, ptr noundef nonnull %100, ptr noundef nonnull %103) #15
  %105 = getelementptr i8, ptr %0, i32 1268
  %106 = load i8, ptr %105, align 4, !range !9
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %107, ptr @.str.54, ptr @.str.53
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %41, ptr noundef nonnull %108) #15
  %110 = load i8, ptr %105, align 4, !range !9
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %145, label %112

112:                                              ; preds = %90
  %113 = getelementptr i8, ptr %0, i32 1267
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %112
  %119 = getelementptr i8, ptr %0, i32 1264
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %41, i32 noundef %121) #15
  %123 = load i8, ptr %113, align 1
  %124 = zext i8 %123 to i32
  br label %125

125:                                              ; preds = %118, %112
  %126 = phi i32 [ %124, %118 ], [ %115, %112 ]
  %127 = and i32 %126, 2
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %125
  %130 = getelementptr i8, ptr %0, i32 1265
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %41, i32 noundef %132) #15
  %134 = load i8, ptr %113, align 1
  %135 = zext i8 %134 to i32
  br label %136

136:                                              ; preds = %129, %125
  %137 = phi i32 [ %135, %129 ], [ %126, %125 ]
  %138 = and i32 %137, 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %136
  %141 = getelementptr i8, ptr %0, i32 1266
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %41, i32 noundef %143) #15
  br label %145

145:                                              ; preds = %140, %136, %90
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %41) #15
  %147 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %18, i32 0, i32 25
  %148 = load ptr, ptr %147, align 4
  %149 = call i32 %148(ptr noundef %0) #14
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %151, ptr @.str.51, ptr @.str.50
  %153 = and i32 %149, 2
  %154 = icmp eq i32 %153, 0
  %155 = select i1 %154, ptr @.str.51, ptr @.str.50
  %156 = and i32 %149, 4
  %157 = icmp eq i32 %156, 0
  %158 = select i1 %157, ptr @.str.51, ptr @.str.50
  %159 = and i32 %149, 8
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, ptr @.str.51, ptr @.str.50
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %41, ptr noundef nonnull %152, ptr noundef nonnull %155, ptr noundef nonnull %158, ptr noundef nonnull %161) #15
  %163 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  store i32 0, ptr %11, align 4, !annotation !8
  %164 = load ptr, ptr %21, align 4
  %165 = call i32 @regmap_read(ptr noundef %164, i32 noundef 106, ptr noundef nonnull %11) #14
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %179, label %167

167:                                              ; preds = %145
  %168 = getelementptr inbounds %struct.i2c_client, ptr %163, i32 0, i32 4, i32 6
  %169 = load ptr, ptr %168, align 8
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.i2c_client, ptr %163, i32 0, i32 3
  %172 = load ptr, ptr %171, align 8
  %173 = getelementptr inbounds %struct.i2c_adapter, ptr %172, i32 0, i32 11
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.i2c_client, ptr %163, i32 0, i32 1
  %176 = load i16, ptr %175, align 2
  %177 = zext i16 %176 to i32
  %178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %170, i32 noundef %174, i32 noundef %177, i32 noundef %177, i32 noundef 106) #15
  br label %181

179:                                              ; preds = %145
  %180 = load i32, ptr %11, align 4
  br label %181

181:                                              ; preds = %179, %167
  %182 = phi i32 [ %165, %167 ], [ %180, %179 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  %183 = getelementptr i8, ptr %0, i32 536
  %184 = load i32, ptr %183, align 4
  %185 = lshr i32 16, %184
  %186 = and i32 %185, %182
  %187 = icmp eq i32 %186, 0
  %188 = select i1 %187, ptr @.str.59, ptr @.str.60
  %189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %41, ptr noundef nonnull %188) #15
  %190 = load ptr, ptr %17, align 4
  %191 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store i32 0, ptr %10, align 4, !annotation !8
  %192 = load ptr, ptr %21, align 4
  %193 = call i32 @regmap_read(ptr noundef %192, i32 noundef 106, ptr noundef nonnull %10) #14
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %207, label %195

195:                                              ; preds = %181
  %196 = getelementptr inbounds %struct.i2c_client, ptr %191, i32 0, i32 4, i32 6
  %197 = load ptr, ptr %196, align 8
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.i2c_client, ptr %191, i32 0, i32 3
  %200 = load ptr, ptr %199, align 8
  %201 = getelementptr inbounds %struct.i2c_adapter, ptr %200, i32 0, i32 11
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr inbounds %struct.i2c_client, ptr %191, i32 0, i32 1
  %204 = load i16, ptr %203, align 2
  %205 = zext i16 %204 to i32
  %206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %198, i32 noundef %202, i32 noundef %205, i32 noundef %205, i32 noundef 106) #15
  br label %209

207:                                              ; preds = %181
  %208 = load i32, ptr %10, align 4
  br label %209

209:                                              ; preds = %207, %195
  %210 = phi i32 [ %193, %195 ], [ %208, %207 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  %211 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %190, i32 0, i32 13
  %212 = load i32, ptr %211, align 4
  %213 = and i32 %212, %210
  %214 = icmp eq i32 %213, %212
  %215 = select i1 %214, ptr @.str.60, ptr @.str.59
  %216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %41, ptr noundef nonnull %215) #15
  %217 = load ptr, ptr %17, align 4
  %218 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %217, i32 0, i32 1
  %219 = load i8, ptr %218, align 4, !range !9
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %221, label %247

221:                                              ; preds = %209
  %222 = getelementptr i8, ptr %0, i32 1316
  %223 = load ptr, ptr %222, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 0, ptr %9, align 4, !annotation !8
  %224 = getelementptr i8, ptr %0, i32 1368
  %225 = load ptr, ptr %224, align 4
  %226 = call i32 @regmap_read(ptr noundef %225, i32 noundef 181, ptr noundef nonnull %9) #14
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %240, label %228

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.i2c_client, ptr %223, i32 0, i32 4, i32 6
  %230 = load ptr, ptr %229, align 8
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.i2c_client, ptr %223, i32 0, i32 3
  %233 = load ptr, ptr %232, align 8
  %234 = getelementptr inbounds %struct.i2c_adapter, ptr %233, i32 0, i32 11
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr inbounds %struct.i2c_client, ptr %223, i32 0, i32 1
  %237 = load i16, ptr %236, align 2
  %238 = zext i16 %237 to i32
  %239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %231, i32 noundef %235, i32 noundef %238, i32 noundef %238, i32 noundef 181) #15
  br label %242

240:                                              ; preds = %221
  %241 = load i32, ptr %9, align 4
  br label %242

242:                                              ; preds = %240, %228
  %243 = phi i32 [ %226, %228 ], [ %241, %240 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %244 = and i32 %243, 208
  %245 = icmp eq i32 %244, 208
  %246 = select i1 %245, ptr @.str.60, ptr @.str.59
  br label %247

247:                                              ; preds = %242, %209
  %248 = phi ptr [ @.str.60, %209 ], [ %246, %242 ]
  %249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %41, ptr noundef nonnull %248) #15
  %250 = getelementptr i8, ptr %0, i32 1316
  %251 = load ptr, ptr %250, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !annotation !8
  %252 = getelementptr i8, ptr %0, i32 1368
  %253 = load ptr, ptr %252, align 4
  %254 = call i32 @regmap_read(ptr noundef %253, i32 noundef 177, ptr noundef nonnull %8) #14
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %268, label %256

256:                                              ; preds = %247
  %257 = getelementptr inbounds %struct.i2c_client, ptr %251, i32 0, i32 4, i32 6
  %258 = load ptr, ptr %257, align 8
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr inbounds %struct.i2c_client, ptr %251, i32 0, i32 3
  %261 = load ptr, ptr %260, align 8
  %262 = getelementptr inbounds %struct.i2c_adapter, ptr %261, i32 0, i32 11
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr inbounds %struct.i2c_client, ptr %251, i32 0, i32 1
  %265 = load i16, ptr %264, align 2
  %266 = zext i16 %265 to i32
  %267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %259, i32 noundef %263, i32 noundef %266, i32 noundef %266, i32 noundef 177) #15
  br label %270

268:                                              ; preds = %247
  %269 = load i32, ptr %8, align 4
  br label %270

270:                                              ; preds = %268, %256
  %271 = phi i32 [ %254, %256 ], [ %269, %268 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %272 = and i32 %271, 128
  %273 = icmp eq i32 %272, 0
  %274 = select i1 %273, ptr @.str.59, ptr @.str.60
  %275 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %41, ptr noundef nonnull %274) #15
  %276 = load ptr, ptr %17, align 4
  %277 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %276, i32 0, i32 1
  %278 = load i8, ptr %277, align 4, !range !9
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %304, label %280

280:                                              ; preds = %270
  %281 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  %282 = load ptr, ptr %21, align 4
  %283 = call i32 @regmap_read(ptr noundef %282, i32 noundef 18, ptr noundef nonnull %7) #14
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %297, label %285

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.i2c_client, ptr %281, i32 0, i32 4, i32 6
  %287 = load ptr, ptr %286, align 8
  %288 = load ptr, ptr %287, align 4
  %289 = getelementptr inbounds %struct.i2c_client, ptr %281, i32 0, i32 3
  %290 = load ptr, ptr %289, align 8
  %291 = getelementptr inbounds %struct.i2c_adapter, ptr %290, i32 0, i32 11
  %292 = load i32, ptr %291, align 4
  %293 = getelementptr inbounds %struct.i2c_client, ptr %281, i32 0, i32 1
  %294 = load i16, ptr %293, align 2
  %295 = zext i16 %294 to i32
  %296 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %288, i32 noundef %292, i32 noundef %295, i32 noundef %295, i32 noundef 18) #15
  br label %299

297:                                              ; preds = %280
  %298 = load i32, ptr %7, align 4
  br label %299

299:                                              ; preds = %297, %285
  %300 = phi i32 [ %283, %285 ], [ %298, %297 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %301 = and i32 %300, 1
  %302 = icmp eq i32 %301, 0
  %303 = select i1 %302, ptr @.str.60, ptr @.str.59
  br label %304

304:                                              ; preds = %299, %270
  %305 = phi ptr [ @.str.60, %270 ], [ %303, %299 ]
  %306 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %41, ptr noundef nonnull %305) #15
  %307 = load ptr, ptr %250, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %308 = load ptr, ptr %252, align 4
  %309 = call i32 @regmap_read(ptr noundef %308, i32 noundef 255, ptr noundef nonnull %6) #14
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %323, label %311

311:                                              ; preds = %304
  %312 = getelementptr inbounds %struct.i2c_client, ptr %307, i32 0, i32 4, i32 6
  %313 = load ptr, ptr %312, align 8
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr inbounds %struct.i2c_client, ptr %307, i32 0, i32 3
  %316 = load ptr, ptr %315, align 8
  %317 = getelementptr inbounds %struct.i2c_adapter, ptr %316, i32 0, i32 11
  %318 = load i32, ptr %317, align 4
  %319 = getelementptr inbounds %struct.i2c_client, ptr %307, i32 0, i32 1
  %320 = load i16, ptr %319, align 2
  %321 = zext i16 %320 to i32
  %322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %314, i32 noundef %318, i32 noundef %321, i32 noundef %321, i32 noundef 255) #15
  br label %325

323:                                              ; preds = %304
  %324 = load i32, ptr %6, align 4
  br label %325

325:                                              ; preds = %323, %311
  %326 = phi i32 [ %309, %311 ], [ %324, %323 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %327 = and i32 %326, 16
  %328 = icmp eq i32 %327, 0
  %329 = select i1 %328, ptr @.str.47, ptr @.str.48
  %330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %41, ptr noundef nonnull %329) #15
  %331 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %332 = load ptr, ptr %21, align 4
  %333 = call i32 @regmap_read(ptr noundef %332, i32 noundef 1, ptr noundef nonnull %5) #14
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %347, label %335

335:                                              ; preds = %325
  %336 = getelementptr inbounds %struct.i2c_client, ptr %331, i32 0, i32 4, i32 6
  %337 = load ptr, ptr %336, align 8
  %338 = load ptr, ptr %337, align 4
  %339 = getelementptr inbounds %struct.i2c_client, ptr %331, i32 0, i32 3
  %340 = load ptr, ptr %339, align 8
  %341 = getelementptr inbounds %struct.i2c_adapter, ptr %340, i32 0, i32 11
  %342 = load i32, ptr %341, align 4
  %343 = getelementptr inbounds %struct.i2c_client, ptr %331, i32 0, i32 1
  %344 = load i16, ptr %343, align 2
  %345 = zext i16 %344 to i32
  %346 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %338, i32 noundef %342, i32 noundef %345, i32 noundef %345, i32 noundef 1) #15
  br label %349

347:                                              ; preds = %325
  %348 = load i32, ptr %5, align 4
  br label %349

349:                                              ; preds = %347, %335
  %350 = phi i32 [ %333, %335 ], [ %348, %347 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %351 = and i32 %350, 15
  %352 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %353 = load ptr, ptr %21, align 4
  %354 = call i32 @regmap_read(ptr noundef %353, i32 noundef 0, ptr noundef nonnull %4) #14
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %368, label %356

356:                                              ; preds = %349
  %357 = getelementptr inbounds %struct.i2c_client, ptr %352, i32 0, i32 4, i32 6
  %358 = load ptr, ptr %357, align 8
  %359 = load ptr, ptr %358, align 4
  %360 = getelementptr inbounds %struct.i2c_client, ptr %352, i32 0, i32 3
  %361 = load ptr, ptr %360, align 8
  %362 = getelementptr inbounds %struct.i2c_adapter, ptr %361, i32 0, i32 11
  %363 = load i32, ptr %362, align 4
  %364 = getelementptr inbounds %struct.i2c_client, ptr %352, i32 0, i32 1
  %365 = load i16, ptr %364, align 2
  %366 = zext i16 %365 to i32
  %367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %359, i32 noundef %363, i32 noundef %366, i32 noundef %366, i32 noundef 0) #15
  br label %370

368:                                              ; preds = %349
  %369 = load i32, ptr %4, align 4
  br label %370

370:                                              ; preds = %368, %356
  %371 = phi i32 [ %354, %356 ], [ %369, %368 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %372 = and i32 %371, 63
  %373 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %374 = load ptr, ptr %21, align 4
  %375 = call i32 @regmap_read(ptr noundef %374, i32 noundef 1, ptr noundef nonnull %3) #14
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %389, label %377

377:                                              ; preds = %370
  %378 = getelementptr inbounds %struct.i2c_client, ptr %373, i32 0, i32 4, i32 6
  %379 = load ptr, ptr %378, align 8
  %380 = load ptr, ptr %379, align 4
  %381 = getelementptr inbounds %struct.i2c_client, ptr %373, i32 0, i32 3
  %382 = load ptr, ptr %381, align 8
  %383 = getelementptr inbounds %struct.i2c_adapter, ptr %382, i32 0, i32 11
  %384 = load i32, ptr %383, align 4
  %385 = getelementptr inbounds %struct.i2c_client, ptr %373, i32 0, i32 1
  %386 = load i16, ptr %385, align 2
  %387 = zext i16 %386 to i32
  %388 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %380, i32 noundef %384, i32 noundef %387, i32 noundef %387, i32 noundef 1) #15
  br label %391

389:                                              ; preds = %370
  %390 = load i32, ptr %3, align 4
  br label %391

391:                                              ; preds = %389, %377
  %392 = phi i32 [ %375, %377 ], [ %390, %389 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %393 = lshr i32 %392, 4
  %394 = and i32 %393, 7
  %395 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %41, i32 noundef %351, i32 noundef %372, i32 noundef %394) #15
  %396 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %41) #15
  %397 = call fastcc i32 @read_stdi(ptr noundef %0, ptr noundef nonnull %16)
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %401, label %399

399:                                              ; preds = %391
  %400 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %41) #15
  br label %421

401:                                              ; preds = %391
  %402 = getelementptr inbounds %struct.stdi_readback, ptr %16, i32 0, i32 1
  %403 = load i16, ptr %402, align 2
  %404 = zext i16 %403 to i32
  %405 = load i16, ptr %16, align 2
  %406 = zext i16 %405 to i32
  %407 = getelementptr inbounds %struct.stdi_readback, ptr %16, i32 0, i32 2
  %408 = load i16, ptr %407, align 2
  %409 = zext i16 %408 to i32
  %410 = getelementptr inbounds %struct.stdi_readback, ptr %16, i32 0, i32 5
  %411 = load i8, ptr %410, align 2, !range !9
  %412 = icmp eq i8 %411, 0
  %413 = select i1 %412, ptr @.str.71, ptr @.str.70
  %414 = getelementptr inbounds %struct.stdi_readback, ptr %16, i32 0, i32 3
  %415 = load i8, ptr %414, align 2
  %416 = zext i8 %415 to i32
  %417 = getelementptr inbounds %struct.stdi_readback, ptr %16, i32 0, i32 4
  %418 = load i8, ptr %417, align 1
  %419 = zext i8 %418 to i32
  %420 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %41, i32 noundef %404, i32 noundef %406, i32 noundef %409, ptr noundef nonnull %413, i32 noundef %416, i32 noundef %419) #15
  br label %421

421:                                              ; preds = %401, %399
  %422 = call i32 @adv76xx_query_dv_timings(ptr noundef %0, ptr noundef nonnull %15)
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %426, label %424

424:                                              ; preds = %421
  %425 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %41) #15
  br label %427

426:                                              ; preds = %421
  call void @v4l2_print_dv_timings(ptr noundef %41, ptr noundef nonnull @.str.73, ptr noundef nonnull %15, i1 noundef zeroext true) #14
  br label %427

427:                                              ; preds = %426, %424
  %428 = getelementptr i8, ptr %0, i32 540
  call void @v4l2_print_dv_timings(ptr noundef %41, ptr noundef nonnull @.str.74, ptr noundef %428, i1 noundef zeroext true) #14
  %429 = call fastcc zeroext i1 @no_signal(ptr noundef %0)
  br i1 %429, label %562, label %430

430:                                              ; preds = %427
  %431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %41) #15
  %432 = getelementptr i8, ptr %0, i32 1208
  %433 = load i32, ptr %432, align 4
  %434 = getelementptr [3 x ptr], ptr @adv76xx_log_status.rgb_quantization_range_txt, i32 0, i32 %433
  %435 = load ptr, ptr %434, align 4
  %436 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %41, ptr noundef %435) #15
  %437 = lshr i32 %40, 4
  %438 = and i32 %437, 15
  %439 = getelementptr [16 x ptr], ptr @adv76xx_log_status.input_color_space_txt, i32 0, i32 %438
  %440 = load ptr, ptr %439, align 4
  %441 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %41, ptr noundef %440) #15
  %442 = and i32 %40, 2
  %443 = icmp eq i32 %442, 0
  %444 = select i1 %443, ptr @.str.80, ptr @.str.79
  %445 = lshr i32 %40, 2
  %446 = xor i32 %445, %40
  %447 = and i32 %446, 1
  %448 = icmp eq i32 %447, 0
  %449 = select i1 %448, ptr @.str.82, ptr @.str.81
  %450 = and i32 %40, 8
  %451 = icmp eq i32 %450, 0
  %452 = select i1 %451, ptr @.str.54, ptr @.str.53
  %453 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %41, ptr noundef nonnull %444, ptr noundef nonnull %449, ptr noundef nonnull %452) #15
  %454 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %18, i32 0, i32 15
  %455 = load i32, ptr %454, align 4
  %456 = load ptr, ptr %250, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %457 = load ptr, ptr %252, align 4
  %458 = and i32 %455, 255
  %459 = call i32 @regmap_read(ptr noundef %457, i32 noundef %458, ptr noundef nonnull %2) #14
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %473, label %461

461:                                              ; preds = %430
  %462 = getelementptr inbounds %struct.i2c_client, ptr %456, i32 0, i32 4, i32 6
  %463 = load ptr, ptr %462, align 8
  %464 = load ptr, ptr %463, align 4
  %465 = getelementptr inbounds %struct.i2c_client, ptr %456, i32 0, i32 3
  %466 = load ptr, ptr %465, align 8
  %467 = getelementptr inbounds %struct.i2c_adapter, ptr %466, i32 0, i32 11
  %468 = load i32, ptr %467, align 4
  %469 = getelementptr inbounds %struct.i2c_client, ptr %456, i32 0, i32 1
  %470 = load i16, ptr %469, align 2
  %471 = zext i16 %470 to i32
  %472 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %464, i32 noundef %468, i32 noundef %471, i32 noundef %471, i32 noundef %458) #15
  br label %475

473:                                              ; preds = %430
  %474 = load i32, ptr %2, align 4
  br label %475

475:                                              ; preds = %473, %461
  %476 = phi i32 [ %459, %461 ], [ %474, %473 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %477 = ashr i32 %476, 4
  %478 = getelementptr [16 x ptr], ptr @adv76xx_log_status.csc_coeff_sel_rb, i32 0, i32 %477
  %479 = load ptr, ptr %478, align 4
  %480 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %41, ptr noundef %479) #15
  %481 = load i32, ptr %183, align 4
  %482 = icmp ult i32 %481, 4
  br i1 %482, label %483, label %562

483:                                              ; preds = %475
  %484 = call fastcc zeroext i1 @is_hdmi(ptr noundef %0)
  %485 = select i1 %484, ptr @.str.85, ptr @.str.86
  %486 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %41, ptr noundef nonnull %485) #15
  %487 = call fastcc i32 @hdmi_read(ptr noundef %0, i8 noundef zeroext 0)
  %488 = and i32 %487, 3
  %489 = add nuw nsw i32 %488, 65
  %490 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %41, i32 noundef %489) #15
  %491 = call fastcc i32 @hdmi_read(ptr noundef %0, i8 noundef zeroext 5)
  %492 = and i32 %491, 64
  %493 = icmp eq i32 %492, 0
  %494 = select i1 %493, ptr @.str.59, ptr @.str.60
  %495 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %41, ptr noundef nonnull %494) #15
  %496 = call fastcc i32 @hdmi_read(ptr noundef %0, i8 noundef zeroext 4)
  %497 = and i32 %496, 32
  %498 = icmp eq i32 %497, 0
  %499 = select i1 %498, ptr @.str.91, ptr @.str.90
  %500 = call fastcc i32 @hdmi_read(ptr noundef %0, i8 noundef zeroext 4)
  %501 = and i32 %500, 16
  %502 = icmp eq i32 %501, 0
  %503 = select i1 %502, ptr @.str.93, ptr @.str.92
  %504 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %41, ptr noundef nonnull %499, ptr noundef nonnull %503) #15
  %505 = call fastcc zeroext i1 @is_hdmi(ptr noundef %0)
  br i1 %505, label %506, label %562

506:                                              ; preds = %483
  %507 = call fastcc i32 @hdmi_read(ptr noundef %0, i8 noundef zeroext 4)
  %508 = and i32 %507, 1
  %509 = icmp eq i32 %508, 0
  %510 = call fastcc i32 @hdmi_read(ptr noundef %0, i8 noundef zeroext 24)
  %511 = and i32 %510, 1
  %512 = icmp eq i32 %511, 0
  %513 = call fastcc i32 @io_read(ptr noundef %0, i8 noundef zeroext 101)
  %514 = and i32 %513, 64
  %515 = icmp eq i32 %514, 0
  %516 = select i1 %509, ptr @.str.96, ptr @.str.95
  %517 = select i1 %512, ptr @.str.98, ptr @.str.97
  %518 = select i1 %515, ptr @.str.53, ptr @.str.99
  %519 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %41, ptr noundef nonnull %516, ptr noundef nonnull %517, ptr noundef nonnull %518) #15
  %520 = select i1 %509, i1 true, i1 %512
  br i1 %520, label %527, label %521

521:                                              ; preds = %506
  %522 = call fastcc i32 @hdmi_read(ptr noundef %0, i8 noundef zeroext 7)
  %523 = and i32 %522, 32
  %524 = icmp eq i32 %523, 0
  %525 = select i1 %524, ptr @.str.102, ptr @.str.101
  %526 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %41, ptr noundef nonnull %525) #15
  br label %527

527:                                              ; preds = %521, %506
  %528 = call fastcc i32 @hdmi_read(ptr noundef %0, i8 noundef zeroext 91)
  %529 = shl i32 %528, 12
  %530 = call fastcc i32 @hdmi_read(ptr noundef %0, i8 noundef zeroext 92)
  %531 = shl i32 %530, 8
  %532 = add i32 %531, %529
  %533 = call fastcc i32 @hdmi_read(ptr noundef %0, i8 noundef zeroext 93)
  %534 = and i32 %533, 240
  %535 = or i32 %532, %534
  %536 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %41, i32 noundef %535) #15
  %537 = call fastcc i32 @hdmi_read(ptr noundef %0, i8 noundef zeroext 93)
  %538 = shl i32 %537, 16
  %539 = and i32 %538, 983040
  %540 = call fastcc i32 @hdmi_read(ptr noundef %0, i8 noundef zeroext 94)
  %541 = shl i32 %540, 8
  %542 = add i32 %539, %541
  %543 = call fastcc i32 @hdmi_read(ptr noundef %0, i8 noundef zeroext 95)
  %544 = add i32 %542, %543
  %545 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %41, i32 noundef %544) #15
  %546 = call fastcc i32 @hdmi_read(ptr noundef %0, i8 noundef zeroext 4)
  %547 = and i32 %546, 64
  %548 = icmp eq i32 %547, 0
  %549 = select i1 %548, ptr @.str.47, ptr @.str.48
  %550 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %41, ptr noundef nonnull %549) #15
  %551 = call fastcc i32 @hdmi_read(ptr noundef %0, i8 noundef zeroext 11)
  %552 = lshr i32 %551, 5
  %553 = and i32 %552, 3
  %554 = getelementptr [4 x ptr], ptr @adv76xx_log_status.deep_color_mode_txt, i32 0, i32 %553
  %555 = load ptr, ptr %554, align 4
  %556 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %41, ptr noundef %555) #15
  %557 = call fastcc i32 @hdmi_read(ptr noundef %0, i8 noundef zeroext 83)
  %558 = and i32 %557, 15
  %559 = getelementptr [16 x ptr], ptr @adv76xx_log_status.hdmi_color_space_txt, i32 0, i32 %558
  %560 = load ptr, ptr %559, align 4
  %561 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %41, ptr noundef %560) #15
  call fastcc void @adv76xx_log_infoframes(ptr noundef %0)
  br label %562

562:                                              ; preds = %527, %483, %475, %427
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %15) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_isr(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cec_msg, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr i8, ptr %0, i32 -88
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %0, i32 1272
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #14
  store i32 0, ptr %14, align 4, !annotation !8
  %19 = getelementptr i8, ptr %0, i32 1324
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 67, ptr noundef nonnull %14) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 1
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %26, i32 noundef %30, i32 noundef %33, i32 noundef %33, i32 noundef 67) #15
  br label %37

35:                                               ; preds = %3
  %36 = load i32, ptr %14, align 4
  br label %37

37:                                               ; preds = %35, %23
  %38 = phi i32 [ %21, %23 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  %39 = trunc i32 %38 to i8
  %40 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #14
  store i32 0, ptr %13, align 4, !annotation !8
  %41 = load ptr, ptr %19, align 4
  %42 = call i32 @regmap_read(ptr noundef %41, i32 noundef 107, ptr noundef nonnull %13) #14
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4, i32 6
  %46 = load ptr, ptr %45, align 8
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 3
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, ptr %49, i32 0, i32 11
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 1
  %53 = load i16, ptr %52, align 2
  %54 = zext i16 %53 to i32
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %47, i32 noundef %51, i32 noundef %54, i32 noundef %54, i32 noundef 107) #15
  br label %58

56:                                               ; preds = %37
  %57 = load i32, ptr %13, align 4
  br label %58

58:                                               ; preds = %56, %44
  %59 = phi i32 [ %42, %44 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #14
  %60 = trunc i32 %59 to i8
  %61 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #14
  store i32 0, ptr %12, align 4, !annotation !8
  %62 = load ptr, ptr %19, align 4
  %63 = call i32 @regmap_read(ptr noundef %62, i32 noundef 112, ptr noundef nonnull %12) #14
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4, i32 6
  %67 = load ptr, ptr %66, align 8
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 3
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.i2c_adapter, ptr %70, i32 0, i32 11
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 1
  %74 = load i16, ptr %73, align 2
  %75 = zext i16 %74 to i32
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %68, i32 noundef %72, i32 noundef %75, i32 noundef %75, i32 noundef 112) #15
  br label %79

77:                                               ; preds = %58
  %78 = load i32, ptr %12, align 4
  br label %79

79:                                               ; preds = %77, %65
  %80 = phi i32 [ %63, %65 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #14
  %81 = trunc i32 %80 to i8
  %82 = icmp eq i8 %39, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %19, align 4
  %85 = and i32 %38, 255
  %86 = call i32 @regmap_write(ptr noundef %84, i32 noundef 68, i32 noundef %85) #14
  br label %87

87:                                               ; preds = %83, %79
  %88 = icmp eq i8 %81, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %87
  %90 = load ptr, ptr %19, align 4
  %91 = and i32 %80, 255
  %92 = call i32 @regmap_write(ptr noundef %90, i32 noundef 113, i32 noundef %91) #14
  br label %93

93:                                               ; preds = %89, %87
  %94 = icmp eq i8 %60, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %93
  %96 = load ptr, ptr %19, align 4
  %97 = and i32 %59, 255
  %98 = call i32 @regmap_write(ptr noundef %96, i32 noundef 108, i32 noundef %97) #14
  br label %99

99:                                               ; preds = %95, %93
  %100 = load i32, ptr @debug, align 4
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %103, ptr noundef nonnull @__func__.adv76xx_isr) #15
  br label %105

105:                                              ; preds = %102, %99
  %106 = and i32 %38, 152
  %107 = getelementptr i8, ptr %0, i32 536
  %108 = load i32, ptr %107, align 4
  %109 = icmp ult i32 %108, 4
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %16, i32 0, i32 14
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %59, 255
  %114 = and i32 %113, %112
  br label %115

115:                                              ; preds = %110, %105
  %116 = phi i32 [ %114, %110 ], [ 0, %105 ]
  %117 = icmp ne i32 %106, 0
  %118 = icmp ne i32 %116, 0
  %119 = select i1 %117, i1 true, i1 %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load i32, ptr @debug, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %124, ptr noundef nonnull @__func__.adv76xx_isr, i32 noundef %106, i32 noundef %116) #15
  br label %126

126:                                              ; preds = %123, %120
  call void @v4l2_subdev_notify_event(ptr noundef %0, ptr noundef nonnull @adv76xx_ev_fmt) #14
  %127 = icmp eq ptr %2, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %126
  store i8 1, ptr %2, align 1
  br label %129

129:                                              ; preds = %128, %126, %115
  %130 = and i32 %59, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %164, label %132

132:                                              ; preds = %129
  %133 = load i32, ptr @debug, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %161

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %137 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  store i32 0, ptr %11, align 4, !annotation !8
  %138 = load ptr, ptr %19, align 4
  %139 = call i32 @regmap_read(ptr noundef %138, i32 noundef 106, ptr noundef nonnull %11) #14
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.i2c_client, ptr %137, i32 0, i32 4, i32 6
  %143 = load ptr, ptr %142, align 8
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.i2c_client, ptr %137, i32 0, i32 3
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %struct.i2c_adapter, ptr %146, i32 0, i32 11
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds %struct.i2c_client, ptr %137, i32 0, i32 1
  %150 = load i16, ptr %149, align 2
  %151 = zext i16 %150 to i32
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %144, i32 noundef %148, i32 noundef %151, i32 noundef %151, i32 noundef 106) #15
  br label %155

153:                                              ; preds = %135
  %154 = load i32, ptr %11, align 4
  br label %155

155:                                              ; preds = %153, %141
  %156 = phi i32 [ %139, %141 ], [ %154, %153 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %158, ptr @.str.135, ptr @.str.85
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %136, ptr noundef nonnull @__func__.adv76xx_isr, ptr noundef nonnull %159) #15
  br label %161

161:                                              ; preds = %155, %132
  call fastcc void @set_rgb_quantization_range(ptr noundef %0)
  %162 = icmp eq ptr %2, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %161
  store i8 1, ptr %2, align 1
  br label %164

164:                                              ; preds = %163, %161, %129
  %165 = load ptr, ptr %15, align 4
  %166 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %165, i32 0, i32 16
  %167 = load i32, ptr %166, align 4
  %168 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 0, ptr %9, align 4, !annotation !8
  %169 = load ptr, ptr %19, align 4
  %170 = and i32 %167, 255
  %171 = call i32 @regmap_read(ptr noundef %169, i32 noundef %170, ptr noundef nonnull %9) #14
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %185, label %173

173:                                              ; preds = %164
  %174 = getelementptr inbounds %struct.i2c_client, ptr %168, i32 0, i32 4, i32 6
  %175 = load ptr, ptr %174, align 8
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.i2c_client, ptr %168, i32 0, i32 3
  %178 = load ptr, ptr %177, align 8
  %179 = getelementptr inbounds %struct.i2c_adapter, ptr %178, i32 0, i32 11
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr inbounds %struct.i2c_client, ptr %168, i32 0, i32 1
  %182 = load i16, ptr %181, align 2
  %183 = zext i16 %182 to i32
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %176, i32 noundef %180, i32 noundef %183, i32 noundef %183, i32 noundef %170) #15
  br label %187

185:                                              ; preds = %164
  %186 = load i32, ptr %9, align 4
  br label %187

187:                                              ; preds = %185, %173
  %188 = phi i32 [ %171, %173 ], [ %186, %185 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 15
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %403, label %192

192:                                              ; preds = %187
  %193 = load i32, ptr @debug, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %197 = zext i8 %190 to i32
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %196, ptr noundef nonnull @__func__.adv76xx_cec_isr, i32 noundef %197) #15
  br label %199

199:                                              ; preds = %195, %192
  %200 = getelementptr i8, ptr %0, i32 1280
  %201 = load ptr, ptr %200, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !annotation !8
  %202 = getelementptr i8, ptr %0, i32 1332
  %203 = load ptr, ptr %202, align 4
  %204 = call i32 @regmap_read(ptr noundef %203, i32 noundef 17, ptr noundef nonnull %8) #14
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %218, label %206

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct.i2c_client, ptr %201, i32 0, i32 4, i32 6
  %208 = load ptr, ptr %207, align 8
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr inbounds %struct.i2c_client, ptr %201, i32 0, i32 3
  %211 = load ptr, ptr %210, align 8
  %212 = getelementptr inbounds %struct.i2c_adapter, ptr %211, i32 0, i32 11
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr inbounds %struct.i2c_client, ptr %201, i32 0, i32 1
  %215 = load i16, ptr %214, align 2
  %216 = zext i16 %215 to i32
  %217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %209, i32 noundef %213, i32 noundef %216, i32 noundef %216, i32 noundef 17) #15
  br label %220

218:                                              ; preds = %199
  %219 = load i32, ptr %8, align 4
  br label %220

220:                                              ; preds = %218, %206
  %221 = phi i32 [ %204, %206 ], [ %219, %218 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %222 = and i32 %221, 1
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %220
  %225 = load i32, ptr @debug, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %319

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef %228, ptr noundef nonnull @__func__.adv76xx_cec_tx_raw_status) #15
  br label %319

230:                                              ; preds = %220
  %231 = zext i8 %190 to i32
  %232 = and i32 %231, 2
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %244, label %234

234:                                              ; preds = %230
  %235 = load i32, ptr @debug, align 4
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef %238, ptr noundef nonnull @__func__.adv76xx_cec_tx_raw_status) #15
  br label %240

240:                                              ; preds = %237, %234
  %241 = getelementptr i8, ptr %0, i32 1260
  %242 = load ptr, ptr %241, align 4
  %243 = call i64 @ktime_get() #14
  call void @cec_transmit_done_ts(ptr noundef %242, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %243) #14
  br label %319

244:                                              ; preds = %230
  %245 = and i32 %231, 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %306, label %247

247:                                              ; preds = %244
  %248 = load i32, ptr @debug, align 4
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %251, ptr noundef nonnull @__func__.adv76xx_cec_tx_raw_status) #15
  br label %253

253:                                              ; preds = %250, %247
  %254 = load ptr, ptr %200, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  %255 = load ptr, ptr %202, align 4
  %256 = call i32 @regmap_read(ptr noundef %255, i32 noundef 20, ptr noundef nonnull %7) #14
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %270, label %258

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.i2c_client, ptr %254, i32 0, i32 4, i32 6
  %260 = load ptr, ptr %259, align 8
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr inbounds %struct.i2c_client, ptr %254, i32 0, i32 3
  %263 = load ptr, ptr %262, align 8
  %264 = getelementptr inbounds %struct.i2c_adapter, ptr %263, i32 0, i32 11
  %265 = load i32, ptr %264, align 4
  %266 = getelementptr inbounds %struct.i2c_client, ptr %254, i32 0, i32 1
  %267 = load i16, ptr %266, align 2
  %268 = zext i16 %267 to i32
  %269 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %261, i32 noundef %265, i32 noundef %268, i32 noundef %268, i32 noundef 20) #15
  br label %272

270:                                              ; preds = %253
  %271 = load i32, ptr %7, align 4
  br label %272

272:                                              ; preds = %270, %258
  %273 = phi i32 [ %256, %258 ], [ %271, %270 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 15
  %276 = icmp eq i8 %275, 0
  %277 = select i1 %276, i8 32, i8 36
  %278 = load ptr, ptr %200, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %279 = load ptr, ptr %202, align 4
  %280 = call i32 @regmap_read(ptr noundef %279, i32 noundef 20, ptr noundef nonnull %6) #14
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %294, label %282

282:                                              ; preds = %272
  %283 = getelementptr inbounds %struct.i2c_client, ptr %278, i32 0, i32 4, i32 6
  %284 = load ptr, ptr %283, align 8
  %285 = load ptr, ptr %284, align 4
  %286 = getelementptr inbounds %struct.i2c_client, ptr %278, i32 0, i32 3
  %287 = load ptr, ptr %286, align 8
  %288 = getelementptr inbounds %struct.i2c_adapter, ptr %287, i32 0, i32 11
  %289 = load i32, ptr %288, align 4
  %290 = getelementptr inbounds %struct.i2c_client, ptr %278, i32 0, i32 1
  %291 = load i16, ptr %290, align 2
  %292 = zext i16 %291 to i32
  %293 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %285, i32 noundef %289, i32 noundef %292, i32 noundef %292, i32 noundef 20) #15
  br label %296

294:                                              ; preds = %272
  %295 = load i32, ptr %6, align 4
  br label %296

296:                                              ; preds = %294, %282
  %297 = phi i32 [ %280, %282 ], [ %295, %294 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = icmp eq i8 %299, 0
  %301 = or i8 %277, 8
  %302 = select i1 %300, i8 %277, i8 %301
  %303 = getelementptr i8, ptr %0, i32 1260
  %304 = load ptr, ptr %303, align 4
  %305 = call i64 @ktime_get() #14
  call void @cec_transmit_done_ts(ptr noundef %304, i8 noundef zeroext %302, i8 noundef zeroext 0, i8 noundef zeroext %275, i8 noundef zeroext %299, i8 noundef zeroext 0, i64 noundef %305) #14
  br label %319

306:                                              ; preds = %244
  %307 = and i32 %231, 1
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %319, label %309

309:                                              ; preds = %306
  %310 = load i32, ptr @debug, align 4
  %311 = icmp sgt i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %314 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %313, ptr noundef nonnull @__func__.adv76xx_cec_tx_raw_status) #15
  br label %315

315:                                              ; preds = %312, %309
  %316 = getelementptr i8, ptr %0, i32 1260
  %317 = load ptr, ptr %316, align 4
  %318 = call i64 @ktime_get() #14
  call void @cec_transmit_done_ts(ptr noundef %317, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %318) #14
  br label %319

319:                                              ; preds = %315, %306, %296, %240, %227, %224
  %320 = and i32 %188, 8
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %387, label %322

322:                                              ; preds = %319
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i32 56, i1 false) #14, !annotation !8
  %323 = load ptr, ptr %200, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %324 = load ptr, ptr %202, align 4
  %325 = call i32 @regmap_read(ptr noundef %324, i32 noundef 37, ptr noundef nonnull %5) #14
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %339, label %327

327:                                              ; preds = %322
  %328 = getelementptr inbounds %struct.i2c_client, ptr %323, i32 0, i32 4, i32 6
  %329 = load ptr, ptr %328, align 8
  %330 = load ptr, ptr %329, align 4
  %331 = getelementptr inbounds %struct.i2c_client, ptr %323, i32 0, i32 3
  %332 = load ptr, ptr %331, align 8
  %333 = getelementptr inbounds %struct.i2c_adapter, ptr %332, i32 0, i32 11
  %334 = load i32, ptr %333, align 4
  %335 = getelementptr inbounds %struct.i2c_client, ptr %323, i32 0, i32 1
  %336 = load i16, ptr %335, align 2
  %337 = zext i16 %336 to i32
  %338 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %330, i32 noundef %334, i32 noundef %337, i32 noundef %337, i32 noundef 37) #15
  br label %341

339:                                              ; preds = %322
  %340 = load i32, ptr %5, align 4
  br label %341

341:                                              ; preds = %339, %327
  %342 = phi i32 [ %325, %327 ], [ %340, %339 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %343 = and i32 %342, 31
  %344 = getelementptr inbounds %struct.cec_msg, ptr %10, i32 0, i32 2
  %345 = call i32 @llvm.umin.i32(i32 %343, i32 16) #14
  store i32 %345, ptr %344, align 8
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %386, label %347

347:                                              ; preds = %368, %341
  %348 = phi i32 [ %372, %368 ], [ 0, %341 ]
  %349 = add nuw nsw i32 %348, 21
  %350 = load ptr, ptr %200, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %351 = load ptr, ptr %202, align 4
  %352 = call i32 @regmap_read(ptr noundef %351, i32 noundef %349, ptr noundef nonnull %4) #14
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %366, label %354

354:                                              ; preds = %347
  %355 = getelementptr inbounds %struct.i2c_client, ptr %350, i32 0, i32 4, i32 6
  %356 = load ptr, ptr %355, align 8
  %357 = load ptr, ptr %356, align 4
  %358 = getelementptr inbounds %struct.i2c_client, ptr %350, i32 0, i32 3
  %359 = load ptr, ptr %358, align 8
  %360 = getelementptr inbounds %struct.i2c_adapter, ptr %359, i32 0, i32 11
  %361 = load i32, ptr %360, align 4
  %362 = getelementptr inbounds %struct.i2c_client, ptr %350, i32 0, i32 1
  %363 = load i16, ptr %362, align 2
  %364 = zext i16 %363 to i32
  %365 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %357, i32 noundef %361, i32 noundef %364, i32 noundef %364, i32 noundef %349) #15
  br label %368

366:                                              ; preds = %347
  %367 = load i32, ptr %4, align 4
  br label %368

368:                                              ; preds = %366, %354
  %369 = phi i32 [ %352, %354 ], [ %367, %366 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %370 = trunc i32 %369 to i8
  %371 = getelementptr %struct.cec_msg, ptr %10, i32 0, i32 6, i32 %348
  store i8 %370, ptr %371, align 1
  %372 = add nuw nsw i32 %348, 1
  %373 = icmp eq i32 %372, %345
  br i1 %373, label %374, label %347

374:                                              ; preds = %368
  %375 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %165, i32 0, i32 17
  %376 = load i32, ptr %375, align 4
  %377 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %165, i32 0, i32 18
  %378 = load i32, ptr %377, align 4
  %379 = load ptr, ptr %202, align 4
  %380 = and i32 %376, 255
  %381 = and i32 %378, 255
  %382 = call i32 @regmap_write(ptr noundef %379, i32 noundef %380, i32 noundef %381) #14
  %383 = getelementptr i8, ptr %0, i32 1260
  %384 = load ptr, ptr %383, align 4
  %385 = call i64 @ktime_get() #14
  call void @cec_received_msg_ts(ptr noundef %384, ptr noundef nonnull %10, i64 noundef %385) #14
  br label %386

386:                                              ; preds = %374, %341
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #14
  br label %387

387:                                              ; preds = %386, %319
  %388 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %165, i32 0, i32 19
  %389 = load i8, ptr %388, align 4, !range !9
  %390 = icmp eq i8 %389, 0
  %391 = trunc i32 %188 to i4
  %392 = call i4 @llvm.bitreverse.i4(i4 %391) #14
  %393 = zext i4 %392 to i8
  %394 = select i1 %390, i8 %190, i8 %393
  %395 = load i32, ptr %166, align 4
  %396 = add i32 %395, 1
  %397 = load ptr, ptr %19, align 4
  %398 = and i32 %396, 255
  %399 = zext i8 %394 to i32
  %400 = call i32 @regmap_write(ptr noundef %397, i32 noundef %398, i32 noundef %399) #14
  %401 = icmp eq ptr %2, null
  br i1 %401, label %403, label %402

402:                                              ; preds = %387
  store i8 1, ptr %2, align 1
  br label %403

403:                                              ; preds = %402, %387, %187
  %404 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %16, i32 0, i32 12
  %405 = load i32, ptr %404, align 4
  %406 = and i32 %405, %80
  %407 = trunc i32 %406 to i8
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %434, label %409

409:                                              ; preds = %403
  %410 = load i32, ptr @debug, align 4
  %411 = icmp sgt i32 %410, 0
  br i1 %411, label %412, label %416

412:                                              ; preds = %409
  %413 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %414 = and i32 %406, 255
  %415 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %413, ptr noundef nonnull @__func__.adv76xx_isr, i32 noundef %414) #15
  br label %416

416:                                              ; preds = %412, %409
  %417 = load ptr, ptr %15, align 4
  %418 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %417, i32 0, i32 25
  %419 = load ptr, ptr %418, align 4
  %420 = call i32 %419(ptr noundef %0) #14
  %421 = getelementptr i8, ptr %0, i32 1376
  %422 = load ptr, ptr %421, align 4
  %423 = and i32 %420, 65535
  %424 = getelementptr inbounds %struct.v4l2_ctrl, ptr %422, i32 0, i32 2
  %425 = load ptr, ptr %424, align 8
  %426 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %425, i32 0, i32 1
  %427 = load ptr, ptr %426, align 4
  call void @mutex_lock(ptr noundef %427) #14
  %428 = call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %422, i32 noundef %423) #14
  %429 = load ptr, ptr %424, align 8
  %430 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %429, i32 0, i32 1
  %431 = load ptr, ptr %430, align 4
  call void @mutex_unlock(ptr noundef %431) #14
  %432 = icmp eq ptr %2, null
  br i1 %432, label %434, label %433

433:                                              ; preds = %416
  store i8 1, ptr %2, align 1
  br label %434

434:                                              ; preds = %433, %416, %403
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_subscribe_event(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = load i32, ptr %2, align 4
  switch i32 %4, label %9 [
    i32 5, label %5
    i32 3, label %7
  ]

5:                                                ; preds = %3
  %6 = tail call i32 @v4l2_src_change_event_subdev_subscribe(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  br label %9

7:                                                ; preds = %3
  %8 = tail call i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  br label %9

9:                                                ; preds = %7, %5, %3
  %10 = phi i32 [ %8, %7 ], [ %6, %5 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_stdi(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr i8, ptr %0, i32 -88
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 1316
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store i32 0, ptr %10, align 4, !annotation !8
  %15 = getelementptr i8, ptr %0, i32 1368
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @regmap_read(ptr noundef %16, i32 noundef 177, ptr noundef nonnull %10) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 11
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 1
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %22, i32 noundef %26, i32 noundef %29, i32 noundef %29, i32 noundef 177) #15
  br label %33

31:                                               ; preds = %2
  %32 = load i32, ptr %10, align 4
  br label %33

33:                                               ; preds = %31, %19
  %34 = phi i32 [ %17, %19 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  %35 = and i32 %34, 128
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %11, align 4
  %39 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %38, i32 0, i32 1
  %40 = load i8, ptr %39, align 4, !range !9
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  %43 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 0, ptr %9, align 4, !annotation !8
  %44 = load ptr, ptr %15, align 4
  %45 = call i32 @regmap_read(ptr noundef %44, i32 noundef 181, ptr noundef nonnull %9) #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4, i32 6
  %49 = load ptr, ptr %48, align 8
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 3
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, ptr %52, i32 0, i32 11
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 1
  %56 = load i16, ptr %55, align 2
  %57 = zext i16 %56 to i32
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %50, i32 noundef %54, i32 noundef %57, i32 noundef %57, i32 noundef 181) #15
  br label %61

59:                                               ; preds = %42
  %60 = load i32, ptr %9, align 4
  br label %61

61:                                               ; preds = %59, %47
  %62 = phi i32 [ %45, %47 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %63 = and i32 %62, 208
  %64 = icmp eq i32 %63, 208
  br i1 %64, label %71, label %65

65:                                               ; preds = %61, %33
  %66 = load i32, ptr @debug, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %290

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %69, ptr noundef nonnull @__func__.read_stdi) #15
  br label %290

71:                                               ; preds = %61, %37
  %72 = call fastcc zeroext i16 @cp_read16(ptr noundef %0, i8 noundef zeroext -79, i16 noundef zeroext 16383)
  store i16 %72, ptr %1, align 2
  %73 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %12, i32 0, i32 11
  %74 = load i32, ptr %73, align 4
  %75 = trunc i32 %74 to i8
  %76 = call fastcc zeroext i16 @cp_read16(ptr noundef %0, i8 noundef zeroext %75, i16 noundef zeroext 2047)
  %77 = getelementptr inbounds %struct.stdi_readback, ptr %1, i32 0, i32 1
  store i16 %76, ptr %77, align 2
  %78 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !annotation !8
  %79 = load ptr, ptr %15, align 4
  %80 = call i32 @regmap_read(ptr noundef %79, i32 noundef 179, ptr noundef nonnull %8) #14
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 4, i32 6
  %84 = load ptr, ptr %83, align 8
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 3
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.i2c_adapter, ptr %87, i32 0, i32 11
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 1
  %91 = load i16, ptr %90, align 2
  %92 = zext i16 %91 to i32
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %85, i32 noundef %89, i32 noundef %92, i32 noundef %92, i32 noundef 179) #15
  br label %96

94:                                               ; preds = %71
  %95 = load i32, ptr %8, align 4
  br label %96

96:                                               ; preds = %94, %82
  %97 = phi i32 [ %80, %82 ], [ %95, %94 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %98 = lshr i32 %97, 3
  %99 = trunc i32 %98 to i16
  %100 = getelementptr inbounds %struct.stdi_readback, ptr %1, i32 0, i32 2
  store i16 %99, ptr %100, align 2
  %101 = getelementptr i8, ptr %0, i32 1272
  %102 = load ptr, ptr %101, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  %103 = getelementptr i8, ptr %0, i32 1324
  %104 = load ptr, ptr %103, align 4
  %105 = call i32 @regmap_read(ptr noundef %104, i32 noundef 18, ptr noundef nonnull %7) #14
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 4, i32 6
  %109 = load ptr, ptr %108, align 8
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 3
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.i2c_adapter, ptr %112, i32 0, i32 11
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 1
  %116 = load i16, ptr %115, align 2
  %117 = zext i16 %116 to i32
  %118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %110, i32 noundef %114, i32 noundef %117, i32 noundef %117, i32 noundef 18) #15
  br label %121

119:                                              ; preds = %96
  %120 = load i32, ptr %7, align 4
  br label %121

121:                                              ; preds = %119, %107
  %122 = phi i32 [ %105, %107 ], [ %120, %119 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %123 = getelementptr inbounds %struct.stdi_readback, ptr %1, i32 0, i32 5
  %124 = trunc i32 %122 to i8
  %125 = lshr i8 %124, 4
  %126 = and i8 %125, 1
  store i8 %126, ptr %123, align 2
  %127 = load ptr, ptr %11, align 4
  %128 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %127, i32 0, i32 1
  %129 = load i8, ptr %128, align 4, !range !9
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %170, label %131

131:                                              ; preds = %121
  %132 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %133 = load ptr, ptr %15, align 4
  %134 = call i32 @regmap_read(ptr noundef %133, i32 noundef 181, ptr noundef nonnull %6) #14
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %148, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.i2c_client, ptr %132, i32 0, i32 4, i32 6
  %138 = load ptr, ptr %137, align 8
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.i2c_client, ptr %132, i32 0, i32 3
  %141 = load ptr, ptr %140, align 8
  %142 = getelementptr inbounds %struct.i2c_adapter, ptr %141, i32 0, i32 11
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr inbounds %struct.i2c_client, ptr %132, i32 0, i32 1
  %145 = load i16, ptr %144, align 2
  %146 = zext i16 %145 to i32
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %139, i32 noundef %143, i32 noundef %146, i32 noundef %146, i32 noundef 181) #15
  br label %150

148:                                              ; preds = %131
  %149 = load i32, ptr %6, align 4
  br label %150

150:                                              ; preds = %148, %136
  %151 = phi i32 [ %134, %136 ], [ %149, %148 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %152 = and i32 %151, 3
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %168

154:                                              ; preds = %150
  %155 = and i32 %151, 16
  %156 = icmp eq i32 %155, 0
  %157 = and i32 %151, 8
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %158, i8 45, i8 43
  %160 = select i1 %156, i8 120, i8 %159
  %161 = getelementptr inbounds %struct.stdi_readback, ptr %1, i32 0, i32 3
  store i8 %160, ptr %161, align 2
  %162 = and i32 %151, 64
  %163 = icmp eq i32 %162, 0
  %164 = and i32 %151, 32
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %165, i8 45, i8 43
  %167 = select i1 %163, i8 120, i8 %166
  br label %200

168:                                              ; preds = %150
  %169 = getelementptr inbounds %struct.stdi_readback, ptr %1, i32 0, i32 3
  store i8 120, ptr %169, align 2
  br label %200

170:                                              ; preds = %121
  %171 = getelementptr i8, ptr %0, i32 1308
  %172 = load ptr, ptr %171, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %173 = getelementptr i8, ptr %0, i32 1360
  %174 = load ptr, ptr %173, align 4
  %175 = call i32 @regmap_read(ptr noundef %174, i32 noundef 5, ptr noundef nonnull %5) #14
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %189, label %177

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.i2c_client, ptr %172, i32 0, i32 4, i32 6
  %179 = load ptr, ptr %178, align 8
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.i2c_client, ptr %172, i32 0, i32 3
  %182 = load ptr, ptr %181, align 8
  %183 = getelementptr inbounds %struct.i2c_adapter, ptr %182, i32 0, i32 11
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds %struct.i2c_client, ptr %172, i32 0, i32 1
  %186 = load i16, ptr %185, align 2
  %187 = zext i16 %186 to i32
  %188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %180, i32 noundef %184, i32 noundef %187, i32 noundef %187, i32 noundef 5) #15
  br label %191

189:                                              ; preds = %170
  %190 = load i32, ptr %5, align 4
  br label %191

191:                                              ; preds = %189, %177
  %192 = phi i32 [ %175, %177 ], [ %190, %189 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %193 = and i32 %192, 32
  %194 = icmp eq i32 %193, 0
  %195 = select i1 %194, i8 45, i8 43
  %196 = getelementptr inbounds %struct.stdi_readback, ptr %1, i32 0, i32 3
  store i8 %195, ptr %196, align 2
  %197 = and i32 %192, 16
  %198 = icmp eq i32 %197, 0
  %199 = select i1 %198, i8 45, i8 43
  br label %200

200:                                              ; preds = %191, %168, %154
  %201 = phi i8 [ %167, %154 ], [ 120, %168 ], [ %199, %191 ]
  %202 = getelementptr inbounds %struct.stdi_readback, ptr %1, i32 0, i32 4
  store i8 %201, ptr %202, align 1
  %203 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %204 = load ptr, ptr %15, align 4
  %205 = call i32 @regmap_read(ptr noundef %204, i32 noundef 177, ptr noundef nonnull %4) #14
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %219, label %207

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.i2c_client, ptr %203, i32 0, i32 4, i32 6
  %209 = load ptr, ptr %208, align 8
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds %struct.i2c_client, ptr %203, i32 0, i32 3
  %212 = load ptr, ptr %211, align 8
  %213 = getelementptr inbounds %struct.i2c_adapter, ptr %212, i32 0, i32 11
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr inbounds %struct.i2c_client, ptr %203, i32 0, i32 1
  %216 = load i16, ptr %215, align 2
  %217 = zext i16 %216 to i32
  %218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %210, i32 noundef %214, i32 noundef %217, i32 noundef %217, i32 noundef 177) #15
  br label %221

219:                                              ; preds = %200
  %220 = load i32, ptr %4, align 4
  br label %221

221:                                              ; preds = %219, %207
  %222 = phi i32 [ %205, %207 ], [ %220, %219 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %223 = and i32 %222, 128
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %253, label %225

225:                                              ; preds = %221
  %226 = load ptr, ptr %11, align 4
  %227 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %226, i32 0, i32 1
  %228 = load i8, ptr %227, align 4, !range !9
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %259

230:                                              ; preds = %225
  %231 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %232 = load ptr, ptr %15, align 4
  %233 = call i32 @regmap_read(ptr noundef %232, i32 noundef 181, ptr noundef nonnull %3) #14
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %247, label %235

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.i2c_client, ptr %231, i32 0, i32 4, i32 6
  %237 = load ptr, ptr %236, align 8
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr inbounds %struct.i2c_client, ptr %231, i32 0, i32 3
  %240 = load ptr, ptr %239, align 8
  %241 = getelementptr inbounds %struct.i2c_adapter, ptr %240, i32 0, i32 11
  %242 = load i32, ptr %241, align 4
  %243 = getelementptr inbounds %struct.i2c_client, ptr %231, i32 0, i32 1
  %244 = load i16, ptr %243, align 2
  %245 = zext i16 %244 to i32
  %246 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %238, i32 noundef %242, i32 noundef %245, i32 noundef %245, i32 noundef 181) #15
  br label %249

247:                                              ; preds = %230
  %248 = load i32, ptr %3, align 4
  br label %249

249:                                              ; preds = %247, %235
  %250 = phi i32 [ %233, %235 ], [ %248, %247 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %251 = and i32 %250, 208
  %252 = icmp eq i32 %251, 208
  br i1 %252, label %259, label %253

253:                                              ; preds = %249, %221
  %254 = load i32, ptr @debug, align 4
  %255 = icmp sgt i32 %254, 1
  br i1 %255, label %256, label %290

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %258 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %257, ptr noundef nonnull @__func__.read_stdi) #15
  br label %290

259:                                              ; preds = %249, %225
  %260 = load i16, ptr %77, align 2
  %261 = zext i16 %260 to i32
  %262 = icmp ult i16 %260, 239
  br i1 %262, label %266, label %263

263:                                              ; preds = %259
  %264 = load i16, ptr %1, align 2
  %265 = zext i16 %264 to i32
  switch i16 %264, label %273 [
    i16 16383, label %266
    i16 7, label %266
    i16 6, label %266
    i16 5, label %266
    i16 4, label %266
    i16 3, label %266
    i16 2, label %266
    i16 1, label %266
    i16 0, label %266
  ]

266:                                              ; preds = %263, %263, %263, %263, %263, %263, %263, %263, %263, %259
  %267 = load i32, ptr @debug, align 4
  %268 = icmp sgt i32 %267, 1
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %270, ptr noundef nonnull @__func__.read_stdi) #15
  br label %272

272:                                              ; preds = %269, %266
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(10) %1, i8 0, i32 10, i1 false)
  br label %290

273:                                              ; preds = %263
  %274 = load i32, ptr @debug, align 4
  %275 = icmp sgt i32 %274, 1
  br i1 %275, label %276, label %290

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %278 = load i16, ptr %100, align 2
  %279 = zext i16 %278 to i32
  %280 = getelementptr inbounds %struct.stdi_readback, ptr %1, i32 0, i32 3
  %281 = load i8, ptr %280, align 2
  %282 = zext i8 %281 to i32
  %283 = getelementptr inbounds %struct.stdi_readback, ptr %1, i32 0, i32 4
  %284 = load i8, ptr %283, align 1
  %285 = zext i8 %284 to i32
  %286 = load i8, ptr %123, align 2, !range !9
  %287 = icmp eq i8 %286, 0
  %288 = select i1 %287, ptr @.str.71, ptr @.str.70
  %289 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %277, ptr noundef nonnull @__func__.read_stdi, i32 noundef %261, i32 noundef %265, i32 noundef %279, i32 noundef %282, i32 noundef %285, ptr noundef nonnull %288) #15
  br label %290

290:                                              ; preds = %276, %273, %272, %256, %253, %68, %65
  %291 = phi i32 [ -1, %272 ], [ -1, %68 ], [ -1, %65 ], [ -1, %256 ], [ -1, %253 ], [ 0, %276 ], [ 0, %273 ]
  ret i32 %291
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_query_dv_timings(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stdi_readback, align 2
  %11 = getelementptr i8, ptr %0, i32 -88
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %10) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(10) %10, i8 0, i32 10, i1 false), !annotation !8
  %14 = icmp eq ptr %1, null
  br i1 %14, label %397, label %15

15:                                               ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(132) %1, i8 0, i32 132, i1 false)
  %16 = tail call fastcc zeroext i1 @no_signal(ptr noundef %0)
  br i1 %16, label %17, label %24

17:                                               ; preds = %15
  %18 = getelementptr i8, ptr %0, i32 1256
  store i8 1, ptr %18, align 4
  %19 = load i32, ptr @debug, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %397

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %22, ptr noundef nonnull @__func__.adv76xx_query_dv_timings) #15
  br label %397

24:                                               ; preds = %15
  %25 = call fastcc i32 @read_stdi(ptr noundef %0, ptr noundef nonnull %10)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr @debug, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %397

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %31, ptr noundef nonnull @__func__.adv76xx_query_dv_timings) #15
  br label %397

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.stdi_readback, ptr %10, i32 0, i32 5
  %35 = load i8, ptr %34, align 2, !range !9
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 2
  store i32 %36, ptr %37, align 1
  %38 = getelementptr i8, ptr %0, i32 536
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %41, label %317

41:                                               ; preds = %33
  %42 = getelementptr i8, ptr %0, i32 1308
  %43 = load ptr, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 0, ptr %9, align 4, !annotation !8
  %44 = getelementptr i8, ptr %0, i32 1360
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 @regmap_read(ptr noundef %45, i32 noundef 5, ptr noundef nonnull %9) #14
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4, i32 6
  %50 = load ptr, ptr %49, align 8
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.i2c_adapter, ptr %53, i32 0, i32 11
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 1
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %51, i32 noundef %55, i32 noundef %58, i32 noundef %58, i32 noundef 5) #15
  br label %62

60:                                               ; preds = %41
  %61 = load i32, ptr %9, align 4
  br label %62

62:                                               ; preds = %60, %48
  %63 = phi i32 [ %46, %48 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %64 = and i32 %63, 128
  %65 = icmp eq i32 %64, 0
  %66 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %12, i32 0, i32 29
  %67 = load i32, ptr %66, align 4
  %68 = trunc i32 %67 to i16
  %69 = call fastcc zeroext i16 @hdmi_read16(ptr noundef %0, i8 noundef zeroext 7, i16 noundef zeroext %68)
  %70 = zext i16 %69 to i32
  %71 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %12, i32 0, i32 30
  %72 = load i32, ptr %71, align 4
  %73 = trunc i32 %72 to i16
  %74 = call fastcc zeroext i16 @hdmi_read16(ptr noundef %0, i8 noundef zeroext 9, i16 noundef zeroext %73)
  %75 = zext i16 %74 to i32
  br i1 %65, label %114, label %76

76:                                               ; preds = %62
  %77 = getelementptr i8, ptr %0, i32 1272
  %78 = load ptr, ptr %77, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !annotation !8
  %79 = getelementptr i8, ptr %0, i32 1324
  %80 = load ptr, ptr %79, align 4
  %81 = call i32 @regmap_read(ptr noundef %80, i32 noundef 96, ptr noundef nonnull %8) #14
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 4, i32 6
  %85 = load ptr, ptr %84, align 8
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 3
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.i2c_adapter, ptr %88, i32 0, i32 11
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 1
  %92 = load i16, ptr %91, align 2
  %93 = zext i16 %92 to i32
  %94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %86, i32 noundef %90, i32 noundef %93, i32 noundef %93, i32 noundef 96) #15
  br label %97

95:                                               ; preds = %76
  %96 = load i32, ptr %8, align 4
  br label %97

97:                                               ; preds = %95, %83
  %98 = phi i32 [ %81, %83 ], [ %96, %95 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %97
  %102 = call fastcc i32 @infoframe_read(ptr noundef %0, i8 noundef zeroext 4)
  %103 = trunc i32 %102 to i8
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %101
  %106 = call zeroext i1 @v4l2_find_dv_timings_cea861_vic(ptr noundef nonnull %1, i8 noundef zeroext %103) #14
  br i1 %106, label %107, label %114

107:                                              ; preds = %105
  %108 = load i32, ptr %13, align 1
  %109 = icmp eq i32 %108, %70
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 1
  %112 = load i32, ptr %111, align 1
  %113 = icmp eq i32 %112, %75
  br i1 %113, label %360, label %114

114:                                              ; preds = %110, %107, %105, %101, %97, %62
  store i32 0, ptr %1, align 1
  store i32 %70, ptr %13, align 1
  %115 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 1
  store i32 %75, ptr %115, align 1
  %116 = load ptr, ptr %11, align 4
  %117 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %116, i32 0, i32 24
  %118 = load ptr, ptr %117, align 4
  %119 = call i32 %118(ptr noundef %0) #14
  %120 = load ptr, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  %121 = load ptr, ptr %44, align 4
  %122 = call i32 @regmap_read(ptr noundef %121, i32 noundef 5, ptr noundef nonnull %7) #14
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %136, label %124

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct.i2c_client, ptr %120, i32 0, i32 4, i32 6
  %126 = load ptr, ptr %125, align 8
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.i2c_client, ptr %120, i32 0, i32 3
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.i2c_adapter, ptr %129, i32 0, i32 11
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.i2c_client, ptr %120, i32 0, i32 1
  %133 = load i16, ptr %132, align 2
  %134 = zext i16 %133 to i32
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %127, i32 noundef %131, i32 noundef %134, i32 noundef %134, i32 noundef 5) #15
  br label %138

136:                                              ; preds = %114
  %137 = load i32, ptr %7, align 4
  br label %138

138:                                              ; preds = %136, %124
  %139 = phi i32 [ %122, %124 ], [ %137, %136 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %140 = and i32 %139, 128
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %191, label %142

142:                                              ; preds = %138
  %143 = load ptr, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %144 = load ptr, ptr %44, align 4
  %145 = call i32 @regmap_read(ptr noundef %144, i32 noundef 11, ptr noundef nonnull %6) #14
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.i2c_client, ptr %143, i32 0, i32 4, i32 6
  %149 = load ptr, ptr %148, align 8
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.i2c_client, ptr %143, i32 0, i32 3
  %152 = load ptr, ptr %151, align 8
  %153 = getelementptr inbounds %struct.i2c_adapter, ptr %152, i32 0, i32 11
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds %struct.i2c_client, ptr %143, i32 0, i32 1
  %156 = load i16, ptr %155, align 2
  %157 = zext i16 %156 to i32
  %158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %150, i32 noundef %154, i32 noundef %157, i32 noundef %157, i32 noundef 11) #15
  br label %161

159:                                              ; preds = %142
  %160 = load i32, ptr %6, align 4
  br label %161

161:                                              ; preds = %159, %147
  %162 = phi i32 [ %145, %147 ], [ %160, %159 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %163 = lshr i32 %162, 4
  %164 = and i32 %163, 6
  %165 = or i32 %164, 8
  %166 = load ptr, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %167 = load ptr, ptr %44, align 4
  %168 = call i32 @regmap_read(ptr noundef %167, i32 noundef 5, ptr noundef nonnull %5) #14
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %182, label %170

170:                                              ; preds = %161
  %171 = getelementptr inbounds %struct.i2c_client, ptr %166, i32 0, i32 4, i32 6
  %172 = load ptr, ptr %171, align 8
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.i2c_client, ptr %166, i32 0, i32 3
  %175 = load ptr, ptr %174, align 8
  %176 = getelementptr inbounds %struct.i2c_adapter, ptr %175, i32 0, i32 11
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr inbounds %struct.i2c_client, ptr %166, i32 0, i32 1
  %179 = load i16, ptr %178, align 2
  %180 = zext i16 %179 to i32
  %181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %173, i32 noundef %177, i32 noundef %180, i32 noundef %180, i32 noundef 5) #15
  br label %184

182:                                              ; preds = %161
  %183 = load i32, ptr %5, align 4
  br label %184

184:                                              ; preds = %182, %170
  %185 = phi i32 [ %168, %170 ], [ %183, %182 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %186 = and i32 %185, 15
  %187 = add nuw nsw i32 %186, 1
  %188 = shl i32 %119, 3
  %189 = udiv i32 %188, %165
  %190 = udiv i32 %189, %187
  br label %191

191:                                              ; preds = %184, %138
  %192 = phi i32 [ %190, %184 ], [ %119, %138 ]
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 4
  store i64 %193, ptr %194, align 1
  %195 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %12, i32 0, i32 32
  %196 = load i32, ptr %195, align 4
  %197 = trunc i32 %196 to i16
  %198 = call fastcc zeroext i16 @hdmi_read16(ptr noundef %0, i8 noundef zeroext 32, i16 noundef zeroext %197)
  %199 = zext i16 %198 to i32
  %200 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 6
  store i32 %199, ptr %200, align 1
  %201 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %12, i32 0, i32 33
  %202 = load i32, ptr %201, align 4
  %203 = trunc i32 %202 to i16
  %204 = call fastcc zeroext i16 @hdmi_read16(ptr noundef %0, i8 noundef zeroext 34, i16 noundef zeroext %203)
  %205 = zext i16 %204 to i32
  %206 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 7
  store i32 %205, ptr %206, align 1
  %207 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %12, i32 0, i32 34
  %208 = load i32, ptr %207, align 4
  %209 = trunc i32 %208 to i16
  %210 = call fastcc zeroext i16 @hdmi_read16(ptr noundef %0, i8 noundef zeroext 36, i16 noundef zeroext %209)
  %211 = zext i16 %210 to i32
  %212 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 8
  store i32 %211, ptr %212, align 1
  %213 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %12, i32 0, i32 35
  %214 = load i32, ptr %213, align 4
  %215 = trunc i32 %214 to i16
  %216 = call fastcc zeroext i16 @hdmi_read16(ptr noundef %0, i8 noundef zeroext 42, i16 noundef zeroext %215)
  %217 = lshr i16 %216, 1
  %218 = zext i16 %217 to i32
  %219 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 9
  store i32 %218, ptr %219, align 1
  %220 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %12, i32 0, i32 37
  %221 = load i32, ptr %220, align 4
  %222 = trunc i32 %221 to i16
  %223 = call fastcc zeroext i16 @hdmi_read16(ptr noundef %0, i8 noundef zeroext 46, i16 noundef zeroext %222)
  %224 = lshr i16 %223, 1
  %225 = zext i16 %224 to i32
  %226 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 10
  store i32 %225, ptr %226, align 1
  %227 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %12, i32 0, i32 39
  %228 = load i32, ptr %227, align 4
  %229 = trunc i32 %228 to i16
  %230 = call fastcc zeroext i16 @hdmi_read16(ptr noundef %0, i8 noundef zeroext 50, i16 noundef zeroext %229)
  %231 = lshr i16 %230, 1
  %232 = zext i16 %231 to i32
  %233 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 11
  store i32 %232, ptr %233, align 1
  %234 = load ptr, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %235 = load ptr, ptr %44, align 4
  %236 = call i32 @regmap_read(ptr noundef %235, i32 noundef 5, ptr noundef nonnull %4) #14
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %250, label %238

238:                                              ; preds = %191
  %239 = getelementptr inbounds %struct.i2c_client, ptr %234, i32 0, i32 4, i32 6
  %240 = load ptr, ptr %239, align 8
  %241 = load ptr, ptr %240, align 4
  %242 = getelementptr inbounds %struct.i2c_client, ptr %234, i32 0, i32 3
  %243 = load ptr, ptr %242, align 8
  %244 = getelementptr inbounds %struct.i2c_adapter, ptr %243, i32 0, i32 11
  %245 = load i32, ptr %244, align 4
  %246 = getelementptr inbounds %struct.i2c_client, ptr %234, i32 0, i32 1
  %247 = load i16, ptr %246, align 2
  %248 = zext i16 %247 to i32
  %249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %241, i32 noundef %245, i32 noundef %248, i32 noundef %248, i32 noundef 5) #15
  br label %252

250:                                              ; preds = %191
  %251 = load i32, ptr %4, align 4
  br label %252

252:                                              ; preds = %250, %238
  %253 = phi i32 [ %236, %238 ], [ %251, %250 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %254 = lshr i32 %253, 4
  %255 = and i32 %254, 1
  %256 = load ptr, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %257 = load ptr, ptr %44, align 4
  %258 = call i32 @regmap_read(ptr noundef %257, i32 noundef 5, ptr noundef nonnull %3) #14
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %272, label %260

260:                                              ; preds = %252
  %261 = getelementptr inbounds %struct.i2c_client, ptr %256, i32 0, i32 4, i32 6
  %262 = load ptr, ptr %261, align 8
  %263 = load ptr, ptr %262, align 4
  %264 = getelementptr inbounds %struct.i2c_client, ptr %256, i32 0, i32 3
  %265 = load ptr, ptr %264, align 8
  %266 = getelementptr inbounds %struct.i2c_adapter, ptr %265, i32 0, i32 11
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr inbounds %struct.i2c_client, ptr %256, i32 0, i32 1
  %269 = load i16, ptr %268, align 2
  %270 = zext i16 %269 to i32
  %271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %263, i32 noundef %267, i32 noundef %270, i32 noundef %270, i32 noundef 5) #15
  br label %274

272:                                              ; preds = %252
  %273 = load i32, ptr %3, align 4
  br label %274

274:                                              ; preds = %272, %260
  %275 = phi i32 [ %258, %260 ], [ %273, %272 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %276 = lshr i32 %275, 4
  %277 = and i32 %276, 2
  %278 = or i32 %277, %255
  %279 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 3
  store i32 %278, ptr %279, align 1
  %280 = load i32, ptr %37, align 1
  %281 = icmp eq i32 %280, 1
  br i1 %281, label %282, label %311

282:                                              ; preds = %274
  %283 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %12, i32 0, i32 31
  %284 = load i32, ptr %283, align 4
  %285 = trunc i32 %284 to i16
  %286 = call fastcc zeroext i16 @hdmi_read16(ptr noundef %0, i8 noundef zeroext 11, i16 noundef zeroext %285)
  %287 = zext i16 %286 to i32
  %288 = load i32, ptr %115, align 1
  %289 = add i32 %288, %287
  store i32 %289, ptr %115, align 1
  %290 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %12, i32 0, i32 36
  %291 = load i32, ptr %290, align 4
  %292 = trunc i32 %291 to i16
  %293 = call fastcc zeroext i16 @hdmi_read16(ptr noundef %0, i8 noundef zeroext 44, i16 noundef zeroext %292)
  %294 = lshr i16 %293, 1
  %295 = zext i16 %294 to i32
  %296 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 12
  store i32 %295, ptr %296, align 1
  %297 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %12, i32 0, i32 38
  %298 = load i32, ptr %297, align 4
  %299 = trunc i32 %298 to i16
  %300 = call fastcc zeroext i16 @hdmi_read16(ptr noundef %0, i8 noundef zeroext 48, i16 noundef zeroext %299)
  %301 = lshr i16 %300, 1
  %302 = zext i16 %301 to i32
  %303 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 13
  store i32 %302, ptr %303, align 1
  %304 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %12, i32 0, i32 40
  %305 = load i32, ptr %304, align 4
  %306 = trunc i32 %305 to i16
  %307 = call fastcc zeroext i16 @hdmi_read16(ptr noundef %0, i8 noundef zeroext 52, i16 noundef zeroext %306)
  %308 = lshr i16 %307, 1
  %309 = zext i16 %308 to i32
  %310 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 14
  store i32 %309, ptr %310, align 1
  br label %311

311:                                              ; preds = %282, %274
  %312 = load i32, ptr %38, align 4
  %313 = icmp ult i32 %312, 4
  %314 = select i1 %313, ptr @adv76xx_timings_cap_digital, ptr @adv7604_timings_cap_analog
  %315 = select i1 %313, i32 250000, i32 1000000
  %316 = call zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef nonnull %1, ptr noundef nonnull %314, i32 noundef %315, ptr noundef nonnull @adv76xx_check_dv_timings, ptr noundef null) #14
  br label %360

317:                                              ; preds = %33
  %318 = call fastcc i32 @stdi2dv_timings(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %1)
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %360, label %320

320:                                              ; preds = %317
  %321 = getelementptr inbounds %struct.stdi_readback, ptr %10, i32 0, i32 2
  %322 = load i16, ptr %321, align 2
  %323 = add i16 %322, 1
  store i16 %323, ptr %321, align 2
  %324 = load i32, ptr @debug, align 4
  %325 = icmp sgt i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %320
  %327 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %328 = zext i16 %323 to i32
  %329 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %327, ptr noundef nonnull @__func__.adv76xx_query_dv_timings, i32 noundef %328) #15
  br label %330

330:                                              ; preds = %326, %320
  %331 = call fastcc i32 @stdi2dv_timings(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %1)
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %360, label %333

333:                                              ; preds = %330
  %334 = add i16 %322, -1
  store i16 %334, ptr %321, align 2
  %335 = load i32, ptr @debug, align 4
  %336 = icmp sgt i32 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %333
  %338 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %339 = zext i16 %334 to i32
  %340 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %338, ptr noundef nonnull @__func__.adv76xx_query_dv_timings, i32 noundef %339) #15
  br label %341

341:                                              ; preds = %337, %333
  %342 = call fastcc i32 @stdi2dv_timings(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %1)
  %343 = icmp eq i32 %342, 0
  %344 = getelementptr i8, ptr %0, i32 1256
  br i1 %343, label %359, label %345

345:                                              ; preds = %341
  %346 = load i8, ptr %344, align 4, !range !9
  %347 = icmp eq i8 %346, 0
  %348 = load i32, ptr @debug, align 4
  %349 = icmp sgt i32 %348, 0
  br i1 %347, label %355, label %350

350:                                              ; preds = %345
  br i1 %349, label %351, label %354

351:                                              ; preds = %350
  %352 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %353 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %352, ptr noundef nonnull @__func__.adv76xx_query_dv_timings) #15
  br label %354

354:                                              ; preds = %351, %350
  tail call fastcc void @cp_write_clr_set(ptr noundef %0, i8 noundef zeroext -122, i8 noundef zeroext 6, i8 noundef zeroext 0)
  tail call fastcc void @cp_write_clr_set(ptr noundef %0, i8 noundef zeroext -122, i8 noundef zeroext 6, i8 noundef zeroext 4)
  tail call fastcc void @cp_write_clr_set(ptr noundef %0, i8 noundef zeroext -122, i8 noundef zeroext 6, i8 noundef zeroext 2)
  store i8 0, ptr %344, align 4
  br label %397

355:                                              ; preds = %345
  br i1 %349, label %356, label %397

356:                                              ; preds = %355
  %357 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %358 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %357, ptr noundef nonnull @__func__.adv76xx_query_dv_timings) #15
  br label %397

359:                                              ; preds = %341
  store i8 1, ptr %344, align 4
  br label %360

360:                                              ; preds = %359, %330, %317, %311, %110
  %361 = call fastcc zeroext i1 @no_signal(ptr noundef %0)
  br i1 %361, label %362, label %369

362:                                              ; preds = %360
  %363 = load i32, ptr @debug, align 4
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %362
  %366 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %366, ptr noundef nonnull @__func__.adv76xx_query_dv_timings) #15
  br label %368

368:                                              ; preds = %365, %362
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(132) %1, i8 0, i32 132, i1 false)
  br label %397

369:                                              ; preds = %360
  %370 = load i32, ptr %38, align 4
  %371 = and i32 %370, -2
  %372 = icmp eq i32 %371, 4
  br i1 %372, label %373, label %378

373:                                              ; preds = %369
  %374 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 4
  %375 = load i64, ptr %374, align 1
  %376 = icmp ugt i64 %375, 170000000
  %377 = trunc i64 %375 to i32
  br i1 %376, label %385, label %392

378:                                              ; preds = %369
  %379 = icmp ult i32 %370, 4
  br i1 %379, label %380, label %392

380:                                              ; preds = %378
  %381 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 4
  %382 = load i64, ptr %381, align 1
  %383 = icmp ugt i64 %382, 225000000
  %384 = trunc i64 %382 to i32
  br i1 %383, label %385, label %392

385:                                              ; preds = %380, %373
  %386 = phi i32 [ %377, %373 ], [ %384, %380 ]
  %387 = load i32, ptr @debug, align 4
  %388 = icmp sgt i32 %387, 0
  br i1 %388, label %389, label %397

389:                                              ; preds = %385
  %390 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %391 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %390, ptr noundef nonnull @__func__.adv76xx_query_dv_timings, i32 noundef %386) #15
  br label %397

392:                                              ; preds = %380, %378, %373
  %393 = load i32, ptr @debug, align 4
  %394 = icmp sgt i32 %393, 1
  br i1 %394, label %395, label %397

395:                                              ; preds = %392
  %396 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  call void @v4l2_print_dv_timings(ptr noundef %396, ptr noundef nonnull @.str.120, ptr noundef nonnull %1, i1 noundef zeroext true) #14
  br label %397

397:                                              ; preds = %395, %392, %389, %385, %368, %356, %355, %354, %30, %27, %21, %17, %2
  %398 = phi i32 [ -67, %368 ], [ -67, %354 ], [ -22, %2 ], [ -67, %21 ], [ -67, %17 ], [ -67, %30 ], [ -67, %27 ], [ -34, %356 ], [ -34, %355 ], [ -34, %389 ], [ -34, %385 ], [ 0, %395 ], [ 0, %392 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %10) #14
  ret i32 %398
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_print_dv_timings(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @no_signal(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 1272
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %9 = getelementptr i8, ptr %0, i32 1324
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 12, ptr noundef nonnull %6) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %16, i32 noundef %20, i32 noundef %23, i32 noundef %23, i32 noundef 12) #15
  br label %27

25:                                               ; preds = %1
  %26 = load i32, ptr %6, align 4
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi i32 [ %11, %13 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %29 = and i32 %28, 36
  %30 = icmp ne i32 %29, 0
  %31 = getelementptr i8, ptr %0, i32 1316
  %32 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %33 = getelementptr i8, ptr %0, i32 1368
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 @regmap_read(ptr noundef %34, i32 noundef 177, ptr noundef nonnull %5) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4, i32 6
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.i2c_adapter, ptr %42, i32 0, i32 11
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 1
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %40, i32 noundef %44, i32 noundef %47, i32 noundef %47, i32 noundef 177) #15
  br label %51

49:                                               ; preds = %27
  %50 = load i32, ptr %5, align 4
  br label %51

51:                                               ; preds = %49, %37
  %52 = phi i32 [ %35, %37 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %53 = and i32 %52, 128
  %54 = icmp eq i32 %53, 0
  %55 = or i1 %30, %54
  %56 = getelementptr i8, ptr %0, i32 -88
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %57, i32 0, i32 1
  %59 = load i8, ptr %58, align 4, !range !9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %51
  %62 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %63 = load ptr, ptr %33, align 4
  %64 = call i32 @regmap_read(ptr noundef %63, i32 noundef 181, ptr noundef nonnull %4) #14
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 4, i32 6
  %68 = load ptr, ptr %67, align 8
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 3
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.i2c_adapter, ptr %71, i32 0, i32 11
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 1
  %75 = load i16, ptr %74, align 2
  %76 = zext i16 %75 to i32
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %69, i32 noundef %73, i32 noundef %76, i32 noundef %76, i32 noundef 181) #15
  br label %80

78:                                               ; preds = %61
  %79 = load i32, ptr %4, align 4
  br label %80

80:                                               ; preds = %78, %66
  %81 = phi i32 [ %64, %66 ], [ %79, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %82 = and i32 %81, 208
  %83 = icmp ne i32 %82, 208
  br label %84

84:                                               ; preds = %80, %51
  %85 = phi i1 [ %83, %80 ], [ false, %51 ]
  %86 = or i1 %55, %85
  %87 = getelementptr i8, ptr %0, i32 536
  %88 = load i32, ptr %87, align 4
  %89 = icmp ult i32 %88, 4
  br i1 %89, label %90, label %142

90:                                               ; preds = %84
  %91 = load ptr, ptr %56, align 4
  %92 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %93 = load ptr, ptr %9, align 4
  %94 = call i32 @regmap_read(ptr noundef %93, i32 noundef 106, ptr noundef nonnull %3) #14
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.i2c_client, ptr %92, i32 0, i32 4, i32 6
  %98 = load ptr, ptr %97, align 8
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.i2c_client, ptr %92, i32 0, i32 3
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.i2c_adapter, ptr %101, i32 0, i32 11
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.i2c_client, ptr %92, i32 0, i32 1
  %105 = load i16, ptr %104, align 2
  %106 = zext i16 %105 to i32
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %99, i32 noundef %103, i32 noundef %106, i32 noundef %106, i32 noundef 106) #15
  br label %110

108:                                              ; preds = %90
  %109 = load i32, ptr %3, align 4
  br label %110

110:                                              ; preds = %108, %96
  %111 = phi i32 [ %94, %96 ], [ %109, %108 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %112 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %91, i32 0, i32 13
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, %111
  %115 = icmp ne i32 %114, %113
  %116 = or i1 %86, %115
  %117 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %118 = load ptr, ptr %9, align 4
  %119 = call i32 @regmap_read(ptr noundef %118, i32 noundef 106, ptr noundef nonnull %2) #14
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.i2c_client, ptr %117, i32 0, i32 4, i32 6
  %123 = load ptr, ptr %122, align 8
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.i2c_client, ptr %117, i32 0, i32 3
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds %struct.i2c_adapter, ptr %126, i32 0, i32 11
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr inbounds %struct.i2c_client, ptr %117, i32 0, i32 1
  %130 = load i16, ptr %129, align 2
  %131 = zext i16 %130 to i32
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %124, i32 noundef %128, i32 noundef %131, i32 noundef %131, i32 noundef 106) #15
  br label %135

133:                                              ; preds = %110
  %134 = load i32, ptr %2, align 4
  br label %135

135:                                              ; preds = %133, %121
  %136 = phi i32 [ %119, %121 ], [ %134, %133 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %137 = load i32, ptr %87, align 4
  %138 = lshr i32 16, %137
  %139 = and i32 %138, %136
  %140 = icmp eq i32 %139, 0
  %141 = or i1 %116, %140
  br label %142

142:                                              ; preds = %135, %84
  %143 = phi i1 [ %141, %135 ], [ %86, %84 ]
  ret i1 %143
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_hdmi(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 1308
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr i8, ptr %0, i32 1360
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 5, ptr noundef nonnull %2) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %12, i32 noundef %16, i32 noundef %19, i32 noundef %19, i32 noundef 5) #15
  br label %23

21:                                               ; preds = %1
  %22 = load i32, ptr %2, align 4
  br label %23

23:                                               ; preds = %21, %9
  %24 = phi i32 [ %7, %9 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %25 = and i32 %24, 128
  %26 = icmp ne i32 %25, 0
  ret i1 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @adv76xx_log_infoframes(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca %union.hdmi_infoframe, align 4
  %8 = getelementptr i8, ptr %0, i32 1308
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %10 = getelementptr i8, ptr %0, i32 1360
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef 5, ptr noundef nonnull %6) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %17, i32 noundef %21, i32 noundef %24, i32 noundef %24, i32 noundef 5) #15
  br label %28

26:                                               ; preds = %1
  %27 = load i32, ptr %6, align 4
  br label %28

28:                                               ; preds = %26, %14
  %29 = phi i32 [ %12, %14 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %30 = and i32 %29, 128
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %34 = getelementptr inbounds i8, ptr %5, i32 1
  %35 = getelementptr i8, ptr %0, i32 1272
  %36 = getelementptr i8, ptr %0, i32 1324
  %37 = getelementptr i8, ptr %0, i32 1284
  %38 = getelementptr i8, ptr %0, i32 1336
  %39 = getelementptr inbounds [32 x i8], ptr %5, i32 0, i32 2
  br label %43

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %41) #15
  br label %203

43:                                               ; preds = %198, %32
  %44 = phi i32 [ 0, %32 ], [ %200, %198 ]
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %7) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %7, i8 0, i32 68, i1 false), !annotation !8
  %45 = load ptr, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %34, i8 0, i32 31, i1 false) #14, !annotation !8
  %46 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %47 = load ptr, ptr %36, align 4
  %48 = call i32 @regmap_read(ptr noundef %47, i32 noundef 96, ptr noundef nonnull %4) #14
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4, i32 6
  %52 = load ptr, ptr %51, align 8
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.i2c_adapter, ptr %55, i32 0, i32 11
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 1
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %53, i32 noundef %57, i32 noundef %60, i32 noundef %60, i32 noundef 96) #15
  br label %64

62:                                               ; preds = %43
  %63 = load i32, ptr %4, align 4
  br label %64

64:                                               ; preds = %62, %50
  %65 = phi i32 [ %48, %50 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %66 = getelementptr [4 x %struct.adv76xx_cfg_read_infoframe], ptr @adv76xx_cri, i32 0, i32 %44, i32 1
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i32
  %69 = and i32 %65, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %64
  %72 = getelementptr [4 x %struct.adv76xx_cfg_read_infoframe], ptr @adv76xx_cri, i32 0, i32 %44, i32 2
  %73 = load i8, ptr %72, align 1
  %74 = load ptr, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %75 = load ptr, ptr %38, align 4
  %76 = zext i8 %73 to i32
  %77 = call i32 @regmap_read(ptr noundef %75, i32 noundef %76, ptr noundef nonnull %3) #14
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %96, label %84

79:                                               ; preds = %64
  %80 = getelementptr [4 x %struct.adv76xx_cfg_read_infoframe], ptr @adv76xx_cri, i32 0, i32 %44
  %81 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %82 = load ptr, ptr %80, align 4
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %81, ptr noundef %82) #15
  br label %202

84:                                               ; preds = %71
  %85 = getelementptr inbounds %struct.i2c_client, ptr %74, i32 0, i32 4, i32 6
  %86 = load ptr, ptr %85, align 8
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.i2c_client, ptr %74, i32 0, i32 3
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.i2c_adapter, ptr %89, i32 0, i32 11
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.i2c_client, ptr %74, i32 0, i32 1
  %93 = load i16, ptr %92, align 2
  %94 = zext i16 %93 to i32
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %87, i32 noundef %91, i32 noundef %94, i32 noundef %94, i32 noundef %76) #15
  br label %98

96:                                               ; preds = %71
  %97 = load i32, ptr %3, align 4
  br label %98

98:                                               ; preds = %96, %84
  %99 = phi i32 [ %77, %84 ], [ %97, %96 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %100 = trunc i32 %99 to i8
  store i8 %100, ptr %5, align 1
  %101 = add i8 %73, 1
  %102 = load ptr, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %103 = load ptr, ptr %38, align 4
  %104 = zext i8 %101 to i32
  %105 = call i32 @regmap_read(ptr noundef %103, i32 noundef %104, ptr noundef nonnull %3) #14
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 4, i32 6
  %109 = load ptr, ptr %108, align 8
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 3
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.i2c_adapter, ptr %112, i32 0, i32 11
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 1
  %116 = load i16, ptr %115, align 2
  %117 = zext i16 %116 to i32
  %118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %110, i32 noundef %114, i32 noundef %117, i32 noundef %117, i32 noundef %104) #15
  br label %121

119:                                              ; preds = %98
  %120 = load i32, ptr %3, align 4
  br label %121

121:                                              ; preds = %119, %107
  %122 = phi i32 [ %105, %107 ], [ %120, %119 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %123 = trunc i32 %122 to i8
  store i8 %123, ptr %34, align 1
  %124 = add i8 %73, 2
  %125 = load ptr, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %126 = load ptr, ptr %38, align 4
  %127 = zext i8 %124 to i32
  %128 = call i32 @regmap_read(ptr noundef %126, i32 noundef %127, ptr noundef nonnull %3) #14
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %142, label %130

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.i2c_client, ptr %125, i32 0, i32 4, i32 6
  %132 = load ptr, ptr %131, align 8
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.i2c_client, ptr %125, i32 0, i32 3
  %135 = load ptr, ptr %134, align 8
  %136 = getelementptr inbounds %struct.i2c_adapter, ptr %135, i32 0, i32 11
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.i2c_client, ptr %125, i32 0, i32 1
  %139 = load i16, ptr %138, align 2
  %140 = zext i16 %139 to i32
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %133, i32 noundef %137, i32 noundef %140, i32 noundef %140, i32 noundef %127) #15
  br label %144

142:                                              ; preds = %121
  %143 = load i32, ptr %3, align 4
  br label %144

144:                                              ; preds = %142, %130
  %145 = phi i32 [ %128, %130 ], [ %143, %142 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %146 = trunc i32 %145 to i8
  store i8 %146, ptr %39, align 1
  %147 = add i8 %146, 1
  %148 = zext i8 %147 to i32
  %149 = icmp ugt i8 %147, 29
  br i1 %149, label %155, label %150

150:                                              ; preds = %144
  %151 = icmp eq i8 %147, 0
  br i1 %151, label %190, label %152

152:                                              ; preds = %150
  %153 = getelementptr [4 x %struct.adv76xx_cfg_read_infoframe], ptr @adv76xx_cri, i32 0, i32 %44, i32 3
  %154 = load i8, ptr %153, align 2
  br label %160

155:                                              ; preds = %144
  %156 = getelementptr [4 x %struct.adv76xx_cfg_read_infoframe], ptr @adv76xx_cri, i32 0, i32 %44
  %157 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %158 = load ptr, ptr %156, align 4
  %159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %157, ptr noundef nonnull @__func__.adv76xx_read_infoframe, ptr noundef %158, i32 noundef %148) #15
  br label %202

160:                                              ; preds = %183, %152
  %161 = phi i32 [ 0, %152 ], [ %188, %183 ]
  %162 = trunc i32 %161 to i8
  %163 = add i8 %154, %162
  %164 = load ptr, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %165 = load ptr, ptr %38, align 4
  %166 = zext i8 %163 to i32
  %167 = call i32 @regmap_read(ptr noundef %165, i32 noundef %166, ptr noundef nonnull %2) #14
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %181, label %169

169:                                              ; preds = %160
  %170 = getelementptr inbounds %struct.i2c_client, ptr %164, i32 0, i32 4, i32 6
  %171 = load ptr, ptr %170, align 8
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.i2c_client, ptr %164, i32 0, i32 3
  %174 = load ptr, ptr %173, align 8
  %175 = getelementptr inbounds %struct.i2c_adapter, ptr %174, i32 0, i32 11
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds %struct.i2c_client, ptr %164, i32 0, i32 1
  %178 = load i16, ptr %177, align 2
  %179 = zext i16 %178 to i32
  %180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %172, i32 noundef %176, i32 noundef %179, i32 noundef %179, i32 noundef %166) #15
  br label %183

181:                                              ; preds = %160
  %182 = load i32, ptr %2, align 4
  br label %183

183:                                              ; preds = %181, %169
  %184 = phi i32 [ %167, %169 ], [ %182, %181 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %185 = trunc i32 %184 to i8
  %186 = add nuw nsw i32 %161, 3
  %187 = getelementptr [32 x i8], ptr %5, i32 0, i32 %186
  store i8 %185, ptr %187, align 1
  %188 = add nuw nsw i32 %161, 1
  %189 = icmp eq i32 %188, %148
  br i1 %189, label %190, label %160

190:                                              ; preds = %183, %150
  %191 = call i32 @hdmi_infoframe_unpack(ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef 32) #14
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = getelementptr [4 x %struct.adv76xx_cfg_read_infoframe], ptr @adv76xx_cri, i32 0, i32 %44
  %195 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %196 = load ptr, ptr %194, align 4
  %197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %195, ptr noundef nonnull @__func__.adv76xx_read_infoframe, ptr noundef %196) #15
  br label %202

198:                                              ; preds = %190
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  %199 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4
  call void @hdmi_infoframe_log(ptr noundef nonnull @.str.124, ptr noundef %199, ptr noundef nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %7) #14
  %200 = add nuw nsw i32 %44, 1
  %201 = icmp eq i32 %200, 4
  br i1 %201, label %203, label %43

202:                                              ; preds = %193, %155, %79
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %7) #14
  br label %203

203:                                              ; preds = %202, %198, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @cp_read16(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 1316
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr i8, ptr %0, i32 1368
  %9 = load ptr, ptr %8, align 4
  %10 = zext i8 %1 to i32
  %11 = call i32 @regmap_read(ptr noundef %9, i32 noundef %10, ptr noundef nonnull %5) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %16, i32 noundef %20, i32 noundef %23, i32 noundef %23, i32 noundef %10) #15
  br label %27

25:                                               ; preds = %3
  %26 = load i32, ptr %5, align 4
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi i32 [ %11, %13 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %29 = add i8 %1, 1
  %30 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %31 = load ptr, ptr %8, align 4
  %32 = zext i8 %29 to i32
  %33 = call i32 @regmap_read(ptr noundef %31, i32 noundef %32, ptr noundef nonnull %4) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4, i32 6
  %37 = load ptr, ptr %36, align 8
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.i2c_adapter, ptr %40, i32 0, i32 11
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 1
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %38, i32 noundef %42, i32 noundef %45, i32 noundef %45, i32 noundef %32) #15
  br label %49

47:                                               ; preds = %27
  %48 = load i32, ptr %4, align 4
  br label %49

49:                                               ; preds = %47, %35
  %50 = phi i32 [ %33, %35 ], [ %48, %47 ]
  %51 = shl i32 %28, 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %52 = or i32 %50, %51
  %53 = trunc i32 %52 to i16
  %54 = and i16 %53, %2
  ret i16 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @hdmi_read16(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 1308
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr i8, ptr %0, i32 1360
  %9 = load ptr, ptr %8, align 4
  %10 = zext i8 %1 to i32
  %11 = call i32 @regmap_read(ptr noundef %9, i32 noundef %10, ptr noundef nonnull %5) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %16, i32 noundef %20, i32 noundef %23, i32 noundef %23, i32 noundef %10) #15
  br label %27

25:                                               ; preds = %3
  %26 = load i32, ptr %5, align 4
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi i32 [ %11, %13 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %29 = add i8 %1, 1
  %30 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %31 = load ptr, ptr %8, align 4
  %32 = zext i8 %29 to i32
  %33 = call i32 @regmap_read(ptr noundef %31, i32 noundef %32, ptr noundef nonnull %4) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4, i32 6
  %37 = load ptr, ptr %36, align 8
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.i2c_adapter, ptr %40, i32 0, i32 11
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 1
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %38, i32 noundef %42, i32 noundef %45, i32 noundef %45, i32 noundef %32) #15
  br label %49

47:                                               ; preds = %27
  %48 = load i32, ptr %4, align 4
  br label %49

49:                                               ; preds = %47, %35
  %50 = phi i32 [ %33, %35 ], [ %48, %47 ]
  %51 = shl i32 %28, 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %52 = or i32 %50, %51
  %53 = trunc i32 %52 to i16
  %54 = and i16 %53, %2
  ret i16 %54
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @infoframe_read(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #4 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 1284
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr i8, ptr %0, i32 1336
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %1 to i32
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %3) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %14, i32 noundef %18, i32 noundef %21, i32 noundef %21, i32 noundef %8) #15
  br label %25

23:                                               ; preds = %2
  %24 = load i32, ptr %3, align 4
  br label %25

25:                                               ; preds = %23, %11
  %26 = phi i32 [ %9, %11 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_find_dv_timings_cea861_vic(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stdi2dv_timings(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #1 {
  %4 = load i16, ptr %1, align 2
  %5 = zext i16 %4 to i32
  %6 = udiv i32 229090880, %5
  %7 = load i32, ptr getelementptr inbounds ([0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 0, i32 1), align 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %77, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 536
  %11 = getelementptr inbounds %struct.stdi_readback, ptr %1, i32 0, i32 1
  %12 = getelementptr inbounds %struct.stdi_readback, ptr %1, i32 0, i32 2
  br label %13

13:                                               ; preds = %71, %9
  %14 = phi i32 [ %7, %9 ], [ %75, %71 ]
  %15 = phi ptr [ getelementptr inbounds ([0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 0, i32 1), %9 ], [ %74, %71 ]
  %16 = phi ptr [ @v4l2_dv_timings_presets, %9 ], [ %73, %71 ]
  %17 = phi i32 [ 0, %9 ], [ %72, %71 ]
  %18 = load i32, ptr %10, align 4
  %19 = icmp ult i32 %18, 4
  %20 = select i1 %19, ptr @adv76xx_timings_cap_digital, ptr @adv7604_timings_cap_analog
  %21 = tail call zeroext i1 @v4l2_valid_dv_timings(ptr noundef %16, ptr noundef nonnull %20, ptr noundef nonnull @adv76xx_check_dv_timings, ptr noundef null) #14
  br i1 %21, label %22, label %71

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 1
  %24 = load i32, ptr %23, align 1
  %25 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 8
  %26 = load i32, ptr %25, align 1
  %27 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 9
  %28 = load i32, ptr %27, align 1
  %29 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 10
  %30 = load i32, ptr %29, align 1
  %31 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 11
  %32 = load i32, ptr %31, align 1
  %33 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 12
  %34 = load i32, ptr %33, align 1
  %35 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 13
  %36 = load i32, ptr %35, align 1
  %37 = add i32 %26, %24
  %38 = add i32 %37, %28
  %39 = add i32 %38, %30
  %40 = add i32 %39, %32
  %41 = add i32 %40, %34
  %42 = add i32 %41, %36
  %43 = load i16, ptr %11, align 2
  %44 = zext i16 %43 to i32
  %45 = add nuw nsw i32 %44, 1
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %22
  %48 = load i16, ptr %12, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp eq i32 %28, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 5
  %53 = load i32, ptr %52, align 1
  %54 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 6
  %55 = load i32, ptr %54, align 1
  %56 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 7
  %57 = load i32, ptr %56, align 1
  %58 = add i32 %53, %14
  %59 = add i32 %58, %55
  %60 = add i32 %59, %57
  %61 = mul i32 %60, %6
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 4
  %64 = load i64, ptr %63, align 1
  %65 = add i64 %64, 1000000
  %66 = icmp ugt i64 %65, %62
  %67 = add i64 %64, -1000000
  %68 = icmp ult i64 %67, %62
  %69 = and i1 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %51
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(132) %2, ptr noundef align 1 dereferenceable(132) %16, i32 132, i1 false)
  br label %131

71:                                               ; preds = %51, %47, %22, %13
  %72 = add i32 %17, 1
  %73 = getelementptr [0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 %72
  %74 = getelementptr [0 x %struct.v4l2_dv_timings], ptr @v4l2_dv_timings_presets, i32 0, i32 %72, i32 1
  %75 = load i32, ptr %74, align 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %13

77:                                               ; preds = %71, %3
  %78 = getelementptr inbounds %struct.stdi_readback, ptr %1, i32 0, i32 1
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = add nuw nsw i32 %80, 1
  %82 = getelementptr inbounds %struct.stdi_readback, ptr %1, i32 0, i32 2
  %83 = load i16, ptr %82, align 2
  %84 = zext i16 %83 to i32
  %85 = getelementptr inbounds %struct.stdi_readback, ptr %1, i32 0, i32 3
  %86 = load i8, ptr %85, align 2
  %87 = icmp eq i8 %86, 43
  %88 = select i1 %87, i32 2, i32 0
  %89 = getelementptr inbounds %struct.stdi_readback, ptr %1, i32 0, i32 4
  %90 = load i8, ptr %89, align 1
  %91 = icmp eq i8 %90, 43
  %92 = zext i1 %91 to i32
  %93 = or i32 %88, %92
  %94 = tail call zeroext i1 @v4l2_detect_cvt(i32 noundef %81, i32 noundef %6, i32 noundef %84, i32 noundef 0, i32 noundef %93, i1 noundef zeroext false, ptr noundef %2) #14
  br i1 %94, label %131, label %95

95:                                               ; preds = %77
  %96 = load i16, ptr %78, align 2
  %97 = zext i16 %96 to i32
  %98 = add nuw nsw i32 %97, 1
  %99 = load i16, ptr %82, align 2
  %100 = zext i16 %99 to i32
  %101 = load i8, ptr %85, align 2
  %102 = icmp eq i8 %101, 43
  %103 = select i1 %102, i32 2, i32 0
  %104 = load i8, ptr %89, align 1
  %105 = icmp eq i8 %104, 43
  %106 = zext i1 %105 to i32
  %107 = or i32 %103, %106
  %108 = getelementptr i8, ptr %0, i32 1200
  %109 = load i32, ptr %108, align 4
  %110 = insertvalue [2 x i32] undef, i32 %109, 0
  %111 = getelementptr i8, ptr %0, i32 1204
  %112 = load i32, ptr %111, align 4
  %113 = insertvalue [2 x i32] %110, i32 %112, 1
  %114 = tail call zeroext i1 @v4l2_detect_gtf(i32 noundef %98, i32 noundef %6, i32 noundef %100, i32 noundef %107, i1 noundef zeroext false, [2 x i32] %113, ptr noundef %2) #14
  br i1 %114, label %131, label %115

115:                                              ; preds = %95
  %116 = load i32, ptr @debug, align 4
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %118, label %131

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %120 = load i16, ptr %82, align 2
  %121 = zext i16 %120 to i32
  %122 = load i16, ptr %78, align 2
  %123 = zext i16 %122 to i32
  %124 = load i16, ptr %1, align 2
  %125 = zext i16 %124 to i32
  %126 = load i8, ptr %85, align 2
  %127 = zext i8 %126 to i32
  %128 = load i8, ptr %89, align 1
  %129 = zext i8 %128 to i32
  %130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %119, ptr noundef nonnull @__func__.stdi2dv_timings, i32 noundef %121, i32 noundef %123, i32 noundef %125, i32 noundef %127, i32 noundef %129) #15
  br label %131

131:                                              ; preds = %118, %115, %95, %77, %70
  %132 = phi i32 [ 0, %70 ], [ 0, %77 ], [ 0, %95 ], [ -1, %118 ], [ -1, %115 ]
  ret i32 %132
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cp_write_clr_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #4 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 1316
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr i8, ptr %0, i32 1368
  %9 = load ptr, ptr %8, align 4
  %10 = zext i8 %1 to i32
  %11 = call i32 @regmap_read(ptr noundef %9, i32 noundef %10, ptr noundef nonnull %5) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %16, i32 noundef %20, i32 noundef %23, i32 noundef %23, i32 noundef %10) #15
  br label %27

25:                                               ; preds = %4
  %26 = load i32, ptr %5, align 4
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi i32 [ %11, %13 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %29 = zext i8 %2 to i32
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = trunc i32 %31 to i8
  %33 = or i8 %32, %3
  %34 = load ptr, ptr %8, align 4
  %35 = zext i8 %33 to i32
  %36 = call i32 @regmap_write(ptr noundef %34, i32 noundef %10, i32 noundef %35) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @adv76xx_check_dv_timings(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %0, ptr noundef nonnull @adv76xx_timings_exceptions, i32 noundef 0, i1 noundef zeroext false) #14
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_match_dv_timings(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_valid_dv_timings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_detect_cvt(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_detect_gtf(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, [2 x i32], ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_infoframe_log(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_infoframe_unpack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_notify_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_rgb_quantization_range(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i8], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = getelementptr i8, ptr %0, i32 1272
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #14
  store i32 0, ptr %16, align 4, !annotation !8
  %19 = getelementptr i8, ptr %0, i32 1324
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 2, ptr noundef nonnull %16) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 1
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %26, i32 noundef %30, i32 noundef %33, i32 noundef %33, i32 noundef 2) #15
  br label %37

35:                                               ; preds = %1
  %36 = load i32, ptr %16, align 4
  br label %37

37:                                               ; preds = %35, %23
  %38 = phi i32 [ %21, %23 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #14
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr i8, ptr %0, i32 1308
  %42 = load ptr, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #14
  store i32 0, ptr %15, align 4, !annotation !8
  %43 = getelementptr i8, ptr %0, i32 1360
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 @regmap_read(ptr noundef %44, i32 noundef 5, ptr noundef nonnull %15) #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4, i32 6
  %49 = load ptr, ptr %48, align 8
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 3
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, ptr %52, i32 0, i32 11
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 1
  %56 = load i16, ptr %55, align 2
  %57 = zext i16 %56 to i32
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %50, i32 noundef %54, i32 noundef %57, i32 noundef %57, i32 noundef 5) #15
  br label %61

59:                                               ; preds = %37
  %60 = load i32, ptr %15, align 4
  br label %61

61:                                               ; preds = %59, %47
  %62 = phi i32 [ %45, %47 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #14
  %63 = and i32 %62, 128
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %113, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #14
  store i32 0, ptr %14, align 4, !annotation !8
  %67 = load ptr, ptr %19, align 4
  %68 = call i32 @regmap_read(ptr noundef %67, i32 noundef 96, ptr noundef nonnull %14) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 4, i32 6
  %72 = load ptr, ptr %71, align 8
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.i2c_adapter, ptr %75, i32 0, i32 11
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 1
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %73, i32 noundef %77, i32 noundef %80, i32 noundef %80, i32 noundef 96) #15
  br label %84

82:                                               ; preds = %65
  %83 = load i32, ptr %14, align 4
  br label %84

84:                                               ; preds = %82, %70
  %85 = phi i32 [ %68, %70 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %113, label %88

88:                                               ; preds = %84
  %89 = getelementptr i8, ptr %0, i32 1284
  %90 = load ptr, ptr %89, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #14
  store i32 0, ptr %13, align 4, !annotation !8
  %91 = getelementptr i8, ptr %0, i32 1336
  %92 = load ptr, ptr %91, align 4
  %93 = call i32 @regmap_read(ptr noundef %92, i32 noundef 1, ptr noundef nonnull %13) #14
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4, i32 6
  %97 = load ptr, ptr %96, align 8
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 3
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.i2c_adapter, ptr %100, i32 0, i32 11
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 1
  %104 = load i16, ptr %103, align 2
  %105 = zext i16 %104 to i32
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %98, i32 noundef %102, i32 noundef %105, i32 noundef %105, i32 noundef 1) #15
  br label %109

107:                                              ; preds = %88
  %108 = load i32, ptr %13, align 4
  br label %109

109:                                              ; preds = %107, %95
  %110 = phi i32 [ %93, %95 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #14
  %111 = lshr i32 %110, 5
  %112 = and i32 %111, 255
  br label %113

113:                                              ; preds = %109, %84, %61
  %114 = phi i32 [ %112, %109 ], [ 0, %84 ], [ 0, %61 ]
  %115 = load i32, ptr @debug, align 4
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #14
  br label %129

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %120 = getelementptr i8, ptr %0, i32 1208
  %121 = load i32, ptr %120, align 4
  %122 = lshr exact i32 %39, 1
  %123 = lshr exact i32 %63, 7
  %124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %119, ptr noundef nonnull @__func__.set_rgb_quantization_range, i32 noundef %121, i32 noundef %122, i32 noundef %123) #15
  %125 = load i32, ptr @debug, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #14
  %126 = icmp sgt i32 %125, 1
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %119, ptr noundef nonnull @__func__.adv76xx_set_gain, ptr noundef nonnull @.str.140, i32 noundef 256, i32 noundef 256, i32 noundef 256) #15
  br label %129

129:                                              ; preds = %127, %118, %117
  store i8 16, ptr %12, align 4
  %130 = getelementptr inbounds [4 x i8], ptr %12, i32 0, i32 1
  store i8 4, ptr %130, align 1
  %131 = getelementptr inbounds [4 x i8], ptr %12, i32 0, i32 2
  store i8 1, ptr %131, align 2
  %132 = getelementptr inbounds [4 x i8], ptr %12, i32 0, i32 3
  store i8 0, ptr %132, align 1
  %133 = getelementptr i8, ptr %0, i32 1368
  %134 = load ptr, ptr %133, align 4
  %135 = call i32 @regmap_raw_write(ptr noundef %134, i32 noundef 115, ptr noundef nonnull %12, i32 noundef 4) #14
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %138, ptr noundef nonnull @__func__.adv76xx_set_gain) #15
  br label %140

140:                                              ; preds = %137, %129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #14
  call fastcc void @adv76xx_set_offset(ptr noundef %0, i1 noundef zeroext true, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0)
  %141 = shl nuw nsw i32 %39, 1
  %142 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  store i32 0, ptr %11, align 4, !annotation !8
  %143 = load ptr, ptr %19, align 4
  %144 = call i32 @regmap_read(ptr noundef %143, i32 noundef 2, ptr noundef nonnull %11) #14
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.i2c_client, ptr %142, i32 0, i32 4, i32 6
  %148 = load ptr, ptr %147, align 8
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.i2c_client, ptr %142, i32 0, i32 3
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.i2c_adapter, ptr %151, i32 0, i32 11
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.i2c_client, ptr %142, i32 0, i32 1
  %155 = load i16, ptr %154, align 2
  %156 = zext i16 %155 to i32
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %149, i32 noundef %153, i32 noundef %156, i32 noundef %156, i32 noundef 2) #15
  br label %160

158:                                              ; preds = %140
  %159 = load i32, ptr %11, align 4
  br label %160

160:                                              ; preds = %158, %146
  %161 = phi i32 [ %144, %146 ], [ %159, %158 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  %162 = and i32 %161, 251
  %163 = or i32 %162, %141
  %164 = xor i32 %163, 4
  %165 = load ptr, ptr %19, align 4
  %166 = call i32 @regmap_write(ptr noundef %165, i32 noundef 2, i32 noundef %164) #14
  %167 = getelementptr i8, ptr %0, i32 1208
  %168 = load i32, ptr %167, align 4
  switch i32 %168, label %425 [
    i32 0, label %169
    i32 1, label %306
    i32 2, label %361
  ]

169:                                              ; preds = %160
  %170 = getelementptr i8, ptr %0, i32 536
  %171 = load i32, ptr %170, align 4
  switch i32 %171, label %222 [
    i32 4, label %172
    i32 5, label %197
  ]

172:                                              ; preds = %169
  %173 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store i32 0, ptr %10, align 4, !annotation !8
  %174 = load ptr, ptr %19, align 4
  %175 = call i32 @regmap_read(ptr noundef %174, i32 noundef 2, ptr noundef nonnull %10) #14
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %189, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.i2c_client, ptr %173, i32 0, i32 4, i32 6
  %179 = load ptr, ptr %178, align 8
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.i2c_client, ptr %173, i32 0, i32 3
  %182 = load ptr, ptr %181, align 8
  %183 = getelementptr inbounds %struct.i2c_adapter, ptr %182, i32 0, i32 11
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds %struct.i2c_client, ptr %173, i32 0, i32 1
  %186 = load i16, ptr %185, align 2
  %187 = zext i16 %186 to i32
  %188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %180, i32 noundef %184, i32 noundef %187, i32 noundef %187, i32 noundef 2) #15
  br label %191

189:                                              ; preds = %172
  %190 = load i32, ptr %10, align 4
  br label %191

191:                                              ; preds = %189, %177
  %192 = phi i32 [ %175, %177 ], [ %190, %189 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  %193 = and i32 %192, 15
  %194 = or i32 %193, 16
  %195 = load ptr, ptr %19, align 4
  %196 = call i32 @regmap_write(ptr noundef %195, i32 noundef 2, i32 noundef %194) #14
  br label %425

197:                                              ; preds = %169
  %198 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 0, ptr %9, align 4, !annotation !8
  %199 = load ptr, ptr %19, align 4
  %200 = call i32 @regmap_read(ptr noundef %199, i32 noundef 2, ptr noundef nonnull %9) #14
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %214, label %202

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.i2c_client, ptr %198, i32 0, i32 4, i32 6
  %204 = load ptr, ptr %203, align 8
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.i2c_client, ptr %198, i32 0, i32 3
  %207 = load ptr, ptr %206, align 8
  %208 = getelementptr inbounds %struct.i2c_adapter, ptr %207, i32 0, i32 11
  %209 = load i32, ptr %208, align 4
  %210 = getelementptr inbounds %struct.i2c_client, ptr %198, i32 0, i32 1
  %211 = load i16, ptr %210, align 2
  %212 = zext i16 %211 to i32
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %205, i32 noundef %209, i32 noundef %212, i32 noundef %212, i32 noundef 2) #15
  br label %216

214:                                              ; preds = %197
  %215 = load i32, ptr %9, align 4
  br label %216

216:                                              ; preds = %214, %202
  %217 = phi i32 [ %200, %202 ], [ %215, %214 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %218 = load ptr, ptr %19, align 4
  %219 = and i32 %217, 15
  %220 = or i32 %219, 240
  %221 = call i32 @regmap_write(ptr noundef %218, i32 noundef 2, i32 noundef %220) #14
  br label %425

222:                                              ; preds = %169
  br i1 %64, label %248, label %223

223:                                              ; preds = %222
  %224 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !annotation !8
  %225 = load ptr, ptr %19, align 4
  %226 = call i32 @regmap_read(ptr noundef %225, i32 noundef 2, ptr noundef nonnull %8) #14
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %240, label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.i2c_client, ptr %224, i32 0, i32 4, i32 6
  %230 = load ptr, ptr %229, align 8
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.i2c_client, ptr %224, i32 0, i32 3
  %233 = load ptr, ptr %232, align 8
  %234 = getelementptr inbounds %struct.i2c_adapter, ptr %233, i32 0, i32 11
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr inbounds %struct.i2c_client, ptr %224, i32 0, i32 1
  %237 = load i16, ptr %236, align 2
  %238 = zext i16 %237 to i32
  %239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %231, i32 noundef %235, i32 noundef %238, i32 noundef %238, i32 noundef 2) #15
  br label %242

240:                                              ; preds = %223
  %241 = load i32, ptr %8, align 4
  br label %242

242:                                              ; preds = %240, %228
  %243 = phi i32 [ %226, %228 ], [ %241, %240 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %244 = load ptr, ptr %19, align 4
  %245 = and i32 %243, 15
  %246 = or i32 %245, 240
  %247 = call i32 @regmap_write(ptr noundef %244, i32 noundef 2, i32 noundef %246) #14
  br label %425

248:                                              ; preds = %222
  %249 = getelementptr i8, ptr %0, i32 608
  %250 = load i32, ptr %249, align 4
  %251 = and i32 %250, 16
  %252 = icmp eq i32 %251, 0
  %253 = load ptr, ptr %17, align 4
  br i1 %252, label %277, label %254

254:                                              ; preds = %248
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  %255 = load ptr, ptr %19, align 4
  %256 = call i32 @regmap_read(ptr noundef %255, i32 noundef 2, ptr noundef nonnull %7) #14
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %270, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.i2c_client, ptr %253, i32 0, i32 4, i32 6
  %260 = load ptr, ptr %259, align 8
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr inbounds %struct.i2c_client, ptr %253, i32 0, i32 3
  %263 = load ptr, ptr %262, align 8
  %264 = getelementptr inbounds %struct.i2c_adapter, ptr %263, i32 0, i32 11
  %265 = load i32, ptr %264, align 4
  %266 = getelementptr inbounds %struct.i2c_client, ptr %253, i32 0, i32 1
  %267 = load i16, ptr %266, align 2
  %268 = zext i16 %267 to i32
  %269 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %261, i32 noundef %265, i32 noundef %268, i32 noundef %268, i32 noundef 2) #15
  br label %272

270:                                              ; preds = %254
  %271 = load i32, ptr %7, align 4
  br label %272

272:                                              ; preds = %270, %258
  %273 = phi i32 [ %256, %258 ], [ %271, %270 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %274 = and i32 %273, 15
  %275 = load ptr, ptr %19, align 4
  %276 = call i32 @regmap_write(ptr noundef %275, i32 noundef 2, i32 noundef %274) #14
  br label %425

277:                                              ; preds = %248
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %278 = load ptr, ptr %19, align 4
  %279 = call i32 @regmap_read(ptr noundef %278, i32 noundef 2, ptr noundef nonnull %6) #14
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %293, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.i2c_client, ptr %253, i32 0, i32 4, i32 6
  %283 = load ptr, ptr %282, align 8
  %284 = load ptr, ptr %283, align 4
  %285 = getelementptr inbounds %struct.i2c_client, ptr %253, i32 0, i32 3
  %286 = load ptr, ptr %285, align 8
  %287 = getelementptr inbounds %struct.i2c_adapter, ptr %286, i32 0, i32 11
  %288 = load i32, ptr %287, align 4
  %289 = getelementptr inbounds %struct.i2c_client, ptr %253, i32 0, i32 1
  %290 = load i16, ptr %289, align 2
  %291 = zext i16 %290 to i32
  %292 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %284, i32 noundef %288, i32 noundef %291, i32 noundef %291, i32 noundef 2) #15
  br label %295

293:                                              ; preds = %277
  %294 = load i32, ptr %6, align 4
  br label %295

295:                                              ; preds = %293, %281
  %296 = phi i32 [ %279, %281 ], [ %294, %293 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %297 = and i32 %296, 15
  %298 = or i32 %297, 16
  %299 = load ptr, ptr %19, align 4
  %300 = call i32 @regmap_write(ptr noundef %299, i32 noundef 2, i32 noundef %298) #14
  %301 = load i32, ptr %170, align 4
  %302 = icmp ugt i32 %301, 3
  %303 = select i1 %302, i1 true, i1 %40
  br i1 %303, label %305, label %304

304:                                              ; preds = %295
  call fastcc void @adv76xx_set_offset(ptr noundef %0, i1 noundef zeroext false, i16 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 64)
  br label %425

305:                                              ; preds = %295
  call fastcc void @adv76xx_set_gain(ptr noundef %0, i1 noundef zeroext false, i16 noundef zeroext 224, i16 noundef zeroext 224, i16 noundef zeroext 224)
  call fastcc void @adv76xx_set_offset(ptr noundef %0, i1 noundef zeroext false, i16 noundef zeroext 112, i16 noundef zeroext 112, i16 noundef zeroext 112)
  br label %425

306:                                              ; preds = %160
  %307 = getelementptr i8, ptr %0, i32 536
  %308 = load i32, ptr %307, align 4
  %309 = icmp eq i32 %308, 5
  br i1 %309, label %310, label %335

310:                                              ; preds = %306
  %311 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %312 = load ptr, ptr %19, align 4
  %313 = call i32 @regmap_read(ptr noundef %312, i32 noundef 2, ptr noundef nonnull %5) #14
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %327, label %315

315:                                              ; preds = %310
  %316 = getelementptr inbounds %struct.i2c_client, ptr %311, i32 0, i32 4, i32 6
  %317 = load ptr, ptr %316, align 8
  %318 = load ptr, ptr %317, align 4
  %319 = getelementptr inbounds %struct.i2c_client, ptr %311, i32 0, i32 3
  %320 = load ptr, ptr %319, align 8
  %321 = getelementptr inbounds %struct.i2c_adapter, ptr %320, i32 0, i32 11
  %322 = load i32, ptr %321, align 4
  %323 = getelementptr inbounds %struct.i2c_client, ptr %311, i32 0, i32 1
  %324 = load i16, ptr %323, align 2
  %325 = zext i16 %324 to i32
  %326 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %318, i32 noundef %322, i32 noundef %325, i32 noundef %325, i32 noundef 2) #15
  br label %329

327:                                              ; preds = %310
  %328 = load i32, ptr %5, align 4
  br label %329

329:                                              ; preds = %327, %315
  %330 = phi i32 [ %313, %315 ], [ %328, %327 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %331 = and i32 %330, 15
  %332 = or i32 %331, 32
  %333 = load ptr, ptr %19, align 4
  %334 = call i32 @regmap_write(ptr noundef %333, i32 noundef 2, i32 noundef %332) #14
  br label %425

335:                                              ; preds = %306
  %336 = icmp eq i32 %114, 0
  br i1 %336, label %337, label %425

337:                                              ; preds = %335
  %338 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %339 = load ptr, ptr %19, align 4
  %340 = call i32 @regmap_read(ptr noundef %339, i32 noundef 2, ptr noundef nonnull %4) #14
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %354, label %342

342:                                              ; preds = %337
  %343 = getelementptr inbounds %struct.i2c_client, ptr %338, i32 0, i32 4, i32 6
  %344 = load ptr, ptr %343, align 8
  %345 = load ptr, ptr %344, align 4
  %346 = getelementptr inbounds %struct.i2c_client, ptr %338, i32 0, i32 3
  %347 = load ptr, ptr %346, align 8
  %348 = getelementptr inbounds %struct.i2c_adapter, ptr %347, i32 0, i32 11
  %349 = load i32, ptr %348, align 4
  %350 = getelementptr inbounds %struct.i2c_client, ptr %338, i32 0, i32 1
  %351 = load i16, ptr %350, align 2
  %352 = zext i16 %351 to i32
  %353 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %345, i32 noundef %349, i32 noundef %352, i32 noundef %352, i32 noundef 2) #15
  br label %356

354:                                              ; preds = %337
  %355 = load i32, ptr %4, align 4
  br label %356

356:                                              ; preds = %354, %342
  %357 = phi i32 [ %340, %342 ], [ %355, %354 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %358 = and i32 %357, 15
  %359 = load ptr, ptr %19, align 4
  %360 = call i32 @regmap_write(ptr noundef %359, i32 noundef 2, i32 noundef %358) #14
  br label %425

361:                                              ; preds = %160
  %362 = getelementptr i8, ptr %0, i32 536
  %363 = load i32, ptr %362, align 4
  %364 = icmp eq i32 %363, 5
  br i1 %364, label %365, label %390

365:                                              ; preds = %361
  %366 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %367 = load ptr, ptr %19, align 4
  %368 = call i32 @regmap_read(ptr noundef %367, i32 noundef 2, ptr noundef nonnull %3) #14
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %382, label %370

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.i2c_client, ptr %366, i32 0, i32 4, i32 6
  %372 = load ptr, ptr %371, align 8
  %373 = load ptr, ptr %372, align 4
  %374 = getelementptr inbounds %struct.i2c_client, ptr %366, i32 0, i32 3
  %375 = load ptr, ptr %374, align 8
  %376 = getelementptr inbounds %struct.i2c_adapter, ptr %375, i32 0, i32 11
  %377 = load i32, ptr %376, align 4
  %378 = getelementptr inbounds %struct.i2c_client, ptr %366, i32 0, i32 1
  %379 = load i16, ptr %378, align 2
  %380 = zext i16 %379 to i32
  %381 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %373, i32 noundef %377, i32 noundef %380, i32 noundef %380, i32 noundef 2) #15
  br label %384

382:                                              ; preds = %365
  %383 = load i32, ptr %3, align 4
  br label %384

384:                                              ; preds = %382, %370
  %385 = phi i32 [ %368, %370 ], [ %383, %382 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %386 = and i32 %385, 15
  %387 = or i32 %386, 96
  %388 = load ptr, ptr %19, align 4
  %389 = call i32 @regmap_write(ptr noundef %388, i32 noundef 2, i32 noundef %387) #14
  br label %425

390:                                              ; preds = %361
  %391 = icmp eq i32 %114, 0
  br i1 %391, label %392, label %425

392:                                              ; preds = %390
  %393 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %394 = load ptr, ptr %19, align 4
  %395 = call i32 @regmap_read(ptr noundef %394, i32 noundef 2, ptr noundef nonnull %2) #14
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %409, label %397

397:                                              ; preds = %392
  %398 = getelementptr inbounds %struct.i2c_client, ptr %393, i32 0, i32 4, i32 6
  %399 = load ptr, ptr %398, align 8
  %400 = load ptr, ptr %399, align 4
  %401 = getelementptr inbounds %struct.i2c_client, ptr %393, i32 0, i32 3
  %402 = load ptr, ptr %401, align 8
  %403 = getelementptr inbounds %struct.i2c_adapter, ptr %402, i32 0, i32 11
  %404 = load i32, ptr %403, align 4
  %405 = getelementptr inbounds %struct.i2c_client, ptr %393, i32 0, i32 1
  %406 = load i16, ptr %405, align 2
  %407 = zext i16 %406 to i32
  %408 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %400, i32 noundef %404, i32 noundef %407, i32 noundef %407, i32 noundef 2) #15
  br label %411

409:                                              ; preds = %392
  %410 = load i32, ptr %2, align 4
  br label %411

411:                                              ; preds = %409, %397
  %412 = phi i32 [ %395, %397 ], [ %410, %409 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %413 = and i32 %412, 15
  %414 = or i32 %413, 16
  %415 = load ptr, ptr %19, align 4
  %416 = call i32 @regmap_write(ptr noundef %415, i32 noundef 2, i32 noundef %414) #14
  %417 = load i32, ptr %362, align 4
  %418 = and i32 %417, -2
  %419 = icmp eq i32 %418, 4
  %420 = xor i1 %64, true
  %421 = select i1 %419, i1 true, i1 %420
  br i1 %421, label %425, label %422

422:                                              ; preds = %411
  br i1 %40, label %424, label %423

423:                                              ; preds = %422
  call fastcc void @adv76xx_set_offset(ptr noundef %0, i1 noundef zeroext false, i16 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 64)
  br label %425

424:                                              ; preds = %422
  call fastcc void @adv76xx_set_gain(ptr noundef %0, i1 noundef zeroext false, i16 noundef zeroext 224, i16 noundef zeroext 224, i16 noundef zeroext 224)
  call fastcc void @adv76xx_set_offset(ptr noundef %0, i1 noundef zeroext false, i16 noundef zeroext 112, i16 noundef zeroext 112, i16 noundef zeroext 112)
  br label %425

425:                                              ; preds = %424, %423, %411, %390, %384, %356, %335, %329, %305, %304, %272, %242, %216, %191, %160
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @adv76xx_set_gain(ptr noundef %0, i1 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) unnamed_addr #1 {
  %6 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  br i1 %1, label %7, label %8

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i16 [ 256, %7 ], [ %4, %5 ]
  %10 = phi i8 [ 0, %7 ], [ -64, %5 ]
  %11 = phi i16 [ 256, %7 ], [ %3, %5 ]
  %12 = phi i16 [ 256, %7 ], [ %2, %5 ]
  %13 = load i32, ptr @debug, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %17 = select i1 %1, ptr @.str.140, ptr @.str.141
  %18 = zext i16 %12 to i32
  %19 = zext i16 %11 to i32
  %20 = zext i16 %9 to i32
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %16, ptr noundef nonnull @__func__.adv76xx_set_gain, ptr noundef nonnull %17, i32 noundef %18, i32 noundef %19, i32 noundef %20) #15
  br label %22

22:                                               ; preds = %15, %8
  %23 = lshr i16 %12, 4
  %24 = trunc i16 %23 to i8
  %25 = and i8 %24, 63
  %26 = or i8 %10, %25
  store i8 %26, ptr %6, align 4
  %27 = shl i16 %12, 4
  %28 = lshr i16 %11, 6
  %29 = and i16 %28, 15
  %30 = or i16 %27, %29
  %31 = trunc i16 %30 to i8
  %32 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 1
  store i8 %31, ptr %32, align 1
  %33 = shl i16 %11, 2
  %34 = lshr i16 %9, 8
  %35 = and i16 %34, 3
  %36 = or i16 %33, %35
  %37 = trunc i16 %36 to i8
  %38 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 2
  store i8 %37, ptr %38, align 2
  %39 = trunc i16 %9 to i8
  %40 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 3
  store i8 %39, ptr %40, align 1
  %41 = getelementptr i8, ptr %0, i32 1368
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 @regmap_raw_write(ptr noundef %42, i32 noundef 115, ptr noundef nonnull %6, i32 noundef 4) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %22
  %46 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %46, ptr noundef nonnull @__func__.adv76xx_set_gain) #15
  br label %48

48:                                               ; preds = %45, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @adv76xx_set_offset(ptr noundef %0, i1 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) unnamed_addr #1 {
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %8 = select i1 %1, i16 1023, i16 %4
  %9 = select i1 %1, i16 1023, i16 %3
  %10 = select i1 %1, i16 1023, i16 %2
  %11 = load i32, ptr @debug, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %15 = select i1 %1, ptr @.str.140, ptr @.str.141
  %16 = zext i16 %10 to i32
  %17 = zext i16 %9 to i32
  %18 = zext i16 %8 to i32
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %14, ptr noundef nonnull @__func__.adv76xx_set_offset, ptr noundef nonnull %15, i32 noundef %16, i32 noundef %17, i32 noundef %18) #15
  br label %20

20:                                               ; preds = %13, %5
  %21 = getelementptr i8, ptr %0, i32 1316
  %22 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %23 = getelementptr i8, ptr %0, i32 1368
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @regmap_read(ptr noundef %24, i32 noundef 119, ptr noundef nonnull %6) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4, i32 6
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 11
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 1
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %30, i32 noundef %34, i32 noundef %37, i32 noundef %37, i32 noundef 119) #15
  br label %41

39:                                               ; preds = %20
  %40 = load i32, ptr %6, align 4
  br label %41

41:                                               ; preds = %39, %27
  %42 = phi i32 [ %25, %27 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %43 = and i32 %42, 192
  %44 = lshr i16 %10, 4
  %45 = and i16 %44, 63
  %46 = zext i16 %45 to i32
  %47 = or i32 %43, %46
  %48 = trunc i32 %47 to i8
  store i8 %48, ptr %7, align 4
  %49 = shl i16 %10, 4
  %50 = lshr i16 %9, 6
  %51 = and i16 %50, 15
  %52 = or i16 %51, %49
  %53 = trunc i16 %52 to i8
  %54 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 1
  store i8 %53, ptr %54, align 1
  %55 = shl i16 %9, 2
  %56 = lshr i16 %8, 8
  %57 = and i16 %56, 3
  %58 = or i16 %57, %55
  %59 = trunc i16 %58 to i8
  %60 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 2
  store i8 %59, ptr %60, align 2
  %61 = trunc i16 %8 to i8
  %62 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 3
  store i8 %61, ptr %62, align 1
  %63 = load ptr, ptr %23, align 4
  %64 = call i32 @regmap_raw_write(ptr noundef %63, i32 noundef 119, ptr noundef nonnull %7, i32 noundef 4) #14
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %41
  %67 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %67, ptr noundef nonnull @__func__.adv76xx_set_offset) #15
  br label %69

69:                                               ; preds = %66, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_done_ts(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subdev_subscribe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_s_routing(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr i8, ptr %0, i32 -88
  %6 = load i32, ptr @debug, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %10 = getelementptr i8, ptr %0, i32 536
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %9, ptr noundef nonnull @__func__.adv76xx_s_routing, i32 noundef %1, i32 noundef %11) #15
  br label %13

13:                                               ; preds = %8, %4
  %14 = getelementptr i8, ptr %0, i32 536
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, %1
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 %1, ptr %14, align 4
  tail call fastcc void @disable_input(ptr noundef %0)
  tail call fastcc void @select_input(ptr noundef %0)
  tail call fastcc void @enable_input(ptr noundef %0)
  tail call void @v4l2_subdev_notify_event(ptr noundef %0, ptr noundef nonnull @adv76xx_ev_fmt) #14
  br label %23

23:                                               ; preds = %22, %17, %13
  %24 = phi i32 [ 0, %22 ], [ 0, %13 ], [ -22, %17 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_g_input_status(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %6 = getelementptr i8, ptr %0, i32 1272
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr i8, ptr %0, i32 1324
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 12, ptr noundef nonnull %5) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %15, i32 noundef %19, i32 noundef %22, i32 noundef %22, i32 noundef 12) #15
  br label %26

24:                                               ; preds = %2
  %25 = load i32, ptr %5, align 4
  br label %26

26:                                               ; preds = %24, %12
  %27 = phi i32 [ %10, %12 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %28 = and i32 %27, 36
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = load i32, ptr %1, align 4
  %32 = or i32 %31, %30
  store i32 %32, ptr %1, align 4
  %33 = call fastcc zeroext i1 @no_signal(ptr noundef %0)
  %34 = select i1 %33, i32 2, i32 0
  %35 = load i32, ptr %1, align 4
  %36 = or i32 %35, %34
  store i32 %36, ptr %1, align 4
  %37 = getelementptr i8, ptr %0, i32 1316
  %38 = load ptr, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %39 = getelementptr i8, ptr %0, i32 1368
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 @regmap_read(ptr noundef %40, i32 noundef 255, ptr noundef nonnull %4) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4, i32 6
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.i2c_adapter, ptr %48, i32 0, i32 11
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 1
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %46, i32 noundef %50, i32 noundef %53, i32 noundef %53, i32 noundef 255) #15
  br label %57

55:                                               ; preds = %26
  %56 = load i32, ptr %4, align 4
  br label %57

57:                                               ; preds = %55, %43
  %58 = phi i32 [ %41, %43 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %59 = and i32 %58, 16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %97

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %0, i32 -88
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %63, i32 0, i32 1
  %65 = load i8, ptr %64, align 4, !range !9
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %97, label %67

67:                                               ; preds = %61
  %68 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %69 = load ptr, ptr %8, align 4
  %70 = call i32 @regmap_read(ptr noundef %69, i32 noundef 18, ptr noundef nonnull %3) #14
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.i2c_client, ptr %68, i32 0, i32 4, i32 6
  %74 = load ptr, ptr %73, align 8
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.i2c_client, ptr %68, i32 0, i32 3
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.i2c_adapter, ptr %77, i32 0, i32 11
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.i2c_client, ptr %68, i32 0, i32 1
  %81 = load i16, ptr %80, align 2
  %82 = zext i16 %81 to i32
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %75, i32 noundef %79, i32 noundef %82, i32 noundef %82, i32 noundef 18) #15
  br label %86

84:                                               ; preds = %67
  %85 = load i32, ptr %3, align 4
  br label %86

86:                                               ; preds = %84, %72
  %87 = phi i32 [ %70, %72 ], [ %85, %84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = getelementptr i8, ptr %0, i32 536
  %92 = load i32, ptr %91, align 4
  %93 = icmp ult i32 %92, 4
  %94 = select i1 %93, i32 65536, i32 256
  %95 = load i32, ptr %1, align 4
  %96 = or i32 %94, %95
  store i32 %96, ptr %1, align 4
  br label %97

97:                                               ; preds = %90, %86, %61, %57
  %98 = load i32, ptr @debug, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %102 = load i32, ptr %1, align 4
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %101, ptr noundef nonnull @__func__.adv76xx_g_input_status, i32 noundef %102) #15
  br label %104

104:                                              ; preds = %100, %97
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_s_dv_timings(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 -88
  %8 = icmp eq ptr %1, null
  br i1 %8, label %450, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 540
  %11 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %10, ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext false) #14
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, ptr @debug, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %450

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef %16, ptr noundef nonnull @__func__.adv76xx_s_dv_timings) #15
  br label %450

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1
  %20 = getelementptr i8, ptr %0, i32 536
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, 4
  %23 = select i1 %22, ptr @adv76xx_timings_cap_digital, ptr @adv7604_timings_cap_analog
  %24 = tail call zeroext i1 @v4l2_valid_dv_timings(ptr noundef nonnull %1, ptr noundef nonnull %23, ptr noundef nonnull @adv76xx_check_dv_timings, ptr noundef null) #14
  br i1 %24, label %25, label %450

25:                                               ; preds = %18
  %26 = load i32, ptr %20, align 4
  %27 = icmp ult i32 %26, 4
  %28 = select i1 %27, ptr @adv76xx_timings_cap_digital, ptr @adv7604_timings_cap_analog
  %29 = select i1 %27, i32 250000, i32 1000000
  %30 = tail call zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef nonnull %1, ptr noundef nonnull %28, i32 noundef %29, ptr noundef nonnull @adv76xx_check_dv_timings, ptr noundef null) #14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(132) %10, ptr noundef nonnull align 1 dereferenceable(132) %1, i32 132, i1 false)
  %31 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 2
  %32 = load i32, ptr %31, align 1
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 0, i32 64
  %35 = getelementptr i8, ptr %0, i32 1316
  %36 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %37 = getelementptr i8, ptr %0, i32 1368
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 @regmap_read(ptr noundef %38, i32 noundef 145, ptr noundef nonnull %6) #14
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4, i32 6
  %43 = load ptr, ptr %42, align 8
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 3
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.i2c_adapter, ptr %46, i32 0, i32 11
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 1
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %44, i32 noundef %48, i32 noundef %51, i32 noundef %51, i32 noundef 145) #15
  br label %55

53:                                               ; preds = %25
  %54 = load i32, ptr %6, align 4
  br label %55

55:                                               ; preds = %53, %41
  %56 = phi i32 [ %39, %41 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %57 = and i32 %56, 191
  %58 = or i32 %57, %34
  %59 = load ptr, ptr %37, align 4
  %60 = call i32 @regmap_write(ptr noundef %59, i32 noundef 145, i32 noundef %58) #14
  %61 = load i32, ptr @debug, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef %64, ptr noundef nonnull @__func__.configure_predefined_video_timings) #15
  br label %66

66:                                               ; preds = %63, %55
  %67 = load ptr, ptr %7, align 4
  %68 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %67, i32 0, i32 1
  %69 = load i8, ptr %68, align 4, !range !9
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = getelementptr i8, ptr %0, i32 1324
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 @regmap_write(ptr noundef %73, i32 noundef 22, i32 noundef 67) #14
  %75 = load ptr, ptr %72, align 4
  %76 = call i32 @regmap_write(ptr noundef %75, i32 noundef 23, i32 noundef 90) #14
  br label %77

77:                                               ; preds = %71, %66
  %78 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %79 = load ptr, ptr %37, align 4
  %80 = call i32 @regmap_read(ptr noundef %79, i32 noundef 129, ptr noundef nonnull %5) #14
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 4, i32 6
  %84 = load ptr, ptr %83, align 8
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 3
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.i2c_adapter, ptr %87, i32 0, i32 11
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 1
  %91 = load i16, ptr %90, align 2
  %92 = zext i16 %91 to i32
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %85, i32 noundef %89, i32 noundef %92, i32 noundef %92, i32 noundef 129) #15
  br label %96

94:                                               ; preds = %77
  %95 = load i32, ptr %5, align 4
  br label %96

96:                                               ; preds = %94, %82
  %97 = phi i32 [ %80, %82 ], [ %95, %94 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %98 = and i32 %97, 239
  %99 = load ptr, ptr %37, align 4
  %100 = call i32 @regmap_write(ptr noundef %99, i32 noundef 129, i32 noundef %98) #14
  %101 = load ptr, ptr %37, align 4
  %102 = call i32 @regmap_write(ptr noundef %101, i32 noundef 143, i32 noundef 0) #14
  %103 = load ptr, ptr %37, align 4
  %104 = call i32 @regmap_write(ptr noundef %103, i32 noundef 144, i32 noundef 0) #14
  %105 = load ptr, ptr %37, align 4
  %106 = call i32 @regmap_write(ptr noundef %105, i32 noundef 162, i32 noundef 0) #14
  %107 = load ptr, ptr %37, align 4
  %108 = call i32 @regmap_write(ptr noundef %107, i32 noundef 163, i32 noundef 0) #14
  %109 = load ptr, ptr %37, align 4
  %110 = call i32 @regmap_write(ptr noundef %109, i32 noundef 164, i32 noundef 0) #14
  %111 = load ptr, ptr %37, align 4
  %112 = call i32 @regmap_write(ptr noundef %111, i32 noundef 165, i32 noundef 0) #14
  %113 = load ptr, ptr %37, align 4
  %114 = call i32 @regmap_write(ptr noundef %113, i32 noundef 166, i32 noundef 0) #14
  %115 = load ptr, ptr %37, align 4
  %116 = call i32 @regmap_write(ptr noundef %115, i32 noundef 167, i32 noundef 0) #14
  %117 = load ptr, ptr %37, align 4
  %118 = call i32 @regmap_write(ptr noundef %117, i32 noundef 171, i32 noundef 0) #14
  %119 = load ptr, ptr %37, align 4
  %120 = call i32 @regmap_write(ptr noundef %119, i32 noundef 172, i32 noundef 0) #14
  %121 = load i32, ptr %20, align 4
  %122 = and i32 %121, -2
  %123 = icmp eq i32 %122, 4
  br i1 %123, label %124, label %201

124:                                              ; preds = %96
  %125 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef nonnull @adv7604_prim_mode_comp, i32 noundef 1000000, i1 noundef zeroext false) #14
  br i1 %125, label %126, label %141

126:                                              ; preds = %171, %166, %161, %156, %151, %146, %141, %124
  %127 = phi i32 [ 0, %124 ], [ 1, %141 ], [ 2, %146 ], [ 3, %151 ], [ 4, %156 ], [ 5, %161 ], [ 6, %166 ], [ 7, %171 ]
  %128 = getelementptr %struct.adv76xx_video_standards, ptr @adv7604_prim_mode_comp, i32 %127, i32 1
  %129 = load i8, ptr %128, align 1
  %130 = getelementptr i8, ptr %0, i32 1324
  %131 = load ptr, ptr %130, align 4
  %132 = zext i8 %129 to i32
  %133 = call i32 @regmap_write(ptr noundef %131, i32 noundef 0, i32 noundef %132) #14
  %134 = getelementptr %struct.adv76xx_video_standards, ptr @adv7604_prim_mode_comp, i32 %127, i32 2
  %135 = load i8, ptr %134, align 1
  %136 = shl i8 %135, 4
  %137 = or i8 %136, 1
  %138 = load ptr, ptr %130, align 4
  %139 = zext i8 %137 to i32
  %140 = call i32 @regmap_write(ptr noundef %138, i32 noundef 1, i32 noundef %139) #14
  br label %445

141:                                              ; preds = %124
  %142 = load i32, ptr %20, align 4
  %143 = icmp ult i32 %142, 4
  %144 = select i1 %143, i32 250000, i32 1000000
  %145 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }>, ptr @adv7604_prim_mode_comp, i32 0, i32 1, i32 0, i32 0), i32 noundef %144, i1 noundef zeroext false) #14
  br i1 %145, label %126, label %146

146:                                              ; preds = %141
  %147 = load i32, ptr %20, align 4
  %148 = icmp ult i32 %147, 4
  %149 = select i1 %148, i32 250000, i32 1000000
  %150 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }>, ptr @adv7604_prim_mode_comp, i32 0, i32 2, i32 0, i32 0), i32 noundef %149, i1 noundef zeroext false) #14
  br i1 %150, label %126, label %151

151:                                              ; preds = %146
  %152 = load i32, ptr %20, align 4
  %153 = icmp ult i32 %152, 4
  %154 = select i1 %153, i32 250000, i32 1000000
  %155 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }>, ptr @adv7604_prim_mode_comp, i32 0, i32 3, i32 0, i32 0), i32 noundef %154, i1 noundef zeroext false) #14
  br i1 %155, label %126, label %156

156:                                              ; preds = %151
  %157 = load i32, ptr %20, align 4
  %158 = icmp ult i32 %157, 4
  %159 = select i1 %158, i32 250000, i32 1000000
  %160 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }>, ptr @adv7604_prim_mode_comp, i32 0, i32 4, i32 0, i32 0), i32 noundef %159, i1 noundef zeroext false) #14
  br i1 %160, label %126, label %161

161:                                              ; preds = %156
  %162 = load i32, ptr %20, align 4
  %163 = icmp ult i32 %162, 4
  %164 = select i1 %163, i32 250000, i32 1000000
  %165 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }>, ptr @adv7604_prim_mode_comp, i32 0, i32 5, i32 0, i32 0), i32 noundef %164, i1 noundef zeroext false) #14
  br i1 %165, label %126, label %166

166:                                              ; preds = %161
  %167 = load i32, ptr %20, align 4
  %168 = icmp ult i32 %167, 4
  %169 = select i1 %168, i32 250000, i32 1000000
  %170 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }>, ptr @adv7604_prim_mode_comp, i32 0, i32 6, i32 0, i32 0), i32 noundef %169, i1 noundef zeroext false) #14
  br i1 %170, label %126, label %171

171:                                              ; preds = %166
  %172 = load i32, ptr %20, align 4
  %173 = icmp ult i32 %172, 4
  %174 = select i1 %173, i32 250000, i32 1000000
  %175 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }>, ptr @adv7604_prim_mode_comp, i32 0, i32 7, i32 0, i32 0), i32 noundef %174, i1 noundef zeroext false) #14
  br i1 %175, label %126, label %176

176:                                              ; preds = %197, %171
  %177 = phi ptr [ %199, %197 ], [ @adv7604_prim_mode_gr, %171 ]
  %178 = phi i32 [ %198, %197 ], [ 0, %171 ]
  %179 = load i32, ptr %20, align 4
  %180 = icmp ult i32 %179, 4
  %181 = select i1 %180, i32 250000, i32 1000000
  %182 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef %1, ptr noundef %177, i32 noundef %181, i1 noundef zeroext false) #14
  br i1 %182, label %183, label %197

183:                                              ; preds = %176
  %184 = getelementptr %struct.adv76xx_video_standards, ptr @adv7604_prim_mode_gr, i32 %178, i32 1
  %185 = load i8, ptr %184, align 1
  %186 = getelementptr i8, ptr %0, i32 1324
  %187 = load ptr, ptr %186, align 4
  %188 = zext i8 %185 to i32
  %189 = call i32 @regmap_write(ptr noundef %187, i32 noundef 0, i32 noundef %188) #14
  %190 = getelementptr %struct.adv76xx_video_standards, ptr @adv7604_prim_mode_gr, i32 %178, i32 2
  %191 = load i8, ptr %190, align 1
  %192 = shl i8 %191, 4
  %193 = or i8 %192, 2
  %194 = load ptr, ptr %186, align 4
  %195 = zext i8 %193 to i32
  %196 = call i32 @regmap_write(ptr noundef %194, i32 noundef 1, i32 noundef %195) #14
  br label %445

197:                                              ; preds = %176
  %198 = add nuw nsw i32 %178, 1
  %199 = getelementptr %struct.adv76xx_video_standards, ptr @adv7604_prim_mode_gr, i32 %198
  %200 = icmp eq i32 %198, 22
  br i1 %200, label %291, label %176

201:                                              ; preds = %96
  %202 = icmp ult i32 %121, 4
  br i1 %202, label %203, label %285

203:                                              ; preds = %201
  %204 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef nonnull @adv76xx_prim_mode_hdmi_comp, i32 noundef 250000, i1 noundef zeroext false) #14
  br i1 %204, label %205, label %220

205:                                              ; preds = %255, %250, %245, %240, %235, %230, %225, %220, %203
  %206 = phi i32 [ 0, %203 ], [ 1, %220 ], [ 2, %225 ], [ 3, %230 ], [ 4, %235 ], [ 5, %240 ], [ 6, %245 ], [ 7, %250 ], [ 8, %255 ]
  %207 = getelementptr %struct.adv76xx_video_standards, ptr @adv76xx_prim_mode_hdmi_comp, i32 %206, i32 1
  %208 = load i8, ptr %207, align 1
  %209 = getelementptr i8, ptr %0, i32 1324
  %210 = load ptr, ptr %209, align 4
  %211 = zext i8 %208 to i32
  %212 = call i32 @regmap_write(ptr noundef %210, i32 noundef 0, i32 noundef %211) #14
  %213 = getelementptr %struct.adv76xx_video_standards, ptr @adv76xx_prim_mode_hdmi_comp, i32 %206, i32 2
  %214 = load i8, ptr %213, align 1
  %215 = shl i8 %214, 4
  %216 = or i8 %215, 5
  %217 = load ptr, ptr %209, align 4
  %218 = zext i8 %216 to i32
  %219 = call i32 @regmap_write(ptr noundef %217, i32 noundef 1, i32 noundef %218) #14
  br label %445

220:                                              ; preds = %203
  %221 = load i32, ptr %20, align 4
  %222 = icmp ult i32 %221, 4
  %223 = select i1 %222, i32 250000, i32 1000000
  %224 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }>, ptr @adv76xx_prim_mode_hdmi_comp, i32 0, i32 1, i32 0, i32 0), i32 noundef %223, i1 noundef zeroext false) #14
  br i1 %224, label %205, label %225

225:                                              ; preds = %220
  %226 = load i32, ptr %20, align 4
  %227 = icmp ult i32 %226, 4
  %228 = select i1 %227, i32 250000, i32 1000000
  %229 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }>, ptr @adv76xx_prim_mode_hdmi_comp, i32 0, i32 2, i32 0, i32 0), i32 noundef %228, i1 noundef zeroext false) #14
  br i1 %229, label %205, label %230

230:                                              ; preds = %225
  %231 = load i32, ptr %20, align 4
  %232 = icmp ult i32 %231, 4
  %233 = select i1 %232, i32 250000, i32 1000000
  %234 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }>, ptr @adv76xx_prim_mode_hdmi_comp, i32 0, i32 3, i32 0, i32 0), i32 noundef %233, i1 noundef zeroext false) #14
  br i1 %234, label %205, label %235

235:                                              ; preds = %230
  %236 = load i32, ptr %20, align 4
  %237 = icmp ult i32 %236, 4
  %238 = select i1 %237, i32 250000, i32 1000000
  %239 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }>, ptr @adv76xx_prim_mode_hdmi_comp, i32 0, i32 4, i32 0, i32 0), i32 noundef %238, i1 noundef zeroext false) #14
  br i1 %239, label %205, label %240

240:                                              ; preds = %235
  %241 = load i32, ptr %20, align 4
  %242 = icmp ult i32 %241, 4
  %243 = select i1 %242, i32 250000, i32 1000000
  %244 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }>, ptr @adv76xx_prim_mode_hdmi_comp, i32 0, i32 5, i32 0, i32 0), i32 noundef %243, i1 noundef zeroext false) #14
  br i1 %244, label %205, label %245

245:                                              ; preds = %240
  %246 = load i32, ptr %20, align 4
  %247 = icmp ult i32 %246, 4
  %248 = select i1 %247, i32 250000, i32 1000000
  %249 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }>, ptr @adv76xx_prim_mode_hdmi_comp, i32 0, i32 6, i32 0, i32 0), i32 noundef %248, i1 noundef zeroext false) #14
  br i1 %249, label %205, label %250

250:                                              ; preds = %245
  %251 = load i32, ptr %20, align 4
  %252 = icmp ult i32 %251, 4
  %253 = select i1 %252, i32 250000, i32 1000000
  %254 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }>, ptr @adv76xx_prim_mode_hdmi_comp, i32 0, i32 7, i32 0, i32 0), i32 noundef %253, i1 noundef zeroext false) #14
  br i1 %254, label %205, label %255

255:                                              ; preds = %250
  %256 = load i32, ptr %20, align 4
  %257 = icmp ult i32 %256, 4
  %258 = select i1 %257, i32 250000, i32 1000000
  %259 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef nonnull %1, ptr noundef getelementptr inbounds (<{ <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, i8, i8 }>, %struct.adv76xx_video_standards }>, ptr @adv76xx_prim_mode_hdmi_comp, i32 0, i32 8, i32 0, i32 0), i32 noundef %258, i1 noundef zeroext false) #14
  br i1 %259, label %205, label %260

260:                                              ; preds = %281, %255
  %261 = phi ptr [ %283, %281 ], [ @adv76xx_prim_mode_hdmi_gr, %255 ]
  %262 = phi i32 [ %282, %281 ], [ 0, %255 ]
  %263 = load i32, ptr %20, align 4
  %264 = icmp ult i32 %263, 4
  %265 = select i1 %264, i32 250000, i32 1000000
  %266 = call zeroext i1 @v4l2_match_dv_timings(ptr noundef %1, ptr noundef %261, i32 noundef %265, i1 noundef zeroext false) #14
  br i1 %266, label %267, label %281

267:                                              ; preds = %260
  %268 = getelementptr %struct.adv76xx_video_standards, ptr @adv76xx_prim_mode_hdmi_gr, i32 %262, i32 1
  %269 = load i8, ptr %268, align 1
  %270 = getelementptr i8, ptr %0, i32 1324
  %271 = load ptr, ptr %270, align 4
  %272 = zext i8 %269 to i32
  %273 = call i32 @regmap_write(ptr noundef %271, i32 noundef 0, i32 noundef %272) #14
  %274 = getelementptr %struct.adv76xx_video_standards, ptr @adv76xx_prim_mode_hdmi_gr, i32 %262, i32 2
  %275 = load i8, ptr %274, align 1
  %276 = shl i8 %275, 4
  %277 = or i8 %276, 6
  %278 = load ptr, ptr %270, align 4
  %279 = zext i8 %277 to i32
  %280 = call i32 @regmap_write(ptr noundef %278, i32 noundef 1, i32 noundef %279) #14
  br label %445

281:                                              ; preds = %260
  %282 = add nuw nsw i32 %262, 1
  %283 = getelementptr %struct.adv76xx_video_standards, ptr @adv76xx_prim_mode_hdmi_gr, i32 %282
  %284 = icmp eq i32 %282, 15
  br i1 %284, label %291, label %260

285:                                              ; preds = %201
  %286 = load i32, ptr @debug, align 4
  %287 = icmp sgt i32 %286, 1
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %290 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %289, ptr noundef nonnull @__func__.configure_predefined_video_timings, i32 noundef %121) #15
  br label %291

291:                                              ; preds = %288, %285, %281, %197
  %292 = load i32, ptr %19, align 1
  %293 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 6
  %294 = load i32, ptr %293, align 1
  %295 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 7
  %296 = load i32, ptr %295, align 1
  %297 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 8
  %298 = load i32, ptr %297, align 1
  %299 = add i32 %298, %296
  %300 = add i32 %299, %292
  %301 = add i32 %300, %294
  %302 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 1
  %303 = load i32, ptr %302, align 1
  %304 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 9
  %305 = load i32, ptr %304, align 1
  %306 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 10
  %307 = load i32, ptr %306, align 1
  %308 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 11
  %309 = load i32, ptr %308, align 1
  %310 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 12
  %311 = load i32, ptr %310, align 1
  %312 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 13
  %313 = load i32, ptr %312, align 1
  %314 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 14
  %315 = load i32, ptr %314, align 1
  %316 = add i32 %309, %307
  %317 = add i32 %305, %303
  %318 = add i32 %317, %316
  %319 = add i32 %318, %311
  %320 = add i32 %319, %313
  %321 = add i32 %320, %315
  %322 = add i32 %299, 65532
  %323 = sub i32 %321, %305
  %324 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %1, i32 0, i32 1, i32 0, i32 4
  %325 = load i64, ptr %324, align 1
  %326 = trunc i64 %325 to i32
  %327 = icmp ult i32 %326, 100
  br i1 %327, label %333, label %328

328:                                              ; preds = %291
  %329 = udiv i32 %326, 100
  %330 = mul i32 %301, 286363
  %331 = udiv i32 %330, %329
  %332 = and i32 %331, 65535
  br label %333

333:                                              ; preds = %328, %291
  %334 = phi i32 [ %332, %328 ], [ 0, %291 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #14
  %335 = lshr i32 %301, 8
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 31
  %338 = or i8 %337, -64
  store i8 %338, ptr %4, align 2
  %339 = getelementptr inbounds i8, ptr %4, i32 1
  %340 = trunc i32 %301 to i8
  store i8 %340, ptr %339, align 1
  %341 = load i32, ptr @debug, align 4
  %342 = icmp sgt i32 %341, 1
  br i1 %342, label %343, label %346

343:                                              ; preds = %333
  %344 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %345 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef %344, ptr noundef nonnull @__func__.configure_custom_video_timings) #15
  br label %346

346:                                              ; preds = %343, %333
  %347 = load i32, ptr %20, align 4
  %348 = and i32 %347, -2
  %349 = icmp eq i32 %348, 4
  br i1 %349, label %350, label %415

350:                                              ; preds = %346
  %351 = getelementptr i8, ptr %0, i32 1324
  %352 = load ptr, ptr %351, align 4
  %353 = call i32 @regmap_write(ptr noundef %352, i32 noundef 0, i32 noundef 7) #14
  %354 = load ptr, ptr %351, align 4
  %355 = call i32 @regmap_write(ptr noundef %354, i32 noundef 1, i32 noundef 2) #14
  %356 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %357 = load ptr, ptr %37, align 4
  %358 = call i32 @regmap_read(ptr noundef %357, i32 noundef 129, ptr noundef nonnull %3) #14
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %372, label %360

360:                                              ; preds = %350
  %361 = getelementptr inbounds %struct.i2c_client, ptr %356, i32 0, i32 4, i32 6
  %362 = load ptr, ptr %361, align 8
  %363 = load ptr, ptr %362, align 4
  %364 = getelementptr inbounds %struct.i2c_client, ptr %356, i32 0, i32 3
  %365 = load ptr, ptr %364, align 8
  %366 = getelementptr inbounds %struct.i2c_adapter, ptr %365, i32 0, i32 11
  %367 = load i32, ptr %366, align 4
  %368 = getelementptr inbounds %struct.i2c_client, ptr %356, i32 0, i32 1
  %369 = load i16, ptr %368, align 2
  %370 = zext i16 %369 to i32
  %371 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %363, i32 noundef %367, i32 noundef %370, i32 noundef %370, i32 noundef 129) #15
  br label %374

372:                                              ; preds = %350
  %373 = load i32, ptr %3, align 4
  br label %374

374:                                              ; preds = %372, %360
  %375 = phi i32 [ %358, %360 ], [ %373, %372 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %376 = load ptr, ptr %37, align 4
  %377 = and i32 %375, 239
  %378 = or i32 %377, 16
  %379 = call i32 @regmap_write(ptr noundef %376, i32 noundef 129, i32 noundef %378) #14
  %380 = load ptr, ptr %351, align 4
  %381 = call i32 @regmap_raw_write(ptr noundef %380, i32 noundef 22, ptr noundef nonnull %4, i32 noundef 2) #14
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %386, label %383

383:                                              ; preds = %374
  %384 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %385 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef %384) #15
  br label %386

386:                                              ; preds = %383, %374
  %387 = lshr i32 %322, 4
  %388 = load ptr, ptr %37, align 4
  %389 = and i32 %387, 255
  %390 = call i32 @regmap_write(ptr noundef %388, i32 noundef 162, i32 noundef %389) #14
  %391 = shl i32 %322, 4
  %392 = lshr i32 %300, 8
  %393 = and i32 %392, 15
  %394 = load ptr, ptr %37, align 4
  %395 = and i32 %391, 240
  %396 = or i32 %395, %393
  %397 = call i32 @regmap_write(ptr noundef %394, i32 noundef 163, i32 noundef %396) #14
  %398 = load ptr, ptr %37, align 4
  %399 = and i32 %300, 255
  %400 = call i32 @regmap_write(ptr noundef %398, i32 noundef 164, i32 noundef %399) #14
  %401 = lshr i32 %323, 4
  %402 = load ptr, ptr %37, align 4
  %403 = and i32 %401, 255
  %404 = call i32 @regmap_write(ptr noundef %402, i32 noundef 165, i32 noundef %403) #14
  %405 = shl i32 %323, 4
  %406 = lshr i32 %316, 8
  %407 = and i32 %406, 15
  %408 = load ptr, ptr %37, align 4
  %409 = and i32 %405, 240
  %410 = or i32 %409, %407
  %411 = call i32 @regmap_write(ptr noundef %408, i32 noundef 166, i32 noundef %410) #14
  %412 = load ptr, ptr %37, align 4
  %413 = and i32 %316, 255
  %414 = call i32 @regmap_write(ptr noundef %412, i32 noundef 167, i32 noundef %413) #14
  br label %429

415:                                              ; preds = %346
  %416 = icmp ult i32 %347, 4
  br i1 %416, label %417, label %423

417:                                              ; preds = %415
  %418 = getelementptr i8, ptr %0, i32 1324
  %419 = load ptr, ptr %418, align 4
  %420 = call i32 @regmap_write(ptr noundef %419, i32 noundef 0, i32 noundef 2) #14
  %421 = load ptr, ptr %418, align 4
  %422 = call i32 @regmap_write(ptr noundef %421, i32 noundef 1, i32 noundef 6) #14
  br label %429

423:                                              ; preds = %415
  %424 = load i32, ptr @debug, align 4
  %425 = icmp sgt i32 %424, 1
  br i1 %425, label %426, label %429

426:                                              ; preds = %423
  %427 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %428 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %427, ptr noundef nonnull @__func__.configure_custom_video_timings, i32 noundef %347) #15
  br label %429

429:                                              ; preds = %426, %423, %417, %386
  %430 = lshr i32 %334, 8
  %431 = and i32 %430, 7
  %432 = load ptr, ptr %37, align 4
  %433 = call i32 @regmap_write(ptr noundef %432, i32 noundef 143, i32 noundef %431) #14
  %434 = load ptr, ptr %37, align 4
  %435 = and i32 %334, 255
  %436 = call i32 @regmap_write(ptr noundef %434, i32 noundef 144, i32 noundef %435) #14
  %437 = lshr i32 %321, 4
  %438 = load ptr, ptr %37, align 4
  %439 = and i32 %437, 255
  %440 = call i32 @regmap_write(ptr noundef %438, i32 noundef 171, i32 noundef %439) #14
  %441 = shl i32 %321, 4
  %442 = load ptr, ptr %37, align 4
  %443 = and i32 %441, 240
  %444 = call i32 @regmap_write(ptr noundef %442, i32 noundef 172, i32 noundef %443) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #14
  br label %445

445:                                              ; preds = %429, %267, %205, %183, %126
  call fastcc void @set_rgb_quantization_range(ptr noundef %0)
  %446 = load i32, ptr @debug, align 4
  %447 = icmp sgt i32 %446, 1
  br i1 %447, label %448, label %450

448:                                              ; preds = %445
  %449 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  call void @v4l2_print_dv_timings(ptr noundef %449, ptr noundef nonnull @.str.154, ptr noundef nonnull %1, i1 noundef zeroext true) #14
  br label %450

450:                                              ; preds = %448, %445, %18, %15, %12, %2
  %451 = phi i32 [ -22, %2 ], [ 0, %15 ], [ 0, %12 ], [ -34, %18 ], [ 0, %448 ], [ 0, %445 ]
  ret i32 %451
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @adv76xx_g_dv_timings(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr i8, ptr %0, i32 540
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(132) %1, ptr noundef align 4 dereferenceable(132) %3, i32 132, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @disable_input(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 1308
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr i8, ptr %0, i32 1360
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 26, ptr noundef nonnull %2) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %12, i32 noundef %16, i32 noundef %19, i32 noundef %19, i32 noundef 26) #15
  br label %23

21:                                               ; preds = %1
  %22 = load i32, ptr %2, align 4
  br label %23

23:                                               ; preds = %21, %9
  %24 = phi i32 [ %7, %9 ], [ %22, %21 ]
  %25 = getelementptr i8, ptr %0, i32 -88
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %26 = load ptr, ptr %5, align 4
  %27 = and i32 %24, 239
  %28 = or i32 %27, 16
  %29 = call i32 @regmap_write(ptr noundef %26, i32 noundef 26, i32 noundef %28) #14
  call void @msleep(i32 noundef 16) #14
  %30 = getelementptr i8, ptr %0, i32 1324
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 @regmap_write(ptr noundef %31, i32 noundef 21, i32 noundef 190) #14
  %33 = load ptr, ptr %25, align 4
  %34 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %33, i32 0, i32 22
  %35 = load ptr, ptr %34, align 4
  call void %35(ptr noundef %0, i1 noundef zeroext false) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @select_input(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr i8, ptr %0, i32 -88
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 536
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -2
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %46

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %3, i32 0, i32 26
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 65535
  br i1 %12, label %38, label %13

13:                                               ; preds = %33, %8
  %14 = phi i32 [ %36, %33 ], [ %11, %8 ]
  %15 = phi i32 [ %34, %33 ], [ 0, %8 ]
  %16 = getelementptr %struct.adv76xx_reg_seq, ptr %10, i32 %15, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = lshr i32 %14, 8
  %19 = icmp ugt i32 %14, 3327
  br i1 %19, label %33, label %20

20:                                               ; preds = %13
  %21 = shl nuw i32 1, %18
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %22, i32 0, i32 28
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, %21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = and i32 %14, 255
  %29 = getelementptr %struct.adv76xx_state, ptr %2, i32 0, i32 22, i32 %18
  %30 = load ptr, ptr %29, align 4
  %31 = zext i8 %17 to i32
  %32 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef %28, i32 noundef %31) #14
  br label %33

33:                                               ; preds = %27, %20, %13
  %34 = add i32 %15, 1
  %35 = getelementptr %struct.adv76xx_reg_seq, ptr %10, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 65535
  br i1 %37, label %38, label %13

38:                                               ; preds = %33, %8
  %39 = getelementptr i8, ptr %0, i32 1348
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 0, i32 noundef 8) #14
  %42 = load ptr, ptr %39, align 4
  %43 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 1, i32 noundef 6) #14
  %44 = load ptr, ptr %39, align 4
  %45 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 200, i32 noundef 0) #14
  br label %108

46:                                               ; preds = %1
  %47 = icmp ult i32 %5, 4
  br i1 %47, label %48, label %102

48:                                               ; preds = %46
  %49 = getelementptr i8, ptr %0, i32 1360
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 0, i32 noundef %5) #14
  %52 = getelementptr %struct.adv76xx_chip_info, ptr %3, i32 0, i32 26, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 65535
  br i1 %55, label %81, label %56

56:                                               ; preds = %76, %48
  %57 = phi i32 [ %79, %76 ], [ %54, %48 ]
  %58 = phi i32 [ %77, %76 ], [ 0, %48 ]
  %59 = getelementptr %struct.adv76xx_reg_seq, ptr %53, i32 %58, i32 1
  %60 = load i8, ptr %59, align 4
  %61 = lshr i32 %57, 8
  %62 = icmp ugt i32 %57, 3327
  br i1 %62, label %76, label %63

63:                                               ; preds = %56
  %64 = shl nuw i32 1, %61
  %65 = load ptr, ptr %2, align 4
  %66 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %65, i32 0, i32 28
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, %64
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %63
  %71 = and i32 %57, 255
  %72 = getelementptr %struct.adv76xx_state, ptr %2, i32 0, i32 22, i32 %61
  %73 = load ptr, ptr %72, align 4
  %74 = zext i8 %60 to i32
  %75 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef %71, i32 noundef %74) #14
  br label %76

76:                                               ; preds = %70, %63, %56
  %77 = add i32 %58, 1
  %78 = getelementptr %struct.adv76xx_reg_seq, ptr %53, i32 %77
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 65535
  br i1 %80, label %81, label %56

81:                                               ; preds = %76, %48
  %82 = load ptr, ptr %2, align 4
  %83 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %82, i32 0, i32 1
  %84 = load i8, ptr %83, align 4, !range !9
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  %87 = getelementptr i8, ptr %0, i32 1348
  %88 = load ptr, ptr %87, align 4
  %89 = tail call i32 @regmap_write(ptr noundef %88, i32 noundef 0, i32 noundef 255) #14
  %90 = load ptr, ptr %87, align 4
  %91 = tail call i32 @regmap_write(ptr noundef %90, i32 noundef 1, i32 noundef 254) #14
  %92 = load ptr, ptr %87, align 4
  %93 = tail call i32 @regmap_write(ptr noundef %92, i32 noundef 200, i32 noundef 64) #14
  br label %94

94:                                               ; preds = %86, %81
  %95 = getelementptr i8, ptr %0, i32 1368
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 @regmap_write(ptr noundef %96, i32 noundef 62, i32 noundef 0) #14
  %98 = load ptr, ptr %95, align 4
  %99 = tail call i32 @regmap_write(ptr noundef %98, i32 noundef 195, i32 noundef 57) #14
  %100 = load ptr, ptr %95, align 4
  %101 = tail call i32 @regmap_write(ptr noundef %100, i32 noundef 64, i32 noundef 128) #14
  br label %108

102:                                              ; preds = %46
  %103 = load i32, ptr @debug, align 4
  %104 = icmp sgt i32 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %106, ptr noundef nonnull @__func__.select_input, i32 noundef %5) #15
  br label %108

108:                                              ; preds = %105, %102, %94, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @enable_input(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -88
  %5 = getelementptr i8, ptr %0, i32 536
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -2
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 1324
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 21, i32 noundef 176) #14
  br label %77

13:                                               ; preds = %1
  %14 = icmp ult i32 %6, 4
  br i1 %14, label %15, label %71

15:                                               ; preds = %13
  %16 = getelementptr i8, ptr %0, i32 1308
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %18 = getelementptr i8, ptr %0, i32 1360
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @regmap_read(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %3) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 1
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %25, i32 noundef %29, i32 noundef %32, i32 noundef %32, i32 noundef 0) #15
  br label %36

34:                                               ; preds = %15
  %35 = load i32, ptr %3, align 4
  br label %36

36:                                               ; preds = %34, %22
  %37 = phi i32 [ %20, %22 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %38 = and i32 %37, 252
  %39 = load ptr, ptr %18, align 4
  %40 = or i32 %38, %6
  %41 = call i32 @regmap_write(ptr noundef %39, i32 noundef 0, i32 noundef %40) #14
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %42, i32 0, i32 22
  %44 = load ptr, ptr %43, align 4
  call void %44(ptr noundef %0, i1 noundef zeroext true) #14
  %45 = getelementptr i8, ptr %0, i32 1324
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 @regmap_write(ptr noundef %46, i32 noundef 21, i32 noundef 160) #14
  %48 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %49 = load ptr, ptr %18, align 4
  %50 = call i32 @regmap_read(ptr noundef %49, i32 noundef 26, ptr noundef nonnull %2) #14
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %36
  %53 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4, i32 6
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.i2c_adapter, ptr %57, i32 0, i32 11
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 1
  %61 = load i16, ptr %60, align 2
  %62 = zext i16 %61 to i32
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %55, i32 noundef %59, i32 noundef %62, i32 noundef %62, i32 noundef 26) #15
  br label %66

64:                                               ; preds = %36
  %65 = load i32, ptr %2, align 4
  br label %66

66:                                               ; preds = %64, %52
  %67 = phi i32 [ %50, %52 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %68 = and i32 %67, 239
  %69 = load ptr, ptr %18, align 4
  %70 = call i32 @regmap_write(ptr noundef %69, i32 noundef 26, i32 noundef %68) #14
  br label %77

71:                                               ; preds = %13
  %72 = load i32, ptr @debug, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %75, ptr noundef nonnull @__func__.enable_input, i32 noundef %6) #15
  br label %77

77:                                               ; preds = %74, %71, %66, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @adv76xx_enum_mbus_code(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #10 {
  %4 = getelementptr i8, ptr %0, i32 -88
  %5 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %7, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %7, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.adv76xx_format_info, ptr %13, i32 %6
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i32 [ 0, %11 ], [ -22, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_get_format(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 420
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %46

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(48) %10, i8 0, i32 48, i1 false) #14
  %11 = getelementptr i8, ptr %0, i32 544
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 4
  %13 = getelementptr i8, ptr %0, i32 548
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 3
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  store i32 8, ptr %17, align 4
  %18 = getelementptr i8, ptr %0, i32 608
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %9
  %23 = load i32, ptr %13, align 4
  %24 = icmp ult i32 %23, 577
  %25 = select i1 %24, i32 1, i32 3
  store i32 %25, ptr %17, align 4
  br label %26

26:                                               ; preds = %22, %9
  %27 = load i32, ptr %2, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = icmp ult i32 %5, %32
  br i1 %33, label %35, label %34, !prof !10

34:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.162, i32 noundef 998, i32 noundef 9, ptr noundef null) #14
  br label %35

35:                                               ; preds = %34, %29
  %36 = phi i32 [ 0, %34 ], [ %5, %29 ]
  %37 = load ptr, ptr %1, align 4
  %38 = getelementptr %struct.v4l2_subdev_pad_config, ptr %37, i32 %36, i32 0, i32 2
  br label %42

39:                                               ; preds = %26
  %40 = getelementptr i8, ptr %0, i32 672
  %41 = load ptr, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi ptr [ %38, %35 ], [ %41, %39 ]
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  store i32 %44, ptr %45, align 4
  br label %46

46:                                               ; preds = %42, %3
  %47 = phi i32 [ -22, %3 ], [ 0, %42 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_set_format(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -88
  %5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 420
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %75

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %14, i32 0, i32 21
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %14, i32 0, i32 20
  %20 = load ptr, ptr %19, align 4
  br label %24

21:                                               ; preds = %24
  %22 = add nuw i32 %25, 1
  %23 = icmp eq i32 %22, %16
  br i1 %23, label %31, label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ 0, %18 ], [ %22, %21 ]
  %26 = getelementptr %struct.adv76xx_format_info, ptr %20, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %13
  br i1 %28, label %29, label %21

29:                                               ; preds = %24
  %30 = icmp eq ptr %26, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %29, %21
  br label %35

32:                                               ; preds = %35
  %33 = add nuw i32 %36, 1
  %34 = icmp eq i32 %33, %16
  br i1 %34, label %40, label %35

35:                                               ; preds = %32, %31
  %36 = phi i32 [ %33, %32 ], [ 0, %31 ]
  %37 = getelementptr %struct.adv76xx_format_info, ptr %20, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 8200
  br i1 %39, label %40, label %32

40:                                               ; preds = %35, %32, %29, %10
  %41 = phi ptr [ %26, %29 ], [ null, %10 ], [ %37, %35 ], [ null, %32 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(48) %11, i8 0, i32 48, i1 false) #14
  %42 = getelementptr i8, ptr %0, i32 544
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %11, align 4
  %44 = getelementptr i8, ptr %0, i32 548
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 3
  store i32 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  store i32 8, ptr %48, align 4
  %49 = getelementptr i8, ptr %0, i32 608
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %40
  %54 = load i32, ptr %44, align 4
  %55 = icmp ult i32 %54, 577
  %56 = select i1 %55, i32 1, i32 3
  store i32 %56, ptr %48, align 4
  br label %57

57:                                               ; preds = %53, %40
  %58 = load i32, ptr %41, align 4
  store i32 %58, ptr %12, align 4
  %59 = load i32, ptr %2, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %63 = load i16, ptr %62, align 4
  %64 = zext i16 %63 to i32
  %65 = icmp ult i32 %6, %64
  br i1 %65, label %68, label %66, !prof !10

66:                                               ; preds = %61
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.162, i32 noundef 998, i32 noundef 9, ptr noundef null) #14
  %67 = load i32, ptr %12, align 4
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi i32 [ %67, %66 ], [ %58, %61 ]
  %70 = phi i32 [ 0, %66 ], [ %6, %61 ]
  %71 = load ptr, ptr %1, align 4
  %72 = getelementptr %struct.v4l2_subdev_pad_config, ptr %71, i32 %70, i32 0, i32 2
  store i32 %69, ptr %72, align 4
  br label %75

73:                                               ; preds = %57
  %74 = getelementptr i8, ptr %0, i32 672
  store ptr %41, ptr %74, align 4
  tail call fastcc void @adv76xx_setup_format(ptr noundef %4)
  br label %75

75:                                               ; preds = %73, %68, %3
  %76 = phi i32 [ -22, %3 ], [ 0, %73 ], [ 0, %68 ]
  ret i32 %76
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @adv76xx_get_selection(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #11 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 2
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  store i32 0, ptr %12, align 4
  %13 = getelementptr i8, ptr %0, i32 544
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 548
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %10, %6, %3
  %20 = phi i32 [ 0, %10 ], [ -22, %3 ], [ -22, %6 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @adv76xx_get_edid(ptr noundef readonly %0, ptr nocapture noundef %1) #12 {
  %3 = getelementptr inbounds %struct.v4l2_edid, ptr %1, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false)
  %4 = load i32, ptr %1, align 4
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %48

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 1188
  %8 = load i32, ptr %7, align 4
  %9 = shl nuw nsw i32 1, %4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr i8, ptr %0, i32 676
  %13 = select i1 %11, ptr null, ptr %12
  %14 = getelementptr inbounds %struct.v4l2_edid, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.v4l2_edid, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = icmp eq ptr %13, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = getelementptr i8, ptr %0, i32 1192
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i32 [ %25, %23 ], [ 0, %21 ]
  store i32 %27, ptr %18, align 4
  br label %48

28:                                               ; preds = %17, %6
  %29 = icmp eq ptr %13, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %28
  %31 = getelementptr i8, ptr %0, i32 1192
  %32 = load i32, ptr %31, align 4
  %33 = icmp ugt i32 %32, %15
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.v4l2_edid, ptr %1, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %15
  %38 = icmp ugt i32 %37, %32
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = sub i32 %32, %15
  store i32 %40, ptr %35, align 4
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi i32 [ %40, %39 ], [ %36, %34 ]
  %43 = getelementptr inbounds %struct.v4l2_edid, ptr %1, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = shl i32 %15, 7
  %46 = getelementptr i8, ptr %13, i32 %45
  %47 = shl i32 %42, 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %44, ptr align 1 %46, i32 %47, i1 false)
  br label %48

48:                                               ; preds = %41, %30, %28, %26, %2
  %49 = phi i32 [ 0, %26 ], [ 0, %41 ], [ -22, %2 ], [ -61, %28 ], [ -22, %30 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_set_edid(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca %struct.v4l2_fract, align 8
  %9 = getelementptr i8, ptr %0, i32 -88
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #14
  store i16 0, ptr %7, align 2, !annotation !8
  %11 = getelementptr inbounds %struct.v4l2_edid, ptr %1, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %11, i8 0, i32 20, i1 false)
  %12 = load i32, ptr %1, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %324, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.v4l2_edid, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %324

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.v4l2_edid, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %75

22:                                               ; preds = %18
  %23 = shl nuw nsw i32 1, %12
  %24 = xor i32 %23, -1
  %25 = getelementptr i8, ptr %0, i32 1188
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, %24
  store i32 %27, ptr %25, align 4
  tail call fastcc void @adv76xx_set_hpd(ptr noundef %9, i32 noundef %27)
  %28 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %10, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %25, align 4
  %31 = getelementptr i8, ptr %0, i32 1300
  %32 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %33 = getelementptr i8, ptr %0, i32 1352
  %34 = load ptr, ptr %33, align 4
  %35 = and i32 %29, 255
  %36 = call i32 @regmap_read(ptr noundef %34, i32 noundef %35, ptr noundef nonnull %5) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4, i32 6
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 1
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %41, i32 noundef %45, i32 noundef %48, i32 noundef %48, i32 noundef %35) #15
  br label %52

50:                                               ; preds = %22
  %51 = load i32, ptr %5, align 4
  br label %52

52:                                               ; preds = %50, %38
  %53 = phi i32 [ %36, %38 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %54 = and i32 %53, 240
  %55 = load ptr, ptr %33, align 4
  %56 = and i32 %30, 255
  %57 = or i32 %54, %56
  %58 = call i32 @regmap_write(ptr noundef %55, i32 noundef %35, i32 noundef %57) #14
  %59 = getelementptr i8, ptr %0, i32 1200
  store i32 16, ptr %59, align 4
  %60 = getelementptr i8, ptr %0, i32 1204
  store i32 9, ptr %60, align 4
  %61 = load i32, ptr %25, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = getelementptr i8, ptr %0, i32 1192
  store i32 0, ptr %64, align 4
  %65 = getelementptr i8, ptr %0, i32 1260
  %66 = load ptr, ptr %65, align 4
  call void @cec_s_phys_addr(ptr noundef %66, i16 noundef zeroext -1, i1 noundef zeroext false) #14
  br label %67

67:                                               ; preds = %63, %52
  %68 = load i32, ptr @debug, align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %324

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %72 = load i32, ptr %1, align 4
  %73 = load i32, ptr %25, align 4
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef %71, ptr noundef nonnull @__func__.adv76xx_set_edid, i32 noundef %72, i32 noundef %73) #15
  br label %324

75:                                               ; preds = %18
  %76 = icmp ugt i32 %20, 4
  br i1 %76, label %77, label %78

77:                                               ; preds = %75
  store i32 4, ptr %19, align 4
  br label %324

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.v4l2_edid, ptr %1, i32 0, i32 4
  %80 = load ptr, ptr %79, align 4
  %81 = shl nuw nsw i32 %20, 7
  %82 = call zeroext i16 @v4l2_get_edid_phys_addr(ptr noundef %80, i32 noundef %81, ptr noundef nonnull %6) #14
  %83 = call i32 @v4l2_phys_addr_validate(i16 noundef zeroext %82, ptr noundef nonnull %7, ptr noundef null) #14
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %324

85:                                               ; preds = %78
  %86 = load i32, ptr %6, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  store i32 128, ptr %6, align 4
  %89 = load ptr, ptr %79, align 4
  %90 = getelementptr i8, ptr %89, i32 128
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i16
  %93 = shl nuw i16 %92, 8
  %94 = getelementptr i8, ptr %89, i32 129
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i16
  %97 = or i16 %93, %96
  br label %98

98:                                               ; preds = %88, %85
  %99 = phi i16 [ %82, %85 ], [ %97, %88 ]
  %100 = load i32, ptr @debug, align 4
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %104 = load i32, ptr %1, align 4
  %105 = getelementptr i8, ptr %0, i32 1188
  %106 = load i32, ptr %105, align 4
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef %103, ptr noundef nonnull @__func__.adv76xx_set_edid, i32 noundef %104, i32 noundef %106) #15
  br label %108

108:                                              ; preds = %102, %98
  %109 = getelementptr i8, ptr %0, i32 1212
  %110 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %109) #14
  call fastcc void @adv76xx_set_hpd(ptr noundef %9, i32 noundef 0)
  %111 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %10, i32 0, i32 4
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i8, ptr %0, i32 1300
  %114 = load ptr, ptr %113, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %115 = getelementptr i8, ptr %0, i32 1352
  %116 = load ptr, ptr %115, align 4
  %117 = and i32 %112, 255
  %118 = call i32 @regmap_read(ptr noundef %116, i32 noundef %117, ptr noundef nonnull %4) #14
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %108
  %121 = getelementptr inbounds %struct.i2c_client, ptr %114, i32 0, i32 4, i32 6
  %122 = load ptr, ptr %121, align 8
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.i2c_client, ptr %114, i32 0, i32 3
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.i2c_adapter, ptr %125, i32 0, i32 11
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.i2c_client, ptr %114, i32 0, i32 1
  %129 = load i16, ptr %128, align 2
  %130 = zext i16 %129 to i32
  %131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %123, i32 noundef %127, i32 noundef %130, i32 noundef %130, i32 noundef %117) #15
  br label %134

132:                                              ; preds = %108
  %133 = load i32, ptr %4, align 4
  br label %134

134:                                              ; preds = %132, %120
  %135 = phi i32 [ %118, %120 ], [ %133, %132 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %136 = and i32 %135, 240
  %137 = load ptr, ptr %115, align 4
  %138 = call i32 @regmap_write(ptr noundef %137, i32 noundef %117, i32 noundef %136) #14
  %139 = load i32, ptr %1, align 4
  switch i32 %139, label %324 [
    i32 0, label %140
    i32 1, label %145
    i32 2, label %160
    i32 3, label %176
  ]

140:                                              ; preds = %134
  %141 = lshr i16 %99, 8
  %142 = getelementptr i8, ptr %0, i32 1196
  store i16 %141, ptr %142, align 4
  %143 = and i16 %99, 255
  %144 = getelementptr i8, ptr %0, i32 1198
  store i16 %143, ptr %144, align 2
  br label %192

145:                                              ; preds = %134
  %146 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %10, i32 0, i32 10
  %147 = load i32, ptr %146, align 4
  %148 = lshr i16 %99, 8
  %149 = zext i16 %148 to i32
  %150 = load ptr, ptr %115, align 4
  %151 = and i32 %147, 255
  %152 = call i32 @regmap_write(ptr noundef %150, i32 noundef %151, i32 noundef %149) #14
  %153 = load i32, ptr %146, align 4
  %154 = add i32 %153, 1
  %155 = load ptr, ptr %115, align 4
  %156 = and i32 %154, 255
  %157 = and i16 %99, 255
  %158 = zext i16 %157 to i32
  %159 = call i32 @regmap_write(ptr noundef %155, i32 noundef %156, i32 noundef %158) #14
  br label %192

160:                                              ; preds = %134
  %161 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %10, i32 0, i32 10
  %162 = load i32, ptr %161, align 4
  %163 = add i32 %162, 2
  %164 = lshr i16 %99, 8
  %165 = zext i16 %164 to i32
  %166 = load ptr, ptr %115, align 4
  %167 = and i32 %163, 255
  %168 = call i32 @regmap_write(ptr noundef %166, i32 noundef %167, i32 noundef %165) #14
  %169 = load i32, ptr %161, align 4
  %170 = add i32 %169, 3
  %171 = load ptr, ptr %115, align 4
  %172 = and i32 %170, 255
  %173 = and i16 %99, 255
  %174 = zext i16 %173 to i32
  %175 = call i32 @regmap_write(ptr noundef %171, i32 noundef %172, i32 noundef %174) #14
  br label %192

176:                                              ; preds = %134
  %177 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %10, i32 0, i32 10
  %178 = load i32, ptr %177, align 4
  %179 = add i32 %178, 4
  %180 = lshr i16 %99, 8
  %181 = zext i16 %180 to i32
  %182 = load ptr, ptr %115, align 4
  %183 = and i32 %179, 255
  %184 = call i32 @regmap_write(ptr noundef %182, i32 noundef %183, i32 noundef %181) #14
  %185 = load i32, ptr %177, align 4
  %186 = add i32 %185, 5
  %187 = load ptr, ptr %115, align 4
  %188 = and i32 %186, 255
  %189 = and i16 %99, 255
  %190 = zext i16 %189 to i32
  %191 = call i32 @regmap_write(ptr noundef %187, i32 noundef %188, i32 noundef %190) #14
  br label %192

192:                                              ; preds = %176, %160, %145, %140
  %193 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %10, i32 0, i32 8
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %212, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %10, i32 0, i32 9
  %198 = load i32, ptr %197, align 4
  %199 = trunc i32 %198 to i8
  %200 = load i32, ptr %6, align 4
  %201 = load ptr, ptr %115, align 4
  %202 = and i32 %194, 255
  %203 = and i32 %200, 255
  %204 = call i32 @regmap_write(ptr noundef %201, i32 noundef %202, i32 noundef %203) #14
  %205 = load i32, ptr %193, align 4
  %206 = trunc i32 %205 to i8
  %207 = add i8 %206, 1
  %208 = load i32, ptr %6, align 4
  %209 = and i32 %208, 256
  %210 = icmp eq i32 %209, 0
  %211 = select i1 %210, i8 0, i8 %199
  call fastcc void @rep_write_clr_set(ptr noundef %0, i8 noundef zeroext %207, i8 noundef zeroext %199, i8 noundef zeroext %211)
  br label %212

212:                                              ; preds = %196, %192
  %213 = getelementptr i8, ptr %0, i32 1196
  %214 = load i16, ptr %213, align 4
  %215 = trunc i16 %214 to i8
  %216 = load ptr, ptr %79, align 4
  %217 = load i32, ptr %6, align 4
  %218 = getelementptr i8, ptr %216, i32 %217
  store i8 %215, ptr %218, align 1
  %219 = getelementptr i8, ptr %0, i32 1198
  %220 = load i16, ptr %219, align 2
  %221 = trunc i16 %220 to i8
  %222 = load ptr, ptr %79, align 4
  %223 = load i32, ptr %6, align 4
  %224 = add i32 %223, 1
  %225 = getelementptr i8, ptr %222, i32 %224
  store i8 %221, ptr %225, align 1
  %226 = getelementptr i8, ptr %0, i32 676
  %227 = load ptr, ptr %79, align 4
  %228 = load i32, ptr %19, align 4
  %229 = shl i32 %228, 7
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %226, ptr align 1 %227, i32 %229, i1 false)
  %230 = load i32, ptr %19, align 4
  %231 = getelementptr i8, ptr %0, i32 1192
  store i32 %230, ptr %231, align 4
  %232 = getelementptr i8, ptr %0, i32 1200
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  %233 = load ptr, ptr %79, align 4
  %234 = getelementptr i8, ptr %233, i32 21
  %235 = load i8, ptr %234, align 1
  %236 = getelementptr i8, ptr %233, i32 22
  %237 = load i8, ptr %236, align 1
  call void @v4l2_calc_aspect_ratio(ptr nonnull sret(%struct.v4l2_fract) align 4 %8, i8 noundef zeroext %235, i8 noundef zeroext %237) #14
  %238 = load i64, ptr %8, align 8
  store i64 %238, ptr %232, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  %239 = load i32, ptr %1, align 4
  %240 = shl nuw i32 1, %239
  %241 = getelementptr i8, ptr %0, i32 1188
  %242 = load i32, ptr %241, align 4
  %243 = or i32 %242, %240
  store i32 %243, ptr %241, align 4
  %244 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %10, i32 0, i32 6
  %245 = load i32, ptr %244, align 4
  %246 = trunc i32 %245 to i8
  %247 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %10, i32 0, i32 7
  %248 = load i32, ptr %247, align 4
  %249 = trunc i32 %248 to i8
  call fastcc void @rep_write_clr_set(ptr noundef %0, i8 noundef zeroext %246, i8 noundef zeroext %249, i8 noundef zeroext 0)
  %250 = load i32, ptr %19, align 4
  %251 = call i32 @llvm.umin.i32(i32 %250, i32 2)
  %252 = shl nuw nsw i32 %251, 7
  %253 = call fastcc i32 @edid_write_block(ptr noundef %0, i32 noundef %252, ptr noundef %226)
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %212
  %256 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %257 = load i32, ptr %1, align 4
  %258 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef %256, i32 noundef %253, i32 noundef %257) #15
  br label %324

259:                                              ; preds = %212
  %260 = load i32, ptr %19, align 4
  %261 = icmp ugt i32 %260, 2
  br i1 %261, label %262, label %277

262:                                              ; preds = %259
  %263 = load i32, ptr %244, align 4
  %264 = trunc i32 %263 to i8
  %265 = load i32, ptr %247, align 4
  %266 = trunc i32 %265 to i8
  call fastcc void @rep_write_clr_set(ptr noundef %0, i8 noundef zeroext %264, i8 noundef zeroext %266, i8 noundef zeroext %266)
  %267 = load i32, ptr %19, align 4
  %268 = shl i32 %267, 7
  %269 = add i32 %268, -256
  %270 = getelementptr i8, ptr %0, i32 932
  %271 = call fastcc i32 @edid_write_block(ptr noundef %0, i32 noundef %269, ptr noundef %270)
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %262
  %274 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %275 = load i32, ptr %1, align 4
  %276 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef %274, i32 noundef %271, i32 noundef %275) #15
  br label %324

277:                                              ; preds = %262, %259
  %278 = load i32, ptr %111, align 4
  %279 = trunc i32 %278 to i8
  %280 = load i32, ptr %241, align 4
  %281 = trunc i32 %280 to i8
  call fastcc void @rep_write_clr_set(ptr noundef %0, i8 noundef zeroext %279, i8 noundef zeroext 15, i8 noundef zeroext %281)
  %282 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %10, i32 0, i32 5
  br label %283

283:                                              ; preds = %310, %277
  %284 = phi i32 [ 0, %277 ], [ %312, %310 ]
  %285 = load i32, ptr %282, align 4
  %286 = load ptr, ptr %113, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %287 = load ptr, ptr %115, align 4
  %288 = and i32 %285, 255
  %289 = call i32 @regmap_read(ptr noundef %287, i32 noundef %288, ptr noundef nonnull %3) #14
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %303, label %291

291:                                              ; preds = %283
  %292 = getelementptr inbounds %struct.i2c_client, ptr %286, i32 0, i32 4, i32 6
  %293 = load ptr, ptr %292, align 8
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr inbounds %struct.i2c_client, ptr %286, i32 0, i32 3
  %296 = load ptr, ptr %295, align 8
  %297 = getelementptr inbounds %struct.i2c_adapter, ptr %296, i32 0, i32 11
  %298 = load i32, ptr %297, align 4
  %299 = getelementptr inbounds %struct.i2c_client, ptr %286, i32 0, i32 1
  %300 = load i16, ptr %299, align 2
  %301 = zext i16 %300 to i32
  %302 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %294, i32 noundef %298, i32 noundef %301, i32 noundef %301, i32 noundef %288) #15
  br label %305

303:                                              ; preds = %283
  %304 = load i32, ptr %3, align 4
  br label %305

305:                                              ; preds = %303, %291
  %306 = phi i32 [ %289, %291 ], [ %304, %303 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %307 = load i32, ptr %241, align 4
  %308 = and i32 %307, %306
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %305
  %311 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %311(i32 noundef 214748000) #14
  %312 = add nuw nsw i32 %284, 1
  %313 = icmp eq i32 %312, 1000
  br i1 %313, label %314, label %283

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %316 = load i32, ptr %241, align 4
  %317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef %315, i32 noundef %316) #15
  br label %324

318:                                              ; preds = %305
  %319 = getelementptr i8, ptr %0, i32 1260
  %320 = load ptr, ptr %319, align 4
  %321 = load i16, ptr %7, align 2
  call void @cec_s_phys_addr(ptr noundef %320, i16 noundef zeroext %321, i1 noundef zeroext false) #14
  %322 = load ptr, ptr @system_wq, align 4
  %323 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %322, ptr noundef %109, i32 noundef 10) #14
  br label %324

324:                                              ; preds = %318, %314, %273, %255, %134, %78, %77, %70, %67, %14, %2
  %325 = phi i32 [ -7, %77 ], [ %253, %255 ], [ %271, %273 ], [ -5, %314 ], [ 0, %318 ], [ -22, %2 ], [ -22, %14 ], [ 0, %70 ], [ 0, %67 ], [ %83, %78 ], [ -22, %134 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  ret i32 %325
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @adv76xx_dv_timings_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 {
  %3 = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 420
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = icmp ult i32 %4, 4
  %10 = select i1 %9, ptr @adv76xx_timings_cap_digital, ptr @adv7604_timings_cap_analog
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(144) %1, ptr noundef nonnull align 4 dereferenceable(144) %10, i32 144, i1 false)
  store i32 %4, ptr %3, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ 0, %8 ], [ -22, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_enum_dv_timings(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 420
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = icmp ult i32 %4, 4
  %10 = select i1 %9, ptr @adv76xx_timings_cap_digital, ptr @adv7604_timings_cap_analog
  %11 = tail call i32 @v4l2_enum_dv_timings_cap(ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @adv76xx_check_dv_timings, ptr noundef null) #14
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ -22, %2 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @adv76xx_setup_format(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.adv76xx_state, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.adv76xx_format_info, ptr %6, i32 0, i32 2
  %8 = load i8, ptr %7, align 1, !range !9
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 0, i32 2
  %11 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 21
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %13 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 22
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef 2, ptr noundef nonnull %4) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %20, i32 noundef %24, i32 noundef %27, i32 noundef %27, i32 noundef 2) #15
  br label %31

29:                                               ; preds = %1
  %30 = load i32, ptr %4, align 4
  br label %31

31:                                               ; preds = %29, %17
  %32 = phi i32 [ %15, %17 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %33 = and i32 %32, 253
  %34 = or i32 %33, %10
  %35 = load ptr, ptr %13, align 4
  %36 = call i32 @regmap_write(ptr noundef %35, i32 noundef 2, i32 noundef %34) #14
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr inbounds %struct.adv76xx_format_info, ptr %37, i32 0, i32 4
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr inbounds %struct.adv76xx_state, ptr %0, i32 0, i32 1, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = trunc i32 %41 to i8
  %43 = or i8 %39, %42
  %44 = load ptr, ptr %13, align 4
  %45 = zext i8 %43 to i32
  %46 = call i32 @regmap_write(ptr noundef %44, i32 noundef 3, i32 noundef %45) #14
  %47 = getelementptr inbounds %struct.adv76xx_state, ptr %0, i32 0, i32 1, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr inbounds %struct.adv76xx_format_info, ptr %49, i32 0, i32 1
  %51 = load i8, ptr %50, align 4
  %52 = lshr i8 %51, 5
  %53 = zext i8 %52 to i32
  %54 = getelementptr [6 x [6 x i32]], ptr @adv76xx_op_ch_sel.op_ch_sel, i32 0, i32 %48, i32 %53
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %57 = load ptr, ptr %13, align 4
  %58 = call i32 @regmap_read(ptr noundef %57, i32 noundef 4, ptr noundef nonnull %3) #14
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %31
  %61 = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 4, i32 6
  %62 = load ptr, ptr %61, align 8
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 3
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.i2c_adapter, ptr %65, i32 0, i32 11
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 1
  %69 = load i16, ptr %68, align 2
  %70 = zext i16 %69 to i32
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %63, i32 noundef %67, i32 noundef %70, i32 noundef %70, i32 noundef 4) #15
  br label %74

72:                                               ; preds = %31
  %73 = load i32, ptr %3, align 4
  br label %74

74:                                               ; preds = %72, %60
  %75 = phi i32 [ %58, %60 ], [ %73, %72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %76 = and i32 %75, 31
  %77 = load ptr, ptr %13, align 4
  %78 = and i32 %55, 255
  %79 = or i32 %76, %78
  %80 = call i32 @regmap_write(ptr noundef %77, i32 noundef 4, i32 noundef %79) #14
  %81 = load ptr, ptr %5, align 4
  %82 = getelementptr inbounds %struct.adv76xx_format_info, ptr %81, i32 0, i32 3
  %83 = load i8, ptr %82, align 2, !range !9
  %84 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %85 = load ptr, ptr %13, align 4
  %86 = call i32 @regmap_read(ptr noundef %85, i32 noundef 5, ptr noundef nonnull %2) #14
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.i2c_client, ptr %84, i32 0, i32 4, i32 6
  %90 = load ptr, ptr %89, align 8
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.i2c_client, ptr %84, i32 0, i32 3
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.i2c_adapter, ptr %93, i32 0, i32 11
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.i2c_client, ptr %84, i32 0, i32 1
  %97 = load i16, ptr %96, align 2
  %98 = zext i16 %97 to i32
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %91, i32 noundef %95, i32 noundef %98, i32 noundef %98, i32 noundef 5) #15
  br label %102

100:                                              ; preds = %74
  %101 = load i32, ptr %2, align 4
  br label %102

102:                                              ; preds = %100, %88
  %103 = phi i32 [ %86, %88 ], [ %101, %100 ]
  %104 = getelementptr inbounds %struct.adv76xx_state, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %105 = trunc i32 %103 to i8
  %106 = and i8 %105, -2
  %107 = or i8 %106, %83
  %108 = load ptr, ptr %13, align 4
  %109 = zext i8 %107 to i32
  %110 = call i32 @regmap_write(ptr noundef %108, i32 noundef 5, i32 noundef %109) #14
  call fastcc void @set_rgb_quantization_range(ptr noundef %104)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @adv76xx_set_hpd(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %5, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %7, label %15, label %11

11:                                               ; preds = %2
  br i1 %10, label %64, label %12

12:                                               ; preds = %11
  %13 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 21
  %14 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 22
  br label %27

15:                                               ; preds = %2
  br i1 %10, label %64, label %16

16:                                               ; preds = %16, %15
  %17 = phi i32 [ %22, %16 ], [ 0, %15 ]
  %18 = getelementptr %struct.adv76xx_state, ptr %0, i32 0, i32 2, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = shl nuw i32 1, %17
  %21 = and i32 %20, %1
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef %21) #14
  %22 = add nuw i32 %17, 1
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %16, label %64

27:                                               ; preds = %51, %12
  %28 = phi i32 [ 0, %12 ], [ %59, %51 ]
  %29 = lshr i32 %1, %28
  %30 = and i32 %29, 1
  %31 = sub i32 7, %28
  %32 = shl nuw i32 %30, %31
  %33 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %34 = load ptr, ptr %14, align 4
  %35 = call i32 @regmap_read(ptr noundef %34, i32 noundef 32, ptr noundef nonnull %3) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4, i32 6
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.i2c_adapter, ptr %42, i32 0, i32 11
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 1
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %40, i32 noundef %44, i32 noundef %47, i32 noundef %47, i32 noundef 32) #15
  br label %51

49:                                               ; preds = %27
  %50 = load i32, ptr %3, align 4
  br label %51

51:                                               ; preds = %49, %37
  %52 = phi i32 [ %35, %37 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %53 = ashr i32 -129, %28
  %54 = and i32 %52, %53
  %55 = or i32 %54, %32
  %56 = load ptr, ptr %14, align 4
  %57 = and i32 %55, 255
  %58 = call i32 @regmap_write(ptr noundef %56, i32 noundef 32, i32 noundef %57) #14
  %59 = add nuw i32 %28, 1
  %60 = load ptr, ptr %0, align 4
  %61 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %60, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %27, label %64

64:                                               ; preds = %51, %16, %15, %11
  %65 = getelementptr inbounds %struct.adv76xx_state, ptr %0, i32 0, i32 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.adv76xx_state, ptr %0, i32 0, i32 4, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.v4l2_device, ptr %69, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  call void %73(ptr noundef nonnull %65, i32 noundef 1, ptr noundef nonnull %4) #14
  br label %76

76:                                               ; preds = %75, %71, %67, %64
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rep_write_clr_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #4 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 1300
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr i8, ptr %0, i32 1352
  %9 = load ptr, ptr %8, align 4
  %10 = zext i8 %1 to i32
  %11 = call i32 @regmap_read(ptr noundef %9, i32 noundef %10, ptr noundef nonnull %5) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %16, i32 noundef %20, i32 noundef %23, i32 noundef %23, i32 noundef %10) #15
  br label %27

25:                                               ; preds = %4
  %26 = load i32, ptr %5, align 4
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi i32 [ %11, %13 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %29 = zext i8 %2 to i32
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = trunc i32 %31 to i8
  %33 = or i8 %32, %3
  %34 = load ptr, ptr %8, align 4
  %35 = zext i8 %33 to i32
  %36 = call i32 @regmap_write(ptr noundef %34, i32 noundef %10, i32 noundef %35) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @v4l2_get_edid_phys_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_phys_addr_validate(i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_calc_aspect_ratio(ptr sret(%struct.v4l2_fract) align 4, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @edid_write_block(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = load i32, ptr @debug, align 4
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef %7, ptr noundef nonnull @__func__.edid_write_block, i32 noundef %1) #15
  br label %9

9:                                                ; preds = %6, %3
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %9
  %12 = getelementptr i8, ptr %0, i32 1356
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ 0, %11 ], [ %20, %13 ]
  %15 = sub i32 %1, %14
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 32)
  %17 = getelementptr i8, ptr %2, i32 %14
  %18 = load ptr, ptr %12, align 4
  %19 = tail call i32 @regmap_raw_write(ptr noundef %18, i32 noundef %14, ptr noundef %17, i32 noundef %16) #14
  %20 = add i32 %16, %14
  %21 = icmp eq i32 %19, 0
  %22 = icmp ult i32 %20, %1
  %23 = and i1 %21, %22
  br i1 %23, label %13, label %24

24:                                               ; preds = %13, %9
  %25 = phi i32 [ 0, %9 ], [ %19, %13 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_enum_dv_timings_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_registered(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 1260
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %7 = tail call i32 @cec_register_adapter(ptr noundef %5, ptr noundef %6) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %4, align 4
  tail call void @cec_delete_adapter(ptr noundef %10) #14
  br label %11

11:                                               ; preds = %9, %1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adv76xx_unregistered(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 1260
  %3 = load ptr, ptr %2, align 4
  tail call void @cec_unregister_adapter(ptr noundef %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_g_volatile_ctrl(ptr nocapture noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 10488166
  br i1 %9, label %10, label %84

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  store i32 4, ptr %11, align 4
  %12 = getelementptr i8, ptr %6, i32 848
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %14 = getelementptr i8, ptr %6, i32 900
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @regmap_read(ptr noundef %15, i32 noundef 96, ptr noundef nonnull %4) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %21, i32 noundef %25, i32 noundef %28, i32 noundef %28, i32 noundef 96) #15
  br label %32

30:                                               ; preds = %10
  %31 = load i32, ptr %4, align 4
  br label %32

32:                                               ; preds = %30, %18
  %33 = phi i32 [ %16, %18 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %84, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %6, i32 860
  %38 = load ptr, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %39 = getelementptr i8, ptr %6, i32 912
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 @regmap_read(ptr noundef %40, i32 noundef 3, ptr noundef nonnull %3) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4, i32 6
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.i2c_adapter, ptr %48, i32 0, i32 11
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 1
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %46, i32 noundef %50, i32 noundef %53, i32 noundef %53, i32 noundef 3) #15
  br label %57

55:                                               ; preds = %36
  %56 = load i32, ptr %3, align 4
  br label %57

57:                                               ; preds = %55, %43
  %58 = phi i32 [ %41, %43 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %59 = and i32 %58, 128
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %84, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %63 = load ptr, ptr %39, align 4
  %64 = call i32 @regmap_read(ptr noundef %63, i32 noundef 5, ptr noundef nonnull %2) #14
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 4, i32 6
  %68 = load ptr, ptr %67, align 8
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 3
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.i2c_adapter, ptr %71, i32 0, i32 11
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 1
  %75 = load i16, ptr %74, align 2
  %76 = zext i16 %75 to i32
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %69, i32 noundef %73, i32 noundef %76, i32 noundef %76, i32 noundef 5) #15
  br label %80

78:                                               ; preds = %61
  %79 = load i32, ptr %2, align 4
  br label %80

80:                                               ; preds = %78, %66
  %81 = phi i32 [ %64, %66 ], [ %79, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %82 = lshr i32 %81, 4
  %83 = and i32 %82, 3
  store i32 %83, ptr %11, align 4
  br label %84

84:                                               ; preds = %80, %57, %32, %1
  %85 = phi i32 [ 0, %80 ], [ 0, %57 ], [ 0, %32 ], [ -22, %1 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_s_ctrl(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  switch i32 %6, label %101 [
    i32 9963776, label %7
    i32 9963777, label %14
    i32 9963778, label %21
    i32 9963779, label %28
    i32 10488165, label %35
    i32 10492160, label %40
    i32 10492161, label %53
    i32 10492162, label %84
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %4, i32 944
  %11 = load ptr, ptr %10, align 4
  %12 = and i32 %9, 255
  %13 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 60, i32 noundef %12) #14
  br label %101

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %4, i32 944
  %18 = load ptr, ptr %17, align 4
  %19 = and i32 %16, 255
  %20 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 58, i32 noundef %19) #14
  br label %101

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %4, i32 944
  %25 = load ptr, ptr %24, align 4
  %26 = and i32 %23, 255
  %27 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 59, i32 noundef %26) #14
  br label %101

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %4, i32 944
  %32 = load ptr, ptr %31, align 4
  %33 = and i32 %30, 255
  %34 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 61, i32 noundef %33) #14
  br label %101

35:                                               ; preds = %1
  %36 = getelementptr i8, ptr %4, i32 -424
  %37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %4, i32 784
  store i32 %38, ptr %39, align 4
  tail call fastcc void @set_rgb_quantization_range(ptr noundef %36)
  br label %101

40:                                               ; preds = %1
  %41 = getelementptr i8, ptr %4, i32 -512
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %42, i32 0, i32 1
  %44 = load i8, ptr %43, align 4, !range !9
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %101, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %4, i32 924
  %50 = load ptr, ptr %49, align 4
  %51 = and i32 %48, 255
  %52 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 200, i32 noundef %51) #14
  br label %101

53:                                               ; preds = %1
  %54 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %55 = load i32, ptr %54, align 4
  %56 = shl i32 %55, 2
  %57 = getelementptr i8, ptr %4, i32 892
  %58 = load ptr, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %59 = getelementptr i8, ptr %4, i32 944
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 @regmap_read(ptr noundef %60, i32 noundef 191, ptr noundef nonnull %2) #14
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4, i32 6
  %65 = load ptr, ptr %64, align 8
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 3
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.i2c_adapter, ptr %68, i32 0, i32 11
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 1
  %72 = load i16, ptr %71, align 2
  %73 = zext i16 %72 to i32
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %66, i32 noundef %70, i32 noundef %73, i32 noundef %73, i32 noundef 191) #15
  br label %77

75:                                               ; preds = %53
  %76 = load i32, ptr %2, align 4
  br label %77

77:                                               ; preds = %75, %63
  %78 = phi i32 [ %61, %63 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %79 = and i32 %78, 251
  %80 = load ptr, ptr %59, align 4
  %81 = and i32 %56, 252
  %82 = or i32 %79, %81
  %83 = call i32 @regmap_write(ptr noundef %80, i32 noundef 191, i32 noundef %82) #14
  br label %101

84:                                               ; preds = %1
  %85 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %86 = load i32, ptr %85, align 4
  %87 = lshr i32 %86, 16
  %88 = getelementptr i8, ptr %4, i32 944
  %89 = load ptr, ptr %88, align 4
  %90 = and i32 %87, 255
  %91 = tail call i32 @regmap_write(ptr noundef %89, i32 noundef 192, i32 noundef %90) #14
  %92 = load i32, ptr %85, align 4
  %93 = lshr i32 %92, 8
  %94 = load ptr, ptr %88, align 4
  %95 = and i32 %93, 255
  %96 = tail call i32 @regmap_write(ptr noundef %94, i32 noundef 193, i32 noundef %95) #14
  %97 = load i32, ptr %85, align 4
  %98 = load ptr, ptr %88, align 4
  %99 = and i32 %97, 255
  %100 = tail call i32 @regmap_write(ptr noundef %98, i32 noundef 194, i32 noundef %99) #14
  br label %101

101:                                              ; preds = %84, %77, %46, %40, %35, %28, %21, %14, %7, %1
  %102 = phi i32 [ 0, %84 ], [ 0, %77 ], [ 0, %46 ], [ 0, %35 ], [ 0, %28 ], [ 0, %21 ], [ 0, %14 ], [ 0, %7 ], [ -22, %40 ], [ -22, %1 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_ancillary_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_cec_adap_enable(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.adv76xx_state, ptr %10, i32 0, i32 20
  %13 = load i8, ptr %12, align 4, !range !9
  %14 = icmp eq i8 %13, 0
  %15 = and i1 %14, %1
  br i1 %15, label %16, label %106

16:                                               ; preds = %2
  %17 = getelementptr %struct.adv76xx_state, ptr %10, i32 0, i32 21, i32 2
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !annotation !8
  %19 = getelementptr %struct.adv76xx_state, ptr %10, i32 0, i32 22, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 42, ptr noundef nonnull %8) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 1
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %26, i32 noundef %30, i32 noundef %33, i32 noundef %33, i32 noundef 42) #15
  br label %37

35:                                               ; preds = %16
  %36 = load i32, ptr %8, align 4
  br label %37

37:                                               ; preds = %35, %23
  %38 = phi i32 [ %21, %23 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %39 = load ptr, ptr %19, align 4
  %40 = and i32 %38, 254
  %41 = or i32 %40, 1
  %42 = call i32 @regmap_write(ptr noundef %39, i32 noundef 42, i32 noundef %41) #14
  %43 = load ptr, ptr %19, align 4
  %44 = call i32 @regmap_write(ptr noundef %43, i32 noundef 44, i32 noundef 1) #14
  %45 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  %46 = load ptr, ptr %19, align 4
  %47 = call i32 @regmap_read(ptr noundef %46, i32 noundef 17, ptr noundef nonnull %7) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4, i32 6
  %51 = load ptr, ptr %50, align 8
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.i2c_adapter, ptr %54, i32 0, i32 11
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 1
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %52, i32 noundef %56, i32 noundef %59, i32 noundef %59, i32 noundef 17) #15
  br label %63

61:                                               ; preds = %37
  %62 = load i32, ptr %7, align 4
  br label %63

63:                                               ; preds = %61, %49
  %64 = phi i32 [ %47, %49 ], [ %62, %61 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %65 = and i32 %64, 254
  %66 = load ptr, ptr %19, align 4
  %67 = call i32 @regmap_write(ptr noundef %66, i32 noundef 17, i32 noundef %65) #14
  %68 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %11, i32 0, i32 16
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, 3
  %71 = getelementptr %struct.adv76xx_state, ptr %10, i32 0, i32 21
  %72 = load ptr, ptr %71, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %73 = getelementptr %struct.adv76xx_state, ptr %10, i32 0, i32 22
  %74 = load ptr, ptr %73, align 4
  %75 = and i32 %70, 255
  %76 = call i32 @regmap_read(ptr noundef %74, i32 noundef %75, ptr noundef nonnull %6) #14
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %63
  %79 = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 4, i32 6
  %80 = load ptr, ptr %79, align 8
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 3
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.i2c_adapter, ptr %83, i32 0, i32 11
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 1
  %87 = load i16, ptr %86, align 2
  %88 = zext i16 %87 to i32
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %81, i32 noundef %85, i32 noundef %88, i32 noundef %88, i32 noundef %75) #15
  br label %92

90:                                               ; preds = %63
  %91 = load i32, ptr %6, align 4
  br label %92

92:                                               ; preds = %90, %78
  %93 = phi i32 [ %76, %78 ], [ %91, %90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %94 = load ptr, ptr %73, align 4
  %95 = and i32 %93, 240
  %96 = or i32 %95, 15
  %97 = call i32 @regmap_write(ptr noundef %94, i32 noundef %75, i32 noundef %96) #14
  %98 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %11, i32 0, i32 17
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %11, i32 0, i32 18
  %101 = load i32, ptr %100, align 4
  %102 = load ptr, ptr %19, align 4
  %103 = and i32 %99, 255
  %104 = and i32 %101, 255
  %105 = call i32 @regmap_write(ptr noundef %102, i32 noundef %103, i32 noundef %104) #14
  br label %187

106:                                              ; preds = %2
  %107 = or i1 %14, %1
  br i1 %107, label %187, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %11, i32 0, i32 16
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, 3
  %112 = getelementptr %struct.adv76xx_state, ptr %10, i32 0, i32 21
  %113 = load ptr, ptr %112, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %114 = getelementptr %struct.adv76xx_state, ptr %10, i32 0, i32 22
  %115 = load ptr, ptr %114, align 4
  %116 = and i32 %111, 255
  %117 = call i32 @regmap_read(ptr noundef %115, i32 noundef %116, ptr noundef nonnull %5) #14
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %131, label %119

119:                                              ; preds = %108
  %120 = getelementptr inbounds %struct.i2c_client, ptr %113, i32 0, i32 4, i32 6
  %121 = load ptr, ptr %120, align 8
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.i2c_client, ptr %113, i32 0, i32 3
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.i2c_adapter, ptr %124, i32 0, i32 11
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.i2c_client, ptr %113, i32 0, i32 1
  %128 = load i16, ptr %127, align 2
  %129 = zext i16 %128 to i32
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %122, i32 noundef %126, i32 noundef %129, i32 noundef %129, i32 noundef %116) #15
  br label %133

131:                                              ; preds = %108
  %132 = load i32, ptr %5, align 4
  br label %133

133:                                              ; preds = %131, %119
  %134 = phi i32 [ %117, %119 ], [ %132, %131 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %135 = and i32 %134, 240
  %136 = load ptr, ptr %114, align 4
  %137 = call i32 @regmap_write(ptr noundef %136, i32 noundef %116, i32 noundef %135) #14
  %138 = getelementptr %struct.adv76xx_state, ptr %10, i32 0, i32 21, i32 2
  %139 = load ptr, ptr %138, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %140 = getelementptr %struct.adv76xx_state, ptr %10, i32 0, i32 22, i32 2
  %141 = load ptr, ptr %140, align 4
  %142 = call i32 @regmap_read(ptr noundef %141, i32 noundef 39, ptr noundef nonnull %4) #14
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %133
  %145 = getelementptr inbounds %struct.i2c_client, ptr %139, i32 0, i32 4, i32 6
  %146 = load ptr, ptr %145, align 8
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.i2c_client, ptr %139, i32 0, i32 3
  %149 = load ptr, ptr %148, align 8
  %150 = getelementptr inbounds %struct.i2c_adapter, ptr %149, i32 0, i32 11
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr inbounds %struct.i2c_client, ptr %139, i32 0, i32 1
  %153 = load i16, ptr %152, align 2
  %154 = zext i16 %153 to i32
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %147, i32 noundef %151, i32 noundef %154, i32 noundef %154, i32 noundef 39) #15
  br label %158

156:                                              ; preds = %133
  %157 = load i32, ptr %4, align 4
  br label %158

158:                                              ; preds = %156, %144
  %159 = phi i32 [ %142, %144 ], [ %157, %156 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %160 = and i32 %159, 143
  %161 = load ptr, ptr %140, align 4
  %162 = call i32 @regmap_write(ptr noundef %161, i32 noundef 39, i32 noundef %160) #14
  %163 = load ptr, ptr %138, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %164 = load ptr, ptr %140, align 4
  %165 = call i32 @regmap_read(ptr noundef %164, i32 noundef 42, ptr noundef nonnull %3) #14
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %179, label %167

167:                                              ; preds = %158
  %168 = getelementptr inbounds %struct.i2c_client, ptr %163, i32 0, i32 4, i32 6
  %169 = load ptr, ptr %168, align 8
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.i2c_client, ptr %163, i32 0, i32 3
  %172 = load ptr, ptr %171, align 8
  %173 = getelementptr inbounds %struct.i2c_adapter, ptr %172, i32 0, i32 11
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.i2c_client, ptr %163, i32 0, i32 1
  %176 = load i16, ptr %175, align 2
  %177 = zext i16 %176 to i32
  %178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %170, i32 noundef %174, i32 noundef %177, i32 noundef %177, i32 noundef 42) #15
  br label %181

179:                                              ; preds = %158
  %180 = load i32, ptr %3, align 4
  br label %181

181:                                              ; preds = %179, %167
  %182 = phi i32 [ %165, %167 ], [ %180, %179 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %183 = and i32 %182, 254
  %184 = load ptr, ptr %140, align 4
  %185 = call i32 @regmap_write(ptr noundef %184, i32 noundef 42, i32 noundef %183) #14
  %186 = getelementptr inbounds %struct.adv76xx_state, ptr %10, i32 0, i32 19
  store i8 0, ptr %186, align 1
  br label %187

187:                                              ; preds = %181, %106, %92
  %188 = getelementptr inbounds %struct.adv76xx_state, ptr %10, i32 0, i32 4
  %189 = zext i1 %1 to i8
  store i8 %189, ptr %12, align 4
  %190 = load ptr, ptr %10, align 4
  %191 = getelementptr inbounds %struct.adv76xx_chip_info, ptr %190, i32 0, i32 25
  %192 = load ptr, ptr %191, align 4
  %193 = call i32 %192(ptr noundef %188) #14
  %194 = getelementptr %struct.adv76xx_state, ptr %10, i32 0, i32 23
  %195 = load ptr, ptr %194, align 4
  %196 = and i32 %193, 65535
  %197 = getelementptr inbounds %struct.v4l2_ctrl, ptr %195, i32 0, i32 2
  %198 = load ptr, ptr %197, align 8
  %199 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %198, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  call void @mutex_lock(ptr noundef %200) #14
  %201 = call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %195, i32 noundef %196) #14
  %202 = load ptr, ptr %197, align 8
  %203 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %202, i32 0, i32 1
  %204 = load ptr, ptr %203, align 4
  call void @mutex_unlock(ptr noundef %204) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_cec_adap_log_addr(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.adv76xx_state, ptr %11, i32 0, i32 20
  %13 = load i8, ptr %12, align 4, !range !9
  %14 = icmp eq i8 %13, 0
  %15 = icmp eq i8 %1, -1
  br i1 %14, label %16, label %18

16:                                               ; preds = %2
  %17 = select i1 %15, i32 0, i32 -5
  br label %243

18:                                               ; preds = %2
  br i1 %15, label %25, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.adv76xx_state, ptr %11, i32 0, i32 19
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %56, label %52

25:                                               ; preds = %18
  %26 = getelementptr %struct.adv76xx_state, ptr %11, i32 0, i32 21, i32 2
  %27 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 0, ptr %9, align 4, !annotation !8
  %28 = getelementptr %struct.adv76xx_state, ptr %11, i32 0, i32 22, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @regmap_read(ptr noundef %29, i32 noundef 39, ptr noundef nonnull %9) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4, i32 6
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.i2c_adapter, ptr %37, i32 0, i32 11
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 1
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %35, i32 noundef %39, i32 noundef %42, i32 noundef %42, i32 noundef 39) #15
  br label %46

44:                                               ; preds = %25
  %45 = load i32, ptr %9, align 4
  br label %46

46:                                               ; preds = %44, %32
  %47 = phi i32 [ %30, %32 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %48 = and i32 %47, 143
  %49 = load ptr, ptr %28, align 4
  %50 = call i32 @regmap_write(ptr noundef %49, i32 noundef 39, i32 noundef %48) #14
  %51 = getelementptr inbounds %struct.adv76xx_state, ptr %11, i32 0, i32 19
  store i8 0, ptr %51, align 1
  br label %243

52:                                               ; preds = %19
  %53 = getelementptr %struct.adv76xx_state, ptr %11, i32 0, i32 18, i32 0
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, %1
  br i1 %55, label %243, label %56

56:                                               ; preds = %52, %19
  %57 = and i32 %22, 2
  %58 = icmp eq i32 %57, 0
  %59 = or i32 %57, 1
  %60 = select i1 %24, i32 0, i32 %59
  br i1 %58, label %65, label %61

61:                                               ; preds = %56
  %62 = getelementptr %struct.adv76xx_state, ptr %11, i32 0, i32 18, i32 1
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, %1
  br i1 %64, label %243, label %65

65:                                               ; preds = %61, %56
  %66 = and i32 %22, 4
  %67 = icmp eq i32 %66, 0
  %68 = icmp eq i32 %60, 3
  %69 = select i1 %67, i32 2, i32 3
  %70 = select i1 %68, i32 %69, i32 %60
  br i1 %67, label %75, label %71

71:                                               ; preds = %65
  %72 = getelementptr %struct.adv76xx_state, ptr %11, i32 0, i32 18, i32 2
  %73 = load i8, ptr %72, align 1
  %74 = icmp eq i8 %73, %1
  br i1 %74, label %243, label %75

75:                                               ; preds = %71, %65
  %76 = icmp eq i32 %70, 3
  br i1 %76, label %243, label %77

77:                                               ; preds = %75
  %78 = getelementptr %struct.adv76xx_state, ptr %11, i32 0, i32 18, i32 %70
  store i8 %1, ptr %78, align 1
  %79 = shl nuw i32 1, %70
  %80 = load i8, ptr %20, align 1
  %81 = trunc i32 %79 to i8
  %82 = or i8 %80, %81
  store i8 %82, ptr %20, align 1
  switch i32 %70, label %243 [
    i32 0, label %83
    i32 1, label %136
    i32 2, label %190
  ]

83:                                               ; preds = %77
  %84 = getelementptr %struct.adv76xx_state, ptr %11, i32 0, i32 21, i32 2
  %85 = load ptr, ptr %84, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !annotation !8
  %86 = getelementptr %struct.adv76xx_state, ptr %11, i32 0, i32 22, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = call i32 @regmap_read(ptr noundef %87, i32 noundef 39, ptr noundef nonnull %8) #14
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 4, i32 6
  %92 = load ptr, ptr %91, align 8
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 3
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.i2c_adapter, ptr %95, i32 0, i32 11
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 1
  %99 = load i16, ptr %98, align 2
  %100 = zext i16 %99 to i32
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %93, i32 noundef %97, i32 noundef %100, i32 noundef %100, i32 noundef 39) #15
  br label %104

102:                                              ; preds = %83
  %103 = load i32, ptr %8, align 4
  br label %104

104:                                              ; preds = %102, %90
  %105 = phi i32 [ %88, %90 ], [ %103, %102 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %106 = load ptr, ptr %86, align 4
  %107 = and i32 %105, 239
  %108 = or i32 %107, 16
  %109 = call i32 @regmap_write(ptr noundef %106, i32 noundef 39, i32 noundef %108) #14
  %110 = load ptr, ptr %84, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  %111 = load ptr, ptr %86, align 4
  %112 = call i32 @regmap_read(ptr noundef %111, i32 noundef 40, ptr noundef nonnull %7) #14
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.i2c_client, ptr %110, i32 0, i32 4, i32 6
  %116 = load ptr, ptr %115, align 8
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.i2c_client, ptr %110, i32 0, i32 3
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr inbounds %struct.i2c_adapter, ptr %119, i32 0, i32 11
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.i2c_client, ptr %110, i32 0, i32 1
  %123 = load i16, ptr %122, align 2
  %124 = zext i16 %123 to i32
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %117, i32 noundef %121, i32 noundef %124, i32 noundef %124, i32 noundef 40) #15
  br label %128

126:                                              ; preds = %104
  %127 = load i32, ptr %7, align 4
  br label %128

128:                                              ; preds = %126, %114
  %129 = phi i32 [ %112, %114 ], [ %127, %126 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, -16
  %132 = or i8 %131, %1
  %133 = load ptr, ptr %86, align 4
  %134 = zext i8 %132 to i32
  %135 = call i32 @regmap_write(ptr noundef %133, i32 noundef 40, i32 noundef %134) #14
  br label %243

136:                                              ; preds = %77
  %137 = getelementptr %struct.adv76xx_state, ptr %11, i32 0, i32 21, i32 2
  %138 = load ptr, ptr %137, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %139 = getelementptr %struct.adv76xx_state, ptr %11, i32 0, i32 22, i32 2
  %140 = load ptr, ptr %139, align 4
  %141 = call i32 @regmap_read(ptr noundef %140, i32 noundef 39, ptr noundef nonnull %6) #14
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %155, label %143

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.i2c_client, ptr %138, i32 0, i32 4, i32 6
  %145 = load ptr, ptr %144, align 8
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.i2c_client, ptr %138, i32 0, i32 3
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr inbounds %struct.i2c_adapter, ptr %148, i32 0, i32 11
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.i2c_client, ptr %138, i32 0, i32 1
  %152 = load i16, ptr %151, align 2
  %153 = zext i16 %152 to i32
  %154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %146, i32 noundef %150, i32 noundef %153, i32 noundef %153, i32 noundef 39) #15
  br label %157

155:                                              ; preds = %136
  %156 = load i32, ptr %6, align 4
  br label %157

157:                                              ; preds = %155, %143
  %158 = phi i32 [ %141, %143 ], [ %156, %155 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %159 = load ptr, ptr %139, align 4
  %160 = and i32 %158, 223
  %161 = or i32 %160, 32
  %162 = call i32 @regmap_write(ptr noundef %159, i32 noundef 39, i32 noundef %161) #14
  %163 = shl i8 %1, 4
  %164 = load ptr, ptr %137, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %165 = load ptr, ptr %139, align 4
  %166 = call i32 @regmap_read(ptr noundef %165, i32 noundef 40, ptr noundef nonnull %5) #14
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %180, label %168

168:                                              ; preds = %157
  %169 = getelementptr inbounds %struct.i2c_client, ptr %164, i32 0, i32 4, i32 6
  %170 = load ptr, ptr %169, align 8
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.i2c_client, ptr %164, i32 0, i32 3
  %173 = load ptr, ptr %172, align 8
  %174 = getelementptr inbounds %struct.i2c_adapter, ptr %173, i32 0, i32 11
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds %struct.i2c_client, ptr %164, i32 0, i32 1
  %177 = load i16, ptr %176, align 2
  %178 = zext i16 %177 to i32
  %179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %171, i32 noundef %175, i32 noundef %178, i32 noundef %178, i32 noundef 40) #15
  br label %182

180:                                              ; preds = %157
  %181 = load i32, ptr %5, align 4
  br label %182

182:                                              ; preds = %180, %168
  %183 = phi i32 [ %166, %168 ], [ %181, %180 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 15
  %186 = or i8 %185, %163
  %187 = load ptr, ptr %139, align 4
  %188 = zext i8 %186 to i32
  %189 = call i32 @regmap_write(ptr noundef %187, i32 noundef 40, i32 noundef %188) #14
  br label %243

190:                                              ; preds = %77
  %191 = getelementptr %struct.adv76xx_state, ptr %11, i32 0, i32 21, i32 2
  %192 = load ptr, ptr %191, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %193 = getelementptr %struct.adv76xx_state, ptr %11, i32 0, i32 22, i32 2
  %194 = load ptr, ptr %193, align 4
  %195 = call i32 @regmap_read(ptr noundef %194, i32 noundef 39, ptr noundef nonnull %4) #14
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %209, label %197

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.i2c_client, ptr %192, i32 0, i32 4, i32 6
  %199 = load ptr, ptr %198, align 8
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.i2c_client, ptr %192, i32 0, i32 3
  %202 = load ptr, ptr %201, align 8
  %203 = getelementptr inbounds %struct.i2c_adapter, ptr %202, i32 0, i32 11
  %204 = load i32, ptr %203, align 4
  %205 = getelementptr inbounds %struct.i2c_client, ptr %192, i32 0, i32 1
  %206 = load i16, ptr %205, align 2
  %207 = zext i16 %206 to i32
  %208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %200, i32 noundef %204, i32 noundef %207, i32 noundef %207, i32 noundef 39) #15
  br label %211

209:                                              ; preds = %190
  %210 = load i32, ptr %4, align 4
  br label %211

211:                                              ; preds = %209, %197
  %212 = phi i32 [ %195, %197 ], [ %210, %209 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %213 = load ptr, ptr %193, align 4
  %214 = and i32 %212, 191
  %215 = or i32 %214, 64
  %216 = call i32 @regmap_write(ptr noundef %213, i32 noundef 39, i32 noundef %215) #14
  %217 = load ptr, ptr %191, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %218 = load ptr, ptr %193, align 4
  %219 = call i32 @regmap_read(ptr noundef %218, i32 noundef 41, ptr noundef nonnull %3) #14
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %233, label %221

221:                                              ; preds = %211
  %222 = getelementptr inbounds %struct.i2c_client, ptr %217, i32 0, i32 4, i32 6
  %223 = load ptr, ptr %222, align 8
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.i2c_client, ptr %217, i32 0, i32 3
  %226 = load ptr, ptr %225, align 8
  %227 = getelementptr inbounds %struct.i2c_adapter, ptr %226, i32 0, i32 11
  %228 = load i32, ptr %227, align 4
  %229 = getelementptr inbounds %struct.i2c_client, ptr %217, i32 0, i32 1
  %230 = load i16, ptr %229, align 2
  %231 = zext i16 %230 to i32
  %232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %224, i32 noundef %228, i32 noundef %231, i32 noundef %231, i32 noundef 41) #15
  br label %235

233:                                              ; preds = %211
  %234 = load i32, ptr %3, align 4
  br label %235

235:                                              ; preds = %233, %221
  %236 = phi i32 [ %219, %221 ], [ %234, %233 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, -16
  %239 = or i8 %238, %1
  %240 = load ptr, ptr %193, align 4
  %241 = zext i8 %239 to i32
  %242 = call i32 @regmap_write(ptr noundef %240, i32 noundef 41, i32 noundef %241) #14
  br label %243

243:                                              ; preds = %235, %182, %128, %77, %75, %71, %61, %52, %46, %16
  %244 = phi i32 [ 0, %46 ], [ %17, %16 ], [ -6, %75 ], [ 0, %77 ], [ 0, %235 ], [ 0, %182 ], [ 0, %128 ], [ 0, %71 ], [ 0, %61 ], [ 0, %52 ]
  ret i32 %244
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv76xx_cec_adap_transmit(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3) #1 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cec_msg, ptr %3, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = zext i8 %1 to i32
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 2)
  %12 = shl nuw nsw i32 %11, 4
  %13 = add nuw nsw i32 %12, 240
  %14 = getelementptr %struct.adv76xx_state, ptr %7, i32 0, i32 21, i32 2
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %16 = getelementptr %struct.adv76xx_state, ptr %7, i32 0, i32 22, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef 18, ptr noundef nonnull %5) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4, i32 6
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %23, i32 noundef %27, i32 noundef %30, i32 noundef %30, i32 noundef 18) #15
  br label %34

32:                                               ; preds = %4
  %33 = load i32, ptr %5, align 4
  br label %34

34:                                               ; preds = %32, %20
  %35 = phi i32 [ %18, %20 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %36 = and i32 %35, 143
  %37 = load ptr, ptr %16, align 4
  %38 = and i32 %13, 240
  %39 = or i32 %36, %38
  %40 = call i32 @regmap_write(ptr noundef %37, i32 noundef 18, i32 noundef %39) #14
  %41 = and i32 %9, 255
  %42 = icmp ugt i32 %41, 16
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = icmp eq i32 %41, 0
  br i1 %44, label %57, label %48

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.adv76xx_state, ptr %7, i32 0, i32 4, i32 9
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef %46, ptr noundef nonnull @__func__.adv76xx_cec_adap_transmit, i32 noundef %41) #15
  br label %62

48:                                               ; preds = %48, %43
  %49 = phi i32 [ %55, %48 ], [ 0, %43 ]
  %50 = getelementptr %struct.cec_msg, ptr %3, i32 0, i32 6, i32 %49
  %51 = load i8, ptr %50, align 1
  %52 = load ptr, ptr %16, align 4
  %53 = zext i8 %51 to i32
  %54 = call i32 @regmap_write(ptr noundef %52, i32 noundef %49, i32 noundef %53) #14
  %55 = add nuw nsw i32 %49, 1
  %56 = icmp eq i32 %55, %41
  br i1 %56, label %57, label %48

57:                                               ; preds = %48, %43
  %58 = load ptr, ptr %16, align 4
  %59 = call i32 @regmap_write(ptr noundef %58, i32 noundef 16, i32 noundef %41) #14
  %60 = load ptr, ptr %16, align 4
  %61 = call i32 @regmap_write(ptr noundef %60, i32 noundef 17, i32 noundef 1) #14
  br label %62

62:                                               ; preds = %57, %45
  %63 = phi i32 [ -22, %45 ], [ 0, %57 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i4 @llvm.bitreverse.i4(i4) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
