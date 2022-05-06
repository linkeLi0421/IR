; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun4i_backend.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_backend.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sun4i_backend_quirks = type { i8, i8 }
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
%struct.sunxi_engine_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.sunxi_engine = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.70, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.70 = type { [4 x i8] }
%struct.sun4i_layer_state = type { %struct.drm_plane_state, i32, i8 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.of_endpoint = type { i32, i32, ptr }
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
%struct.sun4i_backend = type { %struct.sunxi_engine, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, ptr }
%struct.sun4i_drv = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.sun4i_frontend = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.sun4i_layer = type { %struct.drm_plane, ptr, ptr, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%sabling layer %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Updating layer %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Primary layer, updating global size W: %u H: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Layer size W: %u H: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Layer coordinates X: %d Y: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Switching display backend interlaced mode %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Invalid format\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Layer line width: %d bits\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Setting buffer address to %pad\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Setting address lower bits to 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Setting address high bits to 0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"Setting layer %d's priority to %d and pipe %d\0A\00", align 1
@sun4i_backend_of_table = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-display-backend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_backend_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-display-backend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_backend_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-display-backend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_backend_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-display-backend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_backend_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-display-backend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a33_backend_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-display-backend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a33_backend_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-display-backend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_backend_quirks }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author276 = internal constant [56 x i8] c"author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description277 = internal constant [49 x i8] c"description=Allwinner A10 Display Backend Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@sunxi_bt601_yuv2rgb_coef = external dso_local local_unnamed_addr constant [12 x i32], align 4
@.str.16 = private unnamed_addr constant [31 x i8] c"Unsupported YUV format (0x%x)\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"Unsupported YUV pixel sequence (0x%x)\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"Setting packed YUV buffer address to %pad\0A\00", align 1
@sun4i_backend_quirks = internal constant %struct.sun4i_backend_quirks { i8 1, i8 0 }, align 1
@sun5i_backend_quirks = internal constant %struct.sun4i_backend_quirks zeroinitializer, align 1
@sun6i_backend_quirks = internal constant %struct.sun4i_backend_quirks zeroinitializer, align 1
@sun7i_backend_quirks = internal constant %struct.sun4i_backend_quirks { i8 1, i8 0 }, align 1
@sun8i_a33_backend_quirks = internal constant %struct.sun4i_backend_quirks { i8 0, i8 1 }, align 1
@sun9i_backend_quirks = internal constant %struct.sun4i_backend_quirks zeroinitializer, align 1
@sun4i_backend_platform_driver = internal global %struct.platform_driver { ptr @sun4i_backend_probe, ptr @sun4i_backend_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.19, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_backend_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.19 = private unnamed_addr constant [14 x i8] c"sun4i-backend\00", align 1
@sun4i_backend_ops = internal constant %struct.component_ops { ptr @sun4i_backend_bind, ptr @sun4i_backend_unbind }, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"interconnects\00", align 1
@sun4i_backend_engine_ops = internal constant %struct.sunxi_engine_ops { ptr @sun4i_backend_atomic_begin, ptr @sun4i_backend_atomic_check, ptr @sun4i_backend_commit, ptr @sun4i_layers_init, ptr @sun4i_backend_apply_color_correction, ptr @sun4i_backend_disable_color_correction, ptr @sun4i_backend_vblank_quirk }, align 4
@.str.21 = private unnamed_addr constant [61 x i8] c"Couldn't find matching frontend, frontend features disabled\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Couldn't get our reset line\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Couldn't deassert our reset line\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"Couldn't get the backend bus clock\0A\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"Couldn't get the backend module clock\0A\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"Couldn't set the module clock frequency\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"ram\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"Couldn't get the backend RAM clock\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"allwinner,sun8i-a33-display-backend\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"Couldn't init SAT resources\0A\00", align 1
@sun4i_backend_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 22528, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.33 = private unnamed_addr constant [36 x i8] c"Couldn't create the backend regmap\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"drivers/gpu/drm/sun4i/sun4i_backend.c\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Starting checking our planes\0A\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"Using the frontend for plane %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"Plane FB format is YUV\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Plane FB format is %p4cc\0A\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"Plane zpos is %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"Too many planes with alpha, rejecting...\0A\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"Too many planes with YUV, rejecting...\0A\00", align 1
@.str.42 = private unnamed_addr constant [55 x i8] c"Too many planes going through the frontend, rejecting\0A\00", align 1
@.str.43 = private unnamed_addr constant [56 x i8] c"State valid with %u planes, %u alpha, %u video, %u YUV\0A\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"Input size %dx%d, output size %dx%d\0A\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"Committing changes\0A\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"Applying RGB to YUV color correction\0A\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"Disabling color correction\0A\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"sat\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"Couldn't get the SAT reset line\0A\00", align 1
@.str.50 = private unnamed_addr constant [38 x i8] c"Couldn't deassert the SAT reset line\0A\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"Couldn't get our SAT clock\0A\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"Couldn't enable the SAT clock\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_license278], section "llvm.metadata"

@__mod_of__sun4i_backend_of_table_device_table = dso_local alias [8 x %struct.of_device_id], ptr @sun4i_backend_of_table

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sun4i_backend_layer_enable(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = select i1 %2, ptr @.str.1, ptr @.str.2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull %4, i32 noundef %1) #7
  %5 = add i32 %1, 8
  %6 = shl nuw i32 1, %5
  %7 = select i1 %2, i32 %6, i32 0
  %8 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 2048, i32 noundef %6, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local zeroext i1 @sun4i_backend_format_is_supported(i32 noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  switch i32 %0, label %5 [
    i32 892424769, label %6
    i32 842093121, label %6
    i32 875713089, label %6
    i32 909199186, label %6
    i32 875710290, label %6
    i32 842088786, label %6
    i32 892420434, label %6
    i32 1498831189, label %6
    i32 1498765654, label %6
    i32 875713112, label %6
    i32 1448695129, label %6
    i32 1431918169, label %6
  ]

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %5, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %2
  %7 = phi i1 [ false, %2 ], [ true, %4 ], [ false, %5 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ]
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_backend_update_layer_coord(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_plane, ptr %2, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %1) #7
  %6 = getelementptr inbounds %struct.drm_plane, ptr %2, i32 0, i32 16
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %11, i32 noundef %13) #7
  %14 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %12, align 4
  %17 = shl i32 %16, 16
  %18 = add i32 %17, -65536
  %19 = load i32, ptr %10, align 4
  %20 = add i32 %19, 65535
  %21 = and i32 %20, 65535
  %22 = or i32 %21, %18
  %23 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 2056, i32 noundef %22) #7
  br label %24

24:                                               ; preds = %9, %3
  %25 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %26, i32 noundef %28) #7
  %29 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = shl i32 %1, 2
  %32 = add i32 %31, 2064
  %33 = load i32, ptr %27, align 4
  %34 = shl i32 %33, 16
  %35 = add i32 %34, 536805376
  %36 = and i32 %35, 536805376
  %37 = load i32, ptr %25, align 4
  %38 = add i32 %37, 8191
  %39 = and i32 %38, 8191
  %40 = or i32 %36, %39
  %41 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef %32, i32 noundef %40) #7
  %42 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %43, i32 noundef %45) #7
  %46 = load ptr, ptr %29, align 4
  %47 = add i32 %31, 2080
  %48 = load i32, ptr %44, align 4
  %49 = shl i32 %48, 16
  %50 = load i32, ptr %42, align 4
  %51 = and i32 %50, 65535
  %52 = or i32 %51, %49
  %53 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef %47, i32 noundef %52) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_backend_update_layer_formats(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_plane, ptr %2, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = shl i32 %1, 2
  %11 = add i32 %10, 2192
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load ptr, ptr %8, align 4
  br label %27

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 22
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_crtc_state, ptr %21, i32 0, i32 7, i32 11
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %8, align 4
  br i1 %25, label %27, label %30

27:                                               ; preds = %19, %17
  %28 = phi ptr [ %18, %17 ], [ %26, %19 ]
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 2048, i32 noundef 268435456, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %32

30:                                               ; preds = %19
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 2048, i32 noundef 268435456, i32 noundef 268435456, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi ptr [ @.str.8, %30 ], [ @.str.9, %27 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef nonnull %33) #7
  %34 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 12
  %35 = load i16, ptr %34, align 4
  %36 = lshr i16 %35, 8
  %37 = zext i16 %36 to i32
  %38 = shl nuw i32 %37, 24
  %39 = icmp ne i16 %35, -1
  %40 = zext i1 %39 to i32
  %41 = or i32 %38, %40
  %42 = load ptr, ptr %8, align 4
  %43 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef %11, i32 noundef -16777215, i32 noundef %41, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %44 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.drm_format_info, ptr %45, i32 0, i32 9
  %47 = load i8, ptr %46, align 1, !range !8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %123, label %49

49:                                               ; preds = %32
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr inbounds %struct.drm_plane_state, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.drm_framebuffer, ptr %52, i32 0, i32 4
  %54 = load ptr, ptr %53, align 8
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %8, align 4
  %57 = load i32, ptr @sunxi_bt601_yuv2rgb_coef, align 4
  %58 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 2384, i32 noundef %57) #7
  %59 = load ptr, ptr %8, align 4
  %60 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 1), align 4
  %61 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 2388, i32 noundef %60) #7
  %62 = load ptr, ptr %8, align 4
  %63 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 2), align 4
  %64 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 2392, i32 noundef %63) #7
  %65 = load ptr, ptr %8, align 4
  %66 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 3), align 4
  %67 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 2396, i32 noundef %66) #7
  %68 = load ptr, ptr %8, align 4
  %69 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 4), align 4
  %70 = tail call i32 @regmap_write(ptr noundef %68, i32 noundef 2400, i32 noundef %69) #7
  %71 = load ptr, ptr %8, align 4
  %72 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 5), align 4
  %73 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 2404, i32 noundef %72) #7
  %74 = load ptr, ptr %8, align 4
  %75 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 6), align 4
  %76 = tail call i32 @regmap_write(ptr noundef %74, i32 noundef 2408, i32 noundef %75) #7
  %77 = load ptr, ptr %8, align 4
  %78 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 7), align 4
  %79 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 2412, i32 noundef %78) #7
  %80 = load ptr, ptr %8, align 4
  %81 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 8), align 4
  %82 = tail call i32 @regmap_write(ptr noundef %80, i32 noundef 2416, i32 noundef %81) #7
  %83 = load ptr, ptr %8, align 4
  %84 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 9), align 4
  %85 = tail call i32 @regmap_write(ptr noundef %83, i32 noundef 2420, i32 noundef %84) #7
  %86 = load ptr, ptr %8, align 4
  %87 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 10), align 4
  %88 = tail call i32 @regmap_write(ptr noundef %86, i32 noundef 2424, i32 noundef %87) #7
  %89 = load ptr, ptr %8, align 4
  %90 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 11), align 4
  %91 = tail call i32 @regmap_write(ptr noundef %89, i32 noundef 2428, i32 noundef %90) #7
  %92 = load ptr, ptr %8, align 4
  %93 = tail call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef %11, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %94 = getelementptr inbounds %struct.drm_format_info, ptr %54, i32 0, i32 9
  %95 = load i8, ptr %94, align 1, !range !8
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %49
  %98 = getelementptr inbounds %struct.drm_format_info, ptr %54, i32 0, i32 2
  %99 = load i8, ptr %98, align 1
  %100 = icmp eq i8 %99, 1
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.drm_format_info, ptr %54, i32 0, i32 6
  %103 = load i8, ptr %102, align 2
  %104 = icmp eq i8 %103, 2
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.drm_format_info, ptr %54, i32 0, i32 7
  %107 = load i8, ptr %106, align 1
  %108 = icmp eq i8 %107, 1
  br i1 %108, label %110, label %109

109:                                              ; preds = %105, %101, %97, %49
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %55) #7
  br label %110

110:                                              ; preds = %109, %105
  %111 = phi i32 [ 1, %109 ], [ 12289, %105 ]
  switch i32 %55, label %118 [
    i32 1448695129, label %112
    i32 1431918169, label %119
    i32 1498831189, label %114
    i32 1498765654, label %116
  ]

112:                                              ; preds = %110
  %113 = or i32 %111, 512
  br label %119

114:                                              ; preds = %110
  %115 = or i32 %111, 768
  br label %119

116:                                              ; preds = %110
  %117 = or i32 %111, 256
  br label %119

118:                                              ; preds = %110
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef %55) #7
  br label %119

119:                                              ; preds = %118, %116, %114, %112, %110
  %120 = phi i32 [ %111, %118 ], [ %117, %116 ], [ %115, %114 ], [ %113, %112 ], [ %111, %110 ]
  %121 = load ptr, ptr %8, align 4
  %122 = tail call i32 @regmap_write(ptr noundef %121, i32 noundef 2336, i32 noundef %120) #7
  br label %138

123:                                              ; preds = %32
  %124 = load i32, ptr %45, align 4
  switch i32 %124, label %132 [
    i32 875713089, label %133
    i32 842093121, label %125
    i32 892424769, label %126
    i32 892420434, label %127
    i32 842088786, label %128
    i32 875713112, label %129
    i32 875710290, label %130
    i32 909199186, label %131
  ]

125:                                              ; preds = %123
  br label %133

126:                                              ; preds = %123
  br label %133

127:                                              ; preds = %123
  br label %133

128:                                              ; preds = %123
  br label %133

129:                                              ; preds = %123
  br label %133

130:                                              ; preds = %123
  br label %133

131:                                              ; preds = %123
  br label %133

132:                                              ; preds = %123
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10) #7
  br label %138

133:                                              ; preds = %131, %130, %129, %128, %127, %126, %125, %123
  %134 = phi i32 [ 3072, %125 ], [ 1792, %126 ], [ 2048, %127 ], [ 3328, %128 ], [ 2304, %129 ], [ 2816, %130 ], [ 1280, %131 ], [ 2560, %123 ]
  %135 = load ptr, ptr %8, align 4
  %136 = add i32 %10, 2208
  %137 = tail call i32 @regmap_update_bits_base(ptr noundef %135, i32 noundef %136, i32 noundef 3840, i32 noundef %134, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %138

138:                                              ; preds = %133, %132, %119
  %139 = phi i32 [ 0, %119 ], [ -22, %132 ], [ 0, %133 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_backend_update_layer_frontend(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  switch i32 %2, label %11 [
    i32 875713089, label %12
    i32 842093121, label %4
    i32 892424769, label %5
    i32 892420434, label %6
    i32 842088786, label %7
    i32 875713112, label %8
    i32 875710290, label %9
    i32 909199186, label %10
  ]

4:                                                ; preds = %3
  br label %12

5:                                                ; preds = %3
  br label %12

6:                                                ; preds = %3
  br label %12

7:                                                ; preds = %3
  br label %12

8:                                                ; preds = %3
  br label %12

9:                                                ; preds = %3
  br label %12

10:                                               ; preds = %3
  br label %12

11:                                               ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10) #7
  br label %22

12:                                               ; preds = %10, %9, %8, %7, %6, %5, %4, %3
  %13 = phi i32 [ 3072, %4 ], [ 1792, %5 ], [ 2048, %6 ], [ 3328, %7 ], [ 2304, %8 ], [ 2816, %9 ], [ 1280, %10 ], [ 2560, %3 ]
  %14 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = shl i32 %1, 2
  %17 = add i32 %16, 2192
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %17, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %19 = load ptr, ptr %14, align 4
  %20 = add i32 %16, 2208
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %20, i32 noundef 3840, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %22

22:                                               ; preds = %12, %11
  %23 = phi i32 [ -22, %11 ], [ 0, %12 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_backend_update_layer_buffer(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.drm_plane, ptr %2, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %10 = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = shl i32 %11, 3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef %12) #7
  %13 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = shl i32 %1, 2
  %16 = add i32 %15, 2112
  %17 = load i32, ptr %10, align 8
  %18 = shl i32 %17, 3
  %19 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %16, i32 noundef %18) #7
  %20 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef %9, ptr noundef %7, i32 noundef 0) #7
  store i32 %20, ptr %5, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, ptr noundef nonnull %5) #7
  %21 = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 4
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.drm_format_info, ptr %22, i32 0, i32 9
  %24 = load i8, ptr %23, align 1, !range !8
  %25 = icmp eq i8 %24, 0
  %26 = load i32, ptr %5, align 4
  br i1 %25, label %37, label %27

27:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %26, ptr %4, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef nonnull %4) #7
  %28 = load ptr, ptr %13, align 4
  %29 = load i32, ptr %4, align 4
  %30 = call i32 @regmap_write(ptr noundef %28, i32 noundef 2352, i32 noundef %29) #7
  %31 = load i32, ptr %10, align 8
  %32 = shl i32 %31, 3
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef %32) #7
  %33 = load ptr, ptr %13, align 4
  %34 = load i32, ptr %10, align 8
  %35 = shl i32 %34, 3
  %36 = call i32 @regmap_write(ptr noundef %33, i32 noundef 2368, i32 noundef %35) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %52

37:                                               ; preds = %3
  %38 = shl i32 %26, 3
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef %38) #7
  %39 = load ptr, ptr %13, align 4
  %40 = add i32 %15, 2128
  %41 = call i32 @regmap_write(ptr noundef %39, i32 noundef %40, i32 noundef %38) #7
  %42 = load i32, ptr %5, align 4
  %43 = lshr i32 %42, 29
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, i32 noundef %43) #7
  %44 = load ptr, ptr %13, align 4
  %45 = shl i32 %1, 3
  %46 = shl nsw i32 -1, %45
  %47 = sub i32 28, %45
  %48 = lshr i32 -1, %47
  %49 = and i32 %48, %46
  %50 = shl i32 %43, %45
  %51 = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 2144, i32 noundef %49, i32 noundef %50, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %52

52:                                               ; preds = %37, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_backend_update_layer_zpos(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_plane, ptr %2, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 16
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sun4i_layer_state, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef %1, i32 noundef %7, i32 noundef %9) #7
  %10 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = shl i32 %1, 2
  %13 = add i32 %12, 2192
  %14 = load i32, ptr %8, align 4
  %15 = shl i32 %14, 15
  %16 = shl i32 %7, 10
  %17 = or i32 %15, %16
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef 35840, i32 noundef %17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sun4i_backend_cleanup_layer(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = shl i32 %1, 2
  %6 = add i32 %5, 2192
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %6, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_backend_platform_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_backend_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_backend_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @sun4i_backend_ops) #7
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_backend_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @sun4i_backend_ops) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_backend_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.of_endpoint, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 64, i32 noundef 3520) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %218, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %struct.sun4i_backend, ptr %8, i32 0, i32 8
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = tail call ptr @of_find_property(ptr noundef %14, ptr noundef nonnull @.str.20, ptr noundef null) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %13, align 8
  %21 = tail call i32 @of_dma_configure_id(ptr noundef %19, ptr noundef %20, i1 noundef zeroext true, ptr noundef null) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %218

23:                                               ; preds = %17, %10
  %24 = load ptr, ptr %13, align 8
  %25 = getelementptr inbounds %struct.sunxi_engine, ptr %8, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  store ptr @sun4i_backend_engine_ops, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #7, !annotation !9
  %26 = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %24, i32 noundef 0, i32 noundef -1) #7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = tail call ptr @of_graph_get_remote_endpoint(ptr noundef nonnull %26) #7
  tail call void @of_node_put(ptr noundef nonnull %26) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  %32 = getelementptr inbounds %struct.sunxi_engine, ptr %8, i32 0, i32 3
  store i32 -22, ptr %32, align 4
  br label %218

33:                                               ; preds = %28
  %34 = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %29, ptr noundef nonnull %4) #7
  call void @of_node_put(ptr noundef nonnull %29) #7
  %35 = getelementptr inbounds %struct.of_endpoint, ptr %4, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  %37 = getelementptr inbounds %struct.sunxi_engine, ptr %8, i32 0, i32 3
  store i32 %36, ptr %37, align 4
  %38 = icmp slt i32 %36, 0
  br i1 %38, label %218, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %13, align 8
  %41 = call ptr @of_graph_get_port_by_id(ptr noundef %40, i32 noundef 0) #7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %68, label %43

43:                                               ; preds = %39
  %44 = call ptr @of_get_next_available_child(ptr noundef nonnull %41, ptr noundef null) #7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.sun4i_drv, ptr %7, i32 0, i32 1
  br label %48

48:                                               ; preds = %61, %46
  %49 = phi ptr [ %44, %46 ], [ %62, %61 ]
  %50 = call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %49) #7
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  call void @of_node_put(ptr noundef nonnull %50) #7
  br label %53

53:                                               ; preds = %57, %52
  %54 = phi ptr [ %47, %52 ], [ %55, %57 ]
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %47
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.sun4i_frontend, ptr %55, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %50, %59
  br i1 %60, label %65, label %53

61:                                               ; preds = %53, %48
  %62 = call ptr @of_get_next_available_child(ptr noundef nonnull %41, ptr noundef nonnull %49) #7
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %48

64:                                               ; preds = %61, %43
  call void @of_node_put(ptr noundef nonnull %41) #7
  br label %68

65:                                               ; preds = %57
  call void @of_node_put(ptr noundef nonnull %41) #7
  call void @of_node_put(ptr noundef nonnull %49) #7
  %66 = getelementptr inbounds %struct.sun4i_backend, ptr %8, i32 0, i32 1
  store ptr %55, ptr %66, align 4
  %67 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %70, label %71

68:                                               ; preds = %64, %39
  %69 = getelementptr inbounds %struct.sun4i_backend, ptr %8, i32 0, i32 1
  store ptr inttoptr (i32 -22 to ptr), ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %65
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.21) #8
  br label %71

71:                                               ; preds = %70, %65
  %72 = call ptr @devm_platform_ioremap_resource(ptr noundef %5, i32 noundef 0) #7
  %73 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = ptrtoint ptr %72 to i32
  br label %218

76:                                               ; preds = %71
  %77 = call ptr @__devm_reset_control_get(ptr noundef %0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %78 = getelementptr inbounds %struct.sun4i_backend, ptr %8, i32 0, i32 2
  store ptr %77, ptr %78, align 4
  %79 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22) #8
  %81 = load ptr, ptr %78, align 4
  %82 = ptrtoint ptr %81 to i32
  br label %218

83:                                               ; preds = %76
  %84 = call i32 @reset_control_deassert(ptr noundef %77) #7
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23) #8
  br label %218

87:                                               ; preds = %83
  %88 = call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.24) #7
  %89 = getelementptr inbounds %struct.sun4i_backend, ptr %8, i32 0, i32 3
  store ptr %88, ptr %89, align 4
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25) #8
  %92 = load ptr, ptr %89, align 4
  %93 = ptrtoint ptr %92 to i32
  br label %214

94:                                               ; preds = %87
  %95 = call i32 @clk_prepare(ptr noundef %88) #7
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = call i32 @clk_enable(ptr noundef %88) #7
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  call void @clk_unprepare(ptr noundef %88) #7
  br label %101

101:                                              ; preds = %100, %97, %94
  %102 = call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.26) #7
  %103 = getelementptr inbounds %struct.sun4i_backend, ptr %8, i32 0, i32 4
  store ptr %102, ptr %103, align 4
  %104 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.27) #8
  %106 = load ptr, ptr %103, align 4
  %107 = ptrtoint ptr %106 to i32
  br label %211

108:                                              ; preds = %101
  %109 = call i32 @clk_set_rate_exclusive(ptr noundef %102, i32 noundef 300000000) #7
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.28) #8
  br label %211

112:                                              ; preds = %108
  %113 = load ptr, ptr %103, align 4
  %114 = call i32 @clk_prepare(ptr noundef %113) #7
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = call i32 @clk_enable(ptr noundef %113) #7
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  call void @clk_unprepare(ptr noundef %113) #7
  br label %120

120:                                              ; preds = %119, %116, %112
  %121 = call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.29) #7
  %122 = getelementptr inbounds %struct.sun4i_backend, ptr %8, i32 0, i32 5
  store ptr %121, ptr %122, align 4
  %123 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.30) #8
  %125 = load ptr, ptr %122, align 4
  %126 = ptrtoint ptr %125 to i32
  br label %207

127:                                              ; preds = %120
  %128 = call i32 @clk_prepare(ptr noundef %121) #7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = call i32 @clk_enable(ptr noundef %121) #7
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  call void @clk_unprepare(ptr noundef %121) #7
  br label %134

134:                                              ; preds = %133, %130, %127
  %135 = load ptr, ptr %13, align 8
  %136 = call i32 @of_device_is_compatible(ptr noundef %135, ptr noundef nonnull @.str.31) #7
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %173, label %138

138:                                              ; preds = %134
  %139 = load ptr, ptr %11, align 8
  %140 = call ptr @__devm_reset_control_get(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %141 = getelementptr inbounds %struct.sun4i_backend, ptr %139, i32 0, i32 7
  store ptr %140, ptr %141, align 4
  %142 = icmp ugt ptr %140, inttoptr (i32 -4096 to ptr)
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.49) #8
  %144 = load ptr, ptr %141, align 4
  br label %163

145:                                              ; preds = %138
  %146 = call i32 @reset_control_deassert(ptr noundef %140) #7
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %145
  %149 = call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.48) #7
  %150 = getelementptr inbounds %struct.sun4i_backend, ptr %139, i32 0, i32 6
  store ptr %149, ptr %150, align 4
  %151 = icmp ugt ptr %149, inttoptr (i32 -4096 to ptr)
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.51) #8
  %153 = load ptr, ptr %150, align 4
  %154 = load ptr, ptr %141, align 4
  %155 = call i32 @reset_control_assert(ptr noundef %154) #7
  br label %163

156:                                              ; preds = %148
  %157 = call i32 @clk_prepare(ptr noundef %149) #7
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = call i32 @clk_enable(ptr noundef %149) #7
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %159
  call void @clk_unprepare(ptr noundef %149) #7
  br label %167

163:                                              ; preds = %152, %143
  %164 = phi ptr [ %144, %143 ], [ %153, %152 ]
  %165 = ptrtoint ptr %164 to i32
  %166 = icmp eq ptr %164, null
  br i1 %166, label %173, label %170

167:                                              ; preds = %162, %156, %145
  %168 = phi ptr [ @.str.50, %145 ], [ @.str.52, %162 ], [ @.str.52, %156 ]
  %169 = phi i32 [ %146, %145 ], [ %160, %162 ], [ %157, %156 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %168) #8
  br label %170

170:                                              ; preds = %167, %163
  %171 = phi i32 [ %165, %163 ], [ %169, %167 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.32) #8
  %172 = load ptr, ptr %122, align 4
  call void @clk_disable(ptr noundef %172) #7
  call void @clk_unprepare(ptr noundef %172) #7
  br label %207

173:                                              ; preds = %163, %159, %134
  %174 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %0, ptr noundef null, ptr noundef %72, ptr noundef nonnull @sun4i_backend_regmap_config, ptr noundef null, ptr noundef null) #7
  %175 = getelementptr inbounds %struct.sunxi_engine, ptr %8, i32 0, i32 2
  store ptr %174, ptr %175, align 4
  %176 = icmp ugt ptr %174, inttoptr (i32 -4096 to ptr)
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.33) #8
  %178 = load ptr, ptr %175, align 4
  %179 = ptrtoint ptr %178 to i32
  br label %218

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.sunxi_engine, ptr %8, i32 0, i32 4
  %182 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %183 = load ptr, ptr %182, align 4
  store ptr %181, ptr %182, align 4
  store ptr %7, ptr %181, align 4
  %184 = getelementptr inbounds %struct.sunxi_engine, ptr %8, i32 0, i32 4, i32 1
  store ptr %183, ptr %184, align 4
  store volatile ptr %181, ptr %183, align 4
  br label %185

185:                                              ; preds = %185, %180
  %186 = phi i32 [ 2048, %180 ], [ %189, %185 ]
  %187 = load ptr, ptr %175, align 4
  %188 = call i32 @regmap_write(ptr noundef %187, i32 noundef %186, i32 noundef 0) #7
  %189 = add nuw nsw i32 %186, 4
  %190 = icmp ult i32 %186, 4092
  br i1 %190, label %185, label %191

191:                                              ; preds = %185
  %192 = load ptr, ptr %175, align 4
  %193 = call i32 @regmap_write(ptr noundef %192, i32 noundef 2160, i32 noundef 2) #7
  %194 = load ptr, ptr %175, align 4
  %195 = call i32 @regmap_write(ptr noundef %194, i32 noundef 2048, i32 noundef 3) #7
  %196 = call ptr @of_device_get_match_data(ptr noundef %0) #7
  %197 = load i8, ptr %196, align 1, !range !8
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %205, label %199

199:                                              ; preds = %191
  %200 = load ptr, ptr %175, align 4
  %201 = load i32, ptr %37, align 4
  %202 = icmp eq i32 %201, 0
  %203 = select i1 %202, i32 0, i32 1048576
  %204 = call i32 @regmap_update_bits_base(ptr noundef %200, i32 noundef 2048, i32 noundef 7340032, i32 noundef %203, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %205

205:                                              ; preds = %199, %191
  %206 = getelementptr inbounds %struct.sun4i_backend, ptr %8, i32 0, i32 10
  store ptr %196, ptr %206, align 4
  br label %218

207:                                              ; preds = %170, %124
  %208 = phi i32 [ %126, %124 ], [ %171, %170 ]
  %209 = load ptr, ptr %103, align 4
  call void @clk_rate_exclusive_put(ptr noundef %209) #7
  %210 = load ptr, ptr %103, align 4
  call void @clk_disable(ptr noundef %210) #7
  call void @clk_unprepare(ptr noundef %210) #7
  br label %211

211:                                              ; preds = %207, %111, %105
  %212 = phi i32 [ %107, %105 ], [ %109, %111 ], [ %208, %207 ]
  %213 = load ptr, ptr %89, align 4
  call void @clk_disable(ptr noundef %213) #7
  call void @clk_unprepare(ptr noundef %213) #7
  br label %214

214:                                              ; preds = %211, %91
  %215 = phi i32 [ %93, %91 ], [ %212, %211 ]
  %216 = load ptr, ptr %78, align 4
  %217 = call i32 @reset_control_assert(ptr noundef %216) #7
  br label %218

218:                                              ; preds = %214, %205, %177, %86, %80, %74, %33, %31, %17, %3
  %219 = phi i32 [ %75, %74 ], [ %82, %80 ], [ %84, %86 ], [ %215, %214 ], [ %179, %177 ], [ 0, %205 ], [ -12, %3 ], [ %21, %17 ], [ %36, %33 ], [ -22, %31 ]
  ret i32 %219
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_backend_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sunxi_engine, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.sunxi_engine, ptr %5, i32 0, i32 4, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @of_device_is_compatible(ptr noundef %12, ptr noundef nonnull @.str.31) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.sun4i_backend, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #7
  tail call void @clk_unprepare(ptr noundef %18) #7
  %19 = getelementptr inbounds %struct.sun4i_backend, ptr %16, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @reset_control_assert(ptr noundef %20) #7
  br label %22

22:                                               ; preds = %15, %3
  %23 = getelementptr inbounds %struct.sun4i_backend, ptr %5, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %24) #7
  tail call void @clk_unprepare(ptr noundef %24) #7
  %25 = getelementptr inbounds %struct.sun4i_backend, ptr %5, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %26) #7
  %27 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %27) #7
  tail call void @clk_unprepare(ptr noundef %27) #7
  %28 = getelementptr inbounds %struct.sun4i_backend, ptr %5, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  tail call void @clk_disable(ptr noundef %29) #7
  tail call void @clk_unprepare(ptr noundef %29) #7
  %30 = getelementptr inbounds %struct.sun4i_backend, ptr %5, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @reset_control_assert(ptr noundef %31) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate_exclusive(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_backend_atomic_begin(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = tail call i64 @ktime_get() #7
  %5 = add i64 %4, 50000000
  %6 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 2160, ptr noundef nonnull %3) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %21, %2
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = call i64 @ktime_get() #7
  %16 = icmp sgt i64 %15, %5
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load ptr, ptr %6, align 4
  %19 = call i32 @regmap_read(ptr noundef %18, i32 noundef 2160, ptr noundef nonnull %3) #7
  %20 = icmp eq i32 %19, 0
  br label %25

21:                                               ; preds = %14
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %22 = load ptr, ptr %6, align 4
  %23 = call i32 @regmap_read(ptr noundef %22, i32 noundef 2160, ptr noundef nonnull %3) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %10, label %31

25:                                               ; preds = %17, %10
  %26 = phi i1 [ %20, %17 ], [ true, %10 ]
  %27 = load i32, ptr %3, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %32, label %31, !prof !10

31:                                               ; preds = %25, %21, %2
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 483, i32 noundef 9, ptr noundef null) #7
  br label %32

32:                                               ; preds = %31, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_backend_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [4 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false)
  %4 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_atomic_state, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.35) #7
  %8 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 3
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %175, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 18
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %175, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 4
  br label %18

18:                                               ; preds = %119, %16
  %19 = phi ptr [ %14, %16 ], [ %124, %119 ]
  %20 = phi i32 [ 0, %16 ], [ %123, %119 ]
  %21 = phi i32 [ 0, %16 ], [ %122, %119 ]
  %22 = phi i32 [ 0, %16 ], [ %121, %119 ]
  %23 = phi i32 [ 0, %16 ], [ %120, %119 ]
  %24 = load i32, ptr %17, align 4
  %25 = getelementptr i8, ptr %19, i32 408
  %26 = load i32, ptr %25, align 4
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %24
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %119, label %30

30:                                               ; preds = %18
  %31 = getelementptr i8, ptr %19, i32 -4
  %32 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %5, ptr noundef %31) #7
  %33 = getelementptr inbounds %struct.drm_plane_state, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.sun4i_layer_state, ptr %32, i32 0, i32 2
  %36 = load ptr, ptr %32, align 4
  %37 = getelementptr inbounds %struct.sun4i_layer, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.drm_framebuffer, ptr %34, i32 0, i32 4
  %40 = load ptr, ptr %39, align 8
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.drm_framebuffer, ptr %34, i32 0, i32 8
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.sun4i_backend, ptr %38, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %69, label %47

47:                                               ; preds = %30
  %48 = tail call zeroext i1 @sun4i_frontend_format_is_supported(i32 noundef %41, i64 noundef %43) #7
  br i1 %48, label %49, label %69

49:                                               ; preds = %47
  %50 = icmp eq i64 %43, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %49
  switch i32 %41, label %68 [
    i32 892424769, label %52
    i32 842093121, label %52
    i32 875713089, label %52
    i32 909199186, label %52
    i32 875710290, label %52
    i32 842088786, label %52
    i32 892420434, label %52
    i32 1498831189, label %52
    i32 1498765654, label %52
    i32 875713112, label %52
    i32 1448695129, label %52
    i32 1431918169, label %52
  ]

52:                                               ; preds = %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51
  %53 = getelementptr inbounds %struct.drm_plane_state, ptr %32, i32 0, i32 10
  %54 = load i32, ptr %53, align 4
  %55 = lshr i32 %54, 16
  %56 = getelementptr inbounds %struct.drm_plane_state, ptr %32, i32 0, i32 11
  %57 = load i32, ptr %56, align 4
  %58 = lshr i32 %57, 16
  %59 = getelementptr inbounds %struct.drm_plane_state, ptr %32, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.drm_plane_state, ptr %32, i32 0, i32 7
  %62 = load i32, ptr %61, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.44, i32 noundef %58, i32 noundef %55, i32 noundef %60, i32 noundef %62) #7
  %63 = load i32, ptr %61, align 4
  %64 = icmp eq i32 %63, %55
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i32, ptr %59, align 4
  %67 = icmp eq i32 %66, %58
  br i1 %67, label %69, label %68

68:                                               ; preds = %65, %52, %51, %49
  store i8 1, ptr %35, align 1
  br label %88

69:                                               ; preds = %65, %47, %30
  store i8 0, ptr %35, align 1
  %70 = getelementptr inbounds %struct.drm_plane_state, ptr %32, i32 0, i32 10
  %71 = load i32, ptr %70, align 4
  %72 = lshr i32 %71, 16
  %73 = getelementptr inbounds %struct.drm_plane_state, ptr %32, i32 0, i32 11
  %74 = load i32, ptr %73, align 4
  %75 = lshr i32 %74, 16
  %76 = getelementptr inbounds %struct.drm_plane_state, ptr %32, i32 0, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.drm_plane_state, ptr %32, i32 0, i32 7
  %79 = load i32, ptr %78, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.44, i32 noundef %75, i32 noundef %72, i32 noundef %77, i32 noundef %79) #7
  %80 = load i32, ptr %78, align 4
  %81 = icmp eq i32 %80, %72
  br i1 %81, label %82, label %175

82:                                               ; preds = %69
  %83 = load i32, ptr %76, align 4
  %84 = icmp eq i32 %83, %75
  br i1 %84, label %85, label %175

85:                                               ; preds = %82
  %86 = load i8, ptr %35, align 4
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85, %68
  %89 = load i32, ptr %25, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef %89) #7
  %90 = add i32 %21, 1
  br label %98

91:                                               ; preds = %85
  %92 = load ptr, ptr %39, align 8
  %93 = getelementptr inbounds %struct.drm_format_info, ptr %92, i32 0, i32 9
  %94 = load i8, ptr %93, align 1, !range !8
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.37) #7
  %97 = add i32 %20, 1
  br label %98

98:                                               ; preds = %96, %91, %88
  %99 = phi i32 [ %90, %88 ], [ %21, %96 ], [ %21, %91 ]
  %100 = phi i32 [ %20, %88 ], [ %97, %96 ], [ %20, %91 ]
  %101 = load ptr, ptr %39, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.38, ptr noundef %101) #7
  %102 = load ptr, ptr %39, align 8
  %103 = getelementptr inbounds %struct.drm_format_info, ptr %102, i32 0, i32 8
  %104 = load i8, ptr %103, align 4, !range !8
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.drm_plane_state, ptr %32, i32 0, i32 12
  %108 = load i16, ptr %107, align 4
  %109 = icmp eq i16 %108, -1
  br i1 %109, label %112, label %110

110:                                              ; preds = %106, %98
  %111 = add i32 %22, 1
  br label %112

112:                                              ; preds = %110, %106
  %113 = phi i32 [ %111, %110 ], [ %22, %106 ]
  %114 = getelementptr inbounds %struct.drm_plane_state, ptr %32, i32 0, i32 16
  %115 = load i32, ptr %114, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef %115) #7
  %116 = load i32, ptr %114, align 4
  %117 = getelementptr [4 x ptr], ptr %3, i32 0, i32 %116
  store ptr %32, ptr %117, align 4
  %118 = add i32 %23, 1
  br label %119

119:                                              ; preds = %112, %18
  %120 = phi i32 [ %118, %112 ], [ %23, %18 ]
  %121 = phi i32 [ %113, %112 ], [ %22, %18 ]
  %122 = phi i32 [ %99, %112 ], [ %21, %18 ]
  %123 = phi i32 [ %100, %112 ], [ %20, %18 ]
  %124 = load ptr, ptr %19, align 4
  %125 = icmp eq ptr %124, %13
  br i1 %125, label %126, label %18

126:                                              ; preds = %119
  %127 = icmp eq i32 %120, 0
  br i1 %127, label %175, label %128

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.sun4i_backend, ptr %0, i32 0, i32 10
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.sun4i_backend_quirks, ptr %130, i32 0, i32 1
  %132 = load i8, ptr %131, align 1, !range !8
  %133 = icmp eq i8 %132, 0
  %134 = select i1 %133, i32 1, i32 2
  %135 = icmp ugt i32 %121, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40) #7
  br label %175

137:                                              ; preds = %128
  br i1 %133, label %138, label %143

138:                                              ; preds = %137
  %139 = load ptr, ptr %3, align 4
  %140 = getelementptr inbounds %struct.drm_plane_state, ptr %139, i32 0, i32 12
  %141 = load i16, ptr %140, align 4
  %142 = icmp eq i16 %141, -1
  br i1 %142, label %143, label %175

143:                                              ; preds = %138, %137
  %144 = icmp ugt i32 %120, 1
  br i1 %144, label %145, label %168

145:                                              ; preds = %163, %143
  %146 = phi i32 [ %166, %163 ], [ 1, %143 ]
  %147 = phi i32 [ %164, %163 ], [ 0, %143 ]
  %148 = getelementptr [4 x ptr], ptr %3, i32 0, i32 %146
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.drm_plane_state, ptr %149, i32 0, i32 2
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.drm_framebuffer, ptr %151, i32 0, i32 4
  %153 = load ptr, ptr %152, align 8
  %154 = getelementptr inbounds %struct.drm_format_info, ptr %153, i32 0, i32 8
  %155 = load i8, ptr %154, align 4, !range !8
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %145
  %158 = getelementptr inbounds %struct.drm_plane_state, ptr %149, i32 0, i32 12
  %159 = load i16, ptr %158, align 4
  %160 = icmp eq i16 %159, -1
  br i1 %160, label %163, label %161

161:                                              ; preds = %157, %145
  %162 = add i32 %147, 1
  br label %163

163:                                              ; preds = %161, %157
  %164 = phi i32 [ %162, %161 ], [ %147, %157 ]
  %165 = getelementptr inbounds %struct.sun4i_layer_state, ptr %149, i32 0, i32 1
  store i32 %164, ptr %165, align 4
  %166 = add nuw i32 %146, 1
  %167 = icmp eq i32 %166, %120
  br i1 %167, label %168, label %145

168:                                              ; preds = %163, %143
  %169 = icmp ugt i32 %123, 1
  br i1 %169, label %170, label %171

170:                                              ; preds = %168
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41) #7
  br label %175

171:                                              ; preds = %168
  %172 = icmp ugt i32 %122, 1
  br i1 %172, label %173, label %174

173:                                              ; preds = %171
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.42) #7
  br label %175

174:                                              ; preds = %171
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.43, i32 noundef %120, i32 noundef %121, i32 noundef %122, i32 noundef %123) #7
  br label %175

175:                                              ; preds = %174, %173, %170, %138, %136, %126, %82, %69, %12, %2
  %176 = phi i32 [ -22, %136 ], [ -22, %170 ], [ -22, %173 ], [ 0, %174 ], [ 0, %2 ], [ 0, %126 ], [ -22, %138 ], [ 0, %12 ], [ -22, %69 ], [ -22, %82 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %176
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_backend_commit(ptr nocapture noundef readonly %0) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.45) #7
  %2 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2160, i32 noundef 3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sun4i_layers_init(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_backend_apply_color_correction(ptr nocapture noundef readonly %0) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.46) #7
  %2 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2496, i32 noundef 1) #7
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 2512, i32 noundef 263) #7
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 2516, i32 noundef 516) #7
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 2520, i32 noundef 100) #7
  %11 = load ptr, ptr %2, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 2524, i32 noundef 264) #7
  %13 = load ptr, ptr %2, align 4
  %14 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 2528, i32 noundef 16233) #7
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 2532, i32 noundef 16086) #7
  %17 = load ptr, ptr %2, align 4
  %18 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 2536, i32 noundef 449) #7
  %19 = load ptr, ptr %2, align 4
  %20 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 2540, i32 noundef 2056) #7
  %21 = load ptr, ptr %2, align 4
  %22 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 2544, i32 noundef 449) #7
  %23 = load ptr, ptr %2, align 4
  %24 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 2548, i32 noundef 16008) #7
  %25 = load ptr, ptr %2, align 4
  %26 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 2552, i32 noundef 16312) #7
  %27 = load ptr, ptr %2, align 4
  %28 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 2556, i32 noundef 2056) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_backend_disable_color_correction(ptr nocapture noundef readonly %0) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.47) #7
  %2 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 2496, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_backend_vblank_quirk(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sun4i_backend, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sun4i_backend, ptr %0, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %6) #7
  %7 = getelementptr inbounds %struct.sun4i_backend, ptr %0, i32 0, i32 9
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @sun4i_frontend_exit(ptr noundef nonnull %3) #7
  store i8 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %10, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %12 = load i16, ptr %6, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %14

14:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sun4i_frontend_format_is_supported(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_frontend_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148957957}
!12 = !{i64 2148953781}
!13 = !{i64 2148953856, i64 2148953883, i64 2148953930, i64 2148953952, i64 2148953980, i64 2148954000}
!14 = !{i64 2148980960}
