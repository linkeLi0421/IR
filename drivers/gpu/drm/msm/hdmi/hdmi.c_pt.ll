; ModuleID = '/llk/IR/drivers/gpu/drm/msm/hdmi/hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.component_ops = type { ptr, ptr }
%struct.anon.88 = type { ptr, i8, i32, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.hdmi_platform_config = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, [6 x %struct.hdmi_gpio_data] }
%struct.hdmi_gpio_data = type { ptr, i8, i32 }
%struct.hdmi = type { ptr, ptr, ptr, ptr, %struct.hdmi_audio, i8, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.spinlock }
%struct.hdmi_audio = type { i8, %struct.hdmi_audio_infoframe, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.79 = type { i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.87, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.87 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }

@.str = private unnamed_addr constant [33 x i8] c"HDMI Core: %s, HDMI_CTRL=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"*ERROR* failed to create HDMI bridge: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"*ERROR* failed to create HDMI connector: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"*ERROR* failed to get irq: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"hdmi_isr\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"*ERROR* failed to request IRQ%u: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"*ERROR* failed to enable HPD: %d\0A\00", align 1
@msm_hdmi_driver = internal global %struct.platform_driver { ptr @msm_hdmi_dev_probe, ptr @msm_hdmi_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @msm_hdmi_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.10 = private unnamed_addr constant [9 x i8] c"hdmi_msm\00", align 1
@msm_hdmi_dt_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-tx-8996\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hdmi_tx_8996_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-tx-8994\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hdmi_tx_8994_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-tx-8084\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hdmi_tx_8084_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-tx-8974\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hdmi_tx_8974_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-tx-8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hdmi_tx_8960_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-tx-8660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hdmi_tx_8660_config }, %struct.of_device_id zeroinitializer], align 4
@msm_hdmi_ops = internal constant %struct.component_ops { ptr @msm_hdmi_bind, ptr @msm_hdmi_unbind }, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"*ERROR* unknown hdmi_cfg: %pOFn\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"core_physical\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"qfprom_physical\00", align 1
@msm_hdmi_gpio_pdata = internal unnamed_addr constant [6 x %struct.anon.88] [%struct.anon.88 { ptr @.str.17, i8 1, i32 1, ptr @.str.18 }, %struct.anon.88 { ptr @.str.19, i8 1, i32 1, ptr @.str.20 }, %struct.anon.88 { ptr @.str.21, i8 0, i32 1, ptr @.str.22 }, %struct.anon.88 { ptr @.str.23, i8 1, i32 1, ptr @.str.24 }, %struct.anon.88 { ptr @.str.25, i8 1, i32 0, ptr @.str.26 }, %struct.anon.88 { ptr @.str.27, i8 1, i32 1, ptr @.str.28 }], align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"qcom,hdmi-tx-%s\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"failed to get gpio: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"Failed to attach an audio codec %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"qcom,hdmi-tx-ddc-clk\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"HDMI_DDC_CLK\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"qcom,hdmi-tx-ddc-data\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"HDMI_DDC_DATA\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"qcom,hdmi-tx-hpd\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"HDMI_HPD\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"qcom,hdmi-tx-mux-en\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"HDMI_MUX_EN\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"qcom,hdmi-tx-mux-sel\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"HDMI_MUX_SEL\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"qcom,hdmi-tx-mux-lpm\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"HDMI_MUX_LPM\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"HDMI_QFPROM\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"can't find qfprom resource\0A\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"*ERROR* failed to get hpd regulator: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"*ERROR* failed to get pwr regulator: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"*ERROR* failed to get hpd clk: %s (%d)\0A\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"*ERROR* failed to get pwr clk: %s (%d)\0A\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"msm_hdmi\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"*ERROR* failed to get i2c: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"*ERROR* failed to get phy\0A\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"failed to init hdcp: disabled\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"*ERROR* cannot find phy device\0A\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"*ERROR* phy driver is not ready\0A\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"hdmi-audio-codec\00", align 1
@codec_data = internal global %struct.hdmi_codec_pdata { ptr @msm_hdmi_audio_codec_ops, i8 1, i32 8, ptr null }, align 4
@msm_hdmi_audio_codec_ops = internal constant %struct.hdmi_codec_ops { ptr null, ptr @msm_hdmi_audio_hw_params, ptr null, ptr @msm_hdmi_audio_shutdown, ptr null, ptr null, ptr null, ptr null, i8 0 }, align 4
@.str.45 = private unnamed_addr constant [28 x i8] c"%u Hz, %d bit, %d channels\0A\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"*ERROR* rate[%d] not supported!\0A\00", align 1
@hdmi_tx_8996_config = internal global %struct.hdmi_platform_config { ptr null, ptr null, ptr @hpd_reg_names_none, i32 0, ptr @pwr_reg_names_none, i32 0, ptr @hpd_clk_names_8x74, ptr @hpd_clk_freq_8x74, i32 3, ptr @pwr_clk_names_8x74, i32 2, [6 x %struct.hdmi_gpio_data] zeroinitializer }, align 4
@hdmi_tx_8994_config = internal global %struct.hdmi_platform_config { ptr null, ptr null, ptr @hpd_reg_names_none, i32 0, ptr @pwr_reg_names_8x74, i32 2, ptr @hpd_clk_names_8x74, ptr @hpd_clk_freq_8x74, i32 3, ptr @pwr_clk_names_8x74, i32 2, [6 x %struct.hdmi_gpio_data] zeroinitializer }, align 4
@hdmi_tx_8084_config = internal global %struct.hdmi_platform_config { ptr null, ptr null, ptr @hpd_reg_names_8084, i32 3, ptr @pwr_reg_names_8x74, i32 2, ptr @hpd_clk_names_8x74, ptr @hpd_clk_freq_8x74, i32 3, ptr @pwr_clk_names_8x74, i32 2, [6 x %struct.hdmi_gpio_data] zeroinitializer }, align 4
@hdmi_tx_8974_config = internal global %struct.hdmi_platform_config { ptr null, ptr null, ptr @hpd_reg_names_8x74, i32 2, ptr @pwr_reg_names_8x74, i32 2, ptr @hpd_clk_names_8x74, ptr @hpd_clk_freq_8x74, i32 3, ptr @pwr_clk_names_8x74, i32 2, [6 x %struct.hdmi_gpio_data] zeroinitializer }, align 4
@hdmi_tx_8960_config = internal global %struct.hdmi_platform_config { ptr null, ptr null, ptr @hpd_reg_names_8960, i32 2, ptr null, i32 0, ptr @hpd_clk_names_8960, ptr null, i32 3, ptr null, i32 0, [6 x %struct.hdmi_gpio_data] zeroinitializer }, align 4
@hdmi_tx_8660_config = internal global %struct.hdmi_platform_config zeroinitializer, align 4
@hpd_reg_names_none = internal global [0 x ptr] zeroinitializer, align 4
@pwr_reg_names_none = internal global [0 x ptr] zeroinitializer, align 4
@hpd_clk_names_8x74 = internal global [3 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49], align 4
@hpd_clk_freq_8x74 = internal global [3 x i32] [i32 0, i32 19200000, i32 0], align 4
@pwr_clk_names_8x74 = internal global [2 x ptr] [ptr @.str.50, ptr @.str.51], align 4
@.str.47 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"mdp_core\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"extp\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"alt_iface\00", align 1
@pwr_reg_names_8x74 = internal global [2 x ptr] [ptr @.str.52, ptr @.str.53], align 4
@.str.52 = private unnamed_addr constant [10 x i8] c"core-vdda\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"core-vcc\00", align 1
@hpd_reg_names_8084 = internal global [3 x ptr] [ptr @.str.54, ptr @.str.55, ptr @.str.56], align 4
@.str.54 = private unnamed_addr constant [9 x i8] c"hpd-gdsc\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"hpd-5v\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"hpd-5v-en\00", align 1
@hpd_reg_names_8x74 = internal global [2 x ptr] [ptr @.str.54, ptr @.str.55], align 4
@hpd_reg_names_8960 = internal global [2 x ptr] [ptr @.str.52, ptr @.str.57], align 4
@hpd_clk_names_8960 = internal global [3 x ptr] [ptr @.str.48, ptr @.str.58, ptr @.str.59], align 4
@.str.57 = private unnamed_addr constant [9 x i8] c"hdmi-mux\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"master_iface\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"slave_iface\00", align 1
@switch.table.msm_hdmi_audio_hw_params = private unnamed_addr constant [7 x i32] [i32 0, i32 0, i32 1, i32 0, i32 2, i32 0, i32 3], align 4
@switch.table.msm_hdmi_audio_hw_params.60 = private unnamed_addr constant [7 x i32] [i32 0, i32 0, i32 3, i32 0, i32 11, i32 0, i32 31], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_hdmi_set_mode(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 24
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  br i1 %1, label %5, label %12

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 20
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  tail call void @msm_writel(i32 noundef 3, ptr noundef %11) #8
  br label %12

12:                                               ; preds = %9, %5, %2
  %13 = phi ptr [ @.str.1, %9 ], [ @.str.1, %5 ], [ @.str.2, %2 ]
  %14 = phi i32 [ 1, %9 ], [ 3, %5 ], [ 2, %2 ]
  %15 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  tail call void @msm_writel(i32 noundef %14, ptr noundef %16) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull %13, i32 noundef %14) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_hdmi_modeset_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  store ptr %1, ptr %0, align 4
  %8 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 19
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 4, i32 1
  %10 = tail call i32 @hdmi_audio_infoframe_init(ptr noundef %9) #8
  %11 = tail call ptr @msm_hdmi_bridge_init(ptr noundef %0) #8
  %12 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 18
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = ptrtoint ptr %11 to i32
  %16 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %17, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %15) #8
  br label %71

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 4
  %20 = tail call ptr @drm_bridge_connector_init(ptr noundef %19, ptr noundef %2) #8
  %21 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 17
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = ptrtoint ptr %20 to i32
  %25 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %26, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, i32 noundef %24) #8
  store ptr null, ptr %21, align 4
  br label %66

27:                                               ; preds = %18
  %28 = load ptr, ptr %8, align 4
  %29 = tail call i32 @drm_connector_attach_encoder(ptr noundef %20, ptr noundef %28) #8
  %30 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 25
  %31 = load ptr, ptr %30, align 8
  %32 = tail call i32 @irq_of_parse_and_map(ptr noundef %31, i32 noundef 0) #8
  %33 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 21
  store i32 %32, ptr %33, align 4
  %34 = icmp slt i32 %32, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, i32 noundef %32) #8
  br label %66

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %40 = tail call i32 @devm_request_threaded_irq(ptr noundef %39, i32 noundef %32, ptr noundef nonnull @msm_hdmi_irq, ptr noundef null, i32 noundef 8196, ptr noundef nonnull @.str.7, ptr noundef %0) #8
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %44, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8, i32 noundef %45, i32 noundef %40) #8
  br label %66

46:                                               ; preds = %38
  %47 = load ptr, ptr %21, align 4
  tail call void @drm_bridge_connector_enable_hpd(ptr noundef %47) #8
  %48 = load ptr, ptr %12, align 4
  %49 = tail call i32 @msm_hdmi_hpd_enable(ptr noundef %48) #8
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load ptr, ptr %6, align 4
  %53 = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %53, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, i32 noundef %49) #8
  br label %66

54:                                               ; preds = %46
  %55 = load ptr, ptr %12, align 4
  %56 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 30
  %57 = load i32, ptr %56, align 8
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 8
  %59 = getelementptr %struct.msm_drm_private, ptr %5, i32 0, i32 31, i32 %57
  store ptr %55, ptr %59, align 4
  %60 = load ptr, ptr %21, align 4
  %61 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 32
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 4
  %64 = getelementptr %struct.msm_drm_private, ptr %5, i32 0, i32 33, i32 %62
  store ptr %60, ptr %64, align 4
  %65 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 8
  store ptr %0, ptr %65, align 8
  br label %83

66:                                               ; preds = %51, %42, %35, %23
  %67 = phi i32 [ %49, %51 ], [ %40, %42 ], [ %32, %35 ], [ %24, %23 ]
  %68 = load ptr, ptr %12, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  tail call void @msm_hdmi_bridge_destroy(ptr noundef nonnull %68) #8
  br label %71

71:                                               ; preds = %70, %14
  %72 = phi i32 [ %67, %70 ], [ %15, %14 ]
  store ptr null, ptr %12, align 4
  br label %73

73:                                               ; preds = %71, %66
  %74 = phi i32 [ %67, %66 ], [ %72, %71 ]
  %75 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 17
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.drm_connector, ptr %76, i32 0, i32 21
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.drm_connector_funcs, ptr %80, i32 0, i32 8
  %82 = load ptr, ptr %81, align 4
  tail call void %82(ptr noundef nonnull %76) #8
  store ptr null, ptr %75, align 4
  br label %83

83:                                               ; preds = %78, %73, %54
  %84 = phi i32 [ 0, %54 ], [ %74, %78 ], [ %74, %73 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_hdmi_bridge_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_connector_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_hdmi_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 18
  %4 = load ptr, ptr %3, align 4
  tail call void @msm_hdmi_hpd_irq(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  tail call void @msm_hdmi_i2c_irq(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 23
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @msm_hdmi_hdcp_irq(ptr noundef nonnull %8) #8
  br label %11

11:                                               ; preds = %10, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_connector_enable_hpd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_hpd_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_bridge_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @msm_hdmi_register() local_unnamed_addr #3 section ".init.text" {
  tail call void @msm_hdmi_phy_driver_register() #9
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @msm_hdmi_driver, ptr noundef nonnull @__this_module) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_hdmi_phy_driver_register() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @msm_hdmi_unregister() local_unnamed_addr #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @msm_hdmi_driver) #8
  tail call void @msm_hdmi_phy_driver_unregister() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_hdmi_phy_driver_unregister() local_unnamed_addr #4 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_hpd_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_i2c_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_hdcp_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_hdmi_dev_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @msm_hdmi_ops) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_hdmi_dev_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @msm_hdmi_ops) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_hdmi_bind(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.platform_device_info, align 8
  %5 = alloca [32 x i8], align 1
  %6 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @of_device_get_match_data(ptr noundef %0) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %9) #8
  br label %270

13:                                               ; preds = %3
  store ptr @.str.12, ptr %10, align 4
  %14 = getelementptr inbounds %struct.hdmi_platform_config, ptr %10, i32 0, i32 1
  store ptr @.str.13, ptr %14, align 4
  br label %15

15:                                               ; preds = %44, %13
  %16 = phi i32 [ 0, %13 ], [ %51, %44 ]
  %17 = getelementptr [6 x %struct.anon.88], ptr @msm_hdmi_gpio_pdata, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = call ptr @devm_gpiod_get_optional(ptr noundef %0, ptr noundef %18, i32 noundef 0) #8
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = ptrtoint ptr %19 to i32
  br label %270

23:                                               ; preds = %15
  %24 = icmp eq ptr %19, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !9
  %26 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %18, ptr noundef nonnull @.str.14, ptr noundef nonnull %5)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = call ptr @devm_gpiod_get_optional(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0) #8
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = icmp eq ptr %29, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %31, %25
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, ptr noundef %18) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  %34 = getelementptr %struct.hdmi_platform_config, ptr %10, i32 0, i32 11, i32 %16
  store ptr null, ptr %34, align 4
  br label %44

35:                                               ; preds = %28
  %36 = ptrtoint ptr %29 to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  br label %270

37:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  br label %38

38:                                               ; preds = %37, %23
  %39 = phi ptr [ %29, %37 ], [ %19, %23 ]
  %40 = getelementptr %struct.hdmi_platform_config, ptr %10, i32 0, i32 11, i32 %16
  store ptr %39, ptr %40, align 4
  %41 = getelementptr [6 x %struct.anon.88], ptr @msm_hdmi_gpio_pdata, i32 0, i32 %16, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 @gpiod_set_consumer_name(ptr noundef nonnull %39, ptr noundef %42) #8
  br label %44

44:                                               ; preds = %38, %33
  %45 = icmp ne i32 %16, 2
  %46 = getelementptr %struct.hdmi_platform_config, ptr %10, i32 0, i32 11, i32 %16, i32 1
  %47 = zext i1 %45 to i8
  store i8 %47, ptr %46, align 4
  %48 = getelementptr [6 x %struct.anon.88], ptr @msm_hdmi_gpio_pdata, i32 0, i32 %16, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr %struct.hdmi_platform_config, ptr %10, i32 0, i32 11, i32 %16, i32 2
  store i32 %49, ptr %50, align 4
  %51 = add nuw nsw i32 %16, 1
  %52 = icmp eq i32 %51, 6
  br i1 %52, label %53, label %15

53:                                               ; preds = %44
  %54 = getelementptr %struct.device, ptr %0, i32 0, i32 7
  store ptr %10, ptr %54, align 4
  %55 = getelementptr i8, ptr %0, i32 -16
  %56 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 132, i32 noundef 3520) #8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %249, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 1
  store ptr %55, ptr %59, align 4
  %60 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 3
  store ptr %10, ptr %60, align 4
  %61 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 24
  store i32 0, ptr %61, align 4
  %62 = load ptr, ptr %10, align 4
  %63 = call ptr @msm_ioremap(ptr noundef %55, ptr noundef %62, ptr noundef nonnull @.str.29) #8
  %64 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 7
  store ptr %63, ptr %64, align 4
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = ptrtoint ptr %63 to i32
  br label %229

68:                                               ; preds = %58
  %69 = load ptr, ptr %10, align 4
  %70 = call ptr @platform_get_resource_byname(ptr noundef %55, i32 noundef 512, ptr noundef %69) #8
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 9
  store i32 %71, ptr %72, align 4
  %73 = load ptr, ptr %14, align 4
  %74 = call ptr @msm_ioremap(ptr noundef %55, ptr noundef %73, ptr noundef nonnull @.str.30) #8
  %75 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 8
  store ptr %74, ptr %75, align 4
  %76 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #8
  store ptr null, ptr %75, align 4
  br label %78

78:                                               ; preds = %77, %68
  %79 = getelementptr inbounds %struct.hdmi_platform_config, ptr %10, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %80, i32 12) #8
  %82 = extractvalue { i32, i1 } %81, 1
  br i1 %82, label %83, label %85, !prof !10

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 10
  store ptr null, ptr %84, align 4
  br label %229

85:                                               ; preds = %78
  %86 = extractvalue { i32, i1 } %81, 0
  %87 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %86, i32 noundef 3520) #8
  %88 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 10
  store ptr %87, ptr %88, align 4
  %89 = icmp eq ptr %87, null
  br i1 %89, label %229, label %90

90:                                               ; preds = %85
  %91 = load i32, ptr %79, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %119

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.hdmi_platform_config, ptr %10, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = load ptr, ptr %95, align 4
  store ptr %96, ptr %87, align 4
  %97 = load i32, ptr %79, align 4
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %119

99:                                               ; preds = %93
  %100 = load ptr, ptr %94, align 4
  %101 = getelementptr ptr, ptr %100, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr %struct.regulator_bulk_data, ptr %87, i32 1
  store ptr %102, ptr %103, align 4
  %104 = load i32, ptr %79, align 4
  %105 = icmp sgt i32 %104, 2
  br i1 %105, label %106, label %116

106:                                              ; preds = %106, %99
  %107 = phi i32 [ %113, %106 ], [ 2, %99 ]
  %108 = load ptr, ptr %88, align 4
  %109 = load ptr, ptr %94, align 4
  %110 = getelementptr ptr, ptr %109, i32 %107
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr %struct.regulator_bulk_data, ptr %108, i32 %107
  store ptr %111, ptr %112, align 4
  %113 = add nuw nsw i32 %107, 1
  %114 = load i32, ptr %79, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %106, label %116

116:                                              ; preds = %106, %99
  %117 = phi i32 [ %104, %99 ], [ %114, %106 ]
  %118 = load ptr, ptr %88, align 4
  br label %119

119:                                              ; preds = %116, %93, %90
  %120 = phi ptr [ %87, %90 ], [ %87, %93 ], [ %118, %116 ]
  %121 = phi i32 [ %91, %90 ], [ %97, %93 ], [ %117, %116 ]
  %122 = call i32 @devm_regulator_bulk_get(ptr noundef %0, i32 noundef %121, ptr noundef %120) #8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.33, i32 noundef %122) #8
  br label %229

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.hdmi_platform_config, ptr %10, i32 0, i32 5
  %127 = load i32, ptr %126, align 4
  %128 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %127, i32 12) #8
  %129 = extractvalue { i32, i1 } %128, 1
  br i1 %129, label %130, label %132, !prof !10

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 11
  store ptr null, ptr %131, align 4
  br label %229

132:                                              ; preds = %125
  %133 = extractvalue { i32, i1 } %128, 0
  %134 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %133, i32 noundef 3520) #8
  %135 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 11
  store ptr %134, ptr %135, align 4
  %136 = icmp eq ptr %134, null
  br i1 %136, label %229, label %137

137:                                              ; preds = %132
  %138 = load i32, ptr %126, align 4
  %139 = call i32 @devm_regulator_bulk_get(ptr noundef %0, i32 noundef %138, ptr noundef nonnull %134) #8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.34, i32 noundef %139) #8
  br label %229

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.hdmi_platform_config, ptr %10, i32 0, i32 8
  %144 = load i32, ptr %143, align 4
  %145 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %144, i32 4) #8
  %146 = extractvalue { i32, i1 } %145, 1
  br i1 %146, label %147, label %149, !prof !10

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 12
  store ptr null, ptr %148, align 4
  br label %229

149:                                              ; preds = %142
  %150 = extractvalue { i32, i1 } %145, 0
  %151 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %150, i32 noundef 3520) #8
  %152 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 12
  store ptr %151, ptr %152, align 4
  %153 = icmp eq ptr %151, null
  br i1 %153, label %229, label %154

154:                                              ; preds = %149
  %155 = load i32, ptr %143, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %177

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.hdmi_platform_config, ptr %10, i32 0, i32 6
  br label %159

159:                                              ; preds = %171, %157
  %160 = phi i32 [ 0, %157 ], [ %174, %171 ]
  %161 = load ptr, ptr %158, align 4
  %162 = getelementptr ptr, ptr %161, i32 %160
  %163 = load ptr, ptr %162, align 4
  %164 = call ptr @msm_clk_get(ptr noundef %55, ptr noundef %163) #8
  %165 = icmp ugt ptr %164, inttoptr (i32 -4096 to ptr)
  br i1 %165, label %166, label %171

166:                                              ; preds = %159
  %167 = ptrtoint ptr %164 to i32
  %168 = load ptr, ptr %158, align 4
  %169 = getelementptr ptr, ptr %168, i32 %160
  %170 = load ptr, ptr %169, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.35, ptr noundef %170, i32 noundef %167) #8
  br label %229

171:                                              ; preds = %159
  %172 = load ptr, ptr %152, align 4
  %173 = getelementptr ptr, ptr %172, i32 %160
  store ptr %164, ptr %173, align 4
  %174 = add nuw nsw i32 %160, 1
  %175 = load i32, ptr %143, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %159, label %177

177:                                              ; preds = %171, %154
  %178 = getelementptr inbounds %struct.hdmi_platform_config, ptr %10, i32 0, i32 10
  %179 = load i32, ptr %178, align 4
  %180 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %179, i32 4) #8
  %181 = extractvalue { i32, i1 } %180, 1
  br i1 %181, label %182, label %184, !prof !10

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 13
  store ptr null, ptr %183, align 4
  br label %229

184:                                              ; preds = %177
  %185 = extractvalue { i32, i1 } %180, 0
  %186 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %185, i32 noundef 3520) #8
  %187 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 13
  store ptr %186, ptr %187, align 4
  %188 = icmp eq ptr %186, null
  br i1 %188, label %229, label %189

189:                                              ; preds = %184
  %190 = load i32, ptr %178, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %212

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.hdmi_platform_config, ptr %10, i32 0, i32 9
  br label %194

194:                                              ; preds = %206, %192
  %195 = phi i32 [ 0, %192 ], [ %209, %206 ]
  %196 = load ptr, ptr %193, align 4
  %197 = getelementptr ptr, ptr %196, i32 %195
  %198 = load ptr, ptr %197, align 4
  %199 = call ptr @msm_clk_get(ptr noundef %55, ptr noundef %198) #8
  %200 = icmp ugt ptr %199, inttoptr (i32 -4096 to ptr)
  br i1 %200, label %201, label %206

201:                                              ; preds = %194
  %202 = ptrtoint ptr %199 to i32
  %203 = load ptr, ptr %193, align 4
  %204 = getelementptr ptr, ptr %203, i32 %195
  %205 = load ptr, ptr %204, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.36, ptr noundef %205, i32 noundef %202) #8
  br label %229

206:                                              ; preds = %194
  %207 = load ptr, ptr %187, align 4
  %208 = getelementptr ptr, ptr %207, i32 %195
  store ptr %199, ptr %208, align 4
  %209 = add nuw nsw i32 %195, 1
  %210 = load i32, ptr %178, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %194, label %212

212:                                              ; preds = %206, %189
  call void @pm_runtime_enable(ptr noundef %0) #8
  %213 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.37, i32 noundef 655362, i32 noundef 1) #8
  %214 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 22
  store ptr %213, ptr %214, align 4
  %215 = call ptr @msm_hdmi_i2c_init(ptr noundef nonnull %56) #8
  %216 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 16
  store ptr %215, ptr %216, align 4
  %217 = icmp ugt ptr %215, inttoptr (i32 -4096 to ptr)
  br i1 %217, label %218, label %220

218:                                              ; preds = %212
  %219 = ptrtoint ptr %215 to i32
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.38, i32 noundef %219) #8
  store ptr null, ptr %216, align 4
  br label %229

220:                                              ; preds = %212
  %221 = call fastcc i32 @msm_hdmi_get_phy(ptr noundef nonnull %56) #8
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %220
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.39) #8
  br label %229

224:                                              ; preds = %220
  %225 = call ptr @msm_hdmi_hdcp_init(ptr noundef nonnull %56) #8
  %226 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 23
  store ptr %225, ptr %226, align 4
  %227 = icmp ugt ptr %225, inttoptr (i32 -4096 to ptr)
  br i1 %227, label %228, label %252

228:                                              ; preds = %224
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.40) #9
  store ptr null, ptr %226, align 4
  br label %252

229:                                              ; preds = %223, %218, %201, %184, %182, %166, %149, %147, %141, %132, %130, %124, %85, %83, %66
  %230 = phi i32 [ -12, %83 ], [ -12, %85 ], [ %67, %66 ], [ %122, %124 ], [ %139, %141 ], [ %167, %166 ], [ %202, %201 ], [ %219, %218 ], [ %221, %223 ], [ -12, %132 ], [ -12, %149 ], [ -12, %184 ], [ -12, %130 ], [ -12, %147 ], [ -12, %182 ]
  %231 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 22
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %235, label %234

234:                                              ; preds = %229
  call void @destroy_workqueue(ptr noundef nonnull %232) #8
  br label %235

235:                                              ; preds = %234, %229
  call void @msm_hdmi_hdcp_destroy(ptr noundef nonnull %56) #8
  %236 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 15
  %237 = load ptr, ptr %236, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %241, label %239

239:                                              ; preds = %235
  call void @put_device(ptr noundef nonnull %237) #8
  %240 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 14
  store ptr null, ptr %240, align 4
  store ptr null, ptr %236, align 4
  br label %241

241:                                              ; preds = %239, %235
  %242 = getelementptr inbounds %struct.hdmi, ptr %56, i32 0, i32 16
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %246, label %245

245:                                              ; preds = %241
  call void @msm_hdmi_i2c_destroy(ptr noundef nonnull %243) #8
  br label %246

246:                                              ; preds = %245, %241
  %247 = load ptr, ptr %59, align 4
  %248 = getelementptr inbounds %struct.platform_device, ptr %247, i32 0, i32 3, i32 8
  store ptr null, ptr %248, align 8
  br label %249

249:                                              ; preds = %246, %53
  %250 = phi i32 [ %230, %246 ], [ -12, %53 ]
  %251 = inttoptr i32 %250 to ptr
  br label %252

252:                                              ; preds = %249, %228, %224
  %253 = phi ptr [ %251, %249 ], [ %56, %228 ], [ %56, %224 ]
  %254 = icmp ugt ptr %253, inttoptr (i32 -4096 to ptr)
  br i1 %254, label %255, label %257

255:                                              ; preds = %252
  %256 = ptrtoint ptr %253 to i32
  br label %270

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 4
  store ptr %253, ptr %258, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #8
  %259 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %259, i8 0, i32 48, i1 false) #8, !annotation !9
  store ptr %0, ptr %4, align 8
  %260 = getelementptr inbounds %struct.platform_device_info, ptr %4, i32 0, i32 1
  store ptr null, ptr %260, align 4
  %261 = getelementptr inbounds %struct.platform_device_info, ptr %4, i32 0, i32 3
  store ptr @.str.44, ptr %261, align 4
  %262 = getelementptr inbounds %struct.platform_device_info, ptr %4, i32 0, i32 4
  store i32 -2, ptr %262, align 8
  %263 = getelementptr inbounds %struct.platform_device_info, ptr %4, i32 0, i32 7
  store ptr @codec_data, ptr %263, align 4
  %264 = getelementptr inbounds %struct.platform_device_info, ptr %4, i32 0, i32 8
  store i32 16, ptr %264, align 8
  %265 = call ptr @platform_device_register_full(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #8
  %266 = getelementptr inbounds %struct.hdmi, ptr %253, i32 0, i32 2
  store ptr %265, ptr %266, align 4
  %267 = icmp ugt ptr %265, inttoptr (i32 -4096 to ptr)
  br i1 %267, label %268, label %270

268:                                              ; preds = %257
  %269 = ptrtoint ptr %265 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %269) #8
  store ptr null, ptr %266, align 4
  br label %270

270:                                              ; preds = %268, %257, %255, %35, %21, %12
  %271 = phi i32 [ %256, %255 ], [ -6, %12 ], [ 0, %268 ], [ 0, %257 ], [ %22, %21 ], [ %36, %35 ]
  ret i32 %271
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_hdmi_unbind(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hdmi, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  tail call void @platform_device_unregister(ptr noundef nonnull %11) #8
  %14 = load ptr, ptr %6, align 8
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ %7, %9 ]
  %17 = getelementptr inbounds %struct.hdmi, ptr %16, i32 0, i32 22
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @destroy_workqueue(ptr noundef nonnull %18) #8
  br label %21

21:                                               ; preds = %20, %15
  tail call void @msm_hdmi_hdcp_destroy(ptr noundef %16) #8
  %22 = getelementptr inbounds %struct.hdmi, ptr %16, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  tail call void @put_device(ptr noundef nonnull %23) #8
  %26 = getelementptr inbounds %struct.hdmi, ptr %16, i32 0, i32 14
  store ptr null, ptr %26, align 4
  store ptr null, ptr %22, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct.hdmi, ptr %16, i32 0, i32 16
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @msm_hdmi_i2c_destroy(ptr noundef nonnull %29) #8
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.hdmi, ptr %16, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3, i32 8
  store ptr null, ptr %35, align 8
  store ptr null, ptr %6, align 8
  br label %36

36:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_hdmi_i2c_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msm_hdmi_get_phy(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !9
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.41, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #8
  %9 = icmp ne i32 %8, 0
  %10 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.42) #8
  br label %30

14:                                               ; preds = %1
  %15 = call ptr @of_find_device_by_node(ptr noundef nonnull %10) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 14
  store ptr %19, ptr %20, align 4
  call void @of_node_put(ptr noundef nonnull %10) #8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %26

23:                                               ; preds = %14
  call void @of_node_put(ptr noundef nonnull %10) #8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.43) #8
  br label %30

24:                                               ; preds = %17
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.43) #8
  %25 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  call void @put_device(ptr noundef %25) #8
  br label %30

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %28 = call ptr @get_device(ptr noundef %27) #8
  %29 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 15
  store ptr %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %26, %24, %23, %13
  %31 = phi i32 [ 0, %26 ], [ -517, %24 ], [ -517, %23 ], [ -6, %13 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_hdmi_hdcp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_hdcp_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_i2c_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_hdmi_audio_hw_params(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %3, i32 0, i32 3
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.45, i32 noundef %8, i32 noundef %10, i32 noundef %13) #8
  %14 = load i8, ptr %11, align 2
  %15 = add i8 %14, -2
  %16 = icmp ult i8 %15, 7
  br i1 %16, label %17, label %39

17:                                               ; preds = %4
  %18 = lshr i8 85, %15
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  %22 = sext i8 %15 to i32
  %23 = getelementptr inbounds [7 x i32], ptr @switch.table.msm_hdmi_audio_hw_params, i32 0, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = sext i8 %15 to i32
  %26 = getelementptr inbounds [7 x i32], ptr @switch.table.msm_hdmi_audio_hw_params.60, i32 0, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %7, align 4
  switch i32 %28, label %35 [
    i32 32000, label %36
    i32 44100, label %29
    i32 48000, label %30
    i32 88200, label %31
    i32 96000, label %32
    i32 176400, label %33
    i32 192000, label %34
  ]

29:                                               ; preds = %21
  br label %36

30:                                               ; preds = %21
  br label %36

31:                                               ; preds = %21
  br label %36

32:                                               ; preds = %21
  br label %36

33:                                               ; preds = %21
  br label %36

34:                                               ; preds = %21
  br label %36

35:                                               ; preds = %21
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.46, i32 noundef %28) #8
  br label %39

36:                                               ; preds = %34, %33, %32, %31, %30, %29, %21
  %37 = phi i32 [ 6, %34 ], [ 5, %33 ], [ 4, %32 ], [ 3, %31 ], [ 2, %30 ], [ 1, %29 ], [ 0, %21 ]
  tail call void @msm_hdmi_audio_set_sample_rate(ptr noundef %6, i32 noundef %37) #8
  %38 = tail call i32 @msm_hdmi_audio_info_setup(ptr noundef %6, i1 noundef zeroext true, i32 noundef %24, i32 noundef %27, i32 noundef 0, i1 noundef zeroext false) #8
  br label %39

39:                                               ; preds = %36, %35, %17, %4
  %40 = phi i32 [ -22, %35 ], [ 0, %36 ], [ -22, %4 ], [ -22, %17 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_hdmi_audio_shutdown(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @msm_hdmi_audio_info_setup(ptr noundef %4, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_audio_set_sample_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_audio_info_setup(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
