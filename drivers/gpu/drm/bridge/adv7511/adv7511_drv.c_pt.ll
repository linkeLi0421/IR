; ModuleID = '/llk/IR/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adv7511_link_config = type { i32, i32, i32, i32, i32, i32, i8, i32, i32, i32 }
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
%struct.adv7511 = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, %struct.drm_display_mode, i32, i32, i32, i32, [256 x i8], i8, %struct.wait_queue_head, %struct.work_struct, %struct.drm_bridge, %struct.drm_connector, i8, i32, i32, i8, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [3 x i8], i8, i8, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.adv7511_video_config = type { i8, i32, ptr, i8, %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@adv7511_i2c_ids = internal constant [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adv7511\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adv7511w\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adv7513\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adv7533\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"adv7535\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], align 4
@adv7511_of_ids = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7511\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7511w\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7513\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7533\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7535\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author265 = internal constant [44 x i8] c"author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description266 = internal constant [44 x i8] c"description=ADV7511 HDMI transmitter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@adv7533_dsi_driver = internal global %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@adv7511_driver = internal global %struct.i2c_driver { i32 0, ptr @adv7511_probe, ptr @adv7511_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adv7511_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adv7511_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"adv7533\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"adv7511\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to init regulators\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"pd\00", align 1
@adv7511_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @adv7511_register_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr @adv7511_register_defaults, i32 256, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@adv7511_fixed_registers = internal constant [9 x %struct.reg_sequence] [%struct.reg_sequence { i32 152, i32 3, i32 0 }, %struct.reg_sequence { i32 154, i32 224, i32 0 }, %struct.reg_sequence { i32 156, i32 48, i32 0 }, %struct.reg_sequence { i32 157, i32 97, i32 0 }, %struct.reg_sequence { i32 162, i32 164, i32 0 }, %struct.reg_sequence { i32 163, i32 164, i32 0 }, %struct.reg_sequence { i32 224, i32 208, i32 0 }, %struct.reg_sequence { i32 249, i32 0, i32 0 }, %struct.reg_sequence { i32 85, i32 2, i32 0 }], align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"edid\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"packet\00", align 1
@adv7511_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"&adv7511->wq\00", align 1
@adv7511_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr @adv7511_bridge_attach, ptr null, ptr null, ptr null, ptr @adv7511_bridge_disable, ptr null, ptr @adv7511_bridge_mode_set, ptr null, ptr @adv7511_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv7511_bridge_detect, ptr null, ptr @adv7511_bridge_get_edid, ptr @adv7511_bridge_hpd_notify, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"adi,input-depth\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"adi,input-colorspace\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"yuv422\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"yuv444\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"adi,input-clock\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"1x\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"2x\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ddr\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"adi,input-style\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"adi,input-justification\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"evenly\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"adi,clock-delay\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"adi,embedded-sync\00", align 1
@adv7511_supply_names = internal unnamed_addr constant [5 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], align 4
@adv7533_supply_names = internal unnamed_addr constant [6 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.30], align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"dvdd\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"pvdd\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"bgvdd\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"dvdd-3v\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"a2vdd\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"v3p3\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"v1p2\00", align 1
@adv7511_register_defaults = internal constant [256 x i8] c"\12\00\00\00\00\00\00\00\00\00\01\0E\BC\18\01\13%7\00\00\00\00\00\00Fb\04\A8\00\00\1C\84\1C\BF\04\A8\1Ep\02\1E\00\00\04\A8\08\12\1B\AC\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\B0\00P\90~yp\00\00\00\A8\80\00\00\00\00\00\00\00\02\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C0\00\00\00\0B\02\00\18Z`\00\00\00\00\80\80\08\04\00\00\00\00\00@\00\00@\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\02\00\01\040\FF\80\80\80\00\00\00\00\00\00\00\00\00\10\01\80u\00\00`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00u\11\00\00|\00\00\00\00\00\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"cec\00", align 1
@adv7511_cec_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @adv7511_cec_register_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@adv7511_set_link_config.input_styles = internal unnamed_addr constant [4 x i32] [i32 0, i32 2, i32 1, i32 3], align 4
@.str.32 = private unnamed_addr constant [32 x i8] c"Parent encoder object not found\00", align 1
@adv7511_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @adv7511_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.33 = private unnamed_addr constant [41 x i8] c"Failed to initialize connector with drm\0A\00", align 1
@adv7511_connector_helper_funcs = internal global %struct.drm_connector_helper_funcs { ptr @adv7511_connector_get_modes, ptr null, ptr @adv7511_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@adv7511_csc_ycbcr_to_rgb = internal constant [12 x i16] [i16 1844, i16 1197, i16 0, i16 7195, i16 7644, i16 1197, i16 7972, i16 309, i16 0, i16 1197, i16 2172, i16 7031], align 2
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_license267], section "llvm.metadata"

@__mod_i2c__adv7511_i2c_ids_device_table = dso_local alias [6 x %struct.i2c_device_id], ptr @adv7511_i2c_ids
@__mod_of__adv7511_of_ids_device_table = dso_local alias [6 x %struct.of_device_id], ptr @adv7511_of_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @adv7533_dsi_driver, ptr noundef nonnull @__this_module) #12
  %2 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @adv7511_driver) #12
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @adv7511_driver) #12
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @adv7533_dsi_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7511_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca ptr, align 4
  %4 = alloca %struct.adv7511_link_config, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %284, label %10

10:                                               ; preds = %2
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 1624, i32 noundef 3520) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %284, label %13

13:                                               ; preds = %10
  store ptr %0, ptr %11, align 8
  %14 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 7
  store i8 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 6
  store i32 2, ptr %15, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = tail call ptr @of_device_get_match_data(ptr noundef %6) #12
  %20 = ptrtoint ptr %19 to i32
  br label %24

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ %23, %21 ], [ %20, %18 ]
  %26 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 30
  store i32 %25, ptr %26, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false)
  %27 = icmp eq i32 %25, 0
  %28 = load ptr, ptr %7, align 8
  br i1 %27, label %29, label %109

29:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store ptr null, ptr %3, align 4, !annotation !8
  %30 = call i32 @of_property_read_variable_u32_array(ptr noundef %28, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #12
  %31 = load i32, ptr %4, align 4
  switch i32 %31, label %107 [
    i32 8, label %32
    i32 10, label %32
    i32 12, label %32
  ]

32:                                               ; preds = %29, %29, %29
  %33 = call i32 @of_property_read_string(ptr noundef %28, ptr noundef nonnull @.str.8, ptr noundef nonnull %3) #12
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %107, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %3, align 4
  %37 = call i32 @strcmp(ptr noundef %36, ptr noundef nonnull dereferenceable(4) @.str.9) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = call i32 @strcmp(ptr noundef %36, ptr noundef nonnull dereferenceable(7) @.str.10) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = call i32 @strcmp(ptr noundef %36, ptr noundef nonnull dereferenceable(7) @.str.11) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %107

45:                                               ; preds = %42, %39, %35
  %46 = phi i32 [ 0, %35 ], [ 1, %39 ], [ 2, %42 ]
  %47 = getelementptr inbounds %struct.adv7511_link_config, ptr %4, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  %48 = call i32 @of_property_read_string(ptr noundef %28, ptr noundef nonnull @.str.12, ptr noundef nonnull %3) #12
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %107, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %3, align 4
  %52 = call i32 @strcmp(ptr noundef %51, ptr noundef nonnull dereferenceable(3) @.str.13) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %50
  %55 = call i32 @strcmp(ptr noundef %51, ptr noundef nonnull dereferenceable(3) @.str.14) #12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = call i32 @strcmp(ptr noundef %51, ptr noundef nonnull dereferenceable(4) @.str.15) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %107

60:                                               ; preds = %57, %54
  %61 = phi i32 [ 1, %54 ], [ 2, %57 ]
  %62 = getelementptr inbounds %struct.adv7511_link_config, ptr %4, i32 0, i32 2
  store i32 %61, ptr %62, align 4
  br label %67

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.adv7511_link_config, ptr %4, i32 0, i32 2
  store i32 0, ptr %64, align 4
  %65 = load i32, ptr %47, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %89

67:                                               ; preds = %63, %60
  %68 = getelementptr inbounds %struct.adv7511_link_config, ptr %4, i32 0, i32 3
  %69 = call i32 @of_property_read_variable_u32_array(ptr noundef %28, ptr noundef nonnull @.str.16, ptr noundef %68, i32 noundef 1, i32 noundef 0) #12
  %70 = call i32 @llvm.smin.i32(i32 %69, i32 0) #12
  %71 = icmp sgt i32 %69, -1
  br i1 %71, label %72, label %107

72:                                               ; preds = %67
  %73 = load i32, ptr %68, align 4
  %74 = add i32 %73, -4
  %75 = icmp ult i32 %74, -3
  br i1 %75, label %107, label %76

76:                                               ; preds = %72
  %77 = call i32 @of_property_read_string(ptr noundef %28, ptr noundef nonnull @.str.17, ptr noundef nonnull %3) #12
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %107, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %3, align 4
  %81 = call i32 @strcmp(ptr noundef %80, ptr noundef nonnull dereferenceable(5) @.str.18) #12
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = call i32 @strcmp(ptr noundef %80, ptr noundef nonnull dereferenceable(7) @.str.19) #12
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = call i32 @strcmp(ptr noundef %80, ptr noundef nonnull dereferenceable(6) @.str.20) #12
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %107

89:                                               ; preds = %63
  %90 = getelementptr inbounds %struct.adv7511_link_config, ptr %4, i32 0, i32 3
  store i32 1, ptr %90, align 4
  br label %91

91:                                               ; preds = %89, %86, %83, %79
  %92 = phi i32 [ 2, %89 ], [ 2, %79 ], [ 0, %83 ], [ 1, %86 ]
  %93 = getelementptr inbounds %struct.adv7511_link_config, ptr %4, i32 0, i32 4
  store i32 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.adv7511_link_config, ptr %4, i32 0, i32 5
  %95 = call i32 @of_property_read_variable_u32_array(ptr noundef %28, ptr noundef nonnull @.str.21, ptr noundef %94, i32 noundef 1, i32 noundef 0) #12
  %96 = load i32, ptr %94, align 4
  %97 = add i32 %96, -1601
  %98 = icmp ult i32 %97, -2801
  br i1 %98, label %107, label %99

99:                                               ; preds = %91
  %100 = call ptr @of_find_property(ptr noundef %28, ptr noundef nonnull @.str.22, ptr noundef null) #12
  %101 = icmp ne ptr %100, null
  %102 = getelementptr inbounds %struct.adv7511_link_config, ptr %4, i32 0, i32 6
  %103 = zext i1 %101 to i8
  store i8 %103, ptr %102, align 4
  %104 = getelementptr inbounds %struct.adv7511_link_config, ptr %4, i32 0, i32 7
  store i32 3, ptr %104, align 4
  %105 = getelementptr inbounds %struct.adv7511_link_config, ptr %4, i32 0, i32 8
  store i32 0, ptr %105, align 4
  %106 = getelementptr inbounds %struct.adv7511_link_config, ptr %4, i32 0, i32 9
  store i32 0, ptr %106, align 4
  br label %107

107:                                              ; preds = %99, %91, %86, %76, %72, %67, %57, %45, %42, %32, %29
  %108 = phi i32 [ 0, %99 ], [ -22, %29 ], [ %33, %32 ], [ -22, %42 ], [ %48, %45 ], [ -22, %57 ], [ %70, %67 ], [ -22, %72 ], [ %77, %76 ], [ -22, %86 ], [ -22, %91 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %111

109:                                              ; preds = %24
  %110 = tail call i32 @adv7533_parse_dt(ptr noundef %28, ptr noundef nonnull %11) #12
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %284

114:                                              ; preds = %111
  %115 = load ptr, ptr %11, align 8
  %116 = getelementptr inbounds %struct.i2c_client, ptr %115, i32 0, i32 4
  %117 = load i32, ptr %26, align 8
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 5, i32 6
  %120 = select i1 %118, ptr @adv7511_supply_names, ptr @adv7533_supply_names
  %121 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 25
  store i32 %119, ptr %121, align 8
  %122 = mul nuw nsw i32 %119, 12
  %123 = call noalias ptr @devm_kmalloc(ptr noundef %116, i32 noundef %122, i32 noundef 3520) #12
  %124 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 24
  store ptr %123, ptr %124, align 4
  %125 = icmp eq ptr %123, null
  br i1 %125, label %158, label %126

126:                                              ; preds = %114
  %127 = load i32, ptr %121, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %148, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %120, align 4
  store ptr %130, ptr %123, align 4
  %131 = icmp eq i32 %127, 1
  br i1 %131, label %148, label %132

132:                                              ; preds = %129
  %133 = getelementptr %struct.regulator_bulk_data, ptr %123, i32 1
  store ptr @.str.24, ptr %133, align 4
  %134 = load i32, ptr %121, align 8
  %135 = icmp ugt i32 %134, 2
  br i1 %135, label %136, label %145

136:                                              ; preds = %136, %132
  %137 = phi i32 [ %142, %136 ], [ 2, %132 ]
  %138 = load ptr, ptr %124, align 4
  %139 = getelementptr ptr, ptr %120, i32 %137
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr %struct.regulator_bulk_data, ptr %138, i32 %137
  store ptr %140, ptr %141, align 4
  %142 = add nuw i32 %137, 1
  %143 = load i32, ptr %121, align 8
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %136, label %145

145:                                              ; preds = %136, %132
  %146 = phi i32 [ %134, %132 ], [ %143, %136 ]
  %147 = load ptr, ptr %124, align 4
  br label %148

148:                                              ; preds = %145, %129, %126
  %149 = phi ptr [ %123, %126 ], [ %123, %129 ], [ %147, %145 ]
  %150 = phi i32 [ 0, %126 ], [ 1, %129 ], [ %146, %145 ]
  %151 = call i32 @devm_regulator_bulk_get(ptr noundef %116, i32 noundef %150, ptr noundef %149) #12
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i32, ptr %121, align 8
  %155 = load ptr, ptr %124, align 4
  %156 = call i32 @regulator_bulk_enable(i32 noundef %154, ptr noundef %155) #12
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %153, %148, %114
  %159 = phi i32 [ %156, %153 ], [ %151, %148 ], [ -12, %114 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #13
  br label %284

160:                                              ; preds = %153
  %161 = call ptr @devm_gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef 7) #12
  %162 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 23
  store ptr %161, ptr %162, align 8
  %163 = icmp ugt ptr %161, inttoptr (i32 -4096 to ptr)
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = ptrtoint ptr %161 to i32
  br label %279

166:                                              ; preds = %160
  %167 = icmp eq ptr %161, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %166
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #12
  %169 = load ptr, ptr %162, align 8
  call void @gpiod_set_value_cansleep(ptr noundef %169, i32 noundef 0) #12
  br label %170

170:                                              ; preds = %168, %166
  %171 = call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @adv7511_regmap_config, ptr noundef null, ptr noundef null) #12
  %172 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 4
  store ptr %171, ptr %172, align 8
  %173 = icmp ugt ptr %171, inttoptr (i32 -4096 to ptr)
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = ptrtoint ptr %171 to i32
  br label %279

176:                                              ; preds = %170
  %177 = call i32 @regmap_read(ptr noundef %171, i32 noundef 0, ptr noundef nonnull %5) #12
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %279

179:                                              ; preds = %176
  %180 = load i32, ptr %26, align 8
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load ptr, ptr %172, align 8
  %184 = call i32 @regmap_register_patch(ptr noundef %183, ptr noundef nonnull @adv7511_fixed_registers, i32 noundef 9) #12
  br label %187

185:                                              ; preds = %179
  %186 = call i32 @adv7533_patch_registers(ptr noundef nonnull %11) #12
  br label %187

187:                                              ; preds = %185, %182
  %188 = phi i32 [ %184, %182 ], [ %186, %185 ]
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %279

190:                                              ; preds = %187
  call fastcc void @adv7511_packet_disable(ptr noundef nonnull %11, i32 noundef 65535)
  %191 = call ptr @i2c_new_ancillary_device(ptr noundef %0, ptr noundef nonnull @.str.4, i16 noundef zeroext 63) #12
  %192 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 1
  store ptr %191, ptr %192, align 4
  %193 = icmp ugt ptr %191, inttoptr (i32 -4096 to ptr)
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = ptrtoint ptr %191 to i32
  br label %279

196:                                              ; preds = %190
  %197 = load ptr, ptr %172, align 8
  %198 = getelementptr inbounds %struct.i2c_client, ptr %191, i32 0, i32 1
  %199 = load i16, ptr %198, align 2
  %200 = zext i16 %199 to i32
  %201 = shl nuw nsw i32 %200, 1
  %202 = call i32 @regmap_write(ptr noundef %197, i32 noundef 67, i32 noundef %201) #12
  %203 = call ptr @i2c_new_ancillary_device(ptr noundef %0, ptr noundef nonnull @.str.5, i16 noundef zeroext 56) #12
  %204 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 2
  store ptr %203, ptr %204, align 8
  %205 = icmp ugt ptr %203, inttoptr (i32 -4096 to ptr)
  br i1 %205, label %206, label %208

206:                                              ; preds = %196
  %207 = ptrtoint ptr %203 to i32
  br label %276

208:                                              ; preds = %196
  %209 = load ptr, ptr %172, align 8
  %210 = getelementptr inbounds %struct.i2c_client, ptr %203, i32 0, i32 1
  %211 = load i16, ptr %210, align 2
  %212 = zext i16 %211 to i32
  %213 = shl nuw nsw i32 %212, 1
  %214 = call i32 @regmap_write(ptr noundef %209, i32 noundef 69, i32 noundef %213) #12
  %215 = call fastcc i32 @adv7511_init_cec_regmap(ptr noundef nonnull %11)
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %273

217:                                              ; preds = %208
  %218 = load ptr, ptr %172, align 8
  %219 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 3
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.i2c_client, ptr %220, i32 0, i32 1
  %222 = load i16, ptr %221, align 2
  %223 = zext i16 %222 to i32
  %224 = shl nuw nsw i32 %223, 1
  %225 = call i32 @regmap_write(ptr noundef %218, i32 noundef 225, i32 noundef %224) #12
  %226 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 16
  store i32 -32, ptr %226, align 8
  %227 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 16, i32 1
  store volatile ptr %227, ptr %227, align 4
  %228 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 16, i32 1, i32 1
  store ptr %227, ptr %228, align 4
  %229 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 16, i32 2
  store ptr @adv7511_hpd_work, ptr %229, align 4
  %230 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %231 = load i32, ptr %230, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %245, label %233

233:                                              ; preds = %217
  %234 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 15
  call void @__init_waitqueue_head(ptr noundef %234, ptr noundef nonnull @.str.6, ptr noundef nonnull @adv7511_probe.__key) #12
  %235 = load i32, ptr %230, align 4
  %236 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 3
  %237 = load ptr, ptr %236, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %233
  %240 = load ptr, ptr %6, align 4
  br label %241

241:                                              ; preds = %239, %233
  %242 = phi ptr [ %240, %239 ], [ %237, %233 ]
  %243 = call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %235, ptr noundef null, ptr noundef nonnull @adv7511_irq_handler, i32 noundef 8192, ptr noundef %242, ptr noundef nonnull %11) #12
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %268

245:                                              ; preds = %241, %217
  call fastcc void @adv7511_power_off(ptr noundef nonnull %11)
  %246 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %11, ptr %246, align 8
  %247 = load i32, ptr %26, align 8
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %245
  call fastcc void @adv7511_set_link_config(ptr noundef nonnull %11, ptr noundef nonnull %4)
  br label %250

250:                                              ; preds = %249, %245
  %251 = call i32 @adv7511_cec_init(ptr noundef %6, ptr noundef nonnull %11) #12
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %268

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 17
  %255 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 17, i32 7
  store ptr @adv7511_bridge_funcs, ptr %255, align 8
  %256 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 17, i32 9
  store i32 7, ptr %256, align 8
  %257 = load ptr, ptr %7, align 8
  %258 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 17, i32 4
  store ptr %257, ptr %258, align 8
  %259 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 17, i32 10
  store i32 11, ptr %259, align 4
  call void @drm_bridge_add(ptr noundef %254) #12
  %260 = call i32 @adv7511_audio_init(ptr noundef %6, ptr noundef nonnull %11) #12
  %261 = load i32, ptr %26, align 8
  %262 = add i32 %261, -1
  %263 = icmp ult i32 %262, 2
  br i1 %263, label %264, label %284

264:                                              ; preds = %253
  %265 = call i32 @adv7533_attach_dsi(ptr noundef nonnull %11) #12
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %284, label %267

267:                                              ; preds = %264
  call void @adv7511_audio_exit(ptr noundef nonnull %11) #12
  call void @drm_bridge_remove(ptr noundef %254) #12
  br label %268

268:                                              ; preds = %267, %250, %241
  %269 = phi i32 [ %243, %241 ], [ %251, %250 ], [ %265, %267 ]
  %270 = load ptr, ptr %219, align 4
  call void @i2c_unregister_device(ptr noundef %270) #12
  %271 = getelementptr inbounds %struct.adv7511, ptr %11, i32 0, i32 36
  %272 = load ptr, ptr %271, align 4
  call void @clk_disable(ptr noundef %272) #12
  call void @clk_unprepare(ptr noundef %272) #12
  br label %273

273:                                              ; preds = %268, %208
  %274 = phi i32 [ %215, %208 ], [ %269, %268 ]
  %275 = load ptr, ptr %204, align 8
  call void @i2c_unregister_device(ptr noundef %275) #12
  br label %276

276:                                              ; preds = %273, %206
  %277 = phi i32 [ %207, %206 ], [ %274, %273 ]
  %278 = load ptr, ptr %192, align 4
  call void @i2c_unregister_device(ptr noundef %278) #12
  br label %279

279:                                              ; preds = %276, %194, %187, %176, %174, %164
  %280 = phi i32 [ %165, %164 ], [ %175, %174 ], [ %177, %176 ], [ %188, %187 ], [ %195, %194 ], [ %277, %276 ]
  %281 = load i32, ptr %121, align 8
  %282 = load ptr, ptr %124, align 4
  %283 = call i32 @regulator_bulk_disable(i32 noundef %281, ptr noundef %282) #12
  br label %284

284:                                              ; preds = %279, %264, %253, %158, %111, %10, %2
  %285 = phi i32 [ %159, %158 ], [ %280, %279 ], [ -22, %2 ], [ -12, %10 ], [ %112, %111 ], [ 0, %253 ], [ 0, %264 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  ret i32 %285
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7511_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.adv7511, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @i2c_unregister_device(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.adv7511, ptr %3, i32 0, i32 36
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #12
  tail call void @clk_unprepare(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.adv7511, ptr %3, i32 0, i32 25
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.adv7511, ptr %3, i32 0, i32 24
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regulator_bulk_disable(i32 noundef %9, ptr noundef %11) #12
  %13 = getelementptr inbounds %struct.adv7511, ptr %3, i32 0, i32 17
  tail call void @drm_bridge_remove(ptr noundef %13) #12
  tail call void @adv7511_audio_exit(ptr noundef %3) #12
  %14 = getelementptr inbounds %struct.adv7511, ptr %3, i32 0, i32 32
  %15 = load ptr, ptr %14, align 8
  tail call void @cec_unregister_adapter(ptr noundef %15) #12
  %16 = getelementptr inbounds %struct.adv7511, ptr %3, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  tail call void @i2c_unregister_device(ptr noundef %17) #12
  %18 = getelementptr inbounds %struct.adv7511, ptr %3, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void @i2c_unregister_device(ptr noundef %19) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv7533_parse_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv7533_patch_registers(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @adv7511_packet_disable(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = and i32 %1, 255
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 64, i32 noundef %1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %9

9:                                                ; preds = %5, %2
  %10 = and i32 %1, 65280
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = lshr i32 %1, 8
  %14 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 68, i32 noundef %13, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %17

17:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_ancillary_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @adv7511_init_cec_regmap(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call ptr @i2c_new_ancillary_device(ptr noundef %2, ptr noundef nonnull @.str.31, i16 noundef zeroext 60) #12
  %4 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 3
  store ptr %3, ptr %4, align 4
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = ptrtoint ptr %3 to i32
  br label %27

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  store ptr %0, ptr %9, align 8
  %10 = load ptr, ptr %4, align 4
  %11 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %10, ptr noundef nonnull @adv7511_cec_regmap_config, ptr noundef null, ptr noundef null) #12
  %12 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 5
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = ptrtoint ptr %11 to i32
  br label %24

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 30
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, -1
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = tail call i32 @adv7533_patch_cec_registers(ptr noundef %0) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %14
  %25 = phi i32 [ %15, %14 ], [ %22, %21 ]
  %26 = load ptr, ptr %4, align 4
  tail call void @i2c_unregister_device(ptr noundef %26) #12
  br label %27

27:                                               ; preds = %24, %21, %16, %6
  %28 = phi i32 [ %7, %6 ], [ %25, %24 ], [ 0, %16 ], [ 0, %21 ]
  ret i32 %28
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adv7511_hpd_work(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -432
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr i8, ptr %0, i32 -416
  %5 = load ptr, ptr %4, align 8
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 66, ptr noundef nonnull %2) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 256
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 -404
  %18 = load i8, ptr %17, align 4, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %4, align 8
  call void @regcache_mark_dirty(ptr noundef %21) #12
  call fastcc void @__adv7511_power_on(ptr noundef %3) #12
  %22 = load ptr, ptr %4, align 8
  %23 = call i32 @regcache_sync(ptr noundef %22) #12
  %24 = getelementptr i8, ptr %0, i32 1160
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, -1
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  call void @adv7533_dsi_power_on(ptr noundef %3) #12
  br label %29

29:                                               ; preds = %28, %20
  store i8 1, ptr %17, align 4
  br label %30

30:                                               ; preds = %29, %16, %12, %8, %1
  %31 = phi i32 [ 1, %29 ], [ 1, %16 ], [ 1, %12 ], [ 2, %8 ], [ 2, %1 ]
  %32 = phi i1 [ false, %29 ], [ false, %16 ], [ false, %12 ], [ true, %8 ], [ true, %1 ]
  %33 = getelementptr i8, ptr %0, i32 152
  %34 = getelementptr i8, ptr %0, i32 256
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, %31
  br i1 %36, label %49, label %37

37:                                               ; preds = %30
  store i32 %31, ptr %34, align 8
  %38 = load ptr, ptr %33, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  br i1 %32, label %41, label %45

41:                                               ; preds = %40
  %42 = getelementptr i8, ptr %0, i32 1168
  %43 = load ptr, ptr %42, align 8
  call void @cec_s_phys_addr(ptr noundef %43, i16 noundef zeroext -1, i1 noundef zeroext false) #12
  %44 = load ptr, ptr %33, align 8
  br label %45

45:                                               ; preds = %41, %40
  %46 = phi ptr [ %44, %41 ], [ %38, %40 ]
  call void @drm_kms_helper_hotplug_event(ptr noundef %46) #12
  br label %49

47:                                               ; preds = %37
  %48 = getelementptr i8, ptr %0, i32 16
  call void @drm_bridge_hpd_notify(ptr noundef %48, i32 noundef %31) #12
  br label %49

49:                                               ; preds = %47, %45, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7511_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = tail call fastcc i32 @adv7511_irq_process(ptr noundef %1, i1 noundef zeroext true)
  %4 = xor i32 %3, -1
  %5 = lshr i32 %4, 31
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @adv7511_power_off(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 65, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %5 = load ptr, ptr %2, align 8
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 149, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %7 = load ptr, ptr %2, align 8
  tail call void @regcache_mark_dirty(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 30
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  tail call void @adv7533_dsi_power_off(ptr noundef %0) #12
  br label %13

13:                                               ; preds = %12, %1
  %14 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 7
  store i8 0, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @adv7511_set_link_config(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.adv7511_link_config, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.adv7511_link_config, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  %9 = getelementptr inbounds %struct.adv7511_link_config, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  br i1 %8, label %14, label %11

11:                                               ; preds = %2
  %12 = icmp eq i32 %10, 2
  %13 = select i1 %12, i32 5, i32 0
  br label %30

14:                                               ; preds = %2
  switch i32 %10, label %25 [
    i32 2, label %15
    i32 1, label %20
  ]

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.adv7511_link_config, ptr %1, i32 0, i32 6
  %17 = load i8, ptr %16, align 4, !range !9
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, i32 7, i32 8
  br label %30

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.adv7511_link_config, ptr %1, i32 0, i32 6
  %22 = load i8, ptr %21, align 4, !range !9
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i32 3, i32 4
  br label %30

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.adv7511_link_config, ptr %1, i32 0, i32 6
  %27 = load i8, ptr %26, align 4, !range !9
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i32 1, i32 2
  br label %30

30:                                               ; preds = %25, %20, %15, %11
  %31 = phi i32 [ %13, %11 ], [ %19, %15 ], [ %24, %20 ], [ %29, %25 ]
  %32 = icmp eq i32 %5, 8
  %33 = icmp eq i32 %5, 10
  %34 = select i1 %33, i32 16, i32 32
  %35 = select i1 %32, i32 48, i32 %34
  %36 = add i32 %4, 1200
  %37 = sdiv i32 %36, 400
  %38 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 4
  %39 = load ptr, ptr %38, align 8
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 21, i32 noundef 15, i32 noundef %31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %41 = load ptr, ptr %38, align 8
  %42 = getelementptr inbounds %struct.adv7511_link_config, ptr %1, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr [4 x i32], ptr @adv7511_set_link_config.input_styles, i32 0, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %45, 2
  %47 = or i32 %46, %35
  %48 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 22, i32 noundef 126, i32 noundef %47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %49 = load ptr, ptr %38, align 8
  %50 = getelementptr inbounds %struct.adv7511_link_config, ptr %1, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = shl i32 %51, 3
  %53 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 72, i32 noundef %52) #12
  %54 = load ptr, ptr %38, align 8
  %55 = getelementptr inbounds %struct.adv7511_link_config, ptr %1, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = shl i32 %56, 2
  %58 = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 208, i32 noundef %57) #12
  %59 = load ptr, ptr %38, align 8
  %60 = shl nsw i32 %37, 5
  %61 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 186, i32 noundef %60) #12
  %62 = getelementptr inbounds %struct.adv7511_link_config, ptr %1, i32 0, i32 6
  %63 = load i8, ptr %62, align 4, !range !9
  %64 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 19
  store i8 %63, ptr %64, align 8
  %65 = getelementptr inbounds %struct.adv7511_link_config, ptr %1, i32 0, i32 9
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 21
  store i32 %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.adv7511_link_config, ptr %1, i32 0, i32 8
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 20
  store i32 %69, ptr %70, align 4
  %71 = load i32, ptr %6, align 4
  %72 = icmp eq i32 %71, 0
  %73 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 22
  %74 = zext i1 %72 to i8
  store i8 %74, ptr %73, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv7511_cec_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv7511_audio_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv7533_attach_dsi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adv7511_audio_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @adv7511_register_volatile(ptr nocapture noundef readnone %0, i32 noundef %1) #8 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 4, label %4
    i32 5, label %4
    i32 6, label %4
    i32 62, label %4
    i32 61, label %4
    i32 63, label %4
    i32 66, label %4
    i32 76, label %4
    i32 150, label %4
    i32 151, label %4
    i32 158, label %4
    i32 176, label %4
    i32 177, label %4
    i32 178, label %4
    i32 179, label %4
    i32 180, label %4
    i32 181, label %4
    i32 182, label %4
    i32 183, label %4
    i32 184, label %4
    i32 190, label %4
    i32 192, label %4
    i32 193, label %4
    i32 194, label %4
    i32 195, label %4
    i32 196, label %4
    i32 200, label %4
    i32 201, label %4
    i32 202, label %4
    i32 203, label %4
    i32 245, label %4
    i32 246, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv7533_patch_cec_registers(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @adv7511_cec_register_volatile(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.adv7511, ptr %4, i32 0, i32 30
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, -1
  %8 = icmp ult i32 %7, 2
  %9 = add i32 %1, -112
  %10 = select i1 %8, i32 %9, i32 %1
  switch i32 %10, label %11 [
    i32 21, label %12
    i32 37, label %12
    i32 74, label %12
    i32 20, label %12
    i32 22, label %12
    i32 23, label %12
    i32 24, label %12
    i32 25, label %12
    i32 26, label %12
    i32 27, label %12
    i32 28, label %12
    i32 29, label %12
    i32 30, label %12
    i32 31, label %12
    i32 32, label %12
    i32 33, label %12
    i32 34, label %12
    i32 35, label %12
    i32 36, label %12
  ]

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %13 = phi i1 [ false, %11 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__adv7511_power_on(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 12
  store i32 -1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 65, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 148, i32 noundef 132) #12
  %13 = load ptr, ptr %3, align 8
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 149, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %15

15:                                               ; preds = %10, %1
  %16 = load ptr, ptr %3, align 8
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 214, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adv7533_dsi_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @adv7511_irq_process(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 150, ptr noundef nonnull %3) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %50, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 151, ptr noundef nonnull %4) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %50, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8
  %15 = load i32, ptr %3, align 4
  %16 = call i32 @regmap_write(ptr noundef %14, i32 noundef 150, i32 noundef %15) #12
  %17 = load ptr, ptr %5, align 8
  %18 = load i32, ptr %4, align 4
  %19 = call i32 @regmap_write(ptr noundef %17, i32 noundef 151, i32 noundef %18) #12
  br i1 %1, label %20, label %32

20:                                               ; preds = %13
  %21 = load i32, ptr %3, align 4
  %22 = and i32 %21, 128
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 17, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 16
  %30 = load ptr, ptr @system_wq, align 4
  %31 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %30, ptr noundef %29) #12
  br label %32

32:                                               ; preds = %28, %24, %20, %13
  %33 = load i32, ptr %3, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, ptr %4, align 4
  %38 = and i32 %37, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36, %32
  %41 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 14
  store i8 1, ptr %41, align 8
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 15
  call void @__wake_up(ptr noundef %47, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  br label %48

48:                                               ; preds = %46, %40, %36
  %49 = load i32, ptr %4, align 4
  call void @adv7511_cec_irq_process(ptr noundef %0, i32 noundef %49) #12
  br label %50

50:                                               ; preds = %48, %9, %2
  %51 = phi i32 [ 0, %48 ], [ %7, %2 ], [ %11, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adv7511_cec_irq_process(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adv7533_dsi_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7511_bridge_attach(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -448
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 52
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32) #12
  br label %37

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i8 6, i8 1
  %17 = getelementptr i8, ptr %0, i32 764
  store i8 %16, ptr %17, align 4
  %18 = getelementptr i8, ptr %0, i32 48
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 136
  %21 = tail call i32 @drm_connector_init(ptr noundef %19, ptr noundef %20, ptr noundef nonnull @adv7511_connector_funcs, i32 noundef 11) #12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #12
  br label %37

24:                                               ; preds = %11
  %25 = getelementptr i8, ptr %0, i32 772
  store ptr @adv7511_connector_helper_funcs, ptr %25, align 4
  %26 = load ptr, ptr %7, align 4
  %27 = tail call i32 @drm_connector_attach_encoder(ptr noundef %20, ptr noundef %26) #12
  br label %28

28:                                               ; preds = %24, %2
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %0, i32 -432
  %35 = load ptr, ptr %34, align 8
  %36 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 148, i32 noundef 128) #12
  br label %37

37:                                               ; preds = %33, %28, %23, %10
  %38 = phi i32 [ 0, %33 ], [ 0, %28 ], [ -19, %10 ], [ %21, %23 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adv7511_bridge_disable(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -432
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 65, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %5 = load ptr, ptr %2, align 8
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 149, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %7 = load ptr, ptr %2, align 8
  tail call void @regcache_mark_dirty(ptr noundef %7) #12
  %8 = getelementptr i8, ptr %0, i32 1144
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 -448
  tail call void @adv7533_dsi_power_off(ptr noundef %13) #12
  br label %14

14:                                               ; preds = %12, %1
  %15 = getelementptr i8, ptr %0, i32 -420
  store i8 0, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adv7511_bridge_mode_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -448
  %5 = getelementptr i8, ptr %0, i32 1104
  %6 = load i8, ptr %5, align 8, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %72, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 16
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 13
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = sub nsw i32 %11, %14
  %16 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 23
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 20
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = sub nsw i32 %18, %21
  %23 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 17
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = sub nsw i32 %25, %11
  %27 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 24
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = sub nsw i32 %29, %18
  %31 = add nsw i32 %22, 1
  %32 = getelementptr i8, ptr %0, i32 -432
  %33 = load ptr, ptr %32, align 8
  %34 = lshr i32 %15, 5
  %35 = and i32 %34, 224
  %36 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 250, i32 noundef %35) #12
  %37 = load ptr, ptr %32, align 8
  %38 = lshr i32 %15, 2
  %39 = and i32 %38, 255
  %40 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 48, i32 noundef %39) #12
  %41 = load ptr, ptr %32, align 8
  %42 = shl nsw i32 %15, 6
  %43 = and i32 %42, 192
  %44 = lshr i32 %26, 4
  %45 = and i32 %44, 63
  %46 = or i32 %45, %43
  %47 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 49, i32 noundef %46) #12
  %48 = load ptr, ptr %32, align 8
  %49 = shl nsw i32 %26, 4
  %50 = and i32 %49, 240
  %51 = lshr i32 %31, 6
  %52 = and i32 %51, 15
  %53 = or i32 %50, %52
  %54 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 50, i32 noundef %53) #12
  %55 = load ptr, ptr %32, align 8
  %56 = shl nsw i32 %31, 2
  %57 = and i32 %56, 252
  %58 = lshr i32 %30, 8
  %59 = and i32 %58, 3
  %60 = or i32 %59, %57
  %61 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 51, i32 noundef %60) #12
  %62 = load ptr, ptr %32, align 8
  %63 = and i32 %30, 255
  %64 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 52, i32 noundef %63) #12
  %65 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 11
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 1
  %68 = xor i32 %67, 1
  %69 = lshr i32 %66, 2
  %70 = and i32 %69, 1
  %71 = xor i32 %70, 1
  br label %93

72:                                               ; preds = %3
  %73 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 11
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, i32 2, i32 1
  %78 = and i32 %74, 8
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i32 2, i32 1
  %81 = getelementptr i8, ptr %0, i32 1112
  %82 = load i32, ptr %81, align 8
  %83 = icmp ne i32 %82, %77
  %84 = icmp ne i32 %82, 0
  %85 = and i1 %84, %83
  %86 = zext i1 %85 to i32
  %87 = getelementptr i8, ptr %0, i32 1108
  %88 = load i32, ptr %87, align 4
  %89 = icmp ne i32 %88, %80
  %90 = icmp ne i32 %88, 0
  %91 = and i1 %90, %89
  %92 = zext i1 %91 to i32
  br label %93

93:                                               ; preds = %72, %8
  %94 = phi i32 [ %71, %8 ], [ %92, %72 ]
  %95 = phi i32 [ %68, %8 ], [ %86, %72 ]
  %96 = tail call i32 @drm_mode_vrefresh(ptr noundef %1) #12
  %97 = icmp slt i32 %96, 25
  br i1 %97, label %105, label %98

98:                                               ; preds = %93
  %99 = tail call i32 @drm_mode_vrefresh(ptr noundef %1) #12
  %100 = icmp slt i32 %99, 26
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = tail call i32 @drm_mode_vrefresh(ptr noundef %1) #12
  %103 = icmp slt i32 %102, 31
  %104 = select i1 %103, i32 6, i32 0
  br label %105

105:                                              ; preds = %101, %98, %93
  %106 = phi i32 [ 2, %93 ], [ 4, %98 ], [ %104, %101 ]
  %107 = getelementptr i8, ptr %0, i32 -432
  %108 = load ptr, ptr %107, align 8
  %109 = tail call i32 @regmap_update_bits_base(ptr noundef %108, i32 noundef 251, i32 noundef 6, i32 noundef %106, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %110 = load ptr, ptr %107, align 8
  %111 = shl nsw i32 %94, 6
  %112 = shl nsw i32 %95, 5
  %113 = or i32 %112, %111
  %114 = tail call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef 23, i32 noundef 96, i32 noundef %113, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %115 = getelementptr i8, ptr %0, i32 1144
  %116 = load i32, ptr %115, align 8
  %117 = add i32 %116, -1
  %118 = icmp ult i32 %117, 2
  br i1 %118, label %119, label %120

119:                                              ; preds = %105
  tail call void @adv7533_mode_set(ptr noundef %4, ptr noundef %2) #12
  br label %120

120:                                              ; preds = %119, %105
  %121 = getelementptr i8, ptr %0, i32 -416
  tail call void @drm_mode_copy(ptr noundef %121, ptr noundef %2) #12
  %122 = load i32, ptr %1, align 4
  %123 = getelementptr i8, ptr %0, i32 -304
  store i32 %122, ptr %123, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adv7511_bridge_enable(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -448
  tail call fastcc void @__adv7511_power_on(ptr noundef %2) #12
  %3 = getelementptr i8, ptr %0, i32 -432
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @regcache_sync(ptr noundef %4) #12
  %6 = getelementptr i8, ptr %0, i32 1144
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @adv7533_dsi_power_on(ptr noundef %2) #12
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr i8, ptr %0, i32 -420
  store i8 1, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7511_bridge_detect(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -448
  %3 = tail call fastcc i32 @adv7511_detect(ptr noundef %2, ptr noundef null)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @adv7511_bridge_get_edid(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -448
  %4 = tail call fastcc ptr @adv7511_get_edid(ptr noundef %3, ptr noundef %1)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adv7511_bridge_hpd_notify(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 1152
  %6 = load ptr, ptr %5, align 8
  tail call void @cec_s_phys_addr(ptr noundef %6, i16 noundef zeroext -1, i1 noundef zeroext false) #12
  br label %7

7:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7511_connector_detect(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -584
  %4 = tail call fastcc i32 @adv7511_detect(ptr noundef %3, ptr noundef %0)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @adv7511_detect(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 66, ptr noundef nonnull %4) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %14 = load ptr, ptr %5, align 8
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef 150, ptr noundef nonnull %3) #12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = load i32, ptr %3, align 4
  %19 = and i32 %18, 128
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %49

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8
  %24 = call i32 @regmap_write(ptr noundef %23, i32 noundef 150, i32 noundef 128) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br i1 %12, label %49, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 7
  %27 = load i8, ptr %26, align 4, !range !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %5, align 8
  call void @regcache_mark_dirty(ptr noundef %30) #12
  call fastcc void @__adv7511_power_on(ptr noundef %0) #12
  %31 = load ptr, ptr %5, align 8
  %32 = call i32 @regcache_sync(ptr noundef %31) #12
  %33 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 30
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, -1
  %36 = icmp ult i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  call void @adv7533_dsi_power_on(ptr noundef %0) #12
  br label %38

38:                                               ; preds = %37, %29
  store i8 1, ptr %26, align 4
  %39 = icmp eq ptr %1, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %38
  %41 = call fastcc ptr @adv7511_get_edid(ptr noundef %0, ptr noundef nonnull %1) #12
  %42 = call i32 @drm_connector_update_edid_property(ptr noundef nonnull %1, ptr noundef %41) #12
  %43 = call i32 @drm_add_edid_modes(ptr noundef nonnull %1, ptr noundef %41) #12
  call void @kfree(ptr noundef %41) #12
  br label %44

44:                                               ; preds = %40, %38
  %45 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 6
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 1
  %48 = select i1 %47, i32 2, i32 1
  br label %52

49:                                               ; preds = %25, %22, %21
  %50 = load ptr, ptr %5, align 8
  %51 = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 214, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i32 [ %13, %49 ], [ %48, %44 ]
  %54 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 6
  store i32 %53, ptr %54, align 8
  br label %55

55:                                               ; preds = %52, %2
  %56 = phi i32 [ %53, %52 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @adv7511_get_edid(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.adv7511_video_config, align 4
  %4 = alloca [17 x i8], align 1
  %5 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 7
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = shl nuw nsw i32 %13, 1
  tail call fastcc void @__adv7511_power_on(ptr noundef %0)
  %15 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 67, i32 noundef %14) #12
  br label %18

18:                                               ; preds = %8, %2
  %19 = tail call ptr @drm_do_get_edid(ptr noundef %1, ptr noundef nonnull @adv7511_get_edid_block, ptr noundef %0) #12
  %20 = load i8, ptr %5, align 4, !range !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 4
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 65, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %26 = load ptr, ptr %23, align 8
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 149, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %28 = load ptr, ptr %23, align 8
  tail call void @regcache_mark_dirty(ptr noundef %28) #12
  br label %29

29:                                               ; preds = %22, %18
  %30 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 22
  %31 = load i8, ptr %30, align 4, !range !9
  %32 = icmp eq i8 %31, 0
  %33 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %19) #12
  %34 = zext i1 %33 to i8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %3, i8 0, i32 84, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %4, i8 0, i32 17, i1 false) #12, !annotation !8
  %35 = getelementptr inbounds %struct.adv7511_video_config, ptr %3, i32 0, i32 3
  store i8 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.adv7511_video_config, ptr %3, i32 0, i32 4
  call void @hdmi_avi_infoframe_init(ptr noundef %36) #12
  %37 = getelementptr inbounds %struct.adv7511_video_config, ptr %3, i32 0, i32 4, i32 4
  store i32 2, ptr %37, align 4
  br i1 %32, label %41, label %38

38:                                               ; preds = %29
  store i8 0, ptr %3, align 4
  %39 = getelementptr inbounds %struct.adv7511_video_config, ptr %3, i32 0, i32 4, i32 3
  store i32 0, ptr %39, align 4
  %40 = load i8, ptr %35, align 4, !range !9
  br label %53

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.adv7511_video_config, ptr %3, i32 0, i32 1
  store i32 2, ptr %42, align 4
  %43 = getelementptr inbounds %struct.adv7511_video_config, ptr %3, i32 0, i32 2
  store ptr @adv7511_csc_ycbcr_to_rgb, ptr %43, align 4
  %44 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  %48 = load i8, ptr %35, align 4
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  store i8 1, ptr %3, align 4
  %52 = getelementptr inbounds %struct.adv7511_video_config, ptr %3, i32 0, i32 4, i32 3
  store i32 0, ptr %52, align 4
  br label %53

53:                                               ; preds = %51, %38
  %54 = phi i8 [ %48, %51 ], [ %40, %38 ]
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %55, i32 0, i32 2
  br label %59

57:                                               ; preds = %41
  store i8 0, ptr %3, align 4
  %58 = getelementptr inbounds %struct.adv7511_video_config, ptr %3, i32 0, i32 4, i32 3
  store i32 1, ptr %58, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i32 [ 128, %57 ], [ 0, %53 ]
  %61 = phi i32 [ 1, %57 ], [ 0, %53 ]
  %62 = phi i32 [ 2, %57 ], [ %56, %53 ]
  %63 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 4
  %64 = load ptr, ptr %63, align 8
  %65 = call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 68, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %66 = load i8, ptr %3, align 4, !range !9
  %67 = icmp eq i8 %66, 0
  %68 = getelementptr inbounds %struct.adv7511_video_config, ptr %3, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.adv7511_video_config, ptr %3, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = load ptr, ptr %63, align 8
  %73 = call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 26, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br i1 %67, label %97, label %74

74:                                               ; preds = %74, %59
  %75 = phi i32 [ %90, %74 ], [ 0, %59 ]
  %76 = load ptr, ptr %63, align 8
  %77 = shl nuw nsw i32 %75, 1
  %78 = add nuw nsw i32 %77, 24
  %79 = getelementptr i16, ptr %69, i32 %75
  %80 = load i16, ptr %79, align 2
  %81 = lshr i16 %80, 8
  %82 = zext i16 %81 to i32
  %83 = call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef %78, i32 noundef 31, i32 noundef %82, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %84 = load ptr, ptr %63, align 8
  %85 = add nuw nsw i32 %77, 25
  %86 = load i16, ptr %79, align 2
  %87 = and i16 %86, 255
  %88 = zext i16 %87 to i32
  %89 = call i32 @regmap_write(ptr noundef %84, i32 noundef %85, i32 noundef %88) #12
  %90 = add nuw nsw i32 %75, 1
  %91 = icmp eq i32 %90, 12
  br i1 %91, label %92, label %74

92:                                               ; preds = %74
  %93 = load ptr, ptr %63, align 8
  %94 = shl i32 %71, 5
  %95 = or i32 %94, 128
  %96 = call i32 @regmap_update_bits_base(ptr noundef %93, i32 noundef 24, i32 noundef 224, i32 noundef %95, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %100

97:                                               ; preds = %59
  %98 = load ptr, ptr %63, align 8
  %99 = call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 24, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %100

100:                                              ; preds = %97, %92
  %101 = load ptr, ptr %63, align 8
  %102 = call i32 @regmap_update_bits_base(ptr noundef %101, i32 noundef 26, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %103 = load ptr, ptr %63, align 8
  %104 = or i32 %61, %60
  %105 = call i32 @regmap_update_bits_base(ptr noundef %103, i32 noundef 22, i32 noundef 129, i32 noundef %104, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %106 = load ptr, ptr %63, align 8
  %107 = call i32 @regmap_update_bits_base(ptr noundef %106, i32 noundef 175, i32 noundef 2, i32 noundef %62, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %108 = call i32 @hdmi_avi_infoframe_pack(ptr noundef %36, ptr noundef nonnull %4, i32 noundef 17) #12
  %109 = load ptr, ptr %63, align 8
  %110 = getelementptr inbounds i8, ptr %4, i32 1
  %111 = call i32 @regmap_bulk_write(ptr noundef %109, i32 noundef 82, ptr noundef %110, i32 noundef 16) #12
  %112 = load ptr, ptr %63, align 8
  %113 = call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef 68, i32 noundef 16, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %3) #12
  %114 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 32
  %115 = load ptr, ptr %114, align 8
  call void @cec_s_phys_addr_from_edid(ptr noundef %115, ptr noundef %19) #12
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_do_get_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7511_get_edid_block(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  %9 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  %10 = icmp ugt i32 %3, 128
  br i1 %10, label %175, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %2, 1
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %168, label %16

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !8
  %17 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @regmap_read(ptr noundef %18, i32 noundef 200, ptr noundef nonnull %8) #12
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %166, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %8, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %109, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 14
  store i8 0, ptr %25, align 8
  %26 = load ptr, ptr %17, align 8
  %27 = call i32 @regmap_write(ptr noundef %26, i32 noundef 196, i32 noundef %2) #12
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = call fastcc i32 @adv7511_irq_process(ptr noundef %0, i1 noundef zeroext false) #12
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %106, label %60

35:                                               ; preds = %24
  %36 = load i8, ptr %25, align 8, !range !9
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %109

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #12, !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #12
  %39 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 15
  %40 = call i32 @prepare_to_wait_event(ptr noundef %39, ptr noundef nonnull %5, i32 noundef 1) #12
  %41 = load i8, ptr %25, align 8, !range !9
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %47, %38
  %44 = phi i32 [ %55, %47 ], [ 20, %38 ]
  %45 = phi i32 [ %49, %47 ], [ %40, %38 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = call i32 @schedule_timeout(i32 noundef %44) #12
  %49 = call i32 @prepare_to_wait_event(ptr noundef %39, ptr noundef nonnull %5, i32 noundef 1) #12
  %50 = load i8, ptr %25, align 8, !range !9
  %51 = icmp ne i8 %50, 0
  %52 = xor i1 %51, true
  %53 = icmp ne i32 %48, 0
  %54 = select i1 %52, i1 true, i1 %53
  %55 = select i1 %54, i32 %48, i32 1
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %51, i1 true, i1 %56
  br i1 %57, label %58, label %43

58:                                               ; preds = %47, %38
  call void @finish_wait(ptr noundef %39, ptr noundef nonnull %5) #12
  br label %59

59:                                               ; preds = %58, %43
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #12
  br label %106

60:                                               ; preds = %32
  %61 = load i8, ptr %25, align 8, !range !9
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %109

63:                                               ; preds = %60
  call void @msleep(i32 noundef 25) #12
  %64 = call fastcc i32 @adv7511_irq_process(ptr noundef %0, i1 noundef zeroext false) #12
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %106, label %66

66:                                               ; preds = %63
  %67 = load i8, ptr %25, align 8, !range !9
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %109

69:                                               ; preds = %66
  call void @msleep(i32 noundef 25) #12
  %70 = call fastcc i32 @adv7511_irq_process(ptr noundef %0, i1 noundef zeroext false) #12
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %106, label %72

72:                                               ; preds = %69
  %73 = load i8, ptr %25, align 8, !range !9
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %109

75:                                               ; preds = %72
  call void @msleep(i32 noundef 25) #12
  %76 = call fastcc i32 @adv7511_irq_process(ptr noundef %0, i1 noundef zeroext false) #12
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %106, label %78

78:                                               ; preds = %75
  %79 = load i8, ptr %25, align 8, !range !9
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %78
  call void @msleep(i32 noundef 25) #12
  %82 = call fastcc i32 @adv7511_irq_process(ptr noundef %0, i1 noundef zeroext false) #12
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %106, label %84

84:                                               ; preds = %81
  %85 = load i8, ptr %25, align 8, !range !9
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  call void @msleep(i32 noundef 25) #12
  %88 = call fastcc i32 @adv7511_irq_process(ptr noundef %0, i1 noundef zeroext false) #12
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %106, label %90

90:                                               ; preds = %87
  %91 = load i8, ptr %25, align 8, !range !9
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  call void @msleep(i32 noundef 25) #12
  %94 = call fastcc i32 @adv7511_irq_process(ptr noundef %0, i1 noundef zeroext false) #12
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %93
  %97 = load i8, ptr %25, align 8, !range !9
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  call void @msleep(i32 noundef 25) #12
  %100 = call fastcc i32 @adv7511_irq_process(ptr noundef %0, i1 noundef zeroext false) #12
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = load i8, ptr %25, align 8, !range !9
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  call void @msleep(i32 noundef 25) #12
  br label %106

106:                                              ; preds = %105, %99, %93, %87, %81, %75, %69, %63, %59, %32
  %107 = load i8, ptr %25, align 8
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %166, label %109

109:                                              ; preds = %106, %102, %96, %90, %84, %78, %72, %66, %60, %35, %21
  %110 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.i2c_client, ptr %111, i32 0, i32 1
  %113 = load i16, ptr %112, align 2
  store i16 %113, ptr %6, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %114, align 2
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 1, ptr %115, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %116, align 4
  %117 = load i16, ptr %112, align 2
  %118 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %6, i32 0, i32 1
  store i16 %117, ptr %118, align 4
  %119 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %6, i32 0, i32 1, i32 1
  store i16 1, ptr %119, align 2
  %120 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %6, i32 0, i32 1, i32 2
  store i16 64, ptr %120, align 4
  %121 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 13
  %122 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %6, i32 0, i32 1, i32 3
  store ptr %121, ptr %122, align 4
  store i8 0, ptr %7, align 1
  %123 = getelementptr inbounds %struct.i2c_client, ptr %111, i32 0, i32 3
  %124 = load ptr, ptr %123, align 8
  %125 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %6, i32 noundef 2) #12
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %166, label %127

127:                                              ; preds = %109
  %128 = icmp eq i32 %125, 2
  br i1 %128, label %129, label %166

129:                                              ; preds = %127
  %130 = load ptr, ptr %122, align 4
  %131 = getelementptr i8, ptr %130, i32 64
  store ptr %131, ptr %122, align 4
  %132 = load i8, ptr %7, align 1
  %133 = add i8 %132, 64
  store i8 %133, ptr %7, align 1
  %134 = load ptr, ptr %110, align 4
  %135 = getelementptr inbounds %struct.i2c_client, ptr %134, i32 0, i32 3
  %136 = load ptr, ptr %135, align 8
  %137 = call i32 @i2c_transfer(ptr noundef %136, ptr noundef nonnull %6, i32 noundef 2) #12
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %166, label %139

139:                                              ; preds = %129
  %140 = icmp eq i32 %137, 2
  br i1 %140, label %141, label %166

141:                                              ; preds = %139
  %142 = load ptr, ptr %122, align 4
  %143 = getelementptr i8, ptr %142, i32 64
  store ptr %143, ptr %122, align 4
  %144 = load i8, ptr %7, align 1
  %145 = add i8 %144, 64
  store i8 %145, ptr %7, align 1
  %146 = load ptr, ptr %110, align 4
  %147 = getelementptr inbounds %struct.i2c_client, ptr %146, i32 0, i32 3
  %148 = load ptr, ptr %147, align 8
  %149 = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %6, i32 noundef 2) #12
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %166, label %151

151:                                              ; preds = %141
  %152 = icmp eq i32 %149, 2
  br i1 %152, label %153, label %166

153:                                              ; preds = %151
  %154 = load ptr, ptr %122, align 4
  %155 = getelementptr i8, ptr %154, i32 64
  store ptr %155, ptr %122, align 4
  %156 = load i8, ptr %7, align 1
  %157 = add i8 %156, 64
  store i8 %157, ptr %7, align 1
  %158 = load ptr, ptr %110, align 4
  %159 = getelementptr inbounds %struct.i2c_client, ptr %158, i32 0, i32 3
  %160 = load ptr, ptr %159, align 8
  %161 = call i32 @i2c_transfer(ptr noundef %160, ptr noundef nonnull %6, i32 noundef 2) #12
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %153
  %164 = icmp eq i32 %161, 2
  br i1 %164, label %165, label %166

165:                                              ; preds = %163
  store i32 %14, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %168

166:                                              ; preds = %163, %153, %151, %141, %139, %129, %127, %109, %106, %16
  %167 = phi i32 [ -5, %106 ], [ %19, %16 ], [ -5, %127 ], [ %125, %109 ], [ %137, %129 ], [ -5, %139 ], [ %149, %141 ], [ -5, %151 ], [ %161, %153 ], [ -5, %163 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %175

168:                                              ; preds = %165, %11
  %169 = and i32 %2, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 8 %172, i32 %3, i1 false)
  br label %175

173:                                              ; preds = %168
  %174 = getelementptr %struct.adv7511, ptr %0, i32 0, i32 13, i32 128
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %174, i32 %3, i1 false)
  br label %175

175:                                              ; preds = %173, %171, %166, %4
  %176 = phi i32 [ -22, %4 ], [ 0, %173 ], [ 0, %171 ], [ %167, %166 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  ret i32 %176
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr_from_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_avi_infoframe_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv7511_connector_get_modes(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -584
  %3 = tail call fastcc ptr @adv7511_get_edid(ptr noundef %2, ptr noundef %0) #12
  %4 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef %3) #12
  %5 = tail call i32 @drm_add_edid_modes(ptr noundef %0, ptr noundef %3) #12
  tail call void @kfree(ptr noundef %3) #12
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @adv7511_connector_mode_valid(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #10 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp sgt i32 %3, 165000
  %5 = select i1 %4, i32 15, i32 0
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adv7533_mode_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
