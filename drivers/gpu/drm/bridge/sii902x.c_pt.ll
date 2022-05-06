; ModuleID = '/llk/IR/drivers/gpu/drm/bridge/sii902x.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/sii902x.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type {}
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_timings = type { i32, i32, i32, i8 }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.sii902x_sample_freq = type { i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sii902x = type { ptr, ptr, %struct.drm_bridge, %struct.drm_connector, ptr, ptr, [2 x %struct.regulator_bulk_data], %struct.mutex, %struct.sii902x_audio }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.sii902x_audio = type { ptr, ptr, [4 x i32] }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.74, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.76, ptr, i32, ptr, i8, i32 }
%struct.anon.74 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.76 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.hdmi_codec_daifmt = type { i32, i8, i32 }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.of_endpoint = type { i32, i32, ptr }

@sii902x_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sil,sii9022\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sii902x_i2c_ids = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sii9022\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author277 = internal constant [60 x i8] c"author=Boris Brezillon <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description278 = internal constant [40 x i8] c"description=SII902x RGB -> HDMI bridges\00", section ".modinfo", align 1
@__UNIQUE_ID_license279 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@sii902x_driver = internal global %struct.i2c_driver { i32 0, ptr @sii902x_probe, ptr @sii902x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sii902x_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sii902x_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"sii902x\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"I2C adapter not suitable\0A\00", align 1
@sii902x_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 222, ptr null, ptr null, ptr @sii902x_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to retrieve/request reset gpio: %ld\0A\00", align 1
@sii902x_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"&sii902x->mutex\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"iovcc\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"cvcc12\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to enable supplies\00", align 1
@sii902x_volatile_table = internal constant %struct.regmap_access_table { ptr @sii902x_volatile_ranges, i32 1, ptr null, i32 0 }, align 4
@sii902x_volatile_ranges = internal constant [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 255 }], align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"regmap_read failed %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Invalid chipid: %02x (expecting 0xb0)\0A\00", align 1
@sii902x_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr @sii902x_bridge_attach, ptr null, ptr null, ptr null, ptr @sii902x_bridge_disable, ptr null, ptr @sii902x_bridge_mode_set, ptr null, ptr @sii902x_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@default_sii902x_timings = internal constant %struct.drm_bridge_timings { i32 70, i32 0, i32 0, i8 0 }, align 4
@.str.10 = private unnamed_addr constant [46 x i8] c"Fix bridge driver to make connector optional!\00", align 1
@sii902x_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @sii902x_get_modes, ptr null, ptr @sii902x_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [78 x i8] c"sii902x driver is only compatible with DRM devices supporting atomic updates\0A\00", align 1
@sii902x_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @sii902x_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"couldn't fill AVI infoframe\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"failed to pack AVI infoframe: %d\0A\00", align 1
@sii902x_audio_codec_init.audio_fifo_id = internal unnamed_addr constant [4 x i8] c"\00\01\02\03", align 1
@sii902x_audio_codec_init.i2s_lane_id = internal unnamed_addr constant [4 x i8] c"\00\10 0", align 1
@sii902x_audio_codec_ops = internal constant %struct.hdmi_codec_ops { ptr null, ptr @sii902x_audio_hw_params, ptr null, ptr @sii902x_audio_shutdown, ptr @sii902x_audio_mute, ptr @sii902x_audio_get_eld, ptr @sii902x_audio_get_dai_id, ptr null, i8 1 }, align 4
@__const.sii902x_audio_codec_init.codec_data = private unnamed_addr constant { ptr, i8, [3 x i8], i32, ptr } { ptr @sii902x_audio_codec_ops, i8 1, [3 x i8] zeroinitializer, i32 0, ptr null }, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"#sound-dai-cells\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"sil,i2s-data-lanes\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"%s: Error gettin \22sil,i2s-data-lanes\22: %d\0A\00", align 1
@__func__.sii902x_audio_codec_init = private unnamed_addr constant [25 x i8] c"sii902x_audio_codec_init\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"%s: No clock (audio mclk) found: %ld\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"hdmi-audio-codec\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"%s: Unsupported sample width %u\0A\00", align 1
@__func__.sii902x_audio_hw_params = private unnamed_addr constant [24 x i8] c"sii902x_audio_hw_params\00", align 1
@sii902x_sample_freq = internal unnamed_addr constant [7 x %struct.sii902x_sample_freq] [%struct.sii902x_sample_freq { i32 32000, i8 8 }, %struct.sii902x_sample_freq { i32 44000, i8 16 }, %struct.sii902x_sample_freq { i32 48000, i8 24 }, %struct.sii902x_sample_freq { i32 88000, i8 32 }, %struct.sii902x_sample_freq { i32 96000, i8 40 }, %struct.sii902x_sample_freq { i32 176000, i8 48 }, %struct.sii902x_sample_freq { i32 192000, i8 56 }], align 4
@.str.21 = private unnamed_addr constant [26 x i8] c"Enabling mclk failed: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"%s: Failed to pack audio infoframe: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"%s: hdmi audio enable failed: %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.24 = private unnamed_addr constant [31 x i8] c"Failed to acquire the i2c bus\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.25 = private unnamed_addr constant [28 x i8] c"failed to read status (%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"failed to release the i2c bus\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_license279], section "llvm.metadata"
@switch.table.sii902x_audio_hw_params = private unnamed_addr constant [5 x i8] c"@\80\C0@\C0", align 1

@__mod_of__sii902x_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @sii902x_dt_ids
@__mod_i2c__sii902x_i2c_ids_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @sii902x_i2c_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @sii902x_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @sii902x_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sii902x_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca %struct.platform_device_info, align 8
  %4 = alloca %struct.hdmi_codec_pdata, align 4
  %5 = alloca [4 x i8], align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.i2c_algorithm, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %10) #9
  %16 = and i32 %15, 1572864
  %17 = icmp eq i32 %16, 1572864
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1) #10
  br label %171

19:                                               ; preds = %2
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 1192, i32 noundef 3520) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %171, label %22

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8
  %23 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @sii902x_regmap_config, ptr noundef null, ptr noundef null) #9
  %24 = getelementptr inbounds %struct.sii902x, ptr %20, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = ptrtoint ptr %23 to i32
  br label %171

28:                                               ; preds = %22
  %29 = tail call ptr @devm_gpiod_get_optional(ptr noundef %8, ptr noundef nonnull @.str.2, i32 noundef 3) #9
  %30 = getelementptr inbounds %struct.sii902x, ptr %20, i32 0, i32 4
  store ptr %29, ptr %30, align 8
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = ptrtoint ptr %29 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef %33) #10
  %34 = load ptr, ptr %30, align 8
  %35 = ptrtoint ptr %34 to i32
  br label %171

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.sii902x, ptr %20, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %37, ptr noundef nonnull @.str.4, ptr noundef nonnull @sii902x_probe.__key) #9
  %38 = getelementptr inbounds %struct.sii902x, ptr %20, i32 0, i32 6
  store ptr @.str.5, ptr %38, align 8
  %39 = getelementptr %struct.sii902x, ptr %20, i32 0, i32 6, i32 1
  store ptr @.str.6, ptr %39, align 4
  %40 = tail call i32 @devm_regulator_bulk_get(ptr noundef %8, i32 noundef 2, ptr noundef %38) #9
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %171, label %42

42:                                               ; preds = %36
  %43 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %38) #9
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %8, i32 noundef %43, ptr noundef nonnull @.str.7) #9
  br label %171

47:                                               ; preds = %42
  %48 = load ptr, ptr %20, align 8
  %49 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  %50 = load ptr, ptr %30, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  tail call void @gpiod_set_value(ptr noundef nonnull %50, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 200, i32 noundef 2) #9
  %53 = load ptr, ptr %30, align 8
  tail call void @gpiod_set_value(ptr noundef %53, i32 noundef 0) #9
  br label %54

54:                                               ; preds = %52, %47
  %55 = load ptr, ptr %24, align 4
  %56 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 199, i32 noundef 0) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %165

58:                                               ; preds = %54
  %59 = load ptr, ptr %24, align 4
  %60 = call i32 @regmap_bulk_read(ptr noundef %59, i32 noundef 27, ptr noundef nonnull %7, i32 noundef 4) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.8, i32 noundef %60) #10
  br label %165

63:                                               ; preds = %58
  %64 = load i8, ptr %7, align 4
  %65 = icmp eq i8 %64, -80
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = zext i8 %64 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.9, i32 noundef %67) #10
  br label %163

68:                                               ; preds = %63
  %69 = load ptr, ptr %24, align 4
  %70 = call i32 @regmap_read(ptr noundef %69, i32 noundef 61, ptr noundef nonnull %6) #9
  %71 = load ptr, ptr %24, align 4
  %72 = load i32, ptr %6, align 4
  %73 = call i32 @regmap_write(ptr noundef %71, i32 noundef 61, i32 noundef %72) #9
  %74 = load ptr, ptr %20, align 8
  %75 = getelementptr inbounds %struct.i2c_client, ptr %74, i32 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %68
  %79 = load ptr, ptr %24, align 4
  %80 = call i32 @regmap_write(ptr noundef %79, i32 noundef 60, i32 noundef 1) #9
  %81 = load ptr, ptr %20, align 8
  %82 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load ptr, ptr %49, align 4
  br label %89

89:                                               ; preds = %87, %78
  %90 = phi ptr [ %88, %87 ], [ %85, %78 ]
  %91 = call i32 @devm_request_threaded_irq(ptr noundef %49, i32 noundef %83, ptr noundef null, ptr noundef nonnull @sii902x_interrupt, i32 noundef 8192, ptr noundef %90, ptr noundef nonnull %20) #9
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %165

93:                                               ; preds = %89, %68
  %94 = getelementptr inbounds %struct.sii902x, ptr %20, i32 0, i32 2
  %95 = getelementptr inbounds %struct.sii902x, ptr %20, i32 0, i32 2, i32 7
  store ptr @sii902x_bridge_funcs, ptr %95, align 8
  %96 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4, i32 25
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.sii902x, ptr %20, i32 0, i32 2, i32 4
  store ptr %97, ptr %98, align 8
  %99 = getelementptr inbounds %struct.sii902x, ptr %20, i32 0, i32 2, i32 6
  store ptr @default_sii902x_timings, ptr %99, align 4
  call void @drm_bridge_add(ptr noundef %94) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) @__const.sii902x_audio_codec_init.codec_data, i32 16, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %100 = load ptr, ptr %96, align 8
  %101 = call ptr @of_find_property(ptr noundef %100, ptr noundef nonnull @.str.14, ptr noundef null) #9
  %102 = icmp eq ptr %101, null
  br i1 %102, label %150, label %103

103:                                              ; preds = %93
  %104 = load ptr, ptr %96, align 8
  %105 = call i32 @of_property_read_variable_u8_array(ptr noundef %104, ptr noundef nonnull @.str.15, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 4) #9
  %106 = icmp eq i32 %105, -22
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  store i8 0, ptr %5, align 4
  %108 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %4, i32 0, i32 2
  store i32 2, ptr %108, align 4
  br label %116

109:                                              ; preds = %103
  %110 = icmp slt i32 %105, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %109
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.sii902x_audio_codec_init, i32 noundef %105) #10
  br label %150

112:                                              ; preds = %109
  %113 = shl nuw i32 %105, 1
  %114 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %4, i32 0, i32 2
  store i32 %113, ptr %114, align 4
  %115 = icmp eq i32 %105, 0
  br i1 %115, label %135, label %116

116:                                              ; preds = %112, %107
  %117 = phi i32 [ 1, %107 ], [ %105, %112 ]
  br label %118

118:                                              ; preds = %118, %116
  %119 = phi i32 [ %133, %118 ], [ 0, %116 ]
  %120 = getelementptr [4 x i8], ptr @sii902x_audio_codec_init.audio_fifo_id, i32 0, i32 %119
  %121 = load i8, ptr %120, align 1
  %122 = getelementptr [4 x i8], ptr %5, i32 0, i32 %119
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = getelementptr [4 x i8], ptr @sii902x_audio_codec_init.i2s_lane_id, i32 0, i32 %124
  %126 = load i8, ptr %125, align 1
  %127 = or i8 %121, %126
  %128 = or i8 %127, -128
  %129 = zext i8 %128 to i32
  %130 = getelementptr %struct.sii902x, ptr %20, i32 0, i32 8, i32 2, i32 %119
  %131 = load i32, ptr %130, align 4
  %132 = or i32 %131, %129
  store i32 %132, ptr %130, align 4
  %133 = add nuw nsw i32 %119, 1
  %134 = icmp eq i32 %133, %117
  br i1 %134, label %135, label %118

135:                                              ; preds = %118, %112
  %136 = call ptr @devm_clk_get_optional(ptr noundef %49, ptr noundef nonnull @.str.17) #9
  %137 = getelementptr inbounds %struct.sii902x, ptr %20, i32 0, i32 8, i32 1
  store ptr %136, ptr %137, align 4
  %138 = icmp ugt ptr %136, inttoptr (i32 -4096 to ptr)
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = ptrtoint ptr %136 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.sii902x_audio_codec_init, i32 noundef %140) #10
  br label %150

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.sii902x, ptr %20, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #9
  %143 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %143, i8 0, i32 48, i1 false) #9, !annotation !8
  store ptr %49, ptr %3, align 8
  %144 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 1
  store ptr null, ptr %144, align 4
  %145 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 3
  store ptr @.str.19, ptr %145, align 4
  %146 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 4
  store i32 -2, ptr %146, align 8
  %147 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 7
  store ptr %4, ptr %147, align 4
  %148 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 8
  store i32 16, ptr %148, align 8
  %149 = call ptr @platform_device_register_full(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #9
  store ptr %149, ptr %142, align 4
  br label %150

150:                                              ; preds = %141, %139, %111, %93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  %151 = load ptr, ptr %20, align 8
  %152 = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 4, i32 8
  store ptr %20, ptr %152, align 8
  %153 = load ptr, ptr %20, align 8
  %154 = getelementptr inbounds %struct.i2c_client, ptr %153, i32 0, i32 3
  %155 = load ptr, ptr %154, align 8
  %156 = call ptr @i2c_mux_alloc(ptr noundef %155, ptr noundef %49, i32 noundef 1, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @sii902x_i2c_bypass_select, ptr noundef nonnull @sii902x_i2c_bypass_deselect) #9
  %157 = getelementptr inbounds %struct.sii902x, ptr %20, i32 0, i32 5
  store ptr %156, ptr %157, align 4
  %158 = icmp eq ptr %156, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %150
  %160 = getelementptr inbounds %struct.i2c_mux_core, ptr %156, i32 0, i32 3
  store ptr %20, ptr %160, align 4
  %161 = load ptr, ptr %157, align 4
  %162 = call i32 @i2c_mux_add_adapter(ptr noundef %161, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %165

163:                                              ; preds = %150, %66
  %164 = phi i32 [ -12, %150 ], [ -22, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %168

165:                                              ; preds = %159, %89, %62, %54
  %166 = phi i32 [ %60, %62 ], [ %162, %159 ], [ %56, %54 ], [ %91, %89 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165, %163
  %169 = phi i32 [ %164, %163 ], [ %166, %165 ]
  %170 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %38) #9
  br label %171

171:                                              ; preds = %168, %165, %45, %36, %32, %26, %19, %18
  %172 = phi i32 [ %27, %26 ], [ %35, %32 ], [ %43, %45 ], [ -5, %18 ], [ -12, %19 ], [ %40, %36 ], [ %169, %168 ], [ %166, %165 ]
  ret i32 %172
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sii902x_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sii902x, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.sii902x, ptr %3, i32 0, i32 2
  tail call void @drm_bridge_remove(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.sii902x, ptr %3, i32 0, i32 6
  %8 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sii902x_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.sii902x, ptr %1, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.sii902x, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 61, ptr noundef nonnull %3) #9
  %8 = load ptr, ptr %5, align 4
  %9 = load i32, ptr %3, align 4
  %10 = call i32 @regmap_write(ptr noundef %8, i32 noundef 61, i32 noundef %9) #9
  call void @mutex_unlock(ptr noundef %4) #9
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.sii902x, ptr %1, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef nonnull %16) #9
  br label %20

20:                                               ; preds = %18, %14, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sii902x_i2c_bypass_select(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca %union.i2c_smbus_data, align 2
  %4 = alloca %union.i2c_smbus_data, align 2
  %5 = alloca %union.i2c_smbus_data, align 2
  %6 = alloca %union.i2c_smbus_data, align 2
  %7 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %6, i8 0, i32 34, i1 false) #9, !annotation !8
  %11 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = load i16, ptr %9, align 8
  %16 = call i32 @__i2c_smbus_xfer(ptr noundef %12, i16 noundef zeroext %14, i16 noundef zeroext %15, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %6) #9
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %6) #9
  br label %57

19:                                               ; preds = %2
  %20 = load i8, ptr %6, align 2
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %6) #9
  %21 = or i8 %20, 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %5, i8 0, i32 34, i1 false) #9, !annotation !8
  store i8 %21, ptr %5, align 2
  %22 = load ptr, ptr %11, align 8
  %23 = load i16, ptr %13, align 2
  %24 = load i16, ptr %9, align 8
  %25 = call i32 @__i2c_smbus_xfer(ptr noundef %22, i16 noundef zeroext %23, i16 noundef zeroext %24, i8 noundef zeroext 0, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %5) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %19
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = sub i32 -50, %28
  br label %30

30:                                               ; preds = %44, %27
  %31 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %4, i8 0, i32 34, i1 false) #9, !annotation !8
  %32 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 1
  %35 = load i16, ptr %34, align 2
  %36 = load i16, ptr %31, align 8
  %37 = call i32 @__i2c_smbus_xfer(ptr noundef %33, i16 noundef zeroext %35, i16 noundef zeroext %36, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %4) #9
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #9
  br label %57

40:                                               ; preds = %30
  %41 = load i8, ptr %4, align 2
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #9
  %42 = and i8 %41, 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = add i32 %29, %45
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %30, label %48

48:                                               ; preds = %44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.24) #10
  br label %57

49:                                               ; preds = %40
  %50 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %3, i8 0, i32 34, i1 false) #9, !annotation !8
  store i8 %41, ptr %3, align 2
  %51 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 1
  %54 = load i16, ptr %53, align 2
  %55 = load i16, ptr %50, align 8
  %56 = call i32 @__i2c_smbus_xfer(ptr noundef %52, i16 noundef zeroext %54, i16 noundef zeroext %55, i8 noundef zeroext 0, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #9
  br label %57

57:                                               ; preds = %49, %48, %39, %19, %18
  %58 = phi i32 [ %56, %49 ], [ -110, %48 ], [ %25, %19 ], [ %37, %39 ], [ %16, %18 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sii902x_i2c_bypass_deselect(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca %union.i2c_smbus_data, align 2
  %4 = alloca %union.i2c_smbus_data, align 2
  %5 = alloca %union.i2c_smbus_data, align 2
  %6 = alloca %union.i2c_smbus_data, align 2
  %7 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 6442440) #9
  %12 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %6, i8 0, i32 34, i1 false) #9, !annotation !8
  %13 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = load i16, ptr %12, align 8
  %18 = call i32 @__i2c_smbus_xfer(ptr noundef %14, i16 noundef zeroext %16, i16 noundef zeroext %17, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %6) #9
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %56, %47, %38, %29, %2
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %6) #9
  %21 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %5, i8 0, i32 34, i1 false) #9, !annotation !8
  %22 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 1
  %25 = load i16, ptr %24, align 2
  %26 = load i16, ptr %21, align 8
  %27 = call i32 @__i2c_smbus_xfer(ptr noundef %23, i16 noundef zeroext %25, i16 noundef zeroext %26, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %5) #9
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %66, label %67

29:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %6) #9
  %30 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %6, i8 0, i32 34, i1 false) #9, !annotation !8
  %31 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = load i16, ptr %30, align 8
  %36 = call i32 @__i2c_smbus_xfer(ptr noundef %32, i16 noundef zeroext %34, i16 noundef zeroext %35, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %6) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %20

38:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %6) #9
  %39 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %6, i8 0, i32 34, i1 false) #9, !annotation !8
  %40 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 1
  %43 = load i16, ptr %42, align 2
  %44 = load i16, ptr %39, align 8
  %45 = call i32 @__i2c_smbus_xfer(ptr noundef %41, i16 noundef zeroext %43, i16 noundef zeroext %44, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %6) #9
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %20

47:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %6) #9
  %48 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %6, i8 0, i32 34, i1 false) #9, !annotation !8
  %49 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 1
  %52 = load i16, ptr %51, align 2
  %53 = load i16, ptr %48, align 8
  %54 = call i32 @__i2c_smbus_xfer(ptr noundef %50, i16 noundef zeroext %52, i16 noundef zeroext %53, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %6) #9
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %20

56:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %6) #9
  %57 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %6, i8 0, i32 34, i1 false) #9, !annotation !8
  %58 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 1
  %61 = load i16, ptr %60, align 2
  %62 = load i16, ptr %57, align 8
  %63 = call i32 @__i2c_smbus_xfer(ptr noundef %59, i16 noundef zeroext %61, i16 noundef zeroext %62, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %6) #9
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %20

65:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %6) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.25, i32 noundef %63) #10
  br label %97

66:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %5) #9
  br label %97

67:                                               ; preds = %20
  %68 = load i8, ptr %5, align 2
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %5) #9
  %69 = and i8 %68, -7
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %4, i8 0, i32 34, i1 false) #9, !annotation !8
  store i8 %69, ptr %4, align 2
  %70 = load ptr, ptr %22, align 8
  %71 = load i16, ptr %24, align 2
  %72 = load i16, ptr %21, align 8
  %73 = call i32 @__i2c_smbus_xfer(ptr noundef %70, i16 noundef zeroext %71, i16 noundef zeroext %72, i8 noundef zeroext 0, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #9
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %67
  %76 = load volatile i32, ptr @jiffies, align 64
  %77 = sub i32 -50, %76
  br label %78

78:                                               ; preds = %92, %75
  %79 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %3, i8 0, i32 34, i1 false) #9, !annotation !8
  %80 = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 1
  %83 = load i16, ptr %82, align 2
  %84 = load i16, ptr %79, align 8
  %85 = call i32 @__i2c_smbus_xfer(ptr noundef %81, i16 noundef zeroext %83, i16 noundef zeroext %84, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %3) #9
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #9
  br label %97

88:                                               ; preds = %78
  %89 = load i8, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #9
  %90 = and i8 %89, 6
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = load volatile i32, ptr @jiffies, align 64
  %94 = add i32 %77, %93
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %78, label %96

96:                                               ; preds = %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.26) #10
  br label %97

97:                                               ; preds = %96, %88, %87, %67, %66, %65
  %98 = phi i32 [ %63, %65 ], [ -110, %96 ], [ %73, %67 ], [ %85, %87 ], [ %27, %66 ], [ 0, %88 ]
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sii902x_bridge_attach(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %37

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 136
  %11 = getelementptr i8, ptr %0, i32 772
  store ptr @sii902x_connector_helper_funcs, ptr %11, align 4
  %12 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_driver, ptr %13, i32 0, i32 24
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %15, 16
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %9
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.11) #10
  br label %37

24:                                               ; preds = %9
  %25 = tail call i32 @drm_connector_init(ptr noundef %5, ptr noundef %10, ptr noundef nonnull @sii902x_connector_funcs, i32 noundef 11) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = icmp sgt i32 %30, 0
  %32 = select i1 %31, i8 1, i8 2
  %33 = getelementptr i8, ptr %0, i32 764
  store i8 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @drm_connector_attach_encoder(ptr noundef %10, ptr noundef %35) #9
  br label %37

37:                                               ; preds = %27, %24, %21, %8
  %38 = phi i32 [ -22, %8 ], [ 0, %27 ], [ -524, %21 ], [ %25, %24 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sii902x_bridge_disable(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1136
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 26, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @mutex_unlock(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sii902x_bridge_mode_set(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = alloca [17 x i8], align 1
  %5 = alloca %struct.hdmi_avi_infoframe, align 4
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %4) #9
  %8 = getelementptr inbounds i8, ptr %4, i32 10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %8, i8 0, i32 7, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false), !annotation !8
  %9 = load i32, ptr %2, align 4
  %10 = sdiv i32 %9, 10
  %11 = trunc i32 %10 to i8
  store i8 %11, ptr %4, align 1
  %12 = lshr i32 %10, 8
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 1
  store i8 %13, ptr %14, align 1
  %15 = tail call i32 @drm_mode_vrefresh(ptr noundef %2) #9
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 2
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 3
  store i8 0, ptr %18, align 1
  %19 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 1
  %20 = load i16, ptr %19, align 4
  %21 = trunc i16 %20 to i8
  %22 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 4
  store i8 %21, ptr %22, align 1
  %23 = lshr i16 %20, 8
  %24 = trunc i16 %23 to i8
  %25 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 5
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 6
  %27 = load i16, ptr %26, align 2
  %28 = trunc i16 %27 to i8
  %29 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 6
  store i8 %28, ptr %29, align 1
  %30 = lshr i16 %27, 8
  %31 = trunc i16 %30 to i8
  %32 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 7
  store i8 %31, ptr %32, align 1
  %33 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 8
  store i8 96, ptr %33, align 1
  %34 = getelementptr inbounds [17 x i8], ptr %4, i32 0, i32 9
  store i8 0, ptr %34, align 1
  %35 = getelementptr i8, ptr %0, i32 1136
  tail call void @mutex_lock(ptr noundef %35) #9
  %36 = call i32 @regmap_bulk_write(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 10) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %3
  %39 = getelementptr i8, ptr %0, i32 136
  %40 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %5, ptr noundef %39, ptr noundef %2) #9
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #9
  br label %49

43:                                               ; preds = %38
  %44 = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 17) #9
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %44) #9
  br label %49

47:                                               ; preds = %43
  %48 = call i32 @regmap_bulk_write(ptr noundef %7, i32 noundef 12, ptr noundef %18, i32 noundef 14) #9
  br label %49

49:                                               ; preds = %47, %46, %42, %3
  call void @mutex_unlock(ptr noundef %35) #9
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sii902x_bridge_enable(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1136
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 30, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 26, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @mutex_unlock(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sii902x_get_modes(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 4106, ptr %2, align 4
  %3 = getelementptr i8, ptr %0, i32 1000
  tail call void @mutex_lock(ptr noundef %3) #9
  %4 = getelementptr i8, ptr %0, i32 972
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_mux_core, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @drm_get_edid(ptr noundef %0, ptr noundef %7) #9
  %9 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef %8) #9
  %10 = icmp eq ptr %8, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef nonnull %8) #9
  %13 = zext i1 %12 to i32
  %14 = tail call i32 @drm_add_edid_modes(ptr noundef %0, ptr noundef nonnull %8) #9
  tail call void @kfree(ptr noundef nonnull %8) #9
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi i32 [ %13, %11 ], [ 0, %1 ]
  %17 = phi i32 [ %14, %11 ], [ 0, %1 ]
  %18 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 20
  %19 = call i32 @drm_display_info_set_bus_formats(ptr noundef %18, ptr noundef nonnull %2, i32 noundef 1) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %0, i32 -140
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 26, i32 noundef 1, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 %17, i32 %24
  br label %27

27:                                               ; preds = %21, %15
  %28 = phi i32 [ %19, %15 ], [ %26, %21 ]
  call void @mutex_unlock(ptr noundef %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sii902x_mode_valid(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #6 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sii902x_connector_detect(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr i8, ptr %0, i32 1000
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = getelementptr i8, ptr %0, i32 -140
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 61, ptr noundef nonnull %3) #9
  call void @mutex_unlock(ptr noundef %4) #9
  %8 = load i32, ptr %3, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sii902x_audio_hw_params(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #2 {
  %5 = alloca [14 x i8], align 1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %5, i8 0, i32 14, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %2, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %220

12:                                               ; preds = %4
  %13 = load i32, ptr %2, align 4
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %220

15:                                               ; preds = %12
  %16 = trunc i32 %13 to i24
  %17 = shl i24 %16, 3
  %18 = lshr i24 1024, %17
  %19 = trunc i24 %18 to i8
  %20 = xor i8 %9, -1
  %21 = shl i8 %20, 7
  %22 = or i8 %21, %19
  %23 = shl i8 %9, 2
  %24 = and i8 %23, 8
  %25 = or i8 %22, %24
  %26 = xor i8 %25, 8
  %27 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 2
  %30 = select i1 %29, i32 177, i32 145
  %31 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -16
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 30)
  %35 = icmp ult i32 %34, 5
  br i1 %35, label %37, label %36

36:                                               ; preds = %37, %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.sii902x_audio_hw_params, i32 noundef %32) #10
  br label %220

37:                                               ; preds = %15
  %38 = trunc i32 %34 to i8
  %39 = lshr i8 23, %38
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %36, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds [5 x i8], ptr @switch.table.sii902x_audio_hw_params, i32 0, i32 %34
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %58 [
    i32 32000, label %53
    i32 44000, label %47
    i32 48000, label %48
    i32 88000, label %49
    i32 96000, label %50
    i32 176000, label %51
    i32 192000, label %52
  ]

47:                                               ; preds = %42
  br label %53

48:                                               ; preds = %42
  br label %53

49:                                               ; preds = %42
  br label %53

50:                                               ; preds = %42
  br label %53

51:                                               ; preds = %42
  br label %53

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %51, %50, %49, %48, %47, %42
  %54 = phi i32 [ 0, %42 ], [ 1, %47 ], [ 2, %48 ], [ 3, %49 ], [ 4, %50 ], [ 5, %51 ], [ 6, %52 ]
  %55 = getelementptr [7 x %struct.sii902x_sample_freq], ptr @sii902x_sample_freq, i32 0, i32 %54, i32 1
  %56 = load i8, ptr %55, align 4
  %57 = or i8 %56, %44
  br label %58

58:                                               ; preds = %53, %42
  %59 = phi i8 [ %57, %53 ], [ %44, %42 ]
  %60 = getelementptr inbounds %struct.sii902x, ptr %7, i32 0, i32 8, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 @clk_prepare(ptr noundef %61) #9
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = tail call i32 @clk_enable(ptr noundef %61) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  tail call void @clk_unprepare(ptr noundef %61) #9
  br label %68

68:                                               ; preds = %67, %58
  %69 = phi i32 [ %65, %67 ], [ %62, %58 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %69) #10
  br label %220

70:                                               ; preds = %64
  %71 = load ptr, ptr %60, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %147, label %73

73:                                               ; preds = %70
  %74 = tail call i32 @clk_get_rate(ptr noundef nonnull %71) #9
  %75 = load i32, ptr %45, align 4
  %76 = udiv i32 %74, %75
  %77 = add i32 %76, -128
  %78 = tail call i32 @llvm.abs.i32(i32 %77, i1 false) #9
  %79 = icmp ult i32 %78, 100000
  %80 = icmp eq i32 %76, 128
  %81 = and i1 %80, %79
  br i1 %81, label %143, label %82

82:                                               ; preds = %73
  %83 = select i1 %80, i32 0, i32 %78
  %84 = select i1 %79, i32 %83, i32 100000
  %85 = add i32 %76, -256
  %86 = tail call i32 @llvm.abs.i32(i32 %85, i1 false) #9
  %87 = icmp ult i32 %86, %84
  %88 = icmp eq i32 %76, 256
  %89 = zext i1 %87 to i8
  %90 = and i1 %88, %87
  br i1 %90, label %143, label %91

91:                                               ; preds = %82
  %92 = select i1 %88, i32 0, i32 %86
  %93 = select i1 %87, i32 %92, i32 %84
  %94 = add i32 %76, -384
  %95 = tail call i32 @llvm.abs.i32(i32 %94, i1 false) #9
  %96 = icmp ult i32 %95, %93
  %97 = icmp eq i32 %76, 384
  %98 = select i1 %96, i8 2, i8 %89
  %99 = and i1 %97, %96
  br i1 %99, label %143, label %100

100:                                              ; preds = %91
  %101 = select i1 %97, i32 0, i32 %95
  %102 = select i1 %96, i32 %101, i32 %93
  %103 = add i32 %76, -512
  %104 = tail call i32 @llvm.abs.i32(i32 %103, i1 false) #9
  %105 = icmp ult i32 %104, %102
  %106 = icmp eq i32 %76, 512
  %107 = select i1 %105, i8 3, i8 %98
  %108 = and i1 %106, %105
  br i1 %108, label %143, label %109

109:                                              ; preds = %100
  %110 = select i1 %106, i32 0, i32 %104
  %111 = select i1 %105, i32 %110, i32 %102
  %112 = add i32 %76, -768
  %113 = tail call i32 @llvm.abs.i32(i32 %112, i1 false) #9
  %114 = icmp ult i32 %113, %111
  %115 = icmp eq i32 %76, 768
  %116 = select i1 %114, i8 4, i8 %107
  %117 = and i1 %115, %114
  br i1 %117, label %143, label %118

118:                                              ; preds = %109
  %119 = select i1 %115, i32 0, i32 %113
  %120 = select i1 %114, i32 %119, i32 %111
  %121 = add i32 %76, -1024
  %122 = tail call i32 @llvm.abs.i32(i32 %121, i1 false) #9
  %123 = icmp ult i32 %122, %120
  %124 = icmp eq i32 %76, 1024
  %125 = select i1 %123, i8 5, i8 %116
  %126 = and i1 %124, %123
  br i1 %126, label %143, label %127

127:                                              ; preds = %118
  %128 = select i1 %124, i32 0, i32 %122
  %129 = select i1 %123, i32 %128, i32 %120
  %130 = add i32 %76, -1152
  %131 = tail call i32 @llvm.abs.i32(i32 %130, i1 false) #9
  %132 = icmp ult i32 %131, %129
  %133 = icmp eq i32 %76, 1152
  %134 = select i1 %132, i8 6, i8 %125
  %135 = and i1 %133, %132
  br i1 %135, label %143, label %136

136:                                              ; preds = %127
  %137 = select i1 %133, i32 0, i32 %131
  %138 = select i1 %132, i32 %137, i32 %129
  %139 = add i32 %76, -192
  %140 = tail call i32 @llvm.abs.i32(i32 %139, i1 false) #9
  %141 = icmp ult i32 %140, %138
  %142 = select i1 %141, i8 7, i8 %134
  br label %143

143:                                              ; preds = %136, %127, %118, %109, %100, %91, %82, %73
  %144 = phi i8 [ 0, %73 ], [ %89, %82 ], [ %98, %91 ], [ %107, %100 ], [ %116, %109 ], [ %125, %118 ], [ %134, %127 ], [ %142, %136 ]
  %145 = shl nuw nsw i8 %144, 4
  %146 = or i8 %145, %26
  br label %147

147:                                              ; preds = %143, %70
  %148 = phi i8 [ %26, %70 ], [ %146, %143 ]
  %149 = getelementptr inbounds %struct.sii902x, ptr %7, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %149) #9
  %150 = getelementptr inbounds %struct.sii902x, ptr %7, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = tail call i32 @regmap_write(ptr noundef %151, i32 noundef 38, i32 noundef %30) #9
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %211, label %154

154:                                              ; preds = %147
  %155 = load ptr, ptr %150, align 4
  %156 = zext i8 %148 to i32
  %157 = tail call i32 @regmap_write(ptr noundef %155, i32 noundef 32, i32 noundef %156) #9
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %211

159:                                              ; preds = %154
  %160 = getelementptr %struct.sii902x, ptr %7, i32 0, i32 8, i32 2, i32 0
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %184, label %163

163:                                              ; preds = %159
  %164 = load ptr, ptr %150, align 4
  %165 = tail call i32 @regmap_write(ptr noundef %164, i32 noundef 31, i32 noundef %161) #9
  %166 = getelementptr %struct.sii902x, ptr %7, i32 0, i32 8, i32 2, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %184, label %169

169:                                              ; preds = %163
  %170 = load ptr, ptr %150, align 4
  %171 = tail call i32 @regmap_write(ptr noundef %170, i32 noundef 31, i32 noundef %167) #9
  %172 = getelementptr %struct.sii902x, ptr %7, i32 0, i32 8, i32 2, i32 2
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %184, label %175

175:                                              ; preds = %169
  %176 = load ptr, ptr %150, align 4
  %177 = tail call i32 @regmap_write(ptr noundef %176, i32 noundef 31, i32 noundef %173) #9
  %178 = getelementptr %struct.sii902x, ptr %7, i32 0, i32 8, i32 2, i32 3
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %175
  %182 = load ptr, ptr %150, align 4
  %183 = tail call i32 @regmap_write(ptr noundef %182, i32 noundef 31, i32 noundef %179) #9
  br label %184

184:                                              ; preds = %181, %175, %169, %163, %159
  %185 = load ptr, ptr %150, align 4
  %186 = zext i8 %59 to i32
  %187 = tail call i32 @regmap_write(ptr noundef %185, i32 noundef 39, i32 noundef %186) #9
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %211

189:                                              ; preds = %184
  %190 = load ptr, ptr %150, align 4
  %191 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 1
  %192 = tail call i32 @regmap_bulk_write(ptr noundef %190, i32 noundef 33, ptr noundef %191, i32 noundef 5) #9
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %211

194:                                              ; preds = %189
  %195 = call i32 @hdmi_audio_infoframe_pack(ptr noundef %3, ptr noundef nonnull %5, i32 noundef 14) #9
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.sii902x_audio_hw_params, i32 noundef %195) #10
  br label %211

198:                                              ; preds = %194
  %199 = load ptr, ptr %150, align 4
  %200 = call i32 @llvm.smin.i32(i32 %195, i32 31)
  %201 = call i32 @regmap_bulk_write(ptr noundef %199, i32 noundef 191, ptr noundef nonnull %5, i32 noundef %200) #9
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %198
  %204 = load ptr, ptr %150, align 4
  %205 = call i32 @regmap_write(ptr noundef %204, i32 noundef 188, i32 noundef 2) #9
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = load ptr, ptr %150, align 4
  %209 = call i32 @regmap_write(ptr noundef %208, i32 noundef 189, i32 noundef 36) #9
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %207, %203, %198, %197, %189, %184, %154, %147
  %212 = phi i32 [ %209, %207 ], [ %205, %203 ], [ %201, %198 ], [ %195, %197 ], [ %192, %189 ], [ %187, %184 ], [ %157, %154 ], [ %152, %147 ]
  call void @mutex_unlock(ptr noundef %149) #9
  br label %217

213:                                              ; preds = %207
  %214 = load ptr, ptr %150, align 4
  %215 = call i32 @regmap_write(ptr noundef %214, i32 noundef 190, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef %149) #9
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %213, %211
  %218 = phi i32 [ %212, %211 ], [ %215, %213 ]
  %219 = load ptr, ptr %60, align 4
  call void @clk_disable(ptr noundef %219) #9
  call void @clk_unprepare(ptr noundef %219) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.sii902x_audio_hw_params, i32 noundef %218) #10
  br label %220

220:                                              ; preds = %217, %213, %68, %36, %12, %4
  %221 = phi i32 [ -22, %36 ], [ %69, %68 ], [ -22, %4 ], [ -22, %12 ], [ %218, %217 ], [ 0, %213 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %5) #9
  ret i32 %221
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sii902x_audio_shutdown(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sii902x, ptr %4, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.sii902x, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 38, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %5) #9
  %9 = getelementptr inbounds %struct.sii902x, ptr %4, i32 0, i32 8, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #9
  tail call void @clk_unprepare(ptr noundef %10) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sii902x_audio_mute(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i1 noundef zeroext %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sii902x, ptr %6, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %7) #9
  %8 = select i1 %2, i32 16, i32 0
  %9 = getelementptr inbounds %struct.sii902x, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 38, i32 noundef 16, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @mutex_unlock(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sii902x_audio_get_eld(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sii902x, ptr %6, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.sii902x, ptr %6, i32 0, i32 3, i32 42
  %9 = tail call i32 @llvm.umin.i32(i32 %3, i32 128)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 8 %8, i32 %9, i1 false)
  tail call void @mutex_unlock(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sii902x_audio_get_dai_id(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = alloca %struct.of_endpoint, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  %4 = call i32 @of_graph_parse_endpoint(ptr noundef %1, ptr noundef nonnull %3) #9
  %5 = icmp slt i32 %4, 0
  %6 = load i32, ptr %3, align 4
  %7 = icmp eq i32 %6, 3
  %8 = select i1 %7, i32 0, i32 -22
  %9 = select i1 %5, i32 %4, i32 %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
