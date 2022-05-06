; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sun4i_hdmi_variant = type { i8, i8, i32, i32, i32, %struct.reg_field, i8, i8, i8, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, i32, i8, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
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
%struct.component_ops = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.cec_connector_info = type { i32, %union.anon.75 }
%union.anon.75 = type { [16 x i32] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.74 = type { i32, ptr }
%struct.sun4i_hdmi = type { %struct.drm_connector, %struct.drm_encoder, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.73 }
%union.anon.73 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@sun4i_hdmi_of_table = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a10s-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_variant }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author270 = internal constant [56 x i8] c"author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description271 = internal constant [38 x i8] c"description=Allwinner A10 HDMI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license272 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@sun4i_variant = internal constant %struct.sun4i_hdmi_variant { i8 0, i8 0, i32 -25165824, i32 14207008, i32 -95488248, %struct.reg_field { i32 1320, i32 0, i32 6, i32 0, i32 0 }, i8 2, i8 1, i8 0, %struct.reg_field { i32 1280, i32 31, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 30, i32 30, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 1284, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1284, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 1292, i32 0, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 1296, i32 31, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1296, i32 4, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 1296, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 1308, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 1312, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 1344, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 1344, i32 8, i32 8, i32 0, i32 0 }, i32 1304, i8 0, i8 1 }, align 4
@sun5i_variant = internal constant %struct.sun4i_hdmi_variant { i8 0, i8 0, i32 -25165824, i32 14207024, i32 -95488248, %struct.reg_field { i32 1320, i32 0, i32 6, i32 0, i32 0 }, i8 2, i8 1, i8 0, %struct.reg_field { i32 1280, i32 31, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 30, i32 30, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 1284, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1284, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 1292, i32 0, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 1296, i32 31, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1296, i32 4, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 1296, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 1308, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 1312, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 1344, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 1344, i32 8, i32 8, i32 0, i32 0 }, i32 1304, i8 0, i8 1 }, align 4
@sun6i_variant = internal constant %struct.sun4i_hdmi_variant { i8 1, i8 1, i32 2122318079, i32 31379504, i32 -1169644792, %struct.reg_field { i32 1312, i32 0, i32 6, i32 0, i32 0 }, i8 1, i8 2, i8 1, %struct.reg_field { i32 1280, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 27, i32 27, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 31, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1292, i32 1, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1292, i32 1, i32 7, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 1300, i32 0, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 1304, i32 18, i32 18, i32 0, i32 0 }, %struct.reg_field { i32 1304, i32 4, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 1304, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 1288, i32 16, i32 25, i32 0, i32 0 }, %struct.reg_field { i32 1288, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 4, i32 4, i32 0, i32 0 }, i32 1408, i8 1, i8 0 }, align 4
@sun4i_hdmi_driver = internal global %struct.platform_driver { ptr @sun4i_hdmi_probe, ptr @sun4i_hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_hdmi_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"sun4i-hdmi\00", align 1
@sun4i_hdmi_ops = internal constant %struct.component_ops { ptr @sun4i_hdmi_bind, ptr @sun4i_hdmi_unbind }, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Couldn't map the HDMI encoder registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Couldn't get the HDMI reset control\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Couldn't deassert HDMI reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Couldn't get the HDMI bus clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Couldn't get the HDMI mod clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pll-0\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Couldn't get the HDMI PLL 0 clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"pll-1\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Couldn't get the HDMI PLL 1 clock\0A\00", align 1
@sun4i_hdmi_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1408, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"Couldn't create HDMI encoder regmap\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Couldn't create the TMDS clock\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"ddc\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Couldn't get the HDMI DDC clock\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Couldn't create the HDMI I2C adapter\0A\00", align 1
@sun4i_hdmi_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr @sun4i_hdmi_mode_valid, ptr null, ptr null, ptr null, ptr @sun4i_hdmi_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_hdmi_disable, ptr @sun4i_hdmi_enable, ptr @sun4i_hdmi_atomic_check }, align 4
@.str.17 = private unnamed_addr constant [38 x i8] c"Couldn't initialise the HDMI encoder\0A\00", align 1
@sun4i_hdmi_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @sun4i_hdmi_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sun4i_hdmi_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @sun4i_hdmi_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.18 = private unnamed_addr constant [40 x i8] c"Couldn't initialise the HDMI connector\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"ddc-i2c-bus\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Disabling the HDMI Output\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"Enabling the HDMI Output\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"Failed to get infoframes from mode\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"Failed to pack infoframes\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Monitor is %s monitor\0A\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"an HDMI\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"a DVI\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author270, ptr @__UNIQUE_ID_description271, ptr @__UNIQUE_ID_license272], section "llvm.metadata"

@__mod_of__sun4i_hdmi_of_table_device_table = dso_local alias [4 x %struct.of_device_id], ptr @sun4i_hdmi_of_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_hdmi_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_hdmi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_hdmi_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @sun4i_hdmi_ops) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_hdmi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @sun4i_hdmi_ops) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_hdmi_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.cec_connector_info, align 4
  %6 = getelementptr i8, ptr %0, i32 -16
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 1168, i32 noundef 3520) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %206, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %9, ptr %12, align 8
  %13 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 2
  store ptr %0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 29
  store ptr %8, ptr %14, align 4
  %15 = tail call ptr @of_device_get_match_data(ptr noundef %0) #8
  %16 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 32
  store ptr %15, ptr %16, align 8
  %17 = icmp eq ptr %15, null
  br i1 %17, label %206, label %18

18:                                               ; preds = %11
  %19 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %6, i32 noundef 0) #8
  %20 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 3
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  %23 = load ptr, ptr %20, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %206

25:                                               ; preds = %18
  %26 = load ptr, ptr %16, align 8
  %27 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %26, i32 0, i32 1
  %28 = load i8, ptr %27, align 1, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @__devm_reset_control_get(ptr noundef %0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %32 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 5
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #9
  %35 = load ptr, ptr %32, align 4
  %36 = ptrtoint ptr %35 to i32
  br label %206

37:                                               ; preds = %30
  %38 = tail call i32 @reset_control_deassert(ptr noundef %31) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #9
  br label %206

41:                                               ; preds = %37, %25
  %42 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.4) #8
  %43 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 6
  store ptr %42, ptr %43, align 8
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5) #9
  %46 = load ptr, ptr %43, align 8
  %47 = ptrtoint ptr %46 to i32
  br label %201

48:                                               ; preds = %41
  %49 = tail call i32 @clk_prepare(ptr noundef %42) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = tail call i32 @clk_enable(ptr noundef %42) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void @clk_unprepare(ptr noundef %42) #8
  br label %55

55:                                               ; preds = %54, %51, %48
  %56 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.6) #8
  %57 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 7
  store ptr %56, ptr %57, align 4
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #9
  %60 = load ptr, ptr %57, align 4
  %61 = ptrtoint ptr %60 to i32
  br label %198

62:                                               ; preds = %55
  %63 = tail call i32 @clk_prepare(ptr noundef %56) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = tail call i32 @clk_enable(ptr noundef %56) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void @clk_unprepare(ptr noundef %56) #8
  br label %69

69:                                               ; preds = %68, %65, %62
  %70 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.8) #8
  %71 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 9
  store ptr %70, ptr %71, align 4
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9) #9
  %74 = load ptr, ptr %71, align 4
  %75 = ptrtoint ptr %74 to i32
  br label %195

76:                                               ; preds = %69
  %77 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.10) #8
  %78 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 10
  store ptr %77, ptr %78, align 8
  %79 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #9
  %81 = load ptr, ptr %78, align 8
  %82 = ptrtoint ptr %81 to i32
  br label %195

83:                                               ; preds = %76
  %84 = load ptr, ptr %20, align 4
  %85 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %0, ptr noundef null, ptr noundef %84, ptr noundef nonnull @sun4i_hdmi_regmap_config, ptr noundef null, ptr noundef null) #8
  %86 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 4
  store ptr %85, ptr %86, align 8
  %87 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12) #9
  %89 = load ptr, ptr %86, align 8
  %90 = ptrtoint ptr %89 to i32
  br label %195

91:                                               ; preds = %83
  %92 = tail call i32 @sun4i_tmds_create(ptr noundef nonnull %9) #8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13) #9
  br label %195

95:                                               ; preds = %91
  %96 = load ptr, ptr %16, align 8
  %97 = load i8, ptr %96, align 4, !range !9
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %95
  %100 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.14) #8
  %101 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 8
  store ptr %100, ptr %101, align 8
  %102 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #9
  %104 = load ptr, ptr %101, align 8
  %105 = ptrtoint ptr %104 to i32
  br label %195

106:                                              ; preds = %95
  %107 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 12
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 8
  store ptr %108, ptr %109, align 8
  br label %110

110:                                              ; preds = %106, %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %111 = load ptr, ptr %20, align 4
  %112 = getelementptr i8, ptr %111, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 -2147483648) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %113 = load ptr, ptr %16, align 8
  %114 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %113, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = load ptr, ptr %20, align 4
  %117 = getelementptr i8, ptr %116, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #8, !srcloc !11
  %118 = load ptr, ptr %20, align 4
  %119 = getelementptr i8, ptr %118, i32 520
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %121 = and i32 %120, 240
  %122 = load ptr, ptr %16, align 8
  %123 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %122, i32 0, i32 4
  %124 = load i32, ptr %123, align 4
  %125 = or i32 %124, %121
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %126 = load ptr, ptr %20, align 4
  %127 = getelementptr i8, ptr %126, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %125) #8, !srcloc !11
  %128 = tail call i32 @sun4i_hdmi_i2c_create(ptr noundef %0, ptr noundef nonnull %9) #8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %110
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16) #9
  br label %195

131:                                              ; preds = %110
  %132 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %133 = load ptr, ptr %132, align 8
  %134 = tail call ptr @of_graph_get_remote_node(ptr noundef %133, i32 noundef 1, i32 noundef -1) #8
  %135 = icmp eq ptr %134, null
  br i1 %135, label %145, label %136

136:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #8, !annotation !8
  %137 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %134, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #8
  %138 = icmp ne i32 %137, 0
  %139 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #8
  call void @of_node_put(ptr noundef nonnull %134) #8
  %140 = icmp eq ptr %139, null
  %141 = select i1 %138, i1 true, i1 %140
  br i1 %141, label %145, label %142

142:                                              ; preds = %136
  %143 = call ptr @of_get_i2c_adapter_by_node(ptr noundef nonnull %139) #8
  call void @of_node_put(ptr noundef nonnull %139) #8
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142, %136, %131
  %146 = phi ptr [ inttoptr (i32 -19 to ptr), %136 ], [ inttoptr (i32 -22 to ptr), %131 ], [ inttoptr (i32 -517 to ptr), %142 ]
  %147 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 14
  store ptr %146, ptr %147, align 8
  br label %151

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 14
  store ptr %143, ptr %149, align 8
  %150 = icmp ugt ptr %143, inttoptr (i32 -4096 to ptr)
  br i1 %150, label %151, label %157

151:                                              ; preds = %148, %145
  %152 = phi ptr [ %147, %145 ], [ %149, %148 ]
  %153 = phi ptr [ %146, %145 ], [ %143, %148 ]
  %154 = ptrtoint ptr %153 to i32
  %155 = icmp eq ptr %153, inttoptr (i32 -19 to ptr)
  br i1 %155, label %156, label %191

156:                                              ; preds = %151
  store ptr null, ptr %152, align 8
  br label %157

157:                                              ; preds = %156, %148
  %158 = phi ptr [ %152, %156 ], [ %149, %148 ]
  %159 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 1
  %160 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 1, i32 11
  store ptr @sun4i_hdmi_helper_funcs, ptr %160, align 4
  %161 = call i32 @drm_simple_encoder_init(ptr noundef %2, ptr noundef %159, i32 noundef 2) #8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %157
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.17) #9
  br label %188

164:                                              ; preds = %157
  %165 = load ptr, ptr %132, align 8
  %166 = call i32 @drm_of_find_possible_crtcs(ptr noundef %2, ptr noundef %165) #8
  %167 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 1, i32 6
  store i32 %166, ptr %167, align 4
  %168 = icmp eq i32 %166, 0
  br i1 %168, label %188, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.drm_connector, ptr %9, i32 0, i32 35
  store ptr @sun4i_hdmi_connector_helper_funcs, ptr %170, align 4
  %171 = load ptr, ptr %158, align 8
  %172 = call i32 @drm_connector_init_with_ddc(ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull @sun4i_hdmi_connector_funcs, i32 noundef 11, ptr noundef %171) #8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18) #9
  br label %184

175:                                              ; preds = %169
  call void @cec_fill_conn_info_from_drm(ptr noundef nonnull %5, ptr noundef nonnull %9) #8
  %176 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 31
  %177 = load ptr, ptr %176, align 4
  call void @cec_s_conn_info(ptr noundef %177, ptr noundef nonnull %5) #8
  %178 = getelementptr inbounds %struct.drm_connector, ptr %9, i32 0, i32 33
  store i8 6, ptr %178, align 4
  %179 = load ptr, ptr %176, align 4
  %180 = call i32 @cec_register_adapter(ptr noundef %179, ptr noundef %0) #8
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %175
  %183 = call i32 @drm_connector_attach_encoder(ptr noundef nonnull %9, ptr noundef %159) #8
  br label %206

184:                                              ; preds = %175, %174
  %185 = phi i32 [ %172, %174 ], [ %180, %175 ]
  %186 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 31
  %187 = load ptr, ptr %186, align 4
  call void @cec_delete_adapter(ptr noundef %187) #8
  call void @drm_encoder_cleanup(ptr noundef %159) #8
  br label %188

188:                                              ; preds = %184, %164, %163
  %189 = phi i32 [ %161, %163 ], [ %185, %184 ], [ -517, %164 ]
  %190 = load ptr, ptr %158, align 8
  call void @i2c_put_adapter(ptr noundef %190) #8
  br label %191

191:                                              ; preds = %188, %151
  %192 = phi i32 [ %189, %188 ], [ %154, %151 ]
  %193 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 13
  %194 = load ptr, ptr %193, align 4
  call void @i2c_del_adapter(ptr noundef %194) #8
  br label %195

195:                                              ; preds = %191, %130, %103, %94, %88, %80, %73
  %196 = phi i32 [ %75, %73 ], [ %82, %80 ], [ %90, %88 ], [ %92, %94 ], [ %105, %103 ], [ %128, %130 ], [ %192, %191 ]
  %197 = load ptr, ptr %57, align 4
  call void @clk_disable(ptr noundef %197) #8
  call void @clk_unprepare(ptr noundef %197) #8
  br label %198

198:                                              ; preds = %195, %59
  %199 = phi i32 [ %61, %59 ], [ %196, %195 ]
  %200 = load ptr, ptr %43, align 8
  call void @clk_disable(ptr noundef %200) #8
  call void @clk_unprepare(ptr noundef %200) #8
  br label %201

201:                                              ; preds = %198, %45
  %202 = phi i32 [ %47, %45 ], [ %199, %198 ]
  %203 = getelementptr inbounds %struct.sun4i_hdmi, ptr %9, i32 0, i32 5
  %204 = load ptr, ptr %203, align 4
  %205 = call i32 @reset_control_assert(ptr noundef %204) #8
  br label %206

206:                                              ; preds = %201, %182, %40, %34, %22, %11, %3
  %207 = phi i32 [ %24, %22 ], [ %36, %34 ], [ %38, %40 ], [ %202, %201 ], [ 0, %182 ], [ -12, %3 ], [ -22, %11 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #8
  ret i32 %207
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_hdmi_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sun4i_hdmi, ptr %5, i32 0, i32 31
  %7 = load ptr, ptr %6, align 4
  tail call void @cec_unregister_adapter(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.sun4i_hdmi, ptr %5, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  tail call void @i2c_del_adapter(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.sun4i_hdmi, ptr %5, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  tail call void @i2c_put_adapter(ptr noundef %11) #8
  %12 = getelementptr inbounds %struct.sun4i_hdmi, ptr %5, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #8
  tail call void @clk_unprepare(ptr noundef %13) #8
  %14 = getelementptr inbounds %struct.sun4i_hdmi, ptr %5, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  tail call void @clk_disable(ptr noundef %15) #8
  tail call void @clk_unprepare(ptr noundef %15) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_tmds_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hdmi_i2c_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_fill_conn_info_from_drm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_conn_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_hdmi_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i32, ptr %1, align 4
  %4 = mul i32 %3, 1000
  %5 = udiv i32 %4, 200
  %6 = icmp ugt i32 %4, 165000000
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 112
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @clk_round_rate(ptr noundef %9, i32 noundef %4) #8
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = tail call i32 @llvm.umax.i32(i32 %10, i32 %4)
  %14 = tail call i32 @llvm.umin.i32(i32 %10, i32 %4)
  %15 = sub nsw i32 %13, %14
  %16 = icmp ult i32 %15, %5
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %7
  br label %18

18:                                               ; preds = %17, %12, %2
  %19 = phi i32 [ 14, %17 ], [ 15, %2 ], [ 0, %12 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_hdmi_mode_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 92
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, 1000
  %9 = tail call i32 @clk_set_rate(ptr noundef %5, i32 noundef %8) #8
  %10 = getelementptr i8, ptr %0, i32 112
  %11 = load ptr, ptr %10, align 8
  %12 = load i32, ptr %6, align 4
  %13 = mul i32 %12, 1000
  %14 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %13) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %15 = getelementptr i8, ptr %0, i32 76
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 134217728) #8, !srcloc !11
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr i8, ptr %18, i32 516
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %21 = and i32 %20, 64
  %22 = getelementptr i8, ptr %0, i32 192
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %27 = load ptr, ptr %15, align 4
  %28 = getelementptr i8, ptr %27, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #8, !srcloc !11
  %29 = load ptr, ptr %15, align 4
  %30 = getelementptr i8, ptr %29, i32 516
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %32 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %33 = load i16, ptr %32, align 4
  %34 = add i16 %33, 4095
  %35 = and i16 %34, 4095
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %38 = load i16, ptr %37, align 2
  %39 = add i16 %38, 4095
  %40 = and i16 %39, 4095
  %41 = zext i16 %40 to i32
  %42 = shl nuw nsw i32 %41, 16
  %43 = or i32 %42, %36
  %44 = load ptr, ptr %15, align 4
  %45 = getelementptr i8, ptr %44, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #8, !srcloc !11
  %46 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 4
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 2
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 9
  %53 = load i16, ptr %52, align 4
  %54 = zext i16 %53 to i32
  %55 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 7
  %56 = load i16, ptr %55, align 4
  %57 = zext i16 %56 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %58 = xor i32 %51, -1
  %59 = add nsw i32 %58, %48
  %60 = and i32 %59, 4095
  %61 = xor i32 %57, -1
  %62 = add nsw i32 %61, %54
  %63 = shl i32 %62, 16
  %64 = and i32 %63, 268369920
  %65 = or i32 %64, %60
  %66 = load ptr, ptr %15, align 4
  %67 = getelementptr i8, ptr %66, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #8, !srcloc !11
  %68 = load i16, ptr %49, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, ptr %32, align 4
  %71 = zext i16 %70 to i32
  %72 = load i16, ptr %55, align 4
  %73 = zext i16 %72 to i32
  %74 = load i16, ptr %37, align 2
  %75 = zext i16 %74 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %76 = xor i32 %71, -1
  %77 = add nsw i32 %76, %69
  %78 = and i32 %77, 4095
  %79 = xor i32 %75, -1
  %80 = add nsw i32 %79, %73
  %81 = shl i32 %80, 16
  %82 = and i32 %81, 268369920
  %83 = or i32 %82, %78
  %84 = load ptr, ptr %15, align 4
  %85 = getelementptr i8, ptr %84, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #8, !srcloc !11
  %86 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 3
  %87 = load i16, ptr %86, align 4
  %88 = zext i16 %87 to i32
  %89 = load i16, ptr %49, align 2
  %90 = zext i16 %89 to i32
  %91 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 8
  %92 = load i16, ptr %91, align 2
  %93 = zext i16 %92 to i32
  %94 = load i16, ptr %55, align 4
  %95 = zext i16 %94 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %96 = xor i32 %90, -1
  %97 = add nsw i32 %96, %88
  %98 = and i32 %97, 4095
  %99 = xor i32 %95, -1
  %100 = add nsw i32 %99, %93
  %101 = shl i32 %100, 16
  %102 = and i32 %101, 268369920
  %103 = or i32 %102, %98
  %104 = load ptr, ptr %15, align 4
  %105 = getelementptr i8, ptr %104, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #8, !srcloc !11
  %106 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 11
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 1
  %109 = and i32 %107, 4
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %110, i32 65011712, i32 65011714
  %112 = or i32 %111, %108
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %113 = load ptr, ptr %15, align 4
  %114 = getelementptr i8, ptr %113, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_hdmi_disable(ptr nocapture noundef readonly %0) #2 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20) #8
  %2 = getelementptr i8, ptr %0, i32 76
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %6 = and i32 %5, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  tail call void @arm_heavy_mb() #8
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #8, !srcloc !11
  %9 = getelementptr i8, ptr %0, i32 112
  %10 = load ptr, ptr %9, align 8
  tail call void @clk_disable(ptr noundef %10) #8
  tail call void @clk_unprepare(ptr noundef %10) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_hdmi_enable(ptr noundef %0) #2 {
  %2 = alloca %struct.hdmi_avi_infoframe, align 4
  %3 = alloca [17 x i8], align 1
  %4 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7
  %9 = getelementptr i8, ptr %0, i32 -968
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21) #8
  %10 = getelementptr i8, ptr %0, i32 112
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @clk_prepare(ptr noundef %11) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = tail call i32 @clk_enable(ptr noundef %11) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %18

18:                                               ; preds = %17, %14, %1
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %2, i8 0, i32 68, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %3, i8 0, i32 17, i1 false) #8, !annotation !8
  %19 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %2, ptr noundef %9, ptr noundef %8) #8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %18
  %22 = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 17) #8
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %0, i32 76
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i32 [ 0, %24 ], [ %33, %26 ]
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  call void @arm_heavy_mb() #8
  %28 = getelementptr [17 x i8], ptr %3, i32 0, i32 %27
  %29 = load i8, ptr %28, align 1
  %30 = load ptr, ptr %25, align 4
  %31 = add nuw nsw i32 %27, 128
  %32 = getelementptr i8, ptr %30, i32 %31
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %32, i8 %29) #8, !srcloc !28
  %33 = add nuw nsw i32 %27, 1
  %34 = icmp eq i32 %33, 17
  br i1 %34, label %37, label %26

35:                                               ; preds = %21, %18
  %36 = phi ptr [ @.str.22, %18 ], [ @.str.23, %21 ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull %36) #8
  br label %37

37:                                               ; preds = %35, %26
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %2) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  call void @arm_heavy_mb() #8
  %38 = getelementptr i8, ptr %0, i32 76
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 242) #8, !srcloc !11
  %41 = getelementptr i8, ptr %0, i32 184
  %42 = load i8, ptr %41, align 8, !range !9
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i32 -2147483648, i32 -1073741824
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  call void @arm_heavy_mb() #8
  %45 = load ptr, ptr %38, align 4
  %46 = getelementptr i8, ptr %45, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #8, !srcloc !11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_hdmi_atomic_check(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #6 {
  %4 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4096
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 0, i32 -22
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_hdmi_get_modes(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sun4i_hdmi, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sun4i_hdmi, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %10 = tail call ptr @drm_get_edid(ptr noundef %0, ptr noundef %9) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef nonnull %10) #8
  %14 = getelementptr inbounds %struct.sun4i_hdmi, ptr %0, i32 0, i32 30
  %15 = zext i1 %13 to i8
  store i8 %15, ptr %14, align 8
  %16 = select i1 %13, ptr @.str.25, ptr @.str.26
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, ptr noundef nonnull %16) #8
  %17 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef nonnull %10) #8
  %18 = getelementptr inbounds %struct.sun4i_hdmi, ptr %0, i32 0, i32 31
  %19 = load ptr, ptr %18, align 4
  tail call void @cec_s_phys_addr_from_edid(ptr noundef %19, ptr noundef nonnull %10) #8
  %20 = tail call i32 @drm_add_edid_modes(ptr noundef %0, ptr noundef nonnull %10) #8
  tail call void @kfree(ptr noundef nonnull %10) #8
  br label %21

21:                                               ; preds = %12, %8
  %22 = phi i32 [ %20, %12 ], [ 0, %8 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr_from_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_hdmi_connector_detect(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.sun4i_hdmi, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !31
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sun4i_hdmi, ptr %0, i32 0, i32 31
  %11 = load ptr, ptr %10, align 4
  tail call void @cec_s_phys_addr(ptr noundef %11, i16 noundef zeroext -1, i1 noundef zeroext false) #8
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i32 [ 2, %9 ], [ 1, %2 ]
  ret i32 %13
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
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 2155734660}
!11 = !{i64 2508760}
!12 = !{i64 2155735062}
!13 = !{i64 2509178}
!14 = !{i64 2155735595}
!15 = !{i64 2155736461}
!16 = !{i64 2155696748}
!17 = !{i64 2155697271}
!18 = !{i64 2155697545}
!19 = !{i64 2155698018}
!20 = !{i64 2155700288}
!21 = !{i64 2155703924}
!22 = !{i64 2155707508}
!23 = !{i64 2155711092}
!24 = !{i64 2155712842}
!25 = !{i64 2155695015}
!26 = !{i64 2155695291}
!27 = !{i64 2155694514}
!28 = !{i64 2508563}
!29 = !{i64 2155695811}
!30 = !{i64 2155696317}
!31 = !{i64 2155717301}
