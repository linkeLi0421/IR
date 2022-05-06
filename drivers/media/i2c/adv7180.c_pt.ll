; ModuleID = '/llk/IR/drivers/media/i2c/adv7180.c_pt.bc'
source_filename = "../drivers/media/i2c/adv7180.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.adv7180_chip_info = type { i32, i32, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_sensor_ops = type { ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.adv7180_state = type { %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, %struct.media_pad, %struct.mutex, i32, ptr, ptr, i64, i8, i8, i8, ptr, i32, ptr, ptr, ptr, i32, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.71 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.94, i16, i16, i16, [10 x i16] }
%union.anon.94 = type { i16 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.0, %union.anon.1, i32, ptr, i32, %struct.anon, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.0 = type { i64 }
%union.anon.1 = type { ptr }
%struct.anon = type { i32 }

@adv7180_id = internal constant [12 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adv7180\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7180_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7180cp\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7180_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7180st\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7180_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7182\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7182_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7280\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7280_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7280-m\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7280_m_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7281\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7281_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7281-m\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7281_m_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7281-ma\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7281_ma_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7282\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7282_info to i32) }, %struct.i2c_device_id { [20 x i8] c"adv7282-m\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @adv7282_m_info to i32) }, %struct.i2c_device_id zeroinitializer], align 4
@adv7180_of_id = internal constant [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7180\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7180cp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7180st\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7182\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7280\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7280-m\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7281\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7281-m\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7281-ma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7282\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7282-m\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description251 = internal constant [56 x i8] c"description=Analog Devices ADV7180 video decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [27 x i8] c"author=Mocean Laboratories\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@adv7180_info = internal constant %struct.adv7180_chip_info { i32 1, i32 2047, ptr @adv7180_set_std, ptr @adv7180_select_input, ptr @adv7180_init }, align 4
@adv7182_info = internal constant %struct.adv7180_chip_info { i32 0, i32 54031, ptr @adv7182_set_std, ptr @adv7182_select_input, ptr @adv7182_init }, align 4
@adv7280_info = internal constant %struct.adv7180_chip_info { i32 10, i32 4879, ptr @adv7182_set_std, ptr @adv7182_select_input, ptr @adv7182_init }, align 4
@adv7280_m_info = internal constant %struct.adv7180_chip_info { i32 14, i32 16383, ptr @adv7182_set_std, ptr @adv7182_select_input, ptr @adv7182_init }, align 4
@adv7281_info = internal constant %struct.adv7180_chip_info { i32 6, i32 149955, ptr @adv7182_set_std, ptr @adv7182_select_input, ptr @adv7182_init }, align 4
@adv7281_m_info = internal constant %struct.adv7180_chip_info { i32 6, i32 187343, ptr @adv7182_set_std, ptr @adv7182_select_input, ptr @adv7182_init }, align 4
@adv7281_ma_info = internal constant %struct.adv7180_chip_info { i32 6, i32 262143, ptr @adv7182_set_std, ptr @adv7182_select_input, ptr @adv7182_init }, align 4
@adv7282_info = internal constant %struct.adv7180_chip_info { i32 10, i32 149955, ptr @adv7182_set_std, ptr @adv7182_select_input, ptr @adv7182_init }, align 4
@adv7282_m_info = internal constant %struct.adv7180_chip_info { i32 14, i32 183247, ptr @adv7182_set_std, ptr @adv7182_select_input, ptr @adv7182_init }, align 4
@adv7280_lbias_settings = internal unnamed_addr constant [4 x [3 x i32]] [[3 x i32] [i32 205, i32 78, i32 128], [3 x i32] [i32 192, i32 78, i32 128], [3 x i32] [i32 11, i32 206, i32 128], [3 x i32] [i32 11, i32 78, i32 192]], align 4
@adv7182_lbias_settings = internal unnamed_addr constant [4 x [3 x i32]] [[3 x i32] [i32 203, i32 78, i32 128], [3 x i32] [i32 192, i32 78, i32 128], [3 x i32] [i32 11, i32 206, i32 128], [3 x i32] [i32 11, i32 78, i32 192]], align 4
@__this_module = external dso_local global %struct.module, align 64
@adv7180_driver = internal global %struct.i2c_driver { i32 0, ptr @adv7180_probe, ptr @adv7180_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adv7180_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv7180_pm_ops, ptr null, ptr null }, ptr @adv7180_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"adv7180\00", align 1
@adv7180_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @adv7180_suspend, ptr @adv7180_resume, ptr @adv7180_suspend, ptr @adv7180_resume, ptr @adv7180_suspend, ptr @adv7180_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"\013%s %d-%04x: request for power pin failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"\013%s %d-%04x: request for reset pin failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"adv,force-bt656-4\00", align 1
@adv7180_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"&state->mutex\00", align 1
@adv7180_ops = internal constant %struct.v4l2_subdev_ops { ptr @adv7180_core_ops, ptr null, ptr null, ptr @adv7180_video_ops, ptr null, ptr null, ptr @adv7180_sensor_ops, ptr @adv7180_pad_ops }, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"\016%s %d-%04x: chip id 0x%x found @ 0x%02x (%s)\0A\00", align 1
@adv7180_core_ops = internal constant %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv7180_s_power, ptr null, ptr @adv7180_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, align 4
@adv7180_video_ops = internal constant %struct.v4l2_subdev_video_ops { ptr @adv7180_s_routing, ptr null, ptr @adv7180_g_std, ptr @adv7180_s_std, ptr null, ptr null, ptr @adv7180_querystd, ptr @adv7180_g_tvnorms, ptr null, ptr @adv7180_g_input_status, ptr @adv7180_s_stream, ptr @adv7180_g_pixelaspect, ptr @adv7180_g_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@adv7180_sensor_ops = internal constant %struct.v4l2_subdev_sensor_ops { ptr null, ptr @adv7180_get_skip_frames }, align 4
@adv7180_pad_ops = internal constant %struct.v4l2_subdev_pad_ops { ptr @adv7180_init_cfg, ptr @adv7180_enum_mbus_code, ptr null, ptr null, ptr @adv7180_get_pad_format, ptr @adv7180_set_pad_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv7180_get_mbus_config, ptr null }, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"include/media/v4l2-subdev.h\00", align 1
@adv7180_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @adv7180_s_ctrl }, align 4
@adv7180_ctrl_fast_switch = internal constant %struct.v4l2_ctrl_config { ptr @adv7180_ctrl_ops, ptr null, i32 9967984, ptr @.str.9, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"Fast Switching\00", align 1
@adv7180_irq.src_ch = internal constant { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, align 8
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253], section "llvm.metadata"

@__mod_i2c__adv7180_id_device_table = dso_local alias [12 x %struct.i2c_device_id], ptr @adv7180_id
@__mod_of__adv7180_of_id_device_table = dso_local alias [12 x %struct.of_device_id], ptr @adv7180_of_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @adv7180_driver) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @adv7180_driver) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_set_std(ptr nocapture noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 10
  %4 = load i8, ptr %3, align 2
  %5 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %5, align 8
  br label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = trunc i32 %1 to i8
  %16 = shl i8 %15, 4
  %17 = or i8 %4, %16
  %18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 0, i8 noundef zeroext %17) #11
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_select_input(ptr nocapture noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %3, align 8
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 0) #11
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %10
  %16 = and i32 %13, 240
  %17 = or i32 %16, %1
  %18 = load i32, ptr %3, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %11, align 4
  %22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %3, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = load ptr, ptr %11, align 4
  %25 = trunc i32 %17 to i8
  %26 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 0, i8 noundef zeroext %25) #11
  br label %27

27:                                               ; preds = %23, %10
  %28 = phi i32 [ %26, %23 ], [ %13, %10 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_init(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %2, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext -59) #11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %2, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %10, align 4
  %19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %2, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load ptr, ptr %10, align 4
  %22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext -26, i8 noundef zeroext 79) #11
  br label %23

23:                                               ; preds = %20, %9
  %24 = phi i32 [ %22, %20 ], [ %12, %9 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @adv7180_write(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = lshr i32 %1, 8
  %5 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, %4
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = trunc i32 %4 to i8
  %12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 14, i8 noundef zeroext %11) #11
  store i32 %4, ptr %5, align 8
  br label %13

13:                                               ; preds = %8, %3
  %14 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = trunc i32 %1 to i8
  %17 = trunc i32 %2 to i8
  %18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext %16, i8 noundef zeroext %17) #11
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @adv7180_read(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = lshr i32 %1, 8
  %4 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, %3
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = trunc i32 %3 to i8
  %11 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 14, i8 noundef zeroext %10) #11
  store i32 %3, ptr %4, align 8
  br label %12

12:                                               ; preds = %7, %2
  %13 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = trunc i32 %1 to i8
  %16 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext %15) #11
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7182_set_std(ptr nocapture noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %3, align 8
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = trunc i32 %1 to i8
  %14 = shl i8 %13, 4
  %15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 2, i8 noundef zeroext %14) #11
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7182_select_input(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %3, align 8
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = trunc i32 %1 to i8
  %14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext %13) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %169

16:                                               ; preds = %10
  %17 = load i32, ptr %3, align 8
  %18 = icmp eq i32 %17, 128
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %11, align 4
  %21 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 14, i8 noundef zeroext -128) #11
  store i32 128, ptr %3, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load ptr, ptr %11, align 4
  %24 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext -100, i8 noundef zeroext 0) #11
  %25 = load i32, ptr %3, align 8
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %11, align 4
  %29 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 14, i8 noundef zeroext -128) #11
  store i32 128, ptr %3, align 8
  br label %30

30:                                               ; preds = %27, %22
  %31 = load ptr, ptr %11, align 4
  %32 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext -100, i8 noundef zeroext -1) #11
  switch i32 %1, label %35 [
    i32 17, label %34
    i32 16, label %34
    i32 15, label %34
    i32 14, label %34
    i32 13, label %33
    i32 12, label %33
    i32 11, label %39
    i32 10, label %39
    i32 8, label %39
    i32 9, label %39
  ]

33:                                               ; preds = %30, %30
  br label %39

34:                                               ; preds = %30, %30, %30, %30
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ 0, %30 ], [ 1, %34 ]
  %37 = load i32, ptr %3, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %43

39:                                               ; preds = %33, %30, %30, %30, %30
  %40 = phi i32 [ 3, %33 ], [ 2, %30 ], [ 2, %30 ], [ 2, %30 ], [ 2, %30 ]
  %41 = load i32, ptr %3, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39, %35
  %44 = phi i8 [ 65, %35 ], [ 1, %39 ]
  %45 = phi i32 [ %36, %35 ], [ %40, %39 ]
  %46 = load ptr, ptr %11, align 4
  %47 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %3, align 8
  br label %48

48:                                               ; preds = %43, %39, %35
  %49 = phi i8 [ 65, %35 ], [ 1, %39 ], [ %44, %43 ]
  %50 = phi i32 [ %36, %35 ], [ %40, %39 ], [ %45, %43 ]
  %51 = load ptr, ptr %11, align 4
  %52 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 23, i8 noundef zeroext %49) #11
  %53 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 15
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, ptr @adv7182_lbias_settings, ptr @adv7280_lbias_settings
  %59 = getelementptr [4 x [3 x i32]], ptr %58, i32 0, i32 %50
  %60 = load i32, ptr %59, align 4
  %61 = load i32, ptr %3, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %48
  %64 = load ptr, ptr %11, align 4
  %65 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %64, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %3, align 8
  br label %66

66:                                               ; preds = %63, %48
  %67 = load ptr, ptr %11, align 4
  %68 = trunc i32 %60 to i8
  %69 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %67, i8 noundef zeroext 82, i8 noundef zeroext %68) #11
  %70 = getelementptr i32, ptr %59, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = load i32, ptr %3, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = load ptr, ptr %11, align 4
  %76 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %3, align 8
  br label %77

77:                                               ; preds = %74, %66
  %78 = load ptr, ptr %11, align 4
  %79 = trunc i32 %71 to i8
  %80 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %78, i8 noundef zeroext 83, i8 noundef zeroext %79) #11
  %81 = getelementptr i32, ptr %59, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = load i32, ptr %3, align 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %77
  %86 = load ptr, ptr %11, align 4
  %87 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %86, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %3, align 8
  br label %88

88:                                               ; preds = %85, %77
  %89 = load ptr, ptr %11, align 4
  %90 = trunc i32 %82 to i8
  %91 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %89, i8 noundef zeroext 84, i8 noundef zeroext %90) #11
  %92 = icmp eq i32 %50, 1
  %93 = load i32, ptr %3, align 8
  %94 = icmp eq i32 %93, 0
  br i1 %92, label %95, label %128

95:                                               ; preds = %88
  br i1 %94, label %99, label %96

96:                                               ; preds = %95
  %97 = load ptr, ptr %11, align 4
  %98 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %97, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %3, align 8
  br label %99

99:                                               ; preds = %96, %95
  %100 = load ptr, ptr %11, align 4
  %101 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %100, i8 noundef zeroext 95, i8 noundef zeroext -88) #11
  %102 = load i32, ptr %3, align 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load ptr, ptr %11, align 4
  %106 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %105, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %3, align 8
  br label %107

107:                                              ; preds = %104, %99
  %108 = load ptr, ptr %11, align 4
  %109 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %108, i8 noundef zeroext 90, i8 noundef zeroext -112) #11
  %110 = load i32, ptr %3, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load ptr, ptr %11, align 4
  %114 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %113, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %3, align 8
  br label %115

115:                                              ; preds = %112, %107
  %116 = load ptr, ptr %11, align 4
  %117 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %116, i8 noundef zeroext 96, i8 noundef zeroext -80) #11
  %118 = load i32, ptr %3, align 8
  %119 = icmp eq i32 %118, 128
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load ptr, ptr %11, align 4
  %122 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %121, i8 noundef zeroext 14, i8 noundef zeroext -128) #11
  store i32 128, ptr %3, align 8
  br label %123

123:                                              ; preds = %120, %115
  %124 = load ptr, ptr %11, align 4
  %125 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %124, i8 noundef zeroext -74, i8 noundef zeroext 8) #11
  %126 = load i32, ptr %3, align 8
  %127 = icmp eq i32 %126, 128
  br i1 %127, label %165, label %161

128:                                              ; preds = %88
  br i1 %94, label %132, label %129

129:                                              ; preds = %128
  %130 = load ptr, ptr %11, align 4
  %131 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %130, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %3, align 8
  br label %132

132:                                              ; preds = %129, %128
  %133 = load ptr, ptr %11, align 4
  %134 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %133, i8 noundef zeroext 95, i8 noundef zeroext -16) #11
  %135 = load i32, ptr %3, align 8
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = load ptr, ptr %11, align 4
  %139 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %138, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %3, align 8
  br label %140

140:                                              ; preds = %137, %132
  %141 = load ptr, ptr %11, align 4
  %142 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %141, i8 noundef zeroext 90, i8 noundef zeroext -48) #11
  %143 = load i32, ptr %3, align 8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = load ptr, ptr %11, align 4
  %147 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %146, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %3, align 8
  br label %148

148:                                              ; preds = %145, %140
  %149 = load ptr, ptr %11, align 4
  %150 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %149, i8 noundef zeroext 96, i8 noundef zeroext 16) #11
  %151 = load i32, ptr %3, align 8
  %152 = icmp eq i32 %151, 128
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = load ptr, ptr %11, align 4
  %155 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %154, i8 noundef zeroext 14, i8 noundef zeroext -128) #11
  store i32 128, ptr %3, align 8
  br label %156

156:                                              ; preds = %153, %148
  %157 = load ptr, ptr %11, align 4
  %158 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %157, i8 noundef zeroext -74, i8 noundef zeroext -100) #11
  %159 = load i32, ptr %3, align 8
  %160 = icmp eq i32 %159, 128
  br i1 %160, label %165, label %161

161:                                              ; preds = %156, %123
  %162 = phi i8 [ -96, %123 ], [ 0, %156 ]
  %163 = load ptr, ptr %11, align 4
  %164 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %163, i8 noundef zeroext 14, i8 noundef zeroext -128) #11
  store i32 128, ptr %3, align 8
  br label %165

165:                                              ; preds = %161, %156, %123
  %166 = phi i8 [ -96, %123 ], [ 0, %156 ], [ %162, %161 ]
  %167 = load ptr, ptr %11, align 4
  %168 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %167, i8 noundef zeroext -64, i8 noundef zeroext %166) #11
  br label %169

169:                                              ; preds = %165, %10
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7182_init(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %8, align 8
  br label %15

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -2, i8 noundef zeroext -120) #11
  %19 = load ptr, ptr %2, align 4
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %15, %1
  %22 = phi i32 [ %20, %15 ], [ %4, %1 ]
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %26, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext -3, i8 noundef zeroext -124) #11
  %37 = load ptr, ptr %2, align 4
  %38 = load i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %33, %21
  %40 = phi i32 [ %38, %33 ], [ %22, %21 ]
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %73, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %44, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext -128, i8 noundef zeroext 81) #11
  %55 = load i32, ptr %44, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %52, align 4
  %59 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %58, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %44, align 8
  br label %60

60:                                               ; preds = %57, %51
  %61 = load ptr, ptr %52, align 4
  %62 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %61, i8 noundef zeroext -127, i8 noundef zeroext 81) #11
  %63 = load i32, ptr %44, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load ptr, ptr %52, align 4
  %67 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %66, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %44, align 8
  br label %68

68:                                               ; preds = %65, %60
  %69 = load ptr, ptr %52, align 4
  %70 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %69, i8 noundef zeroext -126, i8 noundef zeroext 104) #11
  %71 = load ptr, ptr %2, align 4
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %68, %39
  %74 = phi i32 [ %72, %68 ], [ %40, %39 ]
  %75 = and i32 %74, 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %99, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %79 = load i32, ptr %78, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %78, align 8
  br label %85

85:                                               ; preds = %81, %77
  %86 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %87, i8 noundef zeroext 3, i8 noundef zeroext 78) #11
  %89 = load i32, ptr %78, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load ptr, ptr %86, align 4
  %93 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %92, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %78, align 8
  br label %94

94:                                               ; preds = %91, %85
  %95 = load ptr, ptr %86, align 4
  %96 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %95, i8 noundef zeroext 4, i8 noundef zeroext 87) #11
  %97 = load i32, ptr %78, align 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %175, label %169

99:                                               ; preds = %73
  %100 = and i32 %74, 2
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %143, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 17
  %104 = load i8, ptr %103, align 4, !range !8
  %105 = icmp eq i8 %104, 0
  %106 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %107 = load i32, ptr %106, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %105, label %134, label %109

109:                                              ; preds = %102
  br i1 %108, label %114, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %112 = load ptr, ptr %111, align 4
  %113 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %112, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %106, align 8
  br label %114

114:                                              ; preds = %110, %109
  %115 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %116 = load ptr, ptr %115, align 4
  %117 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %116, i8 noundef zeroext 4, i8 noundef zeroext -59) #11
  %118 = load i32, ptr %106, align 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = load ptr, ptr %115, align 4
  %122 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %121, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %106, align 8
  br label %123

123:                                              ; preds = %120, %114
  %124 = load ptr, ptr %115, align 4
  %125 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %124, i8 noundef zeroext 49, i8 noundef zeroext 18) #11
  %126 = load i32, ptr %106, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr %115, align 4
  %130 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %129, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %106, align 8
  br label %131

131:                                              ; preds = %128, %123
  %132 = load ptr, ptr %115, align 4
  %133 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %132, i8 noundef zeroext -26, i8 noundef zeroext 79) #11
  br label %155

134:                                              ; preds = %102
  br i1 %108, label %139, label %135

135:                                              ; preds = %134
  %136 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %137 = load ptr, ptr %136, align 4
  %138 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %137, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %106, align 8
  br label %139

139:                                              ; preds = %135, %134
  %140 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %141 = load ptr, ptr %140, align 4
  %142 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %141, i8 noundef zeroext 4, i8 noundef zeroext 23) #11
  br label %155

143:                                              ; preds = %99
  %144 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %145 = load i32, ptr %144, align 8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %149 = load ptr, ptr %148, align 4
  %150 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %149, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %144, align 8
  br label %151

151:                                              ; preds = %147, %143
  %152 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %153 = load ptr, ptr %152, align 4
  %154 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %153, i8 noundef zeroext 4, i8 noundef zeroext 7) #11
  br label %155

155:                                              ; preds = %151, %139, %131
  %156 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %157 = load i32, ptr %156, align 8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %161 = load ptr, ptr %160, align 4
  %162 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %161, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %156, align 8
  br label %163

163:                                              ; preds = %159, %155
  %164 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %165 = load ptr, ptr %164, align 4
  %166 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %165, i8 noundef zeroext 3, i8 noundef zeroext 12) #11
  %167 = load i32, ptr %156, align 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %163, %94
  %170 = phi ptr [ %86, %94 ], [ %164, %163 ]
  %171 = phi ptr [ %78, %94 ], [ %156, %163 ]
  %172 = phi i8 [ -64, %94 ], [ 64, %163 ]
  %173 = load ptr, ptr %170, align 4
  %174 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %173, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %171, align 8
  br label %175

175:                                              ; preds = %169, %163, %94
  %176 = phi ptr [ %86, %94 ], [ %164, %163 ], [ %170, %169 ]
  %177 = phi i8 [ -64, %94 ], [ 64, %163 ], [ %172, %169 ]
  %178 = load ptr, ptr %176, align 4
  %179 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %178, i8 noundef zeroext 29, i8 noundef zeroext %177) #11
  %180 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %181 = load i32, ptr %180, align 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %175
  %184 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %185 = load ptr, ptr %184, align 4
  %186 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %185, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %180, align 8
  br label %187

187:                                              ; preds = %183, %175
  %188 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %189 = load ptr, ptr %188, align 4
  %190 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %189, i8 noundef zeroext 19, i8 noundef zeroext 0) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.i2c_algorithm, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %7) #11
  %13 = and i32 %12, 1572864
  %14 = icmp eq i32 %13, 1572864
  br i1 %14, label %15, label %164

15:                                               ; preds = %2
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 416, i32 noundef 3520) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %164, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 11
  store ptr %0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 16
  store i32 7, ptr %20, align 8
  %21 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 15
  store ptr %23, ptr %24, align 4
  %25 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 7) #11
  %26 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 5
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %40

28:                                               ; preds = %18
  %29 = ptrtoint ptr %25 to i32
  %30 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 6
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %32, i32 noundef %35, i32 noundef %38, i32 noundef %29) #12
  br label %164

40:                                               ; preds = %18
  %41 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 7) #11
  %42 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 6
  store ptr %41, ptr %42, align 8
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = ptrtoint ptr %41 to i32
  %46 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 6
  %47 = load ptr, ptr %46, align 8
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, ptr %49, i32 0, i32 11
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %53 = load i16, ptr %52, align 2
  %54 = zext i16 %53 to i32
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %48, i32 noundef %51, i32 noundef %54, i32 noundef %45) #12
  br label %164

56:                                               ; preds = %40
  %57 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef null) #11
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 17
  store i8 1, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = load ptr, ptr %24, align 4
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %6, align 8
  %68 = tail call ptr @i2c_new_dummy_device(ptr noundef %67, i16 noundef zeroext 68) #11
  %69 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 13
  store ptr %68, ptr %69, align 4
  %70 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %24, align 4
  %73 = load i32, ptr %72, align 4
  br label %76

74:                                               ; preds = %66
  %75 = ptrtoint ptr %68 to i32
  br label %164

76:                                               ; preds = %71, %61
  %77 = phi i32 [ %73, %71 ], [ %63, %61 ]
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %6, align 8
  %82 = tail call ptr @i2c_new_dummy_device(ptr noundef %81, i16 noundef zeroext 66) #11
  %83 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 14
  store ptr %82, ptr %83, align 8
  %84 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = ptrtoint ptr %82 to i32
  br label %160

87:                                               ; preds = %80, %76
  %88 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 4
  store i32 %89, ptr %90, align 8
  %91 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %91, ptr noundef nonnull @.str.6, ptr noundef nonnull @adv7180_probe.__key) #11
  %92 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 7
  store i64 45056, ptr %92, align 8
  %93 = load ptr, ptr %24, align 4
  %94 = load i32, ptr %93, align 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 8
  store i8 %96, ptr %97, align 8
  %98 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 10
  store i8 0, ptr %98, align 2
  %99 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 1
  tail call void @v4l2_i2c_subdev_init(ptr noundef %99, ptr noundef %0, ptr noundef nonnull @adv7180_ops) #11
  %100 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 1, i32 4
  %101 = load i32, ptr %100, align 4
  %102 = or i32 %101, 12
  store i32 %102, ptr %100, align 4
  %103 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef nonnull %16, i32 noundef 4, ptr noundef null, ptr noundef null) #11
  %104 = tail call ptr @v4l2_ctrl_new_std(ptr noundef nonnull %16, ptr noundef nonnull @adv7180_ctrl_ops, i32 noundef 9963776, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #11
  %105 = tail call ptr @v4l2_ctrl_new_std(ptr noundef nonnull %16, ptr noundef nonnull @adv7180_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #11
  %106 = tail call ptr @v4l2_ctrl_new_std(ptr noundef nonnull %16, ptr noundef nonnull @adv7180_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #11
  %107 = tail call ptr @v4l2_ctrl_new_std(ptr noundef nonnull %16, ptr noundef nonnull @adv7180_ctrl_ops, i32 noundef 9963779, i64 noundef -127, i64 noundef 128, i64 noundef 1, i64 noundef 0) #11
  %108 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef nonnull %16, ptr noundef nonnull @adv7180_ctrl_fast_switch, ptr noundef null) #11
  %109 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 1, i32 8
  store ptr %16, ptr %109, align 8
  %110 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %16, i32 0, i32 9
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %156

113:                                              ; preds = %87
  %114 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef nonnull %16) #11
  %115 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 2
  %116 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 2, i32 4
  store i32 2, ptr %116, align 4
  %117 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 1, i32 0, i32 3
  store i32 131076, ptr %117, align 4
  %118 = tail call i32 @media_entity_pads_init(ptr noundef %99, i16 noundef zeroext 1, ptr noundef %115) #11
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %156

120:                                              ; preds = %113
  %121 = tail call fastcc i32 @init_device(ptr noundef nonnull %16)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %156

123:                                              ; preds = %120
  %124 = load i32, ptr %90, align 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %123
  %127 = load i32, ptr %88, align 4
  %128 = tail call i32 @request_threaded_irq(i32 noundef %127, ptr noundef null, ptr noundef nonnull @adv7180_irq, i32 noundef 8194, ptr noundef nonnull @.str, ptr noundef nonnull %16) #11
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %156

130:                                              ; preds = %126, %123
  %131 = tail call i32 @v4l2_async_register_subdev(ptr noundef %99) #11
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %130
  tail call void @mutex_lock(ptr noundef %91) #11
  %134 = tail call fastcc i32 @adv7180_read(ptr noundef nonnull %16, i32 noundef 17)
  tail call void @mutex_unlock(ptr noundef %91) #11
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %148, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 6
  %138 = load ptr, ptr %137, align 8
  %139 = load ptr, ptr %138, align 4
  %140 = load ptr, ptr %6, align 8
  %141 = getelementptr inbounds %struct.i2c_adapter, ptr %140, i32 0, i32 11
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %144 = load i16, ptr %143, align 2
  %145 = zext i16 %144 to i32
  %146 = getelementptr inbounds %struct.i2c_adapter, ptr %140, i32 0, i32 12
  %147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %139, i32 noundef %142, i32 noundef %145, i32 noundef %134, i32 noundef %145, ptr noundef %146) #12
  br label %164

148:                                              ; preds = %133
  tail call void @v4l2_async_unregister_subdev(ptr noundef %99) #11
  br label %149

149:                                              ; preds = %148, %130
  %150 = phi i32 [ %131, %130 ], [ %134, %148 ]
  %151 = load i32, ptr %90, align 8
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i32, ptr %88, align 4
  %155 = tail call ptr @free_irq(i32 noundef %154, ptr noundef nonnull %16) #11
  br label %156

156:                                              ; preds = %153, %149, %126, %120, %113, %87
  %157 = phi i32 [ %111, %87 ], [ %118, %113 ], [ %121, %120 ], [ %128, %126 ], [ %150, %153 ], [ %150, %149 ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef nonnull %16) #11
  %158 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 14
  %159 = load ptr, ptr %158, align 8
  tail call void @i2c_unregister_device(ptr noundef %159) #11
  br label %160

160:                                              ; preds = %156, %85
  %161 = phi i32 [ %86, %85 ], [ %157, %156 ]
  %162 = getelementptr inbounds %struct.adv7180_state, ptr %16, i32 0, i32 13
  %163 = load ptr, ptr %162, align 4
  tail call void @i2c_unregister_device(ptr noundef %163) #11
  br label %164

164:                                              ; preds = %160, %136, %74, %44, %28, %15, %2
  %165 = phi i32 [ %29, %28 ], [ %45, %44 ], [ %75, %74 ], [ %161, %160 ], [ 0, %136 ], [ -5, %2 ], [ -12, %15 ]
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -112
  tail call void @v4l2_async_unregister_subdev(ptr noundef %3) #11
  %5 = getelementptr i8, ptr %3, i32 248
  %6 = load i32, ptr %5, align 8
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %4) #11
  br label %12

12:                                               ; preds = %8, %1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %4) #11
  %13 = getelementptr i8, ptr %3, i32 288
  %14 = load ptr, ptr %13, align 8
  tail call void @i2c_unregister_device(ptr noundef %14) #11
  %15 = getelementptr i8, ptr %3, i32 284
  %16 = load ptr, ptr %15, align 4
  tail call void @i2c_unregister_device(ptr noundef %16) #11
  %17 = getelementptr i8, ptr %3, i32 256
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %18, i32 noundef 1) #11
  br label %21

21:                                               ; preds = %20, %12
  %22 = getelementptr i8, ptr %3, i32 252
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %23, i32 noundef 1) #11
  br label %26

26:                                               ; preds = %25, %21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_device(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %4, i32 noundef 0) #11
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #11
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %9, i32 noundef 0) #11
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #11
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %13, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 15, i8 noundef zeroext -128) #11
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #11
  %24 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.adv7180_chip_info, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %0) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %100

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 7
  %32 = load i64, ptr %31, align 8
  switch i64 %32, label %37 [
    i64 2048, label %46
    i64 16384, label %33
    i64 512, label %34
    i64 256, label %35
    i64 1024, label %36
  ]

33:                                               ; preds = %30
  br label %46

34:                                               ; preds = %30
  br label %46

35:                                               ; preds = %30
  br label %46

36:                                               ; preds = %30
  br label %46

37:                                               ; preds = %30
  %38 = and i64 %32, 255
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = and i64 %32, 45056
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = and i64 %32, 16711680
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %100, label %46

46:                                               ; preds = %43, %40, %37, %36, %35, %34, %33, %30
  %47 = phi i32 [ 14, %43 ], [ 5, %40 ], [ 8, %37 ], [ 6, %30 ], [ 12, %36 ], [ 10, %35 ], [ 9, %34 ], [ 7, %33 ]
  %48 = load ptr, ptr %24, align 4
  %49 = getelementptr inbounds %struct.adv7180_chip_info, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef %0, i32 noundef %47) #11
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 0) #11
  %53 = icmp sgt i32 %51, -1
  br i1 %53, label %54, label %100

54:                                               ; preds = %46
  tail call fastcc void @adv7180_set_field_mode(ptr noundef %0)
  %55 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 4
  %56 = load i32, ptr %55, align 8
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %100

58:                                               ; preds = %54
  %59 = load i32, ptr %13, align 8
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %21, align 4
  %63 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %62, i8 noundef zeroext 14, i8 noundef zeroext 32) #11
  store i32 32, ptr %13, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load ptr, ptr %21, align 4
  %66 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %65, i8 noundef zeroext 64, i8 noundef zeroext 17) #11
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %100, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %13, align 8
  %70 = icmp eq i32 %69, 32
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %21, align 4
  %73 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %72, i8 noundef zeroext 14, i8 noundef zeroext 32) #11
  store i32 32, ptr %13, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load ptr, ptr %21, align 4
  %76 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext 68, i8 noundef zeroext 0) #11
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %100, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr %13, align 8
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %21, align 4
  %83 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %82, i8 noundef zeroext 14, i8 noundef zeroext 32) #11
  store i32 32, ptr %13, align 8
  br label %84

84:                                               ; preds = %81, %78
  %85 = load ptr, ptr %21, align 4
  %86 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %85, i8 noundef zeroext 72, i8 noundef zeroext 0) #11
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %84
  %89 = load i32, ptr %13, align 8
  %90 = icmp eq i32 %89, 32
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %21, align 4
  %93 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %92, i8 noundef zeroext 14, i8 noundef zeroext 32) #11
  store i32 32, ptr %13, align 8
  br label %94

94:                                               ; preds = %91, %88
  %95 = load ptr, ptr %21, align 4
  %96 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %95, i8 noundef zeroext 76, i8 noundef zeroext 8) #11
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = tail call fastcc i32 @adv7180_write(ptr noundef %0, i32 noundef 8272, i32 noundef 0)
  br label %100

100:                                              ; preds = %98, %94, %84, %74, %64, %54, %46, %43, %20
  %101 = phi i32 [ %28, %20 ], [ %52, %46 ], [ %66, %64 ], [ %76, %74 ], [ %86, %84 ], [ %96, %94 ], [ %99, %98 ], [ 0, %54 ], [ -22, %43 ]
  tail call void @mutex_unlock(ptr noundef %2) #11
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_irq(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 12
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 32
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 14, i8 noundef zeroext 32) #11
  store i32 32, ptr %4, align 8
  br label %11

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 74) #11
  %15 = load i32, ptr %4, align 8
  %16 = icmp eq i32 %15, 32
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %12, align 4
  %19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 14, i8 noundef zeroext 32) #11
  store i32 32, ptr %4, align 8
  br label %20

20:                                               ; preds = %17, %11
  %21 = load ptr, ptr %12, align 4
  %22 = trunc i32 %14 to i8
  %23 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 75, i8 noundef zeroext %22) #11
  %24 = and i32 %14, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.adv7180_state, ptr %1, i32 0, i32 1
  tail call void @v4l2_subdev_notify_event(ptr noundef %27, ptr noundef nonnull @adv7180_irq.src_ch) #11
  br label %28

28:                                               ; preds = %26, %20
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_s_power(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 228
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef %3) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -112
  %8 = icmp ne i32 %1, 0
  %9 = tail call fastcc i32 @adv7180_set_power(ptr noundef %7, i1 noundef zeroext %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %0, i32 272
  %13 = zext i1 %8 to i8
  store i8 %13, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %6
  tail call void @mutex_unlock(ptr noundef %3) #11
  br label %15

15:                                               ; preds = %14, %2
  %16 = phi i32 [ %9, %14 ], [ %4, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_subscribe_event(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = load i32, ptr %2, align 4
  switch i32 %4, label %9 [
    i32 5, label %5
    i32 3, label %7
  ]

5:                                                ; preds = %3
  %6 = tail call i32 @v4l2_src_change_event_subdev_subscribe(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %9

7:                                                ; preds = %3
  %8 = tail call i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %9

9:                                                ; preds = %7, %5, %3
  %10 = phi i32 [ %8, %7 ], [ %6, %5 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @adv7180_set_power(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %3, align 8
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = select i1 %1, i8 4, i8 36
  %14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 15, i8 noundef zeroext %13) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  br i1 %1, label %25, label %44

25:                                               ; preds = %22
  %26 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext -34, i8 noundef zeroext 2) #11
  %27 = load ptr, ptr %23, align 4
  %28 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext -46, i8 noundef zeroext -9) #11
  %29 = load ptr, ptr %23, align 4
  %30 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext -40, i8 noundef zeroext 101) #11
  %31 = load ptr, ptr %23, align 4
  %32 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext -32, i8 noundef zeroext 9) #11
  %33 = load ptr, ptr %23, align 4
  %34 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 44, i8 noundef zeroext 0) #11
  %35 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 16
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load ptr, ptr %23, align 4
  %40 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %39, i8 noundef zeroext 29, i8 noundef zeroext -128) #11
  br label %41

41:                                               ; preds = %38, %25
  %42 = load ptr, ptr %23, align 4
  %43 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  br label %46

44:                                               ; preds = %22
  %45 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 0, i8 noundef zeroext -128) #11
  br label %46

46:                                               ; preds = %44, %41, %16, %10
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subdev_subscribe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_s_routing(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr i8, ptr %0, i32 -112
  %6 = getelementptr i8, ptr %0, i32 228
  %7 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %4
  %10 = icmp ugt i32 %1, 31
  br i1 %10, label %27, label %11

11:                                               ; preds = %9
  %12 = shl nuw i32 1, %1
  %13 = getelementptr i8, ptr %0, i32 292
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.adv7180_chip_info, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.adv7180_chip_info, ptr %14, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %5, i32 noundef %1) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = trunc i32 %1 to i8
  %26 = getelementptr i8, ptr %0, i32 274
  store i8 %25, ptr %26, align 2
  br label %27

27:                                               ; preds = %24, %19, %11, %9
  %28 = phi i32 [ 0, %24 ], [ %22, %19 ], [ -22, %11 ], [ -22, %9 ]
  tail call void @mutex_unlock(ptr noundef %6) #11
  br label %29

29:                                               ; preds = %27, %4
  %30 = phi i32 [ %28, %27 ], [ %7, %4 ]
  ret i32 %30
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @adv7180_g_std(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr i8, ptr %0, i32 264
  %4 = load i64, ptr %3, align 8
  store i64 %4, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_s_std(ptr noundef %0, i64 noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 -112
  %4 = getelementptr i8, ptr %0, i32 228
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %2
  switch i64 %1, label %18 [
    i64 2048, label %8
    i64 16384, label %10
    i64 512, label %12
    i64 256, label %14
    i64 1024, label %16
  ]

8:                                                ; preds = %7
  %9 = getelementptr i8, ptr %0, i32 264
  store i64 2048, ptr %9, align 8
  br label %35

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %0, i32 264
  store i64 16384, ptr %11, align 8
  br label %23

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %0, i32 264
  store i64 512, ptr %13, align 8
  br label %24

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %0, i32 264
  store i64 256, ptr %15, align 8
  br label %25

16:                                               ; preds = %7
  %17 = getelementptr i8, ptr %0, i32 264
  store i64 1024, ptr %17, align 8
  br label %35

18:                                               ; preds = %7
  %19 = and i64 %1, 16756991
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %0, i32 264
  store i64 %1, ptr %22, align 8
  switch i64 %1, label %26 [
    i64 2048, label %35
    i64 16384, label %23
    i64 512, label %24
    i64 256, label %25
  ]

23:                                               ; preds = %21, %10
  br label %35

24:                                               ; preds = %21, %12
  br label %35

25:                                               ; preds = %21, %14
  br label %35

26:                                               ; preds = %21
  %27 = and i64 %1, 255
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = and i64 %1, 45056
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = and i64 %1, 16711680
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32, %29, %26, %25, %24, %23, %21, %16, %8
  %36 = phi i32 [ 14, %32 ], [ 5, %29 ], [ 8, %26 ], [ 6, %21 ], [ 12, %16 ], [ 10, %25 ], [ 9, %24 ], [ 7, %23 ], [ 6, %8 ]
  %37 = getelementptr i8, ptr %0, i32 292
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.adv7180_chip_info, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef %3, i32 noundef %36) #11
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 0) #11
  br label %43

43:                                               ; preds = %35, %32, %18
  %44 = phi i32 [ %42, %35 ], [ -22, %32 ], [ -22, %18 ]
  tail call void @mutex_unlock(ptr noundef %4) #11
  br label %45

45:                                               ; preds = %43, %2
  %46 = phi i32 [ %44, %43 ], [ %5, %2 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_querystd(ptr noundef %0, ptr noundef writeonly %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 -112
  %4 = getelementptr i8, ptr %0, i32 228
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %73

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 273
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %71

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 292
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.adv7180_chip_info, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %3, i32 noundef 0) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %71

18:                                               ; preds = %11
  tail call void @msleep(i32 noundef 100) #11
  %19 = getelementptr i8, ptr %0, i32 280
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i32 276
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %19, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr i8, ptr %0, i32 276
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %28, i8 noundef zeroext 16) #11
  %30 = icmp slt i32 %29, 0
  %31 = icmp eq ptr %1, null
  %32 = or i1 %31, %30
  br i1 %32, label %49, label %33

33:                                               ; preds = %26
  %34 = and i32 %29, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = lshr i32 %29, 4
  %38 = and i32 %37, 7
  switch i32 %38, label %46 [
    i32 0, label %47
    i32 1, label %39
    i32 2, label %40
    i32 3, label %41
    i32 4, label %42
    i32 5, label %43
    i32 6, label %44
    i32 7, label %45
  ]

39:                                               ; preds = %36
  br label %47

40:                                               ; preds = %36
  br label %47

41:                                               ; preds = %36
  br label %47

42:                                               ; preds = %36
  br label %47

43:                                               ; preds = %36
  br label %47

44:                                               ; preds = %36
  br label %47

45:                                               ; preds = %36
  br label %47

46:                                               ; preds = %36
  unreachable

47:                                               ; preds = %45, %44, %43, %42, %41, %40, %39, %36, %33
  %48 = phi i64 [ 16711680, %45 ], [ 1536, %44 ], [ 16711680, %43 ], [ 255, %42 ], [ 2048, %41 ], [ 256, %40 ], [ 16384, %39 ], [ 0, %33 ], [ 45056, %36 ]
  store i64 %48, ptr %1, align 8
  br label %49

49:                                               ; preds = %47, %26
  %50 = getelementptr i8, ptr %0, i32 264
  %51 = load i64, ptr %50, align 8
  switch i64 %51, label %56 [
    i64 2048, label %65
    i64 16384, label %52
    i64 512, label %53
    i64 256, label %54
    i64 1024, label %55
  ]

52:                                               ; preds = %49
  br label %65

53:                                               ; preds = %49
  br label %65

54:                                               ; preds = %49
  br label %65

55:                                               ; preds = %49
  br label %65

56:                                               ; preds = %49
  %57 = and i64 %51, 255
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = and i64 %51, 45056
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = and i64 %51, 16711680
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62, %59, %56, %55, %54, %53, %52, %49
  %66 = phi i32 [ 14, %62 ], [ 5, %59 ], [ 8, %56 ], [ 6, %49 ], [ 12, %55 ], [ 10, %54 ], [ 9, %53 ], [ 7, %52 ]
  %67 = load ptr, ptr %12, align 4
  %68 = getelementptr inbounds %struct.adv7180_chip_info, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 %69(ptr noundef %3, i32 noundef %66) #11
  br label %71

71:                                               ; preds = %65, %62, %11, %7
  %72 = phi i32 [ %16, %11 ], [ %70, %65 ], [ -16, %7 ], [ -22, %62 ]
  tail call void @mutex_unlock(ptr noundef %4) #11
  br label %73

73:                                               ; preds = %71, %2
  %74 = phi i32 [ %72, %71 ], [ %5, %2 ]
  ret i32 %74
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @adv7180_g_tvnorms(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #6 {
  store i64 16777215, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_g_input_status(ptr noundef %0, ptr noundef writeonly %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 228
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef %3) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 280
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 276
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %7, align 8
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr i8, ptr %0, i32 276
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %16, i8 noundef zeroext 16) #11
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = icmp eq ptr %1, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %19
  %22 = shl nuw i32 %17, 1
  %23 = and i32 %22, 2
  %24 = xor i32 %23, 2
  store i32 %24, ptr %1, align 4
  br label %25

25:                                               ; preds = %21, %19, %14
  %26 = phi i32 [ %17, %14 ], [ 0, %21 ], [ 0, %19 ]
  tail call void @mutex_unlock(ptr noundef %3) #11
  br label %27

27:                                               ; preds = %25, %2
  %28 = phi i32 [ %26, %25 ], [ %4, %2 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_s_stream(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 273
  store i8 0, ptr %5, align 1
  br label %12

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 228
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 273
  store i8 1, ptr %11, align 1
  tail call void @mutex_unlock(ptr noundef %7) #11
  br label %12

12:                                               ; preds = %10, %6, %4
  %13 = phi i32 [ 0, %10 ], [ 0, %4 ], [ %8, %6 ]
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @adv7180_g_pixelaspect(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr i8, ptr %0, i32 264
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 63744
  %6 = icmp eq i64 %5, 0
  %7 = select i1 %6, i32 54, i32 11
  %8 = select i1 %6, i32 59, i32 10
  store i32 %7, ptr %1, align 4
  %9 = getelementptr inbounds %struct.v4l2_fract, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @adv7180_g_frame_interval(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr i8, ptr %0, i32 264
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 63744
  %6 = icmp eq i64 %5, 0
  %7 = select i1 %6, i32 1, i32 1001
  %8 = select i1 %6, i32 25, i32 30000
  %9 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %1, i32 0, i32 1
  store i32 %7, ptr %9, align 4
  %10 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %1, i32 0, i32 1, i32 1
  store i32 %8, ptr %10, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @adv7180_get_skip_frames(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #6 {
  store i32 2, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_init_cfg(ptr noundef %0, ptr noundef readonly %1) #1 {
  %3 = alloca %struct.v4l2_subdev_format, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #11
  %4 = icmp eq ptr %1, null
  %5 = zext i1 %4 to i32
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(84) %6, i8 0, i64 84, i1 false)
  store i32 %5, ptr %3, align 4
  %7 = call i32 @adv7180_set_pad_format(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @adv7180_enum_mbus_code(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #5 {
  %4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 2
  store i32 8198, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_get_pad_format(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #1 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  br i1 %5, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 998, i32 noundef 9, ptr noundef null) #11
  br label %12

12:                                               ; preds = %11, %7
  %13 = load ptr, ptr %1, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %6, ptr noundef align 4 dereferenceable(48) %13, i32 48, i1 false)
  br label %32

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  store i32 8198, ptr %15, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  store i32 1, ptr %16, align 4
  store i32 720, ptr %6, align 4
  %17 = getelementptr i8, ptr %0, i32 264
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 63744
  %20 = icmp eq i64 %19, 0
  %21 = select i1 %20, i32 576, i32 480
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %0, i32 296
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 7
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = lshr exact i32 %21, 1
  store i32 %27, ptr %22, align 4
  %28 = load i32, ptr %23, align 8
  br label %29

29:                                               ; preds = %26, %14
  %30 = phi i32 [ %24, %14 ], [ %28, %26 ]
  %31 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 3
  store i32 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %29, %12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_set_pad_format(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -112
  %5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 292
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %3
  store i32 7, ptr %6, align 4
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi i32 [ 1, %9 ], [ 7, %15 ]
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  store i32 8198, ptr %18, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  store i32 1, ptr %19, align 4
  store i32 720, ptr %5, align 4
  %20 = getelementptr i8, ptr %0, i32 264
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 63744
  %23 = icmp eq i64 %22, 0
  %24 = select i1 %23, i32 576, i32 480
  %25 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %0, i32 296
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 7
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = lshr exact i32 %24, 1
  store i32 %30, ptr %25, align 4
  br label %31

31:                                               ; preds = %29, %16
  %32 = load i32, ptr %2, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %62

34:                                               ; preds = %31
  %35 = load i32, ptr %26, align 8
  %36 = icmp eq i32 %35, %17
  br i1 %36, label %69, label %37

37:                                               ; preds = %34
  store i32 %17, ptr %26, align 8
  %38 = getelementptr i8, ptr %0, i32 280
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %0, i32 276
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %38, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr i8, ptr %0, i32 276
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %47, i8 noundef zeroext 15, i8 noundef zeroext 36) #11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = getelementptr i8, ptr %0, i32 292
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = getelementptr i8, ptr %0, i32 284
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %58, i8 noundef zeroext 0, i8 noundef zeroext -128) #11
  br label %60

60:                                               ; preds = %56, %50, %45
  tail call fastcc void @adv7180_set_field_mode(ptr noundef %4)
  %61 = tail call fastcc i32 @adv7180_set_power(ptr noundef %4, i1 noundef zeroext true)
  br label %69

62:                                               ; preds = %31
  %63 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %64 = load i16, ptr %63, align 4
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %67, !prof !9

66:                                               ; preds = %62
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 998, i32 noundef 9, ptr noundef null) #11
  br label %67

67:                                               ; preds = %66, %62
  %68 = load ptr, ptr %1, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %68, ptr noundef align 4 dereferenceable(48) %5, i32 48, i1 false)
  br label %69

69:                                               ; preds = %67, %60, %34
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @adv7180_get_mbus_config(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 292
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  store i32 5, ptr %2, align 4
  %10 = getelementptr inbounds %struct.v4l2_mbus_config, ptr %2, i32 0, i32 1
  store i32 273, ptr %10, align 4
  br label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.v4l2_mbus_config, ptr %2, i32 0, i32 1
  store i32 321, ptr %12, align 4
  store i32 2, ptr %2, align 4
  br label %13

13:                                               ; preds = %11, %9
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @adv7180_set_field_mode(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 16
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 1
  %11 = and i32 %4, 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i8 0, i8 112
  %14 = select i1 %10, i8 0, i8 -128
  %15 = select i1 %10, i8 -128, i8 0
  br i1 %12, label %42, label %16

16:                                               ; preds = %7
  %17 = select i1 %10, i8 80, i8 48
  %18 = select i1 %10, i8 112, i8 88
  %19 = select i1 %10, i8 -128, i8 64
  %20 = select i1 %10, i8 48, i8 40
  %21 = select i1 %10, i8 48, i8 32
  %22 = select i1 %10, i8 56, i8 48
  %23 = select i1 %10, i8 40, i8 24
  %24 = select i1 %10, i8 32, i8 24
  %25 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 13
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 1, i8 noundef zeroext %24) #11
  %28 = load ptr, ptr %25, align 4
  %29 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 2, i8 noundef zeroext %23) #11
  %30 = load ptr, ptr %25, align 4
  %31 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 3, i8 noundef zeroext %22) #11
  %32 = load ptr, ptr %25, align 4
  %33 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 4, i8 noundef zeroext %21) #11
  %34 = load ptr, ptr %25, align 4
  %35 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 5, i8 noundef zeroext %20) #11
  %36 = load ptr, ptr %25, align 4
  %37 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 6, i8 noundef zeroext %19) #11
  %38 = load ptr, ptr %25, align 4
  %39 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %38, i8 noundef zeroext 7, i8 noundef zeroext %18) #11
  %40 = load ptr, ptr %25, align 4
  %41 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 8, i8 noundef zeroext %17) #11
  br label %42

42:                                               ; preds = %16, %7
  %43 = getelementptr inbounds %struct.adv7180_state, ptr %0, i32 0, i32 14
  %44 = load ptr, ptr %43, align 8
  %45 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext -93, i8 noundef zeroext %13) #11
  %46 = load ptr, ptr %43, align 8
  %47 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 91, i8 noundef zeroext %14) #11
  %48 = load ptr, ptr %43, align 8
  %49 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext 85, i8 noundef zeroext %15) #11
  br label %50

50:                                               ; preds = %42, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_s_ctrl(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 3
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %116

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  switch i32 %11, label %114 [
    i32 9963776, label %12
    i32 9963779, label %25
    i32 9963777, label %39
    i32 9963778, label %52
    i32 9967984, label %75
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 12
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %13, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = trunc i32 %9 to i8
  %24 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 10, i8 noundef zeroext %23) #11
  br label %114

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 12
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 11
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %26, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 11
  %35 = load ptr, ptr %34, align 4
  %36 = trunc i32 %9 to i8
  %37 = sub i8 0, %36
  %38 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 11, i8 noundef zeroext %37) #11
  br label %114

39:                                               ; preds = %7
  %40 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 12
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 11
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %40, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 11
  %49 = load ptr, ptr %48, align 4
  %50 = trunc i32 %9 to i8
  %51 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 8, i8 noundef zeroext %50) #11
  br label %114

52:                                               ; preds = %7
  %53 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 12
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 11
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %58, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %53, align 8
  br label %60

60:                                               ; preds = %56, %52
  %61 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 11
  %62 = load ptr, ptr %61, align 4
  %63 = trunc i32 %9 to i8
  %64 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %62, i8 noundef zeroext -29, i8 noundef zeroext %63) #11
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %114, label %66

66:                                               ; preds = %60
  %67 = load i32, ptr %53, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %61, align 4
  %71 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %70, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %53, align 8
  br label %72

72:                                               ; preds = %69, %66
  %73 = load ptr, ptr %61, align 4
  %74 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %73, i8 noundef zeroext -28, i8 noundef zeroext %63) #11
  br label %114

75:                                               ; preds = %7
  %76 = icmp eq i32 %9, 0
  %77 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 12
  %78 = load i32, ptr %77, align 8
  %79 = icmp eq i32 %78, 128
  br i1 %76, label %97, label %80

80:                                               ; preds = %75
  br i1 %79, label %85, label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 11
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext 14, i8 noundef zeroext -128) #11
  store i32 128, ptr %77, align 8
  br label %85

85:                                               ; preds = %81, %80
  %86 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 11
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %87, i8 noundef zeroext -39, i8 noundef zeroext 68) #11
  %89 = load i32, ptr %77, align 8
  %90 = icmp eq i32 %89, 64
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load ptr, ptr %86, align 4
  %93 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %92, i8 noundef zeroext 14, i8 noundef zeroext 64) #11
  store i32 64, ptr %77, align 8
  br label %94

94:                                               ; preds = %91, %85
  %95 = load ptr, ptr %86, align 4
  %96 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %95, i8 noundef zeroext -32, i8 noundef zeroext 1) #11
  br label %114

97:                                               ; preds = %75
  br i1 %79, label %102, label %98

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 11
  %100 = load ptr, ptr %99, align 4
  %101 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %100, i8 noundef zeroext 14, i8 noundef zeroext -128) #11
  store i32 128, ptr %77, align 8
  br label %102

102:                                              ; preds = %98, %97
  %103 = getelementptr inbounds %struct.adv7180_state, ptr %3, i32 0, i32 11
  %104 = load ptr, ptr %103, align 4
  %105 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %104, i8 noundef zeroext -39, i8 noundef zeroext -60) #11
  %106 = load i32, ptr %77, align 8
  %107 = icmp eq i32 %106, 64
  br i1 %107, label %111, label %108

108:                                              ; preds = %102
  %109 = load ptr, ptr %103, align 4
  %110 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %109, i8 noundef zeroext 14, i8 noundef zeroext 64) #11
  store i32 64, ptr %77, align 8
  br label %111

111:                                              ; preds = %108, %102
  %112 = load ptr, ptr %103, align 4
  %113 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %112, i8 noundef zeroext -32, i8 noundef zeroext 0) #11
  br label %114

114:                                              ; preds = %111, %94, %72, %60, %47, %33, %20, %7
  %115 = phi i32 [ 0, %94 ], [ 0, %111 ], [ %64, %60 ], [ %74, %72 ], [ %51, %47 ], [ %38, %33 ], [ %24, %20 ], [ -22, %7 ]
  tail call void @mutex_unlock(ptr noundef %4) #11
  br label %116

116:                                              ; preds = %114, %1
  %117 = phi i32 [ %115, %114 ], [ %5, %1 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_notify_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_suspend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 280
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 276
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 14, i8 noundef zeroext 0) #11
  store i32 0, ptr %4, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr i8, ptr %3, i32 276
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 15, i8 noundef zeroext 36) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %3, i32 292
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %3, i32 284
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 0, i8 noundef zeroext -128) #11
  br label %26

26:                                               ; preds = %22, %16, %11
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7180_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -112
  %5 = tail call fastcc i32 @init_device(ptr noundef %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 272
  %9 = load i8, ptr %8, align 8, !range !8
  %10 = icmp ne i8 %9, 0
  %11 = tail call fastcc i32 @adv7180_set_power(ptr noundef %4, i1 noundef zeroext %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i32 [ %5, %1 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
