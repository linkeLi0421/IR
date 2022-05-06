; ModuleID = '/llk/IR/drivers/gpu/drm/panel/panel-simple.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-simple.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.panel_desc_dsi = type { %struct.panel_desc, i32, i32, i32 }
%struct.panel_desc = type { ptr, i32, ptr, i32, i32, %struct.anon.71, %struct.anon.72, i32, i32, i32 }
%struct.anon.71 = type { i32, i32 }
%struct.anon.72 = type { i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.display_timing = type { %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, i32 }
%struct.timing_entry = type { i32, i32, i32 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.panel_simple = type { %struct.drm_panel, i8, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, %struct.drm_display_mode, i32 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_panel_simple__265_4383_panel_simple_init6 = internal global ptr @panel_simple_init, section ".initcall6.init", align 4
@panel_simple_dsi_driver = internal global %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dsi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panel_simple_pm_ops, ptr null, ptr null }, ptr @panel_simple_dsi_probe, ptr @panel_simple_dsi_remove, ptr @panel_simple_dsi_shutdown }, align 4
@panel_simple_platform_driver = internal global %struct.platform_driver { ptr @panel_simple_platform_probe, ptr @panel_simple_platform_remove, ptr @panel_simple_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.26, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @platform_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panel_simple_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_panel_simple_exit = internal global ptr @panel_simple_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author266 = internal constant [56 x i8] c"panel_simple.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description267 = internal constant [54 x i8] c"panel_simple.description=DRM Driver for Simple Panels\00", section ".modinfo", align 1
@__UNIQUE_ID_file268 = internal constant [53 x i8] c"panel_simple.file=drivers/gpu/drm/panel/panel-simple\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [47 x i8] c"panel_simple.license=GPL and additional rights\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"panel-simple-dsi\00", align 1
@dsi_of_match = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b080uan01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b080uan01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,tv080wum-nl0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @boe_tv080wum_nl0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,ld070wx3-sl01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lg_ld070wx3_sl01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,lh500wx1-sd03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lg_lh500wx1_sd03 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"panasonic,vvx10f004b00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @panasonic_vvx10f004b00 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,acx467akm-7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lg_acx467akm_7 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"osddisplays,osd101t2045-53ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @osd101t2045_53ts }, %struct.of_device_id zeroinitializer], align 4
@panel_simple_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panel_simple_suspend, ptr @panel_simple_resume, ptr null }, align 4
@auo_b080uan01 = internal constant %struct.panel_desc_dsi { %struct.panel_desc { ptr @auo_b080uan01_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 108, i32 272 }, %struct.anon.72 zeroinitializer, i32 0, i32 0, i32 16 }, i32 1025, i32 0, i32 4 }, align 4
@boe_tv080wum_nl0 = internal constant %struct.panel_desc_dsi { %struct.panel_desc { ptr @boe_tv080wum_nl0_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.71 { i32 107, i32 172 }, %struct.anon.72 zeroinitializer, i32 0, i32 0, i32 16 }, i32 7, i32 0, i32 4 }, align 4
@lg_ld070wx3_sl01 = internal constant %struct.panel_desc_dsi { %struct.panel_desc { ptr @lg_ld070wx3_sl01_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 94, i32 151 }, %struct.anon.72 zeroinitializer, i32 0, i32 0, i32 16 }, i32 1025, i32 0, i32 4 }, align 4
@lg_lh500wx1_sd03 = internal constant %struct.panel_desc_dsi { %struct.panel_desc { ptr @lg_lh500wx1_sd03_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 62, i32 110 }, %struct.anon.72 zeroinitializer, i32 0, i32 0, i32 16 }, i32 1, i32 0, i32 4 }, align 4
@panasonic_vvx10f004b00 = internal constant %struct.panel_desc_dsi { %struct.panel_desc { ptr @panasonic_vvx10f004b00_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 217, i32 136 }, %struct.anon.72 zeroinitializer, i32 0, i32 0, i32 16 }, i32 1029, i32 0, i32 4 }, align 4
@lg_acx467akm_7 = internal constant %struct.panel_desc_dsi { %struct.panel_desc { ptr @lg_acx467akm_7_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 62, i32 110 }, %struct.anon.72 zeroinitializer, i32 0, i32 0, i32 16 }, i32 0, i32 0, i32 4 }, align 4
@osd101t2045_53ts = internal constant %struct.panel_desc_dsi { %struct.panel_desc { ptr @osd101t2045_53ts_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 217, i32 136 }, %struct.anon.72 zeroinitializer, i32 0, i32 0, i32 16 }, i32 519, i32 0, i32 4 }, align 4
@auo_b080uan01_mode = internal constant %struct.drm_display_mode { i32 154500, i16 1200, i16 1262, i16 1266, i16 1328, i16 0, i16 1920, i16 1929, i16 1931, i16 1939, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@boe_tv080wum_nl0_mode = internal constant %struct.drm_display_mode { i32 160000, i16 1200, i16 1320, i16 1340, i16 1361, i16 0, i16 1920, i16 1941, i16 1944, i16 1962, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@lg_ld070wx3_sl01_mode = internal constant %struct.drm_display_mode { i32 71000, i16 800, i16 832, i16 833, i16 890, i16 0, i16 1280, i16 1308, i16 1309, i16 1323, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@lg_lh500wx1_sd03_mode = internal constant %struct.drm_display_mode { i32 67000, i16 720, i16 732, i16 736, i16 848, i16 0, i16 1280, i16 1288, i16 1292, i16 1304, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@panasonic_vvx10f004b00_mode = internal constant %struct.drm_display_mode { i32 157200, i16 1920, i16 2074, i16 2090, i16 2122, i16 0, i16 1200, i16 1217, i16 1219, i16 1235, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@lg_acx467akm_7_mode = internal constant %struct.drm_display_mode { i32 150000, i16 1080, i16 1082, i16 1084, i16 1086, i16 0, i16 1920, i16 1922, i16 1924, i16 1926, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@osd101t2045_53ts_mode = internal constant %struct.drm_display_mode { i32 154500, i16 1920, i16 2032, i16 2048, i16 2080, i16 0, i16 1200, i16 1216, i16 1218, i16 1234, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to enable supply: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to request GPIO: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"%pOF: failed to get orientation %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ddc-i2c-bus\00", align 1
@panel_dpi = internal global %struct.panel_desc zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"panel-timing\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Specify missing connector_type\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"drivers/gpu/drm/panel/panel-simple.c\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"eDP panels moved to panel-edp\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Expected bpc in {6,8} but got: %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Unexpected bus_flags(%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Specify missing bus_flags\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Specify missing bus_format\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Specify a valid connector_type: %d\0A\00", align 1
@panel_simple_funcs = internal constant %struct.drm_panel_funcs { ptr @panel_simple_prepare, ptr @panel_simple_enable, ptr @panel_simple_disable, ptr @panel_simple_unprepare, ptr @panel_simple_get_modes, ptr @panel_simple_get_timings }, align 4
@.str.16 = private unnamed_addr constant [58 x i8] c"%pOF: no panel-timing node found for \22panel-dpi\22 binding\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"width-mm\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"height-mm\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"Reject override mode: panel has a fixed mode\0A\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Reject override mode: no timings specified\0A\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"Reject override mode: No display_timing found\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"failed to add override mode\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"failed to add mode %ux%u\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"failed to add mode %ux%u@%u\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"failed to detach from DSI host: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"panel-simple\00", align 1
@platform_of_match = internal constant [123 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ampire,am-1280800n3tzqw-t00h\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ampire_am_1280800n3tzqw_t00h }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ampire,am-480272h3tmqw-t01h\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ampire_am_480272h3tmqw_t01h }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ampire,am800480r3tmqwa1h\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ampire_am800480r3tmqwa1h }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,rtsm-display\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @arm_rtsm }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"armadeus,st0700-adapt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armadeus_st0700_adapt }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b101aw03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b101aw03 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b101xtn01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b101xtn01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,g070vvn01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_g070vvn01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,g101evn010\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_g101evn010 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,g104sn02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_g104sn02 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,g121ean01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_g121ean01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,g133han01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_g133han01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,g156xtn01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_g156xtn01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,g185han01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_g185han01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,g190ean01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_g190ean01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,p320hvn03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_p320hvn03 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,t215hvn01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_t215hvn01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"avic,tm070ddh03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @avic_tm070ddh03 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bananapi,s070wv20-ct16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bananapi_s070wv20_ct16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,hv070wsa-100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @boe_hv070wsa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdtech,s043wq26h-ct7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdtech_s043wq26h_ct7 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdtech,s070pws19hp-fc21\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdtech_s070pws19hp_fc21 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdtech,s070swv29hg-dc44\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdtech_s070swv29hg_dc44 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdtech,s070wv95-ct16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdtech_s070wv95_ct16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"chefree,ch101olhlwh-002\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chefree_ch101olhlwh_002 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"chunghwa,claa070wp03xg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chunghwa_claa070wp03xg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"chunghwa,claa101wa01a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chunghwa_claa101wa01a }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"chunghwa,claa101wb01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chunghwa_claa101wb01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dataimage,scf0700c48ggu18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dataimage_scf0700c48ggu18 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlc,dlc0700yzg-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dlc_dlc0700yzg_1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlc,dlc1010gig\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dlc_dlc1010gig }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,et035012dm6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_et035012dm6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,etm0350g0dh6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_etm0350g0dh6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,etm043080dh6gp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_etm043080dh6gp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,etm0430g0dh6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_etm0430g0dh6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,et057090dhu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_et057090dhu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,et070080dh6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_etm0700g0dh6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,etm0700g0dh6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_etm0700g0dh6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,etm0700g0bdh6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_etm0700g0bdh6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,etm0700g0edh6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_etm0700g0bdh6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,etmv570g2dhu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_etmv570g2dhu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"eink,vb3300-kca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @eink_vb3300_kca }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"evervision,vgg804821\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @evervision_vgg804821 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"foxlink,fl500wvr00-a0t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @foxlink_fl500wvr00_a0t }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"frida,frd350h54004\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @frida_frd350h54004 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"friendlyarm,hd702e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @friendlyarm_hd702e }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"giantplus,gpg482739qs5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @giantplus_gpg482739qs5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"giantplus,gpm940b0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @giantplus_gpm940b0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hannstar,hsd070pww1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hannstar_hsd070pww1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hannstar,hsd100pxn1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hannstar_hsd100pxn1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hit,tx23d38vm0caa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hitachi_tx23d38vm0caa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,at043tn24\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_at043tn24 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,at070tn92\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_at070tn92 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,g070y2-l01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_g070y2_l01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,g070y2-t02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_g070y2_t02 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,g101ice-l01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_g101ice_l01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,g121i1-l01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_g121i1_l01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,g121x1-l03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_g121x1_l03 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,n156bge-l21\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_n156bge_l21 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,zj070na-01p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_zj070na_01p }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"koe,tx14d24vm1bpa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @koe_tx14d24vm1bpa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"koe,tx26d202vm0bwa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @koe_tx26d202vm0bwa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"koe,tx31d200vm0baa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @koe_tx31d200vm0baa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"kyo,tcg121xglp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kyo_tcg121xglp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lemaker,bl035-rgb-002\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lemaker_bl035_rgb_002 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,lb070wv8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lg_lb070wv8 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"logicpd,type28\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @logicpd_type_28 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"logictechno,lt161010-2nhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @logictechno_lt161010_2nh }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"logictechno,lt161010-2nhr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @logictechno_lt161010_2nh }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"logictechno,lt170410-2whc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @logictechno_lt170410_2whc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"logictechno,lttd800480070-l2rt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @logictechno_lttd800480070_l2rt }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"logictechno,lttd800480070-l6wh-rt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @logictechno_lttd800480070_l6wh_rt }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mitsubishi,aa070mc01-ca1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mitsubishi_aa070mc01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"multi-inno,mi1010ait-1cp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @multi_inno_mi1010ait_1cp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nec,nl12880bc20-05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nec_nl12880bc20_05 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nec,nl4827hc19-05b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nec_nl4827hc19_05b }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"netron-dy,e231732\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @netron_dy_e231732 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"newhaven,nhd-4.3-480272ef-atxl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @newhaven_nhd_43_480272ef_atxl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nlt,nl192108ac18-02d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nlt_nl192108ac18_02d }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvd,9128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nvd_9128 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"okaya,rs800480t-7x0gp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @okaya_rs800480t_7x0gp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"olimex,lcd-olinuxino-43-ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @olimex_lcd_olinuxino_43ts }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ontat,yx700wv03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ontat_yx700wv03 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ortustech,com37h3m05dtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ortustech_com37h3m }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ortustech,com37h3m99dtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ortustech_com37h3m }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ortustech,com43h4m85ulc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ortustech_com43h4m85ulc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"osddisplays,osd070t1718-19ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @osddisplays_osd070t1718_19ts }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pda,91-00156-a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pda_91_00156_a0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"powertip,ph800480t013-idf02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @powertip_ph800480t013_idf02 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qiaodian,qd43003c0-40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qd43003c0_40 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qishenglong,gopher2b-lcd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qishenglong_gopher2b_lcd }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rocktech,rk070er9427\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rocktech_rk070er9427 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rocktech,rk101ii01d-ct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rocktech_rk101ii01d_ct }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,ltn101nt05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @samsung_ltn101nt05 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"satoz,sat050at40h12r2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @satoz_sat050at40h12r2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,lq035q7db03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sharp_lq035q7db03 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,lq070y3dg3b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sharp_lq070y3dg3b }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,lq101k1ly04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sharp_lq101k1ly04 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,ls020b1dd01d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sharp_ls020b1dd01d }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"shelly,sca07010-bfn-lnn\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @shelly_sca07010_bfn_lnn }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"starry,kr070pe2t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @starry_kr070pe2t }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"team-source-display,tst043015cmhx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tsd_tst043015cmhx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tfc,s9700rtwv43tr-01b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tfc_s9700rtwv43tr_01b }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tianma,tm070jdhg30\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tianma_tm070jdhg30 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tianma,tm070jvhg33\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tianma_tm070jvhg33 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tianma,tm070rvhg71\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tianma_tm070rvhg71 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,nspire-cx-lcd-panel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_nspire_cx_lcd_panel }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,nspire-classic-lcd-panel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_nspire_classic_lcd_panel }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,lt089ac29000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @toshiba_lt089ac29000 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tpk,f07a-0102\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tpk_f07a_0102 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tpk,f10a-0102\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tpk_f10a_0102 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"urt,umsh-8596md-t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @urt_umsh_8596md_parallel }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"urt,umsh-8596md-1t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @urt_umsh_8596md_parallel }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"urt,umsh-8596md-7t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @urt_umsh_8596md_parallel }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"urt,umsh-8596md-11t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @urt_umsh_8596md_lvds }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"urt,umsh-8596md-19t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @urt_umsh_8596md_lvds }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"urt,umsh-8596md-20t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @urt_umsh_8596md_parallel }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vivax,tpc9150-panel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vivax_tpc9150_panel }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vxt,vl050-8048nt-c01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vl050_8048nt_c01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"winstar,wf35ltiacd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @winstar_wf35ltiacd }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"yes-optoelectronics,ytc700tlag-05-201c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @yes_optoelectronics_ytc700tlag_05_201c }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"panel-dpi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @panel_dpi }, %struct.of_device_id zeroinitializer], align 4
@ampire_am_1280800n3tzqw_t00h = internal constant %struct.panel_desc { ptr @ampire_am_1280800n3tzqw_t00h_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 217, i32 136 }, %struct.anon.72 zeroinitializer, i32 4113, i32 2, i32 7 }, align 4
@ampire_am_480272h3tmqw_t01h = internal constant %struct.panel_desc { ptr @ampire_am_480272h3tmqw_t01h_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 105, i32 67 }, %struct.anon.72 zeroinitializer, i32 4106, i32 0, i32 0 }, align 4
@ampire_am800480r3tmqwa1h = internal constant %struct.panel_desc { ptr @ampire_am800480r3tmqwa1h_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 152, i32 91 }, %struct.anon.72 zeroinitializer, i32 4105, i32 0, i32 0 }, align 4
@arm_rtsm = internal constant %struct.panel_desc { ptr @arm_rtsm_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 400, i32 300 }, %struct.anon.72 zeroinitializer, i32 4106, i32 0, i32 0 }, align 4
@armadeus_st0700_adapt = internal constant %struct.panel_desc { ptr null, i32 0, ptr @santek_st0700i5y_rbslw_f_timing, i32 1, i32 6, %struct.anon.71 { i32 154, i32 86 }, %struct.anon.72 zeroinitializer, i32 4105, i32 6, i32 0 }, align 4
@auo_b101aw03 = internal constant %struct.panel_desc { ptr @auo_b101aw03_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 223, i32 125 }, %struct.anon.72 zeroinitializer, i32 4112, i32 2, i32 7 }, align 4
@auo_b101xtn01 = internal constant %struct.panel_desc { ptr @auo_b101xtn01_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 223, i32 125 }, %struct.anon.72 zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@auo_g070vvn01 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @auo_g070vvn01_timings, i32 1, i32 8, %struct.anon.71 { i32 152, i32 91 }, %struct.anon.72 { i32 200, i32 50, i32 50, i32 1000 }, i32 0, i32 0, i32 0 }, align 4
@auo_g101evn010 = internal constant %struct.panel_desc { ptr @auo_g101evn010_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 216, i32 135 }, %struct.anon.72 zeroinitializer, i32 4112, i32 0, i32 7 }, align 4
@auo_g104sn02 = internal constant %struct.panel_desc { ptr @auo_g104sn02_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 211, i32 158 }, %struct.anon.72 zeroinitializer, i32 4113, i32 0, i32 7 }, align 4
@auo_g121ean01 = internal constant %struct.panel_desc { ptr @auo_g121ean01_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 261, i32 163 }, %struct.anon.72 zeroinitializer, i32 4113, i32 0, i32 7 }, align 4
@auo_g133han01 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @auo_g133han01_timings, i32 1, i32 8, %struct.anon.71 { i32 293, i32 165 }, %struct.anon.72 { i32 200, i32 50, i32 50, i32 1000 }, i32 4114, i32 0, i32 7 }, align 4
@auo_g156xtn01 = internal constant %struct.panel_desc { ptr @auo_g156xtn01_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 344, i32 194 }, %struct.anon.72 zeroinitializer, i32 4113, i32 0, i32 7 }, align 4
@auo_g185han01 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @auo_g185han01_timings, i32 1, i32 8, %struct.anon.71 { i32 409, i32 230 }, %struct.anon.72 { i32 50, i32 200, i32 110, i32 1000 }, i32 4113, i32 0, i32 7 }, align 4
@auo_g190ean01 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @auo_g190ean01_timings, i32 1, i32 8, %struct.anon.71 { i32 376, i32 301 }, %struct.anon.72 { i32 50, i32 200, i32 110, i32 1000 }, i32 4113, i32 0, i32 7 }, align 4
@auo_p320hvn03 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @auo_p320hvn03_timings, i32 1, i32 8, %struct.anon.71 { i32 698, i32 393 }, %struct.anon.72 { i32 1, i32 450, i32 0, i32 500 }, i32 4113, i32 0, i32 7 }, align 4
@auo_t215hvn01 = internal constant %struct.panel_desc { ptr @auo_t215hvn01_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 430, i32 270 }, %struct.anon.72 { i32 0, i32 0, i32 5, i32 1000 }, i32 0, i32 0, i32 0 }, align 4
@avic_tm070ddh03 = internal constant %struct.panel_desc { ptr @avic_tm070ddh03_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 154, i32 90 }, %struct.anon.72 { i32 20, i32 200, i32 200, i32 0 }, i32 0, i32 0, i32 0 }, align 4
@bananapi_s070wv20_ct16 = internal constant %struct.panel_desc { ptr @bananapi_s070wv20_ct16_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 154, i32 86 }, %struct.anon.72 zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@boe_hv070wsa = internal constant %struct.panel_desc { ptr @boe_hv070wsa_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 154, i32 90 }, %struct.anon.72 zeroinitializer, i32 4113, i32 2, i32 7 }, align 4
@cdtech_s043wq26h_ct7 = internal constant %struct.panel_desc { ptr @cdtech_s043wq26h_ct7_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 95, i32 54 }, %struct.anon.72 zeroinitializer, i32 0, i32 4, i32 0 }, align 4
@cdtech_s070pws19hp_fc21 = internal constant %struct.panel_desc { ptr @cdtech_s070pws19hp_fc21_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 154, i32 86 }, %struct.anon.72 zeroinitializer, i32 4105, i32 6, i32 17 }, align 4
@cdtech_s070swv29hg_dc44 = internal constant %struct.panel_desc { ptr @cdtech_s070swv29hg_dc44_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 154, i32 86 }, %struct.anon.72 zeroinitializer, i32 4105, i32 6, i32 17 }, align 4
@cdtech_s070wv95_ct16 = internal constant %struct.panel_desc { ptr @cdtech_s070wv95_ct16_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 154, i32 85 }, %struct.anon.72 zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@chefree_ch101olhlwh_002 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @chefree_ch101olhlwh_002_timing, i32 1, i32 8, %struct.anon.71 { i32 217, i32 135 }, %struct.anon.72 { i32 0, i32 200, i32 200, i32 0 }, i32 4113, i32 2, i32 7 }, align 4
@chunghwa_claa070wp03xg = internal constant %struct.panel_desc { ptr @chunghwa_claa070wp03xg_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 94, i32 150 }, %struct.anon.72 zeroinitializer, i32 4112, i32 2, i32 7 }, align 4
@chunghwa_claa101wa01a = internal constant %struct.panel_desc { ptr @chunghwa_claa101wa01a_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 220, i32 120 }, %struct.anon.72 zeroinitializer, i32 4112, i32 2, i32 7 }, align 4
@chunghwa_claa101wb01 = internal constant %struct.panel_desc { ptr @chunghwa_claa101wb01_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 223, i32 125 }, %struct.anon.72 zeroinitializer, i32 4112, i32 2, i32 7 }, align 4
@dataimage_scf0700c48ggu18 = internal constant %struct.panel_desc { ptr @dataimage_scf0700c48ggu18_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 152, i32 91 }, %struct.anon.72 zeroinitializer, i32 4106, i32 6, i32 0 }, align 4
@dlc_dlc0700yzg_1 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @dlc_dlc0700yzg_1_timing, i32 1, i32 6, %struct.anon.71 { i32 154, i32 86 }, %struct.anon.72 { i32 30, i32 200, i32 200, i32 0 }, i32 4112, i32 0, i32 7 }, align 4
@dlc_dlc1010gig = internal constant %struct.panel_desc { ptr null, i32 0, ptr @dlc_dlc1010gig_timing, i32 1, i32 8, %struct.anon.71 { i32 216, i32 135 }, %struct.anon.72 { i32 60, i32 150, i32 100, i32 60 }, i32 4113, i32 0, i32 7 }, align 4
@edt_et035012dm6 = internal constant %struct.panel_desc { ptr @edt_et035012dm6_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 70, i32 52 }, %struct.anon.72 zeroinitializer, i32 4106, i32 9, i32 0 }, align 4
@edt_etm0350g0dh6 = internal constant %struct.panel_desc { ptr @edt_etm0350g0dh6_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 70, i32 53 }, %struct.anon.72 zeroinitializer, i32 4106, i32 10, i32 17 }, align 4
@edt_etm043080dh6gp = internal constant %struct.panel_desc { ptr @edt_etm043080dh6gp_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 100, i32 65 }, %struct.anon.72 zeroinitializer, i32 4105, i32 0, i32 17 }, align 4
@edt_etm0430g0dh6 = internal constant %struct.panel_desc { ptr @edt_etm0430g0dh6_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 95, i32 54 }, %struct.anon.72 zeroinitializer, i32 4105, i32 10, i32 17 }, align 4
@edt_et057090dhu = internal constant %struct.panel_desc { ptr @edt_et057090dhu_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 115, i32 86 }, %struct.anon.72 zeroinitializer, i32 4105, i32 10, i32 17 }, align 4
@edt_etm0700g0dh6 = internal constant %struct.panel_desc { ptr @edt_etm0700g0dh6_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 152, i32 91 }, %struct.anon.72 zeroinitializer, i32 4105, i32 10, i32 17 }, align 4
@edt_etm0700g0bdh6 = internal constant %struct.panel_desc { ptr @edt_etm0700g0dh6_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 152, i32 91 }, %struct.anon.72 zeroinitializer, i32 4105, i32 6, i32 17 }, align 4
@edt_etmv570g2dhu = internal constant %struct.panel_desc { ptr @edt_etmv570g2dhu_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 115, i32 86 }, %struct.anon.72 zeroinitializer, i32 4106, i32 10, i32 17 }, align 4
@eink_vb3300_kca = internal constant %struct.panel_desc { ptr null, i32 0, ptr @eink_vb3300_kca_timing, i32 1, i32 6, %struct.anon.71 { i32 157, i32 209 }, %struct.anon.72 zeroinitializer, i32 4106, i32 6, i32 17 }, align 4
@evervision_vgg804821 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @evervision_vgg804821_timing, i32 1, i32 8, %struct.anon.71 { i32 108, i32 64 }, %struct.anon.72 zeroinitializer, i32 4106, i32 10, i32 0 }, align 4
@foxlink_fl500wvr00_a0t = internal constant %struct.panel_desc { ptr @foxlink_fl500wvr00_a0t_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 108, i32 65 }, %struct.anon.72 zeroinitializer, i32 4106, i32 0, i32 0 }, align 4
@frida_frd350h54004 = internal constant %struct.panel_desc { ptr @frida_frd350h54004_modes, i32 2, ptr null, i32 0, i32 8, %struct.anon.71 { i32 77, i32 64 }, %struct.anon.72 zeroinitializer, i32 4106, i32 6, i32 17 }, align 4
@friendlyarm_hd702e = internal constant %struct.panel_desc { ptr @friendlyarm_hd702e_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.71 { i32 94, i32 151 }, %struct.anon.72 zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@giantplus_gpg482739qs5 = internal constant %struct.panel_desc { ptr @giantplus_gpg482739qs5_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 95, i32 54 }, %struct.anon.72 zeroinitializer, i32 4106, i32 0, i32 0 }, align 4
@giantplus_gpm940b0 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @giantplus_gpm940b0_timing, i32 1, i32 8, %struct.anon.71 { i32 60, i32 45 }, %struct.anon.72 zeroinitializer, i32 4124, i32 10, i32 0 }, align 4
@hannstar_hsd070pww1 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @hannstar_hsd070pww1_timing, i32 1, i32 6, %struct.anon.71 { i32 151, i32 94 }, %struct.anon.72 zeroinitializer, i32 4112, i32 0, i32 7 }, align 4
@hannstar_hsd100pxn1 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @hannstar_hsd100pxn1_timing, i32 1, i32 6, %struct.anon.71 { i32 203, i32 152 }, %struct.anon.72 zeroinitializer, i32 4112, i32 0, i32 7 }, align 4
@hitachi_tx23d38vm0caa = internal constant %struct.panel_desc { ptr @hitachi_tx23d38vm0caa_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 195, i32 117 }, %struct.anon.72 { i32 0, i32 160, i32 160, i32 0 }, i32 0, i32 0, i32 0 }, align 4
@innolux_at043tn24 = internal constant %struct.panel_desc { ptr @innolux_at043tn24_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 95, i32 54 }, %struct.anon.72 zeroinitializer, i32 4106, i32 6, i32 0 }, align 4
@innolux_at070tn92 = internal constant %struct.panel_desc { ptr @innolux_at070tn92_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.71 { i32 154, i32 86 }, %struct.anon.72 zeroinitializer, i32 4106, i32 0, i32 0 }, align 4
@innolux_g070y2_l01 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @innolux_g070y2_l01_timing, i32 1, i32 8, %struct.anon.71 { i32 152, i32 91 }, %struct.anon.72 { i32 10, i32 100, i32 100, i32 800 }, i32 4113, i32 0, i32 7 }, align 4
@innolux_g070y2_t02 = internal constant %struct.panel_desc { ptr @innolux_g070y2_t02_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 152, i32 92 }, %struct.anon.72 zeroinitializer, i32 4106, i32 6, i32 17 }, align 4
@innolux_g101ice_l01 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @innolux_g101ice_l01_timing, i32 1, i32 8, %struct.anon.71 { i32 217, i32 135 }, %struct.anon.72 { i32 0, i32 200, i32 200, i32 0 }, i32 4113, i32 0, i32 7 }, align 4
@innolux_g121i1_l01 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @innolux_g121i1_l01_timing, i32 1, i32 6, %struct.anon.71 { i32 261, i32 163 }, %struct.anon.72 { i32 0, i32 200, i32 20, i32 0 }, i32 4113, i32 0, i32 7 }, align 4
@innolux_g121x1_l03 = internal constant %struct.panel_desc { ptr @innolux_g121x1_l03_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 246, i32 185 }, %struct.anon.72 { i32 0, i32 200, i32 400, i32 200 }, i32 0, i32 0, i32 0 }, align 4
@innolux_n156bge_l21 = internal constant %struct.panel_desc { ptr @innolux_n156bge_l21_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 344, i32 193 }, %struct.anon.72 zeroinitializer, i32 4112, i32 2, i32 7 }, align 4
@innolux_zj070na_01p = internal constant %struct.panel_desc { ptr @innolux_zj070na_01p_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 154, i32 90 }, %struct.anon.72 zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@koe_tx14d24vm1bpa = internal constant %struct.panel_desc { ptr null, i32 0, ptr @koe_tx14d24vm1bpa_timing, i32 1, i32 6, %struct.anon.71 { i32 115, i32 86 }, %struct.anon.72 zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@koe_tx26d202vm0bwa = internal constant %struct.panel_desc { ptr null, i32 0, ptr @koe_tx26d202vm0bwa_timing, i32 1, i32 8, %struct.anon.71 { i32 217, i32 136 }, %struct.anon.72 { i32 1000, i32 1000, i32 1000, i32 1000 }, i32 4113, i32 2, i32 7 }, align 4
@koe_tx31d200vm0baa = internal constant %struct.panel_desc { ptr null, i32 0, ptr @koe_tx31d200vm0baa_timing, i32 1, i32 6, %struct.anon.71 { i32 292, i32 109 }, %struct.anon.72 zeroinitializer, i32 4112, i32 0, i32 7 }, align 4
@kyo_tcg121xglp = internal constant %struct.panel_desc { ptr null, i32 0, ptr @kyo_tcg121xglp_timing, i32 1, i32 8, %struct.anon.71 { i32 246, i32 184 }, %struct.anon.72 zeroinitializer, i32 4113, i32 0, i32 7 }, align 4
@lemaker_bl035_rgb_002 = internal constant %struct.panel_desc { ptr @lemaker_bl035_rgb_002_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.71 { i32 70, i32 52 }, %struct.anon.72 zeroinitializer, i32 4106, i32 1, i32 0 }, align 4
@lg_lb070wv8 = internal constant %struct.panel_desc { ptr @lg_lb070wv8_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 151, i32 91 }, %struct.anon.72 zeroinitializer, i32 4113, i32 0, i32 7 }, align 4
@logicpd_type_28 = internal constant %struct.panel_desc { ptr @logicpd_type_28_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 105, i32 67 }, %struct.anon.72 { i32 200, i32 200, i32 200, i32 200 }, i32 4106, i32 134, i32 17 }, align 4
@logictechno_lt161010_2nh = internal constant %struct.panel_desc { ptr null, i32 0, ptr @logictechno_lt161010_2nh_timing, i32 1, i32 0, %struct.anon.71 { i32 154, i32 86 }, %struct.anon.72 zeroinitializer, i32 4105, i32 70, i32 17 }, align 4
@logictechno_lt170410_2whc = internal constant %struct.panel_desc { ptr null, i32 0, ptr @logictechno_lt170410_2whc_timing, i32 1, i32 0, %struct.anon.71 { i32 217, i32 136 }, %struct.anon.72 zeroinitializer, i32 4113, i32 2, i32 7 }, align 4
@logictechno_lttd800480070_l2rt = internal constant %struct.panel_desc { ptr @logictechno_lttd800480070_l2rt_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 154, i32 86 }, %struct.anon.72 { i32 45, i32 100, i32 100, i32 45 }, i32 4106, i32 4, i32 17 }, align 4
@logictechno_lttd800480070_l6wh_rt = internal constant %struct.panel_desc { ptr @logictechno_lttd800480070_l6wh_rt_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 154, i32 86 }, %struct.anon.72 { i32 45, i32 100, i32 100, i32 45 }, i32 4106, i32 4, i32 17 }, align 4
@mitsubishi_aa070mc01 = internal constant %struct.panel_desc { ptr @mitsubishi_aa070mc01_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 152, i32 91 }, %struct.anon.72 { i32 0, i32 200, i32 400, i32 200 }, i32 4113, i32 2, i32 7 }, align 4
@multi_inno_mi1010ait_1cp = internal constant %struct.panel_desc { ptr null, i32 0, ptr @multi_inno_mi1010ait_1cp_timing, i32 1, i32 8, %struct.anon.71 { i32 217, i32 136 }, %struct.anon.72 { i32 0, i32 50, i32 50, i32 0 }, i32 4113, i32 2, i32 7 }, align 4
@nec_nl12880bc20_05 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @nec_nl12880bc20_05_timing, i32 1, i32 8, %struct.anon.71 { i32 261, i32 163 }, %struct.anon.72 { i32 0, i32 50, i32 50, i32 0 }, i32 4113, i32 0, i32 7 }, align 4
@nec_nl4827hc19_05b = internal constant %struct.panel_desc { ptr @nec_nl4827hc19_05b_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 95, i32 54 }, %struct.anon.72 zeroinitializer, i32 4106, i32 4, i32 0 }, align 4
@netron_dy_e231732 = internal constant %struct.panel_desc { ptr @netron_dy_e231732_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.71 { i32 154, i32 87 }, %struct.anon.72 zeroinitializer, i32 4105, i32 0, i32 0 }, align 4
@newhaven_nhd_43_480272ef_atxl = internal constant %struct.panel_desc { ptr @newhaven_nhd_43_480272ef_atxl_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 95, i32 54 }, %struct.anon.72 zeroinitializer, i32 4106, i32 70, i32 17 }, align 4
@nlt_nl192108ac18_02d = internal constant %struct.panel_desc { ptr null, i32 0, ptr @nlt_nl192108ac18_02d_timing, i32 1, i32 8, %struct.anon.71 { i32 344, i32 194 }, %struct.anon.72 { i32 0, i32 0, i32 0, i32 500 }, i32 4113, i32 0, i32 7 }, align 4
@nvd_9128 = internal constant %struct.panel_desc { ptr @nvd_9128_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 156, i32 88 }, %struct.anon.72 zeroinitializer, i32 4113, i32 0, i32 7 }, align 4
@okaya_rs800480t_7x0gp = internal constant %struct.panel_desc { ptr null, i32 0, ptr @okaya_rs800480t_7x0gp_timing, i32 1, i32 6, %struct.anon.71 { i32 154, i32 87 }, %struct.anon.72 { i32 41, i32 50, i32 50, i32 41 }, i32 4105, i32 0, i32 0 }, align 4
@olimex_lcd_olinuxino_43ts = internal constant %struct.panel_desc { ptr @olimex_lcd_olinuxino_43ts_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.71 { i32 95, i32 54 }, %struct.anon.72 zeroinitializer, i32 4106, i32 0, i32 0 }, align 4
@ontat_yx700wv03 = internal constant %struct.panel_desc { ptr @ontat_yx700wv03_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 154, i32 83 }, %struct.anon.72 zeroinitializer, i32 4105, i32 0, i32 0 }, align 4
@ortustech_com37h3m = internal constant %struct.panel_desc { ptr @ortustech_com37h3m_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 56, i32 75 }, %struct.anon.72 zeroinitializer, i32 4106, i32 70, i32 0 }, align 4
@ortustech_com43h4m85ulc = internal constant %struct.panel_desc { ptr @ortustech_com43h4m85ulc_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 56, i32 93 }, %struct.anon.72 zeroinitializer, i32 4105, i32 6, i32 17 }, align 4
@osddisplays_osd070t1718_19ts = internal constant %struct.panel_desc { ptr @osddisplays_osd070t1718_19ts_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 152, i32 91 }, %struct.anon.72 zeroinitializer, i32 4106, i32 70, i32 17 }, align 4
@pda_91_00156_a0 = internal constant %struct.panel_desc { ptr @pda_91_00156_a0_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.71 { i32 152, i32 91 }, %struct.anon.72 zeroinitializer, i32 4106, i32 0, i32 0 }, align 4
@powertip_ph800480t013_idf02 = internal constant %struct.panel_desc { ptr @powertip_ph800480t013_idf02_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.71 { i32 152, i32 91 }, %struct.anon.72 zeroinitializer, i32 4106, i32 70, i32 17 }, align 4
@qd43003c0_40 = internal constant %struct.panel_desc { ptr @qd43003c0_40_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 95, i32 53 }, %struct.anon.72 zeroinitializer, i32 4106, i32 0, i32 0 }, align 4
@qishenglong_gopher2b_lcd = internal constant %struct.panel_desc { ptr @qishenglong_gopher2b_lcd_modes, i32 2, ptr null, i32 0, i32 8, %struct.anon.71 { i32 95, i32 54 }, %struct.anon.72 zeroinitializer, i32 4106, i32 6, i32 17 }, align 4
@rocktech_rk070er9427 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @rocktech_rk070er9427_timing, i32 1, i32 6, %struct.anon.71 { i32 154, i32 86 }, %struct.anon.72 { i32 41, i32 50, i32 50, i32 41 }, i32 4105, i32 0, i32 0 }, align 4
@rocktech_rk101ii01d_ct = internal constant %struct.panel_desc { ptr @rocktech_rk101ii01d_ct_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.71 { i32 217, i32 136 }, %struct.anon.72 { i32 50, i32 0, i32 50, i32 0 }, i32 4113, i32 2, i32 7 }, align 4
@samsung_ltn101nt05 = internal constant %struct.panel_desc { ptr @samsung_ltn101nt05_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 223, i32 125 }, %struct.anon.72 zeroinitializer, i32 4112, i32 2, i32 7 }, align 4
@satoz_sat050at40h12r2 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @satoz_sat050at40h12r2_timing, i32 1, i32 8, %struct.anon.71 { i32 108, i32 65 }, %struct.anon.72 zeroinitializer, i32 4113, i32 0, i32 7 }, align 4
@sharp_lq035q7db03 = internal constant %struct.panel_desc { ptr @sharp_lq035q7db03_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 54, i32 72 }, %struct.anon.72 zeroinitializer, i32 4105, i32 0, i32 0 }, align 4
@sharp_lq070y3dg3b = internal constant %struct.panel_desc { ptr @sharp_lq070y3dg3b_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 152, i32 91 }, %struct.anon.72 zeroinitializer, i32 4106, i32 70, i32 0 }, align 4
@sharp_lq101k1ly04 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @sharp_lq101k1ly04_timing, i32 1, i32 8, %struct.anon.71 { i32 217, i32 136 }, %struct.anon.72 zeroinitializer, i32 4114, i32 0, i32 7 }, align 4
@sharp_ls020b1dd01d = internal constant %struct.panel_desc { ptr @sharp_ls020b1dd01d_modes, i32 2, ptr null, i32 0, i32 6, %struct.anon.71 { i32 42, i32 28 }, %struct.anon.72 zeroinitializer, i32 4119, i32 266, i32 0 }, align 4
@shelly_sca07010_bfn_lnn = internal constant %struct.panel_desc { ptr @shelly_sca07010_bfn_lnn_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.71 { i32 152, i32 91 }, %struct.anon.72 zeroinitializer, i32 4105, i32 0, i32 0 }, align 4
@starry_kr070pe2t = internal constant %struct.panel_desc { ptr @starry_kr070pe2t_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 152, i32 86 }, %struct.anon.72 zeroinitializer, i32 4106, i32 10, i32 17 }, align 4
@tsd_tst043015cmhx = internal constant %struct.panel_desc { ptr null, i32 0, ptr @tsd_tst043015cmhx_timing, i32 1, i32 8, %struct.anon.71 { i32 105, i32 67 }, %struct.anon.72 zeroinitializer, i32 4106, i32 6, i32 0 }, align 4
@tfc_s9700rtwv43tr_01b = internal constant %struct.panel_desc { ptr @tfc_s9700rtwv43tr_01b_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 155, i32 90 }, %struct.anon.72 zeroinitializer, i32 4106, i32 6, i32 0 }, align 4
@tianma_tm070jdhg30 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @tianma_tm070jdhg30_timing, i32 1, i32 8, %struct.anon.71 { i32 151, i32 95 }, %struct.anon.72 zeroinitializer, i32 4113, i32 0, i32 7 }, align 4
@tianma_tm070jvhg33 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @tianma_tm070jdhg30_timing, i32 1, i32 8, %struct.anon.71 { i32 150, i32 94 }, %struct.anon.72 zeroinitializer, i32 4113, i32 0, i32 7 }, align 4
@tianma_tm070rvhg71 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @tianma_tm070rvhg71_timing, i32 1, i32 8, %struct.anon.71 { i32 154, i32 86 }, %struct.anon.72 zeroinitializer, i32 4113, i32 0, i32 7 }, align 4
@ti_nspire_cx_lcd_panel = internal constant %struct.panel_desc { ptr @ti_nspire_cx_lcd_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 65, i32 49 }, %struct.anon.72 zeroinitializer, i32 4106, i32 8, i32 0 }, align 4
@ti_nspire_classic_lcd_panel = internal constant %struct.panel_desc { ptr @ti_nspire_classic_lcd_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 71, i32 53 }, %struct.anon.72 zeroinitializer, i32 8193, i32 4, i32 0 }, align 4
@toshiba_lt089ac29000 = internal constant %struct.panel_desc { ptr @toshiba_lt089ac29000_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.71 { i32 194, i32 116 }, %struct.anon.72 zeroinitializer, i32 4114, i32 2, i32 7 }, align 4
@tpk_f07a_0102 = internal constant %struct.panel_desc { ptr @tpk_f07a_0102_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.71 { i32 152, i32 91 }, %struct.anon.72 zeroinitializer, i32 0, i32 4, i32 0 }, align 4
@tpk_f10a_0102 = internal constant %struct.panel_desc { ptr @tpk_f10a_0102_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.71 { i32 223, i32 125 }, %struct.anon.72 zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@urt_umsh_8596md_parallel = internal constant %struct.panel_desc { ptr null, i32 0, ptr @urt_umsh_8596md_timing, i32 1, i32 6, %struct.anon.71 { i32 152, i32 91 }, %struct.anon.72 zeroinitializer, i32 4105, i32 0, i32 0 }, align 4
@urt_umsh_8596md_lvds = internal constant %struct.panel_desc { ptr null, i32 0, ptr @urt_umsh_8596md_timing, i32 1, i32 6, %struct.anon.71 { i32 152, i32 91 }, %struct.anon.72 zeroinitializer, i32 4112, i32 0, i32 7 }, align 4
@vivax_tpc9150_panel = internal constant %struct.panel_desc { ptr @vivax_tpc9150_panel_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.71 { i32 200, i32 115 }, %struct.anon.72 zeroinitializer, i32 4112, i32 2, i32 7 }, align 4
@vl050_8048nt_c01 = internal constant %struct.panel_desc { ptr @vl050_8048nt_c01_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 120, i32 76 }, %struct.anon.72 zeroinitializer, i32 4106, i32 6, i32 0 }, align 4
@winstar_wf35ltiacd = internal constant %struct.panel_desc { ptr @winstar_wf35ltiacd_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 70, i32 53 }, %struct.anon.72 zeroinitializer, i32 4106, i32 0, i32 0 }, align 4
@yes_optoelectronics_ytc700tlag_05_201c = internal constant %struct.panel_desc { ptr @yes_optoelectronics_ytc700tlag_05_201c_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.71 { i32 154, i32 90 }, %struct.anon.72 zeroinitializer, i32 4113, i32 2, i32 7 }, align 4
@ampire_am_1280800n3tzqw_t00h_mode = internal constant %struct.drm_display_mode { i32 71100, i16 1280, i16 1320, i16 1400, i16 1440, i16 0, i16 800, i16 803, i16 813, i16 823, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@ampire_am_480272h3tmqw_t01h_mode = internal constant %struct.drm_display_mode { i32 9000, i16 480, i16 482, i16 523, i16 525, i16 0, i16 272, i16 274, i16 284, i16 286, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@ampire_am800480r3tmqwa1h_mode = internal constant %struct.drm_display_mode { i32 33333, i16 800, i16 800, i16 1055, i16 1055, i16 0, i16 480, i16 482, i16 527, i16 527, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@arm_rtsm_mode = internal constant [1 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 65000, i16 1024, i16 1048, i16 1184, i16 1344, i16 0, i16 768, i16 771, i16 777, i16 806, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], align 4
@santek_st0700i5y_rbslw_f_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 26400000, i32 33300000, i32 46800000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 16, i32 210, i32 354 }, %struct.timing_entry { i32 45, i32 36, i32 6 }, %struct.timing_entry { i32 1, i32 10, i32 40 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 7, i32 22, i32 147 }, %struct.timing_entry { i32 22, i32 13, i32 3 }, %struct.timing_entry { i32 1, i32 10, i32 20 }, i32 101 }, align 4
@auo_b101aw03_mode = internal constant %struct.drm_display_mode { i32 51450, i16 1024, i16 1180, i16 1188, i16 1344, i16 0, i16 600, i16 616, i16 622, i16 638, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@auo_b101xtn01_mode = internal constant %struct.drm_display_mode { i32 72000, i16 1366, i16 1386, i16 1456, i16 1456, i16 0, i16 768, i16 782, i16 824, i16 824, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@auo_g070vvn01_timings = internal constant %struct.display_timing { %struct.timing_entry { i32 33300000, i32 34209000, i32 45000000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 20, i32 40, i32 200 }, %struct.timing_entry { i32 87, i32 40, i32 1 }, %struct.timing_entry { i32 1, i32 48, i32 87 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 5, i32 13, i32 200 }, %struct.timing_entry { i32 31, i32 31, i32 29 }, %struct.timing_entry { i32 1, i32 1, i32 3 }, i32 0 }, align 4
@auo_g101evn010_mode = internal constant %struct.drm_display_mode { i32 68930, i16 1280, i16 1362, i16 1364, i16 1448, i16 0, i16 800, i16 808, i16 810, i16 816, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@auo_g104sn02_mode = internal constant %struct.drm_display_mode { i32 40000, i16 800, i16 840, i16 1056, i16 1184, i16 0, i16 600, i16 610, i16 645, i16 647, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@auo_g121ean01_mode = internal constant %struct.drm_display_mode { i32 66700, i16 1280, i16 1338, i16 1346, i16 1416, i16 0, i16 800, i16 806, i16 810, i16 820, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@auo_g133han01_timings = internal constant %struct.display_timing { %struct.timing_entry { i32 134000000, i32 141200000, i32 149000000 }, %struct.timing_entry { i32 1920, i32 1920, i32 1920 }, %struct.timing_entry { i32 39, i32 58, i32 77 }, %struct.timing_entry { i32 59, i32 88, i32 117 }, %struct.timing_entry { i32 28, i32 42, i32 56 }, %struct.timing_entry { i32 1080, i32 1080, i32 1080 }, %struct.timing_entry { i32 3, i32 8, i32 11 }, %struct.timing_entry { i32 5, i32 14, i32 19 }, %struct.timing_entry { i32 4, i32 14, i32 19 }, i32 0 }, align 4
@auo_g156xtn01_mode = internal constant %struct.drm_display_mode { i32 76000, i16 1366, i16 1399, i16 1466, i16 1560, i16 0, i16 768, i16 772, i16 776, i16 806, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@auo_g185han01_timings = internal constant %struct.display_timing { %struct.timing_entry { i32 120000000, i32 144000000, i32 175000000 }, %struct.timing_entry { i32 1920, i32 1920, i32 1920 }, %struct.timing_entry { i32 36, i32 120, i32 148 }, %struct.timing_entry { i32 24, i32 88, i32 108 }, %struct.timing_entry { i32 20, i32 48, i32 64 }, %struct.timing_entry { i32 1080, i32 1080, i32 1080 }, %struct.timing_entry { i32 6, i32 10, i32 40 }, %struct.timing_entry { i32 2, i32 5, i32 20 }, %struct.timing_entry { i32 2, i32 5, i32 20 }, i32 0 }, align 4
@auo_g190ean01_timings = internal constant %struct.display_timing { %struct.timing_entry { i32 90000000, i32 108000000, i32 135000000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 126, i32 184, i32 1266 }, %struct.timing_entry { i32 84, i32 122, i32 844 }, %struct.timing_entry { i32 70, i32 102, i32 704 }, %struct.timing_entry { i32 1024, i32 1024, i32 1024 }, %struct.timing_entry { i32 4, i32 26, i32 76 }, %struct.timing_entry { i32 2, i32 8, i32 25 }, %struct.timing_entry { i32 2, i32 8, i32 25 }, i32 0 }, align 4
@auo_p320hvn03_timings = internal constant %struct.display_timing { %struct.timing_entry { i32 106000000, i32 148500000, i32 164000000 }, %struct.timing_entry { i32 1920, i32 1920, i32 1920 }, %struct.timing_entry { i32 25, i32 50, i32 130 }, %struct.timing_entry { i32 25, i32 50, i32 130 }, %struct.timing_entry { i32 20, i32 40, i32 105 }, %struct.timing_entry { i32 1080, i32 1080, i32 1080 }, %struct.timing_entry { i32 8, i32 17, i32 150 }, %struct.timing_entry { i32 8, i32 17, i32 150 }, %struct.timing_entry { i32 4, i32 11, i32 100 }, i32 0 }, align 4
@auo_t215hvn01_mode = internal constant %struct.drm_display_mode { i32 148800, i16 1920, i16 2008, i16 2052, i16 2200, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@avic_tm070ddh03_mode = internal constant %struct.drm_display_mode { i32 51200, i16 1024, i16 1184, i16 1188, i16 1344, i16 0, i16 600, i16 617, i16 618, i16 635, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@bananapi_s070wv20_ct16_mode = internal constant %struct.drm_display_mode { i32 30000, i16 800, i16 840, i16 888, i16 928, i16 0, i16 480, i16 493, i16 496, i16 525, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@boe_hv070wsa_mode = internal constant %struct.drm_display_mode { i32 42105, i16 1024, i16 1054, i16 1084, i16 1114, i16 0, i16 600, i16 610, i16 620, i16 630, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@cdtech_s043wq26h_ct7_mode = internal constant %struct.drm_display_mode { i32 9000, i16 480, i16 485, i16 490, i16 530, i16 0, i16 272, i16 280, i16 288, i16 296, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@cdtech_s070pws19hp_fc21_mode = internal constant %struct.drm_display_mode { i32 51200, i16 1024, i16 1184, i16 1204, i16 1344, i16 0, i16 600, i16 612, i16 615, i16 635, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@cdtech_s070swv29hg_dc44_mode = internal constant %struct.drm_display_mode { i32 33300, i16 800, i16 1010, i16 1012, i16 1056, i16 0, i16 480, i16 502, i16 504, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@cdtech_s070wv95_ct16_mode = internal constant %struct.drm_display_mode { i32 35000, i16 800, i16 840, i16 880, i16 928, i16 0, i16 480, i16 509, i16 522, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@chefree_ch101olhlwh_002_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 68900000, i32 71100000, i32 73400000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 65, i32 80, i32 95 }, %struct.timing_entry { i32 64, i32 79, i32 94 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 7, i32 11, i32 14 }, %struct.timing_entry { i32 7, i32 11, i32 14 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, i32 32 }, align 4
@chunghwa_claa070wp03xg_mode = internal constant %struct.drm_display_mode { i32 66770, i16 800, i16 849, i16 882, i16 899, i16 0, i16 1280, i16 1281, i16 1288, i16 1303, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@chunghwa_claa101wa01a_mode = internal constant %struct.drm_display_mode { i32 72070, i16 1366, i16 1424, i16 1482, i16 1540, i16 0, i16 768, i16 772, i16 776, i16 780, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@chunghwa_claa101wb01_mode = internal constant %struct.drm_display_mode { i32 69300, i16 1366, i16 1414, i16 1446, i16 1466, i16 0, i16 768, i16 784, i16 792, i16 808, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@dataimage_scf0700c48ggu18_mode = internal constant %struct.drm_display_mode { i32 33260, i16 800, i16 840, i16 968, i16 1056, i16 0, i16 480, i16 490, i16 492, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@dlc_dlc0700yzg_1_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 45000000, i32 51200000, i32 57000000 }, %struct.timing_entry { i32 1024, i32 1024, i32 1024 }, %struct.timing_entry { i32 100, i32 106, i32 113 }, %struct.timing_entry { i32 100, i32 106, i32 113 }, %struct.timing_entry { i32 100, i32 108, i32 114 }, %struct.timing_entry { i32 600, i32 600, i32 600 }, %struct.timing_entry { i32 8, i32 11, i32 15 }, %struct.timing_entry { i32 8, i32 11, i32 15 }, %struct.timing_entry { i32 9, i32 13, i32 15 }, i32 32 }, align 4
@dlc_dlc1010gig_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 68900000, i32 71100000, i32 73400000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 43, i32 53, i32 63 }, %struct.timing_entry { i32 43, i32 53, i32 63 }, %struct.timing_entry { i32 44, i32 54, i32 64 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 5, i32 8, i32 11 }, %struct.timing_entry { i32 5, i32 8, i32 11 }, %struct.timing_entry { i32 5, i32 7, i32 11 }, i32 32 }, align 4
@edt_et035012dm6_mode = internal constant %struct.drm_display_mode { i32 6500, i16 320, i16 340, i16 370, i16 408, i16 0, i16 240, i16 244, i16 248, i16 262, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@edt_etm0350g0dh6_mode = internal constant %struct.drm_display_mode { i32 6520, i16 320, i16 340, i16 408, i16 408, i16 0, i16 240, i16 244, i16 262, i16 262, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@edt_etm043080dh6gp_mode = internal constant %struct.drm_display_mode { i32 10870, i16 480, i16 488, i16 492, i16 533, i16 0, i16 288, i16 290, i16 294, i16 304, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@edt_etm0430g0dh6_mode = internal constant %struct.drm_display_mode { i32 9000, i16 480, i16 482, i16 523, i16 525, i16 0, i16 272, i16 274, i16 284, i16 286, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@edt_et057090dhu_mode = internal constant %struct.drm_display_mode { i32 25175, i16 640, i16 656, i16 686, i16 800, i16 0, i16 480, i16 490, i16 493, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@edt_etm0700g0dh6_mode = internal constant %struct.drm_display_mode { i32 33260, i16 800, i16 840, i16 968, i16 1056, i16 0, i16 480, i16 490, i16 492, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@edt_etmv570g2dhu_mode = internal constant %struct.drm_display_mode { i32 25175, i16 640, i16 640, i16 656, i16 800, i16 0, i16 480, i16 490, i16 493, i16 528, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@eink_vb3300_kca_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 40000000, i32 40000000, i32 40000000 }, %struct.timing_entry { i32 334, i32 334, i32 334 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 1405, i32 1405, i32 1405 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, i32 101 }, align 4
@evervision_vgg804821_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 27600000, i32 33300000, i32 50000000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 40, i32 66, i32 70 }, %struct.timing_entry { i32 40, i32 67, i32 70 }, %struct.timing_entry { i32 40, i32 67, i32 70 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 6, i32 10, i32 10 }, %struct.timing_entry { i32 7, i32 11, i32 11 }, %struct.timing_entry { i32 7, i32 11, i32 11 }, i32 4266 }, align 4
@foxlink_fl500wvr00_a0t_mode = internal constant %struct.drm_display_mode { i32 32260, i16 800, i16 968, i16 1032, i16 1120, i16 0, i16 480, i16 517, i16 519, i16 527, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@frida_frd350h54004_modes = internal constant [2 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 6000, i16 320, i16 364, i16 380, i16 400, i16 0, i16 240, i16 242, i16 248, i16 250, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, %struct.drm_display_mode { i32 5400, i16 320, i16 376, i16 392, i16 432, i16 0, i16 240, i16 242, i16 248, i16 250, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], align 4
@friendlyarm_hd702e_mode = internal constant %struct.drm_display_mode { i32 67185, i16 800, i16 820, i16 844, i16 864, i16 0, i16 1280, i16 1284, i16 1292, i16 1296, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@giantplus_gpg482739qs5_mode = internal constant %struct.drm_display_mode { i32 9000, i16 480, i16 485, i16 486, i16 526, i16 0, i16 272, i16 280, i16 281, i16 289, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@giantplus_gpm940b0_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 13500000, i32 27000000, i32 27500000 }, %struct.timing_entry { i32 320, i32 320, i32 320 }, %struct.timing_entry { i32 14, i32 686, i32 718 }, %struct.timing_entry { i32 50, i32 70, i32 255 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 240, i32 240, i32 240 }, %struct.timing_entry { i32 1, i32 1, i32 179 }, %struct.timing_entry { i32 1, i32 21, i32 31 }, %struct.timing_entry { i32 1, i32 1, i32 6 }, i32 5 }, align 4
@hannstar_hsd070pww1_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 64300000, i32 71100000, i32 82000000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 1, i32 1, i32 10 }, %struct.timing_entry { i32 1, i32 1, i32 10 }, %struct.timing_entry { i32 58, i32 158, i32 661 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 1, i32 1, i32 10 }, %struct.timing_entry { i32 1, i32 1, i32 10 }, %struct.timing_entry { i32 1, i32 21, i32 203 }, i32 32 }, align 4
@hannstar_hsd100pxn1_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 55000000, i32 65000000, i32 75000000 }, %struct.timing_entry { i32 1024, i32 1024, i32 1024 }, %struct.timing_entry { i32 40, i32 40, i32 40 }, %struct.timing_entry { i32 220, i32 220, i32 220 }, %struct.timing_entry { i32 20, i32 60, i32 100 }, %struct.timing_entry { i32 768, i32 768, i32 768 }, %struct.timing_entry { i32 7, i32 7, i32 7 }, %struct.timing_entry { i32 21, i32 21, i32 21 }, %struct.timing_entry { i32 10, i32 10, i32 10 }, i32 32 }, align 4
@hitachi_tx23d38vm0caa_mode = internal constant %struct.drm_display_mode { i32 33333, i16 800, i16 885, i16 971, i16 1056, i16 0, i16 480, i16 496, i16 509, i16 525, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@innolux_at043tn24_mode = internal constant %struct.drm_display_mode { i32 9000, i16 480, i16 482, i16 523, i16 525, i16 0, i16 272, i16 274, i16 284, i16 286, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@innolux_at070tn92_mode = internal constant %struct.drm_display_mode { i32 33333, i16 800, i16 1010, i16 1030, i16 1076, i16 0, i16 480, i16 502, i16 512, i16 535, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@innolux_g070y2_l01_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 28000000, i32 29500000, i32 32000000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 61, i32 91, i32 141 }, %struct.timing_entry { i32 60, i32 90, i32 140 }, %struct.timing_entry { i32 12, i32 12, i32 12 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 4, i32 9, i32 30 }, %struct.timing_entry { i32 4, i32 8, i32 28 }, %struct.timing_entry { i32 2, i32 2, i32 2 }, i32 32 }, align 4
@innolux_g070y2_t02_mode = internal constant %struct.drm_display_mode { i32 33333, i16 800, i16 1010, i16 1030, i16 1076, i16 0, i16 480, i16 502, i16 512, i16 535, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@innolux_g101ice_l01_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 60400000, i32 71100000, i32 74700000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 41, i32 80, i32 100 }, %struct.timing_entry { i32 40, i32 79, i32 99 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 5, i32 11, i32 14 }, %struct.timing_entry { i32 4, i32 11, i32 14 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, i32 32 }, align 4
@innolux_g121i1_l01_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 67450000, i32 71000000, i32 74550000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 40, i32 80, i32 160 }, %struct.timing_entry { i32 39, i32 79, i32 159 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 5, i32 11, i32 100 }, %struct.timing_entry { i32 4, i32 11, i32 99 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, i32 0 }, align 4
@innolux_g121x1_l03_mode = internal constant %struct.drm_display_mode { i32 65000, i16 1024, i16 1024, i16 1025, i16 1345, i16 0, i16 768, i16 806, i16 807, i16 807, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@innolux_n156bge_l21_mode = internal constant %struct.drm_display_mode { i32 69300, i16 1366, i16 1382, i16 1416, i16 1466, i16 0, i16 768, i16 770, i16 776, i16 788, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@innolux_zj070na_01p_mode = internal constant %struct.drm_display_mode { i32 51501, i16 1024, i16 1152, i16 1216, i16 1344, i16 0, i16 600, i16 616, i16 620, i16 636, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@koe_tx14d24vm1bpa_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 5580000, i32 5850000, i32 6200000 }, %struct.timing_entry { i32 320, i32 320, i32 320 }, %struct.timing_entry { i32 30, i32 30, i32 30 }, %struct.timing_entry { i32 30, i32 30, i32 30 }, %struct.timing_entry { i32 1, i32 5, i32 17 }, %struct.timing_entry { i32 240, i32 240, i32 240 }, %struct.timing_entry { i32 6, i32 6, i32 6 }, %struct.timing_entry { i32 5, i32 5, i32 5 }, %struct.timing_entry { i32 1, i32 2, i32 11 }, i32 32 }, align 4
@koe_tx26d202vm0bwa_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 151820000, i32 156720000, i32 159780000 }, %struct.timing_entry { i32 1920, i32 1920, i32 1920 }, %struct.timing_entry { i32 105, i32 130, i32 142 }, %struct.timing_entry { i32 45, i32 70, i32 82 }, %struct.timing_entry { i32 30, i32 30, i32 30 }, %struct.timing_entry { i32 1200, i32 1200, i32 1200 }, %struct.timing_entry { i32 3, i32 5, i32 10 }, %struct.timing_entry { i32 2, i32 5, i32 10 }, %struct.timing_entry { i32 5, i32 5, i32 5 }, i32 0 }, align 4
@koe_tx31d200vm0baa_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 39600000, i32 43200000, i32 48000000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 16, i32 36, i32 56 }, %struct.timing_entry { i32 16, i32 36, i32 56 }, %struct.timing_entry { i32 8, i32 8, i32 8 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 6, i32 21, i32 33 }, %struct.timing_entry { i32 6, i32 21, i32 33 }, %struct.timing_entry { i32 8, i32 8, i32 8 }, i32 32 }, align 4
@kyo_tcg121xglp_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 52000000, i32 65000000, i32 71000000 }, %struct.timing_entry { i32 1024, i32 1024, i32 1024 }, %struct.timing_entry { i32 2, i32 2, i32 2 }, %struct.timing_entry { i32 2, i32 2, i32 2 }, %struct.timing_entry { i32 86, i32 124, i32 244 }, %struct.timing_entry { i32 768, i32 768, i32 768 }, %struct.timing_entry { i32 2, i32 2, i32 2 }, %struct.timing_entry { i32 2, i32 2, i32 2 }, %struct.timing_entry { i32 6, i32 34, i32 73 }, i32 32 }, align 4
@lemaker_bl035_rgb_002_mode = internal constant %struct.drm_display_mode { i32 7000, i16 320, i16 340, i16 370, i16 408, i16 0, i16 240, i16 244, i16 247, i16 262, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@lg_lb070wv8_mode = internal constant %struct.drm_display_mode { i32 33246, i16 800, i16 888, i16 968, i16 1056, i16 0, i16 480, i16 490, i16 515, i16 525, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@logicpd_type_28_mode = internal constant %struct.drm_display_mode { i32 9107, i16 480, i16 483, i16 525, i16 527, i16 0, i16 272, i16 274, i16 285, i16 288, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@logictechno_lt161010_2nh_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 26400000, i32 33300000, i32 46800000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 16, i32 210, i32 354 }, %struct.timing_entry { i32 46, i32 46, i32 46 }, %struct.timing_entry { i32 1, i32 20, i32 40 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 7, i32 22, i32 147 }, %struct.timing_entry { i32 23, i32 23, i32 23 }, %struct.timing_entry { i32 1, i32 10, i32 20 }, i32 2149 }, align 4
@logictechno_lt170410_2whc_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 68900000, i32 71100000, i32 73400000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 23, i32 60, i32 71 }, %struct.timing_entry { i32 23, i32 60, i32 71 }, %struct.timing_entry { i32 15, i32 40, i32 47 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 5, i32 7, i32 10 }, %struct.timing_entry { i32 5, i32 7, i32 10 }, %struct.timing_entry { i32 6, i32 9, i32 12 }, i32 2149 }, align 4
@logictechno_lttd800480070_l2rt_mode = internal constant %struct.drm_display_mode { i32 33000, i16 800, i16 912, i16 915, i16 1000, i16 0, i16 480, i16 518, i16 521, i16 550, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@logictechno_lttd800480070_l6wh_rt_mode = internal constant %struct.drm_display_mode { i32 33000, i16 800, i16 954, i16 957, i16 1000, i16 0, i16 480, i16 527, i16 530, i16 550, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@mitsubishi_aa070mc01_mode = internal constant %struct.drm_display_mode { i32 30400, i16 800, i16 800, i16 801, i16 961, i16 0, i16 480, i16 480, i16 529, i16 529, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@multi_inno_mi1010ait_1cp_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 68900000, i32 70000000, i32 73400000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 30, i32 60, i32 71 }, %struct.timing_entry { i32 30, i32 60, i32 71 }, %struct.timing_entry { i32 10, i32 10, i32 48 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 5, i32 10, i32 10 }, %struct.timing_entry { i32 5, i32 10, i32 10 }, %struct.timing_entry { i32 5, i32 6, i32 13 }, i32 37 }, align 4
@nec_nl12880bc20_05_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 67000000, i32 71000000, i32 75000000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 2, i32 30, i32 30 }, %struct.timing_entry { i32 6, i32 100, i32 100 }, %struct.timing_entry { i32 2, i32 30, i32 30 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 5, i32 5, i32 5 }, %struct.timing_entry { i32 11, i32 11, i32 11 }, %struct.timing_entry { i32 7, i32 7, i32 7 }, i32 0 }, align 4
@nec_nl4827hc19_05b_mode = internal constant %struct.drm_display_mode { i32 10870, i16 480, i16 482, i16 523, i16 525, i16 0, i16 272, i16 274, i16 278, i16 280, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@netron_dy_e231732_mode = internal constant %struct.drm_display_mode { i32 66000, i16 1024, i16 1184, i16 1254, i16 1344, i16 0, i16 600, i16 727, i16 747, i16 750, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@newhaven_nhd_43_480272ef_atxl_mode = internal constant %struct.drm_display_mode { i32 9000, i16 480, i16 482, i16 523, i16 525, i16 0, i16 272, i16 274, i16 284, i16 286, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@nlt_nl192108ac18_02d_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 130000000, i32 148350000, i32 163000000 }, %struct.timing_entry { i32 1920, i32 1920, i32 1920 }, %struct.timing_entry { i32 80, i32 100, i32 100 }, %struct.timing_entry { i32 100, i32 120, i32 120 }, %struct.timing_entry { i32 50, i32 60, i32 60 }, %struct.timing_entry { i32 1080, i32 1080, i32 1080 }, %struct.timing_entry { i32 12, i32 30, i32 30 }, %struct.timing_entry { i32 4, i32 10, i32 10 }, %struct.timing_entry { i32 4, i32 5, i32 5 }, i32 0 }, align 4
@nvd_9128_mode = internal constant %struct.drm_display_mode { i32 29500, i16 800, i16 930, i16 1028, i16 1028, i16 0, i16 480, i16 490, i16 540, i16 540, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@okaya_rs800480t_7x0gp_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 30000000, i32 30000000, i32 40000000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 40, i32 40, i32 40 }, %struct.timing_entry { i32 40, i32 40, i32 40 }, %struct.timing_entry { i32 1, i32 48, i32 48 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 13, i32 13, i32 13 }, %struct.timing_entry { i32 29, i32 29, i32 29 }, %struct.timing_entry { i32 3, i32 3, i32 3 }, i32 32 }, align 4
@olimex_lcd_olinuxino_43ts_mode = internal constant %struct.drm_display_mode { i32 9000, i16 480, i16 485, i16 515, i16 525, i16 0, i16 272, i16 280, i16 285, i16 288, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@ontat_yx700wv03_mode = internal constant %struct.drm_display_mode { i32 29500, i16 800, i16 824, i16 896, i16 992, i16 0, i16 480, i16 483, i16 493, i16 500, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@ortustech_com37h3m_mode = internal constant %struct.drm_display_mode { i32 22230, i16 480, i16 520, i16 530, i16 570, i16 0, i16 640, i16 644, i16 646, i16 650, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@ortustech_com43h4m85ulc_mode = internal constant %struct.drm_display_mode { i32 25000, i16 480, i16 490, i16 500, i16 515, i16 0, i16 800, i16 803, i16 806, i16 809, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@osddisplays_osd070t1718_19ts_mode = internal constant %struct.drm_display_mode { i32 33000, i16 800, i16 1010, i16 1040, i16 1056, i16 0, i16 480, i16 502, i16 515, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@pda_91_00156_a0_mode = internal constant %struct.drm_display_mode { i32 33300, i16 800, i16 801, i16 865, i16 929, i16 0, i16 480, i16 481, i16 504, i16 526, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@powertip_ph800480t013_idf02_mode = internal constant %struct.drm_display_mode { i32 24750, i16 800, i16 854, i16 856, i16 900, i16 0, i16 480, i16 529, i16 531, i16 553, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@qd43003c0_40_mode = internal constant %struct.drm_display_mode { i32 9000, i16 480, i16 488, i16 492, i16 531, i16 0, i16 272, i16 276, i16 286, i16 288, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@qishenglong_gopher2b_lcd_modes = internal constant [2 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 10800, i16 480, i16 557, i16 598, i16 600, i16 0, i16 272, i16 288, i16 298, i16 300, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, %struct.drm_display_mode { i32 10800, i16 480, i16 497, i16 538, i16 540, i16 0, i16 272, i16 388, i16 398, i16 400, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], align 4
@rocktech_rk070er9427_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 26400000, i32 33300000, i32 46800000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 16, i32 210, i32 354 }, %struct.timing_entry { i32 46, i32 46, i32 46 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 7, i32 22, i32 147 }, %struct.timing_entry { i32 23, i32 23, i32 23 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, i32 32 }, align 4
@rocktech_rk101ii01d_ct_mode = internal constant %struct.drm_display_mode { i32 71100, i16 1280, i16 1328, i16 1360, i16 1440, i16 0, i16 800, i16 802, i16 807, i16 823, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@samsung_ltn101nt05_mode = internal constant %struct.drm_display_mode { i32 54030, i16 1024, i16 1048, i16 1184, i16 1344, i16 0, i16 600, i16 603, i16 609, i16 670, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@satoz_sat050at40h12r2_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 33300000, i32 33300000, i32 50000000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 16, i32 210, i32 354 }, %struct.timing_entry { i32 46, i32 46, i32 46 }, %struct.timing_entry { i32 1, i32 1, i32 40 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 7, i32 22, i32 147 }, %struct.timing_entry { i32 23, i32 23, i32 23 }, %struct.timing_entry { i32 1, i32 1, i32 20 }, i32 0 }, align 4
@sharp_lq035q7db03_mode = internal constant %struct.drm_display_mode { i32 5500, i16 240, i16 256, i16 263, i16 268, i16 0, i16 320, i16 329, i16 330, i16 337, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@sharp_lq070y3dg3b_mode = internal constant %struct.drm_display_mode { i32 33260, i16 800, i16 864, i16 992, i16 1056, i16 0, i16 480, i16 488, i16 490, i16 525, i16 0, i32 64, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@sharp_lq101k1ly04_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 60000000, i32 65000000, i32 80000000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 20, i32 20, i32 20 }, %struct.timing_entry { i32 20, i32 20, i32 20 }, %struct.timing_entry { i32 10, i32 10, i32 10 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 4, i32 4, i32 4 }, %struct.timing_entry { i32 4, i32 4, i32 4 }, %struct.timing_entry { i32 4, i32 4, i32 4 }, i32 64 }, align 4
@sharp_ls020b1dd01d_modes = internal constant [2 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 3000, i16 240, i16 298, i16 299, i16 300, i16 0, i16 160, i16 184, i16 194, i16 200, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, %struct.drm_display_mode { i32 3000, i16 240, i16 248, i16 249, i16 250, i16 0, i16 160, i16 184, i16 194, i16 200, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], align 4
@shelly_sca07010_bfn_lnn_mode = internal constant %struct.drm_display_mode { i32 33300, i16 800, i16 801, i16 865, i16 929, i16 0, i16 480, i16 481, i16 504, i16 526, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@starry_kr070pe2t_mode = internal constant %struct.drm_display_mode { i32 33000, i16 800, i16 1009, i16 1010, i16 1055, i16 0, i16 480, i16 502, i16 503, i16 525, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@tsd_tst043015cmhx_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 5000000, i32 9000000, i32 12000000 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 4, i32 5, i32 65 }, %struct.timing_entry { i32 36, i32 40, i32 255 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 272, i32 272, i32 272 }, %struct.timing_entry { i32 2, i32 8, i32 97 }, %struct.timing_entry { i32 3, i32 8, i32 31 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, i32 101 }, align 4
@tfc_s9700rtwv43tr_01b_mode = internal constant %struct.drm_display_mode { i32 30000, i16 800, i16 839, i16 886, i16 925, i16 0, i16 480, i16 493, i16 495, i16 524, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@tianma_tm070jdhg30_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 62600000, i32 68200000, i32 78100000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 15, i32 64, i32 159 }, %struct.timing_entry { i32 5, i32 5, i32 5 }, %struct.timing_entry { i32 1, i32 1, i32 256 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 3, i32 40, i32 99 }, %struct.timing_entry { i32 2, i32 2, i32 2 }, %struct.timing_entry { i32 1, i32 1, i32 128 }, i32 32 }, align 4
@tianma_tm070rvhg71_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 27700000, i32 29200000, i32 39600000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 12, i32 40, i32 212 }, %struct.timing_entry { i32 88, i32 88, i32 88 }, %struct.timing_entry { i32 1, i32 1, i32 40 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 1, i32 13, i32 88 }, %struct.timing_entry { i32 32, i32 32, i32 32 }, %struct.timing_entry { i32 1, i32 1, i32 3 }, i32 32 }, align 4
@ti_nspire_cx_lcd_mode = internal constant [1 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 10000, i16 320, i16 370, i16 376, i16 414, i16 0, i16 240, i16 243, i16 244, i16 261, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], align 4
@ti_nspire_classic_lcd_mode = internal constant [1 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 10000, i16 320, i16 326, i16 332, i16 338, i16 0, i16 240, i16 240, i16 241, i16 241, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], align 4
@toshiba_lt089ac29000_mode = internal constant %struct.drm_display_mode { i32 79500, i16 1280, i16 1472, i16 1600, i16 1664, i16 0, i16 768, i16 788, i16 795, i16 798, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@tpk_f07a_0102_mode = internal constant %struct.drm_display_mode { i32 33260, i16 800, i16 840, i16 968, i16 1056, i16 0, i16 480, i16 490, i16 492, i16 525, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@tpk_f10a_0102_mode = internal constant %struct.drm_display_mode { i32 45000, i16 1024, i16 1200, i16 1205, i16 1293, i16 0, i16 600, i16 620, i16 625, i16 650, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@urt_umsh_8596md_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 33260000, i32 33260000, i32 33260000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 41, i32 41, i32 41 }, %struct.timing_entry { i32 88, i32 88, i32 88 }, %struct.timing_entry { i32 71, i32 128, i32 128 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 10, i32 10, i32 10 }, %struct.timing_entry { i32 33, i32 33, i32 33 }, %struct.timing_entry { i32 2, i32 2, i32 2 }, i32 165 }, align 4
@vivax_tpc9150_panel_mode = internal constant %struct.drm_display_mode { i32 60000, i16 1024, i16 1184, i16 1284, i16 1344, i16 0, i16 600, i16 612, i16 622, i16 635, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@vl050_8048nt_c01_mode = internal constant %struct.drm_display_mode { i32 33333, i16 800, i16 1010, i16 1030, i16 1076, i16 0, i16 480, i16 502, i16 512, i16 535, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@winstar_wf35ltiacd_mode = internal constant %struct.drm_display_mode { i32 6410, i16 320, i16 340, i16 370, i16 408, i16 0, i16 240, i16 244, i16 247, i16 262, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@yes_optoelectronics_ytc700tlag_05_201c_mode = internal constant %struct.drm_display_mode { i32 51200, i16 1024, i16 1124, i16 1224, i16 1344, i16 0, i16 600, i16 610, i16 620, i16 635, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_description267, ptr @__UNIQUE_ID_file268, ptr @__UNIQUE_ID_license269, ptr @__exitcall_panel_simple_exit, ptr @__initcall__kmod_panel_simple__265_4383_panel_simple_init6, ptr @panel_simple_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @panel_simple_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @panel_simple_platform_driver, ptr noundef null) #9
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @panel_simple_dsi_driver, ptr noundef null) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @platform_driver_unregister(ptr noundef nonnull @panel_simple_platform_driver) #9
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %4, %6 ], [ %1, %0 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @panel_simple_exit() #0 section ".exit.text" {
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @panel_simple_dsi_driver) #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @panel_simple_platform_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_simple_dsi_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @of_match_node(ptr noundef nonnull @dsi_of_match, ptr noundef %3) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call fastcc i32 @panel_simple_probe(ptr noundef %7, ptr noundef %9)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.panel_desc_dsi, ptr %9, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.panel_desc_dsi, ptr %9, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 5
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.panel_desc_dsi, ptr %9, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 4
  store i32 %20, ptr %21, align 8
  %22 = tail call i32 @mipi_dsi_attach(ptr noundef %0) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 8
  %26 = load ptr, ptr %25, align 8
  tail call void @drm_panel_remove(ptr noundef %26) #9
  br label %27

27:                                               ; preds = %24, %12, %6, %1
  %28 = phi i32 [ -19, %1 ], [ %10, %6 ], [ %22, %24 ], [ 0, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_simple_dsi_remove(ptr noundef %0) #3 {
  %2 = tail call i32 @mipi_dsi_detach(ptr noundef %0) #9
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef %2) #10
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 8
  %9 = load ptr, ptr %8, align 8
  tail call void @drm_panel_remove(ptr noundef %9) #9
  %10 = tail call i32 @drm_panel_disable(ptr noundef %9) #9
  %11 = tail call i32 @drm_panel_unprepare(ptr noundef %9) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %7, i1 noundef zeroext false) #9
  tail call void @__pm_runtime_disable(ptr noundef %7, i1 noundef zeroext true) #9
  %12 = getelementptr inbounds %struct.panel_simple, ptr %9, i32 0, i32 7
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 9
  tail call void @put_device(ptr noundef %16) #9
  br label %17

17:                                               ; preds = %15, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @panel_simple_dsi_shutdown(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_panel_disable(ptr noundef %3) #9
  %5 = tail call i32 @drm_panel_unprepare(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_simple_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.panel_simple, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #9
  %6 = getelementptr inbounds %struct.panel_simple, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regulator_disable(ptr noundef %7) #9
  %9 = tail call i64 @ktime_get() #9
  %10 = getelementptr inbounds %struct.panel_simple, ptr %3, i32 0, i32 4
  store i64 %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.panel_simple, ptr %3, i32 0, i32 9
  %12 = load ptr, ptr %11, align 8
  tail call void @kfree(ptr noundef %12) #9
  store ptr null, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_simple_resume(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.panel_simple, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.panel_desc, ptr %5, i32 0, i32 6, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.panel_simple, ptr %3, i32 0, i32 4
  %11 = load i64, ptr %10, align 8
  %12 = zext i32 %7 to i64
  %13 = mul nuw nsw i64 %12, 1000000
  %14 = add i64 %11, %13
  %15 = tail call i64 @ktime_get() #9
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %9
  %18 = sub i64 %14, %15
  %19 = tail call i64 @llvm.abs.i64(i64 %18, i1 false) #9
  %20 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %19) #11, !srcloc !8
  %21 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %19, i64 %20, i32 0) #11, !srcloc !9
  %22 = extractvalue { i64, i32 } %21, 0
  %23 = icmp slt i64 %18, 0
  %24 = lshr i64 %22, 18
  %25 = sub nsw i64 0, %24
  %26 = select i1 %23, i64 %25, i64 %24
  %27 = trunc i64 %26 to i32
  %28 = add i32 %27, 1
  tail call void @msleep(i32 noundef %28) #9
  br label %29

29:                                               ; preds = %17, %9, %1
  %30 = getelementptr inbounds %struct.panel_simple, ptr %3, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @regulator_enable(ptr noundef %31) #9
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %32) #10
  br label %46

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.panel_simple, ptr %3, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %37, i32 noundef 1) #9
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.panel_desc, ptr %38, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  tail call void @msleep(i32 noundef %40) #9
  br label %43

43:                                               ; preds = %42, %35
  %44 = tail call i64 @ktime_get() #9
  %45 = getelementptr inbounds %struct.panel_simple, ptr %3, i32 0, i32 3
  store i64 %44, ptr %45, align 8
  br label %46

46:                                               ; preds = %43, %34
  %47 = phi i32 [ %32, %34 ], [ 0, %43 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @panel_simple_probe(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca %struct.videomode, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.videomode, align 4
  %6 = alloca %struct.of_phandle_args, align 4
  %7 = alloca %struct.display_timing, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %7, i8 0, i32 112, i1 false), !annotation !10
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 184, i32 noundef 3520) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %270, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.panel_simple, ptr %8, i32 0, i32 1
  store i8 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.panel_simple, ptr %8, i32 0, i32 3
  store i64 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.panel_simple, ptr %8, i32 0, i32 5
  store ptr %1, ptr %13, align 8
  %14 = tail call ptr @devm_regulator_get(ptr noundef %0, ptr noundef nonnull @.str.2) #9
  %15 = getelementptr inbounds %struct.panel_simple, ptr %8, i32 0, i32 6
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = ptrtoint ptr %14 to i32
  br label %270

19:                                               ; preds = %10
  %20 = tail call ptr @devm_gpiod_get_optional(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 3) #9
  %21 = getelementptr inbounds %struct.panel_simple, ptr %8, i32 0, i32 8
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = icmp eq ptr %20, inttoptr (i32 -517 to ptr)
  br i1 %24, label %270, label %25

25:                                               ; preds = %23
  %26 = ptrtoint ptr %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %26) #10
  br label %270

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.panel_simple, ptr %8, i32 0, i32 11
  %31 = tail call i32 @of_drm_get_panel_orientation(ptr noundef %29, ptr noundef %30) #9
  %32 = icmp eq i32 %31, 0
  %33 = load ptr, ptr %28, align 8
  br i1 %32, label %35, label %34

34:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %33, i32 noundef %31) #10
  br label %270

35:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false) #9, !annotation !10
  %36 = call i32 @__of_parse_phandle_with_args(ptr noundef %33, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6) #9
  %37 = icmp ne i32 %36, 0
  %38 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #9
  %39 = icmp eq ptr %38, null
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %38) #9
  %43 = getelementptr inbounds %struct.panel_simple, ptr %8, i32 0, i32 7
  store ptr %42, ptr %43, align 8
  call void @of_node_put(ptr noundef nonnull %38) #9
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %270, label %46

46:                                               ; preds = %41, %35
  %47 = icmp eq ptr %1, @panel_dpi
  br i1 %47, label %48, label %74

48:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i32 36, i1 false) #9, !annotation !10
  %49 = load ptr, ptr %28, align 8
  %50 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 56, i32 noundef 3520) #9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 112, i32 noundef 3520) #9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = call i32 @of_get_display_timing(ptr noundef %49, ptr noundef nonnull @.str.7, ptr noundef nonnull %53) #9
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %49) #10
  br label %59

59:                                               ; preds = %58, %52, %48
  %60 = phi i32 [ -12, %52 ], [ -12, %48 ], [ %56, %58 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %263

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.panel_desc, ptr %50, i32 0, i32 2
  store ptr %53, ptr %62, align 4
  %63 = getelementptr inbounds %struct.panel_desc, ptr %50, i32 0, i32 3
  store i32 1, ptr %63, align 4
  %64 = getelementptr inbounds %struct.panel_desc, ptr %50, i32 0, i32 5
  %65 = call i32 @of_property_read_variable_u32_array(ptr noundef %49, ptr noundef nonnull @.str.17, ptr noundef %64, i32 noundef 1, i32 noundef 0) #9
  %66 = getelementptr inbounds %struct.panel_desc, ptr %50, i32 0, i32 5, i32 1
  %67 = call i32 @of_property_read_variable_u32_array(ptr noundef %49, ptr noundef nonnull @.str.18, ptr noundef %66, i32 noundef 1, i32 noundef 0) #9
  store i32 0, ptr %4, align 4
  %68 = getelementptr inbounds %struct.display_timing, ptr %53, i32 0, i32 9
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.videomode, ptr %5, i32 0, i32 9
  store i32 %69, ptr %70, align 4
  call void @drm_bus_flags_from_videomode(ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  %71 = load i32, ptr %4, align 4
  %72 = getelementptr inbounds %struct.panel_desc, ptr %50, i32 0, i32 8
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.panel_desc, ptr %50, i32 0, i32 9
  store i32 17, ptr %73, align 4
  store ptr %50, ptr %13, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %193

74:                                               ; preds = %46
  %75 = load ptr, ptr %28, align 8
  %76 = call i32 @of_get_display_timing(ptr noundef %75, ptr noundef nonnull @.str.7, ptr noundef nonnull %7) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %193

78:                                               ; preds = %74
  %79 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false) #9, !annotation !10
  %80 = getelementptr inbounds %struct.panel_desc, ptr %79, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83, !prof !11

83:                                               ; preds = %78
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 505, i32 noundef 9, ptr noundef null) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.19) #10
  br label %192

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.panel_desc, ptr %79, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %109, label %88, !prof !12

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.panel_desc, ptr %79, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.display_timing, ptr %7, i32 0, i32 1, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.display_timing, ptr %7, i32 0, i32 2, i32 1
  %94 = getelementptr inbounds %struct.display_timing, ptr %7, i32 0, i32 3, i32 1
  %95 = getelementptr inbounds %struct.display_timing, ptr %7, i32 0, i32 4, i32 1
  %96 = getelementptr inbounds %struct.display_timing, ptr %7, i32 0, i32 5, i32 1
  %97 = getelementptr inbounds %struct.display_timing, ptr %7, i32 0, i32 6, i32 1
  %98 = getelementptr inbounds %struct.display_timing, ptr %7, i32 0, i32 7, i32 1
  %99 = getelementptr inbounds %struct.display_timing, ptr %7, i32 0, i32 8, i32 1
  %100 = getelementptr inbounds %struct.display_timing, ptr %7, i32 0, i32 9
  %101 = load i32, ptr %93, align 4
  %102 = load i32, ptr %94, align 4
  %103 = load i32, ptr %95, align 4
  %104 = load i32, ptr %96, align 4
  %105 = load i32, ptr %97, align 4
  %106 = load i32, ptr %98, align 4
  %107 = load i32, ptr %99, align 4
  %108 = load i32, ptr %100, align 4
  br label %110

109:                                              ; preds = %84
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 509, i32 noundef 9, ptr noundef null) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20) #10
  br label %192

110:                                              ; preds = %184, %88
  %111 = phi i32 [ 0, %88 ], [ %185, %184 ]
  %112 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = icmp ult i32 %92, %113
  br i1 %114, label %184, label %115

115:                                              ; preds = %110
  %116 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 1, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = icmp ugt i32 %92, %117
  br i1 %118, label %184, label %119

119:                                              ; preds = %115
  %120 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = icmp ult i32 %101, %121
  br i1 %122, label %184, label %123

123:                                              ; preds = %119
  %124 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 2, i32 2
  %125 = load i32, ptr %124, align 4
  %126 = icmp ugt i32 %101, %125
  br i1 %126, label %184, label %127

127:                                              ; preds = %123
  %128 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = icmp ult i32 %102, %129
  br i1 %130, label %184, label %131

131:                                              ; preds = %127
  %132 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 3, i32 2
  %133 = load i32, ptr %132, align 4
  %134 = icmp ugt i32 %102, %133
  br i1 %134, label %184, label %135

135:                                              ; preds = %131
  %136 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 4
  %137 = load i32, ptr %136, align 4
  %138 = icmp ult i32 %103, %137
  br i1 %138, label %184, label %139

139:                                              ; preds = %135
  %140 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 4, i32 2
  %141 = load i32, ptr %140, align 4
  %142 = icmp ugt i32 %103, %141
  br i1 %142, label %184, label %143

143:                                              ; preds = %139
  %144 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 5
  %145 = load i32, ptr %144, align 4
  %146 = icmp ult i32 %104, %145
  br i1 %146, label %184, label %147

147:                                              ; preds = %143
  %148 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 5, i32 2
  %149 = load i32, ptr %148, align 4
  %150 = icmp ugt i32 %104, %149
  br i1 %150, label %184, label %151

151:                                              ; preds = %147
  %152 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 6
  %153 = load i32, ptr %152, align 4
  %154 = icmp ult i32 %105, %153
  br i1 %154, label %184, label %155

155:                                              ; preds = %151
  %156 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 6, i32 2
  %157 = load i32, ptr %156, align 4
  %158 = icmp ugt i32 %105, %157
  br i1 %158, label %184, label %159

159:                                              ; preds = %155
  %160 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 7
  %161 = load i32, ptr %160, align 4
  %162 = icmp ult i32 %106, %161
  br i1 %162, label %184, label %163

163:                                              ; preds = %159
  %164 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 7, i32 2
  %165 = load i32, ptr %164, align 4
  %166 = icmp ugt i32 %106, %165
  br i1 %166, label %184, label %167

167:                                              ; preds = %163
  %168 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 8
  %169 = load i32, ptr %168, align 4
  %170 = icmp ult i32 %107, %169
  br i1 %170, label %184, label %171

171:                                              ; preds = %167
  %172 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 8, i32 2
  %173 = load i32, ptr %172, align 4
  %174 = icmp ugt i32 %107, %173
  br i1 %174, label %184, label %175

175:                                              ; preds = %171
  %176 = getelementptr %struct.display_timing, ptr %90, i32 %111, i32 9
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %108, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  call void @videomode_from_timing(ptr noundef nonnull %7, ptr noundef nonnull %3) #9
  %180 = getelementptr inbounds %struct.panel_simple, ptr %8, i32 0, i32 10
  call void @drm_display_mode_from_videomode(ptr noundef nonnull %3, ptr noundef %180) #9
  %181 = getelementptr inbounds %struct.panel_simple, ptr %8, i32 0, i32 10, i32 28
  %182 = load i8, ptr %181, align 2
  %183 = or i8 %182, 72
  store i8 %183, ptr %181, align 2
  br label %192

184:                                              ; preds = %175, %171, %167, %163, %159, %155, %151, %147, %143, %139, %135, %131, %127, %123, %119, %115, %110
  %185 = add nuw i32 %111, 1
  %186 = icmp eq i32 %185, %86
  br i1 %186, label %187, label %110

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.panel_simple, ptr %8, i32 0, i32 10, i32 28
  %189 = load i8, ptr %188, align 2
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %192, !prof !12

191:                                              ; preds = %187
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 537, i32 noundef 9, ptr noundef null) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21) #10
  br label %192

192:                                              ; preds = %191, %187, %179, %109, %83
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  br label %193

193:                                              ; preds = %192, %74, %61
  %194 = phi ptr [ %50, %61 ], [ %1, %74 ], [ %1, %192 ]
  %195 = getelementptr inbounds %struct.panel_desc, ptr %194, i32 0, i32 9
  %196 = load i32, ptr %195, align 4
  switch i32 %196, label %255 [
    i32 0, label %197
    i32 7, label %198
    i32 14, label %229
    i32 16, label %230
    i32 17, label %234
  ]

197:                                              ; preds = %193
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.8) #10
  br label %256

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.panel_desc, ptr %194, i32 0, i32 8
  %200 = load i32, ptr %199, align 4
  %201 = and i32 %200, -52
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %204, label %203, !prof !11

203:                                              ; preds = %198
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 609, i32 noundef 9, ptr noundef null) #9
  br label %204

204:                                              ; preds = %203, %198
  %205 = getelementptr inbounds %struct.panel_desc, ptr %194, i32 0, i32 7
  %206 = load i32, ptr %205, align 4
  %207 = add i32 %206, -4112
  %208 = icmp ult i32 %207, 3
  br i1 %208, label %211, label %209

209:                                              ; preds = %204
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 612, i32 noundef 9, ptr noundef null) #9
  %210 = load i32, ptr %205, align 4
  br label %211

211:                                              ; preds = %209, %204
  %212 = phi i32 [ %206, %204 ], [ %210, %209 ]
  %213 = icmp eq i32 %212, 4112
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.panel_desc, ptr %194, i32 0, i32 4
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, 6
  br i1 %217, label %256, label %218, !prof !11

218:                                              ; preds = %214
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 614, i32 noundef 9, ptr noundef null) #9
  %219 = load i32, ptr %205, align 4
  br label %220

220:                                              ; preds = %218, %211
  %221 = phi i32 [ %212, %211 ], [ %219, %218 ]
  %222 = add i32 %221, -4113
  %223 = icmp ult i32 %222, 2
  br i1 %223, label %224, label %256

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.panel_desc, ptr %194, i32 0, i32 4
  %226 = load i32, ptr %225, align 4
  %227 = icmp eq i32 %226, 8
  br i1 %227, label %256, label %228, !prof !11

228:                                              ; preds = %224
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 617, i32 noundef 9, ptr noundef null) #9
  br label %256

229:                                              ; preds = %193
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.10) #10
  br label %263

230:                                              ; preds = %193
  %231 = getelementptr inbounds %struct.panel_desc, ptr %194, i32 0, i32 4
  %232 = load i32, ptr %231, align 4
  switch i32 %232, label %233 [
    i32 6, label %256
    i32 8, label %256
  ]

233:                                              ; preds = %230
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %232) #10
  br label %256

234:                                              ; preds = %193
  %235 = getelementptr inbounds %struct.panel_desc, ptr %194, i32 0, i32 8
  %236 = load i32, ptr %235, align 4
  %237 = and i32 %236, -256
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %234
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %237) #10
  %240 = load i32, ptr %235, align 4
  br label %241

241:                                              ; preds = %239, %234
  %242 = phi i32 [ %240, %239 ], [ %236, %234 ]
  %243 = and i32 %242, 255
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %241
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.13) #10
  br label %246

246:                                              ; preds = %245, %241
  %247 = getelementptr inbounds %struct.panel_desc, ptr %194, i32 0, i32 7
  %248 = load i32, ptr %247, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.14) #10
  br label %251

251:                                              ; preds = %250, %246
  %252 = getelementptr inbounds %struct.panel_desc, ptr %194, i32 0, i32 4
  %253 = load i32, ptr %252, align 4
  switch i32 %253, label %254 [
    i32 6, label %256
    i32 8, label %256
  ]

254:                                              ; preds = %251
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %253) #10
  br label %256

255:                                              ; preds = %193
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %196) #10
  br label %256

256:                                              ; preds = %255, %254, %251, %251, %233, %230, %230, %228, %224, %220, %214, %197
  %257 = phi i32 [ 17, %255 ], [ 17, %254 ], [ 17, %251 ], [ 16, %233 ], [ 16, %230 ], [ 17, %197 ], [ 7, %220 ], [ 7, %228 ], [ 7, %224 ], [ 16, %230 ], [ 17, %251 ], [ 7, %214 ]
  %258 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %8, ptr %258, align 8
  call void @pm_runtime_enable(ptr noundef %0) #9
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %0, i32 noundef 1000) #9
  call void @__pm_runtime_use_autosuspend(ptr noundef %0, i1 noundef zeroext true) #9
  call void @drm_panel_init(ptr noundef nonnull %8, ptr noundef %0, ptr noundef nonnull @panel_simple_funcs, i32 noundef %257) #9
  %259 = call i32 @drm_panel_of_backlight(ptr noundef nonnull %8) #9
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  call void @drm_panel_add(ptr noundef nonnull %8) #9
  br label %270

262:                                              ; preds = %256
  call void @__pm_runtime_use_autosuspend(ptr noundef %0, i1 noundef zeroext false) #9
  call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #9
  br label %263

263:                                              ; preds = %262, %229, %59
  %264 = phi i32 [ %259, %262 ], [ -22, %229 ], [ %60, %59 ]
  %265 = getelementptr inbounds %struct.panel_simple, ptr %8, i32 0, i32 7
  %266 = load ptr, ptr %265, align 8
  %267 = icmp eq ptr %266, null
  br i1 %267, label %270, label %268

268:                                              ; preds = %263
  %269 = getelementptr inbounds %struct.i2c_adapter, ptr %266, i32 0, i32 9
  call void @put_device(ptr noundef %269) #9
  br label %270

270:                                              ; preds = %268, %263, %261, %41, %34, %25, %23, %17, %2
  %271 = phi i32 [ %18, %17 ], [ %31, %34 ], [ 0, %261 ], [ -12, %2 ], [ %26, %25 ], [ -517, %23 ], [ -517, %41 ], [ %264, %268 ], [ %264, %263 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #9
  ret i32 %271
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_drm_get_panel_orientation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_display_timing(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bus_flags_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @videomode_from_timing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_simple_prepare(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.panel_simple, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 1, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 4
  %11 = tail call i32 @__pm_runtime_suspend(ptr noundef %10, i32 noundef 13) #9
  br label %13

12:                                               ; preds = %5
  store i8 1, ptr %2, align 1
  br label %13

13:                                               ; preds = %12, %9, %1
  %14 = phi i32 [ %7, %9 ], [ 0, %12 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_simple_enable(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.panel_simple, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 8, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.panel_simple, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.panel_desc, ptr %7, i32 0, i32 6, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @msleep(i32 noundef %9) #9
  br label %12

12:                                               ; preds = %11, %5
  store i8 1, ptr %2, align 8
  br label %13

13:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_simple_disable(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.panel_simple, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 8, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.panel_simple, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.panel_desc, ptr %7, i32 0, i32 6, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @msleep(i32 noundef %9) #9
  br label %12

12:                                               ; preds = %11, %5
  store i8 0, ptr %2, align 8
  br label %13

13:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_simple_unprepare(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.panel_simple, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 1, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = tail call i64 @ktime_get_mono_fast_ns() #9
  %8 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 22
  store volatile i64 %7, ptr %8, align 8
  %9 = load ptr, ptr %0, align 4
  %10 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  store i8 0, ptr %2, align 1
  br label %13

13:                                               ; preds = %12, %5, %1
  %14 = phi i32 [ 0, %12 ], [ 0, %1 ], [ %10, %5 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_simple_get_modes(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.videomode, align 4
  %4 = getelementptr inbounds %struct.panel_simple, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #9
  %10 = getelementptr inbounds %struct.panel_simple, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load ptr, ptr %4, align 8
  %15 = tail call ptr @drm_get_edid(ptr noundef %1, ptr noundef %14) #9
  store ptr %15, ptr %10, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %15, %13 ], [ %11, %7 ]
  %19 = tail call i32 @drm_add_edid_modes(ptr noundef %1, ptr noundef nonnull %18) #9
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i32 [ %19, %17 ], [ 0, %13 ]
  %22 = load ptr, ptr %0, align 4
  %23 = tail call i64 @ktime_get_mono_fast_ns() #9
  %24 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 11, i32 22
  store volatile i64 %23, ptr %24, align 8
  %25 = load ptr, ptr %0, align 4
  %26 = tail call i32 @__pm_runtime_suspend(ptr noundef %25, i32 noundef 13) #9
  br label %27

27:                                               ; preds = %20, %2
  %28 = phi i32 [ %21, %20 ], [ 0, %2 ]
  %29 = getelementptr inbounds %struct.panel_simple, ptr %0, i32 0, i32 10
  %30 = getelementptr inbounds %struct.panel_simple, ptr %0, i32 0, i32 5
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %169, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.panel_simple, ptr %0, i32 0, i32 10, i32 28
  %35 = load i8, ptr %34, align 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %1, align 8
  %39 = tail call ptr @drm_mode_duplicate(ptr noundef %38, ptr noundef %29) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  tail call void @drm_mode_probed_add(ptr noundef %1, ptr noundef nonnull %39) #9
  %42 = load ptr, ptr %30, align 8
  %43 = getelementptr inbounds %struct.panel_desc, ptr %42, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  br label %88

45:                                               ; preds = %37
  %46 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.22) #10
  %47 = load ptr, ptr %30, align 8
  br label %48

48:                                               ; preds = %45, %33
  %49 = phi ptr [ %31, %33 ], [ %47, %45 ]
  %50 = getelementptr inbounds %struct.panel_desc, ptr %49, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %101, label %53

53:                                               ; preds = %81, %48
  %54 = phi ptr [ %84, %81 ], [ %49, %48 ]
  %55 = phi i32 [ %82, %81 ], [ 0, %48 ]
  %56 = phi i32 [ %83, %81 ], [ 0, %48 ]
  %57 = getelementptr inbounds %struct.panel_desc, ptr %54, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr %struct.display_timing, ptr %58, i32 %56
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false) #9, !annotation !10
  call void @videomode_from_timing(ptr noundef %59, ptr noundef nonnull %3) #9
  %60 = load ptr, ptr %1, align 8
  %61 = call ptr @drm_mode_create(ptr noundef %60) #9
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load ptr, ptr %0, align 8
  %65 = getelementptr %struct.display_timing, ptr %58, i32 %56, i32 1, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr %struct.display_timing, ptr %58, i32 %56, i32 5, i32 1
  %68 = load i32, ptr %67, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.23, i32 noundef %66, i32 noundef %68) #10
  br label %81

69:                                               ; preds = %53
  call void @drm_display_mode_from_videomode(ptr noundef nonnull %3, ptr noundef nonnull %61) #9
  %70 = getelementptr inbounds %struct.drm_display_mode, ptr %61, i32 0, i32 28
  %71 = load i8, ptr %70, align 2
  %72 = or i8 %71, 64
  store i8 %72, ptr %70, align 2
  %73 = load ptr, ptr %30, align 8
  %74 = getelementptr inbounds %struct.panel_desc, ptr %73, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = or i8 %71, 72
  store i8 %78, ptr %70, align 2
  br label %79

79:                                               ; preds = %77, %69
  call void @drm_mode_probed_add(ptr noundef %1, ptr noundef nonnull %61) #9
  %80 = add i32 %55, 1
  br label %81

81:                                               ; preds = %79, %63
  %82 = phi i32 [ %80, %79 ], [ %55, %63 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  %83 = add nuw i32 %56, 1
  %84 = load ptr, ptr %30, align 8
  %85 = getelementptr inbounds %struct.panel_desc, ptr %84, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = icmp ult i32 %83, %86
  br i1 %87, label %53, label %88

88:                                               ; preds = %81, %41
  %89 = phi i32 [ %44, %41 ], [ %86, %81 ]
  %90 = phi ptr [ %42, %41 ], [ %84, %81 ]
  %91 = phi i32 [ 1, %41 ], [ %82, %81 ]
  %92 = icmp eq i32 %89, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.panel_desc, ptr %90, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97, !prof !11

97:                                               ; preds = %93
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 257, i32 noundef 9, ptr noundef null) #9
  br label %98

98:                                               ; preds = %97, %93, %88
  %99 = icmp eq i32 %91, 0
  %100 = load ptr, ptr %30, align 8
  br i1 %99, label %101, label %143

101:                                              ; preds = %98, %48
  %102 = phi ptr [ %49, %48 ], [ %100, %98 ]
  %103 = getelementptr inbounds %struct.panel_desc, ptr %102, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %143, label %106

106:                                              ; preds = %136, %101
  %107 = phi ptr [ %139, %136 ], [ %102, %101 ]
  %108 = phi i32 [ %137, %136 ], [ 0, %101 ]
  %109 = phi i32 [ %138, %136 ], [ 0, %101 ]
  %110 = load ptr, ptr %107, align 4
  %111 = getelementptr %struct.drm_display_mode, ptr %110, i32 %109
  %112 = load ptr, ptr %1, align 8
  %113 = call ptr @drm_mode_duplicate(ptr noundef %112, ptr noundef %111) #9
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %124

115:                                              ; preds = %106
  %116 = load ptr, ptr %0, align 8
  %117 = getelementptr %struct.drm_display_mode, ptr %110, i32 %109, i32 1
  %118 = load i16, ptr %117, align 4
  %119 = zext i16 %118 to i32
  %120 = getelementptr %struct.drm_display_mode, ptr %110, i32 %109, i32 6
  %121 = load i16, ptr %120, align 2
  %122 = zext i16 %121 to i32
  %123 = call i32 @drm_mode_vrefresh(ptr noundef %111) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.24, i32 noundef %119, i32 noundef %122, i32 noundef %123) #10
  br label %136

124:                                              ; preds = %106
  %125 = getelementptr inbounds %struct.drm_display_mode, ptr %113, i32 0, i32 28
  %126 = load i8, ptr %125, align 2
  %127 = or i8 %126, 64
  store i8 %127, ptr %125, align 2
  %128 = load ptr, ptr %30, align 8
  %129 = getelementptr inbounds %struct.panel_desc, ptr %128, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = or i8 %126, 72
  store i8 %133, ptr %125, align 2
  br label %134

134:                                              ; preds = %132, %124
  call void @drm_mode_set_name(ptr noundef nonnull %113) #9
  call void @drm_mode_probed_add(ptr noundef %1, ptr noundef nonnull %113) #9
  %135 = add i32 %108, 1
  br label %136

136:                                              ; preds = %134, %115
  %137 = phi i32 [ %135, %134 ], [ %108, %115 ]
  %138 = add nuw i32 %109, 1
  %139 = load ptr, ptr %30, align 8
  %140 = getelementptr inbounds %struct.panel_desc, ptr %139, i32 0, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = icmp ult i32 %138, %141
  br i1 %142, label %106, label %143

143:                                              ; preds = %136, %101, %98
  %144 = phi ptr [ %102, %101 ], [ %100, %98 ], [ %139, %136 ]
  %145 = phi i32 [ 0, %101 ], [ %91, %98 ], [ %137, %136 ]
  %146 = getelementptr inbounds %struct.panel_desc, ptr %144, i32 0, i32 4
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20
  %149 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 2
  store i32 %147, ptr %149, align 8
  %150 = load ptr, ptr %30, align 8
  %151 = getelementptr inbounds %struct.panel_desc, ptr %150, i32 0, i32 5
  %152 = load i32, ptr %151, align 4
  store i32 %152, ptr %148, align 8
  %153 = load ptr, ptr %30, align 8
  %154 = getelementptr inbounds %struct.panel_desc, ptr %153, i32 0, i32 5, i32 1
  %155 = load i32, ptr %154, align 4
  %156 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 1
  store i32 %155, ptr %156, align 4
  %157 = load ptr, ptr %30, align 8
  %158 = getelementptr inbounds %struct.panel_desc, ptr %157, i32 0, i32 7
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %143
  %162 = call i32 @drm_display_info_set_bus_formats(ptr noundef %148, ptr noundef %158, i32 noundef 1) #9
  %163 = load ptr, ptr %30, align 8
  br label %164

164:                                              ; preds = %161, %143
  %165 = phi ptr [ %163, %161 ], [ %157, %143 ]
  %166 = getelementptr inbounds %struct.panel_desc, ptr %165, i32 0, i32 8
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 8
  store i32 %167, ptr %168, align 8
  br label %169

169:                                              ; preds = %164, %27
  %170 = phi i32 [ %145, %164 ], [ 0, %27 ]
  %171 = add i32 %170, %28
  %172 = getelementptr inbounds %struct.panel_simple, ptr %0, i32 0, i32 11
  %173 = load i32, ptr %172, align 4
  %174 = call i32 @drm_connector_set_panel_orientation(ptr noundef %1, i32 noundef %173) #9
  ret i32 %171
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_simple_get_timings(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.panel_simple, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.panel_desc, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %1)
  %9 = icmp ne ptr %2, null
  %10 = icmp ne i32 %8, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %25

12:                                               ; preds = %12, %3
  %13 = phi ptr [ %21, %12 ], [ %5, %3 ]
  %14 = phi i32 [ %19, %12 ], [ 0, %3 ]
  %15 = getelementptr %struct.display_timing, ptr %2, i32 %14
  %16 = getelementptr inbounds %struct.panel_desc, ptr %13, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.display_timing, ptr %17, i32 %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(112) %15, ptr noundef align 4 dereferenceable(112) %18, i32 112, i1 false)
  %19 = add nuw i32 %14, 1
  %20 = icmp eq i32 %19, %8
  %21 = load ptr, ptr %4, align 8
  br i1 %20, label %22, label %12

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.panel_desc, ptr %21, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi i32 [ %24, %22 ], [ %7, %3 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_set_panel_orientation(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_simple_platform_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @of_match_node(ptr noundef nonnull @platform_of_match, ptr noundef %3) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call fastcc i32 @panel_simple_probe(ptr noundef %7, ptr noundef %9)
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ %10, %6 ], [ -19, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_simple_platform_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @drm_panel_remove(ptr noundef %4) #9
  %5 = tail call i32 @drm_panel_disable(ptr noundef %4) #9
  %6 = tail call i32 @drm_panel_unprepare(ptr noundef %4) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext false) #9
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #9
  %7 = getelementptr inbounds %struct.panel_simple, ptr %4, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 9
  tail call void @put_device(ptr noundef %11) #9
  br label %12

12:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @panel_simple_platform_shutdown(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_panel_disable(ptr noundef %3) #9
  %5 = tail call i32 @drm_panel_unprepare(ptr noundef %3) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

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
!8 = !{i64 283841, i64 283868}
!9 = !{i64 284536, i64 284563, i64 284596, i64 284617, i64 284644, i64 284670}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i8 0, i8 2}
