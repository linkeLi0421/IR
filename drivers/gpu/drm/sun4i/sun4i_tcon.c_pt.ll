; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun4i_tcon.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_tcon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_tcon_enable_vblank:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_tcon_enable_vblank\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_tcon_enable_vblank:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_tcon_mode_set:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_tcon_mode_set\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_tcon_mode_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_tcon_of_table:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_tcon_of_table\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_tcon_of_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sun4i_tcon_quirks = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.sun4i_tcon = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.list_head }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.72 }
%union.anon.72 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.73 = type { i32, ptr }
%struct.sun4i_drv = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sunxi_engine = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.sun4i_crtc = type { %struct.drm_crtc, ptr, ptr, ptr }
%struct.sunxi_engine_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [40 x i8] c"Unknown encoder type, doing nothing...\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%sabling VBLANK interrupt\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@__kstrtab_sun4i_tcon_enable_vblank = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_tcon_enable_vblank = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_tcon_enable_vblank = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_tcon_enable_vblank to i32), ptr @__kstrtab_sun4i_tcon_enable_vblank, ptr @__kstrtabns_sun4i_tcon_enable_vblank }, section "___ksymtab+sun4i_tcon_enable_vblank", align 4
@__kstrtab_sun4i_tcon_mode_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_tcon_mode_set = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_tcon_mode_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_tcon_mode_set to i32), ptr @__kstrtab_sun4i_tcon_mode_set, ptr @__kstrtabns_sun4i_tcon_mode_set }, section "___ksymtab+sun4i_tcon_mode_set", align 4
@sun4i_a10_quirks = internal constant %struct.sun4i_tcon_quirks { i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, ptr @sun4i_a10_tcon_set_mux, ptr null }, align 4
@sun5i_a13_quirks = internal constant %struct.sun4i_tcon_quirks { i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, ptr @sun5i_a13_tcon_set_mux, ptr null }, align 4
@sun6i_a31_quirks = internal constant %struct.sun4i_tcon_quirks { i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 1, ptr @sun6i_tcon_set_mux, ptr null }, align 4
@sun6i_a31s_quirks = internal constant %struct.sun4i_tcon_quirks { i8 1, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, ptr null, ptr null }, align 4
@sun7i_a20_quirks = internal constant %struct.sun4i_tcon_quirks { i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, ptr @sun4i_a10_tcon_set_mux, ptr null }, align 4
@sun7i_a20_tcon0_quirks = internal constant %struct.sun4i_tcon_quirks { i8 1, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 4, ptr @sun4i_a10_tcon_set_mux, ptr @sun4i_tcon_setup_lvds_phy }, align 4
@sun8i_a33_quirks = internal constant %struct.sun4i_tcon_quirks { i8 1, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 1, ptr null, ptr @sun6i_tcon_setup_lvds_phy }, align 4
@sun8i_a83t_lcd_quirks = internal constant %struct.sun4i_tcon_quirks { i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, ptr null, ptr @sun6i_tcon_setup_lvds_phy }, align 4
@sun8i_a83t_tv_quirks = internal constant %struct.sun4i_tcon_quirks { i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, align 4
@sun8i_r40_tv_quirks = internal constant %struct.sun4i_tcon_quirks { i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, ptr @sun8i_r40_tcon_tv_set_mux, ptr null }, align 4
@sun8i_v3s_quirks = internal constant %struct.sun4i_tcon_quirks { i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, ptr null, ptr null }, align 4
@sun9i_a80_tcon_lcd_quirks = internal constant %struct.sun4i_tcon_quirks { i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 1, ptr null, ptr null }, align 4
@sun9i_a80_tcon_tv_quirks = internal constant %struct.sun4i_tcon_quirks { i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, ptr null, ptr null }, align 4
@sun4i_tcon_of_table = dso_local constant [16 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-tcon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-tcon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_a13_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-tcon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31s-tcon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31s_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-tcon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_a20_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-tcon0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_a20_tcon0_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-tcon1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_a20_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-tcon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a33_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-tcon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a33_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-tcon-lcd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_lcd_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-tcon-tv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_tv_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-tcon-tv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_tv_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-tcon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_v3s_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-tcon-lcd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_tcon_lcd_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-tcon-tv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_tcon_tv_quirks }, %struct.of_device_id zeroinitializer], align 4
@__kstrtab_sun4i_tcon_of_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_tcon_of_table = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_tcon_of_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_tcon_of_table to i32), ptr @__kstrtab_sun4i_tcon_of_table, ptr @__kstrtabns_sun4i_tcon_of_table }, section "___ksymtab+sun4i_tcon_of_table", align 4
@__UNIQUE_ID_author267 = internal constant [56 x i8] c"author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description268 = internal constant [51 x i8] c"description=Allwinner A10 Timing Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"drivers/gpu/drm/sun4i/sun4i_tcon.c\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Setting horizontal total %d, backporch %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Setting vertical total %d, backporch %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"TCON %d clock delay %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Setting HSYNC %d, VSYNC %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Muxing encoder %s to CRTC %s: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"TCON0 not found, display output muxing may not work\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@sun4i_tcon_platform_driver = internal global %struct.platform_driver { ptr @sun4i_tcon_probe, ptr @sun4i_tcon_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_tcon_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.13 = private unnamed_addr constant [11 x i8] c"sun4i-tcon\00", align 1
@sun4i_tcon_ops = internal constant %struct.component_ops { ptr @sun4i_tcon_bind, ptr @sun4i_tcon_unbind }, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"Couldn't find matching engine\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"lcd\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Couldn't get our reset line\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"edp\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Couldn't get edp reset line\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Couldn't deassert edp reset line\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Couldn't deassert our reset line\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"lvds\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"lvds-alt\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"Couldn't get the LVDS PLL\0A\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"Missing LVDS properties, Please upgrade your DT\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"LVDS output disabled\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Couldn't init our TCON clocks\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Couldn't init our TCON regmap\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"Couldn't create our TCON dot clock\0A\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Couldn't init our TCON interrupts\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"Couldn't create our CRTC\0A\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"panel-lvds\00", align 1
@sun8i_tcon_top_of_table = external dso_local constant [0 x %struct.of_device_id], align 4
@.str.32 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"Couldn't get the TCON bus clock\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"tcon-ch0\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"Couldn't get the TCON channel 0 clock\0A\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"tcon-ch1\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"Couldn't get the TCON channel 1 clock\0A\00", align 1
@sun4i_tcon_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 2048, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.38 = private unnamed_addr constant [33 x i8] c"Couldn't create the TCON regmap\0A\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"Couldn't request the IRQ\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author267, ptr @__UNIQUE_ID_description268, ptr @__UNIQUE_ID_license269, ptr @__ksymtab_sun4i_tcon_enable_vblank, ptr @__ksymtab_sun4i_tcon_mode_set, ptr @__ksymtab_sun4i_tcon_of_table], section "llvm.metadata"
@switch.table.sun4i_tcon_mode_set = private unnamed_addr constant [4 x i32] [i32 24, i32 24, i32 18, i32 16], align 4

@__mod_of__sun4i_tcon_of_table_device_table = dso_local alias [16 x %struct.of_device_id], ptr @sun4i_tcon_of_table

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sun4i_tcon_set_status(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %7 [
    i32 3, label %8
    i32 6, label %13
    i32 0, label %13
    i32 2, label %6
    i32 4, label %6
  ]

6:                                                ; preds = %3, %3
  br label %13

7:                                                ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  br label %64

8:                                                ; preds = %3
  br i1 %2, label %13, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 132, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %13

13:                                               ; preds = %9, %8, %6, %3, %3
  %14 = phi i1 [ false, %8 ], [ false, %9 ], [ true, %6 ], [ true, %3 ], [ true, %3 ]
  %15 = phi i1 [ true, %8 ], [ true, %9 ], [ false, %6 ], [ true, %3 ], [ true, %3 ]
  %16 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = select i1 %2, i32 -2147483648, i32 0
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef -2147483648, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %20 = xor i1 %2, true
  %21 = or i1 %14, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr %16, align 4
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 132, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %25 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %26, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  tail call void %28(ptr noundef %0, ptr noundef %1) #6
  br label %31

31:                                               ; preds = %30, %22, %13
  %32 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 12
  %33 = load ptr, ptr %32, align 4
  br i1 %15, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8, ptr %33, align 4, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %38, !prof !9

37:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 90, i32 noundef 9, ptr noundef null) #6
  br label %38

38:                                               ; preds = %37, %34
  %39 = load ptr, ptr %16, align 4
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 64, i32 noundef -2147483648, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %41 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 7
  br label %51

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %33, i32 0, i32 1
  %44 = load i8, ptr %43, align 1, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47, !prof !9

46:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 97, i32 noundef 9, ptr noundef null) #6
  br label %47

47:                                               ; preds = %46, %42
  %48 = load ptr, ptr %16, align 4
  %49 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 144, i32 noundef -2147483648, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %50 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 5
  br label %51

51:                                               ; preds = %47, %38
  %52 = phi ptr [ %50, %47 ], [ %41, %38 ]
  %53 = load ptr, ptr %52, align 4
  br i1 %2, label %54, label %63

54:                                               ; preds = %51
  %55 = tail call i32 @clk_prepare(ptr noundef %53) #6
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = tail call i32 @clk_enable(ptr noundef %53) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void @clk_unprepare(ptr noundef %53) #6
  br label %61

61:                                               ; preds = %60, %57, %54
  %62 = tail call i32 @clk_rate_exclusive_get(ptr noundef %53) #6
  br label %64

63:                                               ; preds = %51
  tail call void @clk_rate_exclusive_put(ptr noundef %53) #6
  tail call void @clk_disable(ptr noundef %53) #6
  tail call void @clk_unprepare(ptr noundef %53) #6
  br label %64

64:                                               ; preds = %63, %61, %7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sun4i_tcon_enable_vblank(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = select i1 %1, ptr @.str.2, ptr @.str.3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #6
  %4 = select i1 %1, i32 -939524096, i32 0
  %5 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 4, i32 noundef -939524096, i32 noundef %4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sun4i_tcon_mode_set(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) #0 {
  %4 = alloca %struct.drm_connector_list_iter, align 8
  %5 = alloca %struct.drm_connector_list_iter, align 8
  %6 = alloca %struct.drm_connector_list_iter, align 8
  %7 = alloca %struct.drm_connector_list_iter, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %568 [
    i32 6, label %11
    i32 3, label %115
    i32 0, label %243
    i32 4, label %391
    i32 2, label %391
  ]

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %1, i32 116
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mipi_dsi_device, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds [4 x i32], ptr @switch.table.sun4i_tcon_mode_set, i32 0, i32 %15
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi i32 [ %19, %17 ], [ 234, %11 ]
  %22 = getelementptr inbounds %struct.mipi_dsi_device, ptr %13, i32 0, i32 4
  %23 = load i32, ptr %22, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 0, ptr %8, align 4, !annotation !10
  %24 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 9
  store i8 4, ptr %24, align 1
  %25 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 8
  store i8 4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 12
  %29 = load i32, ptr %28, align 4
  %30 = mul i32 %29, 1000
  %31 = tail call i32 @clk_set_rate(ptr noundef %27, i32 noundef %30) #6
  %32 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 13
  %35 = load i16, ptr %34, align 4
  %36 = add i16 %35, 4095
  %37 = and i16 %36, 4095
  %38 = zext i16 %37 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 20
  %41 = load i16, ptr %40, align 2
  %42 = add i16 %41, 4095
  %43 = and i16 %42, 4095
  %44 = zext i16 %43 to i32
  %45 = or i32 %39, %44
  %46 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 72, i32 noundef %45) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  store i64 0, ptr %7, align 8, !annotation !10
  %47 = load ptr, ptr %1, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %47, ptr noundef nonnull %7) #6
  br label %48

48:                                               ; preds = %51, %20
  %49 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %7) #6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.drm_connector, ptr %49, i32 0, i32 41
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %1
  br i1 %54, label %55, label %48

55:                                               ; preds = %51, %48
  call void @drm_connector_list_iter_end(ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call fastcc void @sun4i_tcon0_mode_set_dithering(ptr noundef %0, ptr noundef %49) #6
  %56 = load ptr, ptr %32, align 4
  %57 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 64, i32 noundef 50331648, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %58 = load ptr, ptr %32, align 4
  %59 = call i32 @regmap_write(ptr noundef %58, i32 noundef 248, i32 noundef 8) #6
  %60 = load ptr, ptr %32, align 4
  %61 = call i32 @regmap_write(ptr noundef %60, i32 noundef 96, i32 noundef 268500997) #6
  %62 = load ptr, ptr %32, align 4
  %63 = call i32 @regmap_read(ptr noundef %62, i32 noundef 68, ptr noundef nonnull %8) #6
  %64 = load i32, ptr %8, align 4
  %65 = and i32 %64, 127
  store i32 %65, ptr %8, align 4
  %66 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 4
  %67 = load i16, ptr %66, align 2
  %68 = zext i16 %67 to i32
  %69 = mul nuw nsw i32 %21, %68
  %70 = and i32 %23, 255
  %71 = mul nuw nsw i32 %65, %70
  %72 = udiv i32 %69, %71
  %73 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 1
  %74 = load i16, ptr %73, align 4
  %75 = zext i16 %74 to i32
  %76 = load ptr, ptr %32, align 4
  %77 = add nuw nsw i32 %72, 4055
  %78 = sub nsw i32 %77, %75
  %79 = shl i32 %78, 16
  %80 = and i32 %79, 268369920
  %81 = add nuw nsw i32 %75, 4095
  %82 = and i32 %81, 4095
  %83 = or i32 %80, %82
  %84 = call i32 @regmap_write(ptr noundef %76, i32 noundef 352, i32 noundef %83) #6
  %85 = load ptr, ptr %32, align 4
  %86 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 6
  %87 = load i16, ptr %86, align 2
  %88 = add i16 %87, -1
  %89 = zext i16 %88 to i32
  %90 = call i32 @regmap_write(ptr noundef %85, i32 noundef 356, i32 noundef %89) #6
  %91 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 25
  %92 = load i16, ptr %91, align 4
  %93 = zext i16 %92 to i32
  %94 = load i16, ptr %40, align 2
  %95 = zext i16 %94 to i32
  %96 = add nsw i32 %93, -11
  %97 = sub nsw i32 %96, %95
  %98 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 18
  %99 = load i16, ptr %98, align 2
  %100 = zext i16 %99 to i32
  %101 = mul nuw nsw i32 %100, 149
  %102 = mul i32 %101, %97
  %103 = load i32, ptr %28, align 4
  %104 = sdiv i32 %103, 1000
  %105 = udiv i32 %102, %104
  %106 = load ptr, ptr %32, align 4
  %107 = shl i32 %105, 13
  %108 = and i32 %107, -65536
  %109 = or i32 %108, 10
  %110 = call i32 @regmap_write(ptr noundef %106, i32 noundef 360, i32 noundef %109) #6
  %111 = load ptr, ptr %32, align 4
  %112 = call i32 @regmap_write(ptr noundef %111, i32 noundef 496, i32 noundef 196608003) #6
  %113 = load ptr, ptr %32, align 4
  %114 = call i32 @regmap_write(ptr noundef %113, i32 noundef 140, i32 noundef -536870912) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  br label %569

115:                                              ; preds = %3
  %116 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 12
  %117 = load ptr, ptr %116, align 4
  %118 = load i8, ptr %117, align 4, !range !8
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %121, !prof !9

120:                                              ; preds = %115
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 436, i32 noundef 9, ptr noundef null) #6
  br label %121

121:                                              ; preds = %120, %115
  %122 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 9
  store i8 7, ptr %122, align 1
  %123 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 8
  store i8 7, ptr %123, align 4
  %124 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 7
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 12
  %127 = load i32, ptr %126, align 4
  %128 = mul i32 %127, 1000
  %129 = tail call i32 @clk_set_rate(ptr noundef %125, i32 noundef %128) #6
  %130 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 13
  %133 = load i16, ptr %132, align 4
  %134 = add i16 %133, 4095
  %135 = and i16 %134, 4095
  %136 = zext i16 %135 to i32
  %137 = shl nuw nsw i32 %136, 16
  %138 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 20
  %139 = load i16, ptr %138, align 2
  %140 = add i16 %139, 4095
  %141 = and i16 %140, 4095
  %142 = zext i16 %141 to i32
  %143 = or i32 %137, %142
  %144 = tail call i32 @regmap_write(ptr noundef %131, i32 noundef 72, i32 noundef %143) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  store i64 0, ptr %6, align 8, !annotation !10
  %145 = load ptr, ptr %1, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %145, ptr noundef nonnull %6) #6
  br label %146

146:                                              ; preds = %149, %121
  %147 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %6) #6
  %148 = icmp eq ptr %147, null
  br i1 %148, label %153, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.drm_connector, ptr %147, i32 0, i32 41
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, %1
  br i1 %152, label %153, label %146

153:                                              ; preds = %149, %146
  call void @drm_connector_list_iter_end(ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call fastcc void @sun4i_tcon0_mode_set_dithering(ptr noundef %0, ptr noundef %147) #6
  %154 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 9
  %155 = load i16, ptr %154, align 4
  %156 = zext i16 %155 to i32
  %157 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 6
  %158 = load i16, ptr %157, align 2
  %159 = zext i16 %158 to i32
  %160 = sub nsw i32 %156, %159
  %161 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 11
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, 16
  %164 = icmp eq i32 %163, 0
  %165 = sdiv i32 %160, 2
  %166 = select i1 %164, i32 %160, i32 %165
  %167 = call i32 @llvm.smin.i32(i32 %166, i32 30) #6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef %167) #6
  %168 = load ptr, ptr %130, align 4
  %169 = shl nsw i32 %167, 4
  %170 = and i32 %169, 496
  %171 = call i32 @regmap_update_bits_base(ptr noundef %168, i32 noundef 64, i32 noundef 496, i32 noundef %170, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %172 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 18
  %173 = load i16, ptr %172, align 2
  %174 = zext i16 %173 to i32
  %175 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 16
  %176 = load i16, ptr %175, align 2
  %177 = zext i16 %176 to i32
  %178 = sub nsw i32 %174, %177
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %174, i32 noundef %178) #6
  %179 = load ptr, ptr %130, align 4
  %180 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 4
  %181 = load i16, ptr %180, align 2
  %182 = add i16 %181, 8191
  %183 = and i16 %182, 8191
  %184 = zext i16 %183 to i32
  %185 = shl nuw nsw i32 %184, 16
  %186 = add nsw i32 %178, 4095
  %187 = and i32 %186, 4095
  %188 = or i32 %185, %187
  %189 = call i32 @regmap_write(ptr noundef %179, i32 noundef 76, i32 noundef %188) #6
  %190 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 25
  %191 = load i16, ptr %190, align 4
  %192 = zext i16 %191 to i32
  %193 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 23
  %194 = load i16, ptr %193, align 4
  %195 = zext i16 %194 to i32
  %196 = sub nsw i32 %192, %195
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %192, i32 noundef %196) #6
  %197 = load ptr, ptr %130, align 4
  %198 = load i16, ptr %190, align 4
  %199 = zext i16 %198 to i32
  %200 = shl i32 %199, 17
  %201 = and i32 %200, 536739840
  %202 = add nsw i32 %196, 4095
  %203 = and i32 %202, 4095
  %204 = or i32 %201, %203
  %205 = call i32 @regmap_write(ptr noundef %197, i32 noundef 80, i32 noundef %204) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 0, ptr %5, align 8, !annotation !10
  %206 = load ptr, ptr %1, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %206, ptr noundef nonnull %5) #6
  br label %207

207:                                              ; preds = %211, %153
  %208 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %5) #6
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  call void @drm_connector_list_iter_end(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %225

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.drm_connector, ptr %208, i32 0, i32 41
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, %1
  br i1 %214, label %215, label %207

215:                                              ; preds = %211
  call void @drm_connector_list_iter_end(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %216 = getelementptr inbounds %struct.drm_connector, ptr %208, i32 0, i32 20, i32 7
  %217 = load i32, ptr %216, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %225

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.drm_connector, ptr %208, i32 0, i32 20, i32 6
  %221 = load ptr, ptr %220, align 8
  %222 = load i32, ptr %221, align 4
  %223 = add i32 %222, -4113
  %224 = icmp ult i32 %223, 2
  br i1 %224, label %226, label %225

225:                                              ; preds = %219, %215, %210
  br label %226

226:                                              ; preds = %225, %219
  %227 = phi i32 [ 68157440, %225 ], [ 1048576, %219 ]
  %228 = load ptr, ptr %130, align 4
  %229 = call i32 @regmap_write(ptr noundef %228, i32 noundef 132, i32 noundef %227) #6
  %230 = load i32, ptr %161, align 4
  %231 = shl i32 %230, 25
  %232 = and i32 %231, 33554432
  %233 = shl i32 %230, 22
  %234 = and i32 %233, 16777216
  %235 = or i32 %232, %234
  %236 = xor i32 %235, 50331648
  %237 = load ptr, ptr %130, align 4
  %238 = call i32 @regmap_write(ptr noundef %237, i32 noundef 136, i32 noundef %236) #6
  %239 = load ptr, ptr %130, align 4
  %240 = call i32 @regmap_update_bits_base(ptr noundef %239, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %241 = load ptr, ptr %130, align 4
  %242 = call i32 @regmap_write(ptr noundef %241, i32 noundef 140, i32 noundef -536870912) #6
  br label %569

243:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 0, ptr %4, align 8, !annotation !10
  %244 = load ptr, ptr %1, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %244, ptr noundef nonnull %4) #6
  br label %245

245:                                              ; preds = %248, %243
  %246 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #6
  %247 = icmp eq ptr %246, null
  br i1 %247, label %252, label %248

248:                                              ; preds = %245
  %249 = getelementptr inbounds %struct.drm_connector, ptr %246, i32 0, i32 41
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, %1
  br i1 %251, label %252, label %245

252:                                              ; preds = %248, %245
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %253 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 12
  %254 = load ptr, ptr %253, align 4
  %255 = load i8, ptr %254, align 4, !range !8
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %259, !prof !9

257:                                              ; preds = %252
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 513, i32 noundef 9, ptr noundef null) #6
  %258 = load ptr, ptr %253, align 4
  br label %259

259:                                              ; preds = %257, %252
  %260 = phi ptr [ %258, %257 ], [ %254, %252 ]
  %261 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %260, i32 0, i32 7
  %262 = load i8, ptr %261, align 1
  %263 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 9
  store i8 %262, ptr %263, align 1
  %264 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 8
  store i8 127, ptr %264, align 4
  %265 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 7
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 12
  %268 = load i32, ptr %267, align 4
  %269 = mul i32 %268, 1000
  %270 = call i32 @clk_set_rate(ptr noundef %266, i32 noundef %269) #6
  %271 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 2
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 13
  %274 = load i16, ptr %273, align 4
  %275 = add i16 %274, 4095
  %276 = and i16 %275, 4095
  %277 = zext i16 %276 to i32
  %278 = shl nuw nsw i32 %277, 16
  %279 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 20
  %280 = load i16, ptr %279, align 2
  %281 = add i16 %280, 4095
  %282 = and i16 %281, 4095
  %283 = zext i16 %282 to i32
  %284 = or i32 %278, %283
  %285 = call i32 @regmap_write(ptr noundef %272, i32 noundef 72, i32 noundef %284) #6
  call fastcc void @sun4i_tcon0_mode_set_dithering(ptr noundef %0, ptr noundef %246) #6
  %286 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 9
  %287 = load i16, ptr %286, align 4
  %288 = zext i16 %287 to i32
  %289 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 6
  %290 = load i16, ptr %289, align 2
  %291 = zext i16 %290 to i32
  %292 = sub nsw i32 %288, %291
  %293 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 11
  %294 = load i32, ptr %293, align 4
  %295 = and i32 %294, 16
  %296 = icmp eq i32 %295, 0
  %297 = sdiv i32 %292, 2
  %298 = select i1 %296, i32 %292, i32 %297
  %299 = call i32 @llvm.smin.i32(i32 %298, i32 30) #6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef %299) #6
  %300 = load ptr, ptr %271, align 4
  %301 = shl nsw i32 %299, 4
  %302 = and i32 %301, 496
  %303 = call i32 @regmap_update_bits_base(ptr noundef %300, i32 noundef 64, i32 noundef 496, i32 noundef %302, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %304 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 18
  %305 = load i16, ptr %304, align 2
  %306 = zext i16 %305 to i32
  %307 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 16
  %308 = load i16, ptr %307, align 2
  %309 = zext i16 %308 to i32
  %310 = sub nsw i32 %306, %309
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %306, i32 noundef %310) #6
  %311 = load ptr, ptr %271, align 4
  %312 = load i16, ptr %304, align 2
  %313 = add i16 %312, 8191
  %314 = and i16 %313, 8191
  %315 = zext i16 %314 to i32
  %316 = shl nuw nsw i32 %315, 16
  %317 = add nsw i32 %310, 4095
  %318 = and i32 %317, 4095
  %319 = or i32 %316, %318
  %320 = call i32 @regmap_write(ptr noundef %311, i32 noundef 76, i32 noundef %319) #6
  %321 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 25
  %322 = load i16, ptr %321, align 4
  %323 = zext i16 %322 to i32
  %324 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 23
  %325 = load i16, ptr %324, align 4
  %326 = zext i16 %325 to i32
  %327 = sub nsw i32 %323, %326
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %323, i32 noundef %327) #6
  %328 = load ptr, ptr %271, align 4
  %329 = load i16, ptr %321, align 4
  %330 = zext i16 %329 to i32
  %331 = shl i32 %330, 17
  %332 = and i32 %331, 536739840
  %333 = add nsw i32 %327, 4095
  %334 = and i32 %333, 4095
  %335 = or i32 %332, %334
  %336 = call i32 @regmap_write(ptr noundef %328, i32 noundef 80, i32 noundef %335) #6
  %337 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 17
  %338 = load i16, ptr %337, align 4
  %339 = zext i16 %338 to i32
  %340 = load i16, ptr %307, align 2
  %341 = zext i16 %340 to i32
  %342 = sub nsw i32 %339, %341
  %343 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 24
  %344 = load i16, ptr %343, align 2
  %345 = zext i16 %344 to i32
  %346 = load i16, ptr %324, align 4
  %347 = zext i16 %346 to i32
  %348 = sub nsw i32 %345, %347
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %342, i32 noundef %348) #6
  %349 = load ptr, ptr %271, align 4
  %350 = add nsw i32 %348, 2047
  %351 = and i32 %350, 2047
  %352 = shl i32 %342, 16
  %353 = add i32 %352, 134152192
  %354 = and i32 %353, 134152192
  %355 = or i32 %351, %354
  %356 = call i32 @regmap_write(ptr noundef %349, i32 noundef 84, i32 noundef %355) #6
  %357 = load i32, ptr %293, align 4
  %358 = shl i32 %357, 25
  %359 = and i32 %358, 33554432
  %360 = shl i32 %357, 22
  %361 = and i32 %360, 16777216
  %362 = or i32 %361, %359
  %363 = getelementptr inbounds %struct.drm_connector, ptr %246, i32 0, i32 20, i32 8
  %364 = load i32, ptr %363, align 8
  %365 = shl i32 %364, 27
  %366 = and i32 %365, 134217728
  %367 = or i32 %362, %366
  %368 = shl i32 %364, 23
  %369 = and i32 %368, 67108864
  %370 = or i32 %367, %369
  %371 = load ptr, ptr %271, align 4
  %372 = call i32 @regmap_update_bits_base(ptr noundef %371, i32 noundef 136, i32 noundef 251658240, i32 noundef %370, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %373 = load ptr, ptr %271, align 4
  %374 = call i32 @regmap_update_bits_base(ptr noundef %373, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %375 = load ptr, ptr %271, align 4
  %376 = call i32 @regmap_write(ptr noundef %375, i32 noundef 140, i32 noundef 0) #6
  %377 = load ptr, ptr %253, align 4
  %378 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %377, i32 0, i32 8
  %379 = load ptr, ptr %378, align 4
  %380 = icmp eq ptr %379, null
  br i1 %380, label %383, label %381

381:                                              ; preds = %259
  %382 = call i32 %379(ptr noundef %0, ptr noundef %1) #6
  br label %383

383:                                              ; preds = %381, %259
  %384 = phi i32 [ %382, %381 ], [ -524, %259 ]
  %385 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 3
  %386 = load ptr, ptr %385, align 4
  %387 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 8
  %388 = load ptr, ptr %387, align 4
  %389 = getelementptr inbounds %struct.drm_crtc, ptr %388, i32 0, i32 3
  %390 = load ptr, ptr %389, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef %386, ptr noundef %390, i32 noundef %384) #6
  br label %569

391:                                              ; preds = %3, %3
  %392 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 12
  %393 = load ptr, ptr %392, align 4
  %394 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %393, i32 0, i32 1
  %395 = load i8, ptr %394, align 1, !range !8
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %397, label %398, !prof !9

397:                                              ; preds = %391
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 598, i32 noundef 9, ptr noundef null) #6
  br label %398

398:                                              ; preds = %397, %391
  %399 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 5
  %400 = load ptr, ptr %399, align 4
  %401 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 12
  %402 = load i32, ptr %401, align 4
  %403 = mul i32 %402, 1000
  %404 = tail call i32 @clk_set_rate(ptr noundef %400, i32 noundef %403) #6
  %405 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 9
  %406 = load i16, ptr %405, align 4
  %407 = zext i16 %406 to i32
  %408 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 6
  %409 = load i16, ptr %408, align 2
  %410 = zext i16 %409 to i32
  %411 = sub nsw i32 %407, %410
  %412 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 11
  %413 = load i32, ptr %412, align 4
  %414 = and i32 %413, 16
  %415 = icmp eq i32 %414, 0
  %416 = sdiv i32 %411, 2
  %417 = select i1 %415, i32 %411, i32 %416
  %418 = tail call i32 @llvm.smin.i32(i32 %417, i32 32) #6
  %419 = add nsw i32 %418, -2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef %419) #6
  %420 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 2
  %421 = load ptr, ptr %420, align 4
  %422 = shl nsw i32 %419, 4
  %423 = and i32 %422, 496
  %424 = tail call i32 @regmap_update_bits_base(ptr noundef %421, i32 noundef 144, i32 noundef 496, i32 noundef %423, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %425 = load i32, ptr %412, align 4
  %426 = shl i32 %425, 16
  %427 = and i32 %426, 1048576
  %428 = load ptr, ptr %420, align 4
  %429 = tail call i32 @regmap_update_bits_base(ptr noundef %428, i32 noundef 144, i32 noundef 1048576, i32 noundef %427, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %430 = load ptr, ptr %420, align 4
  %431 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 13
  %432 = load i16, ptr %431, align 4
  %433 = add i16 %432, 4095
  %434 = and i16 %433, 4095
  %435 = zext i16 %434 to i32
  %436 = shl nuw nsw i32 %435, 16
  %437 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 20
  %438 = load i16, ptr %437, align 2
  %439 = add i16 %438, 4095
  %440 = and i16 %439, 4095
  %441 = zext i16 %440 to i32
  %442 = or i32 %436, %441
  %443 = tail call i32 @regmap_write(ptr noundef %430, i32 noundef 148, i32 noundef %442) #6
  %444 = load ptr, ptr %420, align 4
  %445 = load i16, ptr %431, align 4
  %446 = add i16 %445, 4095
  %447 = and i16 %446, 4095
  %448 = zext i16 %447 to i32
  %449 = shl nuw nsw i32 %448, 16
  %450 = load i16, ptr %437, align 2
  %451 = add i16 %450, 4095
  %452 = and i16 %451, 4095
  %453 = zext i16 %452 to i32
  %454 = or i32 %449, %453
  %455 = tail call i32 @regmap_write(ptr noundef %444, i32 noundef 152, i32 noundef %454) #6
  %456 = load ptr, ptr %420, align 4
  %457 = load i16, ptr %431, align 4
  %458 = add i16 %457, 4095
  %459 = and i16 %458, 4095
  %460 = zext i16 %459 to i32
  %461 = shl nuw nsw i32 %460, 16
  %462 = load i16, ptr %437, align 2
  %463 = add i16 %462, 4095
  %464 = and i16 %463, 4095
  %465 = zext i16 %464 to i32
  %466 = or i32 %461, %465
  %467 = tail call i32 @regmap_write(ptr noundef %456, i32 noundef 156, i32 noundef %466) #6
  %468 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 18
  %469 = load i16, ptr %468, align 2
  %470 = zext i16 %469 to i32
  %471 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 16
  %472 = load i16, ptr %471, align 2
  %473 = zext i16 %472 to i32
  %474 = sub nsw i32 %470, %473
  %475 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 4
  %476 = load i16, ptr %475, align 2
  %477 = zext i16 %476 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %477, i32 noundef %474) #6
  %478 = load ptr, ptr %420, align 4
  %479 = load i16, ptr %468, align 2
  %480 = add i16 %479, 8191
  %481 = and i16 %480, 8191
  %482 = zext i16 %481 to i32
  %483 = shl nuw nsw i32 %482, 16
  %484 = add nsw i32 %474, 4095
  %485 = and i32 %484, 4095
  %486 = or i32 %483, %485
  %487 = tail call i32 @regmap_write(ptr noundef %478, i32 noundef 160, i32 noundef %486) #6
  %488 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 25
  %489 = load i16, ptr %488, align 4
  %490 = zext i16 %489 to i32
  %491 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 23
  %492 = load i16, ptr %491, align 4
  %493 = zext i16 %492 to i32
  %494 = sub nsw i32 %490, %493
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %490, i32 noundef %494) #6
  %495 = load i16, ptr %405, align 4
  %496 = zext i16 %495 to i32
  %497 = load i32, ptr %412, align 4
  %498 = lshr i32 %497, 4
  %499 = and i32 %498, 1
  %500 = xor i32 %499, 1
  %501 = shl nuw nsw i32 %496, %500
  %502 = load ptr, ptr %420, align 4
  %503 = shl i32 %501, 16
  %504 = and i32 %503, 536805376
  %505 = add nsw i32 %494, 4095
  %506 = and i32 %505, 4095
  %507 = or i32 %504, %506
  %508 = tail call i32 @regmap_write(ptr noundef %502, i32 noundef 164, i32 noundef %507) #6
  %509 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 17
  %510 = load i16, ptr %509, align 4
  %511 = zext i16 %510 to i32
  %512 = load i16, ptr %471, align 2
  %513 = zext i16 %512 to i32
  %514 = sub nsw i32 %511, %513
  %515 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 24
  %516 = load i16, ptr %515, align 2
  %517 = zext i16 %516 to i32
  %518 = load i16, ptr %491, align 4
  %519 = zext i16 %518 to i32
  %520 = sub nsw i32 %517, %519
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %514, i32 noundef %520) #6
  %521 = load ptr, ptr %420, align 4
  %522 = add nsw i32 %520, 1023
  %523 = and i32 %522, 1023
  %524 = shl i32 %514, 16
  %525 = add i32 %524, 67043328
  %526 = and i32 %525, 67043328
  %527 = or i32 %523, %526
  %528 = tail call i32 @regmap_write(ptr noundef %521, i32 noundef 168, i32 noundef %527) #6
  %529 = load ptr, ptr %392, align 4
  %530 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %529, i32 0, i32 6
  %531 = load i8, ptr %530, align 2, !range !8
  %532 = icmp eq i8 %531, 0
  %533 = load i32, ptr %412, align 4
  br i1 %532, label %539, label %534

534:                                              ; preds = %398
  %535 = shl i32 %533, 25
  %536 = and i32 %535, 33554432
  %537 = shl i32 %533, 22
  %538 = and i32 %537, 16777216
  br label %545

539:                                              ; preds = %398
  %540 = and i32 %533, 1
  %541 = icmp eq i32 %540, 0
  %542 = select i1 %541, i32 67108864, i32 100663296
  %543 = shl i32 %533, 22
  %544 = and i32 %543, 16777216
  br label %545

545:                                              ; preds = %539, %534
  %546 = phi i32 [ %544, %539 ], [ %536, %534 ]
  %547 = phi i32 [ %542, %539 ], [ %538, %534 ]
  %548 = phi i32 [ 240, %539 ], [ 136, %534 ]
  %549 = or i32 %547, %546
  %550 = load ptr, ptr %420, align 4
  %551 = tail call i32 @regmap_write(ptr noundef %550, i32 noundef %548, i32 noundef %549) #6
  %552 = load ptr, ptr %420, align 4
  %553 = tail call i32 @regmap_update_bits_base(ptr noundef %552, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %554 = load ptr, ptr %392, align 4
  %555 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %554, i32 0, i32 8
  %556 = load ptr, ptr %555, align 4
  %557 = icmp eq ptr %556, null
  br i1 %557, label %560, label %558

558:                                              ; preds = %545
  %559 = tail call i32 %556(ptr noundef %0, ptr noundef %1) #6
  br label %560

560:                                              ; preds = %558, %545
  %561 = phi i32 [ %559, %558 ], [ -524, %545 ]
  %562 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 3
  %563 = load ptr, ptr %562, align 4
  %564 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 8
  %565 = load ptr, ptr %564, align 4
  %566 = getelementptr inbounds %struct.drm_crtc, ptr %565, i32 0, i32 3
  %567 = load ptr, ptr %566, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef %563, ptr noundef %567, i32 noundef %561) #6
  br label %569

568:                                              ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  br label %569

569:                                              ; preds = %568, %560, %383, %226, %55
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_tcon_platform_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_tcon_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_rate_exclusive_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sun4i_tcon0_mode_set_dithering(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %46, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 20, i32 noundef 286331153) #6
  %8 = load ptr, ptr %5, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 24, i32 noundef 286331153) #6
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 28, i32 noundef 286331153) #6
  %12 = load ptr, ptr %5, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 32, i32 noundef 286331153) #6
  %14 = load ptr, ptr %5, align 4
  %15 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 36, i32 noundef 286331153) #6
  %16 = load ptr, ptr %5, align 4
  %17 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 40, i32 noundef 286331153) #6
  %18 = load ptr, ptr %5, align 4
  %19 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 44, i32 noundef 16842752) #6
  %20 = load ptr, ptr %5, align 4
  %21 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 48, i32 noundef 353702161) #6
  %22 = load ptr, ptr %5, align 4
  %23 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 52, i32 noundef 1465341269) #6
  %24 = load ptr, ptr %5, align 4
  %25 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 56, i32 noundef 2139060087) #6
  %26 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 6
  %29 = select i1 %28, i32 -2147483648, i32 0
  %30 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %42

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 6
  %35 = load ptr, ptr %34, align 8
  %36 = load i32, ptr %35, align 4
  switch i32 %36, label %42 [
    i32 4119, label %37
    i32 4105, label %39
    i32 4112, label %39
  ]

37:                                               ; preds = %33
  %38 = or i32 %29, 80
  br label %39

39:                                               ; preds = %37, %33, %33
  %40 = phi i32 [ %29, %33 ], [ %29, %33 ], [ %38, %37 ]
  %41 = or i32 %40, -2147483648
  br label %42

42:                                               ; preds = %39, %33, %4
  %43 = phi i32 [ %29, %33 ], [ %41, %39 ], [ %29, %4 ]
  %44 = load ptr, ptr %5, align 4
  %45 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 16, i32 noundef %43) #6
  br label %46

46:                                               ; preds = %42, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_a10_tcon_set_mux(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sun4i_drv, ptr %5, i32 0, i32 2
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %6, %2 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %7

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.11) #7
  br label %32

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %9, i32 -56
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %9, i32 -48
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 14
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %29, 8
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 512, i32 noundef 768, i32 noundef %30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %32

32:                                               ; preds = %25, %21, %18, %15
  %33 = phi i32 [ 0, %25 ], [ -22, %18 ], [ -22, %21 ], [ -22, %15 ]
  ret i32 %33
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun5i_a13_tcon_set_mux(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 4
  %6 = zext i1 %5 to i32
  %7 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 512, i32 noundef %6) #6
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_tcon_set_mux(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sun4i_drv, ptr %5, i32 0, i32 2
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %6, %2 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %7

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.11) #7
  br label %32

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %9, i32 -56
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %9, i32 -48
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 14
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %29, 8
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 512, i32 noundef 768, i32 noundef %30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %32

32:                                               ; preds = %25, %21, %18, %15
  %33 = phi i32 [ 0, %25 ], [ -22, %18 ], [ -22, %21 ], [ -22, %15 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_tcon_setup_lvds_phy(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 544, i32 noundef 1064370176) #6
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 429496) #6
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 548, i32 noundef 2080406528, i32 noundef 2080406528, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %10 = load ptr, ptr %3, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 548, i32 noundef 2031647, i32 noundef 2031647, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = load ptr, ptr %3, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 544, i32 noundef 4194304, i32 noundef 4194304, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun6i_tcon_setup_lvds_phy(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.drm_connector_list_iter, align 8
  %4 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 544, i32 noundef 1074004768) #6
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 429496) #6
  %8 = load ptr, ptr %4, align 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 544, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 429496) #6
  %11 = load ptr, ptr %4, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 544, i32 noundef 16777216, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8, !annotation !10
  %13 = load ptr, ptr %1, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %13, ptr noundef nonnull %3) #6
  br label %14

14:                                               ; preds = %18, %2
  %15 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %3) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @drm_connector_list_iter_end(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %31

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.drm_connector, ptr %15, i32 0, i32 41
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %14

22:                                               ; preds = %18
  call void @drm_connector_list_iter_end(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %23 = getelementptr inbounds %struct.drm_connector, ptr %15, i32 0, i32 20, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.drm_connector, ptr %15, i32 0, i32 20, i32 6
  %28 = load ptr, ptr %27, align 8
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 4112
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %22, %17
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i32 [ 15728640, %31 ], [ 7340032, %26 ]
  %34 = load ptr, ptr %4, align 4
  %35 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 544, i32 noundef 15728640, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_r40_tcon_tv_set_mux(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_graph_get_port_by_id(ptr noundef %6, i32 noundef 0) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %7, ptr noundef null) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %23, %9
  %13 = phi i32 [ %24, %23 ], [ -22, %9 ]
  %14 = phi ptr [ %25, %23 ], [ %10, %9 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !10
  %15 = call ptr @of_graph_get_remote_endpoint(ptr noundef nonnull %14) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %19 = call i32 @llvm.smin.i32(i32 %18, i32 0) #6
  %20 = load i32, ptr %3, align 4
  %21 = icmp slt i32 %18, 0
  %22 = select i1 %21, i32 %19, i32 %20
  br label %23

23:                                               ; preds = %17, %12
  %24 = phi i32 [ %13, %12 ], [ %22, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %25 = call ptr @of_get_next_available_child(ptr noundef nonnull %7, ptr noundef nonnull %14) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %12

27:                                               ; preds = %23, %9
  %28 = phi i32 [ -22, %9 ], [ %24, %23 ]
  call void @of_node_put(ptr noundef nonnull %7) #6
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 25
  %31 = load ptr, ptr %30, align 8
  %32 = call ptr @of_graph_get_remote_node(ptr noundef %31, i32 noundef 0, i32 noundef -1) #6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27
  %35 = call ptr @of_find_device_by_node(ptr noundef nonnull %32) #6
  call void @of_node_put(ptr noundef nonnull %32) #6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %54, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  %43 = call i32 @sun8i_tcon_top_set_hdmi_src(ptr noundef %42, i32 noundef %28) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  %47 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 14
  %48 = load i32, ptr %47, align 4
  %49 = call i32 @sun8i_tcon_top_de_config(ptr noundef %46, i32 noundef %48, i32 noundef %28) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45, %41
  %52 = phi ptr [ %42, %41 ], [ %46, %45 ]
  %53 = phi i32 [ %43, %41 ], [ %49, %45 ]
  call void @put_device(ptr noundef %52) #6
  br label %54

54:                                               ; preds = %51, %45, %34, %27, %2
  %55 = phi i32 [ -22, %2 ], [ -22, %27 ], [ -22, %34 ], [ 0, %45 ], [ %53, %51 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_tcon_top_set_hdmi_src(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_tcon_top_de_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_tcon_probe(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store ptr null, ptr %2, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !10
  %7 = tail call ptr @of_device_get_match_data(ptr noundef %4) #6
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %6, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %2) #6
  %12 = icmp eq i32 %11, -517
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %1
  %14 = call i32 @component_add(ptr noundef %4, ptr noundef nonnull @sun4i_tcon_ops) #6
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %14, %13 ], [ -517, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_tcon_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @sun4i_tcon_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_tcon_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @of_graph_get_port_by_id(ptr noundef %8, i32 noundef 0) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %73, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @of_get_next_child(ptr noundef nonnull %9, ptr noundef null) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %68, label %14

14:                                               ; preds = %14, %11
  %15 = phi i32 [ %17, %14 ], [ 0, %11 ]
  %16 = phi ptr [ %18, %14 ], [ %12, %11 ]
  %17 = add i32 %15, 1
  %18 = tail call ptr @of_get_next_child(ptr noundef nonnull %9, ptr noundef nonnull %16) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %14

20:                                               ; preds = %14
  %21 = icmp sgt i32 %17, 1
  br i1 %21, label %22, label %68

22:                                               ; preds = %20
  %23 = tail call ptr @of_graph_get_remote_node(ptr noundef %8, i32 noundef 0, i32 noundef -1) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = tail call ptr @of_match_node(ptr noundef nonnull @sun8i_tcon_top_of_table, ptr noundef nonnull %23) #6
  %27 = icmp eq ptr %26, null
  tail call void @of_node_put(ptr noundef nonnull %23) #6
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.sun4i_drv, ptr %6, i32 0, i32 2
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi ptr [ %29, %28 ], [ %33, %30 ]
  %32 = phi i32 [ 0, %28 ], [ %35, %30 ]
  %33 = load ptr, ptr %31, align 4
  %34 = icmp eq ptr %33, %29
  %35 = add i32 %32, 1
  br i1 %34, label %54, label %30

36:                                               ; preds = %25, %22
  %37 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %9, ptr noundef null) #6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %50, %36
  %40 = phi i32 [ %51, %50 ], [ -22, %36 ]
  %41 = phi ptr [ %52, %50 ], [ %37, %36 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !10
  %42 = call ptr @of_graph_get_remote_endpoint(ptr noundef nonnull %41) #6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %42, ptr noundef nonnull @.str.12, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #6
  %46 = call i32 @llvm.smin.i32(i32 %45, i32 0) #6
  %47 = load i32, ptr %4, align 4
  %48 = icmp slt i32 %45, 0
  %49 = select i1 %48, i32 %46, i32 %47
  br label %50

50:                                               ; preds = %44, %39
  %51 = phi i32 [ %40, %39 ], [ %49, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %52 = call ptr @of_get_next_available_child(ptr noundef nonnull %9, ptr noundef nonnull %41) #6
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %39

54:                                               ; preds = %50, %36, %30
  %55 = phi i32 [ -22, %36 ], [ %51, %50 ], [ %32, %30 ]
  br label %56

56:                                               ; preds = %60, %54
  %57 = phi ptr [ %6, %54 ], [ %58, %60 ]
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %6
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %58, i32 -4
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, %55
  br i1 %63, label %64, label %56

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %58, i32 -16
  br label %66

66:                                               ; preds = %64, %56
  %67 = phi ptr [ %65, %64 ], [ inttoptr (i32 -22 to ptr), %56 ]
  call void @of_node_put(ptr noundef nonnull %9) #6
  br label %70

68:                                               ; preds = %20, %11
  tail call void @of_node_put(ptr noundef nonnull %9) #6
  %69 = tail call fastcc ptr @sun4i_tcon_find_engine_traverse(ptr noundef %6, ptr noundef %8, i32 noundef 0) #6
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi ptr [ %67, %66 ], [ %69, %68 ]
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14) #7
  br label %309

74:                                               ; preds = %70
  %75 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 64, i32 noundef 3520) #6
  %76 = icmp eq ptr %75, null
  br i1 %76, label %309, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %75, ptr %78, align 8
  %79 = getelementptr inbounds %struct.sun4i_tcon, ptr %75, i32 0, i32 1
  store ptr %2, ptr %79, align 4
  store ptr %0, ptr %75, align 4
  %80 = getelementptr inbounds %struct.sunxi_engine, ptr %71, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.sun4i_tcon, ptr %75, i32 0, i32 14
  store i32 %81, ptr %82, align 4
  %83 = call ptr @of_device_get_match_data(ptr noundef %0) #6
  %84 = getelementptr inbounds %struct.sun4i_tcon, ptr %75, i32 0, i32 12
  store ptr %83, ptr %84, align 4
  %85 = call ptr @__devm_reset_control_get(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %86 = getelementptr inbounds %struct.sun4i_tcon, ptr %75, i32 0, i32 10
  store ptr %85, ptr %86, align 4
  %87 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16) #7
  %89 = load ptr, ptr %86, align 4
  %90 = ptrtoint ptr %89 to i32
  br label %309

91:                                               ; preds = %77
  %92 = load ptr, ptr %84, align 4
  %93 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %92, i32 0, i32 4
  %94 = load i8, ptr %93, align 4, !range !8
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %91
  %97 = call ptr @__devm_reset_control_get(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %98 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18) #7
  %100 = ptrtoint ptr %97 to i32
  br label %309

101:                                              ; preds = %96
  %102 = call i32 @reset_control_deassert(ptr noundef %97) #6
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load ptr, ptr %86, align 4
  br label %107

106:                                              ; preds = %101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.19) #7
  br label %309

107:                                              ; preds = %104, %91
  %108 = phi ptr [ %105, %104 ], [ %85, %91 ]
  %109 = call i32 @reset_control_reset(ptr noundef %108) #6
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20) #7
  br label %309

112:                                              ; preds = %107
  %113 = load ptr, ptr %84, align 4
  %114 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %113, i32 0, i32 5
  %115 = load i8, ptr %114, align 1, !range !8
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %151, label %117

117:                                              ; preds = %112
  %118 = call ptr @__devm_reset_control_get(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %119 = getelementptr inbounds %struct.sun4i_tcon, ptr %75, i32 0, i32 11
  store ptr %118, ptr %119, align 4
  %120 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16) #7
  %122 = load ptr, ptr %119, align 4
  %123 = ptrtoint ptr %122 to i32
  br label %309

124:                                              ; preds = %117
  %125 = icmp eq ptr %118, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %124
  %127 = call i32 @reset_control_reset(ptr noundef nonnull %118) #6
  br label %128

128:                                              ; preds = %126, %124
  %129 = load ptr, ptr %84, align 4
  %130 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %129, i32 0, i32 2
  %131 = load i8, ptr %130, align 2, !range !8
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %128
  %134 = call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.22) #6
  %135 = getelementptr inbounds %struct.sun4i_tcon, ptr %75, i32 0, i32 6
  store ptr %134, ptr %135, align 4
  %136 = icmp ugt ptr %134, inttoptr (i32 -4096 to ptr)
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = icmp eq ptr %134, inttoptr (i32 -2 to ptr)
  br i1 %138, label %142, label %139

139:                                              ; preds = %137
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23) #7
  %140 = load ptr, ptr %135, align 4
  %141 = ptrtoint ptr %140 to i32
  br label %309

142:                                              ; preds = %137, %133, %128
  %143 = phi i1 [ false, %128 ], [ false, %137 ], [ true, %133 ]
  br i1 %125, label %150, label %144

144:                                              ; preds = %142
  %145 = load ptr, ptr %84, align 4
  %146 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %145, i32 0, i32 2
  %147 = load i8, ptr %146, align 2, !range !8
  %148 = icmp eq i8 %147, 0
  %149 = or i1 %143, %148
  br i1 %149, label %151, label %150

150:                                              ; preds = %144, %142
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.24) #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.25) #7
  br label %151

151:                                              ; preds = %150, %144, %112
  %152 = phi i1 [ false, %150 ], [ true, %144 ], [ false, %112 ]
  %153 = call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.32) #6
  %154 = getelementptr inbounds %struct.sun4i_tcon, ptr %75, i32 0, i32 3
  store ptr %153, ptr %154, align 4
  %155 = icmp ugt ptr %153, inttoptr (i32 -4096 to ptr)
  br i1 %155, label %191, label %156

156:                                              ; preds = %151
  %157 = call i32 @clk_prepare(ptr noundef %153) #6
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = call i32 @clk_enable(ptr noundef %153) #6
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  call void @clk_unprepare(ptr noundef %153) #6
  br label %163

163:                                              ; preds = %162, %159, %156
  %164 = load ptr, ptr %84, align 4
  %165 = load i8, ptr %164, align 4, !range !8
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.sun4i_tcon, ptr %75, i32 0, i32 4
  %169 = load ptr, ptr %168, align 4
  br label %174

170:                                              ; preds = %163
  %171 = call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.34) #6
  %172 = getelementptr inbounds %struct.sun4i_tcon, ptr %75, i32 0, i32 4
  store ptr %171, ptr %172, align 4
  %173 = icmp ugt ptr %171, inttoptr (i32 -4096 to ptr)
  br i1 %173, label %191, label %174

174:                                              ; preds = %170, %167
  %175 = phi ptr [ %169, %167 ], [ %171, %170 ]
  %176 = call i32 @clk_prepare(ptr noundef %175) #6
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = call i32 @clk_enable(ptr noundef %175) #6
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  call void @clk_unprepare(ptr noundef %175) #6
  br label %182

182:                                              ; preds = %181, %178, %174
  %183 = load ptr, ptr %84, align 4
  %184 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %183, i32 0, i32 1
  %185 = load i8, ptr %184, align 1, !range !8
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %198, label %187

187:                                              ; preds = %182
  %188 = call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.36) #6
  %189 = getelementptr inbounds %struct.sun4i_tcon, ptr %75, i32 0, i32 5
  store ptr %188, ptr %189, align 4
  %190 = icmp ugt ptr %188, inttoptr (i32 -4096 to ptr)
  br i1 %190, label %191, label %198

191:                                              ; preds = %187, %170, %151
  %192 = phi ptr [ @.str.33, %151 ], [ @.str.35, %170 ], [ @.str.37, %187 ]
  %193 = phi ptr [ %154, %151 ], [ %172, %170 ], [ %189, %187 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %192) #7
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %191
  %197 = ptrtoint ptr %194 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.26) #7
  br label %305

198:                                              ; preds = %191, %187, %182
  %199 = getelementptr i8, ptr %0, i32 -16
  %200 = call ptr @devm_platform_ioremap_resource(ptr noundef %199, i32 noundef 0) #6
  %201 = icmp ugt ptr %200, inttoptr (i32 -4096 to ptr)
  br i1 %201, label %218, label %202

202:                                              ; preds = %198
  %203 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %0, ptr noundef null, ptr noundef %200, ptr noundef nonnull @sun4i_tcon_regmap_config, ptr noundef null, ptr noundef null) #6
  %204 = getelementptr inbounds %struct.sun4i_tcon, ptr %75, i32 0, i32 2
  store ptr %203, ptr %204, align 4
  %205 = icmp ugt ptr %203, inttoptr (i32 -4096 to ptr)
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.38) #7
  %207 = load ptr, ptr %204, align 4
  br label %218

208:                                              ; preds = %202
  %209 = call i32 @regmap_write(ptr noundef %203, i32 noundef 0, i32 noundef 0) #6
  %210 = load ptr, ptr %204, align 4
  %211 = call i32 @regmap_write(ptr noundef %210, i32 noundef 4, i32 noundef 0) #6
  %212 = load ptr, ptr %204, align 4
  %213 = call i32 @regmap_write(ptr noundef %212, i32 noundef 8, i32 noundef 0) #6
  %214 = load ptr, ptr %204, align 4
  %215 = call i32 @regmap_write(ptr noundef %214, i32 noundef 140, i32 noundef -1) #6
  %216 = load ptr, ptr %204, align 4
  %217 = call i32 @regmap_write(ptr noundef %216, i32 noundef 244, i32 noundef -1) #6
  br label %223

218:                                              ; preds = %206, %198
  %219 = phi ptr [ %207, %206 ], [ %200, %198 ]
  %220 = icmp eq ptr %219, null
  br i1 %220, label %223, label %221

221:                                              ; preds = %218
  %222 = ptrtoint ptr %219 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.27) #7
  br label %300

223:                                              ; preds = %218, %208
  %224 = load ptr, ptr %84, align 4
  %225 = load i8, ptr %224, align 4, !range !8
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %223
  %228 = call i32 @sun4i_dclk_create(ptr noundef %0, ptr noundef nonnull %75) #6
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %227
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.28) #7
  br label %300

231:                                              ; preds = %227, %223
  %232 = call i32 @platform_get_irq(ptr noundef %199, i32 noundef 0) #6
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %245, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %240

238:                                              ; preds = %234
  %239 = load ptr, ptr %0, align 4
  br label %240

240:                                              ; preds = %238, %234
  %241 = phi ptr [ %239, %238 ], [ %236, %234 ]
  %242 = call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %232, ptr noundef nonnull @sun4i_tcon_handler, ptr noundef null, i32 noundef 0, ptr noundef %241, ptr noundef nonnull %75) #6
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %240
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.39) #7
  br label %245

245:                                              ; preds = %244, %231
  %246 = phi i32 [ %232, %231 ], [ %242, %244 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.29) #7
  br label %293

247:                                              ; preds = %240
  %248 = call ptr @sun4i_crtc_init(ptr noundef %2, ptr noundef %71, ptr noundef nonnull %75) #6
  %249 = getelementptr inbounds %struct.sun4i_tcon, ptr %75, i32 0, i32 13
  store ptr %248, ptr %249, align 4
  %250 = icmp ugt ptr %248, inttoptr (i32 -4096 to ptr)
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.30) #7
  %252 = load ptr, ptr %249, align 4
  %253 = ptrtoint ptr %252 to i32
  br label %293

254:                                              ; preds = %247
  %255 = load ptr, ptr %84, align 4
  %256 = load i8, ptr %255, align 4, !range !8
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %274, label %258

258:                                              ; preds = %254
  %259 = load ptr, ptr %7, align 8
  %260 = call ptr @of_graph_get_remote_node(ptr noundef %259, i32 noundef 1, i32 noundef 0) #6
  %261 = call i32 @of_device_is_compatible(ptr noundef %260, ptr noundef nonnull @.str.31) #6
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %258
  br i1 %152, label %265, label %264

264:                                              ; preds = %263
  call void @of_node_put(ptr noundef %260) #6
  br label %293

265:                                              ; preds = %263
  %266 = call i32 @sun4i_lvds_init(ptr noundef %2, ptr noundef nonnull %75) #6
  br label %269

267:                                              ; preds = %258
  %268 = call i32 @sun4i_rgb_init(ptr noundef %2, ptr noundef nonnull %75) #6
  br label %269

269:                                              ; preds = %267, %265
  %270 = phi i32 [ %266, %265 ], [ %268, %267 ]
  call void @of_node_put(ptr noundef %260) #6
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %293, label %272

272:                                              ; preds = %269
  %273 = load ptr, ptr %84, align 4
  br label %274

274:                                              ; preds = %272, %254
  %275 = phi ptr [ %273, %272 ], [ %255, %254 ]
  %276 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %275, i32 0, i32 3
  %277 = load i8, ptr %276, align 1, !range !8
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %287, label %279

279:                                              ; preds = %274
  %280 = getelementptr inbounds %struct.sun4i_tcon, ptr %75, i32 0, i32 2
  %281 = load ptr, ptr %280, align 4
  %282 = load i32, ptr %82, align 4
  %283 = call i32 @regmap_update_bits_base(ptr noundef %281, i32 noundef 64, i32 noundef 7, i32 noundef %282, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %284 = load ptr, ptr %280, align 4
  %285 = load i32, ptr %82, align 4
  %286 = call i32 @regmap_update_bits_base(ptr noundef %284, i32 noundef 144, i32 noundef 3, i32 noundef %285, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %287

287:                                              ; preds = %279, %274
  %288 = getelementptr inbounds %struct.sun4i_tcon, ptr %75, i32 0, i32 15
  %289 = getelementptr inbounds %struct.sun4i_drv, ptr %6, i32 0, i32 2
  %290 = getelementptr inbounds %struct.sun4i_drv, ptr %6, i32 0, i32 2, i32 1
  %291 = load ptr, ptr %290, align 4
  store ptr %288, ptr %290, align 4
  store ptr %289, ptr %288, align 4
  %292 = getelementptr inbounds %struct.sun4i_tcon, ptr %75, i32 0, i32 15, i32 1
  store ptr %291, ptr %292, align 4
  store volatile ptr %288, ptr %291, align 4
  br label %309

293:                                              ; preds = %269, %264, %251, %245
  %294 = phi i32 [ %246, %245 ], [ %253, %251 ], [ %270, %269 ], [ -22, %264 ]
  %295 = load ptr, ptr %84, align 4
  %296 = load i8, ptr %295, align 4, !range !8
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %300, label %298

298:                                              ; preds = %293
  %299 = call i32 @sun4i_dclk_free(ptr noundef nonnull %75) #6
  br label %300

300:                                              ; preds = %298, %293, %230, %221
  %301 = phi i32 [ %222, %221 ], [ %228, %230 ], [ %294, %298 ], [ %294, %293 ]
  %302 = getelementptr inbounds %struct.sun4i_tcon, ptr %75, i32 0, i32 4
  %303 = load ptr, ptr %302, align 4
  call void @clk_disable(ptr noundef %303) #6
  call void @clk_unprepare(ptr noundef %303) #6
  %304 = load ptr, ptr %154, align 4
  call void @clk_disable(ptr noundef %304) #6
  call void @clk_unprepare(ptr noundef %304) #6
  br label %305

305:                                              ; preds = %300, %196
  %306 = phi i32 [ %197, %196 ], [ %301, %300 ]
  %307 = load ptr, ptr %86, align 4
  %308 = call i32 @reset_control_assert(ptr noundef %307) #6
  br label %309

309:                                              ; preds = %305, %287, %139, %121, %111, %106, %99, %88, %74, %73
  %310 = phi i32 [ -517, %73 ], [ %90, %88 ], [ %100, %99 ], [ %102, %106 ], [ %109, %111 ], [ %123, %121 ], [ %306, %305 ], [ 0, %287 ], [ %141, %139 ], [ -12, %74 ]
  ret i32 %310
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_tcon_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sun4i_tcon, ptr %5, i32 0, i32 15
  %7 = getelementptr inbounds %struct.sun4i_tcon, ptr %5, i32 0, i32 15, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = getelementptr inbounds %struct.sun4i_tcon, ptr %5, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = tail call i32 @sun4i_dclk_free(ptr noundef %5) #6
  br label %17

17:                                               ; preds = %15, %3
  %18 = getelementptr inbounds %struct.sun4i_tcon, ptr %5, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %19) #6
  tail call void @clk_unprepare(ptr noundef %19) #6
  %20 = getelementptr inbounds %struct.sun4i_tcon, ptr %5, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  tail call void @clk_unprepare(ptr noundef %21) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_dclk_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sun4i_crtc_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_lvds_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_rgb_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_dclk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @sun4i_tcon_find_engine_traverse(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4
  %5 = tail call ptr @of_graph_get_port_by_id(ptr noundef %1, i32 noundef %2) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %55, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %5, ptr noundef null) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %52, label %10

10:                                               ; preds = %10, %7
  %11 = phi i32 [ %13, %10 ], [ 0, %7 ]
  %12 = phi ptr [ %14, %10 ], [ %8, %7 ]
  %13 = add i32 %11, 1
  %14 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %5, ptr noundef nonnull %12) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %10

16:                                               ; preds = %10
  %17 = icmp eq i32 %11, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %16
  %19 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %5, ptr noundef null) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %52, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %19) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %28, %21
  %25 = phi ptr [ %26, %28 ], [ %0, %21 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %26, i32 -12
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %22, %30
  br i1 %31, label %44, label %24

32:                                               ; preds = %24
  tail call void @of_node_put(ptr noundef nonnull %5) #6
  %33 = tail call ptr @of_graph_get_remote_port(ptr noundef nonnull %19) #6
  %34 = call i32 @of_property_read_variable_u32_array(ptr noundef %33, ptr noundef nonnull @.str.12, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #6
  %35 = icmp sgt i32 %34, -1
  %36 = load i32, ptr %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = add i32 %36, -1
  store i32 %40, ptr %4, align 4
  br label %41

41:                                               ; preds = %39, %32
  %42 = phi i32 [ %40, %39 ], [ %36, %32 ]
  %43 = call fastcc ptr @sun4i_tcon_find_engine_traverse(ptr noundef %0, ptr noundef nonnull %22, i32 noundef %42)
  br label %46

44:                                               ; preds = %28
  %45 = getelementptr i8, ptr %26, i32 -16
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi ptr [ %43, %41 ], [ %45, %44 ]
  %48 = phi ptr [ %33, %41 ], [ %5, %44 ]
  call void @of_node_put(ptr noundef nonnull %22) #6
  br label %49

49:                                               ; preds = %46, %21
  %50 = phi ptr [ %47, %46 ], [ inttoptr (i32 -22 to ptr), %21 ]
  %51 = phi ptr [ %48, %46 ], [ %5, %21 ]
  call void @of_node_put(ptr noundef nonnull %19) #6
  br label %52

52:                                               ; preds = %49, %18, %16, %7
  %53 = phi ptr [ inttoptr (i32 -22 to ptr), %16 ], [ %50, %49 ], [ inttoptr (i32 -22 to ptr), %18 ], [ inttoptr (i32 -22 to ptr), %7 ]
  %54 = phi ptr [ %5, %16 ], [ %51, %49 ], [ %5, %18 ], [ %5, %7 ]
  call void @of_node_put(ptr noundef %54) #6
  br label %55

55:                                               ; preds = %52, %3
  %56 = phi ptr [ %53, %52 ], [ inttoptr (i32 -22 to ptr), %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret ptr %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_tcon_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sun4i_crtc, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !10
  %10 = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef 4, ptr noundef nonnull %3) #6
  %13 = load i32, ptr %3, align 4
  %14 = and i32 %13, 51200
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %2
  %17 = call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %7) #6
  %18 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 28
  %19 = call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #6
  %20 = getelementptr inbounds %struct.sun4i_crtc, ptr %7, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  call void @drm_crtc_send_vblank_event(ptr noundef %7, ptr noundef nonnull %21) #6
  call void @drm_crtc_vblank_put(ptr noundef %7) #6
  store ptr null, ptr %20, align 8
  br label %24

24:                                               ; preds = %23, %16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #6
  %25 = load ptr, ptr %10, align 4
  %26 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 4, i32 noundef 51200, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr inbounds %struct.sunxi_engine_ops, ptr %27, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  call void %29(ptr noundef %9) #6
  br label %32

32:                                               ; preds = %31, %24, %2
  %33 = phi i32 [ 0, %2 ], [ 1, %31 ], [ 1, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!10 = !{!"auto-init"}
