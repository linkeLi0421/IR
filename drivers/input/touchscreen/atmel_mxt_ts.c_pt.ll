; ModuleID = '/llk/IR/drivers/input/touchscreen/atmel_mxt_ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/atmel_mxt_ts.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.mxt_data = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i32, i32, i8, ptr, i8, i8, i8, i8, i8, %struct.t7_config, %struct.mxt_dbg, [2 x %struct.regulator_bulk_data], ptr, ptr, i8, i16, i8, i8, i16, i16, i16, i8, i8, i16, i8, i16, i8, i8, %struct.completion, %struct.completion, %struct.completion, ptr, i32, i32, i32 }
%struct.t7_config = type { i8, i8 }
%struct.mxt_dbg = type { i16, i16, ptr, i32, i32, %struct.v4l2_device, %struct.v4l2_pix_format, %struct.video_device, %struct.vb2_queue, %struct.mutex, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.83, i32, i32 }
%union.anon.83 = type { i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.77 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.74], %struct.media_entity_enum, i32 }
%struct.anon.74 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mxt_info = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.mxt_object = type <{ i8, i16, i8, i8, i8 }>
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.t9_range = type { i16, i16 }
%struct.mxt_cfg = type { ptr, i32, i32, ptr, i32, i32, %struct.mxt_info }
%struct.firmware = type { i32, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@mxt_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,maxtouch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,qt602240_ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,atmel_mxt_ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,atmel_mxt_tp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,mXT224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@mxt_id = internal constant [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"qt602240_ts\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"atmel_mxt_ts\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"atmel_mxt_tp\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"maxtouch\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"mXT224\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author257 = internal constant [48 x i8] c"author=Joonyoung Shim <jy0922.shim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description258 = internal constant [46 x i8] c"description=Atmel maXTouch Touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@mxt_driver = internal global %struct.i2c_driver { i32 0, ptr @mxt_probe, ptr @mxt_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxt_pm_ops, ptr null, ptr null }, ptr @mxt_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"atmel_mxt_ts\00", align 1
@mxt_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @mxt_suspend, ptr @mxt_resume, ptr @mxt_suspend, ptr @mxt_resume, ptr @mxt_suspend, ptr @mxt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"i2c-%u-%04x/input0\00", align 1
@chromebook_T9_suspend_dmi = internal constant [3 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"GOOGLE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Link\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 7, [79 x i8] c"Peppy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"vdda\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to get regulators %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to get reset gpio: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"wake\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Failed to get wake gpio: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Failed to register interrupt\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"failed to enable regulators: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"atmel,wakeup-method\00", align 1
@mxt_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mxt_attrs, ptr null }, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"Failure %d creating sysfs group\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@mxt_parse_device_properties.keymap_property = internal constant [18 x i8] c"linux,gpio-keymap\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"invalid/malformed '%s' property: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"failed to parse '%s' property: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Failed to read T44 and T5 (%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"T44 count %d exceeded max report id\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Unexpected invalid message\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"%s: i2c transfer failed (%d)\0A\00", align 1
@__func__.__mxt_read_reg = private unnamed_addr constant [15 x i8] c"__mxt_read_reg\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Failed to read %u messages (%d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Trying alternate bootloader address\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Could not recover from bootloader mode\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"maxtouch.cfg\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"Failed to invoke firmware loader: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"Info Block CRC error calculated=0x%06X read=0x%06X\0A\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"Family: %u Variant: %u Firmware V%u.%u.%02X Objects: %u\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Error %d parsing object table\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.29 = private unnamed_addr constant [22 x i8] c"Invalid T44 position\0A\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"Detected bootloader, status:%02X%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c", APP_CRC_FAIL\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"Appmode i2c address 0x%02x not found\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"%s: i2c recv failed (%d)\0A\00", align 1
@__func__.mxt_bootloader_read = private unnamed_addr constant [20 x i8] c"mxt_bootloader_read\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"%s: i2c send failed (%d)\0A\00", align 1
@__func__.mxt_bootloader_write = private unnamed_addr constant [21 x i8] c"mxt_bootloader_write\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"Enabling RETRIGEN workaround\0A\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"CHG pin isn't cleared\0A\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"Failed to initialize power cfg\0A\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"Error %d updating config\0A\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"No touch object detected\0A\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"Resetting device\0A\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"Command failed!\0A\00", align 1
@__func__.__mxt_write_reg = private unnamed_addr constant [16 x i8] c"__mxt_write_reg\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"Wait for completion timed out.\0A\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"OBP_RAW V1\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"Unrecognised config file\0A\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"%hhx%n\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"Bad format\0A\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"Family ID mismatch!\0A\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"Variant ID mismatch!\0A\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"%x%n\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"Bad format: failed to parse Info CRC\0A\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"Bad format: failed to parse Config CRC\0A\00", align 1
@.str.53 = private unnamed_addr constant [38 x i8] c"CRC zero, attempting to apply config\0A\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c"Config CRC 0x%06X: does not match file 0x%06X\0A\00", align 1
@.str.55 = private unnamed_addr constant [53 x i8] c"Warning: Info CRC error - device=0x%06X file=0x%06X\0A\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"Could not find CRC start\0A\00", align 1
@.str.57 = private unnamed_addr constant [61 x i8] c"Config CRC in file inconsistent, calculated=%06X, file=%06X\0A\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"Config successfully updated\0A\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"%x %x %x%n\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"Bad format: failed to parse object\0A\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"Bad format in T%d at %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"Discarding %zu byte(s) in T%u\0A\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"Zeroing %zu byte(s) in T%d\0A\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"Object instances exceeded!\0A\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"Bad object: reg:%d, T%d, ofs=%d\0A\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"Invalid object type T%u\0A\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"Config write error, ret=%d\0A\00", align 1
@.str.68 = private unnamed_addr constant [36 x i8] c"Failed to initialize T9 resolution\0A\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"Failed to read T100 config\0A\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"Invalid multitouch object\0A\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"Touchscreen size X%uY%u\0A\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"Atmel maXTouch Touchscreen\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"Error %d initialising slots\0A\00", align 1
@.str.74 = private unnamed_addr constant [35 x i8] c"Error %d registering input device\0A\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"Atmel maXTouch Touchpad\00", align 1
@mxt_attrs = internal global [5 x ptr] [ptr @dev_attr_fw_version, ptr @dev_attr_hw_version, ptr @dev_attr_object, ptr @dev_attr_update_fw, ptr null], align 4
@dev_attr_fw_version = internal global %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292 }, ptr @mxt_fw_version_show, ptr null }, align 4
@dev_attr_hw_version = internal global %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292 }, ptr @mxt_hw_version_show, ptr null }, align 4
@dev_attr_object = internal global %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292 }, ptr @mxt_object_show, ptr null }, align 4
@dev_attr_update_fw = internal global %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 128 }, ptr null, ptr @mxt_update_fw_store }, align 4
@.str.76 = private unnamed_addr constant [11 x i8] c"fw_version\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"%u.%u.%02X\0A\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"hw_version\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"%u.%u\0A\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"T%u:\0A\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"Instance %u\0A\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"\09[%2u]: %02x (%d)\0A\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"update_fw\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"maxtouch.fw\00", align 1
@.str.87 = private unnamed_addr constant [32 x i8] c"The firmware update failed(%d)\0A\00", align 1
@.str.88 = private unnamed_addr constant [31 x i8] c"The firmware update succeeded\0A\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"Unable to open firmware %s\0A\00", align 1
@.str.90 = private unnamed_addr constant [22 x i8] c"Unlocking bootloader\0A\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"Retry count exceeded\0A\00", align 1
@.str.92 = private unnamed_addr constant [50 x i8] c"Aborting: firmware file must be in binary format\0A\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"Update wait error %d\0A\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"Bootloader CRC fail\0A\00", align 1
@.str.95 = private unnamed_addr constant [39 x i8] c"Invalid bootloader state %02X != %02X\0A\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"%s: i2c failure\0A\00", align 1
@__func__.mxt_get_bootloader_version = private unnamed_addr constant [27 x i8] c"mxt_get_bootloader_version\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_license259], section "llvm.metadata"

@__mod_of__mxt_of_match_device_table = dso_local alias [6 x %struct.of_device_id], ptr @mxt_of_match
@__mod_i2c__mxt_id_device_table = dso_local alias [6 x %struct.i2c_device_id], ptr @mxt_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @mxt_driver) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @mxt_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxt_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str.1) #13
  br i1 %4, label %5, label %104

5:                                                ; preds = %2
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1632, i32 noundef 3520) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %104, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 2
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %9, i32 noundef 64, ptr noundef nonnull @.str.2, i32 noundef %13, i32 noundef %16)
  store ptr %0, ptr %6, align 8
  %18 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 6
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %6, ptr %21, align 8
  %22 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 48
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 48, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %23, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #13
  %24 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 49
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 49, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %25, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #13
  %26 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 50
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 50, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %27, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #13
  %28 = tail call i32 @dmi_check_system(ptr noundef nonnull @chromebook_T9_suspend_dmi) #13
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 53
  store i32 %30, ptr %31, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  %34 = tail call zeroext i1 @device_property_present(ptr noundef %33, ptr noundef nonnull @mxt_parse_device_properties.keymap_property) #13
  br i1 %34, label %35, label %55

35:                                               ; preds = %8
  %36 = tail call i32 @device_property_read_u32_array(ptr noundef %33, ptr noundef nonnull @mxt_parse_device_properties.keymap_property, ptr noundef null, i32 noundef 0) #13
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = icmp eq i32 %36, 0
  %40 = select i1 %39, i32 -22, i32 %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.15, ptr noundef nonnull @mxt_parse_device_properties.keymap_property, i32 noundef %40) #14
  br label %104

41:                                               ; preds = %35
  %42 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %36, i32 4) #13
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %104, label %44, !prof !8

44:                                               ; preds = %41
  %45 = extractvalue { i32, i1 } %42, 0
  %46 = tail call noalias ptr @devm_kmalloc(ptr noundef %33, i32 noundef %45, i32 noundef 3264) #13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %104, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @device_property_read_u32_array(ptr noundef %33, ptr noundef nonnull @mxt_parse_device_properties.keymap_property, ptr noundef nonnull %46, i32 noundef %36) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.16, ptr noundef nonnull @mxt_parse_device_properties.keymap_property, i32 noundef %49) #14
  br label %104

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 51
  store ptr %46, ptr %53, align 8
  %54 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 52
  store i32 %36, ptr %54, align 4
  br label %55

55:                                               ; preds = %52, %8
  %56 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 31
  store ptr @.str.3, ptr %56, align 8
  %57 = getelementptr %struct.mxt_data, ptr %6, i32 0, i32 31, i32 1
  store ptr @.str.4, ptr %57, align 4
  %58 = tail call i32 @devm_regulator_bulk_get(ptr noundef %3, i32 noundef 2, ptr noundef %56) #13
  switch i32 %58, label %59 [
    i32 0, label %60
    i32 -517, label %104
  ]

59:                                               ; preds = %55
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %58) #14
  br label %104

60:                                               ; preds = %55
  %61 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef 7) #13
  %62 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 32
  store ptr %61, ptr %62, align 8
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = ptrtoint ptr %61 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %65) #14
  br label %104

66:                                               ; preds = %60
  %67 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef 7) #13
  %68 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 33
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = ptrtoint ptr %67 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %71) #14
  br label %104

72:                                               ; preds = %66
  %73 = load i32, ptr %18, align 4
  %74 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  %75 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %73, ptr noundef null, ptr noundef nonnull @mxt_interrupt, i32 noundef 532480, ptr noundef %74, ptr noundef nonnull %6) #13
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #14
  br label %104

78:                                               ; preds = %72
  %79 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %56) #13
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %79) #14
  br label %104

82:                                               ; preds = %78
  tail call void @msleep(i32 noundef 50) #13
  %83 = load ptr, ptr %62, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  tail call void @msleep(i32 noundef 20) #13
  %86 = load ptr, ptr %62, align 8
  tail call void @gpiod_set_value(ptr noundef %86, i32 noundef 0) #13
  tail call void @msleep(i32 noundef 100) #13
  br label %87

87:                                               ; preds = %85, %82
  %88 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 54
  %89 = tail call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef %88, i32 noundef 1) #13
  %90 = tail call fastcc i32 @mxt_initialize(ptr noundef nonnull %6)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = tail call i32 @sysfs_create_group(ptr noundef %3, ptr noundef nonnull @mxt_attr_group) #13
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %93) #14
  %96 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call void @input_unregister_device(ptr noundef nonnull %97) #13
  store ptr null, ptr %96, align 4
  br label %100

100:                                              ; preds = %99, %95
  tail call fastcc void @mxt_free_object_table(ptr noundef nonnull %6)
  br label %101

101:                                              ; preds = %100, %87
  %102 = phi i32 [ %90, %87 ], [ %93, %100 ]
  %103 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %56) #13
  br label %104

104:                                              ; preds = %101, %92, %81, %77, %70, %64, %59, %55, %51, %44, %41, %38, %5, %2
  %105 = phi i32 [ %65, %64 ], [ %71, %70 ], [ %75, %77 ], [ %79, %81 ], [ %102, %101 ], [ -6, %2 ], [ -12, %5 ], [ %58, %55 ], [ %58, %59 ], [ 0, %92 ], [ -12, %41 ], [ -12, %44 ], [ %49, %51 ], [ %40, %38 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxt_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  tail call void @disable_irq(i32 noundef %5) #13
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void @sysfs_remove_group(ptr noundef %6, ptr noundef nonnull @mxt_attr_group) #13
  %7 = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @input_unregister_device(ptr noundef nonnull %8) #13
  store ptr null, ptr %7, align 4
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 3
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 4
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  tail call void @kfree(ptr noundef %15) #13
  store ptr null, ptr %14, align 8
  %16 = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 23
  %17 = load ptr, ptr %16, align 8
  tail call void @kfree(ptr noundef %17) #13
  store ptr null, ptr %16, align 8
  %18 = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 35
  %19 = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 39
  %20 = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 45
  %21 = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 19
  store i8 0, ptr %21, align 1
  store i32 0, ptr %18, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(9) %19, i8 0, i64 9, i1 false) #13
  store i32 0, ptr %20, align 2
  %22 = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 31
  %23 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %22) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmi_check_system(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxt_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 14
  %4 = load i8, ptr %3, align 1, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 48
  tail call void @complete(ptr noundef %7) #13
  br label %199

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %199, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 45
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %97, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %1, align 8
  %18 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 36
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i16
  %22 = add nuw nsw i16 %21, 1
  %23 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 23
  %24 = load ptr, ptr %23, align 8
  %25 = tail call fastcc i32 @__mxt_read_reg(ptr noundef %17, i16 noundef zeroext %14, i16 noundef zeroext %22, ptr noundef %24) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.17, i32 noundef %25) #14
  br label %199

28:                                               ; preds = %16
  %29 = load ptr, ptr %23, align 8
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i8 %30, 0
  br i1 %32, label %199, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 19
  %35 = load i8, ptr %34, align 1
  %36 = icmp ugt i8 %30, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.18, i32 noundef %31) #14
  %38 = load i8, ptr %34, align 1
  %39 = load ptr, ptr %23, align 8
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi ptr [ %39, %37 ], [ %29, %33 ]
  %42 = phi i8 [ %38, %37 ], [ %30, %33 ]
  %43 = getelementptr i8, ptr %41, i32 1
  %44 = tail call fastcc i32 @mxt_proc_message(ptr noundef %1, ptr noundef %43) #13
  %45 = add i8 %42, -1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %86, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr %1, align 8
  %49 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  %50 = zext i8 %45 to i32
  %51 = load i8, ptr %34, align 1
  %52 = icmp ult i8 %51, %45
  br i1 %52, label %86, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 35
  %55 = load i16, ptr %54, align 2
  %56 = load i8, ptr %19, align 4
  %57 = zext i8 %56 to i32
  %58 = mul nuw nsw i32 %57, %50
  %59 = trunc i32 %58 to i16
  %60 = load ptr, ptr %23, align 8
  %61 = tail call fastcc i32 @__mxt_read_reg(ptr noundef %48, i16 noundef zeroext %55, i16 noundef zeroext %59, ptr noundef %60) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.21, i32 noundef %50, i32 noundef %61) #14
  br label %80

64:                                               ; preds = %64, %53
  %65 = phi i8 [ %75, %64 ], [ 0, %53 ]
  %66 = phi i32 [ %76, %64 ], [ 0, %53 ]
  %67 = load ptr, ptr %23, align 8
  %68 = load i8, ptr %19, align 4
  %69 = zext i8 %68 to i32
  %70 = mul i32 %66, %69
  %71 = getelementptr i8, ptr %67, i32 %70
  %72 = tail call fastcc i32 @mxt_proc_message(ptr noundef %1, ptr noundef %71) #13
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i8
  %75 = add i8 %65, %74
  %76 = add nuw nsw i32 %66, 1
  %77 = icmp eq i32 %76, %50
  br i1 %77, label %78, label %64

78:                                               ; preds = %64
  %79 = zext i8 %75 to i32
  br label %80

80:                                               ; preds = %78, %63
  %81 = phi i32 [ %61, %63 ], [ %79, %78 ]
  %82 = icmp slt i32 %81, 0
  %83 = icmp eq i32 %81, %50
  %84 = select i1 %82, i1 true, i1 %83
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.19) #14
  br label %86

86:                                               ; preds = %85, %80, %47, %40
  %87 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 25
  %88 = load i8, ptr %87, align 1, !range !9
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %199, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 52
  %94 = load i32, ptr %93, align 4
  %95 = icmp ne i32 %94, 0
  tail call void @input_mt_report_pointer_emulation(ptr noundef %92, i1 noundef zeroext %95) #13
  %96 = load ptr, ptr %91, align 4
  tail call void @input_event(ptr noundef %96, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  store i8 0, ptr %87, align 1
  br label %199

97:                                               ; preds = %12
  %98 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 26
  %99 = load i8, ptr %98, align 2
  %100 = icmp eq i8 %99, 0
  %101 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 19
  %102 = load i8, ptr %101, align 1
  %103 = icmp ugt i8 %99, %102
  %104 = select i1 %100, i1 true, i1 %103
  %105 = select i1 %104, i8 1, i8 %99
  %106 = add i8 %105, 1
  %107 = load ptr, ptr %1, align 8
  %108 = getelementptr inbounds %struct.i2c_client, ptr %107, i32 0, i32 4
  %109 = zext i8 %106 to i32
  %110 = icmp ult i8 %102, %106
  br i1 %110, label %199, label %111

111:                                              ; preds = %97
  %112 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 35
  %113 = load i16, ptr %112, align 2
  %114 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 36
  %115 = load i8, ptr %114, align 4
  %116 = zext i8 %115 to i32
  %117 = mul nuw nsw i32 %116, %109
  %118 = trunc i32 %117 to i16
  %119 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 23
  %120 = load ptr, ptr %119, align 8
  %121 = tail call fastcc i32 @__mxt_read_reg(ptr noundef %107, i16 noundef zeroext %113, i16 noundef zeroext %118, ptr noundef %120) #13
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %111
  %124 = icmp eq i8 %106, 0
  br i1 %124, label %186, label %125

125:                                              ; preds = %125, %123
  %126 = phi i8 [ %136, %125 ], [ 0, %123 ]
  %127 = phi i32 [ %137, %125 ], [ 0, %123 ]
  %128 = load ptr, ptr %119, align 8
  %129 = load i8, ptr %114, align 4
  %130 = zext i8 %129 to i32
  %131 = mul i32 %127, %130
  %132 = getelementptr i8, ptr %128, i32 %131
  %133 = tail call fastcc i32 @mxt_proc_message(ptr noundef %1, ptr noundef %132) #13
  %134 = icmp eq i32 %133, 1
  %135 = zext i1 %134 to i8
  %136 = add i8 %126, %135
  %137 = add nuw nsw i32 %127, 1
  %138 = icmp eq i32 %137, %109
  br i1 %138, label %139, label %125

139:                                              ; preds = %125
  %140 = zext i8 %136 to i32
  br label %143

141:                                              ; preds = %111
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.21, i32 noundef %109, i32 noundef %121) #14
  %142 = icmp slt i32 %121, 0
  br i1 %142, label %199, label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %121, %141 ], [ %140, %139 ]
  %145 = zext i8 %105 to i32
  %146 = icmp ugt i32 %144, %145
  br i1 %146, label %147, label %186

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 27
  br label %149

149:                                              ; preds = %182, %147
  %150 = phi i32 [ %180, %182 ], [ %144, %147 ]
  %151 = load ptr, ptr %1, align 8
  %152 = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 4
  %153 = load i8, ptr %101, align 1
  %154 = icmp ult i8 %153, 2
  br i1 %154, label %199, label %155

155:                                              ; preds = %149
  %156 = load i16, ptr %112, align 2
  %157 = load i8, ptr %114, align 4
  %158 = zext i8 %157 to i16
  %159 = shl nuw nsw i16 %158, 1
  %160 = load ptr, ptr %119, align 8
  %161 = tail call fastcc i32 @__mxt_read_reg(ptr noundef %151, i16 noundef zeroext %156, i16 noundef zeroext %159, ptr noundef %160) #13
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %155
  %164 = load ptr, ptr %119, align 8
  %165 = tail call fastcc i32 @mxt_proc_message(ptr noundef %1, ptr noundef %164) #13
  %166 = icmp eq i32 %165, 1
  %167 = zext i1 %166 to i32
  %168 = load ptr, ptr %119, align 8
  %169 = load i8, ptr %114, align 4
  %170 = zext i8 %169 to i32
  %171 = getelementptr i8, ptr %168, i32 %170
  %172 = tail call fastcc i32 @mxt_proc_message(ptr noundef %1, ptr noundef %171) #13
  %173 = icmp eq i32 %172, 1
  %174 = zext i1 %173 to i32
  %175 = add nuw nsw i32 %174, %167
  br label %178

176:                                              ; preds = %155
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.21, i32 noundef 2, i32 noundef %161) #14
  %177 = icmp slt i32 %161, 0
  br i1 %177, label %199, label %178

178:                                              ; preds = %176, %163
  %179 = phi i32 [ %175, %163 ], [ %161, %176 ]
  %180 = add i32 %179, %150
  %181 = icmp ult i32 %179, 2
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = load i8, ptr %148, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp slt i32 %180, %184
  br i1 %185, label %149, label %186

186:                                              ; preds = %182, %178, %143, %123
  %187 = phi i32 [ %144, %143 ], [ 0, %123 ], [ %180, %178 ], [ %180, %182 ]
  %188 = trunc i32 %187 to i8
  store i8 %188, ptr %98, align 2
  %189 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 25
  %190 = load i8, ptr %189, align 1, !range !9
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %199, label %192

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 1
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 52
  %196 = load i32, ptr %195, align 4
  %197 = icmp ne i32 %196, 0
  tail call void @input_mt_report_pointer_emulation(ptr noundef %194, i1 noundef zeroext %197) #13
  %198 = load ptr, ptr %193, align 4
  tail call void @input_event(ptr noundef %198, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  store i8 0, ptr %189, align 1
  br label %199

199:                                              ; preds = %192, %186, %176, %149, %141, %97, %90, %86, %28, %27, %8, %6
  %200 = phi i32 [ 1, %6 ], [ 1, %8 ], [ 0, %27 ], [ 0, %28 ], [ 1, %90 ], [ 1, %86 ], [ 0, %141 ], [ 1, %192 ], [ 1, %186 ], [ 0, %97 ], [ 0, %149 ], [ 0, %176 ]
  ret i32 %200
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mxt_initialize(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 23
  %10 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 35
  %11 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 39
  %12 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 45
  %13 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 19
  %14 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 21
  %15 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 15
  %16 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 28
  %17 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 46
  %18 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 47
  %19 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 27
  %20 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 44
  %21 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 43
  %22 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 41
  %23 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 42
  %24 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 40
  %25 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 37
  %26 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 38
  %27 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 36
  %28 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %29 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %30 = getelementptr inbounds i8, ptr %3, i32 4
  %31 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 22
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  br label %34

34:                                               ; preds = %272, %1
  %35 = phi ptr [ %273, %272 ], [ %5, %1 ]
  %36 = phi i1 [ true, %272 ], [ false, %1 ]
  %37 = load ptr, ptr %6, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  store ptr null, ptr %7, align 8
  store ptr null, ptr %8, align 4
  call void @kfree(ptr noundef nonnull %37) #13
  store ptr null, ptr %6, align 8
  %40 = load ptr, ptr %9, align 8
  call void @kfree(ptr noundef %40) #13
  store ptr null, ptr %9, align 8
  store i8 0, ptr %13, align 1
  store i32 0, ptr %10, align 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(9) %11, i8 0, i64 9, i1 false) #13
  store i32 0, ptr %12, align 2
  br label %41

41:                                               ; preds = %39, %34
  %42 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %43 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 7) #15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %248, label %45

45:                                               ; preds = %41
  %46 = call fastcc i32 @__mxt_read_reg(ptr noundef %35, i16 noundef zeroext 0, i16 noundef zeroext 7, ptr noundef nonnull %43) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %246

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.mxt_info, ptr %43, i32 0, i32 6
  %50 = load i8, ptr %49, align 2
  %51 = zext i8 %50 to i32
  %52 = mul nuw nsw i32 %51, 6
  %53 = add nuw nsw i32 %52, 10
  %54 = call noalias ptr @krealloc(ptr noundef nonnull %43, i32 noundef %53, i32 noundef 3264) #16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %246, label %56

56:                                               ; preds = %48
  %57 = trunc i32 %52 to i16
  %58 = add nuw nsw i16 %57, 3
  %59 = getelementptr i8, ptr %54, i32 7
  %60 = call fastcc i32 @__mxt_read_reg(ptr noundef %35, i16 noundef zeroext 7, i16 noundef zeroext %58, ptr noundef %59) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %246

62:                                               ; preds = %56
  %63 = getelementptr i8, ptr %54, i32 -3
  %64 = getelementptr i8, ptr %63, i32 %53
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr i8, ptr %64, i32 1
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 8
  %71 = or i32 %70, %66
  %72 = getelementptr i8, ptr %64, i32 2
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 16
  %76 = or i32 %71, %75
  store i32 %76, ptr %14, align 8
  %77 = add nuw nsw i32 %52, 7
  %78 = getelementptr i8, ptr %54, i32 -1
  %79 = getelementptr i8, ptr %78, i32 %77
  %80 = icmp ult ptr %54, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %81, %62
  %82 = phi ptr [ %97, %81 ], [ %54, %62 ]
  %83 = phi i32 [ %96, %81 ], [ 0, %62 ]
  %84 = load i8, ptr %82, align 1
  %85 = getelementptr i8, ptr %82, i32 1
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl nuw nsw i32 %87, 8
  %89 = zext i8 %84 to i32
  %90 = or i32 %88, %89
  %91 = shl i32 %83, 1
  %92 = xor i32 %90, %91
  %93 = and i32 %83, 8388608
  %94 = icmp eq i32 %93, 0
  %95 = xor i32 %92, 8388635
  %96 = select i1 %94, i32 %92, i32 %95
  %97 = getelementptr i8, ptr %82, i32 2
  %98 = icmp ult ptr %97, %79
  br i1 %98, label %81, label %99

99:                                               ; preds = %81, %62
  %100 = phi i32 [ 0, %62 ], [ %96, %81 ]
  %101 = phi ptr [ %54, %62 ], [ %97, %81 ]
  %102 = icmp eq ptr %101, %79
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load i8, ptr %79, align 1
  %105 = zext i8 %104 to i32
  %106 = shl i32 %100, 1
  %107 = xor i32 %106, %105
  %108 = and i32 %100, 8388608
  %109 = icmp eq i32 %108, 0
  %110 = xor i32 %107, 8388635
  %111 = select i1 %109, i32 %107, i32 %110
  br label %112

112:                                              ; preds = %103, %99
  %113 = phi i32 [ %111, %103 ], [ %100, %99 ]
  %114 = and i32 %113, 16777215
  %115 = icmp ne i32 %76, 0
  %116 = icmp eq i32 %76, %114
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %120, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.26, i32 noundef %114, i32 noundef %76) #14
  br label %246

120:                                              ; preds = %112
  store ptr %54, ptr %6, align 8
  store ptr %54, ptr %8, align 4
  %121 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  %122 = load i8, ptr %54, align 1
  %123 = zext i8 %122 to i32
  %124 = getelementptr inbounds %struct.mxt_info, ptr %54, i32 0, i32 1
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = getelementptr inbounds %struct.mxt_info, ptr %54, i32 0, i32 2
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = lshr i32 %129, 4
  %131 = and i32 %129, 15
  %132 = getelementptr inbounds %struct.mxt_info, ptr %54, i32 0, i32 3
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  %135 = getelementptr inbounds %struct.mxt_info, ptr %54, i32 0, i32 6
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %121, ptr noundef nonnull @.str.27, i32 noundef %123, i32 noundef %126, i32 noundef %130, i32 noundef %131, i32 noundef %134, i32 noundef %137) #14
  %138 = load ptr, ptr %0, align 8
  store i16 0, ptr %15, align 2
  %139 = load ptr, ptr %8, align 4
  %140 = getelementptr inbounds %struct.mxt_info, ptr %139, i32 0, i32 6
  %141 = load i8, ptr %140, align 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %225, label %143

143:                                              ; preds = %120
  %144 = getelementptr inbounds %struct.mxt_info, ptr %139, i32 0, i32 2
  br label %145

145:                                              ; preds = %219, %143
  %146 = phi i16 [ 0, %143 ], [ %220, %219 ]
  %147 = phi i8 [ 1, %143 ], [ %161, %219 ]
  %148 = phi i32 [ 0, %143 ], [ %221, %219 ]
  %149 = getelementptr %struct.mxt_object, ptr %59, i32 %148
  %150 = getelementptr %struct.mxt_object, ptr %59, i32 %148, i32 4
  %151 = load i8, ptr %150, align 1
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %145
  %154 = getelementptr %struct.mxt_object, ptr %59, i32 %148, i32 3
  %155 = load i8, ptr %154, align 1
  %156 = add i8 %155, 1
  %157 = mul i8 %156, %151
  %158 = add i8 %157, %147
  %159 = add i8 %158, -1
  br label %160

160:                                              ; preds = %153, %145
  %161 = phi i8 [ %158, %153 ], [ %147, %145 ]
  %162 = phi i8 [ %147, %153 ], [ 0, %145 ]
  %163 = phi i8 [ %159, %153 ], [ 0, %145 ]
  %164 = load i8, ptr %149, align 1
  switch i8 %164, label %203 [
    i8 5, label %165
    i8 6, label %182
    i8 7, label %185
    i8 71, label %188
    i8 9, label %191
    i8 18, label %194
    i8 44, label %197
    i8 19, label %200
    i8 100, label %201
  ]

165:                                              ; preds = %160
  %166 = load i8, ptr %139, align 1
  %167 = icmp eq i8 %166, -128
  br i1 %167, label %168, label %175

168:                                              ; preds = %165
  %169 = load i8, ptr %144, align 1
  %170 = icmp ult i8 %169, 32
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = getelementptr %struct.mxt_object, ptr %59, i32 %148, i32 2
  %173 = load i8, ptr %172, align 1
  %174 = add i8 %173, 1
  br label %178

175:                                              ; preds = %168, %165
  %176 = getelementptr %struct.mxt_object, ptr %59, i32 %148, i32 2
  %177 = load i8, ptr %176, align 1
  br label %178

178:                                              ; preds = %175, %171
  %179 = phi i8 [ %177, %175 ], [ %174, %171 ]
  store i8 %179, ptr %27, align 4
  %180 = getelementptr %struct.mxt_object, ptr %59, i32 %148, i32 1
  %181 = load i16, ptr %180, align 1
  store i16 %181, ptr %10, align 2
  br label %203

182:                                              ; preds = %160
  store i8 %162, ptr %25, align 1
  %183 = getelementptr %struct.mxt_object, ptr %59, i32 %148, i32 1
  %184 = load i16, ptr %183, align 1
  store i16 %184, ptr %26, align 2
  br label %203

185:                                              ; preds = %160
  %186 = getelementptr %struct.mxt_object, ptr %59, i32 %148, i32 1
  %187 = load i16, ptr %186, align 1
  store i16 %187, ptr %11, align 8
  br label %203

188:                                              ; preds = %160
  %189 = getelementptr %struct.mxt_object, ptr %59, i32 %148, i32 1
  %190 = load i16, ptr %189, align 1
  store i16 %190, ptr %24, align 2
  br label %203

191:                                              ; preds = %160
  store i8 9, ptr %16, align 8
  store i8 %162, ptr %22, align 4
  %192 = add i8 %151, -1
  %193 = add i8 %192, %162
  store i8 %193, ptr %23, align 1
  store i8 %151, ptr %19, align 1
  br label %203

194:                                              ; preds = %160
  %195 = getelementptr %struct.mxt_object, ptr %59, i32 %148, i32 1
  %196 = load i16, ptr %195, align 1
  store i16 %196, ptr %21, align 2
  br label %203

197:                                              ; preds = %160
  %198 = getelementptr %struct.mxt_object, ptr %59, i32 %148, i32 1
  %199 = load i16, ptr %198, align 1
  store i16 %199, ptr %12, align 2
  br label %203

200:                                              ; preds = %160
  store i8 %162, ptr %20, align 8
  br label %203

201:                                              ; preds = %160
  store i8 100, ptr %16, align 8
  store i8 %162, ptr %17, align 4
  store i8 %163, ptr %18, align 1
  %202 = add i8 %151, -2
  store i8 %202, ptr %19, align 1
  br label %203

203:                                              ; preds = %201, %200, %197, %194, %191, %188, %185, %182, %178, %160
  %204 = getelementptr %struct.mxt_object, ptr %59, i32 %148, i32 1
  %205 = load i16, ptr %204, align 1
  %206 = getelementptr %struct.mxt_object, ptr %59, i32 %148, i32 2
  %207 = load i8, ptr %206, align 1
  %208 = zext i8 %207 to i16
  %209 = add nuw nsw i16 %208, 1
  %210 = getelementptr %struct.mxt_object, ptr %59, i32 %148, i32 3
  %211 = load i8, ptr %210, align 1
  %212 = zext i8 %211 to i16
  %213 = add nuw nsw i16 %212, 1
  %214 = mul i16 %213, %209
  %215 = add i16 %214, %205
  %216 = add i16 %215, -1
  %217 = icmp ult i16 %216, %146
  br i1 %217, label %219, label %218

218:                                              ; preds = %203
  store i16 %215, ptr %15, align 2
  br label %219

219:                                              ; preds = %218, %203
  %220 = phi i16 [ %215, %218 ], [ %146, %203 ]
  %221 = add nuw nsw i32 %148, 1
  %222 = load i8, ptr %140, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp ult i32 %221, %223
  br i1 %224, label %145, label %225

225:                                              ; preds = %219, %120
  %226 = phi i8 [ 1, %120 ], [ %161, %219 ]
  store i8 %226, ptr %13, align 1
  %227 = load i16, ptr %12, align 2
  %228 = icmp eq i16 %227, 0
  br i1 %228, label %237, label %229

229:                                              ; preds = %225
  %230 = zext i16 %227 to i32
  %231 = load i16, ptr %10, align 2
  %232 = zext i16 %231 to i32
  %233 = add nuw nsw i32 %230, 1
  %234 = icmp eq i32 %233, %232
  br i1 %234, label %237, label %235

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.i2c_client, ptr %138, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %236, ptr noundef nonnull @.str.29) #14
  br label %244

237:                                              ; preds = %229, %225
  %238 = load i8, ptr %27, align 4
  %239 = zext i8 %238 to i32
  %240 = zext i8 %226 to i32
  %241 = mul nuw nsw i32 %239, %240
  %242 = call noalias align 64 ptr @__kmalloc(i32 noundef %241, i32 noundef 3520) #17
  store ptr %242, ptr %9, align 8
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %274

244:                                              ; preds = %237, %235
  %245 = phi i32 [ -22, %235 ], [ -12, %237 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.28, i32 noundef %245) #14
  call fastcc void @mxt_free_object_table(ptr noundef %0) #13
  br label %248

246:                                              ; preds = %118, %56, %48, %45
  %247 = phi ptr [ %43, %45 ], [ %54, %56 ], [ %54, %118 ], [ %43, %48 ]
  call void @kfree(ptr noundef nonnull %247) #13
  br label %248

248:                                              ; preds = %246, %244, %41
  %249 = call fastcc i32 @mxt_probe_bootloader(ptr noundef %0, i1 noundef zeroext false)
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %248
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.22) #14
  %252 = call fastcc i32 @mxt_probe_bootloader(ptr noundef %0, i1 noundef zeroext true)
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %308

254:                                              ; preds = %251, %248
  br i1 %36, label %255, label %257

255:                                              ; preds = %254
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.23) #14
  %256 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 14
  store i8 1, ptr %256, align 1
  br label %308

257:                                              ; preds = %254
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 1, ptr %4, align 2
  store i8 1, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  store i32 2, ptr %30, align 4, !annotation !10
  %258 = load i8, ptr %31, align 4
  %259 = zext i8 %258 to i16
  store i16 %259, ptr %3, align 4
  %260 = load ptr, ptr %0, align 8
  %261 = load i16, ptr %260, align 8
  %262 = and i16 %261, 16
  store i16 %262, ptr %32, align 2
  store ptr %4, ptr %33, align 4
  %263 = getelementptr inbounds %struct.i2c_client, ptr %260, i32 0, i32 3
  %264 = load ptr, ptr %263, align 8
  %265 = call i32 @i2c_transfer(ptr noundef %264, ptr noundef nonnull %3, i32 noundef 1) #13
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %272, label %267

267:                                              ; preds = %257
  %268 = icmp slt i32 %265, 0
  %269 = select i1 %268, i32 %265, i32 -5
  %270 = load ptr, ptr %0, align 8
  %271 = getelementptr inbounds %struct.i2c_client, ptr %270, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %271, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.mxt_bootloader_write, i32 noundef %269) #14
  br label %272

272:                                              ; preds = %267, %257
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  call void @msleep(i32 noundef 3000) #13
  %273 = load ptr, ptr %0, align 8
  br label %34

274:                                              ; preds = %237
  %275 = load ptr, ptr %0, align 8
  store ptr %59, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !10
  %276 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 34
  store i8 0, ptr %276, align 8
  %277 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 6
  %278 = load i32, ptr %277, align 4
  %279 = call ptr @irq_get_irq_data(i32 noundef %278) #13
  %280 = icmp eq ptr %279, null
  br i1 %280, label %299, label %281

281:                                              ; preds = %274
  %282 = getelementptr inbounds %struct.irq_data, ptr %279, i32 0, i32 3
  %283 = load ptr, ptr %282, align 4
  %284 = load i32, ptr %283, align 4
  %285 = and i32 %284, 8192
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %301

287:                                              ; preds = %281
  %288 = load i16, ptr %21, align 2
  %289 = icmp eq i16 %288, 0
  br i1 %289, label %297, label %290

290:                                              ; preds = %287
  %291 = call fastcc i32 @__mxt_read_reg(ptr noundef %275, i16 noundef zeroext %288, i16 noundef zeroext 1, ptr noundef nonnull %2) #13
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %290
  %294 = load i32, ptr %2, align 4
  %295 = and i32 %294, 64
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %293, %287
  %298 = getelementptr inbounds %struct.i2c_client, ptr %275, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %298, ptr noundef nonnull @.str.36) #14
  store i8 1, ptr %276, align 8
  br label %301

299:                                              ; preds = %290, %274
  %300 = phi i32 [ -22, %274 ], [ %291, %290 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %308

301:                                              ; preds = %297, %293, %281
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  %302 = call fastcc i32 @mxt_acquire_irq(ptr noundef %0)
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %301
  %305 = call i32 @request_firmware_nowait(ptr noundef nonnull @__this_module, i1 noundef zeroext true, ptr noundef nonnull @.str.24, ptr noundef %28, i32 noundef 3264, ptr noundef %0, ptr noundef nonnull @mxt_config_cb) #13
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %304
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.25, i32 noundef %305) #14
  br label %308

308:                                              ; preds = %307, %304, %301, %299, %255, %251
  %309 = phi i32 [ 0, %255 ], [ %305, %307 ], [ %300, %299 ], [ %302, %301 ], [ 0, %304 ], [ %252, %251 ]
  ret i32 %309
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mxt_free_object_table(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 3
  store ptr null, ptr %2, align 8
  %3 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 4
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %5) #13
  store ptr null, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 23
  %7 = load ptr, ptr %6, align 8
  tail call void @kfree(ptr noundef %7) #13
  store ptr null, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 35
  %9 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 39
  %10 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 45
  %11 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 19
  store i8 0, ptr %11, align 1
  store i32 0, ptr %8, align 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(9) %9, i8 0, i64 9, i1 false)
  store i32 0, ptr %10, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__mxt_read_reg(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  %8 = trunc i16 %1 to i8
  store i8 %8, ptr %6, align 2
  %9 = lshr i16 %1, 8
  %10 = trunc i16 %9 to i8
  %11 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %16, align 4
  %17 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %5, i32 0, i32 1
  store i16 %13, ptr %17, align 4
  %18 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %5, i32 0, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %5, i32 0, i32 1, i32 2
  store i16 %2, ptr %19, align 4
  %20 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %5, i32 0, i32 1, i32 3
  store ptr %3, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %5, i32 noundef 2) #13
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %40, label %25

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.mxt_data, ptr %27, i32 0, i32 54
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  call void @msleep(i32 noundef 25) #13
  %32 = load ptr, ptr %21, align 8
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %5, i32 noundef 2) #13
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %40, label %35

35:                                               ; preds = %31, %25
  %36 = phi i32 [ %23, %25 ], [ %33, %31 ]
  %37 = icmp sgt i32 %36, -1
  %38 = select i1 %37, i32 -5, i32 %36
  %39 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.__mxt_read_reg, i32 noundef %38) #14
  br label %40

40:                                               ; preds = %35, %31, %4
  %41 = phi i32 [ %38, %35 ], [ 0, %4 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret i32 %41
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mxt_proc_message(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #2 {
  %3 = load i8, ptr %1, align 1
  %4 = icmp eq i8 %3, -1
  br i1 %4, label %226, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 37
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %3, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %1, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr i8, ptr %1, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr i8, ptr %1, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or i32 %18, %14
  %20 = getelementptr i8, ptr %1, i32 4
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 16
  %24 = or i32 %19, %23
  %25 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 20
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %9
  store i32 %24, ptr %25, align 4
  br label %29

29:                                               ; preds = %28, %9
  %30 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 50
  tail call void @complete(ptr noundef %30) #13
  %31 = icmp sgt i8 %11, -1
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 49
  tail call void @complete(ptr noundef %33) #13
  br label %34

34:                                               ; preds = %32, %29
  %35 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 24
  store i8 %11, ptr %35, align 4
  br label %226

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %226, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 41
  %42 = load i8, ptr %41, align 4
  %43 = icmp ult i8 %3, %42
  br i1 %43, label %106, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 42
  %46 = load i8, ptr %45, align 1
  %47 = icmp ugt i8 %3, %46
  br i1 %47, label %106, label %48

48:                                               ; preds = %44
  %49 = zext i8 %3 to i32
  %50 = zext i8 %42 to i32
  %51 = sub nsw i32 %49, %50
  %52 = getelementptr i8, ptr %1, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr i8, ptr %1, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 4
  %58 = getelementptr i8, ptr %1, i32 4
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = lshr i32 %60, 4
  %62 = or i32 %61, %57
  %63 = getelementptr i8, ptr %1, i32 3
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 4
  %67 = and i32 %60, 15
  %68 = or i32 %66, %67
  %69 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 7
  %70 = load i32, ptr %69, align 8
  %71 = icmp ult i32 %70, 1024
  %72 = lshr i32 %62, 2
  %73 = select i1 %71, i32 %72, i32 %62
  %74 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 8
  %75 = load i32, ptr %74, align 4
  %76 = icmp ult i32 %75, 1024
  %77 = lshr i32 %68, 2
  %78 = select i1 %76, i32 %77, i32 %68
  %79 = getelementptr i8, ptr %1, i32 5
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = getelementptr i8, ptr %1, i32 6
  %83 = load i8, ptr %82, align 1
  tail call void @input_event(ptr noundef nonnull %38, i32 noundef 3, i32 noundef 47, i32 noundef %51) #13
  %84 = zext i8 %53 to i32
  %85 = and i32 %84, 128
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %48
  %88 = and i32 %84, 32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef nonnull %38, i32 noundef 0, i1 noundef zeroext false) #13
  %92 = load ptr, ptr %37, align 4
  %93 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 52
  %94 = load i32, ptr %93, align 4
  %95 = icmp ne i32 %94, 0
  tail call void @input_mt_report_pointer_emulation(ptr noundef %92, i1 noundef zeroext %95) #13
  %96 = load ptr, ptr %37, align 4
  tail call void @input_event(ptr noundef %96, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %97

97:                                               ; preds = %90, %87
  %98 = icmp eq i8 %83, 0
  %99 = select i1 %98, i8 1, i8 %83
  %100 = zext i8 %99 to i32
  %101 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef nonnull %38, i32 noundef 0, i1 noundef zeroext true) #13
  tail call void @input_event(ptr noundef nonnull %38, i32 noundef 3, i32 noundef 53, i32 noundef %73) #13
  tail call void @input_event(ptr noundef nonnull %38, i32 noundef 3, i32 noundef 54, i32 noundef %78) #13
  tail call void @input_event(ptr noundef nonnull %38, i32 noundef 3, i32 noundef 58, i32 noundef %100) #13
  tail call void @input_event(ptr noundef nonnull %38, i32 noundef 3, i32 noundef 48, i32 noundef %81) #13
  br label %104

102:                                              ; preds = %48
  %103 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef nonnull %38, i32 noundef 0, i1 noundef zeroext false) #13
  br label %104

104:                                              ; preds = %102, %97
  %105 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 25
  store i8 1, ptr %105, align 1
  br label %226

106:                                              ; preds = %44, %40
  %107 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 46
  %108 = load i8, ptr %107, align 4
  %109 = icmp ult i8 %3, %108
  br i1 %109, label %195, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 47
  %112 = load i8, ptr %111, align 1
  %113 = icmp ugt i8 %3, %112
  br i1 %113, label %195, label %114

114:                                              ; preds = %110
  %115 = zext i8 %3 to i32
  %116 = zext i8 %108 to i32
  %117 = sub nsw i32 %115, %116
  %118 = add nsw i32 %117, -2
  %119 = icmp slt i32 %117, 2
  br i1 %119, label %226, label %120

120:                                              ; preds = %114
  %121 = getelementptr i8, ptr %1, i32 1
  %122 = load i8, ptr %121, align 1
  %123 = getelementptr i8, ptr %1, i32 2
  %124 = load i16, ptr %123, align 1
  %125 = getelementptr i8, ptr %1, i32 4
  %126 = load i16, ptr %125, align 1
  %127 = zext i8 %122 to i32
  %128 = and i32 %127, 128
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %191, label %130

130:                                              ; preds = %120
  %131 = lshr i32 %127, 4
  %132 = and i32 %131, 7
  switch i32 %132, label %226 [
    i32 4, label %133
    i32 1, label %141
    i32 5, label %141
    i32 2, label %167
    i32 6, label %175
  ]

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 18
  %135 = load i8, ptr %134, align 2
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %175, label %137

137:                                              ; preds = %133
  %138 = zext i8 %135 to i32
  %139 = getelementptr i8, ptr %1, i32 %138
  %140 = load i8, ptr %139, align 1
  br label %175

141:                                              ; preds = %130, %130
  %142 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 17
  %143 = load i8, ptr %142, align 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = zext i8 %143 to i32
  %147 = getelementptr i8, ptr %1, i32 %146
  %148 = load i8, ptr %147, align 1
  br label %149

149:                                              ; preds = %145, %141
  %150 = phi i8 [ %148, %145 ], [ 0, %141 ]
  %151 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 16
  %152 = load i8, ptr %151, align 8
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %149
  %155 = zext i8 %152 to i32
  %156 = getelementptr i8, ptr %1, i32 %155
  %157 = load i8, ptr %156, align 1
  br label %158

158:                                              ; preds = %154, %149
  %159 = phi i8 [ %157, %154 ], [ 0, %149 ]
  %160 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 18
  %161 = load i8, ptr %160, align 2
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %158
  %164 = zext i8 %161 to i32
  %165 = getelementptr i8, ptr %1, i32 %164
  %166 = load i8, ptr %165, align 1
  br label %175

167:                                              ; preds = %130
  %168 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 16
  %169 = load i8, ptr %168, align 8
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = zext i8 %169 to i32
  %173 = getelementptr i8, ptr %1, i32 %172
  %174 = load i8, ptr %173, align 1
  br label %175

175:                                              ; preds = %171, %167, %163, %158, %137, %133, %130
  %176 = phi i32 [ 1, %133 ], [ 1, %137 ], [ 0, %158 ], [ 0, %163 ], [ 0, %167 ], [ 0, %171 ], [ 0, %130 ]
  %177 = phi i32 [ 0, %133 ], [ 0, %137 ], [ 0, %158 ], [ 0, %163 ], [ 1, %167 ], [ 1, %171 ], [ 0, %130 ]
  %178 = phi i8 [ 0, %133 ], [ 0, %137 ], [ %150, %158 ], [ %150, %163 ], [ 1, %167 ], [ 1, %171 ], [ 0, %130 ]
  %179 = phi i8 [ 0, %133 ], [ 0, %137 ], [ %159, %158 ], [ %159, %163 ], [ 0, %167 ], [ %174, %171 ], [ 0, %130 ]
  %180 = phi i8 [ 0, %133 ], [ %140, %137 ], [ 0, %158 ], [ %166, %163 ], [ 0, %167 ], [ 0, %171 ], [ 0, %130 ]
  tail call void @input_event(ptr noundef nonnull %38, i32 noundef 3, i32 noundef 47, i32 noundef %118) #13
  %181 = icmp eq i8 %179, 0
  %182 = icmp ne i32 %132, 4
  %183 = select i1 %181, i1 %182, i1 false
  %184 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef nonnull %38, i32 noundef %177, i1 noundef zeroext true) #13
  %185 = zext i16 %124 to i32
  tail call void @input_event(ptr noundef nonnull %38, i32 noundef 3, i32 noundef 53, i32 noundef %185) #13
  %186 = zext i16 %126 to i32
  tail call void @input_event(ptr noundef nonnull %38, i32 noundef 3, i32 noundef 54, i32 noundef %186) #13
  %187 = zext i8 %178 to i32
  tail call void @input_event(ptr noundef nonnull %38, i32 noundef 3, i32 noundef 48, i32 noundef %187) #13
  %188 = zext i8 %179 to i32
  %189 = select i1 %183, i32 1, i32 %188
  tail call void @input_event(ptr noundef nonnull %38, i32 noundef 3, i32 noundef 58, i32 noundef %189) #13
  tail call void @input_event(ptr noundef nonnull %38, i32 noundef 3, i32 noundef 59, i32 noundef %176) #13
  %190 = zext i8 %180 to i32
  tail call void @input_event(ptr noundef nonnull %38, i32 noundef 3, i32 noundef 52, i32 noundef %190) #13
  br label %193

191:                                              ; preds = %120
  tail call void @input_event(ptr noundef nonnull %38, i32 noundef 3, i32 noundef 47, i32 noundef %118) #13
  %192 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef nonnull %38, i32 noundef 0, i1 noundef zeroext false) #13
  br label %193

193:                                              ; preds = %191, %175
  %194 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 25
  store i8 1, ptr %194, align 1
  br label %226

195:                                              ; preds = %110, %106
  %196 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 44
  %197 = load i8, ptr %196, align 8
  %198 = icmp eq i8 %3, %197
  br i1 %198, label %199, label %226

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 52
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %224, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 51
  %205 = getelementptr i8, ptr %1, i32 1
  br label %206

206:                                              ; preds = %220, %203
  %207 = phi i32 [ %201, %203 ], [ %221, %220 ]
  %208 = phi i32 [ 0, %203 ], [ %222, %220 ]
  %209 = load ptr, ptr %204, align 8
  %210 = getelementptr i32, ptr %209, i32 %208
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %206
  %214 = load i8, ptr %205, align 1
  %215 = zext i8 %214 to i32
  %216 = xor i32 %215, -1
  %217 = lshr i32 %216, %208
  %218 = and i32 %217, 1
  tail call void @input_event(ptr noundef nonnull %38, i32 noundef 1, i32 noundef %211, i32 noundef %218) #13
  %219 = load i32, ptr %200, align 4
  br label %220

220:                                              ; preds = %213, %206
  %221 = phi i32 [ %207, %206 ], [ %219, %213 ]
  %222 = add nuw i32 %208, 1
  %223 = icmp ult i32 %222, %221
  br i1 %223, label %206, label %224

224:                                              ; preds = %220, %199
  %225 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 25
  store i8 1, ptr %225, align 1
  br label %226

226:                                              ; preds = %224, %195, %193, %130, %114, %104, %36, %34, %2
  %227 = phi i32 [ 0, %2 ], [ 1, %224 ], [ 1, %104 ], [ 1, %34 ], [ 1, %36 ], [ 1, %114 ], [ 1, %130 ], [ 1, %193 ], [ 1, %195 ]
  ret i32 %227
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mxt_probe_bootloader(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca i8, align 1
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !10
  %7 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  %9 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i8, ptr %10, align 1
  %14 = zext i8 %13 to i32
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i32 [ %14, %12 ], [ 0, %2 ]
  %17 = trunc i16 %8 to i8
  switch i8 %17, label %22 [
    i8 74, label %18
    i8 75, label %18
    i8 76, label %21
    i8 77, label %21
    i8 90, label %21
    i8 91, label %21
  ]

18:                                               ; preds = %15, %15
  %19 = icmp ugt i32 %16, 161
  %20 = select i1 %1, i1 true, i1 %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %18, %15, %15, %15, %15
  br label %25

22:                                               ; preds = %15
  %23 = and i16 %8, 255
  %24 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.33, i32 noundef %24) #14
  br label %51

25:                                               ; preds = %21, %18
  %26 = phi i8 [ -38, %21 ], [ -36, %18 ]
  %27 = add nsw i8 %26, %17
  %28 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 22
  store i8 %27, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  %29 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 1, ptr %29, align 4, !annotation !10
  %30 = zext i8 %27 to i16
  store i16 %30, ptr %3, align 4
  %31 = load i16, ptr %5, align 8
  %32 = and i16 %31, 16
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %34 = or i16 %32, 1
  store i16 %34, ptr %33, align 2
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %3, i32 noundef 1) #13
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  %41 = load i8, ptr %4, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 192
  %44 = icmp eq i32 %43, 64
  %45 = select i1 %44, ptr @.str.31, ptr @.str.32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.30, i32 noundef %42, ptr noundef nonnull %45) #14
  br label %51

46:                                               ; preds = %25
  %47 = icmp slt i32 %38, 0
  %48 = select i1 %47, i32 %38, i32 -5
  %49 = load ptr, ptr %0, align 8
  %50 = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.mxt_bootloader_read, i32 noundef %48) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  br label %51

51:                                               ; preds = %46, %40, %22
  %52 = phi i32 [ 0, %40 ], [ -22, %22 ], [ %48, %46 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  ret i32 %52
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mxt_acquire_irq(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  tail call void @enable_irq(i32 noundef %3) #13
  %4 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 34
  %5 = load i8, ptr %4, align 8, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %93, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 19
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 35
  %14 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 36
  %15 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 23
  %16 = icmp eq i8 %11, 0
  %17 = load i16, ptr %13, align 2
  %18 = load i8, ptr %14, align 4
  %19 = zext i8 %18 to i32
  %20 = mul nuw nsw i32 %19, %12
  %21 = trunc i32 %20 to i16
  %22 = load ptr, ptr %15, align 8
  %23 = tail call fastcc i32 @__mxt_read_reg(ptr noundef %8, i16 noundef zeroext %17, i16 noundef zeroext %21, ptr noundef %22) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  br i1 %16, label %43, label %27

26:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef %12, i32 noundef %23) #14
  br label %43

27:                                               ; preds = %27, %25
  %28 = phi i8 [ %38, %27 ], [ 0, %25 ]
  %29 = phi i32 [ %39, %27 ], [ 0, %25 ]
  %30 = load ptr, ptr %15, align 8
  %31 = load i8, ptr %14, align 4
  %32 = zext i8 %31 to i32
  %33 = mul i32 %29, %32
  %34 = getelementptr i8, ptr %30, i32 %33
  %35 = tail call fastcc i32 @mxt_proc_message(ptr noundef %0, ptr noundef %34) #13
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i8
  %38 = add i8 %28, %37
  %39 = add nuw nsw i32 %29, 1
  %40 = icmp eq i32 %39, %12
  br i1 %40, label %41, label %27

41:                                               ; preds = %27
  %42 = zext i8 %38 to i32
  br label %43

43:                                               ; preds = %41, %26, %25
  %44 = phi i32 [ %23, %26 ], [ 0, %25 ], [ %42, %41 ]
  %45 = icmp slt i32 %44, %12
  br i1 %45, label %93, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  %49 = load i8, ptr %10, align 1
  %50 = icmp ult i8 %49, %11
  br i1 %50, label %93, label %51

51:                                               ; preds = %46
  %52 = load i16, ptr %13, align 2
  %53 = load i8, ptr %14, align 4
  %54 = zext i8 %53 to i32
  %55 = mul nuw nsw i32 %54, %12
  %56 = trunc i32 %55 to i16
  %57 = load ptr, ptr %15, align 8
  %58 = tail call fastcc i32 @__mxt_read_reg(ptr noundef %47, i16 noundef zeroext %52, i16 noundef zeroext %56, ptr noundef %57) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.21, i32 noundef %12, i32 noundef %58) #14
  br label %78

61:                                               ; preds = %51
  br i1 %16, label %78, label %62

62:                                               ; preds = %62, %61
  %63 = phi i8 [ %73, %62 ], [ 0, %61 ]
  %64 = phi i32 [ %74, %62 ], [ 0, %61 ]
  %65 = load ptr, ptr %15, align 8
  %66 = load i8, ptr %14, align 4
  %67 = zext i8 %66 to i32
  %68 = mul i32 %64, %67
  %69 = getelementptr i8, ptr %65, i32 %68
  %70 = tail call fastcc i32 @mxt_proc_message(ptr noundef %0, ptr noundef %69) #13
  %71 = icmp eq i32 %70, 1
  %72 = zext i1 %71 to i8
  %73 = add i8 %63, %72
  %74 = add nuw nsw i32 %64, 1
  %75 = icmp eq i32 %74, %12
  br i1 %75, label %76, label %62

76:                                               ; preds = %62
  %77 = zext i8 %73 to i32
  br label %78

78:                                               ; preds = %76, %61, %60
  %79 = phi i32 [ %58, %60 ], [ 0, %61 ], [ %77, %76 ]
  %80 = icmp slt i32 %79, %12
  br i1 %80, label %93, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 25
  %83 = load i8, ptr %82, align 1, !range !9
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 52
  %89 = load i32, ptr %88, align 4
  %90 = icmp ne i32 %89, 0
  tail call void @input_mt_report_pointer_emulation(ptr noundef %87, i1 noundef zeroext %90) #13
  %91 = load ptr, ptr %86, align 4
  tail call void @input_event(ptr noundef %91, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  store i8 0, ptr %82, align 1
  br label %92

92:                                               ; preds = %85, %81
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.37) #14
  br label %93

93:                                               ; preds = %92, %78, %46, %43, %1
  %94 = phi i32 [ -16, %92 ], [ 0, %1 ], [ 0, %78 ], [ 0, %46 ], [ 0, %43 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mxt_config_cb(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.t9_range, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca %struct.mxt_cfg, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = load ptr, ptr %1, align 8
  %20 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %21 = tail call fastcc i32 @mxt_init_t7_power_cfg(ptr noundef %1) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.38) #14
  br label %740

24:                                               ; preds = %2
  %25 = icmp eq ptr %0, null
  br i1 %25, label %437, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %1, align 8
  %28 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #13
  %29 = getelementptr inbounds i8, ptr %15, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %29, i8 0, i32 24, i1 false) #13, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #13
  store i32 0, ptr %16, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #13
  store i32 0, ptr %17, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #13
  store i32 0, ptr %18, align 4, !annotation !10
  %30 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %0, align 4
  %33 = tail call ptr @kmemdup_nul(ptr noundef %31, i32 noundef %32, i32 noundef 3264) #13
  store ptr %33, ptr %15, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #13
  br label %435

36:                                               ; preds = %26
  %37 = load i32, ptr %0, align 4
  %38 = getelementptr inbounds %struct.mxt_cfg, ptr %15, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  tail call fastcc void @mxt_update_crc(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 1) #13
  %39 = tail call i32 @strncmp(ptr noundef nonnull %33, ptr noundef nonnull dereferenceable(11) @.str.44, i32 noundef 10) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.45) #14
  br label %427

42:                                               ; preds = %36
  store i32 10, ptr %29, align 4
  %43 = getelementptr inbounds %struct.mxt_cfg, ptr %15, i32 0, i32 6
  %44 = getelementptr i8, ptr %33, i32 10
  %45 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %44, ptr noundef nonnull @.str.46, ptr noundef %43, ptr noundef nonnull %16) #13
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %48, label %47

47:                                               ; preds = %93, %84, %75, %66, %57, %48, %42
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.47) #14
  br label %427

48:                                               ; preds = %42
  %49 = load i32, ptr %16, align 4
  %50 = load i32, ptr %29, align 4
  %51 = add i32 %50, %49
  store i32 %51, ptr %29, align 4
  %52 = load ptr, ptr %15, align 4
  %53 = getelementptr i8, ptr %52, i32 %51
  %54 = getelementptr inbounds %struct.mxt_cfg, ptr %15, i32 0, i32 6, i32 1
  %55 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %53, ptr noundef nonnull @.str.46, ptr noundef %54, ptr noundef nonnull %16) #13
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %47

57:                                               ; preds = %48
  %58 = load i32, ptr %16, align 4
  %59 = load i32, ptr %29, align 4
  %60 = add i32 %59, %58
  store i32 %60, ptr %29, align 4
  %61 = load ptr, ptr %15, align 4
  %62 = getelementptr i8, ptr %61, i32 %60
  %63 = getelementptr inbounds %struct.mxt_cfg, ptr %15, i32 0, i32 6, i32 2
  %64 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %62, ptr noundef nonnull @.str.46, ptr noundef %63, ptr noundef nonnull %16) #13
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %47

66:                                               ; preds = %57
  %67 = load i32, ptr %16, align 4
  %68 = load i32, ptr %29, align 4
  %69 = add i32 %68, %67
  store i32 %69, ptr %29, align 4
  %70 = load ptr, ptr %15, align 4
  %71 = getelementptr i8, ptr %70, i32 %69
  %72 = getelementptr inbounds %struct.mxt_cfg, ptr %15, i32 0, i32 6, i32 3
  %73 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %71, ptr noundef nonnull @.str.46, ptr noundef %72, ptr noundef nonnull %16) #13
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %47

75:                                               ; preds = %66
  %76 = load i32, ptr %16, align 4
  %77 = load i32, ptr %29, align 4
  %78 = add i32 %77, %76
  store i32 %78, ptr %29, align 4
  %79 = load ptr, ptr %15, align 4
  %80 = getelementptr i8, ptr %79, i32 %78
  %81 = getelementptr inbounds %struct.mxt_cfg, ptr %15, i32 0, i32 6, i32 4
  %82 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %80, ptr noundef nonnull @.str.46, ptr noundef %81, ptr noundef nonnull %16) #13
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %47

84:                                               ; preds = %75
  %85 = load i32, ptr %16, align 4
  %86 = load i32, ptr %29, align 4
  %87 = add i32 %86, %85
  store i32 %87, ptr %29, align 4
  %88 = load ptr, ptr %15, align 4
  %89 = getelementptr i8, ptr %88, i32 %87
  %90 = getelementptr inbounds %struct.mxt_cfg, ptr %15, i32 0, i32 6, i32 5
  %91 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %89, ptr noundef nonnull @.str.46, ptr noundef %90, ptr noundef nonnull %16) #13
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %47

93:                                               ; preds = %84
  %94 = load i32, ptr %16, align 4
  %95 = load i32, ptr %29, align 4
  %96 = add i32 %95, %94
  store i32 %96, ptr %29, align 4
  %97 = load ptr, ptr %15, align 4
  %98 = getelementptr i8, ptr %97, i32 %96
  %99 = getelementptr inbounds %struct.mxt_cfg, ptr %15, i32 0, i32 6, i32 6
  %100 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %98, ptr noundef nonnull @.str.46, ptr noundef %99, ptr noundef nonnull %16) #13
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %47

102:                                              ; preds = %93
  %103 = load i32, ptr %16, align 4
  %104 = load i32, ptr %29, align 4
  %105 = add i32 %104, %103
  store i32 %105, ptr %29, align 4
  %106 = load i8, ptr %43, align 4
  %107 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 4
  %108 = load ptr, ptr %107, align 4
  %109 = load i8, ptr %108, align 1
  %110 = icmp eq i8 %106, %109
  br i1 %110, label %112, label %111

111:                                              ; preds = %102
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.48) #14
  br label %427

112:                                              ; preds = %102
  %113 = load i8, ptr %54, align 1
  %114 = getelementptr inbounds %struct.mxt_info, ptr %108, i32 0, i32 1
  %115 = load i8, ptr %114, align 1
  %116 = icmp eq i8 %113, %115
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.49) #14
  br label %427

118:                                              ; preds = %112
  %119 = load ptr, ptr %15, align 4
  %120 = getelementptr i8, ptr %119, i32 %105
  %121 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %120, ptr noundef nonnull @.str.50, ptr noundef nonnull %17, ptr noundef nonnull %16) #13
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.51) #14
  br label %427

124:                                              ; preds = %118
  %125 = load i32, ptr %16, align 4
  %126 = load i32, ptr %29, align 4
  %127 = add i32 %126, %125
  store i32 %127, ptr %29, align 4
  %128 = load ptr, ptr %15, align 4
  %129 = getelementptr i8, ptr %128, i32 %127
  %130 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %129, ptr noundef nonnull @.str.50, ptr noundef nonnull %18, ptr noundef nonnull %16) #13
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %133, label %132

132:                                              ; preds = %124
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.52) #14
  br label %427

133:                                              ; preds = %124
  %134 = load i32, ptr %16, align 4
  %135 = load i32, ptr %29, align 4
  %136 = add i32 %135, %134
  store i32 %136, ptr %29, align 4
  %137 = load i32, ptr %17, align 4
  %138 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 21
  %139 = load i32, ptr %138, align 8
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %133
  %142 = load i32, ptr %18, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 20
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144, %141
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.53) #14
  br label %155

149:                                              ; preds = %144
  %150 = icmp eq i32 %142, %146
  br i1 %150, label %151, label %153

151:                                              ; preds = %149
  %152 = load ptr, ptr %15, align 4
  call void @kfree(ptr noundef %152) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #13
  br label %437

153:                                              ; preds = %149
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.54, i32 noundef %146, i32 noundef %142) #14
  br label %155

154:                                              ; preds = %133
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.55, i32 noundef %139, i32 noundef %137) #14
  br label %155

155:                                              ; preds = %154, %153, %148
  %156 = load ptr, ptr %107, align 4
  %157 = getelementptr inbounds %struct.mxt_info, ptr %156, i32 0, i32 6
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = mul nuw nsw i32 %159, 6
  %161 = add nuw nsw i32 %160, 10
  %162 = getelementptr inbounds %struct.mxt_cfg, ptr %15, i32 0, i32 5
  store i32 %161, ptr %162, align 4
  %163 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 15
  %164 = load i16, ptr %163, align 2
  %165 = zext i16 %164 to i32
  %166 = sub nsw i32 %165, %161
  %167 = getelementptr inbounds %struct.mxt_cfg, ptr %15, i32 0, i32 4
  store i32 %166, ptr %167, align 4
  %168 = call noalias align 64 ptr @__kmalloc(i32 noundef %166, i32 noundef 3520) #17
  %169 = getelementptr inbounds %struct.mxt_cfg, ptr %15, i32 0, i32 3
  store ptr %168, ptr %169, align 4
  %170 = icmp eq ptr %168, null
  br i1 %170, label %427, label %171

171:                                              ; preds = %155
  %172 = load ptr, ptr %1, align 8
  %173 = getelementptr inbounds %struct.i2c_client, ptr %172, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store i32 0, ptr %10, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store i32 0, ptr %11, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  store i32 0, ptr %12, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  store i32 0, ptr %13, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #13
  store i8 0, ptr %14, align 1, !annotation !10
  %174 = load i32, ptr %29, align 4
  %175 = load i32, ptr %38, align 4
  %176 = icmp ult i32 %174, %175
  br i1 %176, label %177, label %305

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 3
  br label %183

179:                                              ; preds = %300, %257, %230, %216
  %180 = load i32, ptr %29, align 4
  %181 = load i32, ptr %38, align 4
  %182 = icmp ult i32 %180, %181
  br i1 %182, label %183, label %305

183:                                              ; preds = %179, %177
  %184 = phi i32 [ %174, %177 ], [ %180, %179 ]
  %185 = load ptr, ptr %15, align 4
  %186 = getelementptr i8, ptr %185, i32 %184
  %187 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %186, ptr noundef nonnull @.str.59, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #13
  switch i32 %187, label %188 [
    i32 0, label %305
    i32 3, label %189
  ]

188:                                              ; preds = %183
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.60) #14
  br label %304

189:                                              ; preds = %183
  %190 = load i32, ptr %13, align 4
  %191 = load i32, ptr %29, align 4
  %192 = add i32 %191, %190
  store i32 %192, ptr %29, align 4
  %193 = load i32, ptr %10, align 4
  %194 = trunc i32 %193 to i8
  %195 = load ptr, ptr %107, align 4
  %196 = getelementptr inbounds %struct.mxt_info, ptr %195, i32 0, i32 6
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp eq i8 %197, 0
  br i1 %199, label %210, label %200

200:                                              ; preds = %189
  %201 = load ptr, ptr %178, align 8
  br label %205

202:                                              ; preds = %205
  %203 = add nuw nsw i32 %206, 1
  %204 = icmp eq i32 %203, %198
  br i1 %204, label %210, label %205

205:                                              ; preds = %202, %200
  %206 = phi i32 [ 0, %200 ], [ %203, %202 ]
  %207 = getelementptr %struct.mxt_object, ptr %201, i32 %206
  %208 = load i8, ptr %207, align 1
  %209 = icmp eq i8 %208, %194
  br i1 %209, label %214, label %202

210:                                              ; preds = %202, %189
  %211 = load ptr, ptr %1, align 8
  %212 = getelementptr inbounds %struct.i2c_client, ptr %211, i32 0, i32 4
  %213 = and i32 %193, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %212, ptr noundef nonnull @.str.66, i32 noundef %213) #14
  br label %216

214:                                              ; preds = %205
  %215 = icmp eq ptr %207, null
  br i1 %215, label %216, label %237

216:                                              ; preds = %214, %210
  %217 = load i32, ptr %12, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %179, label %219

219:                                              ; preds = %216
  %220 = load i32, ptr %29, align 4
  br label %221

221:                                              ; preds = %230, %219
  %222 = phi i32 [ %233, %230 ], [ %220, %219 ]
  %223 = phi i32 [ %234, %230 ], [ 0, %219 ]
  %224 = load ptr, ptr %15, align 4
  %225 = getelementptr i8, ptr %224, i32 %222
  %226 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %225, ptr noundef nonnull @.str.46, ptr noundef nonnull %14, ptr noundef nonnull %13) #13
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %230, label %228

228:                                              ; preds = %221
  %229 = load i32, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.61, i32 noundef %229, i32 noundef %223) #14
  br label %304

230:                                              ; preds = %221
  %231 = load i32, ptr %13, align 4
  %232 = load i32, ptr %29, align 4
  %233 = add i32 %232, %231
  store i32 %233, ptr %29, align 4
  %234 = add nuw i32 %223, 1
  %235 = load i32, ptr %12, align 4
  %236 = icmp ult i32 %234, %235
  br i1 %236, label %221, label %179

237:                                              ; preds = %214
  %238 = load i32, ptr %12, align 4
  %239 = getelementptr %struct.mxt_object, ptr %201, i32 %206, i32 2
  %240 = load i8, ptr %239, align 1
  %241 = zext i8 %240 to i32
  %242 = add nuw nsw i32 %241, 1
  %243 = icmp ugt i32 %238, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %237
  %245 = sub i32 %238, %242
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %173, ptr noundef nonnull @.str.62, i32 noundef %245, i32 noundef %193) #14
  br label %250

246:                                              ; preds = %237
  %247 = icmp ugt i32 %238, %241
  br i1 %247, label %250, label %248

248:                                              ; preds = %246
  %249 = sub i32 %242, %238
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %173, ptr noundef nonnull @.str.63, i32 noundef %249, i32 noundef %193) #14
  br label %250

250:                                              ; preds = %248, %246, %244
  %251 = load i32, ptr %11, align 4
  %252 = getelementptr %struct.mxt_object, ptr %201, i32 %206, i32 3
  %253 = load i8, ptr %252, align 1
  %254 = zext i8 %253 to i32
  %255 = icmp ugt i32 %251, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %250
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.64) #14
  br label %304

257:                                              ; preds = %250
  %258 = load i32, ptr %12, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %179, label %260

260:                                              ; preds = %257
  %261 = load i8, ptr %239, align 1
  %262 = zext i8 %261 to i32
  %263 = add nuw nsw i32 %262, 1
  %264 = mul i32 %263, %251
  %265 = trunc i32 %264 to i16
  %266 = getelementptr %struct.mxt_object, ptr %201, i32 %206, i32 1
  %267 = load i16, ptr %266, align 1
  %268 = add i16 %267, %265
  %269 = zext i16 %268 to i32
  br label %270

270:                                              ; preds = %300, %260
  %271 = phi i32 [ 0, %260 ], [ %301, %300 ]
  %272 = load ptr, ptr %15, align 4
  %273 = load i32, ptr %29, align 4
  %274 = getelementptr i8, ptr %272, i32 %273
  %275 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %274, ptr noundef nonnull @.str.46, ptr noundef nonnull %14, ptr noundef nonnull %13) #13
  %276 = icmp eq i32 %275, 1
  br i1 %276, label %279, label %277

277:                                              ; preds = %270
  %278 = load i32, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.61, i32 noundef %278, i32 noundef %271) #14
  br label %304

279:                                              ; preds = %270
  %280 = load i32, ptr %13, align 4
  %281 = load i32, ptr %29, align 4
  %282 = add i32 %281, %280
  store i32 %282, ptr %29, align 4
  %283 = load i8, ptr %239, align 1
  %284 = zext i8 %283 to i32
  %285 = add nuw nsw i32 %284, 1
  %286 = icmp ugt i32 %271, %285
  br i1 %286, label %300, label %287

287:                                              ; preds = %279
  %288 = add i32 %271, %269
  %289 = load i32, ptr %162, align 4
  %290 = sub i32 %288, %289
  %291 = load i32, ptr %167, align 4
  %292 = icmp ult i32 %290, %291
  br i1 %292, label %293, label %297

293:                                              ; preds = %287
  %294 = load i8, ptr %14, align 1
  %295 = load ptr, ptr %169, align 4
  %296 = getelementptr i8, ptr %295, i32 %290
  store i8 %294, ptr %296, align 1
  br label %300

297:                                              ; preds = %287
  %298 = load i8, ptr %207, align 1
  %299 = zext i8 %298 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.65, i32 noundef %269, i32 noundef %299, i32 noundef %290) #14
  br label %304

300:                                              ; preds = %293, %279
  %301 = add nuw i32 %271, 1
  %302 = load i32, ptr %12, align 4
  %303 = icmp ult i32 %301, %302
  br i1 %303, label %270, label %179

304:                                              ; preds = %297, %277, %256, %228, %188
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  br label %430

305:                                              ; preds = %183, %179, %171
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  %306 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 40
  %307 = load i16, ptr %306, align 2
  %308 = icmp eq i16 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 39
  %311 = load i16, ptr %310, align 8
  %312 = icmp eq i16 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %309
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.56) #14
  br label %314

314:                                              ; preds = %313, %309, %305
  %315 = phi i16 [ 0, %313 ], [ %307, %305 ], [ %311, %309 ]
  %316 = zext i16 %315 to i32
  %317 = load i32, ptr %162, align 4
  %318 = icmp slt i32 %317, %316
  br i1 %318, label %319, label %370

319:                                              ; preds = %314
  %320 = load ptr, ptr %169, align 4
  %321 = sub i32 %316, %317
  %322 = load i32, ptr %167, align 4
  %323 = getelementptr i8, ptr %320, i32 %322
  %324 = getelementptr i8, ptr %323, i32 -1
  %325 = icmp slt i32 %322, %321
  br i1 %325, label %363, label %326

326:                                              ; preds = %319
  %327 = getelementptr i8, ptr %320, i32 %321
  %328 = icmp ult ptr %327, %324
  br i1 %328, label %329, label %347

329:                                              ; preds = %329, %326
  %330 = phi ptr [ %345, %329 ], [ %327, %326 ]
  %331 = phi i32 [ %344, %329 ], [ 0, %326 ]
  %332 = load i8, ptr %330, align 1
  %333 = getelementptr i8, ptr %330, i32 1
  %334 = load i8, ptr %333, align 1
  %335 = zext i8 %334 to i32
  %336 = shl nuw nsw i32 %335, 8
  %337 = zext i8 %332 to i32
  %338 = or i32 %336, %337
  %339 = shl i32 %331, 1
  %340 = xor i32 %338, %339
  %341 = and i32 %331, 8388608
  %342 = icmp eq i32 %341, 0
  %343 = xor i32 %340, 8388635
  %344 = select i1 %342, i32 %340, i32 %343
  %345 = getelementptr i8, ptr %330, i32 2
  %346 = icmp ult ptr %345, %324
  br i1 %346, label %329, label %347

347:                                              ; preds = %329, %326
  %348 = phi i32 [ 0, %326 ], [ %344, %329 ]
  %349 = phi ptr [ %327, %326 ], [ %345, %329 ]
  %350 = icmp eq ptr %349, %324
  br i1 %350, label %351, label %360

351:                                              ; preds = %347
  %352 = load i8, ptr %324, align 1
  %353 = zext i8 %352 to i32
  %354 = shl i32 %348, 1
  %355 = xor i32 %354, %353
  %356 = and i32 %348, 8388608
  %357 = icmp eq i32 %356, 0
  %358 = xor i32 %355, 8388635
  %359 = select i1 %357, i32 %355, i32 %358
  br label %360

360:                                              ; preds = %351, %347
  %361 = phi i32 [ %359, %351 ], [ %348, %347 ]
  %362 = and i32 %361, 16777215
  br label %363

363:                                              ; preds = %360, %319
  %364 = phi i32 [ %362, %360 ], [ -22, %319 ]
  %365 = load i32, ptr %18, align 4
  %366 = icmp eq i32 %365, 0
  %367 = icmp eq i32 %365, %364
  %368 = select i1 %366, i1 true, i1 %367
  br i1 %368, label %370, label %369

369:                                              ; preds = %363
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.57, i32 noundef %364, i32 noundef %365) #14
  br label %370

370:                                              ; preds = %369, %363, %314
  %371 = load i32, ptr %167, align 4
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %394, label %377

373:                                              ; preds = %377
  %374 = add i32 %381, %379
  %375 = load i32, ptr %167, align 4
  %376 = icmp ugt i32 %375, %374
  br i1 %376, label %377, label %394

377:                                              ; preds = %373, %370
  %378 = phi i32 [ %375, %373 ], [ %371, %370 ]
  %379 = phi i32 [ %374, %373 ], [ 0, %370 ]
  %380 = sub i32 %378, %379
  %381 = call i32 @llvm.umin.i32(i32 %380, i32 256) #13
  %382 = load ptr, ptr %1, align 8
  %383 = load i32, ptr %162, align 4
  %384 = add i32 %383, %379
  %385 = trunc i32 %384 to i16
  %386 = trunc i32 %381 to i16
  %387 = load ptr, ptr %169, align 4
  %388 = getelementptr i8, ptr %387, i32 %379
  %389 = call fastcc i32 @__mxt_write_reg(ptr noundef %382, i16 noundef zeroext %385, i16 noundef zeroext %386, ptr noundef %388) #13
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %373, label %391

391:                                              ; preds = %377
  %392 = load ptr, ptr %1, align 8
  %393 = getelementptr inbounds %struct.i2c_client, ptr %392, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %393, ptr noundef nonnull @.str.67, i32 noundef %389) #14
  br label %430

394:                                              ; preds = %373, %370
  call fastcc void @mxt_update_crc(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 85) #13
  %395 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !10
  %396 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 34
  store i8 0, ptr %396, align 8
  %397 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 6
  %398 = load i32, ptr %397, align 4
  %399 = call ptr @irq_get_irq_data(i32 noundef %398) #13
  %400 = icmp eq ptr %399, null
  br i1 %400, label %420, label %401

401:                                              ; preds = %394
  %402 = getelementptr inbounds %struct.irq_data, ptr %399, i32 0, i32 3
  %403 = load ptr, ptr %402, align 4
  %404 = load i32, ptr %403, align 4
  %405 = and i32 %404, 8192
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %422

407:                                              ; preds = %401
  %408 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 43
  %409 = load i16, ptr %408, align 2
  %410 = icmp eq i16 %409, 0
  br i1 %410, label %418, label %411

411:                                              ; preds = %407
  %412 = call fastcc i32 @__mxt_read_reg(ptr noundef %395, i16 noundef zeroext %409, i16 noundef zeroext 1, ptr noundef nonnull %3) #13
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %420

414:                                              ; preds = %411
  %415 = load i32, ptr %3, align 4
  %416 = and i32 %415, 64
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %414, %407
  %419 = getelementptr inbounds %struct.i2c_client, ptr %395, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %419, ptr noundef nonnull @.str.36) #14
  store i8 1, ptr %396, align 8
  br label %422

420:                                              ; preds = %411, %394
  %421 = phi i32 [ -22, %394 ], [ %412, %411 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %430

422:                                              ; preds = %418, %414, %401
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %423 = call fastcc i32 @mxt_soft_reset(ptr noundef %1) #13
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %430

425:                                              ; preds = %422
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.58) #14
  %426 = call fastcc i32 @mxt_init_t7_power_cfg(ptr noundef %1) #13
  br label %430

427:                                              ; preds = %155, %132, %123, %117, %111, %47, %41
  %428 = phi i32 [ -12, %155 ], [ -22, %132 ], [ -22, %123 ], [ -22, %117 ], [ -22, %111 ], [ -22, %47 ], [ -22, %41 ]
  %429 = load ptr, ptr %15, align 4
  call void @kfree(ptr noundef %429) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #13
  br label %435

430:                                              ; preds = %425, %422, %420, %391, %304
  %431 = phi i32 [ %389, %391 ], [ %421, %420 ], [ %423, %422 ], [ 0, %425 ], [ -22, %304 ]
  %432 = load ptr, ptr %169, align 4
  call void @kfree(ptr noundef %432) #13
  %433 = load ptr, ptr %15, align 4
  call void @kfree(ptr noundef %433) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #13
  %434 = icmp eq i32 %431, 0
  br i1 %434, label %437, label %435

435:                                              ; preds = %430, %427, %35
  %436 = phi i32 [ -12, %35 ], [ %431, %430 ], [ %428, %427 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.39, i32 noundef %436) #14
  br label %437

437:                                              ; preds = %435, %430, %151, %24
  %438 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 28
  %439 = load i8, ptr %438, align 8
  %440 = icmp eq i8 %439, 0
  br i1 %440, label %739, label %441

441:                                              ; preds = %437
  %442 = load ptr, ptr %1, align 8
  %443 = getelementptr inbounds %struct.i2c_client, ptr %442, i32 0, i32 4
  switch i8 %439, label %607 [
    i8 9, label %444
    i8 100, label %514
  ]

444:                                              ; preds = %441
  %445 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 42
  %446 = load i8, ptr %445, align 1
  %447 = zext i8 %446 to i32
  %448 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 41
  %449 = load i8, ptr %448, align 4
  %450 = zext i8 %449 to i32
  %451 = sub nsw i32 %447, %450
  %452 = add nsw i32 %451, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #13
  store i8 0, ptr %9, align 1, !annotation !10
  %453 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 4
  %454 = load ptr, ptr %453, align 4
  %455 = getelementptr inbounds %struct.mxt_info, ptr %454, i32 0, i32 6
  %456 = load i8, ptr %455, align 1
  %457 = zext i8 %456 to i32
  %458 = icmp eq i8 %456, 0
  br i1 %458, label %470, label %459

459:                                              ; preds = %444
  %460 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 3
  %461 = load ptr, ptr %460, align 8
  br label %465

462:                                              ; preds = %465
  %463 = add nuw nsw i32 %466, 1
  %464 = icmp eq i32 %463, %457
  br i1 %464, label %470, label %465

465:                                              ; preds = %462, %459
  %466 = phi i32 [ 0, %459 ], [ %463, %462 ]
  %467 = getelementptr %struct.mxt_object, ptr %461, i32 %466
  %468 = load i8, ptr %467, align 1
  %469 = icmp eq i8 %468, 9
  br i1 %469, label %471, label %462

470:                                              ; preds = %462, %444
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %443, ptr noundef nonnull @.str.66, i32 noundef 9) #14
  br label %513

471:                                              ; preds = %465
  %472 = icmp eq ptr %467, null
  br i1 %472, label %513, label %473

473:                                              ; preds = %471
  %474 = getelementptr %struct.mxt_object, ptr %461, i32 %466, i32 1
  %475 = load i16, ptr %474, align 1
  %476 = add i16 %475, 3
  %477 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 12
  %478 = call fastcc i32 @__mxt_read_reg(ptr noundef %442, i16 noundef zeroext %476, i16 noundef zeroext 1, ptr noundef %477) #13
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %513

480:                                              ; preds = %473
  %481 = load i16, ptr %474, align 1
  %482 = add i16 %481, 4
  %483 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 13
  %484 = call fastcc i32 @__mxt_read_reg(ptr noundef %442, i16 noundef zeroext %482, i16 noundef zeroext 1, ptr noundef %483) #13
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %513

486:                                              ; preds = %480
  %487 = load i16, ptr %474, align 1
  %488 = add i16 %487, 18
  %489 = call fastcc i32 @__mxt_read_reg(ptr noundef %442, i16 noundef zeroext %488, i16 noundef zeroext 4, ptr noundef nonnull %8) #13
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %513

491:                                              ; preds = %486
  %492 = load i16, ptr %8, align 4
  %493 = zext i16 %492 to i32
  %494 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 7
  store i32 %493, ptr %494, align 8
  %495 = getelementptr inbounds %struct.t9_range, ptr %8, i32 0, i32 1
  %496 = load i16, ptr %495, align 2
  %497 = zext i16 %496 to i32
  %498 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 8
  store i32 %497, ptr %498, align 4
  %499 = load i16, ptr %474, align 1
  %500 = add i16 %499, 9
  %501 = call fastcc i32 @__mxt_read_reg(ptr noundef %442, i16 noundef zeroext %500, i16 noundef zeroext 1, ptr noundef nonnull %9) #13
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %513

503:                                              ; preds = %491
  %504 = load i8, ptr %9, align 1
  %505 = and i8 %504, 1
  %506 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 11
  store i8 %505, ptr %506, align 2
  %507 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 9
  %508 = lshr i8 %504, 1
  %509 = and i8 %508, 1
  store i8 %509, ptr %507, align 8
  %510 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 10
  %511 = lshr i8 %504, 2
  %512 = and i8 %511, 1
  store i8 %512, ptr %510, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  br label %608

513:                                              ; preds = %491, %486, %480, %473, %471, %470
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %443, ptr noundef nonnull @.str.68) #14
  br label %608

514:                                              ; preds = %441
  %515 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 27
  %516 = load i8, ptr %515, align 1
  %517 = zext i8 %516 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  store i8 0, ptr %7, align 1, !annotation !10
  %518 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 4
  %519 = load ptr, ptr %518, align 4
  %520 = getelementptr inbounds %struct.mxt_info, ptr %519, i32 0, i32 6
  %521 = load i8, ptr %520, align 1
  %522 = zext i8 %521 to i32
  %523 = icmp eq i8 %521, 0
  br i1 %523, label %535, label %524

524:                                              ; preds = %514
  %525 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 3
  %526 = load ptr, ptr %525, align 8
  br label %530

527:                                              ; preds = %530
  %528 = add nuw nsw i32 %531, 1
  %529 = icmp eq i32 %528, %522
  br i1 %529, label %535, label %530

530:                                              ; preds = %527, %524
  %531 = phi i32 [ 0, %524 ], [ %528, %527 ]
  %532 = getelementptr %struct.mxt_object, ptr %526, i32 %531
  %533 = load i8, ptr %532, align 1
  %534 = icmp eq i8 %533, 100
  br i1 %534, label %536, label %527

535:                                              ; preds = %527, %514
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %443, ptr noundef nonnull @.str.66, i32 noundef 100) #14
  br label %606

536:                                              ; preds = %530
  %537 = icmp eq ptr %532, null
  br i1 %537, label %606, label %538

538:                                              ; preds = %536
  %539 = getelementptr %struct.mxt_object, ptr %526, i32 %531, i32 1
  %540 = load i16, ptr %539, align 1
  %541 = add i16 %540, 13
  %542 = call fastcc i32 @__mxt_read_reg(ptr noundef %442, i16 noundef zeroext %541, i16 noundef zeroext 2, ptr noundef nonnull %4) #13
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %606

544:                                              ; preds = %538
  %545 = load i16, ptr %4, align 2
  %546 = zext i16 %545 to i32
  %547 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 7
  store i32 %546, ptr %547, align 8
  %548 = load i16, ptr %539, align 1
  %549 = add i16 %548, 24
  %550 = call fastcc i32 @__mxt_read_reg(ptr noundef %442, i16 noundef zeroext %549, i16 noundef zeroext 2, ptr noundef nonnull %5) #13
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %606

552:                                              ; preds = %544
  %553 = load i16, ptr %5, align 2
  %554 = zext i16 %553 to i32
  %555 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 8
  store i32 %554, ptr %555, align 4
  %556 = load i16, ptr %539, align 1
  %557 = add i16 %556, 9
  %558 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 12
  %559 = call fastcc i32 @__mxt_read_reg(ptr noundef %442, i16 noundef zeroext %557, i16 noundef zeroext 1, ptr noundef %558) #13
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %606

561:                                              ; preds = %552
  %562 = load i16, ptr %539, align 1
  %563 = add i16 %562, 20
  %564 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 13
  %565 = call fastcc i32 @__mxt_read_reg(ptr noundef %442, i16 noundef zeroext %563, i16 noundef zeroext 1, ptr noundef %564) #13
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %567, label %606

567:                                              ; preds = %561
  %568 = load i16, ptr %539, align 1
  %569 = add i16 %568, 1
  %570 = call fastcc i32 @__mxt_read_reg(ptr noundef %442, i16 noundef zeroext %569, i16 noundef zeroext 1, ptr noundef nonnull %6) #13
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %606

572:                                              ; preds = %567
  %573 = load i8, ptr %6, align 1
  %574 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 11
  %575 = lshr i8 %573, 5
  %576 = and i8 %575, 1
  store i8 %576, ptr %574, align 2
  %577 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 9
  %578 = lshr i8 %573, 7
  store i8 %578, ptr %577, align 8
  %579 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 10
  %580 = lshr i8 %573, 6
  %581 = and i8 %580, 1
  store i8 %581, ptr %579, align 1
  %582 = load i16, ptr %539, align 1
  %583 = add i16 %582, 3
  %584 = call fastcc i32 @__mxt_read_reg(ptr noundef %442, i16 noundef zeroext %583, i16 noundef zeroext 1, ptr noundef nonnull %7) #13
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %606

586:                                              ; preds = %572
  %587 = load i8, ptr %7, align 1
  %588 = and i8 %587, 1
  %589 = icmp eq i8 %588, 0
  br i1 %589, label %592, label %590

590:                                              ; preds = %586
  %591 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 18
  store i8 6, ptr %591, align 2
  br label %592

592:                                              ; preds = %590, %586
  %593 = phi i8 [ 7, %590 ], [ 6, %586 ]
  %594 = and i8 %587, 2
  %595 = icmp eq i8 %594, 0
  br i1 %595, label %599, label %596

596:                                              ; preds = %592
  %597 = add nuw nsw i8 %593, 1
  %598 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 16
  store i8 %593, ptr %598, align 8
  br label %599

599:                                              ; preds = %596, %592
  %600 = phi i8 [ %597, %596 ], [ %593, %592 ]
  %601 = and i8 %587, 4
  %602 = icmp eq i8 %601, 0
  br i1 %602, label %605, label %603

603:                                              ; preds = %599
  %604 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 17
  store i8 %600, ptr %604, align 1
  br label %605

605:                                              ; preds = %603, %599
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  br label %608

606:                                              ; preds = %572, %567, %561, %552, %544, %538, %536, %535
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %443, ptr noundef nonnull @.str.69) #14
  br label %608

607:                                              ; preds = %441
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %443, ptr noundef nonnull @.str.70) #14
  br label %740

608:                                              ; preds = %606, %605, %513, %503
  %609 = phi i32 [ %517, %606 ], [ %517, %605 ], [ %452, %513 ], [ %452, %503 ]
  %610 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 7
  %611 = load i32, ptr %610, align 8
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %614

613:                                              ; preds = %608
  store i32 1023, ptr %610, align 8
  br label %614

614:                                              ; preds = %613, %608
  %615 = phi i32 [ 1023, %613 ], [ %611, %608 ]
  %616 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 8
  %617 = load i32, ptr %616, align 4
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %620

619:                                              ; preds = %614
  store i32 1023, ptr %616, align 4
  br label %620

620:                                              ; preds = %619, %614
  %621 = phi i32 [ 1023, %619 ], [ %617, %614 ]
  %622 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 11
  %623 = load i8, ptr %622, align 2, !range !9
  %624 = icmp eq i8 %623, 0
  br i1 %624, label %626, label %625

625:                                              ; preds = %620
  store i32 %621, ptr %610, align 8
  store i32 %615, ptr %616, align 4
  br label %626

626:                                              ; preds = %625, %620
  %627 = phi i32 [ %621, %620 ], [ %615, %625 ]
  %628 = phi i32 [ %615, %620 ], [ %621, %625 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %443, ptr noundef nonnull @.str.71, i32 noundef %628, i32 noundef %627) #14
  %629 = call ptr @input_allocate_device() #13
  %630 = icmp eq ptr %629, null
  br i1 %630, label %740, label %631

631:                                              ; preds = %626
  store ptr @.str.72, ptr %629, align 8
  %632 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 2
  %633 = getelementptr inbounds %struct.input_dev, ptr %629, i32 0, i32 1
  store ptr %632, ptr %633, align 4
  %634 = getelementptr inbounds %struct.input_dev, ptr %629, i32 0, i32 3
  store i16 24, ptr %634, align 4
  %635 = getelementptr inbounds %struct.input_dev, ptr %629, i32 0, i32 40, i32 1
  store ptr %443, ptr %635, align 4
  %636 = getelementptr inbounds %struct.input_dev, ptr %629, i32 0, i32 31
  store ptr @mxt_input_open, ptr %636, align 4
  %637 = getelementptr inbounds %struct.input_dev, ptr %629, i32 0, i32 32
  store ptr @mxt_input_close, ptr %637, align 8
  call void @input_set_capability(ptr noundef nonnull %629, i32 noundef 1, i32 noundef 330) #13
  %638 = load i32, ptr %610, align 8
  call void @input_set_abs_params(ptr noundef nonnull %629, i32 noundef 0, i32 noundef 0, i32 noundef %638, i32 noundef 0, i32 noundef 0) #13
  %639 = load i32, ptr %616, align 4
  call void @input_set_abs_params(ptr noundef nonnull %629, i32 noundef 1, i32 noundef 0, i32 noundef %639, i32 noundef 0, i32 noundef 0) #13
  %640 = load i8, ptr %438, align 8
  switch i8 %640, label %646 [
    i8 9, label %645
    i8 100, label %641
  ]

641:                                              ; preds = %631
  %642 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 16
  %643 = load i8, ptr %642, align 8
  %644 = icmp eq i8 %643, 0
  br i1 %644, label %646, label %645

645:                                              ; preds = %641, %631
  call void @input_set_abs_params(ptr noundef nonnull %629, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #13
  br label %646

646:                                              ; preds = %645, %641, %631
  %647 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 52
  %648 = load i32, ptr %647, align 4
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %692, label %650

650:                                              ; preds = %646
  store ptr @.str.75, ptr %629, align 8
  %651 = getelementptr inbounds %struct.input_dev, ptr %629, i32 0, i32 4
  %652 = load i32, ptr %651, align 4
  %653 = or i32 %652, 4
  store i32 %653, ptr %651, align 4
  call void @input_alloc_absinfo(ptr noundef nonnull %629) #13
  %654 = getelementptr inbounds %struct.input_dev, ptr %629, i32 0, i32 26
  %655 = load ptr, ptr %654, align 4
  %656 = icmp eq ptr %655, null
  br i1 %656, label %659, label %657

657:                                              ; preds = %650
  %658 = getelementptr %struct.input_absinfo, ptr %655, i32 0, i32 5
  store i32 20, ptr %658, align 4
  br label %659

659:                                              ; preds = %657, %650
  call void @input_alloc_absinfo(ptr noundef nonnull %629) #13
  %660 = load ptr, ptr %654, align 4
  %661 = icmp eq ptr %660, null
  br i1 %661, label %664, label %662

662:                                              ; preds = %659
  %663 = getelementptr %struct.input_absinfo, ptr %660, i32 1, i32 5
  store i32 20, ptr %663, align 4
  br label %664

664:                                              ; preds = %662, %659
  call void @input_alloc_absinfo(ptr noundef nonnull %629) #13
  %665 = load ptr, ptr %654, align 4
  %666 = icmp eq ptr %665, null
  br i1 %666, label %669, label %667

667:                                              ; preds = %664
  %668 = getelementptr %struct.input_absinfo, ptr %665, i32 53, i32 5
  store i32 20, ptr %668, align 4
  br label %669

669:                                              ; preds = %667, %664
  call void @input_alloc_absinfo(ptr noundef nonnull %629) #13
  %670 = load ptr, ptr %654, align 4
  %671 = icmp eq ptr %670, null
  br i1 %671, label %674, label %672

672:                                              ; preds = %669
  %673 = getelementptr %struct.input_absinfo, ptr %670, i32 54, i32 5
  store i32 20, ptr %673, align 4
  br label %674

674:                                              ; preds = %672, %669
  %675 = load i32, ptr %647, align 4
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %692, label %677

677:                                              ; preds = %674
  %678 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 51
  br label %679

679:                                              ; preds = %688, %677
  %680 = phi i32 [ %675, %677 ], [ %689, %688 ]
  %681 = phi i32 [ 0, %677 ], [ %690, %688 ]
  %682 = load ptr, ptr %678, align 8
  %683 = getelementptr i32, ptr %682, i32 %681
  %684 = load i32, ptr %683, align 4
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %688, label %686

686:                                              ; preds = %679
  call void @input_set_capability(ptr noundef %629, i32 noundef 1, i32 noundef %684) #13
  %687 = load i32, ptr %647, align 4
  br label %688

688:                                              ; preds = %686, %679
  %689 = phi i32 [ %680, %679 ], [ %687, %686 ]
  %690 = add nuw i32 %681, 1
  %691 = icmp ult i32 %690, %689
  br i1 %691, label %679, label %692

692:                                              ; preds = %688, %674, %646
  %693 = phi i32 [ 2, %646 ], [ 1, %674 ], [ 1, %688 ]
  %694 = call i32 @input_mt_init_slots(ptr noundef %629, i32 noundef %609, i32 noundef %693) #13
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %697, label %696

696:                                              ; preds = %692
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %443, ptr noundef nonnull @.str.73, i32 noundef %694) #14
  br label %736

697:                                              ; preds = %692
  %698 = load i8, ptr %438, align 8
  %699 = icmp eq i8 %698, 100
  br i1 %699, label %700, label %701

700:                                              ; preds = %697
  call void @input_set_abs_params(ptr noundef %629, i32 noundef 55, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #13
  call void @input_set_abs_params(ptr noundef %629, i32 noundef 59, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  br label %701

701:                                              ; preds = %700, %697
  %702 = load i32, ptr %610, align 8
  call void @input_set_abs_params(ptr noundef %629, i32 noundef 53, i32 noundef 0, i32 noundef %702, i32 noundef 0, i32 noundef 0) #13
  %703 = load i32, ptr %616, align 4
  call void @input_set_abs_params(ptr noundef %629, i32 noundef 54, i32 noundef 0, i32 noundef %703, i32 noundef 0, i32 noundef 0) #13
  %704 = load i8, ptr %438, align 8
  switch i8 %704, label %711 [
    i8 9, label %709
    i8 100, label %705
  ]

705:                                              ; preds = %701
  %706 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 17
  %707 = load i8, ptr %706, align 1
  %708 = icmp eq i8 %707, 0
  br i1 %708, label %713, label %709

709:                                              ; preds = %705, %701
  call void @input_set_abs_params(ptr noundef %629, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #13
  %710 = load i8, ptr %438, align 8
  br label %711

711:                                              ; preds = %709, %701
  %712 = phi i8 [ %704, %701 ], [ %710, %709 ]
  switch i8 %712, label %731 [
    i8 9, label %717
    i8 100, label %713
  ]

713:                                              ; preds = %711, %705
  %714 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 16
  %715 = load i8, ptr %714, align 8
  %716 = icmp eq i8 %715, 0
  br i1 %716, label %720, label %717

717:                                              ; preds = %713, %711
  call void @input_set_abs_params(ptr noundef %629, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #13
  %718 = load i8, ptr %438, align 8
  %719 = icmp eq i8 %718, 100
  br i1 %719, label %720, label %731

720:                                              ; preds = %717, %713
  %721 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 18
  %722 = load i8, ptr %721, align 2
  %723 = icmp eq i8 %722, 0
  br i1 %723, label %731, label %724

724:                                              ; preds = %720
  call void @input_set_abs_params(ptr noundef %629, i32 noundef 52, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #13
  %725 = load i8, ptr %438, align 8
  %726 = icmp eq i8 %725, 100
  br i1 %726, label %727, label %731

727:                                              ; preds = %724
  %728 = load i8, ptr %721, align 2
  %729 = icmp eq i8 %728, 0
  br i1 %729, label %731, label %730

730:                                              ; preds = %727
  call void @input_set_abs_params(ptr noundef %629, i32 noundef 52, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #13
  br label %731

731:                                              ; preds = %730, %727, %724, %720, %717, %711
  %732 = getelementptr inbounds %struct.input_dev, ptr %629, i32 0, i32 40, i32 8
  store ptr %1, ptr %732, align 8
  %733 = call i32 @input_register_device(ptr noundef %629) #13
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %737, label %735

735:                                              ; preds = %731
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %443, ptr noundef nonnull @.str.74, i32 noundef %733) #14
  br label %736

736:                                              ; preds = %735, %696
  call void @input_free_device(ptr noundef %629) #13
  br label %740

737:                                              ; preds = %731
  %738 = getelementptr inbounds %struct.mxt_data, ptr %1, i32 0, i32 1
  store ptr %629, ptr %738, align 4
  br label %740

739:                                              ; preds = %437
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.40) #14
  br label %740

740:                                              ; preds = %739, %737, %736, %626, %607, %23
  call void @release_firmware(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mxt_init_t7_power_cfg(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 39
  %3 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %0, align 8
  %5 = load i16, ptr %2, align 8
  %6 = tail call fastcc i32 @__mxt_read_reg(ptr noundef %4, i16 noundef zeroext %5, i16 noundef zeroext 2, ptr noundef %3)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 29, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i8, ptr %3, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %12, %8
  %16 = tail call fastcc i32 @mxt_soft_reset(ptr noundef %0)
  %17 = load ptr, ptr %0, align 8
  %18 = load i16, ptr %2, align 8
  %19 = tail call fastcc i32 @__mxt_read_reg(ptr noundef %17, i16 noundef zeroext %18, i16 noundef zeroext 2, ptr noundef %3)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i8, ptr %9, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i8, ptr %3, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %21
  store i8 20, ptr %9, align 1
  store i8 100, ptr %3, align 1
  %28 = load ptr, ptr %0, align 8
  %29 = load i16, ptr %2, align 8
  %30 = tail call fastcc i32 @__mxt_write_reg(ptr noundef %28, i16 noundef zeroext %29, i16 noundef zeroext 2, ptr noundef %3) #13
  br label %31

31:                                               ; preds = %27, %24, %15, %12, %1
  %32 = phi i32 [ %30, %27 ], [ %6, %1 ], [ 0, %12 ], [ %19, %15 ], [ 0, %24 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mxt_soft_reset(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i8, align 1
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.41) #14
  %5 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  tail call void @disable_irq(i32 noundef %6) #13
  %7 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 49
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 38
  %9 = load i16, ptr %8, align 2
  %10 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #13
  store i8 1, ptr %2, align 1
  %11 = call fastcc i32 @__mxt_write_reg(ptr noundef %10, i16 noundef zeroext %9, i16 noundef zeroext 1, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  tail call void @msleep(i32 noundef 100) #13
  %14 = tail call fastcc i32 @mxt_acquire_irq(ptr noundef %0)
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %17 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %7, i32 noundef 300) #13
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.43) #14
  br label %22

22:                                               ; preds = %21, %19, %13, %1
  %23 = phi i32 [ %11, %1 ], [ -110, %21 ], [ %17, %13 ], [ 0, %19 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__mxt_write_reg(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3) unnamed_addr #2 {
  %5 = zext i16 %2 to i32
  %6 = add nuw nsw i32 %5, 2
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = trunc i16 %1 to i8
  store i8 %10, ptr %7, align 64
  %11 = lshr i16 %1, 8
  %12 = trunc i16 %11 to i8
  %13 = getelementptr i8, ptr %7, i32 1
  store i8 %12, ptr %13, align 1
  %14 = getelementptr i8, ptr %7, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %14, ptr align 1 %3, i32 %5, i1 false)
  %15 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %6, i16 noundef zeroext 0) #13
  %16 = icmp eq i32 %15, %6
  br i1 %16, label %31, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.mxt_data, ptr %19, i32 0, i32 54
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  tail call void @msleep(i32 noundef 25) #13
  %24 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %6, i16 noundef zeroext 0) #13
  %25 = icmp eq i32 %24, %6
  br i1 %25, label %31, label %26

26:                                               ; preds = %23, %17
  %27 = phi i32 [ %15, %17 ], [ %24, %23 ]
  %28 = icmp sgt i32 %27, -1
  %29 = select i1 %28, i32 -5, i32 %27
  %30 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.__mxt_write_reg, i32 noundef %29) #14
  br label %31

31:                                               ; preds = %26, %23, %9
  %32 = phi i32 [ %29, %26 ], [ 0, %9 ], [ 0, %23 ]
  tail call void @kfree(ptr noundef nonnull %7) #13
  br label %33

33:                                               ; preds = %31, %4
  %34 = phi i32 [ %32, %31 ], [ -12, %4 ]
  ret i32 %34
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mxt_update_crc(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 20
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 50
  store i32 0, ptr %7, align 4
  %8 = zext i8 %1 to i16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !10
  %9 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 38
  %10 = load i16, ptr %9, align 2
  %11 = add i16 %10, %8
  %12 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 %2, ptr %4, align 1
  %13 = call fastcc i32 @__mxt_write_reg(ptr noundef %12, i16 noundef zeroext %11, i16 noundef zeroext 1, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %23, %3
  %16 = phi i32 [ %24, %23 ], [ 0, %3 ]
  call void @msleep(i32 noundef 20) #13
  %17 = load ptr, ptr %0, align 8
  %18 = call fastcc i32 @__mxt_read_reg(ptr noundef %17, i16 noundef zeroext %11, i16 noundef zeroext 1, ptr noundef nonnull %5) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i8, ptr %5, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = add nuw nsw i32 %16, 1
  %25 = icmp eq i32 %24, 102
  br i1 %25, label %28, label %15

26:                                               ; preds = %20
  %27 = icmp ugt i32 %16, 100
  br i1 %27, label %28, label %31

28:                                               ; preds = %26, %23
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.42) #14
  br label %31

31:                                               ; preds = %28, %26, %15, %3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  %32 = load ptr, ptr %0, align 8
  %33 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %7, i32 noundef 100) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.43) #14
  br label %37

37:                                               ; preds = %35, %31
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxt_input_open(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @mxt_start(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mxt_input_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @mxt_stop(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mxt_start(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 54
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mxt_data, ptr %6, i32 0, i32 33
  %12 = load ptr, ptr %11, align 4
  tail call void @gpiod_set_value(ptr noundef %12, i32 noundef 1) #13
  tail call void @msleep(i32 noundef 25) #13
  br label %13

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 53
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @mxt_soft_reset(ptr noundef %0)
  %19 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mxt_info, ptr %20, i32 0, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i8 %22, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8
  br label %31

28:                                               ; preds = %31
  %29 = add nuw nsw i32 %32, 1
  %30 = icmp eq i32 %29, %23
  br i1 %30, label %36, label %31

31:                                               ; preds = %28, %25
  %32 = phi i32 [ 0, %25 ], [ %29, %28 ]
  %33 = getelementptr %struct.mxt_object, ptr %27, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 9
  br i1 %35, label %39, label %28

36:                                               ; preds = %28, %17
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.66, i32 noundef 9) #14
  br label %57

39:                                               ; preds = %31
  %40 = icmp eq ptr %33, null
  br i1 %40, label %57, label %41

41:                                               ; preds = %39
  %42 = getelementptr %struct.mxt_object, ptr %27, i32 %32, i32 1
  %43 = load i16, ptr %42, align 1
  %44 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 -125, ptr %3, align 1
  %45 = call fastcc i32 @__mxt_write_reg(ptr noundef %44, i16 noundef zeroext %43, i16 noundef zeroext 1, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  br label %57

46:                                               ; preds = %13
  %47 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 29
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 39
  %50 = load i16, ptr %49, align 8
  %51 = tail call fastcc i32 @__mxt_write_reg(ptr noundef %48, i16 noundef zeroext %50, i16 noundef zeroext 2, ptr noundef %47) #13
  %52 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 38
  %53 = load i16, ptr %52, align 2
  %54 = add i16 %53, 2
  %55 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #13
  store i8 1, ptr %2, align 1
  %56 = call fastcc i32 @__mxt_write_reg(ptr noundef %55, i16 noundef zeroext %54, i16 noundef zeroext 1, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #13
  br label %57

57:                                               ; preds = %46, %41, %39, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mxt_stop(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca %struct.t7_config, align 2
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 53
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mxt_info, ptr %9, i32 0, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %11, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  br label %20

17:                                               ; preds = %20
  %18 = add nuw nsw i32 %21, 1
  %19 = icmp eq i32 %18, %12
  br i1 %19, label %25, label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ 0, %14 ], [ %18, %17 ]
  %22 = getelementptr %struct.mxt_object, ptr %16, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 9
  br i1 %24, label %28, label %17

25:                                               ; preds = %17, %7
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.66, i32 noundef 9) #14
  br label %40

28:                                               ; preds = %20
  %29 = icmp eq ptr %22, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %28
  %31 = getelementptr %struct.mxt_object, ptr %16, i32 %21, i32 1
  %32 = load i16, ptr %31, align 1
  %33 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1
  %34 = call fastcc i32 @__mxt_write_reg(ptr noundef %33, i16 noundef zeroext %32, i16 noundef zeroext 1, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  br label %40

35:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i16 0, ptr %2, align 2
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 39
  %38 = load i16, ptr %37, align 8
  %39 = call fastcc i32 @__mxt_write_reg(ptr noundef %36, i16 noundef zeroext %38, i16 noundef zeroext 2, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  br label %40

40:                                               ; preds = %35, %30, %28, %25
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4, i32 8
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.mxt_data, ptr %43, i32 0, i32 54
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.mxt_data, ptr %43, i32 0, i32 33
  %49 = load ptr, ptr %48, align 4
  tail call void @gpiod_set_value(ptr noundef %49, i32 noundef 0) #13
  br label %50

50:                                               ; preds = %47, %40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxt_fw_version_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mxt_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mxt_info, ptr %7, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = lshr i32 %10, 4
  %12 = and i32 %10, 15
  %13 = getelementptr inbounds %struct.mxt_info, ptr %7, i32 0, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.77, i32 noundef %11, i32 noundef %12, i32 noundef %15) #13
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxt_hw_version_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mxt_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.mxt_info, ptr %7, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.79, i32 noundef %9, i32 noundef %12) #13
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxt_object_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 256) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %92, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mxt_data, ptr %5, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mxt_info, ptr %11, i32 0, i32 6
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %90, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.mxt_data, ptr %5, i32 0, i32 3
  br label %17

17:                                               ; preds = %82, %15
  %18 = phi ptr [ %11, %15 ], [ %83, %82 ]
  %19 = phi i32 [ 0, %15 ], [ %85, %82 ]
  %20 = phi i32 [ 0, %15 ], [ %84, %82 ]
  %21 = load ptr, ptr %16, align 8
  %22 = getelementptr %struct.mxt_object, ptr %21, i32 %19
  %23 = load i8, ptr %22, align 1
  switch i8 %23, label %82 [
    i8 6, label %24
    i8 7, label %24
    i8 8, label %24
    i8 53, label %24
    i8 9, label %24
    i8 15, label %24
    i8 23, label %24
    i8 52, label %24
    i8 100, label %24
    i8 20, label %24
    i8 22, label %24
    i8 24, label %24
    i8 27, label %24
    i8 40, label %24
    i8 41, label %24
    i8 42, label %24
    i8 47, label %24
    i8 48, label %24
    i8 18, label %24
    i8 19, label %24
    i8 25, label %24
    i8 28, label %24
    i8 38, label %24
    i8 43, label %24
    i8 46, label %24
    i8 71, label %24
  ]

24:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17
  %25 = zext i8 %23 to i32
  %26 = getelementptr i8, ptr %2, i32 %20
  %27 = sub i32 4096, %20
  %28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %26, i32 noundef %27, ptr noundef nonnull @.str.81, i32 noundef %25) #13
  %29 = add i32 %28, %20
  %30 = getelementptr %struct.mxt_object, ptr %21, i32 %19, i32 3
  %31 = getelementptr %struct.mxt_object, ptr %21, i32 %19, i32 2
  %32 = getelementptr %struct.mxt_object, ptr %21, i32 %19, i32 1
  br label %33

33:                                               ; preds = %71, %24
  %34 = phi i32 [ 0, %24 ], [ %76, %71 ]
  %35 = phi i32 [ %29, %24 ], [ %75, %71 ]
  %36 = load i8, ptr %31, align 1
  %37 = zext i8 %36 to i32
  %38 = add nuw nsw i32 %37, 1
  %39 = trunc i32 %38 to i16
  %40 = load i16, ptr %32, align 1
  %41 = mul i32 %38, %34
  %42 = trunc i32 %41 to i16
  %43 = add i16 %40, %42
  %44 = load ptr, ptr %5, align 8
  %45 = tail call fastcc i32 @__mxt_read_reg(ptr noundef %44, i16 noundef zeroext %43, i16 noundef zeroext %39, ptr noundef nonnull %7)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %90

47:                                               ; preds = %33
  %48 = load i8, ptr %30, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = getelementptr i8, ptr %2, i32 %35
  %52 = sub i32 4096, %35
  %53 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %51, i32 noundef %52, ptr noundef nonnull @.str.82, i32 noundef %34) #13
  %54 = add i32 %53, %35
  br label %55

55:                                               ; preds = %50, %47
  %56 = phi i32 [ %35, %47 ], [ %54, %50 ]
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i32 [ %67, %57 ], [ 0, %55 ]
  %59 = phi i32 [ %66, %57 ], [ %56, %55 ]
  %60 = getelementptr i8, ptr %2, i32 %59
  %61 = sub i32 4096, %59
  %62 = getelementptr i8, ptr %7, i32 %58
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %60, i32 noundef %61, ptr noundef nonnull @.str.83, i32 noundef %58, i32 noundef %64, i32 noundef %64) #13
  %66 = add i32 %65, %59
  %67 = add nuw nsw i32 %58, 1
  %68 = load i8, ptr %31, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp ult i32 %58, %69
  br i1 %70, label %57, label %71

71:                                               ; preds = %57
  %72 = getelementptr i8, ptr %2, i32 %66
  %73 = sub i32 4096, %66
  %74 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %72, i32 noundef %73, ptr noundef nonnull @.str.84) #13
  %75 = add i32 %74, %66
  %76 = add nuw nsw i32 %34, 1
  %77 = load i8, ptr %30, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp ult i32 %34, %78
  br i1 %79, label %33, label %80

80:                                               ; preds = %71
  %81 = load ptr, ptr %10, align 4
  br label %82

82:                                               ; preds = %80, %17
  %83 = phi ptr [ %18, %17 ], [ %81, %80 ]
  %84 = phi i32 [ %20, %17 ], [ %75, %80 ]
  %85 = add nuw nsw i32 %19, 1
  %86 = getelementptr inbounds %struct.mxt_info, ptr %83, i32 0, i32 6
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp ult i32 %85, %88
  br i1 %89, label %17, label %90

90:                                               ; preds = %82, %33, %9
  %91 = phi i32 [ 0, %9 ], [ %45, %33 ], [ %84, %82 ]
  tail call void @kfree(ptr noundef nonnull %7) #13
  br label %92

92:                                               ; preds = %90, %3
  %93 = phi i32 [ -12, %3 ], [ %91, %90 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxt_update_fw_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #2 {
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 4
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store ptr null, ptr %9, align 4
  %12 = call i32 @request_firmware(ptr noundef nonnull %9, ptr noundef nonnull @.str.86, ptr noundef %0) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.86) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  br label %197

15:                                               ; preds = %4
  %16 = load ptr, ptr %9, align 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  br label %25

22:                                               ; preds = %30
  %23 = add nuw i32 %26, 1
  %24 = icmp eq i32 %23, %17
  br i1 %24, label %35, label %25

25:                                               ; preds = %22, %19
  %26 = phi i32 [ 0, %19 ], [ %23, %22 ]
  %27 = getelementptr i8, ptr %21, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = icmp ult i8 %28, 48
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = add i8 %28, -58
  %32 = icmp ult i8 %31, 7
  %33 = icmp ugt i8 %28, 70
  %34 = or i1 %33, %32
  br i1 %34, label %36, label %22

35:                                               ; preds = %22, %15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.92) #14
  br label %188

36:                                               ; preds = %30, %25
  %37 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 14
  %38 = load i8, ptr %37, align 1, !range !9
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %84

40:                                               ; preds = %36
  store i8 1, ptr %37, align 1
  %41 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 38
  %42 = load i16, ptr %41, align 2
  %43 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #13
  store i8 -91, ptr %8, align 1
  %44 = call fastcc i32 @__mxt_write_reg(ptr noundef %43, i16 noundef zeroext %42, i16 noundef zeroext 1, ptr noundef nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %188

46:                                               ; preds = %40
  call void @msleep(i32 noundef 200) #13
  %47 = load ptr, ptr %11, align 8
  %48 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i8, ptr %51, align 1
  %55 = zext i8 %54 to i32
  br label %56

56:                                               ; preds = %53, %46
  %57 = phi i32 [ %55, %53 ], [ 0, %46 ]
  %58 = trunc i16 %49 to i8
  switch i8 %58, label %62 [
    i8 74, label %59
    i8 75, label %59
    i8 76, label %61
    i8 77, label %61
    i8 90, label %61
    i8 91, label %61
  ]

59:                                               ; preds = %56, %56
  %60 = icmp ugt i32 %57, 161
  br i1 %60, label %66, label %61

61:                                               ; preds = %59, %56, %56, %56, %56
  br label %66

62:                                               ; preds = %56
  %63 = and i16 %49, 255
  %64 = zext i16 %63 to i32
  %65 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.33, i32 noundef %64) #14
  br label %188

66:                                               ; preds = %61, %59
  %67 = phi i8 [ -38, %61 ], [ -36, %59 ]
  %68 = add nsw i8 %67, %58
  %69 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 22
  store i8 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  call void @input_unregister_device(ptr noundef nonnull %71) #13
  store ptr null, ptr %70, align 4
  br label %74

74:                                               ; preds = %73, %66
  %75 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 3
  store ptr null, ptr %75, align 8
  store ptr null, ptr %50, align 4
  %76 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 5
  %77 = load ptr, ptr %76, align 8
  call void @kfree(ptr noundef %77) #13
  store ptr null, ptr %76, align 8
  %78 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 23
  %79 = load ptr, ptr %78, align 8
  call void @kfree(ptr noundef %79) #13
  store ptr null, ptr %78, align 8
  %80 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 35
  %81 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 39
  %82 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 45
  %83 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 19
  store i8 0, ptr %83, align 1
  store i32 0, ptr %80, align 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(9) %81, i8 0, i64 9, i1 false) #13
  store i32 0, ptr %82, align 2
  br label %87

84:                                               ; preds = %36
  %85 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 6
  %86 = load i32, ptr %85, align 4
  call void @enable_irq(i32 noundef %86) #13
  br label %87

87:                                               ; preds = %84, %74
  %88 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 48
  store i32 0, ptr %88, align 4
  %89 = call fastcc i32 @mxt_check_bootloader(ptr noundef %11, i32 noundef 192, i1 noundef zeroext false) #13
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = call fastcc i32 @mxt_check_bootloader(ptr noundef %11, i32 noundef 128, i1 noundef zeroext false) #13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %115, label %191

94:                                               ; preds = %87
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.90) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 -36, ptr %6, align 2
  %95 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 -86, ptr %95, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  %96 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %96, align 4, !annotation !10
  %97 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 22
  %98 = load i8, ptr %97, align 4
  %99 = zext i8 %98 to i16
  store i16 %99, ptr %5, align 4
  %100 = load ptr, ptr %11, align 8
  %101 = load i16, ptr %100, align 8
  %102 = and i16 %101, 16
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 %102, ptr %103, align 2
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %104, align 4
  %105 = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 3
  %106 = load ptr, ptr %105, align 8
  %107 = call i32 @i2c_transfer(ptr noundef %106, ptr noundef nonnull %5, i32 noundef 1) #13
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  br label %115

110:                                              ; preds = %94
  %111 = icmp slt i32 %107, 0
  %112 = select i1 %111, i32 %107, i32 -5
  %113 = load ptr, ptr %11, align 8
  %114 = getelementptr inbounds %struct.i2c_client, ptr %113, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.mxt_bootloader_write, i32 noundef %112) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  br label %191

115:                                              ; preds = %109, %91
  %116 = load ptr, ptr %9, align 4
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %173, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds i8, ptr %7, i32 4
  %121 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 22
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  br label %124

124:                                              ; preds = %167, %119
  %125 = phi i32 [ 0, %119 ], [ %169, %167 ]
  %126 = phi i32 [ 0, %119 ], [ %168, %167 ]
  %127 = call fastcc i32 @mxt_check_bootloader(ptr noundef %11, i32 noundef 128, i1 noundef zeroext true) #13
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %191

129:                                              ; preds = %124
  %130 = load ptr, ptr %9, align 4
  %131 = getelementptr inbounds %struct.firmware, ptr %130, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr i8, ptr %132, i32 %126
  %134 = load i8, ptr %133, align 1
  %135 = zext i8 %134 to i32
  %136 = shl nuw nsw i32 %135, 8
  %137 = getelementptr i8, ptr %133, i32 1
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = or i32 %136, %139
  %141 = add nuw nsw i32 %140, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  store i32 0, ptr %120, align 4, !annotation !10
  %142 = load i8, ptr %121, align 4
  %143 = zext i8 %142 to i16
  store i16 %143, ptr %7, align 4
  %144 = load ptr, ptr %11, align 8
  %145 = load i16, ptr %144, align 8
  %146 = and i16 %145, 16
  store i16 %146, ptr %122, align 2
  %147 = trunc i32 %141 to i16
  store i16 %147, ptr %120, align 4
  store ptr %133, ptr %123, align 4
  %148 = getelementptr inbounds %struct.i2c_client, ptr %144, i32 0, i32 3
  %149 = load ptr, ptr %148, align 8
  %150 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %7, i32 noundef 1) #13
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %155

152:                                              ; preds = %129
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  %153 = call fastcc i32 @mxt_check_bootloader(ptr noundef %11, i32 noundef 4, i1 noundef zeroext true) #13
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %165, label %160

155:                                              ; preds = %129
  %156 = icmp slt i32 %150, 0
  %157 = select i1 %156, i32 %150, i32 -5
  %158 = load ptr, ptr %11, align 8
  %159 = getelementptr inbounds %struct.i2c_client, ptr %158, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.mxt_bootloader_write, i32 noundef %157) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  br label %191

160:                                              ; preds = %152
  %161 = add i32 %125, 1
  %162 = mul i32 %161, 20
  call void @msleep(i32 noundef %162) #13
  %163 = icmp ugt i32 %161, 20
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.91) #14
  br label %191

165:                                              ; preds = %152
  %166 = add i32 %141, %126
  br label %167

167:                                              ; preds = %165, %160
  %168 = phi i32 [ %126, %160 ], [ %166, %165 ]
  %169 = phi i32 [ %161, %160 ], [ 0, %165 ]
  %170 = load ptr, ptr %9, align 4
  %171 = load i32, ptr %170, align 4
  %172 = icmp ult i32 %168, %171
  br i1 %172, label %124, label %173

173:                                              ; preds = %167, %115
  %174 = load ptr, ptr %11, align 8
  %175 = getelementptr inbounds %struct.i2c_client, ptr %174, i32 0, i32 4
  %176 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %88, i32 noundef 300) #13
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %191, label %178

178:                                              ; preds = %173
  %179 = icmp eq i32 %176, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %178
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.43) #14
  br label %191

181:                                              ; preds = %178
  %182 = load ptr, ptr %11, align 8
  %183 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %88, i32 noundef 300) #13
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.i2c_client, ptr %182, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %186, ptr noundef nonnull @.str.43) #14
  br label %187

187:                                              ; preds = %185, %181
  store i8 0, ptr %37, align 1
  br label %191

188:                                              ; preds = %62, %40, %35
  %189 = phi i32 [ -22, %62 ], [ %44, %40 ], [ -22, %35 ]
  %190 = load ptr, ptr %9, align 4
  call void @release_firmware(ptr noundef %190) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  br label %197

191:                                              ; preds = %187, %180, %173, %164, %155, %124, %110, %91
  %192 = phi i32 [ %92, %91 ], [ %157, %155 ], [ %153, %164 ], [ 0, %187 ], [ %112, %110 ], [ %176, %173 ], [ -110, %180 ], [ %127, %124 ]
  %193 = getelementptr inbounds %struct.mxt_data, ptr %11, i32 0, i32 6
  %194 = load i32, ptr %193, align 4
  call void @disable_irq(i32 noundef %194) #13
  %195 = load ptr, ptr %9, align 4
  call void @release_firmware(ptr noundef %195) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  %196 = icmp eq i32 %192, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %191, %188, %14
  %198 = phi i32 [ %12, %14 ], [ %192, %191 ], [ %189, %188 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.87, i32 noundef %198) #14
  br label %202

199:                                              ; preds = %191
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.88) #14
  %200 = call fastcc i32 @mxt_initialize(ptr noundef %11)
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199, %197
  %203 = phi i32 [ %198, %197 ], [ %3, %199 ]
  br label %204

204:                                              ; preds = %202, %199
  %205 = phi i32 [ %203, %202 ], [ %200, %199 ]
  ret i32 %205
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mxt_check_bootloader(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca i8, align 1
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  store i8 0, ptr %7, align 1, !annotation !10
  %10 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 48
  %11 = getelementptr inbounds i8, ptr %6, i32 4
  %12 = getelementptr inbounds %struct.mxt_data, ptr %0, i32 0, i32 22
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  br label %15

15:                                               ; preds = %76, %3
  br i1 %2, label %16, label %26

16:                                               ; preds = %15
  %17 = load ptr, ptr %0, align 8
  %18 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %10, i32 noundef 30) #13
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.43) #14
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi i32 [ -110, %22 ], [ %18, %16 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.93, i32 noundef %25) #14
  br label %84

26:                                               ; preds = %20, %15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  store i32 0, ptr %11, align 4, !annotation !10
  %27 = load i8, ptr %12, align 4
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %6, align 4
  %29 = load ptr, ptr %0, align 8
  %30 = load i16, ptr %29, align 8
  %31 = and i16 %30, 16
  %32 = or i16 %31, 1
  store i16 %32, ptr %13, align 2
  store i16 1, ptr %11, align 4
  store ptr %7, ptr %14, align 4
  %33 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %6, i32 noundef 1) #13
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  switch i32 %1, label %84 [
    i32 192, label %43
    i32 128, label %71
    i32 64, label %71
    i32 4, label %76
  ]

38:                                               ; preds = %26
  %39 = icmp slt i32 %35, 0
  %40 = select i1 %39, i32 %35, i32 -5
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.mxt_bootloader_read, i32 noundef %40) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  br label %84

43:                                               ; preds = %37
  %44 = load i8, ptr %7, align 1
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false) #13, !annotation !10
  %47 = and i8 %44, 32
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %50 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %50, align 4, !annotation !10
  %51 = load i8, ptr %12, align 4
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %4, align 4
  %53 = load i16, ptr %45, align 8
  %54 = and i16 %53, 16
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %56 = or i16 %54, 1
  store i16 %56, ptr %55, align 2
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %57, align 4
  %58 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 3
  %59 = load ptr, ptr %58, align 8
  %60 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %4, i32 noundef 1) #13
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  %63 = load i8, ptr %5, align 1
  br label %69

64:                                               ; preds = %49
  %65 = icmp slt i32 %60, 0
  %66 = select i1 %65, i32 %60, i32 -5
  %67 = load ptr, ptr %0, align 8
  %68 = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.mxt_bootloader_read, i32 noundef %66) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.mxt_get_bootloader_version) #14
  br label %69

69:                                               ; preds = %64, %62, %43
  %70 = phi i8 [ %44, %64 ], [ %63, %62 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #13
  br label %73

71:                                               ; preds = %37, %37
  %72 = load i8, ptr %7, align 1
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i8 [ %72, %71 ], [ %70, %69 ]
  %75 = and i8 %74, -64
  store i8 %75, ptr %7, align 1
  br label %79

76:                                               ; preds = %37
  %77 = load i8, ptr %7, align 1
  switch i8 %77, label %79 [
    i8 2, label %15
    i8 3, label %78
  ]

78:                                               ; preds = %76
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.94) #14
  br label %84

79:                                               ; preds = %76, %73
  %80 = phi i8 [ %75, %73 ], [ %77, %76 ]
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, %1
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.95, i32 noundef %81, i32 noundef %1) #14
  br label %84

84:                                               ; preds = %83, %79, %78, %38, %37, %24
  %85 = phi i32 [ %25, %24 ], [ -22, %78 ], [ -22, %83 ], [ %40, %38 ], [ 0, %79 ], [ -22, %37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxt_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %8) #13
  %9 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %5) #13
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call fastcc void @mxt_stop(ptr noundef %3)
  br label %11

11:                                               ; preds = %10, %7
  tail call void @mutex_unlock(ptr noundef %8) #13
  %12 = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  tail call void @disable_irq(i32 noundef %13) #13
  br label %14

14:                                               ; preds = %11, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxt_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mxt_data, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  tail call void @enable_irq(i32 noundef %9) #13
  %10 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %10) #13
  %11 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %5) #13
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call fastcc void @mxt_start(ptr noundef %3)
  br label %13

13:                                               ; preds = %12, %7
  tail call void @mutex_unlock(ptr noundef %10) #13
  br label %14

14:                                               ; preds = %13, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
