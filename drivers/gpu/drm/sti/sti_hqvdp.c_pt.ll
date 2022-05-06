; ModuleID = '/llk/IR/drivers/gpu/drm/sti/sti_hqvdp.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_hqvdp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sti_hqvdp = type { ptr, ptr, ptr, %struct.sti_plane, ptr, ptr, ptr, %struct.notifier_block, i8, ptr, i32, ptr, i8, i8 }
%struct.sti_plane = type { %struct.drm_plane, i32, i32, %struct.sti_fps_info }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.sti_fps_info = type { i8, i32, i32, i32, i32, i64, [128 x i8], [128 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sti_hqvdp_top = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.75 = type { i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.sti_hqvdp_cmd = type { %struct.sti_hqvdp_top, %struct.sti_hqvdp_vc1re, %struct.sti_hqvdp_fmd, %struct.sti_hqvdp_csdi, %struct.sti_hqvdp_hvsrc, %struct.sti_hqvdp_iqi, %struct.sti_hqvdp_top_status, %struct.sti_hqvdp_fmd_status, %struct.sti_hqvdp_csdi_status, %struct.sti_hqvdp_hvsrc_status, %struct.sti_hqvdp_iqi_status }
%struct.sti_hqvdp_vc1re = type { i32, i32, i32, i32, i32 }
%struct.sti_hqvdp_fmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sti_hqvdp_csdi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sti_hqvdp_hvsrc = type { i32, i32, i32, i32, i32, [128 x i32], [128 x i32], [128 x i32], [128 x i32], i32, i32 }
%struct.sti_hqvdp_iqi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i32], i32, i32, i32, i32 }
%struct.sti_hqvdp_top_status = type { i32, i32, i32 }
%struct.sti_hqvdp_fmd_status = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sti_hqvdp_csdi_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sti_hqvdp_hvsrc_status = type { i32, i32, i32 }
%struct.sti_hqvdp_iqi_status = type { i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.fw_header = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@hqvdp_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-hqvdp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [10 x i8] c"sti-hqvdp\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@sti_hqvdp_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @sti_hqvdp_probe, ptr @sti_hqvdp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr @hqvdp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__UNIQUE_ID_author294 = internal constant [52 x i8] c"author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [46 x i8] c"description=STMicroelectronics SoC DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to allocate HQVDP context\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Get memory resource failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Register mapping failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"hqvdp\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pix_main\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Cannot get clocks\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"st,vtg\00", align 1
@sti_hqvdp_ops = internal constant %struct.component_ops { ptr @sti_hqvdp_bind, ptr @sti_hqvdp_unbind }, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"Can't create HQVDP plane\0A\00", align 1
@sti_hqvdp_plane_helpers_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @sti_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr @sti_hqvdp_late_register, ptr null, ptr null, ptr null }, align 4
@hqvdp_supported_formats = internal constant [1 x i32] [i32 842094158], align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"Failed to initialize universal plane\0A\00", align 1
@sti_hqvdp_helpers_funcs = internal constant %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @sti_hqvdp_atomic_check, ptr @sti_hqvdp_atomic_update, ptr @sti_hqvdp_atomic_disable, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"Failed to allocate memory for VDP cmd\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Unknown event\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Vsync event received => disable %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Warning: no cmd, will skip field\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Warning: cannot unregister VTG notifier\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"XP70 could not revert to idle\0A\00", align 1
@hqvdp_debugfs_files = internal global [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.5, ptr @hqvdp_dbg_show, i32 0, ptr null }], align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"%s: (vaddr = 0x%p)\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"\0A  %-25s 0x%08X\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"HQVDP_MBX_IRQ_TO_XP70\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"HQVDP_MBX_INFO_HOST\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"HQVDP_MBX_IRQ_TO_HOST\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"HQVDP_MBX_INFO_XP70\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"\09Firmware state: \00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"idle and ready\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"processing a picture\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"programming queues\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"NOT READY\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"HQVDP_MBX_SW_RESET_CTRL\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"HQVDP_MBX_STARTUP_CTRL1\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"\09Reset is done\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"\09Reset is NOT done\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"HQVDP_MBX_STARTUP_CTRL2\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"\09Fetch is enabled\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"\09Fetch is NOT enabled\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"HQVDP_MBX_GP_STATUS\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"HQVDP_MBX_NEXT_CMD\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"HQVDP_MBX_CURRENT_CMD\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"HQVDP_MBX_SOFT_VSYNC\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"\09HW Vsync\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"\09SW Vsync ?!?!\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"\0A\0A  Last command: unknown\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"\0A\0A  Last command: address @ 0x%x (0x%p)\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"\0A\0A  Next command: unknown\00", align 1
@.str.45 = private unnamed_addr constant [40 x i8] c"\0A\0A  Next command address: @ 0x%x (0x%p)\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"\0A\09TOP:\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"\0A\09 %-20s 0x%08X\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"\09Progressive\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"\09Interlaced, top field\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"\09Interlaced, bottom field\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"\09<UNKNOWN>\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"MemFormat\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"CurrentY\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"CurrentC\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"YSrcPitch\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"CSrcPitch\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"InputFrameSize\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"\09%dx%d\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"InputViewportSize\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"\0A\09HVSRC:\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"OutputPictureSize\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"ParamCtrl\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"\0A\09 %-20s %s\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"yh_coef\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"ch_coef\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"yv_coef\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"cv_coef\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"\0A\09 %-20s\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"ScaleH\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c" %d/1\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c" 1/%d\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"tScaleV\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"\0A\09CSDI:\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"\0A\09 %-20s 0x%08X\09\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"Bypass\00", align 1
@.str.77 = private unnamed_addr constant [25 x i8] c"Deinterlace, directional\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"<UNKNOWN>\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"Config2\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"DcdiConfig\00", align 1
@coef_lut_a_legacy = internal constant [128 x i32] [i32 65535, i32 65536, i32 65791, i32 0, i32 0, i32 327680, i32 -261889, i32 0, i32 0, i32 589824, i32 -458498, i32 0, i32 0, i32 1114111, i32 -655109, i32 0, i32 0, i32 1572862, i32 -786185, i32 0, i32 0, i32 2097149, i32 -917262, i32 0, i32 0, i32 2621436, i32 -982804, i32 0, i32 0, i32 3211259, i32 -1048347, i32 0, i32 0, i32 3866618, i32 -1179426, i32 0, i32 0, i32 4521977, i32 -1244970, i32 0, i32 0, i32 5177336, i32 -1244979, i32 0, i32 0, i32 5898230, i32 -1244988, i32 0, i32 0, i32 6619125, i32 -1244998, i32 0, i32 0, i32 7340019, i32 -1179472, i32 0, i32 0, i32 8060914, i32 -1179482, i32 0, i32 0, i32 8781809, i32 -1113957, i32 0, i32 0, i32 9502704, i32 -1048432, i32 0, i32 0, i32 10223599, i32 -982907, i32 0, i32 0, i32 10944494, i32 -917382, i32 0, i32 0, i32 11599854, i32 -851857, i32 0, i32 0, i32 12255213, i32 -720796, i32 0, i32 0, i32 12910573, i32 -655271, i32 0, i32 0, i32 13500397, i32 -524210, i32 0, i32 0, i32 14090221, i32 -458684, i32 0, i32 0, i32 14614510, i32 -393158, i32 0, i32 0, i32 15073264, i32 -327632, i32 0, i32 0, i32 15532017, i32 -262105, i32 0, i32 0, i32 15925234, i32 -196577, i32 0, i32 0, i32 16252916, i32 -131049, i32 0, i32 0, i32 16515062, i32 -65520, i32 0, i32 0, i32 16711673, i32 9, i32 0, i32 0, i32 16777212, i32 5, i32 0], align 4
@.str.81 = private unnamed_addr constant [6 x i8] c"LUT A\00", align 1
@coef_lut_b = internal constant [128 x i32] [i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0], align 4
@.str.82 = private unnamed_addr constant [6 x i8] c"LUT B\00", align 1
@coef_lut_c_y_legacy = internal constant [128 x i32] [i32 393220, i32 3735521, i32 3670206, i32 458721, i32 327685, i32 4390881, i32 3670195, i32 524257, i32 262150, i32 4653025, i32 3342514, i32 589794, i32 196615, i32 5046241, i32 3014833, i32 589794, i32 131078, i32 5373922, i32 2687152, i32 655331, i32 65544, i32 5701602, i32 2359470, i32 655332, i32 -65528, i32 6094819, i32 2031789, i32 720868, i32 -131064, i32 6488036, i32 1704107, i32 720869, i32 -196598, i32 6750181, i32 1376424, i32 786406, i32 -262135, i32 7077863, i32 1114277, i32 786408, i32 -393206, i32 7405544, i32 852131, i32 786409, i32 -458741, i32 7798762, i32 524447, i32 786410, i32 -589813, i32 8060908, i32 327835, i32 851948, i32 -655349, i32 8323055, i32 65688, i32 851949, i32 -786421, i32 8716273, i32 -196459, i32 851950, i32 -851957, i32 8978420, i32 -393072, i32 851952, i32 -983029, i32 9306103, i32 -589683, i32 786417, i32 -1048564, i32 9502714, i32 -786296, i32 786419, i32 -1179636, i32 9830397, i32 -982908, i32 786420, i32 -1245172, i32 9961473, i32 -1113986, i32 786422, i32 -1310708, i32 10158085, i32 -1310598, i32 786423, i32 -1441781, i32 10420232, i32 -1441674, i32 786425, i32 -1507317, i32 10682381, i32 -1572752, i32 720890, i32 -1572853, i32 10813457, i32 -1638293, i32 655356, i32 -1703925, i32 11010069, i32 -1769370, i32 720893, i32 -1769462, i32 11206682, i32 -1834910, i32 589822, i32 -1834998, i32 11337759, i32 -1900452, i32 589823, i32 -1834999, i32 11403300, i32 -1965994, i32 524289, i32 -1900535, i32 11534377, i32 -1965999, i32 393218, i32 -1966072, i32 11599918, i32 -2031540, i32 458755, i32 -1966072, i32 11665459, i32 -2031546, i32 393220, i32 -2031609, i32 11731000, i32 -2031550, i32 327685], align 4
@.str.83 = private unnamed_addr constant [8 x i8] c"LUT C Y\00", align 1
@coef_lut_c_c_legacy = internal constant [128 x i32] [i32 131059, i32 3866619, i32 3801249, i32 131067, i32 131061, i32 4325371, i32 3670170, i32 131067, i32 131061, i32 4653051, i32 3408025, i32 131067, i32 131063, i32 4849659, i32 3145880, i32 131067, i32 131065, i32 5046267, i32 2949270, i32 131067, i32 131066, i32 5242876, i32 2687125, i32 131067, i32 131065, i32 5570557, i32 2424979, i32 131068, i32 131066, i32 5832701, i32 2228370, i32 65532, i32 131067, i32 6029310, i32 2031760, i32 65532, i32 131069, i32 6225919, i32 1835148, i32 65533, i32 131069, i32 6422528, i32 1638538, i32 65533, i32 131070, i32 6684673, i32 1441928, i32 -3, i32 65534, i32 6946819, i32 1245317, i32 -2, i32 65534, i32 7208964, i32 1048707, i32 -2, i32 65534, i32 7405574, i32 917631, i32 -1, i32 65534, i32 7667720, i32 786556, i32 -65537, i32 -2, i32 7929866, i32 655481, i32 -65537, i32 -2, i32 8126476, i32 524405, i32 -131072, i32 -1, i32 8323086, i32 393329, i32 -131072, i32 -65537, i32 8585232, i32 262254, i32 -131072, i32 -65537, i32 8716307, i32 196714, i32 -131072, i32 -131073, i32 8912918, i32 65638, i32 -131071, i32 -196608, i32 9043993, i32 98, i32 -196607, i32 -196608, i32 9175068, i32 -65442, i32 -196607, i32 -262144, i32 9437215, i32 -130981, i32 -327679, i32 -262144, i32 9568290, i32 -196520, i32 -393215, i32 -262143, i32 9633829, i32 -196524, i32 -458751, i32 -327679, i32 9764905, i32 -262065, i32 -393215, i32 -327679, i32 9830445, i32 -327604, i32 -458751, i32 -327679, i32 9961520, i32 -327607, i32 -589823, i32 -327679, i32 10027060, i32 -327610, i32 -720895, i32 -327679, i32 10092600, i32 -327615, i32 -720895], align 4
@.str.84 = private unnamed_addr constant [8 x i8] c"LUT C C\00", align 1
@coef_lut_d_y_legacy = internal constant [128 x i32] [i32 -524279, i32 4653036, i32 4587683, i32 -458772, i32 -589815, i32 5177325, i32 4456605, i32 -393237, i32 -655350, i32 5439470, i32 4128925, i32 -327702, i32 -720887, i32 5767151, i32 3866781, i32 -262167, i32 -720888, i32 6029296, i32 3604636, i32 -196631, i32 -786424, i32 6291442, i32 3342491, i32 -196631, i32 -851961, i32 6619123, i32 3080347, i32 -131096, i32 -917497, i32 6881269, i32 2818201, i32 -65560, i32 -983032, i32 7077879, i32 2556055, i32 -24, i32 -1048569, i32 7340025, i32 2293911, i32 -24, i32 -1114106, i32 7602171, i32 2097301, i32 65512, i32 -1179643, i32 7864318, i32 1835155, i32 65513, i32 -1179643, i32 7995392, i32 1573009, i32 131049, i32 -1245179, i32 8192003, i32 1376398, i32 196585, i32 -1310715, i32 8388614, i32 1179787, i32 196586, i32 -1376252, i32 8650760, i32 917642, i32 262122, i32 -1376253, i32 8847371, i32 721031, i32 262123, i32 -1441789, i32 9043982, i32 524420, i32 327659, i32 -1441790, i32 9109522, i32 393344, i32 393196, i32 -1507326, i32 9306133, i32 196733, i32 393197, i32 -1507327, i32 9502744, i32 122, i32 393198, i32 -1507328, i32 9633820, i32 -130953, i32 393198, i32 -1572864, i32 9764896, i32 -327565, i32 458735, i32 -1507329, i32 9895971, i32 -458641, i32 524272, i32 -1507329, i32 9895975, i32 -589717, i32 589809, i32 -1507330, i32 10027051, i32 -720792, i32 524274, i32 -1507331, i32 10158127, i32 -851868, i32 524275, i32 -1441796, i32 10158131, i32 -917409, i32 589812, i32 -1441796, i32 10223671, i32 -1048485, i32 589813, i32 -1441797, i32 10289211, i32 -1114025, i32 655349, i32 -1376262, i32 10289215, i32 -1179566, i32 720886, i32 -1310727, i32 10289220, i32 -1245106, i32 655351], align 4
@.str.85 = private unnamed_addr constant [8 x i8] c"LUT D Y\00", align 1
@coef_lut_d_c_legacy = internal constant [128 x i32] [i32 -65537, i32 4194303, i32 4128905, i32 -65537, i32 -131072, i32 4587520, i32 4325501, i32 -2, i32 -131072, i32 4784129, i32 4128893, i32 -3, i32 -196607, i32 4915202, i32 3932285, i32 65532, i32 -196607, i32 5111811, i32 3735676, i32 65532, i32 -262143, i32 5308421, i32 3539068, i32 65531, i32 -262143, i32 5505030, i32 3342459, i32 131066, i32 -262141, i32 5570568, i32 3211384, i32 131066, i32 -327677, i32 5767177, i32 3014776, i32 131066, i32 -327678, i32 5963787, i32 2818167, i32 196601, i32 -393213, i32 6160397, i32 2621557, i32 196601, i32 -393214, i32 6291471, i32 2490484, i32 196601, i32 -393212, i32 6357009, i32 2293874, i32 196601, i32 -393212, i32 6553619, i32 2097264, i32 196601, i32 -458748, i32 6684693, i32 1966190, i32 262137, i32 -458748, i32 6815767, i32 1835116, i32 262137, i32 -458749, i32 7012377, i32 1638507, i32 262137, i32 -458749, i32 7077916, i32 1507432, i32 327673, i32 -458749, i32 7208990, i32 1376358, i32 327673, i32 -458750, i32 7340064, i32 1245284, i32 327674, i32 -458750, i32 7471139, i32 1114209, i32 327674, i32 -458750, i32 7602214, i32 983136, i32 196602, i32 -458750, i32 7667752, i32 852062, i32 262138, i32 -458750, i32 7798827, i32 720987, i32 196603, i32 -393215, i32 7864366, i32 589912, i32 262139, i32 -393215, i32 7864369, i32 524373, i32 262140, i32 -393215, i32 8060979, i32 393300, i32 131068, i32 -327680, i32 8126518, i32 327761, i32 131068, i32 -262144, i32 8126521, i32 196686, i32 131069, i32 -262144, i32 8192060, i32 131147, i32 131069, i32 -131073, i32 8192063, i32 65609, i32 65534, i32 -65537, i32 8192066, i32 70, i32 65534], align 4
@.str.86 = private unnamed_addr constant [8 x i8] c"LUT D C\00", align 1
@coef_lut_e_y_legacy = internal constant [128 x i32] [i32 -983039, i32 4784132, i32 4784259, i32 -983036, i32 -983040, i32 5242886, i32 4915323, i32 -983038, i32 -983040, i32 5439495, i32 4718715, i32 -983039, i32 -983040, i32 5570569, i32 4587642, i32 -983040, i32 -917506, i32 5767179, i32 4391035, i32 -851970, i32 -917505, i32 5898253, i32 4194426, i32 -851971, i32 -917507, i32 6094863, i32 4063354, i32 -851972, i32 -917507, i32 6225937, i32 3866745, i32 -786437, i32 -917508, i32 6357011, i32 3735673, i32 -786438, i32 -917509, i32 6553621, i32 3539065, i32 -786439, i32 -917510, i32 6684695, i32 3407992, i32 -720904, i32 -917509, i32 6815769, i32 3211383, i32 -720905, i32 -851975, i32 6946843, i32 3080310, i32 -655370, i32 -851975, i32 7077918, i32 2883701, i32 -655371, i32 -851975, i32 7143456, i32 2752627, i32 -589835, i32 -786441, i32 7340066, i32 2556019, i32 -589836, i32 -786441, i32 7405605, i32 2424945, i32 -524301, i32 -720906, i32 7536679, i32 2228336, i32 -524301, i32 -655370, i32 7536682, i32 2097261, i32 -393230, i32 -655371, i32 7667756, i32 1966188, i32 -393230, i32 -589835, i32 7733295, i32 1769578, i32 -393230, i32 -524300, i32 7798833, i32 1638504, i32 -262159, i32 -458764, i32 7864372, i32 1507430, i32 -327695, i32 -393229, i32 7929910, i32 1376356, i32 -262159, i32 -327693, i32 7929913, i32 1245281, i32 -196623, i32 -262157, i32 7929915, i32 1114207, i32 -131087, i32 -196622, i32 7995454, i32 983133, i32 -131087, i32 -131086, i32 7995456, i32 852058, i32 -15, i32 -65550, i32 8060995, i32 720984, i32 -65551, i32 65521, i32 7995462, i32 589909, i32 65521, i32 131057, i32 8061000, i32 458835, i32 65521, i32 196593, i32 8061003, i32 393296, i32 65521], align 4
@.str.87 = private unnamed_addr constant [8 x i8] c"LUT E Y\00", align 1
@coef_lut_e_c_legacy = internal constant [128 x i32] [i32 -393215, i32 4128784, i32 4128877, i32 -393200, i32 -327678, i32 4456465, i32 4456546, i32 -393202, i32 -327679, i32 4587539, i32 4325474, i32 -393203, i32 -327680, i32 4718612, i32 4259938, i32 -393204, i32 -327679, i32 4784149, i32 4128865, i32 -327669, i32 -327680, i32 4915223, i32 3997793, i32 -327670, i32 -327680, i32 5046296, i32 3866722, i32 -327672, i32 -196609, i32 5177370, i32 3735649, i32 -327673, i32 -262144, i32 5177372, i32 3670112, i32 -327674, i32 -196609, i32 5373981, i32 3539040, i32 -327675, i32 -131074, i32 5439519, i32 3407968, i32 -327676, i32 -131074, i32 5505057, i32 3276894, i32 -262140, i32 -65537, i32 5570594, i32 3145821, i32 -262141, i32 -65537, i32 5636132, i32 3080284, i32 -262142, i32 -3, i32 5767206, i32 2949212, i32 -262143, i32 -3, i32 5898279, i32 2818140, i32 -262144, i32 65533, i32 5898281, i32 2687066, i32 -196608, i32 65532, i32 6029355, i32 2555994, i32 -131073, i32 131068, i32 6029357, i32 2490456, i32 -131073, i32 196604, i32 6029359, i32 2359382, i32 -2, i32 262140, i32 6094896, i32 2228309, i32 -2, i32 327676, i32 6160434, i32 2162772, i32 -65539, i32 327675, i32 6291508, i32 2031699, i32 -65539, i32 393211, i32 6291510, i32 1900626, i32 -4, i32 458747, i32 6291512, i32 1835087, i32 65532, i32 524283, i32 6357049, i32 1704015, i32 -4, i32 589819, i32 6422587, i32 1572941, i32 65531, i32 720891, i32 6357053, i32 1507403, i32 65531, i32 786427, i32 6357055, i32 1376329, i32 131067, i32 851962, i32 6422593, i32 1310792, i32 65531, i32 917498, i32 6422594, i32 1245254, i32 131067, i32 983034, i32 6422596, i32 1114180, i32 196603], align 4
@.str.88 = private unnamed_addr constant [8 x i8] c"LUT E C\00", align 1
@coef_lut_f_y_legacy = internal constant [128 x i32] [i32 -589840, i32 4784146, i32 4784238, i32 -655342, i32 -524303, i32 5111827, i32 4784232, i32 -655344, i32 -524302, i32 5177365, i32 4653159, i32 -655345, i32 -524299, i32 5177367, i32 4522085, i32 -655346, i32 -458763, i32 5242904, i32 4456549, i32 -655348, i32 -458762, i32 5308442, i32 4325476, i32 -655349, i32 -458762, i32 5373980, i32 4194404, i32 -655350, i32 -393226, i32 5505053, i32 4063332, i32 -655352, i32 -393224, i32 5505055, i32 3932259, i32 -655353, i32 -327688, i32 5570593, i32 3801186, i32 -655354, i32 -262153, i32 5636130, i32 3735650, i32 -655355, i32 -262152, i32 5701668, i32 3604577, i32 -655356, i32 -196616, i32 5767206, i32 3473504, i32 -655357, i32 -131080, i32 5832744, i32 3342431, i32 -655358, i32 -131081, i32 5963818, i32 3211359, i32 -655359, i32 -65545, i32 6029356, i32 3080286, i32 -655360, i32 -10, i32 6160429, i32 2949214, i32 -589825, i32 65526, i32 6160431, i32 2883676, i32 -524290, i32 131062, i32 6225969, i32 2752603, i32 -524291, i32 196598, i32 6225971, i32 2621529, i32 -458755, i32 262134, i32 6291509, i32 2490456, i32 -458756, i32 327670, i32 6357047, i32 2359383, i32 -458757, i32 393206, i32 6422585, i32 2228310, i32 -524293, i32 458742, i32 6422586, i32 2162773, i32 -458758, i32 524278, i32 6488124, i32 2031700, i32 -458759, i32 589814, i32 6553662, i32 1900628, i32 -589831, i32 720886, i32 6553664, i32 1835090, i32 -589832, i32 786422, i32 6553666, i32 1704017, i32 -589832, i32 851958, i32 6619204, i32 1572944, i32 -655368, i32 983030, i32 6619205, i32 1507407, i32 -655369, i32 1048566, i32 6750279, i32 1376335, i32 -851977, i32 1114102, i32 6815817, i32 1245262, i32 -917513], align 4
@.str.89 = private unnamed_addr constant [8 x i8] c"LUT F Y\00", align 1
@coef_lut_f_c_legacy = internal constant [128 x i32] [i32 65531, i32 3801114, i32 3801181, i32 26, i32 131067, i32 4128795, i32 4194385, i32 25, i32 131068, i32 4194332, i32 4128849, i32 23, i32 196603, i32 4325405, i32 4063313, i32 -65514, i32 196603, i32 4390942, i32 3997777, i32 -65515, i32 262140, i32 4390944, i32 3866704, i32 -65516, i32 262139, i32 4522017, i32 3801169, i32 -131053, i32 327676, i32 4522018, i32 3735632, i32 -131054, i32 393212, i32 4587555, i32 3670095, i32 -131055, i32 393211, i32 4718629, i32 3539024, i32 -196592, i32 458748, i32 4718630, i32 3473487, i32 -196593, i32 458748, i32 4784167, i32 3407951, i32 -196594, i32 524285, i32 4784168, i32 3342414, i32 -196595, i32 589820, i32 4849706, i32 3211341, i32 -196595, i32 655357, i32 4849707, i32 3145805, i32 -262132, i32 655356, i32 4980780, i32 3080269, i32 -262133, i32 720892, i32 4980782, i32 3014732, i32 -262134, i32 786428, i32 5046319, i32 2883660, i32 -262135, i32 851964, i32 5046320, i32 2818122, i32 -196599, i32 917501, i32 5046321, i32 2752586, i32 -262136, i32 917501, i32 5111859, i32 2621513, i32 -196601, i32 983037, i32 5177396, i32 2555977, i32 -262138, i32 1048573, i32 5177397, i32 2490440, i32 -262138, i32 1114109, i32 5242934, i32 2424904, i32 -327675, i32 1179646, i32 5177400, i32 2293830, i32 -262139, i32 1245182, i32 5242937, i32 2228293, i32 -262140, i32 1310718, i32 5308474, i32 2162757, i32 -327677, i32 1376255, i32 5242939, i32 2097219, i32 -262141, i32 1441791, i32 5308477, i32 1966147, i32 -327678, i32 1507327, i32 5308478, i32 1900610, i32 -327678, i32 1507328, i32 5308479, i32 1835072, i32 -262143, i32 1638400, i32 5308480, i32 1769535, i32 -327679], align 4
@.str.90 = private unnamed_addr constant [8 x i8] c"LUT F C\00", align 1
@.str.91 = private unnamed_addr constant [32 x i8] c"Scaling beyond HW capabilities\0A\00", align 1
@.str.92 = private unnamed_addr constant [33 x i8] c"Can't get CMA GEM object for fb\0A\00", align 1
@.str.93 = private unnamed_addr constant [36 x i8] c"Invalid in/out size %dx%d -> %dx%d\0A\00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c"Failed to prepare/enable pix main clk\0A\00", align 1
@.str.95 = private unnamed_addr constant [30 x i8] c"Cannot register VTG notifier\0A\00", align 1
@.str.96 = private unnamed_addr constant [32 x i8] c"CRTC:%d (%s) drm plane:%d (%s)\0A\00", align 1
@.str.97 = private unnamed_addr constant [46 x i8] c"%s dst=(%dx%d)@(%d,%d) - src=(%dx%d)@(%d,%d)\0A\00", align 1
@.str.98 = private unnamed_addr constant [32 x i8] c"HQVDP XP70 already initialized\0A\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"hqvdp-stih407.bin\00", align 1
@.str.100 = private unnamed_addr constant [26 x i8] c"Can't get HQVDP firmware\0A\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"Firmware not available\0A\00", align 1
@.str.102 = private unnamed_addr constant [29 x i8] c"Invalid firmware size (%zu)\0A\00", align 1
@.str.103 = private unnamed_addr constant [48 x i8] c"Invalid fmw structure (%zu+%d+%d+%d+%d != %zu)\0A\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c"Failed to prepare/enable HQVDP clk\0A\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"Could not reset\0A\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"Could not boot\0A\00", align 1
@.str.107 = private unnamed_addr constant [32 x i8] c"\016[drm] HQVDP XP70 initialized\0A\00", align 1
@.str.108 = private unnamed_addr constant [28 x i8] c"No change, not posting cmd\0A\00", align 1
@.str.109 = private unnamed_addr constant [34 x i8] c"Warning: no cmd, will skip frame\0A\00", align 1
@.str.110 = private unnamed_addr constant [35 x i8] c"drm FB:%d format:%.4s phys@:0x%lx\0A\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"drm plane:%d not enabled\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_license296], section "llvm.metadata"
@switch.table.hqvdp_dbg_dump_cmd = private unnamed_addr constant [3 x ptr] [ptr @.str.51, ptr @.str.49, ptr @.str.50], align 4

@__mod_of__hqvdp_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @hqvdp_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hqvdp_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1) #10
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 816, i32 noundef 3520) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #10
  br label %50

7:                                                ; preds = %1
  store ptr %3, ptr %4, align 8
  %8 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #10
  br label %50

11:                                               ; preds = %7
  %12 = load i32, ptr %8, align 4
  %13 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 1, %12
  %16 = add i32 %15, %14
  %17 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %12, i32 noundef %16) #10
  %18 = getelementptr inbounds %struct.sti_hqvdp, ptr %4, i32 0, i32 2
  store ptr %17, ptr %18, align 8
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #10
  br label %50

21:                                               ; preds = %11
  %22 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.5) #10
  %23 = getelementptr inbounds %struct.sti_hqvdp, ptr %4, i32 0, i32 4
  store ptr %22, ptr %23, align 8
  %24 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.6) #10
  %25 = getelementptr inbounds %struct.sti_hqvdp, ptr %4, i32 0, i32 5
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  %27 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #10
  br label %50

30:                                               ; preds = %21
  %31 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %32 = getelementptr inbounds %struct.sti_hqvdp, ptr %4, i32 0, i32 6
  store ptr %31, ptr %32, align 8
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @reset_control_deassert(ptr noundef %31) #10
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %38 = load ptr, ptr %37, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #10, !annotation !8
  %39 = call i32 @__of_parse_phandle_with_args(ptr noundef %38, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #10
  %40 = icmp eq i32 %39, 0
  %41 = load ptr, ptr %2, align 4
  %42 = select i1 %40, ptr %41, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = call ptr @of_vtg_find(ptr noundef nonnull %42) #10
  %46 = getelementptr inbounds %struct.sti_hqvdp, ptr %4, i32 0, i32 11
  store ptr %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %44, %36
  call void @of_node_put(ptr noundef %42) #10
  %48 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %48, align 8
  %49 = call i32 @component_add(ptr noundef %3, ptr noundef nonnull @sti_hqvdp_ops) #10
  br label %50

50:                                               ; preds = %47, %29, %20, %10, %6
  %51 = phi i32 [ -6, %29 ], [ %49, %47 ], [ -6, %20 ], [ -6, %10 ], [ -12, %6 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hqvdp_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @sti_hqvdp_ops) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_vtg_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hqvdp_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1) #10
  %7 = getelementptr inbounds %struct.sti_hqvdp, ptr %6, i32 0, i32 1
  store ptr %2, ptr %7, align 4
  %8 = load ptr, ptr %6, align 8
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sti_hqvdp, ptr %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.sti_hqvdp, ptr %10, i32 0, i32 3, i32 1
  store i32 512, ptr %12, align 8
  %13 = getelementptr inbounds %struct.sti_hqvdp, ptr %10, i32 0, i32 3, i32 2
  store i32 4, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %14 = getelementptr inbounds %struct.sti_hqvdp, ptr %10, i32 0, i32 7
  store ptr @sti_hqvdp_vtg_cb, ptr %14, align 4
  %15 = load ptr, ptr %10, align 8
  %16 = call ptr @dma_alloc_attrs(ptr noundef %15, i32 noundef 5600, ptr noundef nonnull %4, i32 noundef 3265, i32 noundef 4) #10
  %17 = getelementptr inbounds %struct.sti_hqvdp, ptr %10, i32 0, i32 9
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #10
  br label %23

20:                                               ; preds = %3
  %21 = load i32, ptr %4, align 4
  %22 = getelementptr inbounds %struct.sti_hqvdp, ptr %10, i32 0, i32 10
  store i32 %21, ptr %22, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5600) %16, i8 0, i32 5600, i1 false) #10
  br label %23

23:                                               ; preds = %20, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %24 = call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %2, ptr noundef %11, i32 noundef 1, ptr noundef nonnull @sti_hqvdp_plane_helpers_funcs, ptr noundef nonnull @hqvdp_supported_formats, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #10
  br label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sti_hqvdp, ptr %10, i32 0, i32 3, i32 0, i32 18
  store ptr @sti_hqvdp_helpers_funcs, ptr %28, align 8
  call void @sti_plane_init_property(ptr noundef %11, i32 noundef 0) #10
  %29 = icmp eq ptr %11, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %26
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #10
  br label %31

31:                                               ; preds = %30, %27
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @sti_hqvdp_unbind(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #4 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_plane_init_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hqvdp_vtg_cb(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = add i32 %1, -3
  %5 = icmp ult i32 %4, -2
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12) #10
  br label %101

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -764
  %9 = getelementptr i8, ptr %0, i32 -304
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %42

12:                                               ; preds = %7
  %13 = tail call ptr @sti_plane_to_str(ptr noundef %8) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef %13) #10
  %14 = tail call ptr @sti_plane_to_str(ptr noundef %8) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, ptr noundef %14) #10
  %15 = getelementptr i8, ptr %0, i32 24
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @sti_vtg_unregister_client(ptr noundef %16, ptr noundef %0) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16) #10
  br label %20

20:                                               ; preds = %19, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %21 = getelementptr i8, ptr %0, i32 -772
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr i8, ptr %22, i32 933920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #10, !srcloc !10
  br label %24

24:                                               ; preds = %31, %20
  %25 = phi i32 [ 0, %20 ], [ %32, %31 ]
  %26 = load ptr, ptr %21, align 8
  %27 = getelementptr i8, ptr %26, i32 933900
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %29 = and i32 %28, 32768
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  tail call void @msleep(i32 noundef 20) #10
  %32 = add nuw nsw i32 %25, 1
  %33 = icmp eq i32 %32, 50
  br i1 %33, label %34, label %24

34:                                               ; preds = %31, %24
  %35 = phi i32 [ %25, %24 ], [ 50, %31 ]
  %36 = getelementptr i8, ptr %0, i32 -8
  %37 = load ptr, ptr %36, align 4
  tail call void @clk_disable(ptr noundef %37) #10
  tail call void @clk_unprepare(ptr noundef %37) #10
  %38 = icmp eq i32 %35, 50
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #10
  br label %40

40:                                               ; preds = %39, %34
  store i32 4, ptr %9, align 4
  %41 = getelementptr i8, ptr %0, i32 29
  store i8 0, ptr %41, align 1
  br label %42

42:                                               ; preds = %40, %7
  %43 = getelementptr i8, ptr %0, i32 12
  %44 = load i8, ptr %43, align 8, !range !13
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %101, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %0, i32 20
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr i8, ptr %0, i32 -772
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr i8, ptr %50, i32 933924
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %53 = load ptr, ptr %49, align 8
  %54 = getelementptr i8, ptr %53, i32 933920
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %56 = icmp eq i32 %48, %52
  %57 = icmp eq i32 %48, %55
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %46
  %60 = add i32 %48, 2800
  %61 = icmp eq i32 %60, %52
  %62 = icmp eq i32 %60, %55
  %63 = select i1 %61, i1 true, i1 %62
  %64 = select i1 %63, i32 -1, i32 2800
  br label %65

65:                                               ; preds = %59, %46
  %66 = phi i32 [ 0, %46 ], [ %64, %59 ]
  %67 = load i32, ptr %47, align 8
  %68 = load ptr, ptr %49, align 8
  %69 = getelementptr i8, ptr %68, i32 933924
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !16
  %71 = icmp eq i32 %67, %70
  %72 = add i32 %67, 2800
  %73 = icmp eq i32 %72, %70
  %74 = select i1 %73, i32 2800, i32 -1
  %75 = select i1 %71, i32 0, i32 %74
  %76 = icmp eq i32 %66, -1
  %77 = icmp eq i32 %75, -1
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14) #10
  br label %101

80:                                               ; preds = %65
  %81 = getelementptr i8, ptr %0, i32 16
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %82, i32 %66
  %84 = getelementptr i8, ptr %82, i32 %75
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(2800) %83, ptr noundef align 4 dereferenceable(2800) %84, i32 2800, i1 false)
  store i32 0, ptr %83, align 4
  %85 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %83, i32 0, i32 12
  %86 = load i32, ptr %85, align 4
  %87 = lshr i32 %86, 1
  %88 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %83, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, %87
  store i32 %90, ptr %88, align 4
  %91 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %83, i32 0, i32 16
  %92 = load i32, ptr %91, align 4
  %93 = lshr i32 %92, 1
  %94 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %83, i32 0, i32 6
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, %93
  store i32 %96, ptr %94, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !17
  tail call void @arm_heavy_mb() #10
  %97 = load i32, ptr %47, align 8
  %98 = add i32 %97, %66
  %99 = load ptr, ptr %49, align 8
  %100 = getelementptr i8, ptr %99, i32 933920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #10, !srcloc !10
  store i8 0, ptr %43, align 8
  tail call void @sti_plane_update_fps(ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %101

101:                                              ; preds = %80, %79, %42, %6
  %102 = phi i32 [ 0, %6 ], [ -16, %79 ], [ 0, %80 ], [ 0, %42 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_plane_to_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_plane_update_fps(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_unregister_client(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_plane_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hqvdp_late_register(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  store ptr %2, ptr getelementptr inbounds ([1 x %struct.drm_info_list], ptr @hqvdp_debugfs_files, i32 0, i32 0, i32 3), align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @hqvdp_debugfs_files, i32 noundef 1, ptr noundef %7, ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hqvdp_dbg_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sti_hqvdp, ptr %8, i32 0, i32 3
  %10 = tail call ptr @sti_plane_to_str(ptr noundef %9) #10
  %11 = getelementptr inbounds %struct.sti_hqvdp, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %10, ptr noundef %12) #10
  %13 = load ptr, ptr %11, align 8
  %14 = getelementptr i8, ptr %13, i32 933888
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %15) #10
  %16 = load ptr, ptr %11, align 8
  %17 = getelementptr i8, ptr %16, i32 933892
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, i32 noundef %18) #10
  %19 = load ptr, ptr %11, align 8
  %20 = getelementptr i8, ptr %19, i32 933896
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.22, i32 noundef %21) #10
  %22 = load ptr, ptr %11, align 8
  %23 = getelementptr i8, ptr %22, i32 933900
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.23, i32 noundef %24) #10
  %25 = load ptr, ptr %11, align 8
  %26 = getelementptr i8, ptr %25, i32 933900
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !22
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.24) #10
  %28 = and i32 %27, 32768
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = and i32 %27, 16384
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = and i32 %27, 8192
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, ptr @.str.28, ptr @.str.27
  br label %37

37:                                               ; preds = %33, %30, %2
  %38 = phi ptr [ @.str.25, %2 ], [ @.str.26, %30 ], [ %36, %33 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %38) #10
  %39 = load ptr, ptr %11, align 8
  %40 = getelementptr i8, ptr %39, i32 933904
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.29, i32 noundef %41) #10
  %42 = load ptr, ptr %11, align 8
  %43 = getelementptr i8, ptr %42, i32 933908
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.30, i32 noundef %44) #10
  %45 = load ptr, ptr %11, align 8
  %46 = getelementptr i8, ptr %45, i32 933908
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !25
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, ptr @.str.32, ptr @.str.31
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %50) #10
  %51 = load ptr, ptr %11, align 8
  %52 = getelementptr i8, ptr %51, i32 933912
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.33, i32 noundef %53) #10
  %54 = load ptr, ptr %11, align 8
  %55 = getelementptr i8, ptr %54, i32 933912
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !27
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, ptr @.str.35, ptr @.str.34
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %59) #10
  %60 = load ptr, ptr %11, align 8
  %61 = getelementptr i8, ptr %60, i32 933916
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !28
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.36, i32 noundef %62) #10
  %63 = load ptr, ptr %11, align 8
  %64 = getelementptr i8, ptr %63, i32 933920
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !29
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.37, i32 noundef %65) #10
  %66 = load ptr, ptr %11, align 8
  %67 = getelementptr i8, ptr %66, i32 933924
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.38, i32 noundef %68) #10
  %69 = load ptr, ptr %11, align 8
  %70 = getelementptr i8, ptr %69, i32 933928
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.39, i32 noundef %71) #10
  %72 = load ptr, ptr %11, align 8
  %73 = getelementptr i8, ptr %72, i32 933928
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !32
  %75 = and i32 %74, 3
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, ptr @.str.40, ptr @.str.41
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %77) #10
  %78 = load ptr, ptr %11, align 8
  %79 = getelementptr i8, ptr %78, i32 933924
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !33
  %81 = getelementptr inbounds %struct.sti_hqvdp, ptr %8, i32 0, i32 10
  %82 = load i32, ptr %81, align 8
  %83 = load ptr, ptr %11, align 8
  %84 = getelementptr i8, ptr %83, i32 933924
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !16
  %86 = icmp eq i32 %82, %85
  %87 = add i32 %82, 2800
  %88 = icmp eq i32 %87, %85
  %89 = select i1 %88, i32 2800, i32 -1
  %90 = select i1 %86, i32 0, i32 %89
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %93

92:                                               ; preds = %37
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.42) #10
  br label %97

93:                                               ; preds = %37
  %94 = getelementptr inbounds %struct.sti_hqvdp, ptr %8, i32 0, i32 9
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 %90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %80, ptr noundef %96) #10
  tail call fastcc void @hqvdp_dbg_dump_cmd(ptr noundef %0, ptr noundef %96)
  br label %97

97:                                               ; preds = %93, %92
  %98 = load ptr, ptr %11, align 8
  %99 = getelementptr i8, ptr %98, i32 933920
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  %101 = load i32, ptr %81, align 8
  %102 = load ptr, ptr %11, align 8
  %103 = getelementptr i8, ptr %102, i32 933920
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !35
  %105 = icmp eq i32 %101, %104
  %106 = add i32 %101, 2800
  %107 = icmp eq i32 %106, %104
  %108 = select i1 %107, i32 2800, i32 -1
  %109 = select i1 %105, i32 0, i32 %108
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.44) #10
  br label %116

112:                                              ; preds = %97
  %113 = getelementptr inbounds %struct.sti_hqvdp, ptr %8, i32 0, i32 9
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr i8, ptr %114, i32 %109
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %100, ptr noundef %115) #10
  tail call fastcc void @hqvdp_dbg_dump_cmd(ptr noundef %0, ptr noundef %115)
  br label %116

116:                                              ; preds = %112, %111
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hqvdp_dbg_dump_cmd(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.46) #10
  %3 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %3) #10
  %4 = load i32, ptr %1, align 4
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds [3 x ptr], ptr @switch.table.hqvdp_dbg_dump_cmd, i32 0, i32 %4
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ @.str.52, %2 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %10) #10
  %11 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.53, i32 noundef %12) #10
  %13 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.54, i32 noundef %14) #10
  %15 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %1, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.55, i32 noundef %16) #10
  %17 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %1, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.56, i32 noundef %18) #10
  %19 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %1, i32 0, i32 16
  %20 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.57, i32 noundef %20) #10
  %21 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %1, i32 0, i32 22
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.58, i32 noundef %22) #10
  %23 = load i32, ptr %21, align 4
  %24 = and i32 %23, 65535
  %25 = lshr i32 %23, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef %24, i32 noundef %25) #10
  %26 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %1, i32 0, i32 25
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.60, i32 noundef %27) #10
  %28 = load i32, ptr %26, align 4
  %29 = and i32 %28, 65535
  %30 = lshr i32 %28, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef %29, i32 noundef %30) #10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.61) #10
  %31 = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %1, i32 0, i32 4, i32 1
  %32 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.62, i32 noundef %32) #10
  %33 = load i32, ptr %31, align 4
  %34 = and i32 %33, 65535
  %35 = lshr i32 %33, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef %34, i32 noundef %35) #10
  %36 = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %1, i32 0, i32 4, i32 4
  %37 = load i32, ptr %36, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.63, i32 noundef %37) #10
  %38 = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %1, i32 0, i32 4, i32 5
  %39 = tail call fastcc ptr @hqvdp_dbg_get_lut(ptr noundef %38)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, ptr noundef nonnull %39) #10
  %40 = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %1, i32 0, i32 4, i32 6
  %41 = tail call fastcc ptr @hqvdp_dbg_get_lut(ptr noundef %40)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.66, ptr noundef nonnull %41) #10
  %42 = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %1, i32 0, i32 4, i32 7
  %43 = tail call fastcc ptr @hqvdp_dbg_get_lut(ptr noundef %42)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.67, ptr noundef nonnull %43) #10
  %44 = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %1, i32 0, i32 4, i32 8
  %45 = tail call fastcc ptr @hqvdp_dbg_get_lut(ptr noundef %44)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.68, ptr noundef nonnull %45) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #10
  %46 = icmp ugt i32 %34, %29
  %47 = select i1 %46, i32 %33, i32 %28
  %48 = select i1 %46, i32 %28, i32 %33
  %49 = select i1 %46, ptr @.str.71, ptr @.str.72
  %50 = trunc i32 %47 to i16
  %51 = trunc i32 %48 to i16
  %52 = udiv i16 %50, %51
  %53 = zext i16 %52 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %49, i32 noundef %53) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.73) #10
  %54 = icmp ugt i32 %35, %30
  %55 = call i32 @llvm.umax.i32(i32 %35, i32 %30)
  %56 = call i32 @llvm.umin.i32(i32 %35, i32 %30)
  %57 = select i1 %54, ptr @.str.71, ptr @.str.72
  %58 = trunc i32 %55 to i16
  %59 = trunc i32 %56 to i16
  %60 = udiv i16 %58, %59
  %61 = zext i16 %60 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %57, i32 noundef %61) #10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.74) #10
  %62 = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %1, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.48, i32 noundef %63) #10
  %64 = load i32, ptr %62, align 4
  %65 = icmp eq i32 %64, 22
  %66 = select i1 %65, ptr @.str.77, ptr @.str.78
  %67 = icmp eq i32 %64, 0
  %68 = select i1 %67, ptr @.str.76, ptr %66
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %68) #10
  %69 = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %1, i32 0, i32 3, i32 1
  %70 = load i32, ptr %69, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.79, i32 noundef %70) #10
  %71 = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %1, i32 0, i32 3, i32 2
  %72 = load i32, ptr %71, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.80, i32 noundef %72) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @hqvdp_dbg_get_lut(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %0, ptr noundef nonnull dereferenceable(16) @coef_lut_a_legacy, i32 16)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %0, ptr noundef nonnull dereferenceable(16) @coef_lut_b, i32 16)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %0, ptr noundef nonnull dereferenceable(16) @coef_lut_c_y_legacy, i32 16)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %0, ptr noundef nonnull dereferenceable(16) @coef_lut_c_c_legacy, i32 16)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %0, ptr noundef nonnull dereferenceable(16) @coef_lut_d_y_legacy, i32 16)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %0, ptr noundef nonnull dereferenceable(16) @coef_lut_d_c_legacy, i32 16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %0, ptr noundef nonnull dereferenceable(16) @coef_lut_e_y_legacy, i32 16)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %0, ptr noundef nonnull dereferenceable(16) @coef_lut_e_c_legacy, i32 16)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %0, ptr noundef nonnull dereferenceable(16) @coef_lut_f_y_legacy, i32 16)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %0, ptr noundef nonnull dereferenceable(16) @coef_lut_f_c_legacy, i32 16)
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr @.str.90, ptr @.str.78
  br label %32

32:                                               ; preds = %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %33 = phi ptr [ @.str.81, %1 ], [ @.str.82, %4 ], [ @.str.83, %7 ], [ @.str.84, %10 ], [ @.str.85, %13 ], [ @.str.86, %16 ], [ @.str.87, %19 ], [ @.str.88, %22 ], [ @.str.89, %25 ], [ %31, %28 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hqvdp_atomic_check(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.__drm_planes_state, ptr %5, i32 %7, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 -16
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ne ptr %12, null
  %16 = icmp ne ptr %14, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %284

18:                                               ; preds = %2
  %19 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %1, ptr noundef nonnull %12) #10
  %20 = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 8
  %21 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 8, i32 1
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = sub i32 %29, %22
  %31 = tail call i32 @llvm.umin.i32(i32 %26, i32 %30)
  %32 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 8, i32 6
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = sub i32 %36, %24
  %38 = tail call i32 @llvm.umin.i32(i32 %33, i32 %37)
  %39 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 16
  %42 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 9
  %43 = load i32, ptr %42, align 4
  %44 = lshr i32 %43, 16
  %45 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 11
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 16
  %48 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 10
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %49, 16
  %51 = load i32, ptr %20, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %18
  %54 = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 8, i32 4
  %55 = load i16, ptr %54, align 2
  %56 = zext i16 %55 to i32
  %57 = getelementptr i8, ptr %0, i32 752
  %58 = load ptr, ptr %57, align 8
  %59 = tail call i32 @clk_get_rate(ptr noundef %58) #10
  %60 = udiv i32 %59, 1000000
  %61 = mul nuw nsw i32 %60, %56
  %62 = tail call i32 @llvm.smax.i32(i32 %47, i32 %31) #10
  %63 = load i32, ptr %20, align 4
  %64 = mul i32 %63, %62
  %65 = sdiv i32 %64, 1000
  %66 = udiv i32 %61, %65
  %67 = add i32 %38, -1
  %68 = add i32 %67, %50
  %69 = sdiv i32 %68, %38
  %70 = icmp ugt i32 %69, %66
  br i1 %70, label %71, label %72

71:                                               ; preds = %53
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.91) #10
  br label %284

72:                                               ; preds = %53, %18
  %73 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %14, i32 noundef 0) #10
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.92) #10
  br label %284

76:                                               ; preds = %72
  %77 = add i32 %31, 1
  %78 = and i32 %77, -2
  %79 = add i32 %38, 1
  %80 = and i32 %79, -2
  %81 = add i32 %46, -536870912
  %82 = icmp ult i32 %81, -533725184
  %83 = icmp ugt i32 %49, 268435455
  %84 = select i1 %82, i1 true, i1 %83
  %85 = icmp ult i32 %49, 1048576
  %86 = select i1 %84, i1 true, i1 %85
  %87 = icmp sgt i32 %78, 8191
  %88 = select i1 %86, i1 true, i1 %87
  %89 = icmp slt i32 %78, 48
  %90 = select i1 %88, i1 true, i1 %89
  %91 = icmp sgt i32 %80, 4095
  %92 = select i1 %90, i1 true, i1 %91
  %93 = icmp slt i32 %80, 16
  %94 = select i1 %92, i1 true, i1 %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %76
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.93, i32 noundef %47, i32 noundef %50, i32 noundef %78, i32 noundef %80) #10
  br label %284

96:                                               ; preds = %76
  %97 = getelementptr i8, ptr %0, i32 792
  %98 = load i8, ptr %97, align 8, !range !13
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %252

100:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1) #10
  %101 = load i8, ptr %97, align 8, !range !13
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.98) #10
  br label %251

104:                                              ; preds = %100
  %105 = load ptr, ptr %10, align 8
  %106 = call i32 @request_firmware(ptr noundef nonnull %3, ptr noundef nonnull @.str.99, ptr noundef %105) #10
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.100) #10
  br label %251

109:                                              ; preds = %104
  %110 = load ptr, ptr %3, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.101) #10
  br label %251

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.firmware, ptr %110, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = load i32, ptr %110, align 4
  %117 = icmp ult i32 %116, 16
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.102, i32 noundef %116) #10
  br label %249

119:                                              ; preds = %113
  %120 = load i32, ptr %115, align 4
  %121 = add i32 %120, 16
  %122 = getelementptr inbounds %struct.fw_header, ptr %115, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %121, %123
  %125 = getelementptr inbounds %struct.fw_header, ptr %115, i32 0, i32 2
  %126 = load i32, ptr %125, align 4
  %127 = add i32 %124, %126
  %128 = getelementptr inbounds %struct.fw_header, ptr %115, i32 0, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = add i32 %127, %129
  %131 = icmp eq i32 %130, %116
  br i1 %131, label %133, label %132

132:                                              ; preds = %119
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.103, i32 noundef 16, i32 noundef %120, i32 noundef %123, i32 noundef %126, i32 noundef %129, i32 noundef %116) #10
  br label %249

133:                                              ; preds = %119
  %134 = getelementptr i8, ptr %115, i32 16
  %135 = getelementptr i8, ptr %134, i32 %120
  %136 = getelementptr i8, ptr %135, i32 %123
  %137 = getelementptr i8, ptr %136, i32 %126
  %138 = getelementptr i8, ptr %0, i32 752
  %139 = load ptr, ptr %138, align 8
  %140 = call i32 @clk_prepare(ptr noundef %139) #10
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %133
  %143 = call i32 @clk_enable(ptr noundef %139) #10
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  call void @clk_unprepare(ptr noundef %139) #10
  br label %146

146:                                              ; preds = %145, %133
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.104) #10
  br label %147

147:                                              ; preds = %146, %142
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !36
  call void @arm_heavy_mb() #10
  %148 = getelementptr i8, ptr %0, i32 -8
  %149 = load ptr, ptr %148, align 8
  %150 = getelementptr i8, ptr %149, i32 933904
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 1) #10, !srcloc !10
  br label %151

151:                                              ; preds = %158, %147
  %152 = phi i32 [ 0, %147 ], [ %159, %158 ]
  %153 = load ptr, ptr %148, align 8
  %154 = getelementptr i8, ptr %153, i32 933908
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #10, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !37
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  call void @msleep(i32 noundef 20) #10
  %159 = add nuw nsw i32 %152, 1
  %160 = icmp eq i32 %159, 50
  br i1 %160, label %166, label %151

161:                                              ; preds = %151
  %162 = icmp eq i32 %152, 50
  br i1 %162, label %166, label %163

163:                                              ; preds = %161
  %164 = load i32, ptr %115, align 4
  %165 = icmp sgt i32 %164, 3
  br i1 %165, label %171, label %168

166:                                              ; preds = %161, %158
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.105) #10
  %167 = load ptr, ptr %138, align 8
  call void @clk_disable(ptr noundef %167) #10
  call void @clk_unprepare(ptr noundef %167) #10
  br label %249

168:                                              ; preds = %171, %163
  %169 = load i32, ptr %122, align 4
  %170 = icmp sgt i32 %169, 3
  br i1 %170, label %183, label %195

171:                                              ; preds = %171, %163
  %172 = phi i32 [ %179, %171 ], [ 0, %163 ]
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !38
  call void @arm_heavy_mb() #10
  %173 = getelementptr i32, ptr %134, i32 %172
  %174 = load i32, ptr %173, align 4
  %175 = load ptr, ptr %148, align 8
  %176 = getelementptr i8, ptr %175, i32 917504
  %177 = shl i32 %172, 2
  %178 = getelementptr i8, ptr %176, i32 %177
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %174) #10, !srcloc !10
  %179 = add nuw nsw i32 %172, 1
  %180 = load i32, ptr %115, align 4
  %181 = sdiv i32 %180, 4
  %182 = icmp slt i32 %179, %181
  br i1 %182, label %171, label %168

183:                                              ; preds = %183, %168
  %184 = phi i32 [ %191, %183 ], [ 0, %168 ]
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !39
  call void @arm_heavy_mb() #10
  %185 = getelementptr i32, ptr %135, i32 %184
  %186 = load i32, ptr %185, align 4
  %187 = load ptr, ptr %148, align 8
  %188 = getelementptr i8, ptr %187, i32 925696
  %189 = shl i32 %184, 2
  %190 = getelementptr i8, ptr %188, i32 %189
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %186) #10, !srcloc !10
  %191 = add nuw nsw i32 %184, 1
  %192 = load i32, ptr %122, align 4
  %193 = sdiv i32 %192, 4
  %194 = icmp slt i32 %191, %193
  br i1 %194, label %183, label %195

195:                                              ; preds = %183, %168
  call fastcc void @sti_hqvdp_init_plugs(ptr noundef %10) #10
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !40
  call void @arm_heavy_mb() #10
  %196 = load ptr, ptr %148, align 8
  %197 = getelementptr i8, ptr %196, i32 933908
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 4) #10, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !41
  call void @arm_heavy_mb() #10
  %198 = load ptr, ptr %148, align 8
  %199 = getelementptr i8, ptr %198, i32 933928
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 3) #10, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !42
  call void @arm_heavy_mb() #10
  %200 = load ptr, ptr %148, align 8
  %201 = getelementptr i8, ptr %200, i32 933920
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 0) #10, !srcloc !10
  %202 = load i32, ptr %125, align 4
  %203 = icmp sgt i32 %202, 3
  br i1 %203, label %207, label %204

204:                                              ; preds = %207, %195
  %205 = load i32, ptr %128, align 4
  %206 = icmp sgt i32 %205, 3
  br i1 %206, label %219, label %230

207:                                              ; preds = %207, %195
  %208 = phi i32 [ %215, %207 ], [ 0, %195 ]
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !43
  call void @arm_heavy_mb() #10
  %209 = getelementptr i32, ptr %136, i32 %208
  %210 = load i32, ptr %209, align 4
  %211 = load ptr, ptr %148, align 8
  %212 = getelementptr i8, ptr %211, i32 262144
  %213 = shl i32 %208, 2
  %214 = getelementptr i8, ptr %212, i32 %213
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %210) #10, !srcloc !10
  %215 = add nuw nsw i32 %208, 1
  %216 = load i32, ptr %125, align 4
  %217 = sdiv i32 %216, 4
  %218 = icmp slt i32 %215, %217
  br i1 %218, label %207, label %204

219:                                              ; preds = %219, %204
  %220 = phi i32 [ %226, %219 ], [ 0, %204 ]
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !44
  call void @arm_heavy_mb() #10
  %221 = getelementptr i32, ptr %137, i32 %220
  %222 = load i32, ptr %221, align 4
  %223 = load ptr, ptr %148, align 8
  %224 = shl i32 %220, 2
  %225 = getelementptr i8, ptr %223, i32 %224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %222) #10, !srcloc !10
  %226 = add nuw nsw i32 %220, 1
  %227 = load i32, ptr %128, align 4
  %228 = sdiv i32 %227, 4
  %229 = icmp slt i32 %226, %228
  br i1 %229, label %219, label %230

230:                                              ; preds = %219, %204
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !45
  call void @arm_heavy_mb() #10
  %231 = load ptr, ptr %148, align 8
  %232 = getelementptr i8, ptr %231, i32 933912
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 2) #10, !srcloc !10
  br label %233

233:                                              ; preds = %240, %230
  %234 = phi i32 [ 0, %230 ], [ %241, %240 ]
  %235 = load ptr, ptr %148, align 8
  %236 = getelementptr i8, ptr %235, i32 933900
  %237 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %236) #10, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !46
  %238 = and i32 %237, 32768
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %233
  call void @msleep(i32 noundef 20) #10
  %241 = add nuw nsw i32 %234, 1
  %242 = icmp eq i32 %241, 50
  br i1 %242, label %243, label %233

243:                                              ; preds = %240
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.106) #10
  %244 = load ptr, ptr %138, align 8
  call void @clk_disable(ptr noundef %244) #10
  call void @clk_unprepare(ptr noundef %244) #10
  br label %249

245:                                              ; preds = %233
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !47
  call void @arm_heavy_mb() #10
  %246 = load ptr, ptr %148, align 8
  %247 = getelementptr i8, ptr %246, i32 933928
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 0) #10, !srcloc !10
  %248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #11
  store i8 1, ptr %97, align 8
  br label %249

249:                                              ; preds = %245, %243, %166, %132, %118
  %250 = load ptr, ptr %3, align 4
  call void @release_firmware(ptr noundef %250) #10
  br label %251

251:                                              ; preds = %249, %112, %108, %103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %252

252:                                              ; preds = %251, %96
  %253 = getelementptr i8, ptr %0, i32 793
  %254 = load i8, ptr %253, align 1, !range !13
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %275

256:                                              ; preds = %252
  %257 = getelementptr i8, ptr %0, i32 756
  %258 = load ptr, ptr %257, align 4
  %259 = call i32 @clk_prepare(ptr noundef %258) #10
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = call i32 @clk_enable(ptr noundef %258) #10
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %261
  call void @clk_unprepare(ptr noundef %258) #10
  br label %265

265:                                              ; preds = %264, %256
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.94) #10
  br label %284

266:                                              ; preds = %261
  %267 = getelementptr i8, ptr %0, i32 788
  %268 = load ptr, ptr %267, align 4
  %269 = getelementptr i8, ptr %0, i32 764
  %270 = call i32 @sti_vtg_register_client(ptr noundef %268, ptr noundef %269, ptr noundef nonnull %12) #10
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %266
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.95) #10
  %273 = load ptr, ptr %257, align 4
  call void @clk_disable(ptr noundef %273) #10
  call void @clk_unprepare(ptr noundef %273) #10
  br label %284

274:                                              ; preds = %266
  store i8 1, ptr %253, align 1
  br label %275

275:                                              ; preds = %274, %252
  %276 = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 5
  %277 = load i32, ptr %276, align 4
  %278 = getelementptr i8, ptr %12, i32 -16
  %279 = call ptr @sti_mixer_to_str(ptr noundef %278) #10
  %280 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %281 = load i32, ptr %280, align 8
  %282 = call ptr @sti_plane_to_str(ptr noundef %0) #10
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.96, i32 noundef %277, ptr noundef %279, i32 noundef %281, ptr noundef %282) #10
  %283 = call ptr @sti_plane_to_str(ptr noundef %0) #10
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.97, ptr noundef %283, i32 noundef %78, i32 noundef %80, i32 noundef %22, i32 noundef %24, i32 noundef %47, i32 noundef %50, i32 noundef %41, i32 noundef %44) #10
  br label %284

284:                                              ; preds = %275, %272, %265, %95, %75, %71, %2
  %285 = phi i32 [ -22, %95 ], [ 0, %275 ], [ -22, %265 ], [ -22, %272 ], [ -22, %75 ], [ -22, %71 ], [ 0, %2 ]
  ret i32 %285
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_hqvdp_atomic_update(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ne ptr %12, null
  %16 = icmp ne ptr %14, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %238

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %14
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  br label %75

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %75

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 8
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 9
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 9
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 11
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 11
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 10
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 10
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.108) #10
  %74 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 2
  store i32 1, ptr %74, align 4
  br label %238

75:                                               ; preds = %67, %61, %55, %49, %43, %37, %31, %25, %22
  %76 = phi i32 [ %24, %22 ], [ %27, %67 ], [ %27, %61 ], [ %27, %55 ], [ %27, %49 ], [ %27, %43 ], [ %27, %37 ], [ %27, %31 ], [ %29, %25 ]
  %77 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 1
  %82 = load i16, ptr %81, align 4
  %83 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 7
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 6
  %86 = load i16, ptr %85, align 2
  %87 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 8
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 9
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 11
  %92 = load i32, ptr %91, align 4
  %93 = lshr i32 %92, 16
  %94 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 10
  %95 = load i32, ptr %94, align 4
  %96 = lshr i32 %95, 16
  %97 = getelementptr i8, ptr %0, i32 784
  %98 = load i32, ptr %97, align 8
  %99 = getelementptr i8, ptr %0, i32 -8
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr i8, ptr %100, i32 933924
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %103 = load ptr, ptr %99, align 8
  %104 = getelementptr i8, ptr %103, i32 933920
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %106 = icmp eq i32 %98, %102
  %107 = icmp eq i32 %98, %105
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %75
  %110 = add i32 %98, 2800
  %111 = icmp eq i32 %110, %102
  %112 = icmp eq i32 %110, %105
  %113 = select i1 %111, i1 true, i1 %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.109) #10
  br label %238

115:                                              ; preds = %109, %75
  %116 = phi i32 [ 2800, %109 ], [ 0, %75 ]
  %117 = and i32 %90, -65536
  %118 = lshr i32 %88, 16
  %119 = zext i16 %86 to i32
  %120 = sub i32 %119, %78
  %121 = tail call i32 @llvm.umin.i32(i32 %84, i32 %120)
  %122 = zext i16 %82 to i32
  %123 = sub i32 %122, %76
  %124 = tail call i32 @llvm.umin.i32(i32 %80, i32 %123)
  %125 = getelementptr i8, ptr %0, i32 780
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr i8, ptr %126, i32 %116
  store i32 1, ptr %127, align 4
  %128 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %127, i32 0, i32 1
  store i32 98400, ptr %128, align 4
  %129 = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %127, i32 0, i32 4
  %130 = getelementptr inbounds %struct.sti_hqvdp_hvsrc, ptr %129, i32 0, i32 4
  store i32 -1, ptr %130, align 4
  %131 = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %127, i32 0, i32 3
  store i32 0, ptr %131, align 4
  %132 = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %127, i32 0, i32 5
  store i32 1, ptr %132, align 4
  %133 = getelementptr inbounds %struct.sti_hqvdp_iqi, ptr %132, i32 0, i32 12
  store i32 256, ptr %133, align 4
  %134 = getelementptr inbounds %struct.sti_hqvdp_iqi, ptr %132, i32 0, i32 13
  store i32 256, ptr %134, align 4
  %135 = getelementptr inbounds %struct.sti_hqvdp_iqi, ptr %132, i32 0, i32 14
  store i32 1, ptr %135, align 4
  %136 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %14, i32 noundef 0) #10
  %137 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 2
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 4
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %136, i32 0, i32 1
  %142 = load i32, ptr %141, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.110, i32 noundef %138, ptr noundef %140, i32 noundef %142) #10
  %143 = load i32, ptr %141, align 8
  %144 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 7
  %145 = load i32, ptr %144, align 8
  %146 = add i32 %145, %143
  %147 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %127, i32 0, i32 2
  store i32 %146, ptr %147, align 4
  %148 = load i32, ptr %141, align 8
  %149 = getelementptr %struct.drm_framebuffer, ptr %14, i32 0, i32 7, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = add i32 %150, %148
  %152 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %127, i32 0, i32 6
  store i32 %151, ptr %152, align 4
  %153 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 6
  %154 = load i32, ptr %153, align 8
  %155 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %127, i32 0, i32 20
  store i32 %154, ptr %155, align 4
  %156 = load i32, ptr %153, align 8
  %157 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %127, i32 0, i32 12
  store i32 %156, ptr %157, align 4
  %158 = getelementptr %struct.drm_framebuffer, ptr %14, i32 0, i32 6, i32 1
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %127, i32 0, i32 21
  store i32 %159, ptr %160, align 4
  %161 = load i32, ptr %158, align 4
  %162 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %127, i32 0, i32 16
  store i32 %161, ptr %162, align 4
  %163 = add i32 %124, 1
  %164 = and i32 %163, -2
  %165 = add i32 %121, 1
  %166 = and i32 %165, -2
  %167 = and i32 %95, -65536
  %168 = or i32 %167, %93
  %169 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %127, i32 0, i32 25
  store i32 %168, ptr %169, align 4
  %170 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %127, i32 0, i32 22
  store i32 %168, ptr %170, align 4
  %171 = shl i32 %166, 16
  %172 = or i32 %171, %164
  %173 = getelementptr inbounds %struct.sti_hqvdp_hvsrc, ptr %129, i32 0, i32 1
  store i32 %172, ptr %173, align 4
  %174 = or i32 %117, %118
  %175 = getelementptr inbounds %struct.sti_hqvdp_top, ptr %127, i32 0, i32 23
  store i32 %174, ptr %175, align 4
  %176 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 11
  %177 = load i32, ptr %176, align 8
  %178 = and i32 %177, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %190, label %180

180:                                              ; preds = %115
  store i32 2, ptr %127, align 4
  %181 = lshr i32 %95, 1
  %182 = and i32 %181, 2147418112
  %183 = or i32 %182, %93
  store i32 %183, ptr %170, align 4
  %184 = shl i32 %154, 1
  store i32 %184, ptr %155, align 4
  %185 = shl i32 %156, 1
  store i32 %185, ptr %157, align 4
  %186 = shl i32 %159, 1
  store i32 %186, ptr %160, align 4
  %187 = shl i32 %161, 1
  store i32 %187, ptr %162, align 4
  store i32 22, ptr %131, align 4
  %188 = getelementptr inbounds %struct.sti_hqvdp_csdi, ptr %131, i32 0, i32 1
  store i32 435, ptr %188, align 4
  %189 = getelementptr inbounds %struct.sti_hqvdp_csdi, ptr %131, i32 0, i32 2
  store i32 2111491, ptr %189, align 4
  br label %190

190:                                              ; preds = %180, %115
  %191 = shl i32 %164, 13
  %192 = sdiv i32 %191, %93
  %193 = icmp slt i32 %192, 4096
  br i1 %193, label %203, label %194

194:                                              ; preds = %190
  %195 = icmp ult i32 %192, 4915
  br i1 %195, label %203, label %196

196:                                              ; preds = %194
  %197 = icmp ult i32 %192, 6654
  br i1 %197, label %203, label %198

198:                                              ; preds = %196
  %199 = icmp ult i32 %192, 8192
  br i1 %199, label %203, label %200

200:                                              ; preds = %198
  %201 = icmp eq i32 %192, 8192
  %202 = select i1 %201, ptr @coef_lut_b, ptr @coef_lut_a_legacy
  br label %203

203:                                              ; preds = %200, %198, %196, %194, %190
  %204 = phi ptr [ @coef_lut_f_c_legacy, %190 ], [ @coef_lut_e_c_legacy, %194 ], [ @coef_lut_d_c_legacy, %196 ], [ @coef_lut_c_c_legacy, %198 ], [ %202, %200 ]
  %205 = phi ptr [ @coef_lut_f_y_legacy, %190 ], [ @coef_lut_e_y_legacy, %194 ], [ @coef_lut_d_y_legacy, %196 ], [ @coef_lut_c_y_legacy, %198 ], [ %202, %200 ]
  %206 = getelementptr inbounds %struct.sti_hqvdp_hvsrc, ptr %129, i32 0, i32 9
  store i32 524296, ptr %206, align 4
  %207 = getelementptr inbounds %struct.sti_hqvdp_hvsrc, ptr %129, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(512) %207, ptr noundef nonnull align 4 dereferenceable(512) %205, i32 512, i1 false) #10
  %208 = getelementptr inbounds %struct.sti_hqvdp_hvsrc, ptr %129, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(512) %208, ptr noundef nonnull align 4 dereferenceable(512) %204, i32 512, i1 false) #10
  %209 = shl i32 %166, 13
  %210 = sdiv i32 %209, %96
  %211 = icmp slt i32 %210, 4096
  br i1 %211, label %221, label %212

212:                                              ; preds = %203
  %213 = icmp ult i32 %210, 4915
  br i1 %213, label %221, label %214

214:                                              ; preds = %212
  %215 = icmp ult i32 %210, 6654
  br i1 %215, label %221, label %216

216:                                              ; preds = %214
  %217 = icmp ult i32 %210, 8192
  br i1 %217, label %221, label %218

218:                                              ; preds = %216
  %219 = icmp eq i32 %210, 8192
  %220 = select i1 %219, ptr @coef_lut_b, ptr @coef_lut_a_legacy
  br label %221

221:                                              ; preds = %218, %216, %214, %212, %203
  %222 = phi ptr [ @coef_lut_f_c_legacy, %203 ], [ @coef_lut_e_c_legacy, %212 ], [ @coef_lut_d_c_legacy, %214 ], [ @coef_lut_c_c_legacy, %216 ], [ %220, %218 ]
  %223 = phi ptr [ @coef_lut_f_y_legacy, %203 ], [ @coef_lut_e_y_legacy, %212 ], [ @coef_lut_d_y_legacy, %214 ], [ @coef_lut_c_y_legacy, %216 ], [ %220, %218 ]
  %224 = getelementptr inbounds %struct.sti_hqvdp_hvsrc, ptr %129, i32 0, i32 10
  store i32 524296, ptr %224, align 4
  %225 = getelementptr inbounds %struct.sti_hqvdp_hvsrc, ptr %129, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(512) %225, ptr noundef nonnull align 4 dereferenceable(512) %223, i32 512, i1 false) #10
  %226 = getelementptr inbounds %struct.sti_hqvdp_hvsrc, ptr %129, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(512) %226, ptr noundef nonnull align 4 dereferenceable(512) %222, i32 512, i1 false) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !48
  tail call void @arm_heavy_mb() #10
  %227 = load i32, ptr %97, align 8
  %228 = add i32 %227, %116
  %229 = load ptr, ptr %99, align 8
  %230 = getelementptr i8, ptr %229, i32 933920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %228) #10, !srcloc !10
  %231 = load i32, ptr %176, align 8
  %232 = and i32 %231, 1
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %221
  %235 = getelementptr i8, ptr %0, i32 776
  store i8 1, ptr %235, align 8
  br label %236

236:                                              ; preds = %234, %221
  tail call void @sti_plane_update_fps(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext true) #10
  %237 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 2
  store i32 1, ptr %237, align 4
  br label %238

238:                                              ; preds = %236, %114, %73, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_hqvdp_atomic_disable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.111, i32 noundef %14) #10
  br label %24

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %10, i32 -16
  %19 = tail call ptr @sti_mixer_to_str(ptr noundef %18) #10
  %20 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = tail call ptr @sti_plane_to_str(ptr noundef %0) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.96, i32 noundef %17, ptr noundef %19, i32 noundef %21, ptr noundef %22) #10
  %23 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 2
  store i32 2, ptr %23, align 4
  br label %24

24:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_register_client(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_mixer_to_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sti_hqvdp_init_plugs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !49
  tail call void @arm_heavy_mb() #10
  %2 = getelementptr inbounds %struct.sti_hqvdp, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 921604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 2) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !50
  tail call void @arm_heavy_mb() #10
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr i8, ptr %5, i32 921608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 3) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !51
  tail call void @arm_heavy_mb() #10
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 921612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 6) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !52
  tail call void @arm_heavy_mb() #10
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr i8, ptr %9, i32 921616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 1) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr i8, ptr %11, i32 921620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !54
  tail call void @arm_heavy_mb() #10
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr i8, ptr %13, i32 921624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr i8, ptr %15, i32 921600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr i8, ptr %17, i32 929796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 2) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !57
  tail call void @arm_heavy_mb() #10
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr i8, ptr %19, i32 929800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 3) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !58
  tail call void @arm_heavy_mb() #10
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr i8, ptr %21, i32 929804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 6) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !59
  tail call void @arm_heavy_mb() #10
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr i8, ptr %23, i32 929808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 1) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !60
  tail call void @arm_heavy_mb() #10
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr i8, ptr %25, i32 929812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !61
  tail call void @arm_heavy_mb() #10
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr i8, ptr %27, i32 929816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !62
  tail call void @arm_heavy_mb() #10
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr i8, ptr %29, i32 929792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 1) #10, !srcloc !10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = !{i64 2155378336}
!10 = !{i64 5003139}
!11 = !{i64 5003557}
!12 = !{i64 2155378906}
!13 = !{i8 0, i8 2}
!14 = !{i64 2155361268}
!15 = !{i64 2155361691}
!16 = !{i64 2155362116}
!17 = !{i64 2155380753}
!18 = !{i64 2155363143}
!19 = !{i64 2155363686}
!20 = !{i64 2155364231}
!21 = !{i64 2155364774}
!22 = !{i64 2155365197}
!23 = !{i64 2155365996}
!24 = !{i64 2155366543}
!25 = !{i64 2155366966}
!26 = !{i64 2155367595}
!27 = !{i64 2155368018}
!28 = !{i64 2155368643}
!29 = !{i64 2155369185}
!30 = !{i64 2155369730}
!31 = !{i64 2155370274}
!32 = !{i64 2155370697}
!33 = !{i64 2155371120}
!34 = !{i64 2155371543}
!35 = !{i64 2155362541}
!36 = !{i64 2155388748}
!37 = !{i64 2155389370}
!38 = !{i64 2155389729}
!39 = !{i64 2155390114}
!40 = !{i64 2155390620}
!41 = !{i64 2155391070}
!42 = !{i64 2155391466}
!43 = !{i64 2155391828}
!44 = !{i64 2155392204}
!45 = !{i64 2155392704}
!46 = !{i64 2155393326}
!47 = !{i64 2155393719}
!48 = !{i64 2155476858}
!49 = !{i64 2155382177}
!50 = !{i64 2155382597}
!51 = !{i64 2155383017}
!52 = !{i64 2155383437}
!53 = !{i64 2155383857}
!54 = !{i64 2155384277}
!55 = !{i64 2155384697}
!56 = !{i64 2155385117}
!57 = !{i64 2155385537}
!58 = !{i64 2155385957}
!59 = !{i64 2155386377}
!60 = !{i64 2155386797}
!61 = !{i64 2155387217}
!62 = !{i64 2155387637}
