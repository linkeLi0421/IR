; ModuleID = '/llk/IR/drivers/gpu/drm/sti/sti_gdp.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_gdp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.gdp_format_to_str = type { i32, [20 x i8] }
%struct.sti_gdp = type { %struct.sti_plane, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, i8, [2 x %struct.sti_gdp_node_list], ptr }
%struct.sti_plane = type { %struct.drm_plane, i32, i32, %struct.sti_fps_info }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.sti_fps_info = type { i8, i32, i32, i32, i32, i64, [128 x i8], [128 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sti_gdp_node_list = type { ptr, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.sti_gdp_node = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.sti_compositor = type { ptr, ptr, %struct.sti_compositor_data, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [1 x ptr], [2 x ptr], [2 x %struct.notifier_block] }
%struct.sti_compositor_data = type { i32, [9 x %struct.sti_compositor_subdev_descriptor] }
%struct.sti_compositor_subdev_descriptor = type { i32, i32, i32 }
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
%struct.drm_format_info = type { i32, i8, i8, %union.anon.70, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.70 = type { [4 x i8] }

@.str = private unnamed_addr constant [35 x i8] c"Failed to allocate memory for GDP\0A\00", align 1
@sti_gdp_plane_helpers_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @sti_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr @sti_gdp_late_register, ptr null, ptr null, ptr null }, align 4
@gdp_supported_formats = internal constant [8 x i32] [i32 875713112, i32 875709016, i32 875713089, i32 875708993, i32 842093121, i32 892424769, i32 909199186, i32 875710290], align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to initialize universal plane\0A\00", align 1
@sti_gdp_helpers_funcs = internal constant %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @sti_gdp_atomic_check, ptr @sti_gdp_atomic_update, ptr @sti_gdp_atomic_disable, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Vsync event received => disable %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unsupported event: %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Warning: cannot unregister VTG notifier\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Failed to allocate memory for GDP node\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Mem alignment failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"node[%d].top_field=%p\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"node[%d].btm_field=%p\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"st,stih407-compositor\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"pix_gdp1\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"pix_gdp2\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"pix_gdp3\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"pix_gdp4\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"GDP id not recognized\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"Cannot get %s clock\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"main_parent\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Cannot get main_parent clock\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"aux_parent\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Cannot get aux_parent clock\0A\00", align 1
@gdp0_debugfs_files = internal global [2 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.21, ptr @gdp_dbg_show, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.22, ptr @gdp_node_dbg_show, i32 0, ptr null }], align 4
@gdp1_debugfs_files = internal global [2 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.65, ptr @gdp_dbg_show, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.66, ptr @gdp_node_dbg_show, i32 0, ptr null }], align 4
@gdp2_debugfs_files = internal global [2 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.67, ptr @gdp_dbg_show, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.68, ptr @gdp_node_dbg_show, i32 0, ptr null }], align 4
@gdp3_debugfs_files = internal global [2 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.69, ptr @gdp_dbg_show, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.70, ptr @gdp_node_dbg_show, i32 0, ptr null }], align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"gdp0\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"gdp0_node\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"%s: (vaddr = 0x%p)\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"\0A  %-25s 0x%08X\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"GAM_GDP_CTL\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"GAM_GDP_AGC\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"GAM_GDP_VPO\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"GAM_GDP_VPS\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"GAM_GDP_PML\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"GAM_GDP_PMP\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"GAM_GDP_SIZE\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"GAM_GDP_NVN\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"GAM_GDP_KEY1\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"GAM_GDP_KEY2\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"GAM_GDP_PPT\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"GAM_GDP_CML\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"GAM_GDP_MST\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"  Not connected to any DRM CRTC\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"  Connected to DRM CRTC #%d (%s)\0A\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"\09Color:\00", align 1
@gdp_format_to_str = internal global [9 x %struct.gdp_format_to_str] [%struct.gdp_format_to_str { i32 0, [20 x i8] c"RGB565\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gdp_format_to_str { i32 1, [20 x i8] c"RGB888\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gdp_format_to_str { i32 2, [20 x i8] c"RGB888_32\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gdp_format_to_str { i32 8388674, [20 x i8] c"XBGR8888\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gdp_format_to_str { i32 4, [20 x i8] c"ARGB8565\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gdp_format_to_str { i32 5, [20 x i8] c"ARGB8888\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gdp_format_to_str { i32 8388677, [20 x i8] c"ABGR8888\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gdp_format_to_str { i32 6, [20 x i8] c"ARGB1555\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gdp_format_to_str { i32 7, [20 x i8] c"ARGB4444\00\00\00\00\00\00\00\00\00\00\00\00" }], align 4
@.str.42 = private unnamed_addr constant [10 x i8] c"<UNKNOWN>\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"\09WaitNextVsync:%d\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"\09xdo:%4d\09ydo:%4d\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"\09xds:%4d\09yds:%4d\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"\09%d x %d\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"\09Virt @: %p\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"\09Not displayed on mixer!\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"\09BUFFER UNDERFLOW!\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"\0A%s[%d].top\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"\0A%s[%d].btm\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"\09@:0x%p\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"\0A\09CTL  0x%08X\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"\0A\09AGC  0x%08X\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"\0A\09VPO  0x%08X\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"\0A\09VPS  0x%08X\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"\0A\09PML  0x%08X\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"\0A\09PMP  0x%08X\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"\0A\09SIZE 0x%08X\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"\0A\09NVN  0x%08X\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"\0A\09KEY1 0x%08X\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"\0A\09KEY2 0x%08X\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"\0A\09PPT  0x%08X\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"\0A\09CML  0x%08X\0A\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"gdp1\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"gdp1_node\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"gdp2\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"gdp2_node\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"gdp3\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"gdp3_node\00", align 1
@.str.71 = private unnamed_addr constant [34 x i8] c"Format not supported by GDP %.4s\0A\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"Can't get CMA GEM object for fb\0A\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"Cannot set rate (%dHz) for gdp\0A\00", align 1
@.str.74 = private unnamed_addr constant [32 x i8] c"CRTC:%d (%s) drm plane:%d (%s)\0A\00", align 1
@.str.75 = private unnamed_addr constant [46 x i8] c"%s dst=(%dx%d)@(%d,%d) - src=(%dx%d)@(%d,%d)\0A\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"No change, not posting cmd\0A\00", align 1
@.str.77 = private unnamed_addr constant [35 x i8] c"drm FB:%d format:%.4s phys@:0x%lx\0A\00", align 1
@.str.78 = private unnamed_addr constant [35 x i8] c"%s first update (or invalid node)\0A\00", align 1
@.str.79 = private unnamed_addr constant [33 x i8] c"inconsistent NVN for %s: 0x%08X\0A\00", align 1
@.str.80 = private unnamed_addr constant [52 x i8] c"Warning, NVN 0x%08X for %s does not match any node\0A\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"drm plane:%d not enabled\0A\00", align 1
@switch.table.sti_gdp_create = private unnamed_addr constant [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], align 4
@switch.table.sti_gdp_late_register = private unnamed_addr constant [4 x ptr] [ptr @gdp0_debugfs_files, ptr @gdp1_debugfs_files, ptr @gdp2_debugfs_files, ptr @gdp3_debugfs_files], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sti_gdp_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 824, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %87

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.sti_gdp, ptr %8, i32 0, i32 1
  store ptr %1, ptr %12, align 8
  %13 = getelementptr inbounds %struct.sti_gdp, ptr %8, i32 0, i32 2
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sti_plane, ptr %8, i32 0, i32 1
  store i32 %2, ptr %14, align 8
  %15 = getelementptr inbounds %struct.sti_plane, ptr %8, i32 0, i32 2
  store i32 4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.sti_gdp, ptr %8, i32 0, i32 6
  store ptr @sti_gdp_field_cb, ptr %16, align 4
  %17 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !annotation !8
  %19 = call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef 256, ptr noundef nonnull %7, i32 noundef 3264, i32 noundef 4) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %79, label %21

21:                                               ; preds = %11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %19, i8 0, i32 256, i1 false) #6
  %22 = load i32, ptr %7, align 4
  %23 = and i32 %22, 15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 0
  store ptr %19, ptr %26, align 4
  %27 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 0, i32 1
  store i32 %22, ptr %27, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull %19) #6
  %28 = load i32, ptr %7, align 4
  %29 = add i32 %28, 64
  store i32 %29, ptr %7, align 4
  %30 = and i32 %28, 15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %79

32:                                               ; preds = %25
  %33 = getelementptr i8, ptr %19, i32 64
  %34 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 0, i32 2
  store ptr %33, ptr %34, align 4
  %35 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 0, i32 3
  store i32 %29, ptr %35, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef %33) #6
  %36 = load i32, ptr %7, align 4
  %37 = add i32 %36, 64
  store i32 %37, ptr %7, align 4
  %38 = and i32 %36, 15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %32
  %41 = getelementptr i8, ptr %19, i32 128
  %42 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 1, i32 1
  store i32 %37, ptr %43, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef %41) #6
  %44 = load i32, ptr %7, align 4
  %45 = add i32 %44, 64
  store i32 %45, ptr %7, align 4
  %46 = and i32 %44, 15
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %40
  %49 = getelementptr i8, ptr %19, i32 192
  %50 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 1, i32 2
  store ptr %49, ptr %50, align 4
  %51 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 1, i32 3
  store i32 %45, ptr %51, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef %49) #6
  %52 = load i32, ptr %7, align 4
  %53 = add i32 %52, 64
  store i32 %53, ptr %7, align 4
  %54 = call i32 @of_device_is_compatible(ptr noundef %18, ptr noundef nonnull @.str.10) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %48
  %57 = load i32, ptr %14, align 8
  %58 = add i32 %57, -256
  %59 = icmp ult i32 %58, 4
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = getelementptr inbounds [4 x ptr], ptr @switch.table.sti_gdp_create, i32 0, i32 %58
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %12, align 8
  %64 = call ptr @devm_clk_get(ptr noundef %63, ptr noundef nonnull %62) #6
  %65 = getelementptr inbounds %struct.sti_gdp, ptr %8, i32 0, i32 3
  store ptr %64, ptr %65, align 8
  %66 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, ptr noundef nonnull %62) #6
  br label %68

68:                                               ; preds = %67, %60
  %69 = load ptr, ptr %12, align 8
  %70 = call ptr @devm_clk_get(ptr noundef %69, ptr noundef nonnull @.str.17) #6
  %71 = getelementptr inbounds %struct.sti_gdp, ptr %8, i32 0, i32 4
  store ptr %70, ptr %71, align 4
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #6
  br label %74

74:                                               ; preds = %73, %68
  %75 = load ptr, ptr %12, align 8
  %76 = call ptr @devm_clk_get(ptr noundef %75, ptr noundef nonnull @.str.19) #6
  %77 = getelementptr inbounds %struct.sti_gdp, ptr %8, i32 0, i32 5
  store ptr %76, ptr %77, align 8
  %78 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %81

79:                                               ; preds = %74, %56, %40, %32, %25, %21, %11
  %80 = phi ptr [ @.str.6, %11 ], [ @.str.7, %32 ], [ @.str.7, %21 ], [ @.str.7, %40 ], [ @.str.7, %25 ], [ @.str.15, %56 ], [ @.str.20, %74 ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull %80) #6
  br label %81

81:                                               ; preds = %79, %74, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  %82 = call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %4, ptr noundef nonnull @sti_gdp_plane_helpers_funcs, ptr noundef nonnull @gdp_supported_formats, i32 noundef 8, ptr noundef null, i32 noundef %5, ptr noundef null) #6
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %8) #6
  br label %87

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.drm_plane, ptr %8, i32 0, i32 18
  store ptr @sti_gdp_helpers_funcs, ptr %86, align 8
  call void @sti_plane_init_property(ptr noundef nonnull %8, i32 noundef %5) #6
  br label %87

87:                                               ; preds = %85, %84, %10
  %88 = phi ptr [ null, %84 ], [ %8, %85 ], [ null, %10 ]
  ret ptr %88
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_gdp_field_cb(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -312
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -772
  %9 = tail call ptr @sti_plane_to_str(ptr noundef %8) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %9) #6
  %10 = tail call ptr @sti_plane_to_str(ptr noundef %8) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef %10) #6
  %11 = getelementptr i8, ptr %0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sti_gdp_node, ptr %12, i32 0, i32 13
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 3
  store i32 %15, ptr %13, align 4
  %16 = getelementptr i8, ptr %0, i32 24
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sti_gdp_node, ptr %17, i32 0, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, 3
  store i32 %20, ptr %18, align 4
  %21 = getelementptr i8, ptr %0, i32 32
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sti_gdp_node, ptr %22, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 3
  store i32 %25, ptr %23, align 4
  %26 = getelementptr i8, ptr %0, i32 40
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sti_gdp_node, ptr %27, i32 0, i32 13
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 3
  store i32 %30, ptr %28, align 4
  %31 = getelementptr i8, ptr %0, i32 48
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @sti_vtg_unregister_client(ptr noundef %32, ptr noundef %0) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5) #6
  br label %36

36:                                               ; preds = %35, %7
  %37 = getelementptr i8, ptr %0, i32 -12
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @clk_disable(ptr noundef nonnull %38) #6
  tail call void @clk_unprepare(ptr noundef nonnull %38) #6
  br label %41

41:                                               ; preds = %40, %36
  store i32 4, ptr %4, align 4
  store ptr null, ptr %31, align 4
  br label %42

42:                                               ; preds = %41, %3
  switch i32 %1, label %47 [
    i32 1, label %43
    i32 2, label %45
  ]

43:                                               ; preds = %42
  %44 = getelementptr i8, ptr %0, i32 12
  store i8 1, ptr %44, align 8
  br label %48

45:                                               ; preds = %42
  %46 = getelementptr i8, ptr %0, i32 12
  store i8 0, ptr %46, align 8
  br label %48

47:                                               ; preds = %42
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %1) #6
  br label %48

48:                                               ; preds = %47, %45, %43
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_plane_init_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_plane_to_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_unregister_client(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

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
define internal i32 @sti_gdp_late_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, -256
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds [4 x ptr], ptr @switch.table.sti_gdp_late_register, i32 0, i32 %4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.drm_info_list, ptr %11, i32 0, i32 3
  store ptr %0, ptr %12, align 4
  %13 = getelementptr %struct.drm_info_list, ptr %11, i32 1, i32 3
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.drm_minor, ptr %9, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull %11, i32 noundef 2, ptr noundef %15, ptr noundef %9) #6
  br label %16

16:                                               ; preds = %6, %1
  %17 = phi i32 [ 0, %6 ], [ -22, %1 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gdp_dbg_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane, ptr %8, i32 0, i32 3
  %10 = tail call i32 @drm_modeset_lock(ptr noundef %9, ptr noundef null) #6
  %11 = getelementptr inbounds %struct.drm_plane, ptr %8, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @drm_modeset_unlock(ptr noundef %9) #6
  %15 = tail call ptr @sti_plane_to_str(ptr noundef %8) #6
  %16 = getelementptr inbounds %struct.sti_gdp, ptr %8, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %15, ptr noundef %17) #6
  %18 = load ptr, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %19) #6
  %20 = load ptr, ptr %16, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  tail call fastcc void @gdp_dbg_ctl(ptr noundef %0, i32 noundef %21)
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef %24) #6
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr i8, ptr %25, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.27, i32 noundef %27) #6
  %28 = load ptr, ptr %16, align 4
  %29 = getelementptr i8, ptr %28, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %31 = and i32 %30, 65535
  %32 = lshr i32 %30, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %31, i32 noundef %32) #6
  %33 = load ptr, ptr %16, align 4
  %34 = getelementptr i8, ptr %33, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.28, i32 noundef %35) #6
  %36 = load ptr, ptr %16, align 4
  %37 = getelementptr i8, ptr %36, i32 16
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !16
  %39 = and i32 %38, 65535
  %40 = lshr i32 %38, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %39, i32 noundef %40) #6
  %41 = load ptr, ptr %16, align 4
  %42 = getelementptr i8, ptr %41, i32 20
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.29, i32 noundef %43) #6
  %44 = load ptr, ptr %16, align 4
  %45 = getelementptr i8, ptr %44, i32 24
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.30, i32 noundef %46) #6
  %47 = load ptr, ptr %16, align 4
  %48 = getelementptr i8, ptr %47, i32 28
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.31, i32 noundef %49) #6
  %50 = load ptr, ptr %16, align 4
  %51 = getelementptr i8, ptr %50, i32 28
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %53 = and i32 %52, 65535
  %54 = lshr i32 %52, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %53, i32 noundef %54) #6
  %55 = load ptr, ptr %16, align 4
  %56 = getelementptr i8, ptr %55, i32 36
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !21
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.32, i32 noundef %57) #6
  %58 = load ptr, ptr %16, align 4
  %59 = getelementptr i8, ptr %58, i32 36
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !22
  %61 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, %60
  br i1 %63, label %64, label %67

64:                                               ; preds = %74, %2
  %65 = phi i32 [ 0, %2 ], [ 1, %74 ]
  %66 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 %65
  br label %82

67:                                               ; preds = %2
  %68 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, %60
  br i1 %70, label %71, label %74

71:                                               ; preds = %78, %67
  %72 = phi i32 [ 0, %67 ], [ 1, %78 ]
  %73 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 %72, i32 2
  br label %82

74:                                               ; preds = %67
  %75 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 1, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, %60
  br i1 %77, label %64, label %78

78:                                               ; preds = %74
  %79 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 1, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, %60
  br i1 %81, label %71, label %87

82:                                               ; preds = %71, %64
  %83 = phi ptr [ %66, %64 ], [ %73, %71 ]
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull %84) #6
  br label %87

87:                                               ; preds = %86, %82, %78
  %88 = load ptr, ptr %16, align 4
  %89 = getelementptr i8, ptr %88, i32 40
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.33, i32 noundef %90) #6
  %91 = load ptr, ptr %16, align 4
  %92 = getelementptr i8, ptr %91, i32 44
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.34, i32 noundef %93) #6
  %94 = load ptr, ptr %16, align 4
  %95 = getelementptr i8, ptr %94, i32 52
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.35, i32 noundef %96) #6
  %97 = load ptr, ptr %16, align 4
  %98 = getelementptr i8, ptr %97, i32 52
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !26
  %100 = and i32 %99, 3
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %87
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.48) #6
  br label %103

103:                                              ; preds = %102, %87
  %104 = load ptr, ptr %16, align 4
  %105 = getelementptr i8, ptr %104, i32 60
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.36, i32 noundef %106) #6
  %107 = load ptr, ptr %16, align 4
  %108 = getelementptr i8, ptr %107, i32 104
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.37, i32 noundef %109) #6
  %110 = load ptr, ptr %16, align 4
  %111 = getelementptr i8, ptr %110, i32 104
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !29
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %103
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.49) #6
  br label %116

116:                                              ; preds = %115, %103
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.38) #6
  %117 = icmp eq ptr %14, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %116
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.39) #6
  br label %124

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.drm_crtc, ptr %14, i32 0, i32 5
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr i8, ptr %14, i32 -16
  %123 = tail call ptr @sti_mixer_to_str(ptr noundef %122) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %121, ptr noundef %123) #6
  br label %124

124:                                              ; preds = %119, %118
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gdp_node_dbg_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @sti_plane_to_str(ptr noundef %8) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef %9, i32 noundef 0) #6
  %10 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 0
  %11 = load ptr, ptr %10, align 4
  tail call fastcc void @gdp_node_dump_node(ptr noundef %0, ptr noundef %11)
  %12 = tail call ptr @sti_plane_to_str(ptr noundef %8) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef %12, i32 noundef 0) #6
  %13 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call fastcc void @gdp_node_dump_node(ptr noundef %0, ptr noundef %14)
  %15 = tail call ptr @sti_plane_to_str(ptr noundef %8) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef %15, i32 noundef 1) #6
  %16 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call fastcc void @gdp_node_dump_node(ptr noundef %0, ptr noundef %17)
  %18 = tail call ptr @sti_plane_to_str(ptr noundef %8) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef %18, i32 noundef 1) #6
  %19 = getelementptr %struct.sti_gdp, ptr %8, i32 0, i32 8, i32 1, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call fastcc void @gdp_node_dump_node(ptr noundef %0, ptr noundef %20)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gdp_dbg_ctl(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.41) #6
  %3 = and i32 %1, 31
  %4 = load i32, ptr @gdp_format_to_str, align 4
  %5 = icmp eq i32 %4, %3
  br i1 %5, label %6, label %9

6:                                                ; preds = %30, %27, %24, %21, %18, %15, %12, %9, %2
  %7 = phi i32 [ 0, %2 ], [ 1, %9 ], [ 2, %12 ], [ 3, %15 ], [ 4, %18 ], [ 5, %21 ], [ 6, %24 ], [ 7, %27 ], [ 8, %30 ]
  %8 = getelementptr [9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 %7, i32 1
  tail call void @seq_puts(ptr noundef %0, ptr noundef %8) #6
  br label %34

9:                                                ; preds = %2
  %10 = load i32, ptr getelementptr inbounds ([9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 1), align 4
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %6, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr getelementptr inbounds ([9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 2), align 4
  %14 = icmp eq i32 %13, %3
  br i1 %14, label %6, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr getelementptr inbounds ([9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 3), align 4
  %17 = icmp eq i32 %16, %3
  br i1 %17, label %6, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr getelementptr inbounds ([9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 4), align 4
  %20 = icmp eq i32 %19, %3
  br i1 %20, label %6, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr getelementptr inbounds ([9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 5), align 4
  %23 = icmp eq i32 %22, %3
  br i1 %23, label %6, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr getelementptr inbounds ([9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 6), align 4
  %26 = icmp eq i32 %25, %3
  br i1 %26, label %6, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr getelementptr inbounds ([9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 7), align 4
  %29 = icmp eq i32 %28, %3
  br i1 %29, label %6, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr getelementptr inbounds ([9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 8), align 4
  %32 = icmp eq i32 %31, %3
  br i1 %32, label %6, label %33

33:                                               ; preds = %30
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.42) #6
  br label %34

34:                                               ; preds = %33, %6
  %35 = lshr i32 %1, 31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %35) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_mixer_to_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gdp_node_dump_node(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef %1) #6
  %3 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %3) #6
  %4 = load i32, ptr %1, align 4
  tail call fastcc void @gdp_dbg_ctl(ptr noundef %0, i32 noundef %4)
  %5 = getelementptr inbounds %struct.sti_gdp_node, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %6) #6
  %7 = getelementptr inbounds %struct.sti_gdp_node, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %8) #6
  %9 = load i32, ptr %7, align 4
  %10 = and i32 %9, 65535
  %11 = lshr i32 %9, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %10, i32 noundef %11) #6
  %12 = getelementptr inbounds %struct.sti_gdp_node, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef %13) #6
  %14 = load i32, ptr %12, align 4
  %15 = and i32 %14, 65535
  %16 = lshr i32 %14, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %15, i32 noundef %16) #6
  %17 = getelementptr inbounds %struct.sti_gdp_node, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %18) #6
  %19 = getelementptr inbounds %struct.sti_gdp_node, ptr %1, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %20) #6
  %21 = getelementptr inbounds %struct.sti_gdp_node, ptr %1, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef %22) #6
  %23 = load i32, ptr %21, align 4
  %24 = and i32 %23, 65535
  %25 = lshr i32 %23, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %24, i32 noundef %25) #6
  %26 = getelementptr inbounds %struct.sti_gdp_node, ptr %1, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %27) #6
  %28 = getelementptr inbounds %struct.sti_gdp_node, ptr %1, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %29) #6
  %30 = getelementptr inbounds %struct.sti_gdp_node, ptr %1, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %31) #6
  %32 = getelementptr inbounds %struct.sti_gdp_node, ptr %1, i32 0, i32 13
  %33 = load i32, ptr %32, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.63, i32 noundef %33) #6
  %34 = load i32, ptr %32, align 4
  %35 = and i32 %34, 3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.48) #6
  br label %38

38:                                               ; preds = %37, %2
  %39 = getelementptr inbounds %struct.sti_gdp_node, ptr %1, i32 0, i32 15
  %40 = load i32, ptr %39, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.64, i32 noundef %40) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_gdp_atomic_check(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp ne ptr %10, null
  %14 = icmp ne ptr %12, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %93

16:                                               ; preds = %2
  %17 = getelementptr i8, ptr %10, i32 -16
  %18 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %1, ptr noundef nonnull %10) #6
  %19 = getelementptr inbounds %struct.drm_crtc_state, ptr %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.drm_crtc_state, ptr %18, i32 0, i32 8, i32 1
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = sub i32 %28, %21
  %30 = tail call i32 @llvm.umin.i32(i32 %25, i32 %29)
  %31 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.drm_crtc_state, ptr %18, i32 0, i32 8, i32 6
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = sub i32 %35, %23
  %37 = tail call i32 @llvm.umin.i32(i32 %32, i32 %36)
  %38 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 16
  %41 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = lshr i32 %42, 16
  %44 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = lshr i32 %45, 16
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 3840)
  %48 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 10
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %49, 16
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 2160)
  %52 = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 4
  %53 = load ptr, ptr %52, align 8
  %54 = load i32, ptr %53, align 4
  switch i32 %54, label %55 [
    i32 875713112, label %56
    i32 875709016, label %56
    i32 875713089, label %56
    i32 875708993, label %56
    i32 842093121, label %56
    i32 892424769, label %56
    i32 909199186, label %56
    i32 875710290, label %56
  ]

55:                                               ; preds = %16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.71, ptr noundef %53) #6
  br label %93

56:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16
  %57 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %12, i32 noundef 0) #6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.72) #6
  br label %93

60:                                               ; preds = %56
  %61 = load i32, ptr %19, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %85, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.sti_gdp, ptr %0, i32 0, i32 3
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %85, label %67

67:                                               ; preds = %63
  %68 = mul i32 %61, 1000
  %69 = getelementptr i8, ptr %10, i32 -8
  %70 = load i32, ptr %69, align 8
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr inbounds %struct.sti_gdp, ptr %0, i32 0, i32 4
  %73 = getelementptr inbounds %struct.sti_gdp, ptr %0, i32 0, i32 5
  %74 = select i1 %71, ptr %72, ptr %73
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %67
  %78 = tail call i32 @clk_set_parent(ptr noundef nonnull %65, ptr noundef nonnull %75) #6
  %79 = load ptr, ptr %64, align 8
  br label %80

80:                                               ; preds = %77, %67
  %81 = phi ptr [ %79, %77 ], [ %65, %67 ]
  %82 = tail call i32 @clk_set_rate(ptr noundef %81, i32 noundef %68) #6
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.73, i32 noundef %68) #6
  br label %93

85:                                               ; preds = %80, %63, %60
  %86 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = tail call ptr @sti_mixer_to_str(ptr noundef %17) #6
  %89 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %90 = load i32, ptr %89, align 8
  %91 = tail call ptr @sti_plane_to_str(ptr noundef %0) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.74, i32 noundef %87, ptr noundef %88, i32 noundef %90, ptr noundef %91) #6
  %92 = tail call ptr @sti_plane_to_str(ptr noundef %0) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.75, ptr noundef %92, i32 noundef %30, i32 noundef %37, i32 noundef %21, i32 noundef %23, i32 noundef %47, i32 noundef %51, i32 noundef %40, i32 noundef %43) #6
  br label %93

93:                                               ; preds = %85, %84, %59, %55, %2
  %94 = phi i32 [ -22, %55 ], [ 0, %85 ], [ -22, %59 ], [ 0, %2 ], [ -22, %84 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_gdp_atomic_update(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  br i1 %17, label %18, label %302

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %14
  br i1 %21, label %22, label %71

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 8
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 9
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 9
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 11
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 11
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 10
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 10
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.76) #6
  br label %300

71:                                               ; preds = %64, %58, %52, %46, %40, %34, %28, %22, %18
  %72 = getelementptr inbounds %struct.sti_gdp, ptr %0, i32 0, i32 9
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.sti_gdp, ptr %0, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.device, ptr %77, i32 0, i32 8
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr i8, ptr %12, i32 -8
  %81 = load i32, ptr %80, align 8
  %82 = getelementptr %struct.sti_compositor, ptr %79, i32 0, i32 11, i32 %81
  %83 = load ptr, ptr %82, align 4
  store ptr %83, ptr %72, align 4
  %84 = getelementptr inbounds %struct.sti_gdp, ptr %0, i32 0, i32 6
  %85 = tail call i32 @sti_vtg_register_client(ptr noundef %83, ptr noundef %84, ptr noundef nonnull %12) #6
  %86 = getelementptr inbounds %struct.sti_gdp, ptr %0, i32 0, i32 3
  %87 = load ptr, ptr %86, align 8
  %88 = tail call i32 @clk_prepare(ptr noundef %87) #6
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %75
  %91 = tail call i32 @clk_enable(ptr noundef %87) #6
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  tail call void @clk_unprepare(ptr noundef %87) #6
  br label %94

94:                                               ; preds = %93, %90, %75, %71
  %95 = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12
  %96 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 6
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 1
  %103 = load i16, ptr %102, align 4
  %104 = zext i16 %103 to i32
  %105 = sub i32 %104, %97
  %106 = tail call i32 @llvm.umin.i32(i32 %101, i32 %105)
  %107 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 7
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 6
  %110 = load i16, ptr %109, align 2
  %111 = zext i16 %110 to i32
  %112 = sub i32 %111, %99
  %113 = tail call i32 @llvm.umin.i32(i32 %108, i32 %112)
  %114 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 8
  %115 = load i32, ptr %114, align 4
  %116 = lshr i32 %115, 16
  %117 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 9
  %118 = load i32, ptr %117, align 4
  %119 = lshr i32 %118, 16
  %120 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 11
  %121 = load i32, ptr %120, align 4
  %122 = lshr i32 %121, 16
  %123 = tail call i32 @llvm.umin.i32(i32 %122, i32 3840)
  %124 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 10
  %125 = load i32, ptr %124, align 4
  %126 = lshr i32 %125, 16
  %127 = tail call i32 @llvm.umin.i32(i32 %126, i32 2160)
  %128 = getelementptr inbounds %struct.sti_gdp, ptr %0, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr i8, ptr %129, i32 36
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %151, label %133

133:                                              ; preds = %94
  %134 = getelementptr %struct.sti_gdp, ptr %0, i32 0, i32 8, i32 0, i32 3
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %131, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = getelementptr %struct.sti_gdp, ptr %0, i32 0, i32 8, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %131, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %137, %133
  %142 = getelementptr %struct.sti_gdp, ptr %0, i32 0, i32 8, i32 1, i32 3
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %131, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = getelementptr %struct.sti_gdp, ptr %0, i32 0, i32 8, i32 1, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %131, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %145, %141
  %150 = tail call ptr @sti_plane_to_str(ptr noundef %0) #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.79, ptr noundef %150, i32 noundef %131) #6
  br label %151

151:                                              ; preds = %149, %94
  %152 = getelementptr inbounds %struct.sti_gdp, ptr %0, i32 0, i32 8
  br label %156

153:                                              ; preds = %145, %137
  %154 = phi i32 [ 0, %137 ], [ 1, %145 ]
  %155 = getelementptr %struct.sti_gdp, ptr %0, i32 0, i32 8, i32 %154
  br label %156

156:                                              ; preds = %153, %151
  %157 = phi ptr [ %152, %151 ], [ %155, %153 ]
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.sti_gdp_node_list, ptr %157, i32 0, i32 2
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.sti_gdp_node, ptr %158, i32 0, i32 1
  store i32 8421504, ptr %161, align 4
  store i32 -2147483648, ptr %158, align 4
  %162 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 4
  %163 = load ptr, ptr %162, align 8
  %164 = load i32, ptr %163, align 4
  switch i32 %164, label %171 [
    i32 875713112, label %172
    i32 875709016, label %165
    i32 875713089, label %174
    i32 875708993, label %166
    i32 842093121, label %167
    i32 892424769, label %168
    i32 909199186, label %169
    i32 875710290, label %170
  ]

165:                                              ; preds = %156
  br label %172

166:                                              ; preds = %156
  br label %174

167:                                              ; preds = %156
  br label %172

168:                                              ; preds = %156
  br label %172

169:                                              ; preds = %156
  br label %172

170:                                              ; preds = %156
  br label %172

171:                                              ; preds = %156
  br label %172

172:                                              ; preds = %171, %170, %169, %168, %167, %165, %156
  %173 = phi i32 [ -2147483646, %156 ], [ -2139094974, %165 ], [ -2147483641, %167 ], [ -2147483642, %168 ], [ -2147483648, %169 ], [ -2147483647, %170 ], [ -1, %171 ]
  br label %174

174:                                              ; preds = %172, %166, %156
  %175 = phi i32 [ %173, %172 ], [ -2139094971, %166 ], [ -2147483643, %156 ]
  %176 = phi i32 [ 0, %172 ], [ 32, %166 ], [ 32, %156 ]
  %177 = or i32 %176, %175
  store i32 %177, ptr %158, align 4
  %178 = getelementptr inbounds %struct.sti_gdp_node, ptr %158, i32 0, i32 13
  %179 = load i32, ptr %178, align 4
  %180 = and i32 %179, -4
  store i32 %180, ptr %178, align 4
  %181 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %14, i32 noundef 0) #6
  %182 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 2
  %183 = load i32, ptr %182, align 4
  %184 = load ptr, ptr %162, align 8
  %185 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %181, i32 0, i32 1
  %186 = load i32, ptr %185, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef %183, ptr noundef %184, i32 noundef %186) #6
  %187 = load ptr, ptr %162, align 8
  %188 = getelementptr inbounds %struct.drm_format_info, ptr %187, i32 0, i32 3
  %189 = load i8, ptr %188, align 2
  %190 = zext i8 %189 to i32
  %191 = load i32, ptr %185, align 8
  %192 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 7
  %193 = load i32, ptr %192, align 8
  %194 = add i32 %193, %191
  %195 = getelementptr inbounds %struct.sti_gdp_node, ptr %158, i32 0, i32 5
  %196 = mul nuw nsw i32 %116, %190
  %197 = add i32 %194, %196
  store i32 %197, ptr %195, align 4
  %198 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 6
  %199 = load i32, ptr %198, align 8
  %200 = mul i32 %199, %119
  %201 = add i32 %200, %197
  store i32 %201, ptr %195, align 4
  %202 = icmp eq i32 %106, %123
  %203 = tail call i32 @llvm.smin.i32(i32 %106, i32 %123) #6
  %204 = select i1 %202, i32 %106, i32 %203
  %205 = icmp eq i32 %113, %127
  %206 = tail call i32 @llvm.smin.i32(i32 %113, i32 %127) #6
  %207 = select i1 %205, i32 %113, i32 %206
  %208 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %95, i32 noundef %99) #6
  %209 = add i32 %99, -1
  %210 = add i32 %209, %207
  %211 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %95, i32 noundef %210) #6
  %212 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %95, i32 noundef %97) #6
  %213 = add i32 %97, -1
  %214 = add i32 %213, %204
  %215 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %95, i32 noundef %214) #6
  %216 = shl i32 %208, 16
  %217 = or i32 %212, %216
  %218 = getelementptr inbounds %struct.sti_gdp_node, ptr %158, i32 0, i32 3
  store i32 %217, ptr %218, align 4
  %219 = shl i32 %211, 16
  %220 = or i32 %215, %219
  %221 = getelementptr inbounds %struct.sti_gdp_node, ptr %158, i32 0, i32 4
  store i32 %220, ptr %221, align 4
  %222 = load i32, ptr %198, align 8
  %223 = getelementptr inbounds %struct.sti_gdp_node, ptr %158, i32 0, i32 6
  store i32 %222, ptr %223, align 4
  %224 = shl nuw nsw i32 %127, 16
  %225 = or i32 %224, %204
  %226 = getelementptr inbounds %struct.sti_gdp_node, ptr %158, i32 0, i32 7
  store i32 %225, ptr %226, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %160, ptr noundef align 4 dereferenceable(64) %158, i32 64, i1 false)
  %227 = getelementptr inbounds %struct.sti_gdp_node_list, ptr %157, i32 0, i32 3
  %228 = load i32, ptr %227, align 4
  %229 = getelementptr inbounds %struct.sti_gdp_node, ptr %158, i32 0, i32 9
  store i32 %228, ptr %229, align 4
  %230 = getelementptr inbounds %struct.sti_gdp_node_list, ptr %157, i32 0, i32 1
  %231 = load i32, ptr %230, align 4
  %232 = getelementptr inbounds %struct.sti_gdp_node, ptr %160, i32 0, i32 9
  store i32 %231, ptr %232, align 4
  %233 = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 12, i32 11
  %234 = load i32, ptr %233, align 4
  %235 = and i32 %234, 16
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %174
  %238 = load i32, ptr %195, align 4
  %239 = load i32, ptr %198, align 8
  %240 = add i32 %239, %238
  %241 = getelementptr inbounds %struct.sti_gdp_node, ptr %160, i32 0, i32 5
  store i32 %240, ptr %241, align 4
  br label %242

242:                                              ; preds = %237, %174
  %243 = load ptr, ptr %128, align 4
  %244 = getelementptr i8, ptr %243, i32 36
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %244) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !31
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %263, label %247

247:                                              ; preds = %242
  %248 = getelementptr %struct.sti_gdp, ptr %0, i32 0, i32 8, i32 0, i32 3
  %249 = load i32, ptr %248, align 4
  %250 = icmp eq i32 %245, %249
  br i1 %250, label %266, label %251

251:                                              ; preds = %247
  %252 = getelementptr %struct.sti_gdp, ptr %0, i32 0, i32 8, i32 0, i32 1
  %253 = load i32, ptr %252, align 4
  %254 = icmp eq i32 %245, %253
  br i1 %254, label %266, label %255

255:                                              ; preds = %251
  %256 = getelementptr %struct.sti_gdp, ptr %0, i32 0, i32 8, i32 1, i32 3
  %257 = load i32, ptr %256, align 4
  %258 = icmp eq i32 %245, %257
  br i1 %258, label %266, label %259

259:                                              ; preds = %255
  %260 = getelementptr %struct.sti_gdp, ptr %0, i32 0, i32 8, i32 1, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = icmp eq i32 %245, %261
  br i1 %262, label %266, label %263

263:                                              ; preds = %259, %242
  %264 = tail call ptr @sti_plane_to_str(ptr noundef %0) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef %245, ptr noundef %264) #6
  %265 = load i32, ptr %230, align 4
  br label %271

266:                                              ; preds = %259, %255, %251, %247
  %267 = phi i32 [ 0, %251 ], [ 0, %247 ], [ 1, %255 ], [ 1, %259 ]
  %268 = getelementptr %struct.sti_gdp, ptr %0, i32 0, i32 8, i32 %267
  %269 = load i32, ptr %230, align 4
  %270 = icmp eq ptr %268, null
  br i1 %270, label %271, label %281

271:                                              ; preds = %266, %263
  %272 = phi i32 [ %265, %263 ], [ %269, %266 ]
  %273 = load i32, ptr %227, align 4
  %274 = tail call ptr @sti_plane_to_str(ptr noundef %0) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.78, ptr noundef %274) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %275 = getelementptr inbounds %struct.sti_gdp, ptr %0, i32 0, i32 7
  %276 = load i8, ptr %275, align 8, !range !33
  %277 = icmp eq i8 %276, 0
  %278 = select i1 %277, i32 %272, i32 %273
  %279 = load ptr, ptr %128, align 4
  %280 = getelementptr i8, ptr %279, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 %278) #6, !srcloc !34
  br label %299

281:                                              ; preds = %266
  %282 = load i32, ptr %233, align 4
  %283 = and i32 %282, 16
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %296, label %285

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.sti_gdp, ptr %0, i32 0, i32 7
  %287 = load i8, ptr %286, align 8, !range !33
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %293, label %289

289:                                              ; preds = %285
  %290 = getelementptr %struct.sti_gdp, ptr %0, i32 0, i32 8, i32 %267, i32 2
  %291 = load ptr, ptr %290, align 4
  %292 = getelementptr inbounds %struct.sti_gdp_node, ptr %291, i32 0, i32 9
  store i32 %269, ptr %292, align 4
  br label %299

293:                                              ; preds = %285
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %294 = load ptr, ptr %128, align 4
  %295 = getelementptr i8, ptr %294, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %295, i32 %269) #6, !srcloc !34
  br label %299

296:                                              ; preds = %281
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %297 = load ptr, ptr %128, align 4
  %298 = getelementptr i8, ptr %297, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 %269) #6, !srcloc !34
  br label %299

299:                                              ; preds = %296, %293, %289, %271
  tail call void @sti_plane_update_fps(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext false) #6
  br label %300

300:                                              ; preds = %299, %70
  %301 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 2
  store i32 1, ptr %301, align 4
  br label %302

302:                                              ; preds = %300, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_gdp_atomic_disable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef %14) #6
  br label %24

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %10, i32 -16
  %19 = tail call ptr @sti_mixer_to_str(ptr noundef %18) #6
  %20 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = tail call ptr @sti_plane_to_str(ptr noundef %0) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.74, i32 noundef %17, ptr noundef %19, i32 noundef %21, ptr noundef %22) #6
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
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_register_client(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_plane_update_fps(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!9 = !{i64 4977004}
!10 = !{i64 2155263571}
!11 = !{i64 2155263907}
!12 = !{i64 2155264372}
!13 = !{i64 2155264837}
!14 = !{i64 2155265173}
!15 = !{i64 2155269699}
!16 = !{i64 2155270035}
!17 = !{i64 2155270500}
!18 = !{i64 2155270965}
!19 = !{i64 2155271433}
!20 = !{i64 2155271769}
!21 = !{i64 2155272234}
!22 = !{i64 2155272570}
!23 = !{i64 2155273038}
!24 = !{i64 2155273506}
!25 = !{i64 2155273971}
!26 = !{i64 2155274307}
!27 = !{i64 2155274772}
!28 = !{i64 2155275237}
!29 = !{i64 2155275573}
!30 = !{i64 2155280807}
!31 = !{i64 2155281249}
!32 = !{i64 2155449822}
!33 = !{i8 0, i8 2}
!34 = !{i64 4976586}
!35 = !{i64 2155450264}
!36 = !{i64 2155450617}
