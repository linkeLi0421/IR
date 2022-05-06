; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun4i_frontend.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_frontend.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunxi_bt601_yuv2rgb_coef:\09\09\09\09\09"
module asm "\09.asciz \09\22sunxi_bt601_yuv2rgb_coef\22\09\09\09\09\09"
module asm "__kstrtabns_sunxi_bt601_yuv2rgb_coef:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_frontend_init:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_frontend_init\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_frontend_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_frontend_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_frontend_exit\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_frontend_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_frontend_update_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_frontend_update_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_frontend_update_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_frontend_format_is_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_frontend_format_is_supported\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_frontend_format_is_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_frontend_update_formats:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_frontend_update_formats\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_frontend_update_formats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_frontend_update_coord:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_frontend_update_coord\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_frontend_update_coord:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_frontend_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_frontend_enable\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_frontend_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_frontend_of_table:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_frontend_of_table\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_frontend_of_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sun4i_frontend_data = type { i8, i8, [2 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.sun4i_frontend = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.66, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.66 = type { [4 x i8] }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.68, ptr, i32, ptr, i8, i32 }
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
%struct.anon.68 = type { i32, ptr }
%struct.sun4i_drv = type { %struct.list_head, %struct.list_head, %struct.list_head }

@sunxi_bt601_yuv2rgb_coef = dso_local constant [12 x i32] [i32 1191, i32 7791, i32 7359, i32 2167, i32 1191, i32 0, i32 1634, i32 12817, i32 1191, i32 2066, i32 0, i32 11953], align 4
@__kstrtab_sunxi_bt601_yuv2rgb_coef = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunxi_bt601_yuv2rgb_coef = external dso_local constant [0 x i8], align 1
@__ksymtab_sunxi_bt601_yuv2rgb_coef = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunxi_bt601_yuv2rgb_coef to i32), ptr @__kstrtab_sunxi_bt601_yuv2rgb_coef, ptr @__kstrtabns_sunxi_bt601_yuv2rgb_coef }, section "___ksymtab+sunxi_bt601_yuv2rgb_coef", align 4
@__kstrtab_sun4i_frontend_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_frontend_init = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_frontend_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_frontend_init to i32), ptr @__kstrtab_sun4i_frontend_init, ptr @__kstrtabns_sun4i_frontend_init }, section "___ksymtab+sun4i_frontend_init", align 4
@__kstrtab_sun4i_frontend_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_frontend_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_frontend_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_frontend_exit to i32), ptr @__kstrtab_sun4i_frontend_exit, ptr @__kstrtabns_sun4i_frontend_exit }, section "___ksymtab+sun4i_frontend_exit", align 4
@.str = private unnamed_addr constant [27 x i8] c"Frontend stride: %d bytes\0A\00", align 1
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Setting buffer #0 address to %pad\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Setting buffer #1 address to %pad\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Setting buffer #2 address to %pad\0A\00", align 1
@__kstrtab_sun4i_frontend_update_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_frontend_update_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_frontend_update_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_frontend_update_buffer to i32), ptr @__kstrtab_sun4i_frontend_update_buffer, ptr @__kstrtabns_sun4i_frontend_update_buffer }, section "___ksymtab+sun4i_frontend_update_buffer", align 4
@__kstrtab_sun4i_frontend_format_is_supported = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_frontend_format_is_supported = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_frontend_format_is_supported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_frontend_format_is_supported to i32), ptr @__kstrtab_sun4i_frontend_format_is_supported, ptr @__kstrtabns_sun4i_frontend_format_is_supported }, section "___ksymtab+sun4i_frontend_format_is_supported", align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Invalid input format\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Invalid input mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Invalid pixel sequence\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Invalid output format\0A\00", align 1
@__kstrtab_sun4i_frontend_update_formats = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_frontend_update_formats = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_frontend_update_formats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_frontend_update_formats to i32), ptr @__kstrtab_sun4i_frontend_update_formats, ptr @__kstrtabns_sun4i_frontend_update_formats }, section "___ksymtab+sun4i_frontend_update_formats", align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Frontend size W: %u H: %u\0A\00", align 1
@__kstrtab_sun4i_frontend_update_coord = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_frontend_update_coord = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_frontend_update_coord = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_frontend_update_coord to i32), ptr @__kstrtab_sun4i_frontend_update_coord, ptr @__kstrtabns_sun4i_frontend_update_coord }, section "___ksymtab+sun4i_frontend_update_coord", align 4
@__kstrtab_sun4i_frontend_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_frontend_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_frontend_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_frontend_enable to i32), ptr @__kstrtab_sun4i_frontend_enable, ptr @__kstrtabns_sun4i_frontend_enable }, section "___ksymtab+sun4i_frontend_enable", align 4
@sun4i_a10_frontend = internal constant %struct.sun4i_frontend_data { i8 0, i8 1, [2 x i32] [i32 0, i32 1032192] }, align 4
@sun8i_a33_frontend = internal constant %struct.sun4i_frontend_data { i8 1, i8 0, [2 x i32] [i32 1024, i32 1033216] }, align 4
@sun4i_frontend_of_table = dso_local constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-display-frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_frontend }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-display-frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_frontend }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-display-frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a33_frontend }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-display-frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a33_frontend }, %struct.of_device_id zeroinitializer], align 4
@__kstrtab_sun4i_frontend_of_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_frontend_of_table = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_frontend_of_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_frontend_of_table to i32), ptr @__kstrtab_sun4i_frontend_of_table, ptr @__kstrtabns_sun4i_frontend_of_table }, section "___ksymtab+sun4i_frontend_of_table", align 4
@__UNIQUE_ID_author251 = internal constant [56 x i8] c"author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [57 x i8] c"description=Allwinner A10 Display Engine Frontend Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@sun4i_frontend_driver = internal global %struct.platform_driver { ptr @sun4i_frontend_probe, ptr @sun4i_frontend_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_frontend_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_frontend_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.9 = private unnamed_addr constant [15 x i8] c"sun4i-frontend\00", align 1
@sun4i_frontend_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_frontend_runtime_suspend, ptr @sun4i_frontend_runtime_resume, ptr null }, align 4
@sun4i_frontend_ops = internal constant %struct.component_ops { ptr @sun4i_frontend_bind, ptr @sun4i_frontend_unbind }, align 4
@sun4i_frontend_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 2580, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"Couldn't create the frontend regmap\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Couldn't get our reset line\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Couldn't get our bus clock\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Couldn't get our mod clock\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"ram\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Couldn't get our ram clock\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Couldn't reset our device\0A\00", align 1
@sun4i_frontend_horz_coef = internal unnamed_addr constant [64 x i32] [i32 1073741824, i32 0, i32 1090387968, i32 65283, i32 1073545216, i32 65285, i32 1073479680, i32 65286, i32 1056636928, i32 65288, i32 1039859712, i32 65289, i32 1006239744, i32 65037, i32 972685312, i32 65039, i32 955908096, i32 65040, i32 922353664, i32 65042, i32 872022016, i32 64790, i32 838467584, i32 64792, i32 804913152, i32 64794, i32 754581504, i32 64542, i32 704249856, i32 64545, i32 670760960, i32 64291, i32 620429312, i32 64294, i32 570097664, i32 64297, i32 536608768, i32 64043, i32 486277120, i32 64046, i32 436011008, i32 64048, i32 385679360, i32 64051, i32 352124928, i32 64053, i32 301858816, i32 64055, i32 268304384, i32 64057, i32 234749952, i32 64059, i32 184418304, i32 64062, i32 150929408, i32 64318, i32 117374976, i32 64320, i32 100597760, i32 64576, i32 67043328, i32 64833, i32 33488896, i32 65090], align 4
@sun4i_frontend_vert_coef = internal unnamed_addr constant [32 x i32] [i32 16384, i32 82175, i32 212990, i32 278525, i32 409340, i32 -16237060, i32 670715, i32 -15910405, i32 -15779845, i32 -15649030, i32 -32230405, i32 -32099845, i32 -48680965, i32 -48485125, i32 -48289285, i32 -64935940, i32 -64740100, i32 -64544260, i32 -81190915, i32 -80995075, i32 -80799235, i32 -80668930, i32 -80538370, i32 -97119745, i32 -80277505, i32 -80146945, i32 -80016896, i32 -63108865, i32 -63044096, i32 -46201856, i32 -29424896, i32 -12582656], align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_sun4i_frontend_enable, ptr @__ksymtab_sun4i_frontend_exit, ptr @__ksymtab_sun4i_frontend_format_is_supported, ptr @__ksymtab_sun4i_frontend_init, ptr @__ksymtab_sun4i_frontend_of_table, ptr @__ksymtab_sun4i_frontend_update_buffer, ptr @__ksymtab_sun4i_frontend_update_coord, ptr @__ksymtab_sun4i_frontend_update_formats, ptr @__ksymtab_sunxi_bt601_yuv2rgb_coef], section "llvm.metadata"

@__mod_of__sun4i_frontend_of_table_device_table = dso_local alias [5 x %struct.of_device_id], ptr @sun4i_frontend_of_table

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_frontend_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sun4i_frontend, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sun4i_frontend_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sun4i_frontend, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sun4i_frontend_update_buffer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %8 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 8
  %9 = load i64, ptr %8, align 8
  %10 = icmp eq i64 %9, 648518346341351425
  br i1 %10, label %11, label %46

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = shl i32 %15, 5
  %17 = add i32 %16, -992
  %18 = getelementptr inbounds %struct.sun4i_frontend, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = add i32 %13, 2031616
  %21 = and i32 %20, 2031616
  %22 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 48, i32 noundef %21) #6
  %23 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.drm_format_info, ptr %24, i32 0, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = icmp ugt i8 %26, 1
  br i1 %27, label %28, label %61

28:                                               ; preds = %11
  %29 = getelementptr %struct.drm_framebuffer, ptr %7, i32 0, i32 6, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %30, 5
  %32 = add i32 %31, -992
  %33 = load ptr, ptr %18, align 4
  %34 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 52, i32 noundef %21) #6
  %35 = load ptr, ptr %23, align 8
  %36 = getelementptr inbounds %struct.drm_format_info, ptr %35, i32 0, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = icmp ugt i8 %37, 2
  br i1 %38, label %39, label %61

39:                                               ; preds = %28
  %40 = getelementptr %struct.drm_framebuffer, ptr %7, i32 0, i32 6, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = shl i32 %41, 5
  %43 = add i32 %42, -992
  %44 = load ptr, ptr %18, align 4
  %45 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 56, i32 noundef %21) #6
  br label %61

46:                                               ; preds = %2
  %47 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 6
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.drm_format_info, ptr %50, i32 0, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = icmp ugt i8 %52, 1
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = getelementptr %struct.drm_framebuffer, ptr %7, i32 0, i32 6, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i8 %52, 2
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr %struct.drm_framebuffer, ptr %7, i32 0, i32 6, i32 2
  %60 = load i32, ptr %59, align 8
  br label %61

61:                                               ; preds = %58, %54, %46, %39, %28, %11
  %62 = phi i32 [ %48, %58 ], [ %48, %54 ], [ %17, %39 ], [ %17, %28 ], [ %48, %46 ], [ %17, %11 ]
  %63 = phi i32 [ %56, %58 ], [ %56, %54 ], [ %32, %39 ], [ %32, %28 ], [ 0, %46 ], [ 0, %11 ]
  %64 = phi i32 [ %60, %58 ], [ 0, %54 ], [ %43, %39 ], [ 0, %28 ], [ 0, %46 ], [ 0, %11 ]
  %65 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 6
  %66 = load i32, ptr %65, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %66) #6
  %67 = getelementptr inbounds %struct.sun4i_frontend, ptr %0, i32 0, i32 6
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 @regmap_write(ptr noundef %68, i32 noundef 64, i32 noundef %62) #6
  %70 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.drm_format_info, ptr %71, i32 0, i32 2
  %73 = load i8, ptr %72, align 1
  %74 = icmp ugt i8 %73, 1
  br i1 %74, label %75, label %86

75:                                               ; preds = %61
  %76 = load ptr, ptr %67, align 4
  %77 = tail call i32 @regmap_write(ptr noundef %76, i32 noundef 68, i32 noundef %63) #6
  %78 = load ptr, ptr %70, align 8
  %79 = getelementptr inbounds %struct.drm_format_info, ptr %78, i32 0, i32 2
  %80 = load i8, ptr %79, align 1
  %81 = icmp ugt i8 %80, 2
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load ptr, ptr %67, align 4
  %84 = tail call i32 @regmap_write(ptr noundef %83, i32 noundef 72, i32 noundef %64) #6
  %85 = load ptr, ptr %70, align 8
  br label %86

86:                                               ; preds = %82, %75, %61
  %87 = phi ptr [ %85, %82 ], [ %78, %75 ], [ %71, %61 ]
  %88 = load i32, ptr %87, align 4
  switch i32 %88, label %89 [
    i32 825316953, label %90
    i32 842094169, label %90
    i32 909203033, label %90
    i32 875714137, label %90
  ]

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %89, %86, %86, %86, %86
  %91 = phi i1 [ false, %89 ], [ true, %86 ], [ true, %86 ], [ true, %86 ], [ true, %86 ]
  %92 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef %7, ptr noundef %5, i32 noundef 0) #6
  %93 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %94 = mul i32 %93, -4096
  %95 = add i32 %94, %92
  store i32 %95, ptr %3, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #6
  %96 = load ptr, ptr %67, align 4
  %97 = load i32, ptr %3, align 4
  %98 = call i32 @regmap_write(ptr noundef %96, i32 noundef 32, i32 noundef %97) #6
  %99 = load ptr, ptr %70, align 8
  %100 = getelementptr inbounds %struct.drm_format_info, ptr %99, i32 0, i32 2
  %101 = load i8, ptr %100, align 1
  %102 = icmp ugt i8 %101, 1
  br i1 %102, label %103, label %125

103:                                              ; preds = %90
  %104 = select i1 %91, i32 2, i32 1
  %105 = call i32 @drm_fb_cma_get_gem_addr(ptr noundef %7, ptr noundef %5, i32 noundef %104) #6
  %106 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %107 = mul i32 %106, -4096
  %108 = add i32 %107, %105
  store i32 %108, ptr %3, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #6
  %109 = load ptr, ptr %67, align 4
  %110 = load i32, ptr %3, align 4
  %111 = call i32 @regmap_write(ptr noundef %109, i32 noundef 36, i32 noundef %110) #6
  %112 = load ptr, ptr %70, align 8
  %113 = getelementptr inbounds %struct.drm_format_info, ptr %112, i32 0, i32 2
  %114 = load i8, ptr %113, align 1
  %115 = icmp ugt i8 %114, 2
  br i1 %115, label %116, label %125

116:                                              ; preds = %103
  %117 = select i1 %91, i32 1, i32 2
  %118 = call i32 @drm_fb_cma_get_gem_addr(ptr noundef %7, ptr noundef %5, i32 noundef %117) #6
  %119 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %120 = mul i32 %119, -4096
  %121 = add i32 %120, %118
  store i32 %121, ptr %3, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #6
  %122 = load ptr, ptr %67, align 4
  %123 = load i32, ptr %3, align 4
  %124 = call i32 @regmap_write(ptr noundef %122, i32 noundef 40, i32 noundef %123) #6
  br label %125

125:                                              ; preds = %116, %103, %90
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local zeroext i1 @sun4i_frontend_format_is_supported(i32 noundef %0, i64 noundef %1) #3 {
  switch i64 %1, label %7 [
    i64 648518346341351425, label %4
    i64 0, label %3
  ]

3:                                                ; preds = %2
  switch i32 %0, label %6 [
    i32 875714626, label %7
    i32 842094158, label %7
    i32 909203022, label %7
    i32 825382478, label %7
    i32 825644622, label %7
    i32 1498831189, label %7
    i32 1498765654, label %7
    i32 875713112, label %7
    i32 825316697, label %7
    i32 842093913, label %7
    i32 909202777, label %7
    i32 875713881, label %7
    i32 1448695129, label %7
    i32 825316953, label %7
    i32 842094169, label %7
    i32 909203033, label %7
    i32 875714137, label %7
    i32 1431918169, label %7
  ]

4:                                                ; preds = %2
  switch i32 %0, label %5 [
    i32 842094158, label %7
    i32 909203022, label %7
    i32 825382478, label %7
    i32 825644622, label %7
    i32 825316697, label %7
    i32 842093913, label %7
    i32 909202777, label %7
    i32 842094169, label %7
    i32 909203033, label %7
    i32 825316953, label %7
  ]

5:                                                ; preds = %4
  br label %7

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %5, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %2
  %8 = phi i1 [ false, %2 ], [ false, %5 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %3 ], [ false, %6 ], [ true, %3 ], [ true, %3 ], [ true, %3 ], [ true, %3 ], [ true, %3 ], [ true, %3 ], [ true, %3 ], [ true, %3 ], [ true, %3 ], [ true, %3 ], [ true, %3 ], [ true, %3 ], [ true, %3 ], [ true, %3 ], [ true, %3 ], [ true, %3 ], [ true, %3 ]
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_frontend_update_formats(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 8
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.drm_format_info, ptr %9, i32 0, i32 9
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.drm_format_info, ptr %9, i32 0, i32 6
  %17 = load i8, ptr %16, align 2
  switch i8 %17, label %29 [
    i8 4, label %18
    i8 2, label %22
    i8 1, label %25
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.drm_format_info, ptr %9, i32 0, i32 7
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 1
  br i1 %21, label %31, label %29

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.drm_format_info, ptr %9, i32 0, i32 7
  %24 = load i8, ptr %23, align 1
  switch i8 %24, label %29 [
    i8 2, label %31
    i8 1, label %30
  ]

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.drm_format_info, ptr %9, i32 0, i32 7
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 1
  br i1 %28, label %31, label %29

29:                                               ; preds = %25, %22, %18, %15
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4) #6
  br label %129

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %25, %22, %18, %3
  %32 = phi i32 [ 80, %3 ], [ 48, %18 ], [ 32, %22 ], [ 0, %25 ], [ 16, %30 ]
  %33 = icmp eq i64 %11, 648518346341351425
  %34 = getelementptr inbounds %struct.drm_format_info, ptr %9, i32 0, i32 2
  %35 = load i8, ptr %34, align 1
  switch i8 %35, label %38 [
    i8 1, label %41
    i8 2, label %36
    i8 3, label %39
  ]

36:                                               ; preds = %31
  %37 = select i1 %33, i32 1536, i32 512
  br label %41

38:                                               ; preds = %31
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5) #6
  br label %129

39:                                               ; preds = %31
  %40 = select i1 %33, i32 1024, i32 0
  br i1 %14, label %41, label %51

41:                                               ; preds = %39, %36, %31
  %42 = phi i32 [ %40, %39 ], [ %37, %36 ], [ 256, %31 ]
  %43 = load i32, ptr %9, align 4
  switch i32 %43, label %50 [
    i32 875714626, label %51
    i32 842094158, label %51
    i32 909203022, label %51
    i32 825382478, label %44
    i32 825644622, label %45
    i32 1498831189, label %51
    i32 1498765654, label %46
    i32 875713112, label %47
    i32 1448695129, label %48
    i32 1431918169, label %49
  ]

44:                                               ; preds = %41
  br label %51

45:                                               ; preds = %41
  br label %51

46:                                               ; preds = %41
  br label %51

47:                                               ; preds = %41
  br label %51

48:                                               ; preds = %41
  br label %51

49:                                               ; preds = %41
  br label %51

50:                                               ; preds = %41
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6) #6
  br label %129

51:                                               ; preds = %49, %48, %47, %46, %45, %44, %41, %41, %41, %41, %39
  %52 = phi i32 [ %42, %49 ], [ %42, %48 ], [ %42, %47 ], [ %42, %46 ], [ %42, %45 ], [ %42, %44 ], [ %42, %41 ], [ %42, %41 ], [ %42, %41 ], [ %42, %41 ], [ %40, %39 ]
  %53 = phi i32 [ 3, %49 ], [ 1, %48 ], [ 1, %47 ], [ 2, %46 ], [ 1, %45 ], [ 1, %44 ], [ 0, %41 ], [ 0, %41 ], [ 0, %41 ], [ 0, %41 ], [ 0, %39 ]
  switch i32 %2, label %55 [
    i32 875714626, label %56
    i32 875713112, label %54
  ]

54:                                               ; preds = %51
  br label %56

55:                                               ; preds = %51
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #6
  br label %129

56:                                               ; preds = %54, %51
  %57 = phi i32 [ 2, %54 ], [ 1, %51 ]
  %58 = icmp ugt i8 %35, 1
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds %struct.sun4i_frontend, ptr %0, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.sun4i_frontend, ptr %0, i32 0, i32 8
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.sun4i_frontend_data, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 272, i32 noundef %65) #6
  %67 = load ptr, ptr %60, align 4
  %68 = load ptr, ptr %62, align 4
  %69 = getelementptr %struct.sun4i_frontend_data, ptr %68, i32 0, i32 2, i32 %59
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @regmap_write(ptr noundef %67, i32 noundef 528, i32 noundef %70) #6
  %72 = load ptr, ptr %60, align 4
  %73 = load ptr, ptr %62, align 4
  %74 = getelementptr inbounds %struct.sun4i_frontend_data, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = tail call i32 @regmap_write(ptr noundef %72, i32 noundef 276, i32 noundef %75) #6
  %77 = load ptr, ptr %60, align 4
  %78 = load ptr, ptr %62, align 4
  %79 = getelementptr %struct.sun4i_frontend_data, ptr %78, i32 0, i32 2, i32 %59
  %80 = load i32, ptr %79, align 4
  %81 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 532, i32 noundef %80) #6
  %82 = load ptr, ptr %60, align 4
  %83 = load ptr, ptr %62, align 4
  %84 = getelementptr inbounds %struct.sun4i_frontend_data, ptr %83, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = tail call i32 @regmap_write(ptr noundef %82, i32 noundef 280, i32 noundef %85) #6
  %87 = load ptr, ptr %60, align 4
  %88 = load ptr, ptr %62, align 4
  %89 = getelementptr %struct.sun4i_frontend_data, ptr %88, i32 0, i32 2, i32 %59
  %90 = load i32, ptr %89, align 4
  %91 = tail call i32 @regmap_write(ptr noundef %87, i32 noundef 536, i32 noundef %90) #6
  %92 = load i8, ptr %12, align 1, !range !8
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %119, label %94

94:                                               ; preds = %56
  %95 = load ptr, ptr %60, align 4
  %96 = tail call i32 @regmap_write(ptr noundef %95, i32 noundef 112, i32 noundef 1191) #6
  %97 = load ptr, ptr %60, align 4
  %98 = tail call i32 @regmap_write(ptr noundef %97, i32 noundef 116, i32 noundef 7791) #6
  %99 = load ptr, ptr %60, align 4
  %100 = tail call i32 @regmap_write(ptr noundef %99, i32 noundef 120, i32 noundef 7359) #6
  %101 = load ptr, ptr %60, align 4
  %102 = tail call i32 @regmap_write(ptr noundef %101, i32 noundef 124, i32 noundef 2167) #6
  %103 = load ptr, ptr %60, align 4
  %104 = tail call i32 @regmap_write(ptr noundef %103, i32 noundef 128, i32 noundef 1191) #6
  %105 = load ptr, ptr %60, align 4
  %106 = tail call i32 @regmap_write(ptr noundef %105, i32 noundef 132, i32 noundef 0) #6
  %107 = load ptr, ptr %60, align 4
  %108 = tail call i32 @regmap_write(ptr noundef %107, i32 noundef 136, i32 noundef 1634) #6
  %109 = load ptr, ptr %60, align 4
  %110 = tail call i32 @regmap_write(ptr noundef %109, i32 noundef 140, i32 noundef 12817) #6
  %111 = load ptr, ptr %60, align 4
  %112 = tail call i32 @regmap_write(ptr noundef %111, i32 noundef 144, i32 noundef 1191) #6
  %113 = load ptr, ptr %60, align 4
  %114 = tail call i32 @regmap_write(ptr noundef %113, i32 noundef 148, i32 noundef 2066) #6
  %115 = load ptr, ptr %60, align 4
  %116 = tail call i32 @regmap_write(ptr noundef %115, i32 noundef 152, i32 noundef 0) #6
  %117 = load ptr, ptr %60, align 4
  %118 = tail call i32 @regmap_write(ptr noundef %117, i32 noundef 156, i32 noundef 11953) #6
  br label %119

119:                                              ; preds = %94, %56
  %120 = phi i32 [ 2, %56 ], [ 0, %94 ]
  %121 = load ptr, ptr %60, align 4
  %122 = tail call i32 @regmap_update_bits_base(ptr noundef %121, i32 noundef 8, i32 noundef 2, i32 noundef %120, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %123 = load ptr, ptr %60, align 4
  %124 = or i32 %52, %32
  %125 = or i32 %124, %53
  %126 = tail call i32 @regmap_write(ptr noundef %123, i32 noundef 76, i32 noundef %125) #6
  %127 = load ptr, ptr %60, align 4
  %128 = tail call i32 @regmap_write(ptr noundef %127, i32 noundef 92, i32 noundef %57) #6
  br label %129

129:                                              ; preds = %119, %55, %50, %38, %29
  %130 = phi i32 [ -22, %29 ], [ -22, %38 ], [ -22, %50 ], [ -22, %55 ], [ 0, %119 ]
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sun4i_frontend_update_coord(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %8, i32 noundef %10) #6
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 16
  %14 = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 16
  %17 = getelementptr inbounds %struct.drm_framebuffer, ptr %6, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.drm_format_info, ptr %18, i32 0, i32 6
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = add nsw i32 %13, -1
  %23 = add nsw i32 %22, %21
  %24 = udiv i32 %23, %21
  %25 = getelementptr inbounds %struct.drm_format_info, ptr %18, i32 0, i32 7
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %16, -1
  %29 = add nsw i32 %28, %27
  %30 = udiv i32 %29, %27
  %31 = getelementptr inbounds %struct.sun4i_frontend, ptr %0, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = add i32 %15, -65536
  %34 = and i32 %33, -65536
  %35 = or i32 %34, %22
  %36 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 256, i32 noundef %35) #6
  %37 = load ptr, ptr %31, align 4
  %38 = shl i32 %30, 16
  %39 = add i32 %38, -65536
  %40 = add i32 %24, -1
  %41 = or i32 %39, %40
  %42 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 512, i32 noundef %41) #6
  %43 = load ptr, ptr %31, align 4
  %44 = load i32, ptr %9, align 4
  %45 = shl i32 %44, 16
  %46 = add i32 %45, -65536
  %47 = load i32, ptr %7, align 4
  %48 = add i32 %47, -1
  %49 = or i32 %46, %48
  %50 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 260, i32 noundef %49) #6
  %51 = load ptr, ptr %31, align 4
  %52 = load i32, ptr %9, align 4
  %53 = shl i32 %52, 16
  %54 = add i32 %53, -65536
  %55 = load i32, ptr %7, align 4
  %56 = add i32 %55, -1
  %57 = or i32 %54, %56
  %58 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 516, i32 noundef %57) #6
  %59 = load ptr, ptr %31, align 4
  %60 = and i32 %12, -65536
  %61 = load i32, ptr %7, align 4
  %62 = udiv i32 %60, %61
  %63 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 264, i32 noundef %62) #6
  %64 = load ptr, ptr %31, align 4
  %65 = shl i32 %24, 16
  %66 = load i32, ptr %7, align 4
  %67 = udiv i32 %65, %66
  %68 = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 520, i32 noundef %67) #6
  %69 = load ptr, ptr %31, align 4
  %70 = and i32 %15, -65536
  %71 = load i32, ptr %9, align 4
  %72 = udiv i32 %70, %71
  %73 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 268, i32 noundef %72) #6
  %74 = load ptr, ptr %31, align 4
  %75 = load i32, ptr %9, align 4
  %76 = udiv i32 %38, %75
  %77 = tail call i32 @regmap_write(ptr noundef %74, i32 noundef 524, i32 noundef %76) #6
  %78 = load ptr, ptr %31, align 4
  %79 = tail call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 4, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_frontend_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sun4i_frontend, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 4, i32 noundef 65536, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_frontend_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_frontend_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_frontend_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @sun4i_frontend_ops) #6
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_frontend_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @sun4i_frontend_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_frontend_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 40, i32 noundef 3520) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %63, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %7, ptr %10, align 8
  %11 = getelementptr inbounds %struct.sun4i_frontend, ptr %7, i32 0, i32 1
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.sun4i_frontend, ptr %7, i32 0, i32 2
  store ptr %13, ptr %14, align 4
  %15 = tail call ptr @of_device_get_match_data(ptr noundef %0) #6
  %16 = getelementptr inbounds %struct.sun4i_frontend, ptr %7, i32 0, i32 8
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %63, label %18

18:                                               ; preds = %9
  %19 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %4, i32 noundef 0) #6
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = ptrtoint ptr %19 to i32
  br label %63

23:                                               ; preds = %18
  %24 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %0, ptr noundef null, ptr noundef %19, ptr noundef nonnull @sun4i_frontend_regmap_config, ptr noundef null, ptr noundef null) #6
  %25 = getelementptr inbounds %struct.sun4i_frontend, ptr %7, i32 0, i32 6
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10) #7
  %28 = load ptr, ptr %25, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %63

30:                                               ; preds = %23
  %31 = tail call ptr @__devm_reset_control_get(ptr noundef %0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %32 = getelementptr inbounds %struct.sun4i_frontend, ptr %7, i32 0, i32 7
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #7
  %35 = load ptr, ptr %32, align 4
  %36 = ptrtoint ptr %35 to i32
  br label %63

37:                                               ; preds = %30
  %38 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.12) #6
  %39 = getelementptr inbounds %struct.sun4i_frontend, ptr %7, i32 0, i32 3
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13) #7
  %42 = load ptr, ptr %39, align 4
  %43 = ptrtoint ptr %42 to i32
  br label %63

44:                                               ; preds = %37
  %45 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.14) #6
  %46 = getelementptr inbounds %struct.sun4i_frontend, ptr %7, i32 0, i32 4
  store ptr %45, ptr %46, align 4
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #7
  %49 = load ptr, ptr %46, align 4
  %50 = ptrtoint ptr %49 to i32
  br label %63

51:                                               ; preds = %44
  %52 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.16) #6
  %53 = getelementptr inbounds %struct.sun4i_frontend, ptr %7, i32 0, i32 5
  store ptr %52, ptr %53, align 4
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.17) #7
  %56 = load ptr, ptr %53, align 4
  %57 = ptrtoint ptr %56 to i32
  br label %63

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.sun4i_drv, ptr %6, i32 0, i32 1
  %60 = getelementptr inbounds %struct.sun4i_drv, ptr %6, i32 0, i32 1, i32 1
  %61 = load ptr, ptr %60, align 4
  store ptr %7, ptr %60, align 4
  store ptr %59, ptr %7, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %61, ptr %62, align 4
  store volatile ptr %7, ptr %61, align 4
  tail call void @pm_runtime_enable(ptr noundef %0) #6
  br label %63

63:                                               ; preds = %58, %55, %48, %41, %34, %27, %21, %9, %3
  %64 = phi i32 [ %22, %21 ], [ %29, %27 ], [ %36, %34 ], [ %43, %41 ], [ %50, %48 ], [ %57, %55 ], [ 0, %58 ], [ -12, %3 ], [ -19, %9 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_frontend_unbind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  %10 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_frontend_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sun4i_frontend, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.sun4i_frontend, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.sun4i_frontend, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %10 = getelementptr inbounds %struct.sun4i_frontend, ptr %3, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @reset_control_assert(ptr noundef %11) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_frontend_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sun4i_frontend, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_set_rate(ptr noundef %5, i32 noundef 300000000) #6
  %7 = getelementptr inbounds %struct.sun4i_frontend, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = tail call i32 @clk_enable(ptr noundef %8) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %8) #6
  br label %15

15:                                               ; preds = %14, %11, %1
  %16 = load ptr, ptr %4, align 4
  %17 = tail call i32 @clk_prepare(ptr noundef %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = tail call i32 @clk_enable(ptr noundef %16) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %16) #6
  br label %23

23:                                               ; preds = %22, %19, %15
  %24 = getelementptr inbounds %struct.sun4i_frontend, ptr %3, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @clk_prepare(ptr noundef %25) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = tail call i32 @clk_enable(ptr noundef %25) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @clk_unprepare(ptr noundef %25) #6
  br label %32

32:                                               ; preds = %31, %28, %23
  %33 = getelementptr inbounds %struct.sun4i_frontend, ptr %3, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @reset_control_reset(ptr noundef %34) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18) #7
  br label %89

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.sun4i_frontend, ptr %3, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %42 = getelementptr inbounds %struct.sun4i_frontend, ptr %3, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = load i8, ptr %43, align 4, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load ptr, ptr %39, align 4
  %48 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 4, i32 noundef 8388608, i32 noundef 8388608, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %49

49:                                               ; preds = %46, %38
  br label %50

50:                                               ; preds = %50, %49
  %51 = phi i32 [ %79, %50 ], [ 0, %49 ]
  %52 = load ptr, ptr %39, align 4
  %53 = shl i32 %51, 2
  %54 = add nuw nsw i32 %53, 1024
  %55 = shl nuw i32 %51, 1
  %56 = getelementptr [64 x i32], ptr @sun4i_frontend_horz_coef, i32 0, i32 %55
  %57 = load i32, ptr %56, align 4
  %58 = tail call i32 @regmap_write(ptr noundef %52, i32 noundef %54, i32 noundef %57) #6
  %59 = load ptr, ptr %39, align 4
  %60 = add nuw nsw i32 %53, 1536
  %61 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef %60, i32 noundef %57) #6
  %62 = load ptr, ptr %39, align 4
  %63 = add nuw nsw i32 %53, 1152
  %64 = or i32 %55, 1
  %65 = getelementptr [64 x i32], ptr @sun4i_frontend_horz_coef, i32 0, i32 %64
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef %63, i32 noundef %66) #6
  %68 = load ptr, ptr %39, align 4
  %69 = add nuw nsw i32 %53, 1664
  %70 = tail call i32 @regmap_write(ptr noundef %68, i32 noundef %69, i32 noundef %66) #6
  %71 = load ptr, ptr %39, align 4
  %72 = add nuw nsw i32 %53, 1280
  %73 = getelementptr [32 x i32], ptr @sun4i_frontend_vert_coef, i32 0, i32 %51
  %74 = load i32, ptr %73, align 4
  %75 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef %72, i32 noundef %74) #6
  %76 = load ptr, ptr %39, align 4
  %77 = add nuw nsw i32 %53, 1792
  %78 = tail call i32 @regmap_write(ptr noundef %76, i32 noundef %77, i32 noundef %74) #6
  %79 = add nuw nsw i32 %51, 1
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %81, label %50

81:                                               ; preds = %50
  %82 = load ptr, ptr %42, align 4
  %83 = getelementptr inbounds %struct.sun4i_frontend_data, ptr %82, i32 0, i32 1
  %84 = load i8, ptr %83, align 1, !range !8
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr %39, align 4
  %88 = tail call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef 4, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %89

89:                                               ; preds = %86, %81, %37
  %90 = phi i32 [ %35, %37 ], [ 0, %81 ], [ 0, %86 ]
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
