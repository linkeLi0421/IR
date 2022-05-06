; ModuleID = '/llk/IR/drivers/gpu/drm/rcar-du/rcar_lvds.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_lvds.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcar_lvds_clk_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22rcar_lvds_clk_enable\22\09\09\09\09\09"
module asm "__kstrtabns_rcar_lvds_clk_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcar_lvds_clk_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22rcar_lvds_clk_disable\22\09\09\09\09\09"
module asm "__kstrtabns_rcar_lvds_clk_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcar_lvds_dual_link:\09\09\09\09\09"
module asm "\09.asciz \09\22rcar_lvds_dual_link\22\09\09\09\09\09"
module asm "__kstrtabns_rcar_lvds_dual_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcar_lvds_is_connected:\09\09\09\09\09"
module asm "\09.asciz \09\22rcar_lvds_is_connected\22\09\09\09\09\09"
module asm "__kstrtabns_rcar_lvds_is_connected:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rcar_lvds_device_info = type { i32, i32, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rcar_lvds = type { ptr, ptr, %struct.drm_bridge, ptr, ptr, ptr, %struct.anon.81, ptr, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.anon.81 = type { ptr, ptr, [2 x ptr] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_bridge_timings = type { i32, i32, i32, i8 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.72 }
%union.anon.72 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [36 x i8] c"drivers/gpu/drm/rcar-du/rcar_lvds.c\00", align 1
@__kstrtab_rcar_lvds_clk_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcar_lvds_clk_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_rcar_lvds_clk_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcar_lvds_clk_enable to i32), ptr @__kstrtab_rcar_lvds_clk_enable, ptr @__kstrtabns_rcar_lvds_clk_enable }, section "___ksymtab_gpl+rcar_lvds_clk_enable", align 4
@__kstrtab_rcar_lvds_clk_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcar_lvds_clk_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_rcar_lvds_clk_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcar_lvds_clk_disable to i32), ptr @__kstrtab_rcar_lvds_clk_disable, ptr @__kstrtabns_rcar_lvds_clk_disable }, section "___ksymtab_gpl+rcar_lvds_clk_disable", align 4
@__kstrtab_rcar_lvds_dual_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcar_lvds_dual_link = external dso_local constant [0 x i8], align 1
@__ksymtab_rcar_lvds_dual_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcar_lvds_dual_link to i32), ptr @__kstrtab_rcar_lvds_dual_link, ptr @__kstrtabns_rcar_lvds_dual_link }, section "___ksymtab_gpl+rcar_lvds_dual_link", align 4
@__kstrtab_rcar_lvds_is_connected = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcar_lvds_is_connected = external dso_local constant [0 x i8], align 1
@__ksymtab_rcar_lvds_is_connected = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcar_lvds_is_connected to i32), ptr @__kstrtab_rcar_lvds_is_connected, ptr @__kstrtabns_rcar_lvds_is_connected }, section "___ksymtab_gpl+rcar_lvds_is_connected", align 4
@rcar_lvds_of_table = internal constant [18 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7742-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen2_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7743-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen2_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7744-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen2_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774a1-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen3_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774b1-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen3_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774c0-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_r8a77990_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774e1-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen3_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7790-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen2_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7791-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen2_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7793-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen2_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7795-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen3_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7796-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen3_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77965-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen3_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77970-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_r8a77970_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77980-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen3_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77990-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_r8a77990_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77995-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_r8a77995_info }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author279 = internal constant [60 x i8] c"author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description280 = internal constant [46 x i8] c"description=Renesas R-Car LVDS Encoder Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@rcar_lvds_gen2_info = internal constant %struct.rcar_lvds_device_info { i32 2, i32 0, ptr @rcar_lvds_pll_setup_gen2 }, align 4
@rcar_lvds_gen3_info = internal constant %struct.rcar_lvds_device_info { i32 3, i32 4, ptr @rcar_lvds_pll_setup_gen3 }, align 4
@rcar_lvds_r8a77990_info = internal constant %struct.rcar_lvds_device_info { i32 3, i32 26, ptr @rcar_lvds_pll_setup_d3_e3 }, align 4
@rcar_lvds_r8a77970_info = internal constant %struct.rcar_lvds_device_info { i32 3, i32 6, ptr @rcar_lvds_pll_setup_gen2 }, align 4
@rcar_lvds_r8a77995_info = internal constant %struct.rcar_lvds_device_info { i32 3, i32 30, ptr @rcar_lvds_pll_setup_d3_e3 }, align 4
@rcar_lvds_platform_driver = internal global %struct.platform_driver { ptr @rcar_lvds_probe, ptr @rcar_lvds_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_lvds_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [10 x i8] c"rcar-lvds\00", align 1
@lvds_quirk_matches = internal constant [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.2, ptr null, ptr @.str.3, ptr @rcar_lvds_r8a7790es1_info, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@rcar_lvds_bridge_ops = internal constant %struct.drm_bridge_funcs { ptr @rcar_lvds_attach, ptr null, ptr null, ptr @rcar_lvds_mode_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_lvds_atomic_enable, ptr @rcar_lvds_atomic_disable, ptr null, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_bridge_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ES1.*\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"r8a7790\00", align 1
@rcar_lvds_r8a7790es1_info = internal constant %struct.rcar_lvds_device_info { i32 2, i32 1, ptr @rcar_lvds_pll_setup_gen2 }, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"renesas,companion\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Companion LVDS encoder is invalid\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"no LVDS bus format reported, using JEIDA\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"unsupported LVDS bus format 0x%04x, using JEIDA\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"extal\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"dclkin.0\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"dclkin.1\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"no input clock (extal, dclkin.0 or dclkin.1)\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"failed to get %s clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author279, ptr @__UNIQUE_ID_description280, ptr @__UNIQUE_ID_license281, ptr @__ksymtab_rcar_lvds_clk_disable, ptr @__ksymtab_rcar_lvds_clk_enable, ptr @__ksymtab_rcar_lvds_dual_link, ptr @__ksymtab_rcar_lvds_is_connected], section "llvm.metadata"
@switch.table.__rcar_lvds_atomic_enable = private unnamed_addr constant [3 x i32] [i32 0, i32 4, i32 0], align 4

@__mod_of__rcar_lvds_of_table_device_table = dso_local alias [18 x %struct.of_device_id], ptr @rcar_lvds_of_table

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_lvds_clk_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 313, i32 noundef 9, ptr noundef null) #9
  br label %24

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %0, i32 144
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_prepare(ptr noundef %13) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = tail call i32 @clk_enable(ptr noundef %13) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  tail call void @clk_unprepare(ptr noundef %13) #9
  br label %20

20:                                               ; preds = %19, %11
  %21 = phi i32 [ %14, %11 ], [ %17, %19 ]
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %16
  tail call fastcc void @__rcar_lvds_pll_setup_d3_e3(ptr noundef %3, i32 noundef %1, i1 noundef zeroext true)
  br label %24

24:                                               ; preds = %23, %20, %10
  %25 = phi i32 [ -19, %10 ], [ 0, %23 ], [ %21, %20 ]
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__rcar_lvds_pll_setup_d3_e3(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rcar_lvds, ptr %0, i32 0, i32 6, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = select i1 %2, i32 1, i32 7
  %7 = icmp eq ptr %5, null
  br i1 %7, label %122, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @clk_get_rate(ptr noundef nonnull %5) #9
  %10 = add i32 %9, -192000001
  %11 = icmp ult i32 %10, -180000001
  br i1 %11, label %122, label %12

12:                                               ; preds = %8
  %13 = add nuw nsw i32 %9, 23999999
  %14 = udiv i32 %13, 24000000
  %15 = udiv i32 %9, 12000000
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 8) #9
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %122, label %18

18:                                               ; preds = %12
  %19 = lshr i32 %1, 1
  br label %20

20:                                               ; preds = %113, %18
  %21 = phi i32 [ 0, %18 ], [ %114, %113 ]
  %22 = phi i32 [ 0, %18 ], [ %115, %113 ]
  %23 = phi i32 [ 0, %18 ], [ %116, %113 ]
  %24 = phi i32 [ 0, %18 ], [ %117, %113 ]
  %25 = phi i32 [ 0, %18 ], [ %118, %113 ]
  %26 = phi i32 [ -1, %18 ], [ %119, %113 ]
  %27 = phi i32 [ %14, %18 ], [ %120, %113 ]
  %28 = udiv i32 %9, %27
  %29 = add i32 %28, 899999999
  %30 = udiv i32 %29, %28
  %31 = tail call i32 @llvm.umax.i32(i32 %30, i32 60) #9
  %32 = udiv i32 1800000000, %28
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 120) #9
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %113

35:                                               ; preds = %103, %20
  %36 = phi i32 [ %104, %103 ], [ %21, %20 ]
  %37 = phi i32 [ %105, %103 ], [ %22, %20 ]
  %38 = phi i32 [ %106, %103 ], [ %23, %20 ]
  %39 = phi i32 [ %107, %103 ], [ %24, %20 ]
  %40 = phi i32 [ %108, %103 ], [ %25, %20 ]
  %41 = phi i32 [ %109, %103 ], [ %26, %20 ]
  %42 = phi i32 [ %110, %103 ], [ %26, %20 ]
  %43 = phi i32 [ %111, %103 ], [ %31, %20 ]
  %44 = mul i32 %43, %28
  %45 = icmp ugt i32 %44, 1039500000
  %46 = zext i1 %45 to i32
  %47 = lshr i32 %44, %46
  %48 = udiv i32 %47, %6
  %49 = add i32 %48, %19
  %50 = udiv i32 %49, %1
  %51 = icmp ult i32 %49, %1
  %52 = select i1 %51, i32 1, i32 %50
  %53 = udiv i32 %48, %52
  %54 = sub i32 %53, %1
  %55 = tail call i32 @llvm.abs.i32(i32 %54, i1 false) #9
  %56 = icmp ult i32 %55, %42
  br i1 %56, label %57, label %59

57:                                               ; preds = %35
  %58 = icmp eq i32 %53, %1
  br i1 %58, label %122, label %59

59:                                               ; preds = %57, %35
  %60 = phi i32 [ 655360, %57 ], [ %36, %35 ]
  %61 = phi i32 [ %52, %57 ], [ %37, %35 ]
  %62 = phi i32 [ %46, %57 ], [ %38, %35 ]
  %63 = phi i32 [ %43, %57 ], [ %39, %35 ]
  %64 = phi i32 [ %27, %57 ], [ %40, %35 ]
  %65 = phi i32 [ %55, %57 ], [ %41, %35 ]
  %66 = phi i32 [ %55, %57 ], [ %42, %35 ]
  %67 = select i1 %45, i32 2, i32 1
  %68 = lshr i32 %44, %67
  %69 = udiv i32 %68, %6
  %70 = add nuw i32 %69, %19
  %71 = udiv i32 %70, %1
  %72 = icmp ult i32 %70, %1
  %73 = select i1 %72, i32 1, i32 %71
  %74 = udiv i32 %69, %73
  %75 = sub i32 %74, %1
  %76 = tail call i32 @llvm.abs.i32(i32 %75, i1 false) #9
  %77 = icmp ult i32 %76, %66
  br i1 %77, label %78, label %80

78:                                               ; preds = %59
  %79 = icmp eq i32 %74, %1
  br i1 %79, label %122, label %80

80:                                               ; preds = %78, %59
  %81 = phi i32 [ 655360, %78 ], [ %60, %59 ]
  %82 = phi i32 [ %73, %78 ], [ %61, %59 ]
  %83 = phi i32 [ %67, %78 ], [ %62, %59 ]
  %84 = phi i32 [ %43, %78 ], [ %63, %59 ]
  %85 = phi i32 [ %27, %78 ], [ %64, %59 ]
  %86 = phi i32 [ %76, %78 ], [ %65, %59 ]
  %87 = phi i32 [ %76, %78 ], [ %66, %59 ]
  %88 = add nuw nsw i32 %67, 1
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %103, label %90

90:                                               ; preds = %80
  %91 = lshr i32 %44, %88
  %92 = udiv i32 %91, %6
  %93 = add nuw i32 %92, %19
  %94 = udiv i32 %93, %1
  %95 = icmp ult i32 %93, %1
  %96 = select i1 %95, i32 1, i32 %94
  %97 = udiv i32 %92, %96
  %98 = sub i32 %97, %1
  %99 = tail call i32 @llvm.abs.i32(i32 %98, i1 false) #9
  %100 = icmp ult i32 %99, %87
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = icmp eq i32 %97, %1
  br i1 %102, label %122, label %103

103:                                              ; preds = %101, %90, %80
  %104 = phi i32 [ %81, %80 ], [ 655360, %101 ], [ %81, %90 ]
  %105 = phi i32 [ %82, %80 ], [ %96, %101 ], [ %82, %90 ]
  %106 = phi i32 [ %83, %80 ], [ %88, %101 ], [ %83, %90 ]
  %107 = phi i32 [ %84, %80 ], [ %43, %101 ], [ %84, %90 ]
  %108 = phi i32 [ %85, %80 ], [ %27, %101 ], [ %85, %90 ]
  %109 = phi i32 [ %86, %80 ], [ %99, %101 ], [ %86, %90 ]
  %110 = phi i32 [ %87, %80 ], [ %99, %101 ], [ %87, %90 ]
  %111 = add nuw nsw i32 %43, 1
  %112 = icmp ult i32 %111, %33
  br i1 %112, label %35, label %113

113:                                              ; preds = %103, %20
  %114 = phi i32 [ %21, %20 ], [ %104, %103 ]
  %115 = phi i32 [ %22, %20 ], [ %105, %103 ]
  %116 = phi i32 [ %23, %20 ], [ %106, %103 ]
  %117 = phi i32 [ %24, %20 ], [ %107, %103 ]
  %118 = phi i32 [ %25, %20 ], [ %108, %103 ]
  %119 = phi i32 [ %26, %20 ], [ %109, %103 ]
  %120 = add nuw nsw i32 %27, 1
  %121 = icmp eq i32 %27, %16
  br i1 %121, label %122, label %20

122:                                              ; preds = %113, %101, %78, %57, %12, %8, %3
  %123 = phi i32 [ 0, %3 ], [ 0, %8 ], [ 0, %12 ], [ 655360, %101 ], [ 655360, %78 ], [ 655360, %57 ], [ %114, %113 ]
  %124 = phi i32 [ 0, %3 ], [ 0, %8 ], [ 0, %12 ], [ %52, %57 ], [ %73, %78 ], [ %96, %101 ], [ %115, %113 ]
  %125 = phi i32 [ 0, %3 ], [ 0, %8 ], [ 0, %12 ], [ %46, %57 ], [ %67, %78 ], [ %88, %101 ], [ %116, %113 ]
  %126 = phi i32 [ 0, %3 ], [ 0, %8 ], [ 0, %12 ], [ %43, %101 ], [ %43, %78 ], [ %43, %57 ], [ %117, %113 ]
  %127 = phi i32 [ 0, %3 ], [ 0, %8 ], [ 0, %12 ], [ %27, %101 ], [ %27, %78 ], [ %27, %57 ], [ %118, %113 ]
  %128 = phi i32 [ -1, %3 ], [ -1, %8 ], [ -1, %12 ], [ %55, %57 ], [ %76, %78 ], [ %99, %101 ], [ %119, %113 ]
  %129 = getelementptr %struct.rcar_lvds, ptr %0, i32 0, i32 6, i32 2, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %246, label %132

132:                                              ; preds = %122
  %133 = tail call i32 @clk_get_rate(ptr noundef nonnull %130) #9
  %134 = add i32 %133, -192000001
  %135 = icmp ult i32 %134, -180000001
  br i1 %135, label %246, label %136

136:                                              ; preds = %132
  %137 = add nuw nsw i32 %133, 23999999
  %138 = udiv i32 %137, 24000000
  %139 = udiv i32 %133, 12000000
  %140 = tail call i32 @llvm.umin.i32(i32 %139, i32 8) #9
  %141 = icmp ugt i32 %138, %140
  br i1 %141, label %246, label %142

142:                                              ; preds = %136
  %143 = lshr i32 %1, 1
  br label %144

144:                                              ; preds = %237, %142
  %145 = phi i32 [ %123, %142 ], [ %238, %237 ]
  %146 = phi i32 [ %124, %142 ], [ %239, %237 ]
  %147 = phi i32 [ %125, %142 ], [ %240, %237 ]
  %148 = phi i32 [ %126, %142 ], [ %241, %237 ]
  %149 = phi i32 [ %127, %142 ], [ %242, %237 ]
  %150 = phi i32 [ %128, %142 ], [ %243, %237 ]
  %151 = phi i32 [ %138, %142 ], [ %244, %237 ]
  %152 = udiv i32 %133, %151
  %153 = add i32 %152, 899999999
  %154 = udiv i32 %153, %152
  %155 = tail call i32 @llvm.umax.i32(i32 %154, i32 60) #9
  %156 = udiv i32 1800000000, %152
  %157 = tail call i32 @llvm.umin.i32(i32 %156, i32 120) #9
  %158 = icmp ult i32 %155, %157
  br i1 %158, label %159, label %237

159:                                              ; preds = %227, %144
  %160 = phi i32 [ %228, %227 ], [ %145, %144 ]
  %161 = phi i32 [ %229, %227 ], [ %146, %144 ]
  %162 = phi i32 [ %230, %227 ], [ %147, %144 ]
  %163 = phi i32 [ %231, %227 ], [ %148, %144 ]
  %164 = phi i32 [ %232, %227 ], [ %149, %144 ]
  %165 = phi i32 [ %233, %227 ], [ %150, %144 ]
  %166 = phi i32 [ %234, %227 ], [ %150, %144 ]
  %167 = phi i32 [ %235, %227 ], [ %155, %144 ]
  %168 = mul i32 %167, %152
  %169 = icmp ugt i32 %168, 1039500000
  %170 = zext i1 %169 to i32
  %171 = lshr i32 %168, %170
  %172 = udiv i32 %171, %6
  %173 = add i32 %172, %143
  %174 = udiv i32 %173, %1
  %175 = icmp ult i32 %173, %1
  %176 = select i1 %175, i32 1, i32 %174
  %177 = udiv i32 %172, %176
  %178 = sub i32 %177, %1
  %179 = tail call i32 @llvm.abs.i32(i32 %178, i1 false) #9
  %180 = icmp ult i32 %179, %166
  br i1 %180, label %181, label %183

181:                                              ; preds = %159
  %182 = icmp eq i32 %177, %1
  br i1 %182, label %246, label %183

183:                                              ; preds = %181, %159
  %184 = phi i32 [ 917504, %181 ], [ %160, %159 ]
  %185 = phi i32 [ %176, %181 ], [ %161, %159 ]
  %186 = phi i32 [ %170, %181 ], [ %162, %159 ]
  %187 = phi i32 [ %167, %181 ], [ %163, %159 ]
  %188 = phi i32 [ %151, %181 ], [ %164, %159 ]
  %189 = phi i32 [ %179, %181 ], [ %165, %159 ]
  %190 = phi i32 [ %179, %181 ], [ %166, %159 ]
  %191 = select i1 %169, i32 2, i32 1
  %192 = lshr i32 %168, %191
  %193 = udiv i32 %192, %6
  %194 = add nuw i32 %193, %143
  %195 = udiv i32 %194, %1
  %196 = icmp ult i32 %194, %1
  %197 = select i1 %196, i32 1, i32 %195
  %198 = udiv i32 %193, %197
  %199 = sub i32 %198, %1
  %200 = tail call i32 @llvm.abs.i32(i32 %199, i1 false) #9
  %201 = icmp ult i32 %200, %190
  br i1 %201, label %202, label %204

202:                                              ; preds = %183
  %203 = icmp eq i32 %198, %1
  br i1 %203, label %246, label %204

204:                                              ; preds = %202, %183
  %205 = phi i32 [ 917504, %202 ], [ %184, %183 ]
  %206 = phi i32 [ %197, %202 ], [ %185, %183 ]
  %207 = phi i32 [ %191, %202 ], [ %186, %183 ]
  %208 = phi i32 [ %167, %202 ], [ %187, %183 ]
  %209 = phi i32 [ %151, %202 ], [ %188, %183 ]
  %210 = phi i32 [ %200, %202 ], [ %189, %183 ]
  %211 = phi i32 [ %200, %202 ], [ %190, %183 ]
  %212 = add nuw nsw i32 %191, 1
  %213 = icmp eq i32 %212, 3
  br i1 %213, label %227, label %214

214:                                              ; preds = %204
  %215 = lshr i32 %168, %212
  %216 = udiv i32 %215, %6
  %217 = add nuw i32 %216, %143
  %218 = udiv i32 %217, %1
  %219 = icmp ult i32 %217, %1
  %220 = select i1 %219, i32 1, i32 %218
  %221 = udiv i32 %216, %220
  %222 = sub i32 %221, %1
  %223 = tail call i32 @llvm.abs.i32(i32 %222, i1 false) #9
  %224 = icmp ult i32 %223, %211
  br i1 %224, label %225, label %227

225:                                              ; preds = %214
  %226 = icmp eq i32 %221, %1
  br i1 %226, label %246, label %227

227:                                              ; preds = %225, %214, %204
  %228 = phi i32 [ %205, %204 ], [ 917504, %225 ], [ %205, %214 ]
  %229 = phi i32 [ %206, %204 ], [ %220, %225 ], [ %206, %214 ]
  %230 = phi i32 [ %207, %204 ], [ %212, %225 ], [ %207, %214 ]
  %231 = phi i32 [ %208, %204 ], [ %167, %225 ], [ %208, %214 ]
  %232 = phi i32 [ %209, %204 ], [ %151, %225 ], [ %209, %214 ]
  %233 = phi i32 [ %210, %204 ], [ %223, %225 ], [ %210, %214 ]
  %234 = phi i32 [ %211, %204 ], [ %223, %225 ], [ %211, %214 ]
  %235 = add nuw nsw i32 %167, 1
  %236 = icmp ult i32 %235, %157
  br i1 %236, label %159, label %237

237:                                              ; preds = %227, %144
  %238 = phi i32 [ %145, %144 ], [ %228, %227 ]
  %239 = phi i32 [ %146, %144 ], [ %229, %227 ]
  %240 = phi i32 [ %147, %144 ], [ %230, %227 ]
  %241 = phi i32 [ %148, %144 ], [ %231, %227 ]
  %242 = phi i32 [ %149, %144 ], [ %232, %227 ]
  %243 = phi i32 [ %150, %144 ], [ %233, %227 ]
  %244 = add nuw nsw i32 %151, 1
  %245 = icmp eq i32 %151, %140
  br i1 %245, label %246, label %144

246:                                              ; preds = %237, %225, %202, %181, %136, %132, %122
  %247 = phi i32 [ %123, %122 ], [ %123, %132 ], [ %123, %136 ], [ 917504, %225 ], [ 917504, %202 ], [ 917504, %181 ], [ %238, %237 ]
  %248 = phi i32 [ %124, %122 ], [ %124, %132 ], [ %124, %136 ], [ %176, %181 ], [ %197, %202 ], [ %220, %225 ], [ %239, %237 ]
  %249 = phi i32 [ %125, %122 ], [ %125, %132 ], [ %125, %136 ], [ %170, %181 ], [ %191, %202 ], [ %212, %225 ], [ %240, %237 ]
  %250 = phi i32 [ %126, %122 ], [ %126, %132 ], [ %126, %136 ], [ %167, %225 ], [ %167, %202 ], [ %167, %181 ], [ %241, %237 ]
  %251 = phi i32 [ %127, %122 ], [ %127, %132 ], [ %127, %136 ], [ %151, %225 ], [ %151, %202 ], [ %151, %181 ], [ %242, %237 ]
  %252 = phi i32 [ %128, %122 ], [ %128, %132 ], [ %128, %136 ], [ %179, %181 ], [ %200, %202 ], [ %223, %225 ], [ %243, %237 ]
  %253 = getelementptr inbounds %struct.rcar_lvds, ptr %0, i32 0, i32 6, i32 1
  %254 = load ptr, ptr %253, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %370, label %256

256:                                              ; preds = %246
  %257 = tail call i32 @clk_get_rate(ptr noundef nonnull %254) #9
  %258 = add i32 %257, -192000001
  %259 = icmp ult i32 %258, -180000001
  br i1 %259, label %370, label %260

260:                                              ; preds = %256
  %261 = add nuw nsw i32 %257, 23999999
  %262 = udiv i32 %261, 24000000
  %263 = udiv i32 %257, 12000000
  %264 = tail call i32 @llvm.umin.i32(i32 %263, i32 8) #9
  %265 = icmp ugt i32 %262, %264
  br i1 %265, label %370, label %266

266:                                              ; preds = %260
  %267 = lshr i32 %1, 1
  br label %268

268:                                              ; preds = %361, %266
  %269 = phi i32 [ %247, %266 ], [ %362, %361 ]
  %270 = phi i32 [ %248, %266 ], [ %363, %361 ]
  %271 = phi i32 [ %249, %266 ], [ %364, %361 ]
  %272 = phi i32 [ %250, %266 ], [ %365, %361 ]
  %273 = phi i32 [ %251, %266 ], [ %366, %361 ]
  %274 = phi i32 [ %252, %266 ], [ %367, %361 ]
  %275 = phi i32 [ %262, %266 ], [ %368, %361 ]
  %276 = udiv i32 %257, %275
  %277 = add i32 %276, 899999999
  %278 = udiv i32 %277, %276
  %279 = tail call i32 @llvm.umax.i32(i32 %278, i32 60) #9
  %280 = udiv i32 1800000000, %276
  %281 = tail call i32 @llvm.umin.i32(i32 %280, i32 120) #9
  %282 = icmp ult i32 %279, %281
  br i1 %282, label %283, label %361

283:                                              ; preds = %351, %268
  %284 = phi i32 [ %352, %351 ], [ %269, %268 ]
  %285 = phi i32 [ %353, %351 ], [ %270, %268 ]
  %286 = phi i32 [ %354, %351 ], [ %271, %268 ]
  %287 = phi i32 [ %355, %351 ], [ %272, %268 ]
  %288 = phi i32 [ %356, %351 ], [ %273, %268 ]
  %289 = phi i32 [ %357, %351 ], [ %274, %268 ]
  %290 = phi i32 [ %358, %351 ], [ %274, %268 ]
  %291 = phi i32 [ %359, %351 ], [ %279, %268 ]
  %292 = mul i32 %291, %276
  %293 = icmp ugt i32 %292, 1039500000
  %294 = zext i1 %293 to i32
  %295 = lshr i32 %292, %294
  %296 = udiv i32 %295, %6
  %297 = add i32 %296, %267
  %298 = udiv i32 %297, %1
  %299 = icmp ult i32 %297, %1
  %300 = select i1 %299, i32 1, i32 %298
  %301 = udiv i32 %296, %300
  %302 = sub i32 %301, %1
  %303 = tail call i32 @llvm.abs.i32(i32 %302, i1 false) #9
  %304 = icmp ult i32 %303, %290
  br i1 %304, label %305, label %307

305:                                              ; preds = %283
  %306 = icmp eq i32 %301, %1
  br i1 %306, label %370, label %307

307:                                              ; preds = %305, %283
  %308 = phi i32 [ 393216, %305 ], [ %284, %283 ]
  %309 = phi i32 [ %300, %305 ], [ %285, %283 ]
  %310 = phi i32 [ %294, %305 ], [ %286, %283 ]
  %311 = phi i32 [ %291, %305 ], [ %287, %283 ]
  %312 = phi i32 [ %275, %305 ], [ %288, %283 ]
  %313 = phi i32 [ %303, %305 ], [ %289, %283 ]
  %314 = phi i32 [ %303, %305 ], [ %290, %283 ]
  %315 = select i1 %293, i32 2, i32 1
  %316 = lshr i32 %292, %315
  %317 = udiv i32 %316, %6
  %318 = add nuw i32 %317, %267
  %319 = udiv i32 %318, %1
  %320 = icmp ult i32 %318, %1
  %321 = select i1 %320, i32 1, i32 %319
  %322 = udiv i32 %317, %321
  %323 = sub i32 %322, %1
  %324 = tail call i32 @llvm.abs.i32(i32 %323, i1 false) #9
  %325 = icmp ult i32 %324, %314
  br i1 %325, label %326, label %328

326:                                              ; preds = %307
  %327 = icmp eq i32 %322, %1
  br i1 %327, label %370, label %328

328:                                              ; preds = %326, %307
  %329 = phi i32 [ 393216, %326 ], [ %308, %307 ]
  %330 = phi i32 [ %321, %326 ], [ %309, %307 ]
  %331 = phi i32 [ %315, %326 ], [ %310, %307 ]
  %332 = phi i32 [ %291, %326 ], [ %311, %307 ]
  %333 = phi i32 [ %275, %326 ], [ %312, %307 ]
  %334 = phi i32 [ %324, %326 ], [ %313, %307 ]
  %335 = phi i32 [ %324, %326 ], [ %314, %307 ]
  %336 = add nuw nsw i32 %315, 1
  %337 = icmp eq i32 %336, 3
  br i1 %337, label %351, label %338

338:                                              ; preds = %328
  %339 = lshr i32 %292, %336
  %340 = udiv i32 %339, %6
  %341 = add nuw i32 %340, %267
  %342 = udiv i32 %341, %1
  %343 = icmp ult i32 %341, %1
  %344 = select i1 %343, i32 1, i32 %342
  %345 = udiv i32 %340, %344
  %346 = sub i32 %345, %1
  %347 = tail call i32 @llvm.abs.i32(i32 %346, i1 false) #9
  %348 = icmp ult i32 %347, %335
  br i1 %348, label %349, label %351

349:                                              ; preds = %338
  %350 = icmp eq i32 %345, %1
  br i1 %350, label %370, label %351

351:                                              ; preds = %349, %338, %328
  %352 = phi i32 [ %329, %328 ], [ 393216, %349 ], [ %329, %338 ]
  %353 = phi i32 [ %330, %328 ], [ %344, %349 ], [ %330, %338 ]
  %354 = phi i32 [ %331, %328 ], [ %336, %349 ], [ %331, %338 ]
  %355 = phi i32 [ %332, %328 ], [ %291, %349 ], [ %332, %338 ]
  %356 = phi i32 [ %333, %328 ], [ %275, %349 ], [ %333, %338 ]
  %357 = phi i32 [ %334, %328 ], [ %347, %349 ], [ %334, %338 ]
  %358 = phi i32 [ %335, %328 ], [ %347, %349 ], [ %335, %338 ]
  %359 = add nuw nsw i32 %291, 1
  %360 = icmp ult i32 %359, %281
  br i1 %360, label %283, label %361

361:                                              ; preds = %351, %268
  %362 = phi i32 [ %269, %268 ], [ %352, %351 ]
  %363 = phi i32 [ %270, %268 ], [ %353, %351 ]
  %364 = phi i32 [ %271, %268 ], [ %354, %351 ]
  %365 = phi i32 [ %272, %268 ], [ %355, %351 ]
  %366 = phi i32 [ %273, %268 ], [ %356, %351 ]
  %367 = phi i32 [ %274, %268 ], [ %357, %351 ]
  %368 = add nuw nsw i32 %275, 1
  %369 = icmp eq i32 %275, %264
  br i1 %369, label %370, label %268

370:                                              ; preds = %361, %349, %326, %305, %260, %256, %246
  %371 = phi i32 [ %247, %246 ], [ %247, %256 ], [ %247, %260 ], [ 393216, %349 ], [ 393216, %326 ], [ 393216, %305 ], [ %362, %361 ]
  %372 = phi i32 [ %248, %246 ], [ %248, %256 ], [ %248, %260 ], [ %300, %305 ], [ %321, %326 ], [ %344, %349 ], [ %363, %361 ]
  %373 = phi i32 [ %249, %246 ], [ %249, %256 ], [ %249, %260 ], [ %294, %305 ], [ %315, %326 ], [ %336, %349 ], [ %364, %361 ]
  %374 = phi i32 [ %250, %246 ], [ %250, %256 ], [ %250, %260 ], [ %291, %349 ], [ %291, %326 ], [ %291, %305 ], [ %365, %361 ]
  %375 = phi i32 [ %251, %246 ], [ %251, %256 ], [ %251, %260 ], [ %275, %349 ], [ %275, %326 ], [ %275, %305 ], [ %366, %361 ]
  %376 = shl i32 %374, 3
  %377 = add i32 %376, -8
  %378 = add i32 %375, -1
  %379 = icmp eq i32 %373, 0
  %380 = shl i32 %373, 10
  %381 = add i32 %380, -1024
  %382 = or i32 %381, 20480
  %383 = select i1 %379, i32 0, i32 %382
  %384 = select i1 %2, i32 4261888, i32 4196352
  %385 = or i32 %371, %384
  %386 = or i32 %385, %377
  %387 = or i32 %386, %378
  %388 = or i32 %387, %383
  %389 = getelementptr inbounds %struct.rcar_lvds, ptr %0, i32 0, i32 5
  %390 = load ptr, ptr %389, align 4
  %391 = getelementptr i8, ptr %390, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %391, i32 %388) #9, !srcloc !10
  %392 = icmp ugt i32 %372, 1
  br i1 %392, label %393, label %398

393:                                              ; preds = %370
  %394 = add i32 %372, -1
  %395 = or i32 %394, 384
  %396 = load ptr, ptr %389, align 4
  %397 = getelementptr i8, ptr %396, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %397, i32 %395) #9, !srcloc !10
  br label %401

398:                                              ; preds = %370
  %399 = load ptr, ptr %389, align 4
  %400 = getelementptr i8, ptr %399, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %400, i32 0) #9, !srcloc !10
  br label %401

401:                                              ; preds = %398, %393
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcar_lvds_clk_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 332, i32 noundef 9, ptr noundef null) #9
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 140
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #9, !srcloc !10
  %13 = getelementptr i8, ptr %0, i32 144
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #9
  tail call void @clk_unprepare(ptr noundef %14) #9
  br label %15

15:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rcar_lvds_dual_link(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 164
  %3 = load i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rcar_lvds_is_connected(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 132
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_lvds_platform_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_lvds_platform_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_lvds_pll_setup_gen2(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp ult i32 %1, 39000000
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = icmp ult i32 %1, 61000000
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = icmp ult i32 %1, 121000000
  %8 = select i1 %7, i32 21036, i32 447
  br label %9

9:                                                ; preds = %6, %4, %2
  %10 = phi i32 [ 22170, %2 ], [ 22395, %4 ], [ %8, %6 ]
  %11 = getelementptr inbounds %struct.rcar_lvds, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_lvds_pll_setup_gen3(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp ult i32 %1, 42000000
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = icmp ult i32 %1, 85000000
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = icmp ult i32 %1, 128000000
  %8 = select i1 %7, i32 1731, i32 18113
  br label %9

9:                                                ; preds = %6, %4, %2
  %10 = phi i32 [ 5323, %2 ], [ 2629, %4 ], [ %8, %6 ]
  %11 = getelementptr inbounds %struct.rcar_lvds, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_lvds_pll_setup_d3_e3(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @__rcar_lvds_pll_setup_d3_e3(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_lvds_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 176, i32 noundef 3520) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %184, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %7, align 8
  store ptr %3, ptr %4, align 4
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %3) #9
  %9 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = tail call ptr @soc_device_match(ptr noundef nonnull @lvds_quirk_matches) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.soc_device_attribute, ptr %10, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  store ptr %14, ptr %9, align 4
  br label %15

15:                                               ; preds = %12, %6
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 4
  %20 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 3
  %21 = tail call i32 @drm_of_find_panel_or_bridge(ptr noundef %18, i32 noundef 1, i32 noundef 0, ptr noundef %19, ptr noundef %20) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %85

23:                                               ; preds = %15
  %24 = load ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %4, align 4
  %28 = tail call ptr @devm_drm_panel_bridge_add(ptr noundef %27, ptr noundef nonnull %24) #9
  store ptr %28, ptr %20, align 4
  %29 = icmp eq ptr %28, null
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  %31 = or i1 %29, %30
  br i1 %31, label %88, label %32

32:                                               ; preds = %26, %23
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %88, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 25
  %41 = load ptr, ptr %40, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #9, !annotation !11
  %42 = call i32 @__of_parse_phandle_with_args(ptr noundef %41, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #9
  %43 = icmp ne i32 %42, 0
  %44 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  %45 = icmp eq ptr %44, null
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %88, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 6
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.device_driver, ptr %49, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = call ptr @of_match_device(ptr noundef %51, ptr noundef %39) #9
  %53 = getelementptr inbounds %struct.of_device_id, ptr %52, i32 0, i32 2
  %54 = call i32 @of_device_is_compatible(ptr noundef nonnull %44, ptr noundef %53) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.5) #10
  br label %83

57:                                               ; preds = %47
  %58 = load ptr, ptr %40, align 8
  %59 = call ptr @of_graph_get_port_by_id(ptr noundef %58, i32 noundef 1) #9
  %60 = call ptr @of_graph_get_port_by_id(ptr noundef nonnull %44, i32 noundef 1) #9
  %61 = call i32 @drm_of_lvds_get_dual_link_pixel_order(ptr noundef %59, ptr noundef %60) #9
  call void @of_node_put(ptr noundef %59) #9
  call void @of_node_put(ptr noundef %60) #9
  switch i32 %61, label %63 [
    i32 1, label %74
    i32 0, label %62
  ]

62:                                               ; preds = %57
  br label %74

63:                                               ; preds = %57
  %64 = load ptr, ptr %20, align 4
  %65 = getelementptr inbounds %struct.drm_bridge, ptr %64, i32 0, i32 6
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.drm_bridge_timings, ptr %66, i32 0, i32 3
  %70 = load i8, ptr %69, align 4, !range !12
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68, %63
  %73 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 8
  store i32 0, ptr %73, align 4
  br label %83

74:                                               ; preds = %68, %62, %57
  %75 = phi i32 [ 1, %62 ], [ 2, %57 ], [ 1, %68 ]
  %76 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 8
  store i32 %75, ptr %76, align 4
  %77 = call ptr @of_drm_find_bridge(ptr noundef nonnull %44) #9
  %78 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 7
  store ptr %77, ptr %78, align 4
  %79 = icmp eq ptr %77, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load i32, ptr %76, align 4
  %82 = getelementptr i8, ptr %77, i32 164
  store i32 %81, ptr %82, align 4
  br label %83

83:                                               ; preds = %80, %74, %72, %56
  %84 = phi i32 [ 0, %72 ], [ 0, %80 ], [ -6, %56 ], [ -517, %74 ]
  call void @of_node_put(ptr noundef nonnull %44) #9
  br label %88

85:                                               ; preds = %15
  %86 = icmp eq i32 %21, -19
  %87 = select i1 %86, i32 0, i32 %21
  br label %88

88:                                               ; preds = %85, %83, %38, %32, %26
  %89 = phi i32 [ %21, %85 ], [ 0, %38 ], [ %84, %83 ], [ -22, %26 ], [ 0, %32 ]
  %90 = phi i32 [ %87, %85 ], [ 0, %38 ], [ %84, %83 ], [ -22, %26 ], [ 0, %32 ]
  %91 = load ptr, ptr %9, align 4
  %92 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %91, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 8
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 %89, i32 %90
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %184, label %98

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 2
  %100 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 2, i32 7
  store ptr @rcar_lvds_bridge_ops, ptr %100, align 4
  %101 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 2, i32 4
  store ptr %102, ptr %103, align 4
  %104 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %105 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 5
  store ptr %104, ptr %105, align 4
  %106 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = ptrtoint ptr %104 to i32
  br label %184

109:                                              ; preds = %98
  %110 = load ptr, ptr %4, align 4
  %111 = call ptr @devm_clk_get(ptr noundef %110, ptr noundef null) #9
  %112 = icmp ugt ptr %111, inttoptr (i32 -4096 to ptr)
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = ptrtoint ptr %111 to i32
  %115 = load ptr, ptr %4, align 4
  %116 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %115, i32 noundef %114, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #9
  %117 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 6
  store ptr %111, ptr %117, align 4
  br label %180

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 6
  store ptr %111, ptr %119, align 4
  %120 = load ptr, ptr %9, align 4
  %121 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %120, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %183, label %125

125:                                              ; preds = %118
  %126 = load ptr, ptr %4, align 4
  %127 = call ptr @devm_clk_get(ptr noundef %126, ptr noundef nonnull @.str.8) #9
  %128 = icmp ugt ptr %127, inttoptr (i32 -4096 to ptr)
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = icmp eq ptr %127, inttoptr (i32 -2 to ptr)
  br i1 %130, label %131, label %135

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 6, i32 1
  store ptr null, ptr %132, align 4
  br label %140

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 6, i32 1
  store ptr %127, ptr %134, align 4
  br label %140

135:                                              ; preds = %129
  %136 = ptrtoint ptr %127 to i32
  %137 = load ptr, ptr %4, align 4
  %138 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %137, i32 noundef %136, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8) #9
  %139 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 6, i32 1
  store ptr %127, ptr %139, align 4
  br label %180

140:                                              ; preds = %133, %131
  %141 = phi ptr [ %132, %131 ], [ %134, %133 ]
  %142 = load ptr, ptr %4, align 4
  %143 = call ptr @devm_clk_get(ptr noundef %142, ptr noundef nonnull @.str.9) #9
  %144 = icmp ugt ptr %143, inttoptr (i32 -4096 to ptr)
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = icmp eq ptr %143, inttoptr (i32 -2 to ptr)
  br i1 %146, label %147, label %151

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 6, i32 2
  store ptr null, ptr %148, align 4
  br label %156

149:                                              ; preds = %140
  %150 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 6, i32 2
  store ptr %143, ptr %150, align 4
  br label %156

151:                                              ; preds = %145
  %152 = ptrtoint ptr %143 to i32
  %153 = load ptr, ptr %4, align 4
  %154 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %153, i32 noundef %152, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9) #9
  %155 = getelementptr inbounds %struct.rcar_lvds, ptr %4, i32 0, i32 6, i32 2
  store ptr %143, ptr %155, align 4
  br label %180

156:                                              ; preds = %149, %147
  %157 = phi ptr [ %148, %147 ], [ %150, %149 ]
  %158 = load ptr, ptr %4, align 4
  %159 = call ptr @devm_clk_get(ptr noundef %158, ptr noundef nonnull @.str.10) #9
  %160 = icmp ugt ptr %159, inttoptr (i32 -4096 to ptr)
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = icmp eq ptr %159, inttoptr (i32 -2 to ptr)
  br i1 %162, label %168, label %163

163:                                              ; preds = %161
  %164 = ptrtoint ptr %159 to i32
  %165 = load ptr, ptr %4, align 4
  %166 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %165, i32 noundef %164, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10) #9
  %167 = getelementptr %struct.rcar_lvds, ptr %4, i32 0, i32 6, i32 2, i32 1
  store ptr %159, ptr %167, align 4
  br label %180

168:                                              ; preds = %161, %156
  %169 = phi ptr [ null, %161 ], [ %159, %156 ]
  %170 = getelementptr %struct.rcar_lvds, ptr %4, i32 0, i32 6, i32 2, i32 1
  store ptr %169, ptr %170, align 4
  %171 = load ptr, ptr %141, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %183

173:                                              ; preds = %168
  %174 = load ptr, ptr %157, align 4
  %175 = icmp eq ptr %174, null
  %176 = icmp eq ptr %169, null
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %179, ptr noundef nonnull @.str.11) #10
  br label %184

180:                                              ; preds = %163, %151, %135, %113
  %181 = phi i32 [ %114, %113 ], [ %136, %135 ], [ %152, %151 ], [ %164, %163 ]
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %180, %173, %168, %118
  call void @drm_bridge_add(ptr noundef %99) #9
  br label %184

184:                                              ; preds = %183, %180, %178, %107, %88, %1
  %185 = phi i32 [ %108, %107 ], [ 0, %183 ], [ -12, %1 ], [ %96, %88 ], [ %181, %180 ], [ -22, %178 ]
  ret i32 %185
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_lvds_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_lvds, ptr %3, i32 0, i32 2
  tail call void @drm_bridge_remove(ptr noundef %4) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_lvds_get_dual_link_pixel_order(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_lvds_attach(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 132
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @drm_bridge_attach(ptr noundef %8, ptr noundef nonnull %4, ptr noundef %0, i32 noundef %1) #9
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rcar_lvds_mode_fixup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 31000, i32 5000
  %11 = load i32, ptr %2, align 4
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 %10)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 148500)
  store i32 %13, ptr %2, align 4
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_lvds_atomic_enable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %3, ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_atomic_state, ptr %3, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_atomic_state, ptr %3, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.__drm_connnectors_state, ptr %14, i32 %8, i32 3
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi ptr [ %16, %12 ], [ null, %2 ]
  %19 = getelementptr inbounds %struct.drm_connector_state, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call fastcc void @__rcar_lvds_atomic_enable(ptr noundef %0, ptr noundef %3, ptr noundef %20, ptr noundef %6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_lvds_atomic_disable(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 140
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #9, !srcloc !10
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #9, !srcloc !10
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #9, !srcloc !10
  %9 = getelementptr i8, ptr %0, i32 164
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %0, i32 160
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_bridge, ptr %14, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %18, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef nonnull %14, ptr noundef %1) #9
  br label %21

21:                                               ; preds = %16, %12, %2
  %22 = getelementptr i8, ptr %0, i32 144
  %23 = load ptr, ptr %22, align 4
  tail call void @clk_disable(ptr noundef %23) #9
  tail call void @clk_unprepare(ptr noundef %23) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__rcar_lvds_atomic_enable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = getelementptr i8, ptr %0, i32 144
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = tail call i32 @clk_enable(ptr noundef %7) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %14

14:                                               ; preds = %13, %4
  %15 = phi i32 [ %8, %4 ], [ %11, %13 ]
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %177, label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr i8, ptr %0, i32 164
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %0, i32 160
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call fastcc void @__rcar_lvds_atomic_enable(ptr noundef nonnull %23, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %26

26:                                               ; preds = %25, %21, %17
  %27 = getelementptr i8, ptr %0, i32 140
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #9, !srcloc !10
  %30 = getelementptr i8, ptr %0, i32 -4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 0, i32 8224
  %37 = load ptr, ptr %27, align 4
  %38 = getelementptr i8, ptr %37, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #9, !srcloc !10
  %39 = load ptr, ptr %30, align 4
  %40 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %26
  %45 = load i32, ptr %18, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = icmp eq i32 %45, 2
  %49 = getelementptr i8, ptr %0, i32 160
  %50 = load ptr, ptr %49, align 4
  %51 = icmp ne ptr %50, null
  %52 = select i1 %51, i1 %48, i1 false
  %53 = select i1 %52, i32 3, i32 1
  br label %54

54:                                               ; preds = %47, %44
  %55 = phi i32 [ %53, %47 ], [ 0, %44 ]
  %56 = load ptr, ptr %27, align 4
  %57 = getelementptr i8, ptr %56, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #9, !srcloc !10
  br label %58

58:                                               ; preds = %54, %26
  %59 = load i32, ptr %18, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = getelementptr i8, ptr %0, i32 160
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %61, %58
  %66 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.drm_crtc, ptr %2, i32 0, i32 8
  %69 = load i32, ptr %68, align 8
  %70 = getelementptr %struct.__drm_crtcs_state, ptr %67, i32 %69, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.drm_crtc_state, ptr %71, i32 0, i32 7
  %73 = load ptr, ptr %30, align 4
  %74 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = load i32, ptr %72, align 4
  %77 = mul i32 %76, 1000
  tail call void %75(ptr noundef %5, i32 noundef %77) #9
  br label %78

78:                                               ; preds = %65, %61
  %79 = getelementptr i8, ptr %0, i32 136
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %107, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 20, i32 7
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 20, i32 6
  %88 = load ptr, ptr %87, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %86, %82
  %91 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.6) #10
  br label %107

92:                                               ; preds = %86
  %93 = load i32, ptr %88, align 4
  %94 = add i32 %93, -4112
  %95 = icmp ult i32 %94, 3
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %97, ptr noundef nonnull @.str.7, i32 noundef %93) #10
  br label %107

98:                                               ; preds = %92
  %99 = getelementptr inbounds [3 x i32], ptr @switch.table.__rcar_lvds_atomic_enable, i32 0, i32 %94
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 20, i32 8
  %102 = load i32, ptr %101, align 8
  %103 = lshr i32 %102, 5
  %104 = and i32 %103, 1
  %105 = or i32 %104, %100
  %106 = shl nuw nsw i32 %105, 8
  br label %107

107:                                              ; preds = %98, %96, %90, %78
  %108 = phi i32 [ 0, %96 ], [ %106, %98 ], [ 0, %90 ], [ 0, %78 ]
  %109 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.drm_crtc, ptr %2, i32 0, i32 8
  %114 = load i32, ptr %113, align 8
  %115 = icmp eq i32 %114, 2
  %116 = or i32 %108, 32768
  %117 = select i1 %115, i32 %116, i32 %108
  br label %118

118:                                              ; preds = %112, %107
  %119 = phi i32 [ %108, %107 ], [ %117, %112 ]
  %120 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %119) #9, !srcloc !10
  %121 = load ptr, ptr %27, align 4
  %122 = getelementptr i8, ptr %121, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 1023) #9, !srcloc !10
  %123 = load ptr, ptr %30, align 4
  %124 = load i32, ptr %123, align 4
  %125 = icmp ult i32 %124, 3
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = or i32 %119, 6
  %128 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %127) #9, !srcloc !10
  %129 = load ptr, ptr %30, align 4
  br label %130

130:                                              ; preds = %126, %118
  %131 = phi ptr [ %129, %126 ], [ %123, %118 ]
  %132 = phi i32 [ %127, %126 ], [ %119, %118 ]
  %133 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %131, i32 0, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, 8
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = or i32 %132, 16
  %139 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %138) #9, !srcloc !10
  %140 = load ptr, ptr %30, align 4
  %141 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %140, i32 0, i32 1
  %142 = load i32, ptr %141, align 4
  br label %143

143:                                              ; preds = %137, %130
  %144 = phi i32 [ %134, %130 ], [ %142, %137 ]
  %145 = phi i32 [ %132, %130 ], [ %138, %137 ]
  %146 = and i32 %144, 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %143
  %149 = or i32 %145, 4
  %150 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %149) #9, !srcloc !10
  %151 = load ptr, ptr %30, align 4
  %152 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %151, i32 0, i32 1
  %153 = load i32, ptr %152, align 4
  br label %154

154:                                              ; preds = %148, %143
  %155 = phi i32 [ %153, %148 ], [ %144, %143 ]
  %156 = phi i32 [ %149, %148 ], [ %145, %143 ]
  %157 = and i32 %155, 2
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %168, label %159

159:                                              ; preds = %154
  %160 = or i32 %156, 2
  %161 = and i32 %155, 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %160) #9, !srcloc !10
  %165 = load ptr, ptr %30, align 4
  %166 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %165, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  br label %168

168:                                              ; preds = %163, %159, %154
  %169 = phi i32 [ %155, %159 ], [ %167, %163 ], [ %155, %154 ]
  %170 = phi i32 [ %160, %159 ], [ %160, %163 ], [ %156, %154 ]
  %171 = and i32 %169, 8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #9
  br label %174

174:                                              ; preds = %173, %168
  %175 = or i32 %170, 1
  %176 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %175) #9, !srcloc !10
  br label %177

177:                                              ; preds = %174, %14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2150041614}
!10 = !{i64 2500521}
!11 = !{!"auto-init"}
!12 = !{i8 0, i8 2}
