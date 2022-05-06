; ModuleID = '/llk/IR/drivers/gpu/drm/rockchip/rockchip_drm_vop.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/rockchip_drm_vop.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rockchip_drm_wait_vact_end:\09\09\09\09\09"
module asm "\09.asciz \09\22rockchip_drm_wait_vact_end\22\09\09\09\09\09"
module asm "__kstrtabns_rockchip_drm_wait_vact_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vop_component_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22vop_component_ops\22\09\09\09\09\09"
module asm "__kstrtabns_vop_component_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.vop = type { %struct.drm_crtc, ptr, ptr, i8, %struct.completion, i32, ptr, %struct.drm_flip_work, i32, %struct.completion, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, [0 x %struct.vop_win] }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_flip_work = type { ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vop_win = type { %struct.drm_plane, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vop_data = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64 }
%struct.vop_intr = type { ptr, i32, [2 x %struct.vop_reg], %struct.vop_reg, %struct.vop_reg, %struct.vop_reg }
%struct.vop_reg = type { i32, i16, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vop_win_data = type { i32, ptr, i32 }
%struct.vop_win_yuv2yuv_data = type { i32, ptr, %struct.vop_reg }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.vop_win_phy = type { ptr, ptr, i32, ptr, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.76, ptr, i32, ptr, i8, i32 }
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
%struct.anon.76 = type { i32, ptr }
%struct.vop_common = type { %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.70, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.70 = type { [4 x i8] }
%struct.rockchip_gem_object = type { %struct.drm_gem_object, i32, ptr, i32, i32, %struct.drm_mm_node, i32, ptr, ptr, i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.vop_afbc = type { %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg }
%struct.vop_scl_regs = type { ptr, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg }
%struct.vop_scl_extension = type { %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.rockchip_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32, i8 }
%struct.vop_output = type { %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg }
%struct.vop_modeset = type { %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"*ERROR* Timeout waiting for IRQ\0A\00", align 1
@__kstrtab_rockchip_drm_wait_vact_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_rockchip_drm_wait_vact_end = external dso_local constant [0 x i8], align 1
@__ksymtab_rockchip_drm_wait_vact_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rockchip_drm_wait_vact_end to i32), ptr @__kstrtab_rockchip_drm_wait_vact_end, ptr @__kstrtabns_rockchip_drm_wait_vact_end }, section "___ksymtab+rockchip_drm_wait_vact_end", align 4
@vop_component_ops = dso_local constant %struct.component_ops { ptr @vop_bind, ptr @vop_unbind }, align 4
@__kstrtab_vop_component_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_vop_component_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_vop_component_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vop_component_ops to i32), ptr @__kstrtab_vop_component_ops, ptr @__kstrtabns_vop_component_ops }, section "___ksymtab_gpl+vop_component_ops", align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"drivers/gpu/drm/rockchip/rockchip_drm_vop.c\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Warning: not support %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"*ERROR* no gamma LUT size defined\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"*ERROR* cannot find irq for vop\0A\00", align 1
@vop_bind.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"&vop->vop_lock\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"*ERROR* cannot initial vop dev - err %d\0A\00", align 1
@vop_plane_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @vop_plane_destroy, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_mod_supported }, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"*ERROR* failed to init plane %d\0A\00", align 1
@plane_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @vop_plane_atomic_check, ptr @vop_plane_atomic_update, ptr @vop_plane_atomic_disable, ptr @vop_plane_atomic_async_check, ptr @vop_plane_atomic_async_update }, align 4
@vop_crtc_funcs = internal constant %struct.drm_crtc_funcs { ptr @vop_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @vop_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @vop_crtc_duplicate_state, ptr @vop_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr @vop_crtc_set_crc_source, ptr @vop_crtc_verify_crc_source, ptr null, ptr null, ptr null, ptr @vop_crtc_enable_vblank, ptr @vop_crtc_disable_vblank, ptr null }, align 4
@vop_crtc_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr @vop_crtc_mode_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vop_crtc_atomic_check, ptr @vop_crtc_atomic_begin, ptr @vop_crtc_atomic_flush, ptr @vop_crtc_atomic_enable, ptr @vop_crtc_atomic_disable, ptr null }, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"*ERROR* failed to init overlay %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"*ERROR* no port node found in %pOF\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"fb_unref\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"Failed to init %s with SR helpers %d, ignoring\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"Unsupported format modifier 0x%llx\0A\00", align 1
@vop_convert_afbc_format.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"\014[drm] unsupported AFBC format[%08x]\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"Invalid Source: Yuv format not support odd xpos\0A\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"Invalid Source: Yuv format does not support this rotation\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"vop does not support AFBC\0A\00", align 1
@.str.21 = private unnamed_addr constant [67 x i8] c"AFBC does not support offset display, xpos=%d, ypos=%d, offset=%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"No rotation support in AFBC, rotation=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"unsupported format[%08x]\0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"hreg_block_split\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"win_sel\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"hdr_ptr\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"pic_size\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"yrgb_vir\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"yrgb_mst\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"y2r_en\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"y_mir_en\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"x_mir_en\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"uv_vir\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"uv_mst\00", align 1
@bt601_yuv2rgb = internal unnamed_addr constant [12 x i32] [i32 1192, i32 0, i32 1634, i32 1192, i32 7791, i32 7359, i32 1192, i32 2066, i32 0, i32 3281256, i32 554959, i32 3060007], align 4
@.str.36 = private unnamed_addr constant [20 x i8] c"y2r_coefficients[i]\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"act_info\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"dsp_info\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"dsp_st\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"rb_swap\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"dst_alpha_ctl\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"src_alpha_ctl\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"alpha_pre_mul\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"alpha_mode\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"alpha_en\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"*ERROR* Maximum dst width (3840) exceeded\0A\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"scale_yrgb_x\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"scale_yrgb_y\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"scale_cbcr_x\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"scale_cbcr_y\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"lb_mode\00", align 1
@.str.52 = private unnamed_addr constant [34 x i8] c"*ERROR* not allow yrgb ver scale\0A\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"*ERROR* not allow cbcr ver scale\0A\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"vsd_yrgb_gt4\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"vsd_yrgb_gt2\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"yrgb_hor_scl_mode\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"yrgb_ver_scl_mode\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"yrgb_hsd_mode\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"yrgb_vsd_mode\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"yrgb_vsu_mode\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"vsd_cbcr_gt4\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"vsd_cbcr_gt2\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"cbcr_hor_scl_mode\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"cbcr_ver_scl_mode\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"cbcr_hsd_mode\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"cbcr_vsd_mode\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"cbcr_vsu_mode\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"cfg_done\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.69 = private unnamed_addr constant [39 x i8] c"Invalid LUT size; got %d, expected %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [37 x i8] c"Cannot get plane state for plane %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [59 x i8] c"Invalid number of AFBC planes; got %d, expected at most 1\0A\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"dsp_lut_en\00", align 1
@.str.73 = private unnamed_addr constant [41 x i8] c"*ERROR* display LUT RAM enable timeout!\0A\00", align 1
@.str.74 = private unnamed_addr constant [40 x i8] c"*ERROR* VOP vblank IRQ stuck for 10 ms\0A\00", align 1
@.str.75 = private unnamed_addr constant [35 x i8] c"*ERROR* Failed to enable vop (%d)\0A\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"pin_pol\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"mipi_dual_channel_en\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"rgb_dclk_pol\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"rgb_pin_pol\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"rgb_en\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"edp_dclk_pol\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"edp_pin_pol\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"edp_en\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"hdmi_dclk_pol\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"hdmi_pin_pol\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"hdmi_en\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"mipi_dclk_pol\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"mipi_pin_pol\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"mipi_en\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"dp_dclk_pol\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"dp_pin_pol\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"dp_en\00", align 1
@.str.93 = private unnamed_addr constant [41 x i8] c"*ERROR* unsupported connector_type [%d]\0A\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"pre_dither_down\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"dither_down_sel\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"dither_down_mode\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"dither_down_en\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"out_mode\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"htotal_pw\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"hact_st_end\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"hpost_st_end\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"vtotal_pw\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"vact_st_end\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"vpost_st_end\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"line_flag_num[0]\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@.str.107 = private unnamed_addr constant [38 x i8] c"*ERROR* failed to get pm runtime: %d\0A\00", align 1
@.str.108 = private unnamed_addr constant [42 x i8] c"*ERROR* failed to attach dma mapping, %d\0A\00", align 1
@.str.109 = private unnamed_addr constant [35 x i8] c"%s: timed out waiting for DSP hold\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"hclk_vop\00", align 1
@.str.112 = private unnamed_addr constant [35 x i8] c"*ERROR* failed to get hclk source\0A\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"aclk_vop\00", align 1
@.str.114 = private unnamed_addr constant [35 x i8] c"*ERROR* failed to get aclk source\0A\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"dclk_vop\00", align 1
@.str.116 = private unnamed_addr constant [35 x i8] c"*ERROR* failed to get dclk source\0A\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"*ERROR* failed to prepare dclk\0A\00", align 1
@.str.118 = private unnamed_addr constant [39 x i8] c"*ERROR* failed to prepare/enable hclk\0A\00", align 1
@.str.119 = private unnamed_addr constant [39 x i8] c"*ERROR* failed to prepare/enable aclk\0A\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.121 = private unnamed_addr constant [33 x i8] c"*ERROR* failed to get ahb reset\0A\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"global_regdone_en\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"dsp_blank\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"gate\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"dclk\00", align 1
@.str.127 = private unnamed_addr constant [34 x i8] c"*ERROR* failed to get dclk reset\0A\00", align 1
@vop_isr._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.vop_isr = private unnamed_addr constant [8 x i8] c"vop_isr\00", align 1
@.str.128 = private unnamed_addr constant [32 x i8] c"*ERROR* couldn't enable clocks\0A\00", align 1
@.str.129 = private unnamed_addr constant [33 x i8] c"*ERROR* Unknown VOP IRQs: %#02x\0A\00", align 1
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_rockchip_drm_wait_vact_end, ptr @__ksymtab_vop_component_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rockchip_drm_wait_vact_end(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %289, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 8, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %289, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %9) #7
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %287, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 16
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #7
  %14 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vop_data, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.vop_intr, ptr %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.vop_intr, ptr %17, i32 0, i32 3, i32 1
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %21
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %26 = getelementptr inbounds %struct.vop_intr, ptr %17, i32 0, i32 3, i32 2
  %27 = load i8, ptr %26, align 2
  %28 = zext i8 %27 to i32
  %29 = lshr i32 %25, %28
  %30 = load i32, ptr %18, align 4
  %31 = and i32 %29, %30
  %32 = load ptr, ptr %14, align 4
  %33 = getelementptr inbounds %struct.vop_data, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.vop_intr, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #7
  br label %60

39:                                               ; preds = %11
  %40 = load ptr, ptr %34, align 4
  br label %41

41:                                               ; preds = %54, %39
  %42 = phi i32 [ 0, %39 ], [ %55, %54 ]
  %43 = phi i32 [ 0, %39 ], [ %56, %54 ]
  %44 = getelementptr i32, ptr %40, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %41
  %49 = shl nuw i32 1, %43
  %50 = and i32 %31, %49
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 0, i32 %45
  %53 = or i32 %52, %42
  br label %54

54:                                               ; preds = %48, %41
  %55 = phi i32 [ %42, %41 ], [ %53, %48 ]
  %56 = add nuw i32 %43, 1
  %57 = icmp eq i32 %56, %36
  br i1 %57, label %58, label %41

58:                                               ; preds = %54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #7
  %59 = icmp eq i32 %55, 0
  br i1 %59, label %60, label %287

60:                                               ; preds = %58, %38
  %61 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 9
  store i32 0, ptr %61, align 4
  %62 = load i8, ptr %5, align 8, !range !8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %65, !prof !11

64:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 521, i32 noundef 9, ptr noundef null) #7
  br label %211

65:                                               ; preds = %60
  %66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #7
  %67 = load ptr, ptr %14, align 4
  %68 = getelementptr inbounds %struct.vop_data, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.vop_intr, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %65
  %74 = load ptr, ptr %69, align 4
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i32 [ 0, %73 ], [ %86, %75 ]
  %77 = phi i32 [ 0, %73 ], [ %85, %75 ]
  %78 = phi i32 [ 0, %73 ], [ %87, %75 ]
  %79 = getelementptr i32, ptr %74, i32 %78
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 4
  %82 = icmp eq i32 %81, 0
  %83 = shl nuw i32 1, %78
  %84 = select i1 %82, i32 0, i32 %83
  %85 = or i32 %84, %77
  %86 = or i32 %84, %76
  %87 = add nuw i32 %78, 1
  %88 = icmp eq i32 %87, %71
  br i1 %88, label %89, label %75

89:                                               ; preds = %75, %65
  %90 = phi i32 [ 0, %65 ], [ %85, %75 ]
  %91 = phi i32 [ 0, %65 ], [ %86, %75 ]
  %92 = getelementptr inbounds %struct.vop_intr, ptr %69, i32 0, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %97, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #7
  br label %138

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.vop_intr, ptr %69, i32 0, i32 4, i32 1
  %100 = load i16, ptr %99, align 4
  %101 = zext i16 %100 to i32
  %102 = and i32 %93, %91
  %103 = getelementptr inbounds %struct.vop_intr, ptr %69, i32 0, i32 4, i32 2
  %104 = load i8, ptr %103, align 2
  %105 = zext i8 %104 to i32
  %106 = getelementptr inbounds %struct.vop_intr, ptr %69, i32 0, i32 4, i32 3
  %107 = load i8, ptr %106, align 1, !range !8
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %98
  %110 = shl i32 %90, %105
  %111 = and i32 %110, 65535
  %112 = add nuw nsw i32 %105, 16
  %113 = shl i32 %102, %112
  %114 = or i32 %111, %113
  br label %127

115:                                              ; preds = %98
  %116 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %117 = load ptr, ptr %116, align 8
  %118 = lshr i32 %101, 2
  %119 = getelementptr i32, ptr %117, i32 %118
  %120 = load i32, ptr %119, align 4
  %121 = shl i32 %102, %105
  %122 = xor i32 %121, -1
  %123 = and i32 %120, %122
  %124 = and i32 %102, %90
  %125 = shl i32 %124, %105
  %126 = or i32 %123, %125
  store i32 %126, ptr %119, align 4
  br label %127

127:                                              ; preds = %115, %109
  %128 = phi i32 [ %114, %109 ], [ %126, %115 ]
  %129 = getelementptr inbounds %struct.vop_intr, ptr %69, i32 0, i32 4, i32 4
  %130 = load i8, ptr %129, align 4, !range !8
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = load ptr, ptr %22, align 4
  %134 = getelementptr i8, ptr %133, i32 %101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %128) #7, !srcloc !12
  br label %138

135:                                              ; preds = %127
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %136 = load ptr, ptr %22, align 4
  %137 = getelementptr i8, ptr %136, i32 %101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %128) #7, !srcloc !12
  br label %138

138:                                              ; preds = %135, %132, %95
  %139 = load ptr, ptr %14, align 4
  %140 = getelementptr inbounds %struct.vop_data, ptr %139, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.vop_intr, ptr %141, i32 0, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %161, label %145

145:                                              ; preds = %138
  %146 = load ptr, ptr %141, align 4
  br label %147

147:                                              ; preds = %147, %145
  %148 = phi i32 [ 0, %145 ], [ %158, %147 ]
  %149 = phi i32 [ 0, %145 ], [ %157, %147 ]
  %150 = phi i32 [ 0, %145 ], [ %159, %147 ]
  %151 = getelementptr i32, ptr %146, i32 %150
  %152 = load i32, ptr %151, align 4
  %153 = and i32 %152, 4
  %154 = icmp eq i32 %153, 0
  %155 = shl nuw i32 1, %150
  %156 = select i1 %154, i32 0, i32 %155
  %157 = or i32 %156, %149
  %158 = or i32 %156, %148
  %159 = add nuw i32 %150, 1
  %160 = icmp eq i32 %159, %143
  br i1 %160, label %161, label %147

161:                                              ; preds = %147, %138
  %162 = phi i32 [ 0, %138 ], [ %157, %147 ]
  %163 = phi i32 [ 0, %138 ], [ %158, %147 ]
  %164 = getelementptr inbounds %struct.vop_intr, ptr %141, i32 0, i32 3
  %165 = load i32, ptr %164, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %169 = load ptr, ptr %168, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %169, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #7
  br label %210

170:                                              ; preds = %161
  %171 = getelementptr inbounds %struct.vop_intr, ptr %141, i32 0, i32 3, i32 1
  %172 = load i16, ptr %171, align 4
  %173 = zext i16 %172 to i32
  %174 = and i32 %165, %163
  %175 = getelementptr inbounds %struct.vop_intr, ptr %141, i32 0, i32 3, i32 2
  %176 = load i8, ptr %175, align 2
  %177 = zext i8 %176 to i32
  %178 = getelementptr inbounds %struct.vop_intr, ptr %141, i32 0, i32 3, i32 3
  %179 = load i8, ptr %178, align 1, !range !8
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %170
  %182 = shl i32 %162, %177
  %183 = and i32 %182, 65535
  %184 = add nuw nsw i32 %177, 16
  %185 = shl i32 %174, %184
  %186 = or i32 %183, %185
  br label %199

187:                                              ; preds = %170
  %188 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %189 = load ptr, ptr %188, align 8
  %190 = lshr i32 %173, 2
  %191 = getelementptr i32, ptr %189, i32 %190
  %192 = load i32, ptr %191, align 4
  %193 = shl i32 %174, %177
  %194 = xor i32 %193, -1
  %195 = and i32 %192, %194
  %196 = and i32 %174, %162
  %197 = shl i32 %196, %177
  %198 = or i32 %195, %197
  store i32 %198, ptr %191, align 4
  br label %199

199:                                              ; preds = %187, %181
  %200 = phi i32 [ %186, %181 ], [ %198, %187 ]
  %201 = getelementptr inbounds %struct.vop_intr, ptr %141, i32 0, i32 3, i32 4
  %202 = load i8, ptr %201, align 4, !range !8
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %199
  %205 = load ptr, ptr %22, align 4
  %206 = getelementptr i8, ptr %205, i32 %173
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %200) #7, !srcloc !12
  br label %210

207:                                              ; preds = %199
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %208 = load ptr, ptr %22, align 4
  %209 = getelementptr i8, ptr %208, i32 %173
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %200) #7, !srcloc !12
  br label %210

210:                                              ; preds = %207, %204, %167
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %66) #7
  br label %211

211:                                              ; preds = %210, %64
  %212 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #7
  %213 = tail call i32 @wait_for_completion_timeout(ptr noundef %61, i32 noundef %212) #7
  %214 = load i8, ptr %5, align 8, !range !8
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %216, label %217, !prof !11

216:                                              ; preds = %211
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 536, i32 noundef 9, ptr noundef null) #7
  br label %282

217:                                              ; preds = %211
  %218 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #7
  %219 = load ptr, ptr %14, align 4
  %220 = getelementptr inbounds %struct.vop_data, ptr %219, i32 0, i32 1
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.vop_intr, ptr %221, i32 0, i32 1
  %223 = load i32, ptr %222, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %239, label %225

225:                                              ; preds = %217
  %226 = load ptr, ptr %221, align 4
  br label %227

227:                                              ; preds = %227, %225
  %228 = phi i32 [ 0, %225 ], [ %236, %227 ]
  %229 = phi i32 [ 0, %225 ], [ %237, %227 ]
  %230 = getelementptr i32, ptr %226, i32 %229
  %231 = load i32, ptr %230, align 4
  %232 = and i32 %231, 4
  %233 = icmp eq i32 %232, 0
  %234 = shl nuw i32 1, %229
  %235 = select i1 %233, i32 0, i32 %234
  %236 = or i32 %235, %228
  %237 = add nuw i32 %229, 1
  %238 = icmp eq i32 %237, %223
  br i1 %238, label %239, label %227

239:                                              ; preds = %227, %217
  %240 = phi i32 [ 0, %217 ], [ %236, %227 ]
  %241 = getelementptr inbounds %struct.vop_intr, ptr %221, i32 0, i32 3
  %242 = load i32, ptr %241, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %246 = load ptr, ptr %245, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %246, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #7
  br label %281

247:                                              ; preds = %239
  %248 = getelementptr inbounds %struct.vop_intr, ptr %221, i32 0, i32 3, i32 1
  %249 = load i16, ptr %248, align 4
  %250 = zext i16 %249 to i32
  %251 = and i32 %242, %240
  %252 = getelementptr inbounds %struct.vop_intr, ptr %221, i32 0, i32 3, i32 2
  %253 = load i8, ptr %252, align 2
  %254 = zext i8 %253 to i32
  %255 = getelementptr inbounds %struct.vop_intr, ptr %221, i32 0, i32 3, i32 3
  %256 = load i8, ptr %255, align 1, !range !8
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %247
  %259 = add nuw nsw i32 %254, 16
  %260 = shl i32 %251, %259
  br label %270

261:                                              ; preds = %247
  %262 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %263 = load ptr, ptr %262, align 8
  %264 = lshr i32 %250, 2
  %265 = getelementptr i32, ptr %263, i32 %264
  %266 = load i32, ptr %265, align 4
  %267 = shl i32 %251, %254
  %268 = xor i32 %267, -1
  %269 = and i32 %266, %268
  store i32 %269, ptr %265, align 4
  br label %270

270:                                              ; preds = %261, %258
  %271 = phi i32 [ %260, %258 ], [ %269, %261 ]
  %272 = getelementptr inbounds %struct.vop_intr, ptr %221, i32 0, i32 3, i32 4
  %273 = load i8, ptr %272, align 4, !range !8
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %270
  %276 = load ptr, ptr %22, align 4
  %277 = getelementptr i8, ptr %276, i32 %250
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %277, i32 %271) #7, !srcloc !12
  br label %281

278:                                              ; preds = %270
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %279 = load ptr, ptr %22, align 4
  %280 = getelementptr i8, ptr %279, i32 %250
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 %271) #7, !srcloc !12
  br label %281

281:                                              ; preds = %278, %275, %244
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %218) #7
  br label %282

282:                                              ; preds = %281, %216
  %283 = icmp eq i32 %213, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %282
  %285 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %286 = load ptr, ptr %285, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %286, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %287

287:                                              ; preds = %284, %282, %58, %8
  %288 = phi i32 [ -110, %284 ], [ 0, %282 ], [ -22, %8 ], [ -16, %58 ]
  tail call void @mutex_unlock(ptr noundef %9) #7
  br label %289

289:                                              ; preds = %287, %4, %2
  %290 = phi i32 [ %288, %287 ], [ -19, %4 ], [ -19, %2 ]
  ret i32 %290
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vop_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = tail call ptr @of_device_get_match_data(ptr noundef %0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %265, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.vop_data, ptr %5, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 472) #7
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %13 = tail call i32 @llvm.uadd.sat.i32(i32 %12, i32 928) #7
  %14 = select i1 %11, i32 -1, i32 %13
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %14, i32 noundef 3520) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %265, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 1
  store ptr %0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 10
  store ptr %5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 2
  store ptr %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %15, ptr %21, align 8
  %22 = load i32, ptr %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.vop_data, ptr %5, i32 0, i32 8
  %26 = getelementptr inbounds %struct.vop_data, ptr %5, i32 0, i32 7
  br label %27

27:                                               ; preds = %38, %24
  %28 = phi i32 [ 0, %24 ], [ %39, %38 ]
  %29 = load ptr, ptr %25, align 8
  %30 = getelementptr %struct.vop_win_data, ptr %29, i32 %28
  %31 = getelementptr %struct.vop, ptr %15, i32 0, i32 24, i32 %28, i32 1
  store ptr %30, ptr %31, align 8
  %32 = getelementptr %struct.vop, ptr %15, i32 0, i32 24, i32 %28, i32 3
  store ptr %15, ptr %32, align 8
  %33 = load ptr, ptr %26, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = getelementptr %struct.vop_win_yuv2yuv_data, ptr %33, i32 %28
  %37 = getelementptr %struct.vop, ptr %15, i32 0, i32 24, i32 %28, i32 2
  store ptr %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %35, %27
  %39 = add nuw i32 %28, 1
  %40 = load i32, ptr %8, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %27, label %42

42:                                               ; preds = %38, %17
  %43 = tail call ptr @platform_get_resource(ptr noundef %4, i32 noundef 512, i32 noundef 0) #7
  %44 = getelementptr inbounds %struct.resource, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %43, align 4
  %47 = add i32 %45, 1
  %48 = sub i32 %47, %46
  %49 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 14
  store i32 %48, ptr %49, align 4
  %50 = tail call ptr @devm_ioremap_resource(ptr noundef %0, ptr noundef %43) #7
  %51 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 12
  store ptr %50, ptr %51, align 4
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = ptrtoint ptr %50 to i32
  br label %265

55:                                               ; preds = %42
  %56 = tail call ptr @platform_get_resource(ptr noundef %4, i32 noundef 512, i32 noundef 1) #7
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.vop_data, ptr %5, i32 0, i32 10
  %60 = load i32, ptr %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #7
  br label %265

63:                                               ; preds = %58
  %64 = tail call ptr @devm_ioremap_resource(ptr noundef %0, ptr noundef nonnull %56) #7
  %65 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 13
  store ptr %64, ptr %65, align 8
  %66 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = ptrtoint ptr %64 to i32
  br label %265

69:                                               ; preds = %63, %55
  %70 = load i32, ptr %49, align 4
  %71 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %70, i32 noundef 3520) #7
  %72 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 11
  store ptr %71, ptr %72, align 8
  %73 = icmp eq ptr %71, null
  br i1 %73, label %265, label %74

74:                                               ; preds = %69
  %75 = tail call i32 @platform_get_irq(ptr noundef %4, i32 noundef 0) #7
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #7
  br label %265

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 18
  store i32 %75, ptr %79, align 4
  %80 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 15
  store i32 0, ptr %80, align 8
  %81 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 16
  store i32 0, ptr %81, align 4
  %82 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %82, ptr noundef nonnull @.str.8, ptr noundef nonnull @vop_bind.__key) #7
  %83 = load ptr, ptr %19, align 4
  %84 = load ptr, ptr %18, align 8
  %85 = load ptr, ptr %20, align 4
  %86 = getelementptr inbounds %struct.vop_data, ptr %83, i32 0, i32 9
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %141, label %89

89:                                               ; preds = %135, %78
  %90 = phi ptr [ %137, %135 ], [ null, %78 ]
  %91 = phi ptr [ %136, %135 ], [ null, %78 ]
  %92 = phi i32 [ %138, %135 ], [ 0, %78 ]
  %93 = getelementptr %struct.vop, ptr %15, i32 0, i32 24, i32 %92
  %94 = getelementptr %struct.vop, ptr %15, i32 0, i32 24, i32 %92, i32 1
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.vop_win_data, ptr %95, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %97, -1
  %99 = icmp ult i32 %98, 2
  br i1 %99, label %100, label %135

100:                                              ; preds = %89
  %101 = load ptr, ptr %20, align 4
  %102 = getelementptr inbounds %struct.vop_win_data, ptr %95, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.vop_win_phy, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.vop_win_phy, ptr %103, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.vop_win_phy, ptr %103, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %101, ptr noundef %93, i32 noundef 0, ptr noundef nonnull @vop_plane_funcs, ptr noundef %105, i32 noundef %107, ptr noundef %109, i32 noundef %97, ptr noundef null) #7
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %100
  %113 = getelementptr inbounds %struct.drm_plane, ptr %93, i32 0, i32 18
  store ptr @plane_helper_funcs, ptr %113, align 8
  %114 = load ptr, ptr %102, align 4
  %115 = getelementptr inbounds %struct.vop_win_phy, ptr %114, i32 0, i32 16
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, i32 0, i32 16
  %119 = getelementptr inbounds %struct.vop_win_phy, ptr %114, i32 0, i32 15
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, i32 0, i32 32
  %123 = or i32 %122, %118
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %112
  %126 = or i32 %123, 1
  %127 = tail call i32 @drm_plane_create_rotation_property(ptr noundef %93, i32 noundef 1, i32 noundef %126) #7
  br label %128

128:                                              ; preds = %125, %112
  %129 = getelementptr inbounds %struct.drm_plane, ptr %93, i32 0, i32 16
  %130 = load i32, ptr %129, align 8
  switch i32 %130, label %132 [
    i32 1, label %135
    i32 2, label %131
  ]

131:                                              ; preds = %128
  br label %135

132:                                              ; preds = %128
  br label %135

133:                                              ; preds = %100
  %134 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %134, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, i32 noundef %110) #7
  br label %228

135:                                              ; preds = %132, %131, %128, %89
  %136 = phi ptr [ %91, %132 ], [ %91, %128 ], [ %93, %131 ], [ %91, %89 ]
  %137 = phi ptr [ %90, %132 ], [ %93, %128 ], [ %90, %131 ], [ %90, %89 ]
  %138 = add nuw i32 %92, 1
  %139 = load i32, ptr %86, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %89, label %141

141:                                              ; preds = %135, %78
  %142 = phi ptr [ null, %78 ], [ %136, %135 ]
  %143 = phi ptr [ null, %78 ], [ %137, %135 ]
  %144 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %85, ptr noundef %15, ptr noundef %143, ptr noundef %142, ptr noundef nonnull @vop_crtc_funcs, ptr noundef null) #7
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %228

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 19
  store ptr @vop_crtc_helper_funcs, ptr %147, align 4
  %148 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 13
  %149 = load ptr, ptr %148, align 8
  %150 = icmp eq ptr %149, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.vop_data, ptr %83, i32 0, i32 10
  %153 = load i32, ptr %152, align 8
  %154 = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef %15, i32 noundef %153) #7
  %155 = load i32, ptr %152, align 8
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef %15, i32 noundef 0, i1 noundef zeroext false, i32 noundef %155) #7
  br label %156

156:                                              ; preds = %151, %146
  %157 = load i32, ptr %86, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %205, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 8
  br label %161

161:                                              ; preds = %201, %159
  %162 = phi i32 [ 0, %159 ], [ %202, %201 ]
  %163 = getelementptr %struct.vop, ptr %15, i32 0, i32 24, i32 %162
  %164 = getelementptr %struct.vop, ptr %15, i32 0, i32 24, i32 %162, i32 1
  %165 = load ptr, ptr %164, align 8
  %166 = getelementptr inbounds %struct.vop_win_data, ptr %165, i32 0, i32 2
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %201

169:                                              ; preds = %161
  %170 = load i32, ptr %160, align 8
  %171 = shl nuw i32 1, %170
  %172 = load ptr, ptr %20, align 4
  %173 = getelementptr inbounds %struct.vop_win_data, ptr %165, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.vop_win_phy, ptr %174, i32 0, i32 1
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.vop_win_phy, ptr %174, i32 0, i32 2
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr inbounds %struct.vop_win_phy, ptr %174, i32 0, i32 3
  %180 = load ptr, ptr %179, align 4
  %181 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %172, ptr noundef %163, i32 noundef %171, ptr noundef nonnull @vop_plane_funcs, ptr noundef %176, i32 noundef %178, ptr noundef %180, i32 noundef 0, ptr noundef null) #7
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %199

183:                                              ; preds = %169
  %184 = getelementptr inbounds %struct.drm_plane, ptr %163, i32 0, i32 18
  store ptr @plane_helper_funcs, ptr %184, align 8
  %185 = load ptr, ptr %173, align 4
  %186 = getelementptr inbounds %struct.vop_win_phy, ptr %185, i32 0, i32 16
  %187 = load i32, ptr %186, align 4
  %188 = icmp eq i32 %187, 0
  %189 = select i1 %188, i32 0, i32 16
  %190 = getelementptr inbounds %struct.vop_win_phy, ptr %185, i32 0, i32 15
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, 0
  %193 = select i1 %192, i32 0, i32 32
  %194 = or i32 %193, %189
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %183
  %197 = or i32 %194, 1
  %198 = tail call i32 @drm_plane_create_rotation_property(ptr noundef %163, i32 noundef 1, i32 noundef %197) #7
  br label %201

199:                                              ; preds = %169
  %200 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %200, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %181) #7
  br label %226

201:                                              ; preds = %196, %183, %161
  %202 = add nuw i32 %162, 1
  %203 = load i32, ptr %86, align 4
  %204 = icmp ult i32 %202, %203
  br i1 %204, label %161, label %205

205:                                              ; preds = %201, %156
  %206 = getelementptr inbounds %struct.device, ptr %84, i32 0, i32 25
  %207 = load ptr, ptr %206, align 8
  %208 = tail call ptr @of_get_child_by_name(ptr noundef %207, ptr noundef nonnull @.str.12) #7
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load ptr, ptr %18, align 8
  %212 = load ptr, ptr %206, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %211, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, ptr noundef %212) #7
  br label %226

213:                                              ; preds = %205
  %214 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 7
  tail call void @drm_flip_work_init(ptr noundef %214, ptr noundef nonnull @.str.14, ptr noundef nonnull @vop_fb_unref_worker) #7
  %215 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 4
  store i32 0, ptr %215, align 4
  %216 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %216, ptr noundef nonnull @.str.110, ptr noundef nonnull @init_completion.__key) #7
  %217 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 9
  store i32 0, ptr %217, align 4
  %218 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %218, ptr noundef nonnull @.str.110, ptr noundef nonnull @init_completion.__key) #7
  %219 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 1
  store ptr %208, ptr %219, align 4
  %220 = tail call i32 @drm_self_refresh_helper_init(ptr noundef %15) #7
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %240, label %222

222:                                              ; preds = %213
  %223 = load ptr, ptr %18, align 8
  %224 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 3
  %225 = load ptr, ptr %224, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %223, i32 noundef 4, ptr noundef nonnull @.str.15, ptr noundef %225, i32 noundef %220) #7
  br label %240

226:                                              ; preds = %210, %199
  %227 = phi i32 [ %181, %199 ], [ -2, %210 ]
  tail call void @drm_crtc_cleanup(ptr noundef %15) #7
  br label %228

228:                                              ; preds = %226, %141, %133
  %229 = phi i32 [ %110, %133 ], [ %144, %141 ], [ %227, %226 ]
  %230 = getelementptr inbounds %struct.drm_device, ptr %85, i32 0, i32 30, i32 18
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, %230
  br i1 %232, label %265, label %233

233:                                              ; preds = %233, %228
  %234 = phi ptr [ %236, %233 ], [ %231, %228 ]
  %235 = getelementptr i8, ptr %234, i32 -4
  %236 = load ptr, ptr %234, align 4
  tail call void @drm_plane_cleanup(ptr noundef %235) #7
  %237 = icmp eq ptr %236, %230
  br i1 %237, label %238, label %233

238:                                              ; preds = %233
  %239 = icmp eq i32 %229, 0
  br i1 %239, label %240, label %265

240:                                              ; preds = %238, %222, %213
  tail call void @pm_runtime_enable(ptr noundef %0) #7
  %241 = tail call fastcc i32 @vop_initial(ptr noundef nonnull %15)
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef %241) #7
  br label %263

244:                                              ; preds = %240
  %245 = load i32, ptr %79, align 4
  %246 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %247 = load ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %251

249:                                              ; preds = %244
  %250 = load ptr, ptr %0, align 4
  br label %251

251:                                              ; preds = %249, %244
  %252 = phi ptr [ %250, %249 ], [ %247, %244 ]
  %253 = tail call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %245, ptr noundef nonnull @vop_isr, ptr noundef null, i32 noundef 128, ptr noundef %252, ptr noundef %15) #7
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %251
  %256 = load ptr, ptr %19, align 4
  %257 = getelementptr inbounds %struct.vop_data, ptr %256, i32 0, i32 11
  %258 = load i64, ptr %257, align 8
  %259 = and i64 %258, 2
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %255
  %262 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 23
  store ptr null, ptr %262, align 8
  br label %265

263:                                              ; preds = %251, %243
  %264 = phi i32 [ %241, %243 ], [ %253, %251 ]
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #7
  tail call fastcc void @vop_destroy_crtc(ptr noundef nonnull %15)
  br label %265

265:                                              ; preds = %263, %261, %255, %238, %228, %77, %69, %67, %62, %53, %7, %3
  %266 = phi i32 [ %54, %53 ], [ %68, %67 ], [ %75, %77 ], [ %264, %263 ], [ -22, %62 ], [ -19, %3 ], [ -12, %7 ], [ -12, %69 ], [ %229, %238 ], [ 0, %261 ], [ 0, %255 ], [ %229, %228 ]
  ret i32 %266
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vop_unbind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #7
  %6 = getelementptr inbounds %struct.vop, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @drm_self_refresh_helper_cleanup(ptr noundef %5) #7
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @of_node_put(ptr noundef %9) #7
  %10 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 18
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %18, label %13

13:                                               ; preds = %13, %3
  %14 = phi ptr [ %16, %13 ], [ %11, %3 ]
  %15 = getelementptr i8, ptr %14, i32 -4
  %16 = load ptr, ptr %14, align 4
  tail call void @drm_plane_cleanup(ptr noundef %15) #7
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %18, label %13

18:                                               ; preds = %13, %3
  tail call void @drm_crtc_cleanup(ptr noundef %5) #7
  %19 = getelementptr inbounds %struct.vop, ptr %5, i32 0, i32 7
  tail call void @drm_flip_work_cleanup(ptr noundef %19) #7
  %20 = getelementptr inbounds %struct.vop, ptr %5, i32 0, i32 21
  %21 = load ptr, ptr %20, align 8
  tail call void @clk_unprepare(ptr noundef %21) #7
  %22 = getelementptr inbounds %struct.vop, ptr %5, i32 0, i32 19
  %23 = load ptr, ptr %22, align 8
  tail call void @clk_unprepare(ptr noundef %23) #7
  %24 = getelementptr inbounds %struct.vop, ptr %5, i32 0, i32 20
  %25 = load ptr, ptr %24, align 4
  tail call void @clk_unprepare(ptr noundef %25) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vop_reg_set(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = icmp eq ptr %1, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = load i32, ptr %1, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %6
  %12 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %13, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %5) #7
  br label %57

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.vop_reg, ptr %1, i32 0, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = add i32 %17, %2
  %19 = and i32 %9, %3
  %20 = getelementptr inbounds %struct.vop_reg, ptr %1, i32 0, i32 2
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.vop_reg, ptr %1, i32 0, i32 3
  %24 = load i8, ptr %23, align 1, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %14
  %27 = shl i32 %4, %22
  %28 = and i32 %27, 65535
  %29 = add nuw nsw i32 %22, 16
  %30 = shl i32 %19, %29
  %31 = or i32 %28, %30
  br label %44

32:                                               ; preds = %14
  %33 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %34 = load ptr, ptr %33, align 8
  %35 = ashr i32 %18, 2
  %36 = getelementptr i32, ptr %34, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = shl i32 %19, %22
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = and i32 %19, %4
  %42 = shl i32 %41, %22
  %43 = or i32 %40, %42
  store i32 %43, ptr %36, align 4
  br label %44

44:                                               ; preds = %32, %26
  %45 = phi i32 [ %31, %26 ], [ %43, %32 ]
  %46 = getelementptr inbounds %struct.vop_reg, ptr %1, i32 0, i32 4
  %47 = load i8, ptr %46, align 4, !range !8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %45) #7, !srcloc !12
  br label %57

53:                                               ; preds = %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %54 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %45) #7, !srcloc !12
  br label %57

57:                                               ; preds = %53, %49, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vop_initial(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.111) #7
  %5 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 19
  store ptr %4, ptr %5, align 8
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = load ptr, ptr %2, align 8
  br i1 %6, label %8, label %11

8:                                                ; preds = %1
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.112) #7
  %9 = load ptr, ptr %5, align 8
  %10 = ptrtoint ptr %9 to i32
  br label %300

11:                                               ; preds = %1
  %12 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.113) #7
  %13 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 21
  store ptr %12, ptr %13, align 8
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %15 = load ptr, ptr %2, align 8
  br i1 %14, label %16, label %19

16:                                               ; preds = %11
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.114) #7
  %17 = load ptr, ptr %13, align 8
  %18 = ptrtoint ptr %17 to i32
  br label %300

19:                                               ; preds = %11
  %20 = tail call ptr @devm_clk_get(ptr noundef %15, ptr noundef nonnull @.str.115) #7
  %21 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 20
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %23 = load ptr, ptr %2, align 8
  br i1 %22, label %24, label %27

24:                                               ; preds = %19
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.116) #7
  %25 = load ptr, ptr %21, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %300

27:                                               ; preds = %19
  %28 = tail call i32 @__pm_runtime_resume(ptr noundef %23, i32 noundef 4) #7
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %31, ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef %28) #7
  br label %300

32:                                               ; preds = %27
  %33 = load ptr, ptr %21, align 4
  %34 = tail call i32 @clk_prepare(ptr noundef %33) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %37, ptr noundef nonnull @.str, ptr noundef nonnull @.str.117) #7
  br label %296

38:                                               ; preds = %32
  %39 = load ptr, ptr %5, align 8
  %40 = tail call i32 @clk_prepare(ptr noundef %39) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = tail call i32 @clk_enable(ptr noundef %39) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  tail call void @clk_unprepare(ptr noundef %39) #7
  br label %46

46:                                               ; preds = %45, %38
  %47 = phi i32 [ %40, %38 ], [ %43, %45 ]
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.118) #7
  br label %293

51:                                               ; preds = %46, %42
  %52 = load ptr, ptr %13, align 8
  %53 = tail call i32 @clk_prepare(ptr noundef %52) #7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = tail call i32 @clk_enable(ptr noundef %52) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  tail call void @clk_unprepare(ptr noundef %52) #7
  br label %59

59:                                               ; preds = %58, %51
  %60 = phi i32 [ %53, %51 ], [ %56, %58 ]
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %63, ptr noundef nonnull @.str, ptr noundef nonnull @.str.119) #7
  br label %290

64:                                               ; preds = %59, %55
  %65 = load ptr, ptr %2, align 8
  %66 = tail call ptr @__devm_reset_control_get(ptr noundef %65, ptr noundef nonnull @.str.120, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %69, ptr noundef nonnull @.str, ptr noundef nonnull @.str.121) #7
  br label %286

70:                                               ; preds = %64
  %71 = tail call i32 @reset_control_assert(ptr noundef %66) #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %72 = tail call i32 @reset_control_deassert(ptr noundef %66) #7
  %73 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 10
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.vop_data, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.vop_intr, ptr %76, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %70
  %81 = load ptr, ptr %76, align 4
  br label %82

82:                                               ; preds = %82, %80
  %83 = phi i32 [ 0, %80 ], [ %93, %82 ]
  %84 = phi i32 [ 0, %80 ], [ %92, %82 ]
  %85 = phi i32 [ 0, %80 ], [ %94, %82 ]
  %86 = getelementptr i32, ptr %81, i32 %85
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 15
  %89 = icmp eq i32 %88, 0
  %90 = shl nuw i32 1, %85
  %91 = select i1 %89, i32 0, i32 %90
  %92 = or i32 %91, %84
  %93 = or i32 %91, %83
  %94 = add nuw i32 %85, 1
  %95 = icmp eq i32 %94, %78
  br i1 %95, label %96, label %82

96:                                               ; preds = %82, %70
  %97 = phi i32 [ 0, %70 ], [ %92, %82 ]
  %98 = phi i32 [ 0, %70 ], [ %93, %82 ]
  %99 = getelementptr inbounds %struct.vop_intr, ptr %76, i32 0, i32 4
  tail call fastcc void @vop_reg_set(ptr noundef %0, ptr noundef %99, i32 noundef 0, i32 noundef %98, i32 noundef %97, ptr noundef nonnull @.str.3)
  %100 = load ptr, ptr %73, align 4
  %101 = getelementptr inbounds %struct.vop_data, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.vop_intr, ptr %102, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %96
  %107 = load ptr, ptr %102, align 4
  br label %108

108:                                              ; preds = %108, %106
  %109 = phi i32 [ 0, %106 ], [ %117, %108 ]
  %110 = phi i32 [ 0, %106 ], [ %118, %108 ]
  %111 = getelementptr i32, ptr %107, i32 %110
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 15
  %114 = icmp eq i32 %113, 0
  %115 = shl nuw i32 1, %110
  %116 = select i1 %114, i32 0, i32 %115
  %117 = or i32 %116, %109
  %118 = add nuw i32 %110, 1
  %119 = icmp eq i32 %118, %104
  br i1 %119, label %120, label %108

120:                                              ; preds = %108, %96
  %121 = phi i32 [ 0, %96 ], [ %117, %108 ]
  %122 = getelementptr inbounds %struct.vop_intr, ptr %102, i32 0, i32 3
  tail call fastcc void @vop_reg_set(ptr noundef %0, ptr noundef %122, i32 noundef 0, i32 noundef %121, i32 noundef 0, ptr noundef nonnull @.str.4)
  %123 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 14
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %128 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  br label %129

129:                                              ; preds = %129, %126
  %130 = phi i32 [ 0, %126 ], [ %137, %129 ]
  %131 = load ptr, ptr %127, align 4
  %132 = getelementptr i8, ptr %131, i32 %130
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #7, !srcloc !9
  %134 = load ptr, ptr %128, align 8
  %135 = sdiv i32 %130, 4
  %136 = getelementptr i32, ptr %134, i32 %135
  store i32 %133, ptr %136, align 4
  %137 = add i32 %130, 4
  %138 = load i32, ptr %123, align 4
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %129, label %140

140:                                              ; preds = %129, %120
  %141 = load ptr, ptr %73, align 4
  %142 = getelementptr inbounds %struct.vop_data, ptr %141, i32 0, i32 3
  %143 = load ptr, ptr %142, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %0, ptr noundef %143, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.122)
  %144 = load ptr, ptr %73, align 4
  %145 = getelementptr inbounds %struct.vop_data, ptr %144, i32 0, i32 2
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %struct.vop_common, ptr %146, i32 0, i32 1
  tail call fastcc void @vop_reg_set(ptr noundef %0, ptr noundef %147, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull @.str.123)
  %148 = load ptr, ptr %73, align 4
  %149 = getelementptr inbounds %struct.vop_data, ptr %148, i32 0, i32 9
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %269, label %152

152:                                              ; preds = %140
  %153 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %154 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  br label %155

155:                                              ; preds = %263, %152
  %156 = phi i32 [ 0, %152 ], [ %264, %263 ]
  %157 = getelementptr %struct.vop, ptr %0, i32 0, i32 24, i32 %156
  %158 = getelementptr %struct.vop, ptr %0, i32 0, i32 24, i32 %156, i32 1
  %159 = load ptr, ptr %158, align 8
  %160 = shl i32 %156, 1
  %161 = or i32 %160, 1
  %162 = getelementptr inbounds %struct.vop_win_data, ptr %159, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.vop_win_phy, ptr %163, i32 0, i32 22
  %165 = load i32, ptr %159, align 4
  %166 = shl i32 %156, 5
  %167 = add i32 %166, 32
  %168 = or i32 %167, %161
  %169 = icmp eq ptr %164, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %155
  %171 = load i32, ptr %164, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170, %155
  %174 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %174, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.124) #7
  br label %214

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.vop_win_phy, ptr %163, i32 0, i32 22, i32 1
  %177 = load i16, ptr %176, align 4
  %178 = zext i16 %177 to i32
  %179 = add i32 %165, %178
  %180 = getelementptr inbounds %struct.vop_win_phy, ptr %163, i32 0, i32 22, i32 2
  %181 = load i8, ptr %180, align 2
  %182 = zext i8 %181 to i32
  %183 = getelementptr inbounds %struct.vop_win_phy, ptr %163, i32 0, i32 22, i32 3
  %184 = load i8, ptr %183, align 1, !range !8
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %175
  %187 = shl i32 %168, %182
  %188 = and i32 %187, 65535
  %189 = add nuw nsw i32 %182, 16
  %190 = shl i32 %171, %189
  %191 = or i32 %188, %190
  br label %203

192:                                              ; preds = %175
  %193 = load ptr, ptr %153, align 8
  %194 = ashr i32 %179, 2
  %195 = getelementptr i32, ptr %193, i32 %194
  %196 = load i32, ptr %195, align 4
  %197 = shl i32 %171, %182
  %198 = xor i32 %197, -1
  %199 = and i32 %196, %198
  %200 = and i32 %171, %168
  %201 = shl i32 %200, %182
  %202 = or i32 %199, %201
  store i32 %202, ptr %195, align 4
  br label %203

203:                                              ; preds = %192, %186
  %204 = phi i32 [ %191, %186 ], [ %202, %192 ]
  %205 = getelementptr inbounds %struct.vop_win_phy, ptr %163, i32 0, i32 22, i32 4
  %206 = load i8, ptr %205, align 4, !range !8
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %203
  %209 = load ptr, ptr %154, align 4
  %210 = getelementptr i8, ptr %209, i32 %179
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 %204) #7, !srcloc !12
  br label %214

211:                                              ; preds = %203
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %212 = load ptr, ptr %154, align 4
  %213 = getelementptr i8, ptr %212, i32 %179
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %204) #7, !srcloc !12
  br label %214

214:                                              ; preds = %211, %208, %173
  tail call fastcc void @vop_win_disable(ptr noundef %0, ptr noundef %157)
  %215 = load ptr, ptr %162, align 4
  %216 = getelementptr inbounds %struct.vop_win_phy, ptr %215, i32 0, i32 5
  %217 = load i32, ptr %159, align 4
  %218 = icmp eq ptr %216, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %214
  %220 = load i32, ptr %216, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %219, %214
  %223 = load ptr, ptr %2, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %223, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.125) #7
  br label %263

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.vop_win_phy, ptr %215, i32 0, i32 5, i32 1
  %226 = load i16, ptr %225, align 4
  %227 = zext i16 %226 to i32
  %228 = add i32 %217, %227
  %229 = getelementptr inbounds %struct.vop_win_phy, ptr %215, i32 0, i32 5, i32 2
  %230 = load i8, ptr %229, align 2
  %231 = zext i8 %230 to i32
  %232 = getelementptr inbounds %struct.vop_win_phy, ptr %215, i32 0, i32 5, i32 3
  %233 = load i8, ptr %232, align 1, !range !8
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %241, label %235

235:                                              ; preds = %224
  %236 = shl nuw i32 1, %231
  %237 = and i32 %236, 65535
  %238 = add nuw nsw i32 %231, 16
  %239 = shl i32 %220, %238
  %240 = or i32 %237, %239
  br label %252

241:                                              ; preds = %224
  %242 = load ptr, ptr %153, align 8
  %243 = ashr i32 %228, 2
  %244 = getelementptr i32, ptr %242, i32 %243
  %245 = load i32, ptr %244, align 4
  %246 = shl i32 %220, %231
  %247 = xor i32 %246, -1
  %248 = and i32 %245, %247
  %249 = and i32 %220, 1
  %250 = shl nuw i32 %249, %231
  %251 = or i32 %248, %250
  store i32 %251, ptr %244, align 4
  br label %252

252:                                              ; preds = %241, %235
  %253 = phi i32 [ %240, %235 ], [ %251, %241 ]
  %254 = getelementptr inbounds %struct.vop_win_phy, ptr %215, i32 0, i32 5, i32 4
  %255 = load i8, ptr %254, align 4, !range !8
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %252
  %258 = load ptr, ptr %154, align 4
  %259 = getelementptr i8, ptr %258, i32 %228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %253) #7, !srcloc !12
  br label %263

260:                                              ; preds = %252
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %261 = load ptr, ptr %154, align 4
  %262 = getelementptr i8, ptr %261, i32 %228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 %253) #7, !srcloc !12
  br label %263

263:                                              ; preds = %260, %257, %222
  %264 = add nuw i32 %156, 1
  %265 = load ptr, ptr %73, align 4
  %266 = getelementptr inbounds %struct.vop_data, ptr %265, i32 0, i32 9
  %267 = load i32, ptr %266, align 4
  %268 = icmp ult i32 %264, %267
  br i1 %268, label %155, label %269

269:                                              ; preds = %263, %140
  tail call fastcc void @vop_cfg_done(ptr noundef %0)
  %270 = load ptr, ptr %2, align 8
  %271 = tail call ptr @__devm_reset_control_get(ptr noundef %270, ptr noundef nonnull @.str.126, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %272 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 22
  store ptr %271, ptr %272, align 4
  %273 = icmp ugt ptr %271, inttoptr (i32 -4096 to ptr)
  br i1 %273, label %274, label %277

274:                                              ; preds = %269
  %275 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %275, ptr noundef nonnull @.str, ptr noundef nonnull @.str.127) #7
  %276 = load ptr, ptr %272, align 4
  br label %286

277:                                              ; preds = %269
  %278 = tail call i32 @reset_control_assert(ptr noundef %271) #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %279 = load ptr, ptr %272, align 4
  %280 = tail call i32 @reset_control_deassert(ptr noundef %279) #7
  %281 = load ptr, ptr %5, align 8
  tail call void @clk_disable(ptr noundef %281) #7
  %282 = load ptr, ptr %13, align 8
  tail call void @clk_disable(ptr noundef %282) #7
  %283 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 3
  store i8 0, ptr %283, align 8
  %284 = load ptr, ptr %2, align 8
  %285 = tail call i32 @__pm_runtime_idle(ptr noundef %284, i32 noundef 4) #7
  br label %300

286:                                              ; preds = %274, %68
  %287 = phi ptr [ %66, %68 ], [ %276, %274 ]
  %288 = ptrtoint ptr %287 to i32
  %289 = load ptr, ptr %13, align 8
  tail call void @clk_disable(ptr noundef %289) #7
  tail call void @clk_unprepare(ptr noundef %289) #7
  br label %290

290:                                              ; preds = %286, %62
  %291 = phi i32 [ %60, %62 ], [ %288, %286 ]
  %292 = load ptr, ptr %5, align 8
  tail call void @clk_disable(ptr noundef %292) #7
  tail call void @clk_unprepare(ptr noundef %292) #7
  br label %293

293:                                              ; preds = %290, %49
  %294 = phi i32 [ %47, %49 ], [ %291, %290 ]
  %295 = load ptr, ptr %21, align 4
  tail call void @clk_unprepare(ptr noundef %295) #7
  br label %296

296:                                              ; preds = %293, %36
  %297 = phi i32 [ %34, %36 ], [ %294, %293 ]
  %298 = load ptr, ptr %2, align 8
  %299 = tail call i32 @__pm_runtime_idle(ptr noundef %298, i32 noundef 4) #7
  br label %300

300:                                              ; preds = %296, %277, %30, %24, %16, %8
  %301 = phi i32 [ %10, %8 ], [ %18, %16 ], [ %26, %24 ], [ %28, %30 ], [ %297, %296 ], [ 0, %277 ]
  ret i32 %301
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vop_isr(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @pm_runtime_get_if_active(ptr noundef %4, i1 noundef zeroext false) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %191, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 19
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @clk_enable(ptr noundef %9) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 21
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @clk_enable(ptr noundef %14) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load ptr, ptr %8, align 8
  tail call void @clk_disable(ptr noundef %18) #7
  br label %19

19:                                               ; preds = %17, %7
  %20 = tail call i32 @___ratelimit(ptr noundef nonnull @vop_isr._rs, ptr noundef nonnull @__func__.vop_isr) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %187, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.128) #7
  br label %187

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %25) #7
  %26 = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.vop_data, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.vop_intr, ptr %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.vop_intr, ptr %29, i32 0, i32 5, i32 1
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 12
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 %33
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %38 = getelementptr inbounds %struct.vop_intr, ptr %29, i32 0, i32 5, i32 2
  %39 = load i8, ptr %38, align 2
  %40 = zext i8 %39 to i32
  %41 = lshr i32 %37, %40
  %42 = load i32, ptr %30, align 4
  %43 = and i32 %41, %42
  %44 = load ptr, ptr %26, align 4
  %45 = getelementptr inbounds %struct.vop_data, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.vop_intr, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %180, label %50

50:                                               ; preds = %24
  %51 = load ptr, ptr %46, align 4
  br label %52

52:                                               ; preds = %65, %50
  %53 = phi i32 [ 0, %50 ], [ %66, %65 ]
  %54 = phi i32 [ 0, %50 ], [ %67, %65 ]
  %55 = getelementptr i32, ptr %51, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 15
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %52
  %60 = shl nuw i32 1, %54
  %61 = and i32 %43, %60
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 0, i32 %56
  %64 = or i32 %63, %53
  br label %65

65:                                               ; preds = %59, %52
  %66 = phi i32 [ %53, %52 ], [ %64, %59 ]
  %67 = add nuw i32 %54, 1
  %68 = icmp eq i32 %67, %48
  br i1 %68, label %69, label %52

69:                                               ; preds = %65
  %70 = icmp eq i32 %66, 0
  br i1 %70, label %180, label %71

71:                                               ; preds = %71, %69
  %72 = phi i32 [ %82, %71 ], [ 0, %69 ]
  %73 = phi i32 [ %81, %71 ], [ 0, %69 ]
  %74 = phi i32 [ %83, %71 ], [ 0, %69 ]
  %75 = getelementptr i32, ptr %51, i32 %74
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, %66
  %78 = icmp eq i32 %77, 0
  %79 = shl nuw i32 1, %74
  %80 = select i1 %78, i32 0, i32 %79
  %81 = or i32 %80, %73
  %82 = or i32 %80, %72
  %83 = add nuw i32 %74, 1
  %84 = icmp eq i32 %83, %48
  br i1 %84, label %85, label %71

85:                                               ; preds = %71
  %86 = getelementptr inbounds %struct.vop_intr, ptr %46, i32 0, i32 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr %86, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88, %85
  %92 = load ptr, ptr %3, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %92, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #7
  br label %133

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.vop_intr, ptr %46, i32 0, i32 4, i32 1
  %95 = load i16, ptr %94, align 4
  %96 = zext i16 %95 to i32
  %97 = and i32 %89, %82
  %98 = getelementptr inbounds %struct.vop_intr, ptr %46, i32 0, i32 4, i32 2
  %99 = load i8, ptr %98, align 2
  %100 = zext i8 %99 to i32
  %101 = getelementptr inbounds %struct.vop_intr, ptr %46, i32 0, i32 4, i32 3
  %102 = load i8, ptr %101, align 1, !range !8
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %93
  %105 = shl i32 %81, %100
  %106 = and i32 %105, 65535
  %107 = add nuw nsw i32 %100, 16
  %108 = shl i32 %97, %107
  %109 = or i32 %106, %108
  br label %122

110:                                              ; preds = %93
  %111 = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 11
  %112 = load ptr, ptr %111, align 8
  %113 = lshr i32 %96, 2
  %114 = getelementptr i32, ptr %112, i32 %113
  %115 = load i32, ptr %114, align 4
  %116 = shl i32 %97, %100
  %117 = xor i32 %116, -1
  %118 = and i32 %115, %117
  %119 = and i32 %97, %81
  %120 = shl i32 %119, %100
  %121 = or i32 %118, %120
  store i32 %121, ptr %114, align 4
  br label %122

122:                                              ; preds = %110, %104
  %123 = phi i32 [ %109, %104 ], [ %121, %110 ]
  %124 = getelementptr inbounds %struct.vop_intr, ptr %46, i32 0, i32 4, i32 4
  %125 = load i8, ptr %124, align 4, !range !8
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load ptr, ptr %34, align 4
  %129 = getelementptr i8, ptr %128, i32 %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %123) #7, !srcloc !12
  br label %133

130:                                              ; preds = %122
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %131 = load ptr, ptr %34, align 4
  %132 = getelementptr i8, ptr %131, i32 %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %123) #7, !srcloc !12
  br label %133

133:                                              ; preds = %130, %127, %91
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %134 = load i16, ptr %25, align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  %136 = and i32 %66, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 4
  tail call void @complete(ptr noundef %139) #7
  %140 = and i32 %66, -2
  br label %141

141:                                              ; preds = %138, %133
  %142 = phi i32 [ %140, %138 ], [ %66, %133 ]
  %143 = phi i32 [ 1, %138 ], [ 0, %133 ]
  %144 = and i32 %142, 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 9
  tail call void @complete(ptr noundef %147) #7
  %148 = and i32 %142, -5
  br label %149

149:                                              ; preds = %146, %141
  %150 = phi i32 [ %148, %146 ], [ %142, %141 ]
  %151 = phi i32 [ 1, %146 ], [ %143, %141 ]
  %152 = and i32 %150, 2
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %174, label %154

154:                                              ; preds = %149
  %155 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %1) #7
  %156 = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 2
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.drm_device, ptr %157, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %158) #7
  %159 = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 6
  %160 = load ptr, ptr %159, align 8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %154
  tail call void @drm_crtc_send_vblank_event(ptr noundef %1, ptr noundef nonnull %160) #7
  tail call void @drm_crtc_vblank_put(ptr noundef %1) #7
  store ptr null, ptr %159, align 8
  br label %163

163:                                              ; preds = %162, %154
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %164 = load i16, ptr %158, align 4
  %165 = add i16 %164, 1
  store i16 %165, ptr %158, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  %166 = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 8
  %167 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %166) #7
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 7
  %171 = load ptr, ptr @system_unbound_wq, align 4
  tail call void @drm_flip_work_commit(ptr noundef %170, ptr noundef %171) #7
  br label %172

172:                                              ; preds = %169, %163
  %173 = and i32 %150, -3
  br label %174

174:                                              ; preds = %172, %149
  %175 = phi i32 [ %173, %172 ], [ %150, %149 ]
  %176 = phi i32 [ 1, %172 ], [ %151, %149 ]
  %177 = icmp eq i32 %175, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %179, ptr noundef nonnull @.str, ptr noundef nonnull @.str.129, i32 noundef %175) #7
  br label %183

180:                                              ; preds = %69, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %181 = load i16, ptr %25, align 4
  %182 = add i16 %181, 1
  store i16 %182, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  br label %183

183:                                              ; preds = %180, %178, %174
  %184 = phi i32 [ %176, %178 ], [ %176, %174 ], [ 0, %180 ]
  %185 = load ptr, ptr %13, align 8
  tail call void @clk_disable(ptr noundef %185) #7
  %186 = load ptr, ptr %8, align 8
  tail call void @clk_disable(ptr noundef %186) #7
  br label %187

187:                                              ; preds = %183, %22, %19
  %188 = phi i32 [ 0, %22 ], [ 0, %19 ], [ %184, %183 ]
  %189 = load ptr, ptr %3, align 8
  %190 = tail call i32 @__pm_runtime_idle(ptr noundef %189, i32 noundef 5) #7
  br label %191

191:                                              ; preds = %187, %2
  %192 = phi i32 [ %188, %187 ], [ 0, %2 ]
  ret i32 %192
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vop_destroy_crtc(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @drm_self_refresh_helper_cleanup(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @of_node_put(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %14, label %9

9:                                                ; preds = %9, %1
  %10 = phi ptr [ %12, %9 ], [ %7, %1 ]
  %11 = getelementptr i8, ptr %10, i32 -4
  %12 = load ptr, ptr %10, align 4
  tail call void @drm_plane_cleanup(ptr noundef %11) #7
  %13 = icmp eq ptr %12, %6
  br i1 %13, label %14, label %9

14:                                               ; preds = %9, %1
  tail call void @drm_crtc_cleanup(ptr noundef %0) #7
  %15 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 7
  tail call void @drm_flip_work_cleanup(ptr noundef %15) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vop_fb_unref_worker(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -788
  tail call void @drm_crtc_vblank_put(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_self_refresh_helper_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vop_plane_destroy(ptr noundef %0) #0 {
  tail call void @drm_plane_cleanup(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @rockchip_mod_supported(ptr nocapture noundef readnone %0, i32 noundef %1, i64 noundef %2) #0 {
  switch i64 %2, label %4 [
    i64 0, label %10
    i64 576460752303423569, label %5
  ]

4:                                                ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.16, i64 noundef %2) #7
  br label %10

5:                                                ; preds = %3
  switch i32 %1, label %6 [
    i32 875713112, label %10
    i32 875713089, label %10
    i32 875709016, label %10
    i32 875708993, label %10
    i32 875710290, label %10
    i32 875710274, label %10
    i32 909199186, label %10
    i32 909199170, label %10
  ]

6:                                                ; preds = %5
  %7 = load i1, ptr @vop_convert_afbc_format.__already_done, align 1
  br i1 %7, label %10, label %8, !prof !18

8:                                                ; preds = %6
  store i1 true, ptr @vop_convert_afbc_format.__already_done, align 1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %1) #8
  br label %10

10:                                               ; preds = %8, %6, %5, %5, %5, %5, %5, %5, %5, %5, %4, %3
  %11 = phi i1 [ false, %4 ], [ true, %3 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ false, %6 ], [ false, %8 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ]
  ret i1 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vop_convert_afbc_format(i32 noundef %0) unnamed_addr #0 {
  switch i32 %0, label %4 [
    i32 875713112, label %8
    i32 875713089, label %8
    i32 875709016, label %8
    i32 875708993, label %8
    i32 875710290, label %2
    i32 875710274, label %2
    i32 909199186, label %3
    i32 909199170, label %3
  ]

2:                                                ; preds = %1, %1
  br label %8

3:                                                ; preds = %1, %1
  br label %8

4:                                                ; preds = %1
  %5 = load i1, ptr @vop_convert_afbc_format.__already_done, align 1
  br i1 %5, label %8, label %6, !prof !18

6:                                                ; preds = %4
  store i1 true, ptr @vop_convert_afbc_format.__already_done, align 1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %0) #8
  br label %8

8:                                                ; preds = %6, %4, %3, %2, %1, %1, %1, %1
  %9 = phi i32 [ 0, %3 ], [ 4, %2 ], [ 5, %1 ], [ 5, %1 ], [ 5, %1 ], [ 5, %1 ], [ -22, %6 ], [ -22, %4 ]
  ret i32 %9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vop_plane_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  %13 = getelementptr inbounds %struct.vop_win, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.vop_win_data, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, i32 65536, i32 8192
  %20 = select i1 %18, i32 65536, i32 524288
  %21 = icmp eq ptr %10, null
  br i1 %21, label %92, label %22

22:                                               ; preds = %2
  %23 = icmp eq ptr %12, null
  br i1 %23, label %24, label %25, !prof !11

24:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 799, i32 noundef 9, ptr noundef null) #7
  br label %92

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 8
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr %struct.__drm_crtcs_state, ptr %27, i32 %29, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34, !prof !11

33:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 804, i32 noundef 9, ptr noundef null) #7
  br label %92

34:                                               ; preds = %25
  %35 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %8, ptr noundef nonnull %31, i32 noundef %19, i32 noundef %20, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %92

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 22
  %39 = load i8, ptr %38, align 4, !range !8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %92, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 4
  %43 = load ptr, ptr %42, align 8
  %44 = load i32, ptr %43, align 4
  switch i32 %44, label %45 [
    i32 875713112, label %46
    i32 875713089, label %46
    i32 875709016, label %46
    i32 875708993, label %46
    i32 875710290, label %46
    i32 875710274, label %46
    i32 909199186, label %46
    i32 909199170, label %46
    i32 842094158, label %46
    i32 909203022, label %46
    i32 875714126, label %46
  ]

45:                                               ; preds = %41
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %44) #7
  br label %92

46:                                               ; preds = %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41
  %47 = getelementptr inbounds %struct.drm_format_info, ptr %43, i32 0, i32 9
  %48 = load i8, ptr %47, align 1, !range !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 20
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 65536
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #7
  br label %92

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 14
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #7
  br label %92

62:                                               ; preds = %56, %46
  %63 = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 8
  %64 = load i64, ptr %63, align 8
  %65 = icmp eq i64 %64, 576460752303423569
  br i1 %65, label %66, label %92

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.vop_data, ptr %68, i32 0, i32 6
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #7
  br label %92

73:                                               ; preds = %66
  %74 = tail call fastcc i32 @vop_convert_afbc_format(i32 noundef %44)
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 20
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 20, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %79, i1 %82, i1 false
  br i1 %83, label %87, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 7
  %86 = load i32, ptr %85, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %78, i32 noundef %81, i32 noundef %86) #7
  br label %92

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 14
  %89 = load i32, ptr %88, align 4
  %90 = icmp ult i32 %89, 2
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %89) #7
  br label %92

92:                                               ; preds = %91, %87, %84, %73, %72, %62, %61, %55, %45, %37, %34, %33, %24, %2
  %93 = phi i32 [ -22, %33 ], [ -22, %55 ], [ -22, %61 ], [ 0, %24 ], [ 0, %2 ], [ %35, %34 ], [ 0, %37 ], [ -22, %45 ], [ 0, %87 ], [ 0, %62 ], [ %74, %73 ], [ -22, %72 ], [ -22, %84 ], [ -22, %91 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vop_plane_atomic_update(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vop_win, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.vop_win, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 20
  %18 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21
  %19 = getelementptr inbounds %struct.vop_win, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.vop, ptr %20, i32 0, i32 24
  %22 = ptrtoint ptr %0 to i32
  %23 = ptrtoint ptr %21 to i32
  %24 = sub i32 %22, %23
  %25 = sdiv exact i32 %24, 472
  %26 = getelementptr inbounds %struct.drm_framebuffer, ptr %16, i32 0, i32 4
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.drm_format_info, ptr %27, i32 0, i32 9
  %29 = load i8, ptr %28, align 1, !range !8
  %30 = icmp eq i8 %29, 0
  %31 = zext i8 %29 to i32
  %32 = icmp eq ptr %10, null
  br i1 %32, label %33, label %34, !prof !11

33:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 911, i32 noundef 9, ptr noundef null) #7
  br label %2976

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 3
  %36 = load i8, ptr %35, align 8, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39, !prof !11

38:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 914, i32 noundef 9, ptr noundef null) #7
  br label %2976

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 22
  %41 = load i8, ptr %40, align 4, !range !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.drm_plane_state, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %2976, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.vop, ptr %47, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %50) #7
  tail call fastcc void @vop_win_disable(ptr noundef nonnull %47, ptr noundef %0) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %51 = load i16, ptr %50, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  br label %2976

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.drm_framebuffer, ptr %16, i32 0, i32 15
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 20, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %17, align 4
  %59 = sub i32 %57, %58
  %60 = ashr i32 %59, 16
  %61 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 20, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 20, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = sub i32 %62, %64
  %66 = ashr i32 %65, 16
  %67 = add nsw i32 %66, -1
  %68 = shl i32 %67, 16
  %69 = add nsw i32 %60, 65535
  %70 = and i32 %69, 65535
  %71 = or i32 %68, %70
  %72 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = sub i32 %73, %75
  %77 = shl i32 %76, 16
  %78 = add i32 %77, -65536
  %79 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr %18, align 4
  %82 = sub i32 %80, %81
  %83 = add i32 %82, 65535
  %84 = and i32 %83, 65535
  %85 = or i32 %84, %78
  %86 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 12, i32 4
  %87 = load i16, ptr %86, align 2
  %88 = zext i16 %87 to i32
  %89 = add i32 %81, %88
  %90 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 12, i32 2
  %91 = load i16, ptr %90, align 2
  %92 = zext i16 %91 to i32
  %93 = sub i32 %89, %92
  %94 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 12, i32 9
  %95 = load i16, ptr %94, align 4
  %96 = zext i16 %95 to i32
  %97 = add i32 %75, %96
  %98 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 12, i32 7
  %99 = load i16, ptr %98, align 8
  %100 = zext i16 %99 to i32
  %101 = sub i32 %97, %100
  %102 = shl i32 %101, 16
  %103 = and i32 %93, 65535
  %104 = or i32 %102, %103
  %105 = ashr i32 %58, 16
  %106 = getelementptr inbounds %struct.drm_format_info, ptr %27, i32 0, i32 3
  %107 = load i8, ptr %106, align 2
  %108 = zext i8 %107 to i32
  %109 = mul nsw i32 %105, %108
  %110 = ashr i32 %64, 16
  %111 = getelementptr inbounds %struct.drm_framebuffer, ptr %16, i32 0, i32 6
  %112 = load i32, ptr %111, align 8
  %113 = mul i32 %110, %112
  %114 = add i32 %113, %109
  %115 = getelementptr inbounds %struct.rockchip_gem_object, ptr %55, i32 0, i32 3
  %116 = load i32, ptr %115, align 8
  %117 = add i32 %114, %116
  %118 = getelementptr inbounds %struct.drm_framebuffer, ptr %16, i32 0, i32 7
  %119 = load i32, ptr %118, align 8
  %120 = add i32 %117, %119
  %121 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 14
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 32
  %124 = icmp eq i32 %123, 0
  %125 = mul i32 %112, %67
  %126 = select i1 %124, i32 0, i32 %125
  %127 = add i32 %120, %126
  %128 = load i32, ptr %27, align 4
  switch i32 %128, label %134 [
    i32 875713112, label %135
    i32 875713089, label %135
    i32 875709016, label %135
    i32 875708993, label %135
    i32 875710290, label %129
    i32 875710274, label %129
    i32 909199186, label %130
    i32 909199170, label %130
    i32 842094158, label %131
    i32 909203022, label %132
    i32 875714126, label %133
  ]

129:                                              ; preds = %53, %53
  br label %135

130:                                              ; preds = %53, %53
  br label %135

131:                                              ; preds = %53
  br label %135

132:                                              ; preds = %53
  br label %135

133:                                              ; preds = %53
  br label %135

134:                                              ; preds = %53
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %128) #7
  br label %135

135:                                              ; preds = %134, %133, %132, %131, %130, %129, %53, %53, %53, %53
  %136 = phi i32 [ -22, %134 ], [ 6, %133 ], [ 5, %132 ], [ 4, %131 ], [ 2, %130 ], [ 1, %129 ], [ 0, %53 ], [ 0, %53 ], [ 0, %53 ], [ 0, %53 ]
  %137 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %137) #7
  %138 = getelementptr inbounds %struct.drm_framebuffer, ptr %16, i32 0, i32 8
  %139 = load i64, ptr %138, align 8
  %140 = icmp eq i64 %139, 576460752303423569
  br i1 %140, label %141, label %426

141:                                              ; preds = %135
  %142 = load ptr, ptr %26, align 8
  %143 = load i32, ptr %142, align 4
  switch i32 %143, label %146 [
    i32 875713112, label %150
    i32 875713089, label %150
    i32 875709016, label %150
    i32 875708993, label %150
    i32 875710290, label %144
    i32 875710274, label %144
    i32 909199186, label %145
    i32 909199170, label %145
  ]

144:                                              ; preds = %141, %141
  br label %150

145:                                              ; preds = %141, %141
  br label %150

146:                                              ; preds = %141
  %147 = load i1, ptr @vop_convert_afbc_format.__already_done, align 1
  br i1 %147, label %150, label %148, !prof !18

148:                                              ; preds = %146
  store i1 true, ptr @vop_convert_afbc_format.__already_done, align 1
  %149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %143) #8
  br label %150

150:                                              ; preds = %148, %146, %145, %144, %141, %141, %141, %141
  %151 = phi i32 [ 16, %145 ], [ 20, %144 ], [ 21, %141 ], [ 21, %141 ], [ 21, %141 ], [ 21, %141 ], [ -6, %148 ], [ -6, %146 ]
  %152 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 10
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.vop_data, ptr %153, i32 0, i32 6
  %155 = load ptr, ptr %154, align 8
  %156 = icmp eq ptr %155, null
  br i1 %156, label %207, label %157

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.vop_afbc, ptr %155, i32 0, i32 2
  %159 = icmp eq ptr %158, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i32, ptr %158, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160, %157
  %164 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %165 = load ptr, ptr %164, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %165, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.24) #7
  br label %207

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.vop_afbc, ptr %155, i32 0, i32 2, i32 1
  %168 = load i16, ptr %167, align 4
  %169 = zext i16 %168 to i32
  %170 = getelementptr inbounds %struct.vop_afbc, ptr %155, i32 0, i32 2, i32 2
  %171 = load i8, ptr %170, align 2
  %172 = zext i8 %171 to i32
  %173 = getelementptr inbounds %struct.vop_afbc, ptr %155, i32 0, i32 2, i32 3
  %174 = load i8, ptr %173, align 1, !range !8
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %166
  %177 = shl i32 %151, %172
  %178 = and i32 %177, 65535
  %179 = add nuw nsw i32 %172, 16
  %180 = shl i32 %161, %179
  %181 = or i32 %178, %180
  br label %194

182:                                              ; preds = %166
  %183 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %184 = load ptr, ptr %183, align 8
  %185 = lshr i32 %169, 2
  %186 = getelementptr i32, ptr %184, i32 %185
  %187 = load i32, ptr %186, align 4
  %188 = shl i32 %161, %172
  %189 = xor i32 %188, -1
  %190 = and i32 %187, %189
  %191 = and i32 %161, %151
  %192 = shl i32 %191, %172
  %193 = or i32 %190, %192
  store i32 %193, ptr %186, align 4
  br label %194

194:                                              ; preds = %182, %176
  %195 = phi i32 [ %181, %176 ], [ %193, %182 ]
  %196 = getelementptr inbounds %struct.vop_afbc, ptr %155, i32 0, i32 2, i32 4
  %197 = load i8, ptr %196, align 4, !range !8
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr i8, ptr %201, i32 %169
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %195) #7, !srcloc !12
  br label %207

203:                                              ; preds = %194
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %204 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr i8, ptr %205, i32 %169
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %195) #7, !srcloc !12
  br label %207

207:                                              ; preds = %203, %199, %163, %150
  %208 = load ptr, ptr %152, align 4
  %209 = getelementptr inbounds %struct.vop_data, ptr %208, i32 0, i32 6
  %210 = load ptr, ptr %209, align 8
  %211 = icmp eq ptr %210, null
  br i1 %211, label %256, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.vop_afbc, ptr %210, i32 0, i32 3
  %214 = icmp eq ptr %213, null
  br i1 %214, label %218, label %215

215:                                              ; preds = %212
  %216 = load i32, ptr %213, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215, %212
  %219 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %220 = load ptr, ptr %219, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %220, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.25) #7
  br label %256

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.vop_afbc, ptr %210, i32 0, i32 3, i32 1
  %223 = load i16, ptr %222, align 4
  %224 = zext i16 %223 to i32
  %225 = getelementptr inbounds %struct.vop_afbc, ptr %210, i32 0, i32 3, i32 2
  %226 = load i8, ptr %225, align 2
  %227 = zext i8 %226 to i32
  %228 = getelementptr inbounds %struct.vop_afbc, ptr %210, i32 0, i32 3, i32 3
  %229 = load i8, ptr %228, align 1, !range !8
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %221
  %232 = add nuw nsw i32 %227, 16
  %233 = shl i32 %216, %232
  br label %243

234:                                              ; preds = %221
  %235 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %236 = load ptr, ptr %235, align 8
  %237 = lshr i32 %224, 2
  %238 = getelementptr i32, ptr %236, i32 %237
  %239 = load i32, ptr %238, align 4
  %240 = shl i32 %216, %227
  %241 = xor i32 %240, -1
  %242 = and i32 %239, %241
  store i32 %242, ptr %238, align 4
  br label %243

243:                                              ; preds = %234, %231
  %244 = phi i32 [ %233, %231 ], [ %242, %234 ]
  %245 = getelementptr inbounds %struct.vop_afbc, ptr %210, i32 0, i32 3, i32 4
  %246 = load i8, ptr %245, align 4, !range !8
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr i8, ptr %250, i32 %224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 %244) #7, !srcloc !12
  br label %256

252:                                              ; preds = %243
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %253 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr i8, ptr %254, i32 %224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 %244) #7, !srcloc !12
  br label %256

256:                                              ; preds = %252, %248, %218, %207
  %257 = load ptr, ptr %152, align 4
  %258 = getelementptr inbounds %struct.vop_data, ptr %257, i32 0, i32 6
  %259 = load ptr, ptr %258, align 8
  %260 = icmp eq ptr %259, null
  br i1 %260, label %316, label %261

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.vop_afbc, ptr %259, i32 0, i32 1
  %263 = load ptr, ptr %19, align 8
  %264 = getelementptr inbounds %struct.vop, ptr %263, i32 0, i32 24
  %265 = ptrtoint ptr %264 to i32
  %266 = sub i32 %22, %265
  %267 = sdiv exact i32 %266, 472
  %268 = icmp eq ptr %262, null
  br i1 %268, label %272, label %269

269:                                              ; preds = %261
  %270 = load i32, ptr %262, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %269, %261
  %273 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %274 = load ptr, ptr %273, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %274, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.26) #7
  br label %316

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct.vop_afbc, ptr %259, i32 0, i32 1, i32 1
  %277 = load i16, ptr %276, align 4
  %278 = zext i16 %277 to i32
  %279 = getelementptr inbounds %struct.vop_afbc, ptr %259, i32 0, i32 1, i32 2
  %280 = load i8, ptr %279, align 2
  %281 = zext i8 %280 to i32
  %282 = getelementptr inbounds %struct.vop_afbc, ptr %259, i32 0, i32 1, i32 3
  %283 = load i8, ptr %282, align 1, !range !8
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %291, label %285

285:                                              ; preds = %275
  %286 = shl i32 %267, %281
  %287 = and i32 %286, 65535
  %288 = add nuw nsw i32 %281, 16
  %289 = shl i32 %270, %288
  %290 = or i32 %287, %289
  br label %303

291:                                              ; preds = %275
  %292 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %293 = load ptr, ptr %292, align 8
  %294 = lshr i32 %278, 2
  %295 = getelementptr i32, ptr %293, i32 %294
  %296 = load i32, ptr %295, align 4
  %297 = shl i32 %270, %281
  %298 = xor i32 %297, -1
  %299 = and i32 %296, %298
  %300 = and i32 %270, %267
  %301 = shl i32 %300, %281
  %302 = or i32 %299, %301
  store i32 %302, ptr %295, align 4
  br label %303

303:                                              ; preds = %291, %285
  %304 = phi i32 [ %290, %285 ], [ %302, %291 ]
  %305 = getelementptr inbounds %struct.vop_afbc, ptr %259, i32 0, i32 1, i32 4
  %306 = load i8, ptr %305, align 4, !range !8
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %312, label %308

308:                                              ; preds = %303
  %309 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %310 = load ptr, ptr %309, align 4
  %311 = getelementptr i8, ptr %310, i32 %278
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %311, i32 %304) #7, !srcloc !12
  br label %316

312:                                              ; preds = %303
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %313 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr i8, ptr %314, i32 %278
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %315, i32 %304) #7, !srcloc !12
  br label %316

316:                                              ; preds = %312, %308, %272, %256
  %317 = load ptr, ptr %152, align 4
  %318 = getelementptr inbounds %struct.vop_data, ptr %317, i32 0, i32 6
  %319 = load ptr, ptr %318, align 8
  %320 = icmp eq ptr %319, null
  br i1 %320, label %371, label %321

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.vop_afbc, ptr %319, i32 0, i32 5
  %323 = icmp eq ptr %322, null
  br i1 %323, label %327, label %324

324:                                              ; preds = %321
  %325 = load i32, ptr %322, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %324, %321
  %328 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %329 = load ptr, ptr %328, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %329, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.27) #7
  br label %371

330:                                              ; preds = %324
  %331 = getelementptr inbounds %struct.vop_afbc, ptr %319, i32 0, i32 5, i32 1
  %332 = load i16, ptr %331, align 4
  %333 = zext i16 %332 to i32
  %334 = getelementptr inbounds %struct.vop_afbc, ptr %319, i32 0, i32 5, i32 2
  %335 = load i8, ptr %334, align 2
  %336 = zext i8 %335 to i32
  %337 = getelementptr inbounds %struct.vop_afbc, ptr %319, i32 0, i32 5, i32 3
  %338 = load i8, ptr %337, align 1, !range !8
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %346, label %340

340:                                              ; preds = %330
  %341 = shl i32 %127, %336
  %342 = and i32 %341, 65535
  %343 = add nuw nsw i32 %336, 16
  %344 = shl i32 %325, %343
  %345 = or i32 %342, %344
  br label %358

346:                                              ; preds = %330
  %347 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %348 = load ptr, ptr %347, align 8
  %349 = lshr i32 %333, 2
  %350 = getelementptr i32, ptr %348, i32 %349
  %351 = load i32, ptr %350, align 4
  %352 = shl i32 %325, %336
  %353 = xor i32 %352, -1
  %354 = and i32 %351, %353
  %355 = and i32 %325, %127
  %356 = shl i32 %355, %336
  %357 = or i32 %354, %356
  store i32 %357, ptr %350, align 4
  br label %358

358:                                              ; preds = %346, %340
  %359 = phi i32 [ %345, %340 ], [ %357, %346 ]
  %360 = getelementptr inbounds %struct.vop_afbc, ptr %319, i32 0, i32 5, i32 4
  %361 = load i8, ptr %360, align 4, !range !8
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %367, label %363

363:                                              ; preds = %358
  %364 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %365 = load ptr, ptr %364, align 4
  %366 = getelementptr i8, ptr %365, i32 %333
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %366, i32 %359) #7, !srcloc !12
  br label %371

367:                                              ; preds = %358
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %368 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %369 = load ptr, ptr %368, align 4
  %370 = getelementptr i8, ptr %369, i32 %333
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %370, i32 %359) #7, !srcloc !12
  br label %371

371:                                              ; preds = %367, %363, %327, %316
  %372 = load ptr, ptr %152, align 4
  %373 = getelementptr inbounds %struct.vop_data, ptr %372, i32 0, i32 6
  %374 = load ptr, ptr %373, align 8
  %375 = icmp eq ptr %374, null
  br i1 %375, label %426, label %376

376:                                              ; preds = %371
  %377 = getelementptr inbounds %struct.vop_afbc, ptr %374, i32 0, i32 4
  %378 = icmp eq ptr %377, null
  br i1 %378, label %382, label %379

379:                                              ; preds = %376
  %380 = load i32, ptr %377, align 4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %379, %376
  %383 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %384 = load ptr, ptr %383, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %384, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.28) #7
  br label %426

385:                                              ; preds = %379
  %386 = getelementptr inbounds %struct.vop_afbc, ptr %374, i32 0, i32 4, i32 1
  %387 = load i16, ptr %386, align 4
  %388 = zext i16 %387 to i32
  %389 = getelementptr inbounds %struct.vop_afbc, ptr %374, i32 0, i32 4, i32 2
  %390 = load i8, ptr %389, align 2
  %391 = zext i8 %390 to i32
  %392 = getelementptr inbounds %struct.vop_afbc, ptr %374, i32 0, i32 4, i32 3
  %393 = load i8, ptr %392, align 1, !range !8
  %394 = icmp eq i8 %393, 0
  br i1 %394, label %401, label %395

395:                                              ; preds = %385
  %396 = shl i32 %69, %391
  %397 = and i32 %396, 65535
  %398 = add nuw nsw i32 %391, 16
  %399 = shl i32 %380, %398
  %400 = or i32 %397, %399
  br label %413

401:                                              ; preds = %385
  %402 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %403 = load ptr, ptr %402, align 8
  %404 = lshr i32 %388, 2
  %405 = getelementptr i32, ptr %403, i32 %404
  %406 = load i32, ptr %405, align 4
  %407 = shl i32 %380, %391
  %408 = xor i32 %407, -1
  %409 = and i32 %406, %408
  %410 = and i32 %380, %71
  %411 = shl i32 %410, %391
  %412 = or i32 %409, %411
  store i32 %412, ptr %405, align 4
  br label %413

413:                                              ; preds = %401, %395
  %414 = phi i32 [ %400, %395 ], [ %412, %401 ]
  %415 = getelementptr inbounds %struct.vop_afbc, ptr %374, i32 0, i32 4, i32 4
  %416 = load i8, ptr %415, align 4, !range !8
  %417 = icmp eq i8 %416, 0
  br i1 %417, label %422, label %418

418:                                              ; preds = %413
  %419 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %420 = load ptr, ptr %419, align 4
  %421 = getelementptr i8, ptr %420, i32 %388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %421, i32 %414) #7, !srcloc !12
  br label %426

422:                                              ; preds = %413
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %423 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %424 = load ptr, ptr %423, align 4
  %425 = getelementptr i8, ptr %424, i32 %388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %425, i32 %414) #7, !srcloc !12
  br label %426

426:                                              ; preds = %422, %418, %382, %371, %135
  %427 = getelementptr inbounds %struct.vop_win_data, ptr %12, i32 0, i32 1
  %428 = load ptr, ptr %427, align 4
  %429 = getelementptr inbounds %struct.vop_win_phy, ptr %428, i32 0, i32 6
  %430 = load i32, ptr %12, align 4
  %431 = icmp eq ptr %429, null
  br i1 %431, label %435, label %432

432:                                              ; preds = %426
  %433 = load i32, ptr %429, align 4
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %432, %426
  %436 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %437 = load ptr, ptr %436, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %437, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.24) #7
  br label %480

438:                                              ; preds = %432
  %439 = getelementptr inbounds %struct.vop_win_phy, ptr %428, i32 0, i32 6, i32 1
  %440 = load i16, ptr %439, align 4
  %441 = zext i16 %440 to i32
  %442 = add i32 %430, %441
  %443 = getelementptr inbounds %struct.vop_win_phy, ptr %428, i32 0, i32 6, i32 2
  %444 = load i8, ptr %443, align 2
  %445 = zext i8 %444 to i32
  %446 = getelementptr inbounds %struct.vop_win_phy, ptr %428, i32 0, i32 6, i32 3
  %447 = load i8, ptr %446, align 1, !range !8
  %448 = icmp eq i8 %447, 0
  br i1 %448, label %455, label %449

449:                                              ; preds = %438
  %450 = shl i32 %136, %445
  %451 = and i32 %450, 65535
  %452 = add nuw nsw i32 %445, 16
  %453 = shl i32 %433, %452
  %454 = or i32 %451, %453
  br label %467

455:                                              ; preds = %438
  %456 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %457 = load ptr, ptr %456, align 8
  %458 = ashr i32 %442, 2
  %459 = getelementptr i32, ptr %457, i32 %458
  %460 = load i32, ptr %459, align 4
  %461 = shl i32 %433, %445
  %462 = xor i32 %461, -1
  %463 = and i32 %460, %462
  %464 = and i32 %433, %136
  %465 = shl i32 %464, %445
  %466 = or i32 %463, %465
  store i32 %466, ptr %459, align 4
  br label %467

467:                                              ; preds = %455, %449
  %468 = phi i32 [ %454, %449 ], [ %466, %455 ]
  %469 = getelementptr inbounds %struct.vop_win_phy, ptr %428, i32 0, i32 6, i32 4
  %470 = load i8, ptr %469, align 4, !range !8
  %471 = icmp eq i8 %470, 0
  br i1 %471, label %476, label %472

472:                                              ; preds = %467
  %473 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %474 = load ptr, ptr %473, align 4
  %475 = getelementptr i8, ptr %474, i32 %442
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %475, i32 %468) #7, !srcloc !12
  br label %480

476:                                              ; preds = %467
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %477 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %478 = load ptr, ptr %477, align 4
  %479 = getelementptr i8, ptr %478, i32 %442
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %479, i32 %468) #7, !srcloc !12
  br label %480

480:                                              ; preds = %476, %472, %435
  %481 = load ptr, ptr %427, align 4
  %482 = getelementptr inbounds %struct.vop_win_phy, ptr %481, i32 0, i32 13
  %483 = load i32, ptr %12, align 4
  %484 = load i32, ptr %111, align 8
  %485 = add i32 %484, 3
  %486 = lshr i32 %485, 2
  %487 = icmp eq ptr %482, null
  br i1 %487, label %491, label %488

488:                                              ; preds = %480
  %489 = load i32, ptr %482, align 4
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %494

491:                                              ; preds = %488, %480
  %492 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %493 = load ptr, ptr %492, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %493, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.29) #7
  br label %536

494:                                              ; preds = %488
  %495 = getelementptr inbounds %struct.vop_win_phy, ptr %481, i32 0, i32 13, i32 1
  %496 = load i16, ptr %495, align 4
  %497 = zext i16 %496 to i32
  %498 = add i32 %483, %497
  %499 = getelementptr inbounds %struct.vop_win_phy, ptr %481, i32 0, i32 13, i32 2
  %500 = load i8, ptr %499, align 2
  %501 = zext i8 %500 to i32
  %502 = getelementptr inbounds %struct.vop_win_phy, ptr %481, i32 0, i32 13, i32 3
  %503 = load i8, ptr %502, align 1, !range !8
  %504 = icmp eq i8 %503, 0
  br i1 %504, label %511, label %505

505:                                              ; preds = %494
  %506 = shl i32 %486, %501
  %507 = and i32 %506, 65535
  %508 = add nuw nsw i32 %501, 16
  %509 = shl i32 %489, %508
  %510 = or i32 %507, %509
  br label %523

511:                                              ; preds = %494
  %512 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %513 = load ptr, ptr %512, align 8
  %514 = ashr i32 %498, 2
  %515 = getelementptr i32, ptr %513, i32 %514
  %516 = load i32, ptr %515, align 4
  %517 = shl i32 %489, %501
  %518 = xor i32 %517, -1
  %519 = and i32 %516, %518
  %520 = and i32 %489, %486
  %521 = shl i32 %520, %501
  %522 = or i32 %519, %521
  store i32 %522, ptr %515, align 4
  br label %523

523:                                              ; preds = %511, %505
  %524 = phi i32 [ %510, %505 ], [ %522, %511 ]
  %525 = getelementptr inbounds %struct.vop_win_phy, ptr %481, i32 0, i32 13, i32 4
  %526 = load i8, ptr %525, align 4, !range !8
  %527 = icmp eq i8 %526, 0
  br i1 %527, label %532, label %528

528:                                              ; preds = %523
  %529 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %530 = load ptr, ptr %529, align 4
  %531 = getelementptr i8, ptr %530, i32 %498
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %531, i32 %524) #7, !srcloc !12
  br label %536

532:                                              ; preds = %523
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %533 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %534 = load ptr, ptr %533, align 4
  %535 = getelementptr i8, ptr %534, i32 %498
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %535, i32 %524) #7, !srcloc !12
  br label %536

536:                                              ; preds = %532, %528, %491
  %537 = load ptr, ptr %427, align 4
  %538 = getelementptr inbounds %struct.vop_win_phy, ptr %537, i32 0, i32 11
  %539 = load i32, ptr %12, align 4
  %540 = icmp eq ptr %538, null
  br i1 %540, label %544, label %541

541:                                              ; preds = %536
  %542 = load i32, ptr %538, align 4
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %547

544:                                              ; preds = %541, %536
  %545 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %546 = load ptr, ptr %545, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %546, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.30) #7
  br label %589

547:                                              ; preds = %541
  %548 = getelementptr inbounds %struct.vop_win_phy, ptr %537, i32 0, i32 11, i32 1
  %549 = load i16, ptr %548, align 4
  %550 = zext i16 %549 to i32
  %551 = add i32 %539, %550
  %552 = getelementptr inbounds %struct.vop_win_phy, ptr %537, i32 0, i32 11, i32 2
  %553 = load i8, ptr %552, align 2
  %554 = zext i8 %553 to i32
  %555 = getelementptr inbounds %struct.vop_win_phy, ptr %537, i32 0, i32 11, i32 3
  %556 = load i8, ptr %555, align 1, !range !8
  %557 = icmp eq i8 %556, 0
  br i1 %557, label %564, label %558

558:                                              ; preds = %547
  %559 = shl i32 %127, %554
  %560 = and i32 %559, 65535
  %561 = add nuw nsw i32 %554, 16
  %562 = shl i32 %542, %561
  %563 = or i32 %560, %562
  br label %576

564:                                              ; preds = %547
  %565 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %566 = load ptr, ptr %565, align 8
  %567 = ashr i32 %551, 2
  %568 = getelementptr i32, ptr %566, i32 %567
  %569 = load i32, ptr %568, align 4
  %570 = shl i32 %542, %554
  %571 = xor i32 %570, -1
  %572 = and i32 %569, %571
  %573 = and i32 %542, %127
  %574 = shl i32 %573, %554
  %575 = or i32 %572, %574
  store i32 %575, ptr %568, align 4
  br label %576

576:                                              ; preds = %564, %558
  %577 = phi i32 [ %563, %558 ], [ %575, %564 ]
  %578 = getelementptr inbounds %struct.vop_win_phy, ptr %537, i32 0, i32 11, i32 4
  %579 = load i8, ptr %578, align 4, !range !8
  %580 = icmp eq i8 %579, 0
  br i1 %580, label %585, label %581

581:                                              ; preds = %576
  %582 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %583 = load ptr, ptr %582, align 4
  %584 = getelementptr i8, ptr %583, i32 %551
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %584, i32 %577) #7, !srcloc !12
  br label %589

585:                                              ; preds = %576
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %586 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %587 = load ptr, ptr %586, align 4
  %588 = getelementptr i8, ptr %587, i32 %551
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %588, i32 %577) #7, !srcloc !12
  br label %589

589:                                              ; preds = %585, %581, %544
  %590 = icmp eq ptr %14, null
  br i1 %590, label %641, label %591

591:                                              ; preds = %589
  %592 = getelementptr inbounds %struct.vop_win_yuv2yuv_data, ptr %14, i32 0, i32 2
  %593 = load i32, ptr %592, align 4
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %641, label %595

595:                                              ; preds = %591
  %596 = icmp eq ptr %592, null
  br i1 %596, label %597, label %600

597:                                              ; preds = %595
  %598 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %599 = load ptr, ptr %598, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %599, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.31) #7
  br label %641

600:                                              ; preds = %595
  %601 = getelementptr inbounds %struct.vop_win_yuv2yuv_data, ptr %14, i32 0, i32 2, i32 1
  %602 = load i16, ptr %601, align 4
  %603 = zext i16 %602 to i32
  %604 = getelementptr inbounds %struct.vop_win_yuv2yuv_data, ptr %14, i32 0, i32 2, i32 2
  %605 = load i8, ptr %604, align 2
  %606 = zext i8 %605 to i32
  %607 = getelementptr inbounds %struct.vop_win_yuv2yuv_data, ptr %14, i32 0, i32 2, i32 3
  %608 = load i8, ptr %607, align 1, !range !8
  %609 = icmp eq i8 %608, 0
  br i1 %609, label %616, label %610

610:                                              ; preds = %600
  %611 = shl nuw i32 %31, %606
  %612 = and i32 %611, 65535
  %613 = add nuw nsw i32 %606, 16
  %614 = shl i32 %593, %613
  %615 = or i32 %612, %614
  br label %628

616:                                              ; preds = %600
  %617 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %618 = load ptr, ptr %617, align 8
  %619 = lshr i32 %603, 2
  %620 = getelementptr i32, ptr %618, i32 %619
  %621 = load i32, ptr %620, align 4
  %622 = shl i32 %593, %606
  %623 = xor i32 %622, -1
  %624 = and i32 %621, %623
  %625 = and i32 %593, %31
  %626 = shl nuw i32 %625, %606
  %627 = or i32 %624, %626
  store i32 %627, ptr %620, align 4
  br label %628

628:                                              ; preds = %616, %610
  %629 = phi i32 [ %615, %610 ], [ %627, %616 ]
  %630 = getelementptr inbounds %struct.vop_win_yuv2yuv_data, ptr %14, i32 0, i32 2, i32 4
  %631 = load i8, ptr %630, align 4, !range !8
  %632 = icmp eq i8 %631, 0
  br i1 %632, label %637, label %633

633:                                              ; preds = %628
  %634 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %635 = load ptr, ptr %634, align 4
  %636 = getelementptr i8, ptr %635, i32 %603
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %636, i32 %629) #7, !srcloc !12
  br label %641

637:                                              ; preds = %628
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %638 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %639 = load ptr, ptr %638, align 4
  %640 = getelementptr i8, ptr %639, i32 %603
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %640, i32 %629) #7, !srcloc !12
  br label %641

641:                                              ; preds = %637, %633, %597, %591, %589
  %642 = load ptr, ptr %427, align 4
  %643 = getelementptr inbounds %struct.vop_win_phy, ptr %642, i32 0, i32 15
  %644 = load i32, ptr %12, align 4
  %645 = load i32, ptr %121, align 4
  %646 = lshr i32 %645, 5
  %647 = and i32 %646, 1
  %648 = icmp eq ptr %643, null
  br i1 %648, label %652, label %649

649:                                              ; preds = %641
  %650 = load i32, ptr %643, align 4
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %652, label %655

652:                                              ; preds = %649, %641
  %653 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %654 = load ptr, ptr %653, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %654, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.32) #7
  br label %697

655:                                              ; preds = %649
  %656 = getelementptr inbounds %struct.vop_win_phy, ptr %642, i32 0, i32 15, i32 1
  %657 = load i16, ptr %656, align 4
  %658 = zext i16 %657 to i32
  %659 = add i32 %644, %658
  %660 = getelementptr inbounds %struct.vop_win_phy, ptr %642, i32 0, i32 15, i32 2
  %661 = load i8, ptr %660, align 2
  %662 = zext i8 %661 to i32
  %663 = getelementptr inbounds %struct.vop_win_phy, ptr %642, i32 0, i32 15, i32 3
  %664 = load i8, ptr %663, align 1, !range !8
  %665 = icmp eq i8 %664, 0
  br i1 %665, label %672, label %666

666:                                              ; preds = %655
  %667 = shl nuw i32 %647, %662
  %668 = and i32 %667, 65535
  %669 = add nuw nsw i32 %662, 16
  %670 = shl i32 %650, %669
  %671 = or i32 %668, %670
  br label %684

672:                                              ; preds = %655
  %673 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %674 = load ptr, ptr %673, align 8
  %675 = ashr i32 %659, 2
  %676 = getelementptr i32, ptr %674, i32 %675
  %677 = load i32, ptr %676, align 4
  %678 = shl i32 %650, %662
  %679 = xor i32 %678, -1
  %680 = and i32 %677, %679
  %681 = and i32 %650, %647
  %682 = shl nuw i32 %681, %662
  %683 = or i32 %680, %682
  store i32 %683, ptr %676, align 4
  br label %684

684:                                              ; preds = %672, %666
  %685 = phi i32 [ %671, %666 ], [ %683, %672 ]
  %686 = getelementptr inbounds %struct.vop_win_phy, ptr %642, i32 0, i32 15, i32 4
  %687 = load i8, ptr %686, align 4, !range !8
  %688 = icmp eq i8 %687, 0
  br i1 %688, label %693, label %689

689:                                              ; preds = %684
  %690 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %691 = load ptr, ptr %690, align 4
  %692 = getelementptr i8, ptr %691, i32 %659
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %692, i32 %685) #7, !srcloc !12
  br label %697

693:                                              ; preds = %684
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %694 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %695 = load ptr, ptr %694, align 4
  %696 = getelementptr i8, ptr %695, i32 %659
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %696, i32 %685) #7, !srcloc !12
  br label %697

697:                                              ; preds = %693, %689, %652
  %698 = load ptr, ptr %427, align 4
  %699 = getelementptr inbounds %struct.vop_win_phy, ptr %698, i32 0, i32 16
  %700 = load i32, ptr %12, align 4
  %701 = load i32, ptr %121, align 4
  %702 = lshr i32 %701, 4
  %703 = and i32 %702, 1
  %704 = icmp eq ptr %699, null
  br i1 %704, label %708, label %705

705:                                              ; preds = %697
  %706 = load i32, ptr %699, align 4
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %708, label %711

708:                                              ; preds = %705, %697
  %709 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %710 = load ptr, ptr %709, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %710, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.33) #7
  br label %753

711:                                              ; preds = %705
  %712 = getelementptr inbounds %struct.vop_win_phy, ptr %698, i32 0, i32 16, i32 1
  %713 = load i16, ptr %712, align 4
  %714 = zext i16 %713 to i32
  %715 = add i32 %700, %714
  %716 = getelementptr inbounds %struct.vop_win_phy, ptr %698, i32 0, i32 16, i32 2
  %717 = load i8, ptr %716, align 2
  %718 = zext i8 %717 to i32
  %719 = getelementptr inbounds %struct.vop_win_phy, ptr %698, i32 0, i32 16, i32 3
  %720 = load i8, ptr %719, align 1, !range !8
  %721 = icmp eq i8 %720, 0
  br i1 %721, label %728, label %722

722:                                              ; preds = %711
  %723 = shl nuw i32 %703, %718
  %724 = and i32 %723, 65535
  %725 = add nuw nsw i32 %718, 16
  %726 = shl i32 %706, %725
  %727 = or i32 %724, %726
  br label %740

728:                                              ; preds = %711
  %729 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %730 = load ptr, ptr %729, align 8
  %731 = ashr i32 %715, 2
  %732 = getelementptr i32, ptr %730, i32 %731
  %733 = load i32, ptr %732, align 4
  %734 = shl i32 %706, %718
  %735 = xor i32 %734, -1
  %736 = and i32 %733, %735
  %737 = and i32 %706, %703
  %738 = shl nuw i32 %737, %718
  %739 = or i32 %736, %738
  store i32 %739, ptr %732, align 4
  br label %740

740:                                              ; preds = %728, %722
  %741 = phi i32 [ %727, %722 ], [ %739, %728 ]
  %742 = getelementptr inbounds %struct.vop_win_phy, ptr %698, i32 0, i32 16, i32 4
  %743 = load i8, ptr %742, align 4, !range !8
  %744 = icmp eq i8 %743, 0
  br i1 %744, label %749, label %745

745:                                              ; preds = %740
  %746 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %747 = load ptr, ptr %746, align 4
  %748 = getelementptr i8, ptr %747, i32 %715
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %748, i32 %741) #7, !srcloc !12
  br label %753

749:                                              ; preds = %740
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %750 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %751 = load ptr, ptr %750, align 4
  %752 = getelementptr i8, ptr %751, i32 %715
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %752, i32 %741) #7, !srcloc !12
  br label %753

753:                                              ; preds = %749, %745, %708
  br i1 %30, label %952, label %754

754:                                              ; preds = %753
  %755 = load ptr, ptr %26, align 8
  %756 = getelementptr inbounds %struct.drm_format_info, ptr %755, i32 0, i32 6
  %757 = load i8, ptr %756, align 2
  %758 = zext i8 %757 to i32
  %759 = getelementptr inbounds %struct.drm_format_info, ptr %755, i32 0, i32 7
  %760 = load i8, ptr %759, align 1
  %761 = zext i8 %760 to i32
  %762 = getelementptr %struct.drm_format_info, ptr %755, i32 0, i32 3, i32 0, i32 1
  %763 = load i8, ptr %762, align 1
  %764 = zext i8 %763 to i32
  %765 = getelementptr %struct.drm_framebuffer, ptr %16, i32 0, i32 15, i32 1
  %766 = load ptr, ptr %765, align 4
  %767 = load i32, ptr %17, align 4
  %768 = ashr i32 %767, 16
  %769 = mul nsw i32 %768, %764
  %770 = sdiv i32 %769, %758
  %771 = load i32, ptr %63, align 4
  %772 = ashr i32 %771, 16
  %773 = getelementptr %struct.drm_framebuffer, ptr %16, i32 0, i32 6, i32 1
  %774 = load i32, ptr %773, align 4
  %775 = mul i32 %772, %774
  %776 = udiv i32 %775, %761
  %777 = add i32 %776, %770
  %778 = getelementptr inbounds %struct.rockchip_gem_object, ptr %766, i32 0, i32 3
  %779 = load i32, ptr %778, align 8
  %780 = add i32 %777, %779
  %781 = getelementptr %struct.drm_framebuffer, ptr %16, i32 0, i32 7, i32 1
  %782 = load i32, ptr %781, align 4
  %783 = add i32 %780, %782
  %784 = load ptr, ptr %427, align 4
  %785 = getelementptr inbounds %struct.vop_win_phy, ptr %784, i32 0, i32 14
  %786 = load i32, ptr %12, align 4
  %787 = add i32 %774, 3
  %788 = lshr i32 %787, 2
  %789 = icmp eq ptr %785, null
  br i1 %789, label %793, label %790

790:                                              ; preds = %754
  %791 = load i32, ptr %785, align 4
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %793, label %796

793:                                              ; preds = %790, %754
  %794 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %795 = load ptr, ptr %794, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %795, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.34) #7
  br label %838

796:                                              ; preds = %790
  %797 = getelementptr inbounds %struct.vop_win_phy, ptr %784, i32 0, i32 14, i32 1
  %798 = load i16, ptr %797, align 4
  %799 = zext i16 %798 to i32
  %800 = add i32 %786, %799
  %801 = getelementptr inbounds %struct.vop_win_phy, ptr %784, i32 0, i32 14, i32 2
  %802 = load i8, ptr %801, align 2
  %803 = zext i8 %802 to i32
  %804 = getelementptr inbounds %struct.vop_win_phy, ptr %784, i32 0, i32 14, i32 3
  %805 = load i8, ptr %804, align 1, !range !8
  %806 = icmp eq i8 %805, 0
  br i1 %806, label %813, label %807

807:                                              ; preds = %796
  %808 = shl i32 %788, %803
  %809 = and i32 %808, 65535
  %810 = add nuw nsw i32 %803, 16
  %811 = shl i32 %791, %810
  %812 = or i32 %809, %811
  br label %825

813:                                              ; preds = %796
  %814 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %815 = load ptr, ptr %814, align 8
  %816 = ashr i32 %800, 2
  %817 = getelementptr i32, ptr %815, i32 %816
  %818 = load i32, ptr %817, align 4
  %819 = shl i32 %791, %803
  %820 = xor i32 %819, -1
  %821 = and i32 %818, %820
  %822 = and i32 %791, %788
  %823 = shl i32 %822, %803
  %824 = or i32 %821, %823
  store i32 %824, ptr %817, align 4
  br label %825

825:                                              ; preds = %813, %807
  %826 = phi i32 [ %812, %807 ], [ %824, %813 ]
  %827 = getelementptr inbounds %struct.vop_win_phy, ptr %784, i32 0, i32 14, i32 4
  %828 = load i8, ptr %827, align 4, !range !8
  %829 = icmp eq i8 %828, 0
  br i1 %829, label %834, label %830

830:                                              ; preds = %825
  %831 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %832 = load ptr, ptr %831, align 4
  %833 = getelementptr i8, ptr %832, i32 %800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %833, i32 %826) #7, !srcloc !12
  br label %838

834:                                              ; preds = %825
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %835 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %836 = load ptr, ptr %835, align 4
  %837 = getelementptr i8, ptr %836, i32 %800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %837, i32 %826) #7, !srcloc !12
  br label %838

838:                                              ; preds = %834, %830, %793
  %839 = load ptr, ptr %427, align 4
  %840 = getelementptr inbounds %struct.vop_win_phy, ptr %839, i32 0, i32 12
  %841 = load i32, ptr %12, align 4
  %842 = icmp eq ptr %840, null
  br i1 %842, label %846, label %843

843:                                              ; preds = %838
  %844 = load i32, ptr %840, align 4
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %846, label %849

846:                                              ; preds = %843, %838
  %847 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %848 = load ptr, ptr %847, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %848, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.35) #7
  br label %891

849:                                              ; preds = %843
  %850 = getelementptr inbounds %struct.vop_win_phy, ptr %839, i32 0, i32 12, i32 1
  %851 = load i16, ptr %850, align 4
  %852 = zext i16 %851 to i32
  %853 = add i32 %841, %852
  %854 = getelementptr inbounds %struct.vop_win_phy, ptr %839, i32 0, i32 12, i32 2
  %855 = load i8, ptr %854, align 2
  %856 = zext i8 %855 to i32
  %857 = getelementptr inbounds %struct.vop_win_phy, ptr %839, i32 0, i32 12, i32 3
  %858 = load i8, ptr %857, align 1, !range !8
  %859 = icmp eq i8 %858, 0
  br i1 %859, label %866, label %860

860:                                              ; preds = %849
  %861 = shl i32 %783, %856
  %862 = and i32 %861, 65535
  %863 = add nuw nsw i32 %856, 16
  %864 = shl i32 %844, %863
  %865 = or i32 %862, %864
  br label %878

866:                                              ; preds = %849
  %867 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %868 = load ptr, ptr %867, align 8
  %869 = ashr i32 %853, 2
  %870 = getelementptr i32, ptr %868, i32 %869
  %871 = load i32, ptr %870, align 4
  %872 = shl i32 %844, %856
  %873 = xor i32 %872, -1
  %874 = and i32 %871, %873
  %875 = and i32 %844, %783
  %876 = shl i32 %875, %856
  %877 = or i32 %874, %876
  store i32 %877, ptr %870, align 4
  br label %878

878:                                              ; preds = %866, %860
  %879 = phi i32 [ %865, %860 ], [ %877, %866 ]
  %880 = getelementptr inbounds %struct.vop_win_phy, ptr %839, i32 0, i32 12, i32 4
  %881 = load i8, ptr %880, align 4, !range !8
  %882 = icmp eq i8 %881, 0
  br i1 %882, label %887, label %883

883:                                              ; preds = %878
  %884 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %885 = load ptr, ptr %884, align 4
  %886 = getelementptr i8, ptr %885, i32 %853
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %886, i32 %879) #7, !srcloc !12
  br label %891

887:                                              ; preds = %878
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %888 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %889 = load ptr, ptr %888, align 4
  %890 = getelementptr i8, ptr %889, i32 %853
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %890, i32 %879) #7, !srcloc !12
  br label %891

891:                                              ; preds = %887, %883, %846
  %892 = getelementptr inbounds %struct.vop_win_yuv2yuv_data, ptr %14, i32 0, i32 1
  %893 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %894 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %895 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  br label %896

896:                                              ; preds = %949, %891
  %897 = phi i32 [ 0, %891 ], [ %950, %949 ]
  br i1 %590, label %949, label %898

898:                                              ; preds = %896
  %899 = load ptr, ptr %892, align 4
  %900 = getelementptr [12 x %struct.vop_reg], ptr %899, i32 0, i32 %897
  %901 = load i32, ptr %900, align 4
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %949, label %903

903:                                              ; preds = %898
  %904 = getelementptr [12 x i32], ptr @bt601_yuv2rgb, i32 0, i32 %897
  %905 = load i32, ptr %904, align 4
  %906 = icmp eq ptr %900, null
  br i1 %906, label %907, label %909

907:                                              ; preds = %903
  %908 = load ptr, ptr %895, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %908, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.36) #7
  br label %949

909:                                              ; preds = %903
  %910 = load i32, ptr %14, align 4
  %911 = getelementptr [12 x %struct.vop_reg], ptr %899, i32 0, i32 %897, i32 1
  %912 = load i16, ptr %911, align 4
  %913 = zext i16 %912 to i32
  %914 = add i32 %910, %913
  %915 = getelementptr [12 x %struct.vop_reg], ptr %899, i32 0, i32 %897, i32 2
  %916 = load i8, ptr %915, align 2
  %917 = zext i8 %916 to i32
  %918 = getelementptr [12 x %struct.vop_reg], ptr %899, i32 0, i32 %897, i32 3
  %919 = load i8, ptr %918, align 1, !range !8
  %920 = icmp eq i8 %919, 0
  br i1 %920, label %927, label %921

921:                                              ; preds = %909
  %922 = shl i32 %905, %917
  %923 = and i32 %922, 65535
  %924 = add nuw nsw i32 %917, 16
  %925 = shl i32 %901, %924
  %926 = or i32 %923, %925
  br label %938

927:                                              ; preds = %909
  %928 = load ptr, ptr %893, align 8
  %929 = ashr i32 %914, 2
  %930 = getelementptr i32, ptr %928, i32 %929
  %931 = load i32, ptr %930, align 4
  %932 = shl i32 %901, %917
  %933 = xor i32 %932, -1
  %934 = and i32 %931, %933
  %935 = and i32 %905, %901
  %936 = shl i32 %935, %917
  %937 = or i32 %934, %936
  store i32 %937, ptr %930, align 4
  br label %938

938:                                              ; preds = %927, %921
  %939 = phi i32 [ %926, %921 ], [ %937, %927 ]
  %940 = getelementptr [12 x %struct.vop_reg], ptr %899, i32 0, i32 %897, i32 4
  %941 = load i8, ptr %940, align 4, !range !8
  %942 = icmp eq i8 %941, 0
  br i1 %942, label %946, label %943

943:                                              ; preds = %938
  %944 = load ptr, ptr %894, align 4
  %945 = getelementptr i8, ptr %944, i32 %914
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %945, i32 %939) #7, !srcloc !12
  br label %949

946:                                              ; preds = %938
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %947 = load ptr, ptr %894, align 4
  %948 = getelementptr i8, ptr %947, i32 %914
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %948, i32 %939) #7, !srcloc !12
  br label %949

949:                                              ; preds = %946, %943, %907, %898, %896
  %950 = add nuw nsw i32 %897, 1
  %951 = icmp eq i32 %950, 12
  br i1 %951, label %952, label %896

952:                                              ; preds = %949, %753
  %953 = load ptr, ptr %427, align 4
  %954 = load ptr, ptr %953, align 4
  %955 = icmp eq ptr %954, null
  br i1 %955, label %2340, label %956

956:                                              ; preds = %952
  %957 = load i32, ptr %79, align 4
  %958 = load i32, ptr %18, align 4
  %959 = sub i32 %957, %958
  %960 = load i32, ptr %72, align 4
  %961 = load i32, ptr %74, align 4
  %962 = sub i32 %960, %961
  %963 = load ptr, ptr %26, align 8
  %964 = getelementptr inbounds %struct.drm_format_info, ptr %963, i32 0, i32 6
  %965 = load i8, ptr %964, align 2
  %966 = zext i8 %965 to i32
  %967 = udiv i32 %60, %966
  %968 = getelementptr inbounds %struct.drm_format_info, ptr %963, i32 0, i32 7
  %969 = load i8, ptr %968, align 1
  %970 = zext i8 %969 to i32
  %971 = udiv i32 %66, %970
  %972 = getelementptr inbounds %struct.drm_format_info, ptr %963, i32 0, i32 9
  %973 = load i8, ptr %972, align 1, !range !8
  %974 = icmp eq i8 %973, 0
  %975 = icmp ugt i32 %959, 3840
  br i1 %975, label %976, label %979

976:                                              ; preds = %956
  %977 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %978 = load ptr, ptr %977, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %978, ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #7
  br label %2340

979:                                              ; preds = %956
  %980 = load ptr, ptr %954, align 4
  %981 = icmp eq ptr %980, null
  br i1 %981, label %982, label %1209

982:                                              ; preds = %979
  %983 = getelementptr inbounds %struct.vop_scl_regs, ptr %954, i32 0, i32 1
  %984 = shl nsw i32 %60, 12
  %985 = add nsw i32 %984, -4096
  %986 = add nsw i32 %959, -1
  %987 = sdiv i32 %985, %986
  %988 = and i32 %987, 65535
  %989 = load i32, ptr %983, align 4
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %991, label %994

991:                                              ; preds = %982
  %992 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %993 = load ptr, ptr %992, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %993, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.47) #7
  br label %1037

994:                                              ; preds = %982
  %995 = load i32, ptr %12, align 4
  %996 = getelementptr inbounds %struct.vop_scl_regs, ptr %954, i32 0, i32 1, i32 1
  %997 = load i16, ptr %996, align 4
  %998 = zext i16 %997 to i32
  %999 = add i32 %995, %998
  %1000 = getelementptr inbounds %struct.vop_scl_regs, ptr %954, i32 0, i32 1, i32 2
  %1001 = load i8, ptr %1000, align 2
  %1002 = zext i8 %1001 to i32
  %1003 = getelementptr inbounds %struct.vop_scl_regs, ptr %954, i32 0, i32 1, i32 3
  %1004 = load i8, ptr %1003, align 1, !range !8
  %1005 = icmp eq i8 %1004, 0
  br i1 %1005, label %1012, label %1006

1006:                                             ; preds = %994
  %1007 = shl i32 %987, %1002
  %1008 = and i32 %1007, 65535
  %1009 = add nuw nsw i32 %1002, 16
  %1010 = shl i32 %989, %1009
  %1011 = or i32 %1008, %1010
  br label %1024

1012:                                             ; preds = %994
  %1013 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %1014 = load ptr, ptr %1013, align 8
  %1015 = ashr i32 %999, 2
  %1016 = getelementptr i32, ptr %1014, i32 %1015
  %1017 = load i32, ptr %1016, align 4
  %1018 = shl i32 %989, %1002
  %1019 = xor i32 %1018, -1
  %1020 = and i32 %1017, %1019
  %1021 = and i32 %988, %989
  %1022 = shl i32 %1021, %1002
  %1023 = or i32 %1020, %1022
  store i32 %1023, ptr %1016, align 4
  br label %1024

1024:                                             ; preds = %1012, %1006
  %1025 = phi i32 [ %1011, %1006 ], [ %1023, %1012 ]
  %1026 = getelementptr inbounds %struct.vop_scl_regs, ptr %954, i32 0, i32 1, i32 4
  %1027 = load i8, ptr %1026, align 4, !range !8
  %1028 = icmp eq i8 %1027, 0
  br i1 %1028, label %1033, label %1029

1029:                                             ; preds = %1024
  %1030 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1031 = load ptr, ptr %1030, align 4
  %1032 = getelementptr i8, ptr %1031, i32 %999
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1032, i32 %1025) #7, !srcloc !12
  br label %1037

1033:                                             ; preds = %1024
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1034 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1035 = load ptr, ptr %1034, align 4
  %1036 = getelementptr i8, ptr %1035, i32 %999
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1036, i32 %1025) #7, !srcloc !12
  br label %1037

1037:                                             ; preds = %1033, %1029, %991
  %1038 = load ptr, ptr %427, align 4
  %1039 = load ptr, ptr %1038, align 4
  %1040 = getelementptr inbounds %struct.vop_scl_regs, ptr %1039, i32 0, i32 2
  %1041 = shl nsw i32 %66, 12
  %1042 = add nsw i32 %1041, -4096
  %1043 = add i32 %962, -1
  %1044 = sdiv i32 %1042, %1043
  %1045 = and i32 %1044, 65535
  %1046 = load i32, ptr %1040, align 4
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1048, label %1051

1048:                                             ; preds = %1037
  %1049 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1050 = load ptr, ptr %1049, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1050, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.48) #7
  br label %1094

1051:                                             ; preds = %1037
  %1052 = load i32, ptr %12, align 4
  %1053 = getelementptr inbounds %struct.vop_scl_regs, ptr %1039, i32 0, i32 2, i32 1
  %1054 = load i16, ptr %1053, align 4
  %1055 = zext i16 %1054 to i32
  %1056 = add i32 %1052, %1055
  %1057 = getelementptr inbounds %struct.vop_scl_regs, ptr %1039, i32 0, i32 2, i32 2
  %1058 = load i8, ptr %1057, align 2
  %1059 = zext i8 %1058 to i32
  %1060 = getelementptr inbounds %struct.vop_scl_regs, ptr %1039, i32 0, i32 2, i32 3
  %1061 = load i8, ptr %1060, align 1, !range !8
  %1062 = icmp eq i8 %1061, 0
  br i1 %1062, label %1069, label %1063

1063:                                             ; preds = %1051
  %1064 = shl i32 %1044, %1059
  %1065 = and i32 %1064, 65535
  %1066 = add nuw nsw i32 %1059, 16
  %1067 = shl i32 %1046, %1066
  %1068 = or i32 %1065, %1067
  br label %1081

1069:                                             ; preds = %1051
  %1070 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %1071 = load ptr, ptr %1070, align 8
  %1072 = ashr i32 %1056, 2
  %1073 = getelementptr i32, ptr %1071, i32 %1072
  %1074 = load i32, ptr %1073, align 4
  %1075 = shl i32 %1046, %1059
  %1076 = xor i32 %1075, -1
  %1077 = and i32 %1074, %1076
  %1078 = and i32 %1045, %1046
  %1079 = shl i32 %1078, %1059
  %1080 = or i32 %1077, %1079
  store i32 %1080, ptr %1073, align 4
  br label %1081

1081:                                             ; preds = %1069, %1063
  %1082 = phi i32 [ %1068, %1063 ], [ %1080, %1069 ]
  %1083 = getelementptr inbounds %struct.vop_scl_regs, ptr %1039, i32 0, i32 2, i32 4
  %1084 = load i8, ptr %1083, align 4, !range !8
  %1085 = icmp eq i8 %1084, 0
  br i1 %1085, label %1090, label %1086

1086:                                             ; preds = %1081
  %1087 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1088 = load ptr, ptr %1087, align 4
  %1089 = getelementptr i8, ptr %1088, i32 %1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1089, i32 %1082) #7, !srcloc !12
  br label %1094

1090:                                             ; preds = %1081
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1091 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1092 = load ptr, ptr %1091, align 4
  %1093 = getelementptr i8, ptr %1092, i32 %1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1093, i32 %1082) #7, !srcloc !12
  br label %1094

1094:                                             ; preds = %1090, %1086, %1048
  br i1 %974, label %2340, label %1095

1095:                                             ; preds = %1094
  %1096 = load ptr, ptr %427, align 4
  %1097 = load ptr, ptr %1096, align 4
  %1098 = getelementptr inbounds %struct.vop_scl_regs, ptr %1097, i32 0, i32 3
  %1099 = shl i32 %967, 12
  %1100 = and i32 %1099, 268431360
  %1101 = add nsw i32 %1100, -4096
  %1102 = sdiv i32 %1101, %986
  %1103 = and i32 %1102, 65535
  %1104 = load i32, ptr %1098, align 4
  %1105 = icmp eq i32 %1104, 0
  br i1 %1105, label %1106, label %1109

1106:                                             ; preds = %1095
  %1107 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1108 = load ptr, ptr %1107, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1108, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.49) #7
  br label %1152

1109:                                             ; preds = %1095
  %1110 = load i32, ptr %12, align 4
  %1111 = getelementptr inbounds %struct.vop_scl_regs, ptr %1097, i32 0, i32 3, i32 1
  %1112 = load i16, ptr %1111, align 4
  %1113 = zext i16 %1112 to i32
  %1114 = add i32 %1110, %1113
  %1115 = getelementptr inbounds %struct.vop_scl_regs, ptr %1097, i32 0, i32 3, i32 2
  %1116 = load i8, ptr %1115, align 2
  %1117 = zext i8 %1116 to i32
  %1118 = getelementptr inbounds %struct.vop_scl_regs, ptr %1097, i32 0, i32 3, i32 3
  %1119 = load i8, ptr %1118, align 1, !range !8
  %1120 = icmp eq i8 %1119, 0
  br i1 %1120, label %1127, label %1121

1121:                                             ; preds = %1109
  %1122 = shl i32 %1102, %1117
  %1123 = and i32 %1122, 65535
  %1124 = add nuw nsw i32 %1117, 16
  %1125 = shl i32 %1104, %1124
  %1126 = or i32 %1123, %1125
  br label %1139

1127:                                             ; preds = %1109
  %1128 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %1129 = load ptr, ptr %1128, align 8
  %1130 = ashr i32 %1114, 2
  %1131 = getelementptr i32, ptr %1129, i32 %1130
  %1132 = load i32, ptr %1131, align 4
  %1133 = shl i32 %1104, %1117
  %1134 = xor i32 %1133, -1
  %1135 = and i32 %1132, %1134
  %1136 = and i32 %1103, %1104
  %1137 = shl i32 %1136, %1117
  %1138 = or i32 %1135, %1137
  store i32 %1138, ptr %1131, align 4
  br label %1139

1139:                                             ; preds = %1127, %1121
  %1140 = phi i32 [ %1126, %1121 ], [ %1138, %1127 ]
  %1141 = getelementptr inbounds %struct.vop_scl_regs, ptr %1097, i32 0, i32 3, i32 4
  %1142 = load i8, ptr %1141, align 4, !range !8
  %1143 = icmp eq i8 %1142, 0
  br i1 %1143, label %1148, label %1144

1144:                                             ; preds = %1139
  %1145 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1146 = load ptr, ptr %1145, align 4
  %1147 = getelementptr i8, ptr %1146, i32 %1114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1147, i32 %1140) #7, !srcloc !12
  br label %1152

1148:                                             ; preds = %1139
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1149 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1150 = load ptr, ptr %1149, align 4
  %1151 = getelementptr i8, ptr %1150, i32 %1114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1151, i32 %1140) #7, !srcloc !12
  br label %1152

1152:                                             ; preds = %1148, %1144, %1106
  %1153 = load ptr, ptr %427, align 4
  %1154 = load ptr, ptr %1153, align 4
  %1155 = getelementptr inbounds %struct.vop_scl_regs, ptr %1154, i32 0, i32 4
  %1156 = shl i32 %971, 12
  %1157 = and i32 %1156, 268431360
  %1158 = add nsw i32 %1157, -4096
  %1159 = sdiv i32 %1158, %1043
  %1160 = and i32 %1159, 65535
  %1161 = load i32, ptr %1155, align 4
  %1162 = icmp eq i32 %1161, 0
  br i1 %1162, label %1163, label %1166

1163:                                             ; preds = %1152
  %1164 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1165 = load ptr, ptr %1164, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1165, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.50) #7
  br label %2340

1166:                                             ; preds = %1152
  %1167 = load i32, ptr %12, align 4
  %1168 = getelementptr inbounds %struct.vop_scl_regs, ptr %1154, i32 0, i32 4, i32 1
  %1169 = load i16, ptr %1168, align 4
  %1170 = zext i16 %1169 to i32
  %1171 = add i32 %1167, %1170
  %1172 = getelementptr inbounds %struct.vop_scl_regs, ptr %1154, i32 0, i32 4, i32 2
  %1173 = load i8, ptr %1172, align 2
  %1174 = zext i8 %1173 to i32
  %1175 = getelementptr inbounds %struct.vop_scl_regs, ptr %1154, i32 0, i32 4, i32 3
  %1176 = load i8, ptr %1175, align 1, !range !8
  %1177 = icmp eq i8 %1176, 0
  br i1 %1177, label %1184, label %1178

1178:                                             ; preds = %1166
  %1179 = shl i32 %1159, %1174
  %1180 = and i32 %1179, 65535
  %1181 = add nuw nsw i32 %1174, 16
  %1182 = shl i32 %1161, %1181
  %1183 = or i32 %1180, %1182
  br label %1196

1184:                                             ; preds = %1166
  %1185 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %1186 = load ptr, ptr %1185, align 8
  %1187 = ashr i32 %1171, 2
  %1188 = getelementptr i32, ptr %1186, i32 %1187
  %1189 = load i32, ptr %1188, align 4
  %1190 = shl i32 %1161, %1174
  %1191 = xor i32 %1190, -1
  %1192 = and i32 %1189, %1191
  %1193 = and i32 %1160, %1161
  %1194 = shl i32 %1193, %1174
  %1195 = or i32 %1192, %1194
  store i32 %1195, ptr %1188, align 4
  br label %1196

1196:                                             ; preds = %1184, %1178
  %1197 = phi i32 [ %1183, %1178 ], [ %1195, %1184 ]
  %1198 = getelementptr inbounds %struct.vop_scl_regs, ptr %1154, i32 0, i32 4, i32 4
  %1199 = load i8, ptr %1198, align 4, !range !8
  %1200 = icmp eq i8 %1199, 0
  br i1 %1200, label %1205, label %1201

1201:                                             ; preds = %1196
  %1202 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1203 = load ptr, ptr %1202, align 4
  %1204 = getelementptr i8, ptr %1203, i32 %1171
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1204, i32 %1197) #7, !srcloc !12
  br label %2340

1205:                                             ; preds = %1196
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1206 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1207 = load ptr, ptr %1206, align 4
  %1208 = getelementptr i8, ptr %1207, i32 %1171
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1208, i32 %1197) #7, !srcloc !12
  br label %2340

1209:                                             ; preds = %979
  %1210 = icmp slt i32 %60, %959
  %1211 = icmp sgt i32 %60, %959
  %1212 = select i1 %1211, i32 2, i32 0
  %1213 = select i1 %1210, i32 1, i32 %1212
  %1214 = icmp slt i32 %66, %962
  %1215 = icmp sgt i32 %66, %962
  %1216 = select i1 %1215, i32 2, i32 0
  %1217 = select i1 %1214, i32 1, i32 %1216
  br i1 %974, label %1236, label %1218

1218:                                             ; preds = %1209
  %1219 = and i32 %967, 65535
  %1220 = icmp ult i32 %1219, %959
  %1221 = icmp ugt i32 %1219, %959
  %1222 = select i1 %1221, i32 2, i32 0
  %1223 = select i1 %1220, i32 1, i32 %1222
  %1224 = and i32 %971, 65535
  %1225 = icmp slt i32 %1224, %962
  %1226 = icmp sgt i32 %1224, %962
  %1227 = select i1 %1226, i16 2, i16 0
  %1228 = select i1 %1225, i16 1, i16 %1227
  %1229 = icmp eq i32 %1223, 2
  br i1 %1229, label %1230, label %1233

1230:                                             ; preds = %1218
  %1231 = icmp ult i32 %959, 1281
  %1232 = zext i1 %1231 to i32
  br label %1248

1233:                                             ; preds = %1218
  %1234 = icmp ult i32 %1219, 1281
  %1235 = zext i1 %1234 to i32
  br label %1248

1236:                                             ; preds = %1209
  %1237 = icmp eq i32 %1213, 2
  br i1 %1237, label %1238, label %1243

1238:                                             ; preds = %1236
  %1239 = icmp ugt i32 %959, 2560
  br i1 %1239, label %1248, label %1240

1240:                                             ; preds = %1238
  %1241 = icmp ugt i32 %959, 1920
  %1242 = select i1 %1241, i32 3, i32 4
  br label %1248

1243:                                             ; preds = %1236
  %1244 = icmp sgt i32 %59, 167837695
  br i1 %1244, label %1248, label %1245

1245:                                             ; preds = %1243
  %1246 = icmp sgt i32 %59, 125894655
  %1247 = select i1 %1246, i32 3, i32 4
  br label %1248

1248:                                             ; preds = %1245, %1243, %1240, %1238, %1233, %1230
  %1249 = phi i32 [ 2, %1230 ], [ %1223, %1233 ], [ 0, %1238 ], [ 0, %1240 ], [ 0, %1243 ], [ 0, %1245 ]
  %1250 = phi i16 [ %1228, %1230 ], [ %1228, %1233 ], [ 0, %1238 ], [ 0, %1240 ], [ 0, %1243 ], [ 0, %1245 ]
  %1251 = phi i32 [ %1232, %1230 ], [ %1235, %1233 ], [ 2, %1238 ], [ %1242, %1240 ], [ 2, %1243 ], [ %1247, %1245 ]
  %1252 = getelementptr inbounds %struct.vop_scl_extension, ptr %980, i32 0, i32 20
  %1253 = load i32, ptr %1252, align 4
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1255, label %1258

1255:                                             ; preds = %1248
  %1256 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1257 = load ptr, ptr %1256, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1257, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.51) #7
  br label %1301

1258:                                             ; preds = %1248
  %1259 = load i32, ptr %12, align 4
  %1260 = getelementptr inbounds %struct.vop_scl_extension, ptr %980, i32 0, i32 20, i32 1
  %1261 = load i16, ptr %1260, align 4
  %1262 = zext i16 %1261 to i32
  %1263 = add i32 %1259, %1262
  %1264 = getelementptr inbounds %struct.vop_scl_extension, ptr %980, i32 0, i32 20, i32 2
  %1265 = load i8, ptr %1264, align 2
  %1266 = zext i8 %1265 to i32
  %1267 = getelementptr inbounds %struct.vop_scl_extension, ptr %980, i32 0, i32 20, i32 3
  %1268 = load i8, ptr %1267, align 1, !range !8
  %1269 = icmp eq i8 %1268, 0
  br i1 %1269, label %1276, label %1270

1270:                                             ; preds = %1258
  %1271 = shl i32 %1251, %1266
  %1272 = and i32 %1271, 65535
  %1273 = add nuw nsw i32 %1266, 16
  %1274 = shl i32 %1253, %1273
  %1275 = or i32 %1272, %1274
  br label %1288

1276:                                             ; preds = %1258
  %1277 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %1278 = load ptr, ptr %1277, align 8
  %1279 = ashr i32 %1263, 2
  %1280 = getelementptr i32, ptr %1278, i32 %1279
  %1281 = load i32, ptr %1280, align 4
  %1282 = shl i32 %1253, %1266
  %1283 = xor i32 %1282, -1
  %1284 = and i32 %1281, %1283
  %1285 = and i32 %1253, %1251
  %1286 = shl i32 %1285, %1266
  %1287 = or i32 %1284, %1286
  store i32 %1287, ptr %1280, align 4
  br label %1288

1288:                                             ; preds = %1276, %1270
  %1289 = phi i32 [ %1275, %1270 ], [ %1287, %1276 ]
  %1290 = getelementptr inbounds %struct.vop_scl_extension, ptr %980, i32 0, i32 20, i32 4
  %1291 = load i8, ptr %1290, align 4, !range !8
  %1292 = icmp eq i8 %1291, 0
  br i1 %1292, label %1297, label %1293

1293:                                             ; preds = %1288
  %1294 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1295 = load ptr, ptr %1294, align 4
  %1296 = getelementptr i8, ptr %1295, i32 %1263
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1296, i32 %1289) #7, !srcloc !12
  br label %1301

1297:                                             ; preds = %1288
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1298 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1299 = load ptr, ptr %1298, align 4
  %1300 = getelementptr i8, ptr %1299, i32 %1263
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1300, i32 %1289) #7, !srcloc !12
  br label %1301

1301:                                             ; preds = %1297, %1293, %1255
  switch i32 %1251, label %1312 [
    i32 2, label %1302
    i32 3, label %1313
  ]

1302:                                             ; preds = %1301
  %1303 = icmp eq i32 %1217, 0
  br i1 %1303, label %1307, label %1304

1304:                                             ; preds = %1302
  %1305 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1306 = load ptr, ptr %1305, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1306, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52) #7
  br label %2340

1307:                                             ; preds = %1302
  %1308 = icmp eq i16 %1250, 0
  br i1 %1308, label %1313, label %1309

1309:                                             ; preds = %1307
  %1310 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1311 = load ptr, ptr %1310, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1311, ptr noundef nonnull @.str, ptr noundef nonnull @.str.53) #7
  br label %2340

1312:                                             ; preds = %1301
  br label %1313

1313:                                             ; preds = %1312, %1307, %1301
  %1314 = phi i32 [ 1, %1312 ], [ 0, %1307 ], [ 0, %1301 ]
  switch i32 %1213, label %1323 [
    i32 1, label %1316
    i32 2, label %1315
  ]

1315:                                             ; preds = %1313
  br label %1316

1316:                                             ; preds = %1315, %1313
  %1317 = phi i32 [ 12, %1315 ], [ 16, %1313 ]
  %1318 = phi i32 [ -6144, %1315 ], [ -98304, %1313 ]
  %1319 = shl i32 %60, %1317
  %1320 = add i32 %1319, %1318
  %1321 = add nsw i32 %959, -1
  %1322 = sdiv i32 %1320, %1321
  br label %1323

1323:                                             ; preds = %1316, %1313
  %1324 = phi i32 [ 4096, %1313 ], [ %1322, %1316 ]
  %1325 = and i32 %1324, 65535
  %1326 = load ptr, ptr %427, align 4
  %1327 = load ptr, ptr %1326, align 4
  %1328 = getelementptr inbounds %struct.vop_scl_regs, ptr %1327, i32 0, i32 1
  %1329 = load i32, ptr %1328, align 4
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1331, label %1334

1331:                                             ; preds = %1323
  %1332 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1333 = load ptr, ptr %1332, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1333, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.47) #7
  br label %1377

1334:                                             ; preds = %1323
  %1335 = load i32, ptr %12, align 4
  %1336 = getelementptr inbounds %struct.vop_scl_regs, ptr %1327, i32 0, i32 1, i32 1
  %1337 = load i16, ptr %1336, align 4
  %1338 = zext i16 %1337 to i32
  %1339 = add i32 %1335, %1338
  %1340 = getelementptr inbounds %struct.vop_scl_regs, ptr %1327, i32 0, i32 1, i32 2
  %1341 = load i8, ptr %1340, align 2
  %1342 = zext i8 %1341 to i32
  %1343 = getelementptr inbounds %struct.vop_scl_regs, ptr %1327, i32 0, i32 1, i32 3
  %1344 = load i8, ptr %1343, align 1, !range !8
  %1345 = icmp eq i8 %1344, 0
  br i1 %1345, label %1352, label %1346

1346:                                             ; preds = %1334
  %1347 = shl i32 %1324, %1342
  %1348 = and i32 %1347, 65535
  %1349 = add nuw nsw i32 %1342, 16
  %1350 = shl i32 %1329, %1349
  %1351 = or i32 %1348, %1350
  br label %1364

1352:                                             ; preds = %1334
  %1353 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %1354 = load ptr, ptr %1353, align 8
  %1355 = ashr i32 %1339, 2
  %1356 = getelementptr i32, ptr %1354, i32 %1355
  %1357 = load i32, ptr %1356, align 4
  %1358 = shl i32 %1329, %1342
  %1359 = xor i32 %1358, -1
  %1360 = and i32 %1357, %1359
  %1361 = and i32 %1325, %1329
  %1362 = shl i32 %1361, %1342
  %1363 = or i32 %1360, %1362
  store i32 %1363, ptr %1356, align 4
  br label %1364

1364:                                             ; preds = %1352, %1346
  %1365 = phi i32 [ %1351, %1346 ], [ %1363, %1352 ]
  %1366 = getelementptr inbounds %struct.vop_scl_regs, ptr %1327, i32 0, i32 1, i32 4
  %1367 = load i8, ptr %1366, align 4, !range !8
  %1368 = icmp eq i8 %1367, 0
  br i1 %1368, label %1373, label %1369

1369:                                             ; preds = %1364
  %1370 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1371 = load ptr, ptr %1370, align 4
  %1372 = getelementptr i8, ptr %1371, i32 %1339
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1372, i32 %1365) #7, !srcloc !12
  br label %1377

1373:                                             ; preds = %1364
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1374 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1375 = load ptr, ptr %1374, align 4
  %1376 = getelementptr i8, ptr %1375, i32 %1339
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1376, i32 %1365) #7, !srcloc !12
  br label %1377

1377:                                             ; preds = %1373, %1369, %1331
  switch i32 %1217, label %1405 [
    i32 1, label %1378
    i32 2, label %1383
  ]

1378:                                             ; preds = %1377
  %1379 = and i32 %65, -65536
  %1380 = add i32 %1379, -98304
  %1381 = add i32 %962, -1
  %1382 = sdiv i32 %1380, %1381
  br label %1405

1383:                                             ; preds = %1377
  %1384 = shl i32 %962, 2
  %1385 = icmp ugt i32 %1384, %66
  %1386 = shl i32 %962, 1
  %1387 = icmp ugt i32 %1386, %66
  %1388 = select i1 %1387, i32 1, i32 2
  %1389 = select i1 %1385, i32 %1388, i32 4
  %1390 = add nsw i32 %1389, %67
  %1391 = sdiv i32 %1390, %1389
  %1392 = icmp eq i32 %1391, %962
  br i1 %1392, label %1393, label %1400

1393:                                             ; preds = %1383
  %1394 = shl nsw i32 %66, 12
  %1395 = add nsw i32 %1394, -6144
  %1396 = add i32 %962, -1
  %1397 = sdiv i32 %1395, %1396
  %1398 = and i32 %1397, 65535
  %1399 = udiv i32 %1398, %1389
  br label %1405

1400:                                             ; preds = %1383
  %1401 = shl i32 %1391, 12
  %1402 = add i32 %1401, -6144
  %1403 = add i32 %962, -1
  %1404 = sdiv i32 %1402, %1403
  br label %1405

1405:                                             ; preds = %1400, %1393, %1378, %1377
  %1406 = phi i32 [ 0, %1377 ], [ 0, %1378 ], [ %1389, %1400 ], [ %1389, %1393 ]
  %1407 = phi i32 [ 4096, %1377 ], [ %1382, %1378 ], [ %1404, %1400 ], [ %1399, %1393 ]
  %1408 = and i32 %1407, 65535
  %1409 = load ptr, ptr %427, align 4
  %1410 = load ptr, ptr %1409, align 4
  %1411 = getelementptr inbounds %struct.vop_scl_regs, ptr %1410, i32 0, i32 2
  %1412 = load i32, ptr %1411, align 4
  %1413 = icmp eq i32 %1412, 0
  br i1 %1413, label %1414, label %1417

1414:                                             ; preds = %1405
  %1415 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1416 = load ptr, ptr %1415, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1416, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.48) #7
  br label %1460

1417:                                             ; preds = %1405
  %1418 = load i32, ptr %12, align 4
  %1419 = getelementptr inbounds %struct.vop_scl_regs, ptr %1410, i32 0, i32 2, i32 1
  %1420 = load i16, ptr %1419, align 4
  %1421 = zext i16 %1420 to i32
  %1422 = add i32 %1418, %1421
  %1423 = getelementptr inbounds %struct.vop_scl_regs, ptr %1410, i32 0, i32 2, i32 2
  %1424 = load i8, ptr %1423, align 2
  %1425 = zext i8 %1424 to i32
  %1426 = getelementptr inbounds %struct.vop_scl_regs, ptr %1410, i32 0, i32 2, i32 3
  %1427 = load i8, ptr %1426, align 1, !range !8
  %1428 = icmp eq i8 %1427, 0
  br i1 %1428, label %1435, label %1429

1429:                                             ; preds = %1417
  %1430 = shl i32 %1407, %1425
  %1431 = and i32 %1430, 65535
  %1432 = add nuw nsw i32 %1425, 16
  %1433 = shl i32 %1412, %1432
  %1434 = or i32 %1431, %1433
  br label %1447

1435:                                             ; preds = %1417
  %1436 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %1437 = load ptr, ptr %1436, align 8
  %1438 = ashr i32 %1422, 2
  %1439 = getelementptr i32, ptr %1437, i32 %1438
  %1440 = load i32, ptr %1439, align 4
  %1441 = shl i32 %1412, %1425
  %1442 = xor i32 %1441, -1
  %1443 = and i32 %1440, %1442
  %1444 = and i32 %1408, %1412
  %1445 = shl i32 %1444, %1425
  %1446 = or i32 %1443, %1445
  store i32 %1446, ptr %1439, align 4
  br label %1447

1447:                                             ; preds = %1435, %1429
  %1448 = phi i32 [ %1434, %1429 ], [ %1446, %1435 ]
  %1449 = getelementptr inbounds %struct.vop_scl_regs, ptr %1410, i32 0, i32 2, i32 4
  %1450 = load i8, ptr %1449, align 4, !range !8
  %1451 = icmp eq i8 %1450, 0
  br i1 %1451, label %1456, label %1452

1452:                                             ; preds = %1447
  %1453 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1454 = load ptr, ptr %1453, align 4
  %1455 = getelementptr i8, ptr %1454, i32 %1422
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1455, i32 %1448) #7, !srcloc !12
  br label %1460

1456:                                             ; preds = %1447
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1457 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1458 = load ptr, ptr %1457, align 4
  %1459 = getelementptr i8, ptr %1458, i32 %1422
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1459, i32 %1448) #7, !srcloc !12
  br label %1460

1460:                                             ; preds = %1456, %1452, %1414
  %1461 = load ptr, ptr %427, align 4
  %1462 = load ptr, ptr %1461, align 4
  %1463 = load ptr, ptr %1462, align 4
  %1464 = getelementptr inbounds %struct.vop_scl_extension, ptr %1463, i32 0, i32 16
  %1465 = icmp eq i32 %1406, 4
  %1466 = zext i1 %1465 to i32
  %1467 = load i32, ptr %1464, align 4
  %1468 = icmp eq i32 %1467, 0
  br i1 %1468, label %1469, label %1472

1469:                                             ; preds = %1460
  %1470 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1471 = load ptr, ptr %1470, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1471, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.54) #7
  br label %1515

1472:                                             ; preds = %1460
  %1473 = load i32, ptr %12, align 4
  %1474 = getelementptr inbounds %struct.vop_scl_extension, ptr %1463, i32 0, i32 16, i32 1
  %1475 = load i16, ptr %1474, align 4
  %1476 = zext i16 %1475 to i32
  %1477 = add i32 %1473, %1476
  %1478 = getelementptr inbounds %struct.vop_scl_extension, ptr %1463, i32 0, i32 16, i32 2
  %1479 = load i8, ptr %1478, align 2
  %1480 = zext i8 %1479 to i32
  %1481 = getelementptr inbounds %struct.vop_scl_extension, ptr %1463, i32 0, i32 16, i32 3
  %1482 = load i8, ptr %1481, align 1, !range !8
  %1483 = icmp eq i8 %1482, 0
  br i1 %1483, label %1490, label %1484

1484:                                             ; preds = %1472
  %1485 = shl nuw i32 %1466, %1480
  %1486 = and i32 %1485, 65535
  %1487 = add nuw nsw i32 %1480, 16
  %1488 = shl i32 %1467, %1487
  %1489 = or i32 %1486, %1488
  br label %1502

1490:                                             ; preds = %1472
  %1491 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %1492 = load ptr, ptr %1491, align 8
  %1493 = ashr i32 %1477, 2
  %1494 = getelementptr i32, ptr %1492, i32 %1493
  %1495 = load i32, ptr %1494, align 4
  %1496 = shl i32 %1467, %1480
  %1497 = xor i32 %1496, -1
  %1498 = and i32 %1495, %1497
  %1499 = and i32 %1467, %1466
  %1500 = shl nuw i32 %1499, %1480
  %1501 = or i32 %1498, %1500
  store i32 %1501, ptr %1494, align 4
  br label %1502

1502:                                             ; preds = %1490, %1484
  %1503 = phi i32 [ %1489, %1484 ], [ %1501, %1490 ]
  %1504 = getelementptr inbounds %struct.vop_scl_extension, ptr %1463, i32 0, i32 16, i32 4
  %1505 = load i8, ptr %1504, align 4, !range !8
  %1506 = icmp eq i8 %1505, 0
  br i1 %1506, label %1511, label %1507

1507:                                             ; preds = %1502
  %1508 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1509 = load ptr, ptr %1508, align 4
  %1510 = getelementptr i8, ptr %1509, i32 %1477
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1510, i32 %1503) #7, !srcloc !12
  br label %1515

1511:                                             ; preds = %1502
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1512 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1513 = load ptr, ptr %1512, align 4
  %1514 = getelementptr i8, ptr %1513, i32 %1477
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1514, i32 %1503) #7, !srcloc !12
  br label %1515

1515:                                             ; preds = %1511, %1507, %1469
  %1516 = load ptr, ptr %427, align 4
  %1517 = load ptr, ptr %1516, align 4
  %1518 = load ptr, ptr %1517, align 4
  %1519 = getelementptr inbounds %struct.vop_scl_extension, ptr %1518, i32 0, i32 15
  %1520 = icmp eq i32 %1406, 2
  %1521 = zext i1 %1520 to i32
  %1522 = load i32, ptr %1519, align 4
  %1523 = icmp eq i32 %1522, 0
  br i1 %1523, label %1524, label %1527

1524:                                             ; preds = %1515
  %1525 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1526 = load ptr, ptr %1525, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1526, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.55) #7
  br label %1570

1527:                                             ; preds = %1515
  %1528 = load i32, ptr %12, align 4
  %1529 = getelementptr inbounds %struct.vop_scl_extension, ptr %1518, i32 0, i32 15, i32 1
  %1530 = load i16, ptr %1529, align 4
  %1531 = zext i16 %1530 to i32
  %1532 = add i32 %1528, %1531
  %1533 = getelementptr inbounds %struct.vop_scl_extension, ptr %1518, i32 0, i32 15, i32 2
  %1534 = load i8, ptr %1533, align 2
  %1535 = zext i8 %1534 to i32
  %1536 = getelementptr inbounds %struct.vop_scl_extension, ptr %1518, i32 0, i32 15, i32 3
  %1537 = load i8, ptr %1536, align 1, !range !8
  %1538 = icmp eq i8 %1537, 0
  br i1 %1538, label %1545, label %1539

1539:                                             ; preds = %1527
  %1540 = shl nuw i32 %1521, %1535
  %1541 = and i32 %1540, 65535
  %1542 = add nuw nsw i32 %1535, 16
  %1543 = shl i32 %1522, %1542
  %1544 = or i32 %1541, %1543
  br label %1557

1545:                                             ; preds = %1527
  %1546 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %1547 = load ptr, ptr %1546, align 8
  %1548 = ashr i32 %1532, 2
  %1549 = getelementptr i32, ptr %1547, i32 %1548
  %1550 = load i32, ptr %1549, align 4
  %1551 = shl i32 %1522, %1535
  %1552 = xor i32 %1551, -1
  %1553 = and i32 %1550, %1552
  %1554 = and i32 %1522, %1521
  %1555 = shl nuw i32 %1554, %1535
  %1556 = or i32 %1553, %1555
  store i32 %1556, ptr %1549, align 4
  br label %1557

1557:                                             ; preds = %1545, %1539
  %1558 = phi i32 [ %1544, %1539 ], [ %1556, %1545 ]
  %1559 = getelementptr inbounds %struct.vop_scl_extension, ptr %1518, i32 0, i32 15, i32 4
  %1560 = load i8, ptr %1559, align 4, !range !8
  %1561 = icmp eq i8 %1560, 0
  br i1 %1561, label %1566, label %1562

1562:                                             ; preds = %1557
  %1563 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1564 = load ptr, ptr %1563, align 4
  %1565 = getelementptr i8, ptr %1564, i32 %1532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1565, i32 %1558) #7, !srcloc !12
  br label %1570

1566:                                             ; preds = %1557
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1567 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1568 = load ptr, ptr %1567, align 4
  %1569 = getelementptr i8, ptr %1568, i32 %1532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1569, i32 %1558) #7, !srcloc !12
  br label %1570

1570:                                             ; preds = %1566, %1562, %1524
  %1571 = load ptr, ptr %427, align 4
  %1572 = load ptr, ptr %1571, align 4
  %1573 = load ptr, ptr %1572, align 4
  %1574 = getelementptr inbounds %struct.vop_scl_extension, ptr %1573, i32 0, i32 9
  %1575 = load i32, ptr %1574, align 4
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1577, label %1580

1577:                                             ; preds = %1570
  %1578 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1579 = load ptr, ptr %1578, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1579, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.56) #7
  br label %1623

1580:                                             ; preds = %1570
  %1581 = load i32, ptr %12, align 4
  %1582 = getelementptr inbounds %struct.vop_scl_extension, ptr %1573, i32 0, i32 9, i32 1
  %1583 = load i16, ptr %1582, align 4
  %1584 = zext i16 %1583 to i32
  %1585 = add i32 %1581, %1584
  %1586 = getelementptr inbounds %struct.vop_scl_extension, ptr %1573, i32 0, i32 9, i32 2
  %1587 = load i8, ptr %1586, align 2
  %1588 = zext i8 %1587 to i32
  %1589 = getelementptr inbounds %struct.vop_scl_extension, ptr %1573, i32 0, i32 9, i32 3
  %1590 = load i8, ptr %1589, align 1, !range !8
  %1591 = icmp eq i8 %1590, 0
  br i1 %1591, label %1598, label %1592

1592:                                             ; preds = %1580
  %1593 = shl i32 %1213, %1588
  %1594 = and i32 %1593, 65535
  %1595 = add nuw nsw i32 %1588, 16
  %1596 = shl i32 %1575, %1595
  %1597 = or i32 %1594, %1596
  br label %1610

1598:                                             ; preds = %1580
  %1599 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %1600 = load ptr, ptr %1599, align 8
  %1601 = ashr i32 %1585, 2
  %1602 = getelementptr i32, ptr %1600, i32 %1601
  %1603 = load i32, ptr %1602, align 4
  %1604 = shl i32 %1575, %1588
  %1605 = xor i32 %1604, -1
  %1606 = and i32 %1603, %1605
  %1607 = and i32 %1575, %1213
  %1608 = shl i32 %1607, %1588
  %1609 = or i32 %1606, %1608
  store i32 %1609, ptr %1602, align 4
  br label %1610

1610:                                             ; preds = %1598, %1592
  %1611 = phi i32 [ %1597, %1592 ], [ %1609, %1598 ]
  %1612 = getelementptr inbounds %struct.vop_scl_extension, ptr %1573, i32 0, i32 9, i32 4
  %1613 = load i8, ptr %1612, align 4, !range !8
  %1614 = icmp eq i8 %1613, 0
  br i1 %1614, label %1619, label %1615

1615:                                             ; preds = %1610
  %1616 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1617 = load ptr, ptr %1616, align 4
  %1618 = getelementptr i8, ptr %1617, i32 %1585
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1618, i32 %1611) #7, !srcloc !12
  br label %1623

1619:                                             ; preds = %1610
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1620 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1621 = load ptr, ptr %1620, align 4
  %1622 = getelementptr i8, ptr %1621, i32 %1585
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1622, i32 %1611) #7, !srcloc !12
  br label %1623

1623:                                             ; preds = %1619, %1615, %1577
  %1624 = load ptr, ptr %427, align 4
  %1625 = load ptr, ptr %1624, align 4
  %1626 = load ptr, ptr %1625, align 4
  %1627 = getelementptr inbounds %struct.vop_scl_extension, ptr %1626, i32 0, i32 8
  %1628 = load i32, ptr %1627, align 4
  %1629 = icmp eq i32 %1628, 0
  br i1 %1629, label %1630, label %1633

1630:                                             ; preds = %1623
  %1631 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1632 = load ptr, ptr %1631, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1632, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.57) #7
  br label %1676

1633:                                             ; preds = %1623
  %1634 = load i32, ptr %12, align 4
  %1635 = getelementptr inbounds %struct.vop_scl_extension, ptr %1626, i32 0, i32 8, i32 1
  %1636 = load i16, ptr %1635, align 4
  %1637 = zext i16 %1636 to i32
  %1638 = add i32 %1634, %1637
  %1639 = getelementptr inbounds %struct.vop_scl_extension, ptr %1626, i32 0, i32 8, i32 2
  %1640 = load i8, ptr %1639, align 2
  %1641 = zext i8 %1640 to i32
  %1642 = getelementptr inbounds %struct.vop_scl_extension, ptr %1626, i32 0, i32 8, i32 3
  %1643 = load i8, ptr %1642, align 1, !range !8
  %1644 = icmp eq i8 %1643, 0
  br i1 %1644, label %1651, label %1645

1645:                                             ; preds = %1633
  %1646 = shl i32 %1217, %1641
  %1647 = and i32 %1646, 65535
  %1648 = add nuw nsw i32 %1641, 16
  %1649 = shl i32 %1628, %1648
  %1650 = or i32 %1647, %1649
  br label %1663

1651:                                             ; preds = %1633
  %1652 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %1653 = load ptr, ptr %1652, align 8
  %1654 = ashr i32 %1638, 2
  %1655 = getelementptr i32, ptr %1653, i32 %1654
  %1656 = load i32, ptr %1655, align 4
  %1657 = shl i32 %1628, %1641
  %1658 = xor i32 %1657, -1
  %1659 = and i32 %1656, %1658
  %1660 = and i32 %1628, %1217
  %1661 = shl i32 %1660, %1641
  %1662 = or i32 %1659, %1661
  store i32 %1662, ptr %1655, align 4
  br label %1663

1663:                                             ; preds = %1651, %1645
  %1664 = phi i32 [ %1650, %1645 ], [ %1662, %1651 ]
  %1665 = getelementptr inbounds %struct.vop_scl_extension, ptr %1626, i32 0, i32 8, i32 4
  %1666 = load i8, ptr %1665, align 4, !range !8
  %1667 = icmp eq i8 %1666, 0
  br i1 %1667, label %1672, label %1668

1668:                                             ; preds = %1663
  %1669 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1670 = load ptr, ptr %1669, align 4
  %1671 = getelementptr i8, ptr %1670, i32 %1638
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1671, i32 %1664) #7, !srcloc !12
  br label %1676

1672:                                             ; preds = %1663
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1673 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1674 = load ptr, ptr %1673, align 4
  %1675 = getelementptr i8, ptr %1674, i32 %1638
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1675, i32 %1664) #7, !srcloc !12
  br label %1676

1676:                                             ; preds = %1672, %1668, %1630
  %1677 = load ptr, ptr %427, align 4
  %1678 = load ptr, ptr %1677, align 4
  %1679 = load ptr, ptr %1678, align 4
  %1680 = getelementptr inbounds %struct.vop_scl_extension, ptr %1679, i32 0, i32 7
  %1681 = load i32, ptr %1680, align 4
  %1682 = icmp eq i32 %1681, 0
  br i1 %1682, label %1683, label %1686

1683:                                             ; preds = %1676
  %1684 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1685 = load ptr, ptr %1684, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1685, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.58) #7
  br label %1723

1686:                                             ; preds = %1676
  %1687 = load i32, ptr %12, align 4
  %1688 = getelementptr inbounds %struct.vop_scl_extension, ptr %1679, i32 0, i32 7, i32 1
  %1689 = load i16, ptr %1688, align 4
  %1690 = zext i16 %1689 to i32
  %1691 = add i32 %1687, %1690
  %1692 = getelementptr inbounds %struct.vop_scl_extension, ptr %1679, i32 0, i32 7, i32 2
  %1693 = load i8, ptr %1692, align 2
  %1694 = zext i8 %1693 to i32
  %1695 = getelementptr inbounds %struct.vop_scl_extension, ptr %1679, i32 0, i32 7, i32 3
  %1696 = load i8, ptr %1695, align 1, !range !8
  %1697 = icmp eq i8 %1696, 0
  br i1 %1697, label %1701, label %1698

1698:                                             ; preds = %1686
  %1699 = add nuw nsw i32 %1694, 16
  %1700 = shl i32 %1681, %1699
  br label %1710

1701:                                             ; preds = %1686
  %1702 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %1703 = load ptr, ptr %1702, align 8
  %1704 = ashr i32 %1691, 2
  %1705 = getelementptr i32, ptr %1703, i32 %1704
  %1706 = load i32, ptr %1705, align 4
  %1707 = shl i32 %1681, %1694
  %1708 = xor i32 %1707, -1
  %1709 = and i32 %1706, %1708
  store i32 %1709, ptr %1705, align 4
  br label %1710

1710:                                             ; preds = %1701, %1698
  %1711 = phi i32 [ %1700, %1698 ], [ %1709, %1701 ]
  %1712 = getelementptr inbounds %struct.vop_scl_extension, ptr %1679, i32 0, i32 7, i32 4
  %1713 = load i8, ptr %1712, align 4, !range !8
  %1714 = icmp eq i8 %1713, 0
  br i1 %1714, label %1719, label %1715

1715:                                             ; preds = %1710
  %1716 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1717 = load ptr, ptr %1716, align 4
  %1718 = getelementptr i8, ptr %1717, i32 %1691
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1718, i32 %1711) #7, !srcloc !12
  br label %1723

1719:                                             ; preds = %1710
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1720 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1721 = load ptr, ptr %1720, align 4
  %1722 = getelementptr i8, ptr %1721, i32 %1691
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1722, i32 %1711) #7, !srcloc !12
  br label %1723

1723:                                             ; preds = %1719, %1715, %1683
  %1724 = load ptr, ptr %427, align 4
  %1725 = load ptr, ptr %1724, align 4
  %1726 = load ptr, ptr %1725, align 4
  %1727 = getelementptr inbounds %struct.vop_scl_extension, ptr %1726, i32 0, i32 5
  %1728 = load i32, ptr %1727, align 4
  %1729 = icmp eq i32 %1728, 0
  br i1 %1729, label %1730, label %1733

1730:                                             ; preds = %1723
  %1731 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1732 = load ptr, ptr %1731, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1732, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.59) #7
  br label %1770

1733:                                             ; preds = %1723
  %1734 = load i32, ptr %12, align 4
  %1735 = getelementptr inbounds %struct.vop_scl_extension, ptr %1726, i32 0, i32 5, i32 1
  %1736 = load i16, ptr %1735, align 4
  %1737 = zext i16 %1736 to i32
  %1738 = add i32 %1734, %1737
  %1739 = getelementptr inbounds %struct.vop_scl_extension, ptr %1726, i32 0, i32 5, i32 2
  %1740 = load i8, ptr %1739, align 2
  %1741 = zext i8 %1740 to i32
  %1742 = getelementptr inbounds %struct.vop_scl_extension, ptr %1726, i32 0, i32 5, i32 3
  %1743 = load i8, ptr %1742, align 1, !range !8
  %1744 = icmp eq i8 %1743, 0
  br i1 %1744, label %1748, label %1745

1745:                                             ; preds = %1733
  %1746 = add nuw nsw i32 %1741, 16
  %1747 = shl i32 %1728, %1746
  br label %1757

1748:                                             ; preds = %1733
  %1749 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %1750 = load ptr, ptr %1749, align 8
  %1751 = ashr i32 %1738, 2
  %1752 = getelementptr i32, ptr %1750, i32 %1751
  %1753 = load i32, ptr %1752, align 4
  %1754 = shl i32 %1728, %1741
  %1755 = xor i32 %1754, -1
  %1756 = and i32 %1753, %1755
  store i32 %1756, ptr %1752, align 4
  br label %1757

1757:                                             ; preds = %1748, %1745
  %1758 = phi i32 [ %1747, %1745 ], [ %1756, %1748 ]
  %1759 = getelementptr inbounds %struct.vop_scl_extension, ptr %1726, i32 0, i32 5, i32 4
  %1760 = load i8, ptr %1759, align 4, !range !8
  %1761 = icmp eq i8 %1760, 0
  br i1 %1761, label %1766, label %1762

1762:                                             ; preds = %1757
  %1763 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1764 = load ptr, ptr %1763, align 4
  %1765 = getelementptr i8, ptr %1764, i32 %1738
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1765, i32 %1758) #7, !srcloc !12
  br label %1770

1766:                                             ; preds = %1757
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1767 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1768 = load ptr, ptr %1767, align 4
  %1769 = getelementptr i8, ptr %1768, i32 %1738
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1769, i32 %1758) #7, !srcloc !12
  br label %1770

1770:                                             ; preds = %1766, %1762, %1730
  %1771 = load ptr, ptr %427, align 4
  %1772 = load ptr, ptr %1771, align 4
  %1773 = load ptr, ptr %1772, align 4
  %1774 = getelementptr inbounds %struct.vop_scl_extension, ptr %1773, i32 0, i32 6
  %1775 = load i32, ptr %1774, align 4
  %1776 = icmp eq i32 %1775, 0
  br i1 %1776, label %1777, label %1780

1777:                                             ; preds = %1770
  %1778 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1779 = load ptr, ptr %1778, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1779, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.60) #7
  br label %1823

1780:                                             ; preds = %1770
  %1781 = load i32, ptr %12, align 4
  %1782 = getelementptr inbounds %struct.vop_scl_extension, ptr %1773, i32 0, i32 6, i32 1
  %1783 = load i16, ptr %1782, align 4
  %1784 = zext i16 %1783 to i32
  %1785 = add i32 %1781, %1784
  %1786 = getelementptr inbounds %struct.vop_scl_extension, ptr %1773, i32 0, i32 6, i32 2
  %1787 = load i8, ptr %1786, align 2
  %1788 = zext i8 %1787 to i32
  %1789 = getelementptr inbounds %struct.vop_scl_extension, ptr %1773, i32 0, i32 6, i32 3
  %1790 = load i8, ptr %1789, align 1, !range !8
  %1791 = icmp eq i8 %1790, 0
  br i1 %1791, label %1798, label %1792

1792:                                             ; preds = %1780
  %1793 = shl i32 %1314, %1788
  %1794 = and i32 %1793, 65535
  %1795 = add nuw nsw i32 %1788, 16
  %1796 = shl i32 %1775, %1795
  %1797 = or i32 %1794, %1796
  br label %1810

1798:                                             ; preds = %1780
  %1799 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %1800 = load ptr, ptr %1799, align 8
  %1801 = ashr i32 %1785, 2
  %1802 = getelementptr i32, ptr %1800, i32 %1801
  %1803 = load i32, ptr %1802, align 4
  %1804 = shl i32 %1775, %1788
  %1805 = xor i32 %1804, -1
  %1806 = and i32 %1803, %1805
  %1807 = and i32 %1775, %1314
  %1808 = shl i32 %1807, %1788
  %1809 = or i32 %1806, %1808
  store i32 %1809, ptr %1802, align 4
  br label %1810

1810:                                             ; preds = %1798, %1792
  %1811 = phi i32 [ %1797, %1792 ], [ %1809, %1798 ]
  %1812 = getelementptr inbounds %struct.vop_scl_extension, ptr %1773, i32 0, i32 6, i32 4
  %1813 = load i8, ptr %1812, align 4, !range !8
  %1814 = icmp eq i8 %1813, 0
  br i1 %1814, label %1819, label %1815

1815:                                             ; preds = %1810
  %1816 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1817 = load ptr, ptr %1816, align 4
  %1818 = getelementptr i8, ptr %1817, i32 %1785
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1818, i32 %1811) #7, !srcloc !12
  br label %1823

1819:                                             ; preds = %1810
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1820 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1821 = load ptr, ptr %1820, align 4
  %1822 = getelementptr i8, ptr %1821, i32 %1785
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1822, i32 %1811) #7, !srcloc !12
  br label %1823

1823:                                             ; preds = %1819, %1815, %1777
  br i1 %974, label %2340, label %1824

1824:                                             ; preds = %1823
  %1825 = and i32 %1249, 65535
  %1826 = and i32 %967, 65535
  %1827 = trunc i32 %1249 to i16
  switch i16 %1827, label %1836 [
    i16 1, label %1829
    i16 2, label %1828
  ]

1828:                                             ; preds = %1824
  br label %1829

1829:                                             ; preds = %1828, %1824
  %1830 = phi i32 [ 12, %1828 ], [ 16, %1824 ]
  %1831 = phi i32 [ -6144, %1828 ], [ -98304, %1824 ]
  %1832 = shl nuw i32 %1826, %1830
  %1833 = add i32 %1832, %1831
  %1834 = add i32 %959, -1
  %1835 = sdiv i32 %1833, %1834
  br label %1836

1836:                                             ; preds = %1829, %1824
  %1837 = phi i32 [ 4096, %1824 ], [ %1835, %1829 ]
  %1838 = and i32 %1837, 65535
  %1839 = load ptr, ptr %427, align 4
  %1840 = load ptr, ptr %1839, align 4
  %1841 = getelementptr inbounds %struct.vop_scl_regs, ptr %1840, i32 0, i32 3
  %1842 = load i32, ptr %1841, align 4
  %1843 = icmp eq i32 %1842, 0
  br i1 %1843, label %1844, label %1847

1844:                                             ; preds = %1836
  %1845 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1846 = load ptr, ptr %1845, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1846, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.49) #7
  br label %1890

1847:                                             ; preds = %1836
  %1848 = load i32, ptr %12, align 4
  %1849 = getelementptr inbounds %struct.vop_scl_regs, ptr %1840, i32 0, i32 3, i32 1
  %1850 = load i16, ptr %1849, align 4
  %1851 = zext i16 %1850 to i32
  %1852 = add i32 %1848, %1851
  %1853 = getelementptr inbounds %struct.vop_scl_regs, ptr %1840, i32 0, i32 3, i32 2
  %1854 = load i8, ptr %1853, align 2
  %1855 = zext i8 %1854 to i32
  %1856 = getelementptr inbounds %struct.vop_scl_regs, ptr %1840, i32 0, i32 3, i32 3
  %1857 = load i8, ptr %1856, align 1, !range !8
  %1858 = icmp eq i8 %1857, 0
  br i1 %1858, label %1865, label %1859

1859:                                             ; preds = %1847
  %1860 = shl i32 %1837, %1855
  %1861 = and i32 %1860, 65535
  %1862 = add nuw nsw i32 %1855, 16
  %1863 = shl i32 %1842, %1862
  %1864 = or i32 %1861, %1863
  br label %1877

1865:                                             ; preds = %1847
  %1866 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %1867 = load ptr, ptr %1866, align 8
  %1868 = ashr i32 %1852, 2
  %1869 = getelementptr i32, ptr %1867, i32 %1868
  %1870 = load i32, ptr %1869, align 4
  %1871 = shl i32 %1842, %1855
  %1872 = xor i32 %1871, -1
  %1873 = and i32 %1870, %1872
  %1874 = and i32 %1838, %1842
  %1875 = shl i32 %1874, %1855
  %1876 = or i32 %1873, %1875
  store i32 %1876, ptr %1869, align 4
  br label %1877

1877:                                             ; preds = %1865, %1859
  %1878 = phi i32 [ %1864, %1859 ], [ %1876, %1865 ]
  %1879 = getelementptr inbounds %struct.vop_scl_regs, ptr %1840, i32 0, i32 3, i32 4
  %1880 = load i8, ptr %1879, align 4, !range !8
  %1881 = icmp eq i8 %1880, 0
  br i1 %1881, label %1886, label %1882

1882:                                             ; preds = %1877
  %1883 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1884 = load ptr, ptr %1883, align 4
  %1885 = getelementptr i8, ptr %1884, i32 %1852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1885, i32 %1878) #7, !srcloc !12
  br label %1890

1886:                                             ; preds = %1877
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1887 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1888 = load ptr, ptr %1887, align 4
  %1889 = getelementptr i8, ptr %1888, i32 %1852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1889, i32 %1878) #7, !srcloc !12
  br label %1890

1890:                                             ; preds = %1886, %1882, %1844
  %1891 = zext i16 %1250 to i32
  %1892 = and i32 %971, 65535
  switch i16 %1250, label %1921 [
    i16 1, label %1893
    i16 2, label %1898
  ]

1893:                                             ; preds = %1890
  %1894 = shl nuw i32 %1892, 16
  %1895 = add i32 %1894, -98304
  %1896 = add i32 %962, -1
  %1897 = sdiv i32 %1895, %1896
  br label %1921

1898:                                             ; preds = %1890
  %1899 = shl i32 %962, 2
  %1900 = icmp ugt i32 %1899, %1892
  %1901 = shl i32 %962, 1
  %1902 = icmp ugt i32 %1901, %1892
  %1903 = select i1 %1902, i32 1, i32 2
  %1904 = select i1 %1900, i32 %1903, i32 4
  %1905 = add nsw i32 %1892, -1
  %1906 = add nsw i32 %1905, %1904
  %1907 = sdiv i32 %1906, %1904
  %1908 = icmp eq i32 %1907, %962
  br i1 %1908, label %1909, label %1916

1909:                                             ; preds = %1898
  %1910 = shl nuw nsw i32 %1892, 12
  %1911 = add nsw i32 %1910, -6144
  %1912 = add i32 %962, -1
  %1913 = sdiv i32 %1911, %1912
  %1914 = and i32 %1913, 65535
  %1915 = udiv i32 %1914, %1904
  br label %1921

1916:                                             ; preds = %1898
  %1917 = shl i32 %1907, 12
  %1918 = add i32 %1917, -6144
  %1919 = add i32 %962, -1
  %1920 = sdiv i32 %1918, %1919
  br label %1921

1921:                                             ; preds = %1916, %1909, %1893, %1890
  %1922 = phi i32 [ 0, %1890 ], [ 0, %1893 ], [ %1904, %1916 ], [ %1904, %1909 ]
  %1923 = phi i32 [ 4096, %1890 ], [ %1897, %1893 ], [ %1920, %1916 ], [ %1915, %1909 ]
  %1924 = and i32 %1923, 65535
  %1925 = load ptr, ptr %427, align 4
  %1926 = load ptr, ptr %1925, align 4
  %1927 = getelementptr inbounds %struct.vop_scl_regs, ptr %1926, i32 0, i32 4
  %1928 = load i32, ptr %1927, align 4
  %1929 = icmp eq i32 %1928, 0
  br i1 %1929, label %1930, label %1933

1930:                                             ; preds = %1921
  %1931 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1932 = load ptr, ptr %1931, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1932, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.50) #7
  br label %1976

1933:                                             ; preds = %1921
  %1934 = load i32, ptr %12, align 4
  %1935 = getelementptr inbounds %struct.vop_scl_regs, ptr %1926, i32 0, i32 4, i32 1
  %1936 = load i16, ptr %1935, align 4
  %1937 = zext i16 %1936 to i32
  %1938 = add i32 %1934, %1937
  %1939 = getelementptr inbounds %struct.vop_scl_regs, ptr %1926, i32 0, i32 4, i32 2
  %1940 = load i8, ptr %1939, align 2
  %1941 = zext i8 %1940 to i32
  %1942 = getelementptr inbounds %struct.vop_scl_regs, ptr %1926, i32 0, i32 4, i32 3
  %1943 = load i8, ptr %1942, align 1, !range !8
  %1944 = icmp eq i8 %1943, 0
  br i1 %1944, label %1951, label %1945

1945:                                             ; preds = %1933
  %1946 = shl i32 %1923, %1941
  %1947 = and i32 %1946, 65535
  %1948 = add nuw nsw i32 %1941, 16
  %1949 = shl i32 %1928, %1948
  %1950 = or i32 %1947, %1949
  br label %1963

1951:                                             ; preds = %1933
  %1952 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %1953 = load ptr, ptr %1952, align 8
  %1954 = ashr i32 %1938, 2
  %1955 = getelementptr i32, ptr %1953, i32 %1954
  %1956 = load i32, ptr %1955, align 4
  %1957 = shl i32 %1928, %1941
  %1958 = xor i32 %1957, -1
  %1959 = and i32 %1956, %1958
  %1960 = and i32 %1924, %1928
  %1961 = shl i32 %1960, %1941
  %1962 = or i32 %1959, %1961
  store i32 %1962, ptr %1955, align 4
  br label %1963

1963:                                             ; preds = %1951, %1945
  %1964 = phi i32 [ %1950, %1945 ], [ %1962, %1951 ]
  %1965 = getelementptr inbounds %struct.vop_scl_regs, ptr %1926, i32 0, i32 4, i32 4
  %1966 = load i8, ptr %1965, align 4, !range !8
  %1967 = icmp eq i8 %1966, 0
  br i1 %1967, label %1972, label %1968

1968:                                             ; preds = %1963
  %1969 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1970 = load ptr, ptr %1969, align 4
  %1971 = getelementptr i8, ptr %1970, i32 %1938
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1971, i32 %1964) #7, !srcloc !12
  br label %1976

1972:                                             ; preds = %1963
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1973 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %1974 = load ptr, ptr %1973, align 4
  %1975 = getelementptr i8, ptr %1974, i32 %1938
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1975, i32 %1964) #7, !srcloc !12
  br label %1976

1976:                                             ; preds = %1972, %1968, %1930
  %1977 = load ptr, ptr %427, align 4
  %1978 = load ptr, ptr %1977, align 4
  %1979 = load ptr, ptr %1978, align 4
  %1980 = getelementptr inbounds %struct.vop_scl_extension, ptr %1979, i32 0, i32 14
  %1981 = icmp eq i32 %1922, 4
  %1982 = zext i1 %1981 to i32
  %1983 = load i32, ptr %1980, align 4
  %1984 = icmp eq i32 %1983, 0
  br i1 %1984, label %1985, label %1988

1985:                                             ; preds = %1976
  %1986 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %1987 = load ptr, ptr %1986, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1987, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.61) #7
  br label %2031

1988:                                             ; preds = %1976
  %1989 = load i32, ptr %12, align 4
  %1990 = getelementptr inbounds %struct.vop_scl_extension, ptr %1979, i32 0, i32 14, i32 1
  %1991 = load i16, ptr %1990, align 4
  %1992 = zext i16 %1991 to i32
  %1993 = add i32 %1989, %1992
  %1994 = getelementptr inbounds %struct.vop_scl_extension, ptr %1979, i32 0, i32 14, i32 2
  %1995 = load i8, ptr %1994, align 2
  %1996 = zext i8 %1995 to i32
  %1997 = getelementptr inbounds %struct.vop_scl_extension, ptr %1979, i32 0, i32 14, i32 3
  %1998 = load i8, ptr %1997, align 1, !range !8
  %1999 = icmp eq i8 %1998, 0
  br i1 %1999, label %2006, label %2000

2000:                                             ; preds = %1988
  %2001 = shl nuw i32 %1982, %1996
  %2002 = and i32 %2001, 65535
  %2003 = add nuw nsw i32 %1996, 16
  %2004 = shl i32 %1983, %2003
  %2005 = or i32 %2002, %2004
  br label %2018

2006:                                             ; preds = %1988
  %2007 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2008 = load ptr, ptr %2007, align 8
  %2009 = ashr i32 %1993, 2
  %2010 = getelementptr i32, ptr %2008, i32 %2009
  %2011 = load i32, ptr %2010, align 4
  %2012 = shl i32 %1983, %1996
  %2013 = xor i32 %2012, -1
  %2014 = and i32 %2011, %2013
  %2015 = and i32 %1983, %1982
  %2016 = shl nuw i32 %2015, %1996
  %2017 = or i32 %2014, %2016
  store i32 %2017, ptr %2010, align 4
  br label %2018

2018:                                             ; preds = %2006, %2000
  %2019 = phi i32 [ %2005, %2000 ], [ %2017, %2006 ]
  %2020 = getelementptr inbounds %struct.vop_scl_extension, ptr %1979, i32 0, i32 14, i32 4
  %2021 = load i8, ptr %2020, align 4, !range !8
  %2022 = icmp eq i8 %2021, 0
  br i1 %2022, label %2027, label %2023

2023:                                             ; preds = %2018
  %2024 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2025 = load ptr, ptr %2024, align 4
  %2026 = getelementptr i8, ptr %2025, i32 %1993
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2026, i32 %2019) #7, !srcloc !12
  br label %2031

2027:                                             ; preds = %2018
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2028 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2029 = load ptr, ptr %2028, align 4
  %2030 = getelementptr i8, ptr %2029, i32 %1993
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2030, i32 %2019) #7, !srcloc !12
  br label %2031

2031:                                             ; preds = %2027, %2023, %1985
  %2032 = load ptr, ptr %427, align 4
  %2033 = load ptr, ptr %2032, align 4
  %2034 = load ptr, ptr %2033, align 4
  %2035 = getelementptr inbounds %struct.vop_scl_extension, ptr %2034, i32 0, i32 13
  %2036 = icmp eq i32 %1922, 2
  %2037 = zext i1 %2036 to i32
  %2038 = load i32, ptr %2035, align 4
  %2039 = icmp eq i32 %2038, 0
  br i1 %2039, label %2040, label %2043

2040:                                             ; preds = %2031
  %2041 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2042 = load ptr, ptr %2041, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2042, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.62) #7
  br label %2086

2043:                                             ; preds = %2031
  %2044 = load i32, ptr %12, align 4
  %2045 = getelementptr inbounds %struct.vop_scl_extension, ptr %2034, i32 0, i32 13, i32 1
  %2046 = load i16, ptr %2045, align 4
  %2047 = zext i16 %2046 to i32
  %2048 = add i32 %2044, %2047
  %2049 = getelementptr inbounds %struct.vop_scl_extension, ptr %2034, i32 0, i32 13, i32 2
  %2050 = load i8, ptr %2049, align 2
  %2051 = zext i8 %2050 to i32
  %2052 = getelementptr inbounds %struct.vop_scl_extension, ptr %2034, i32 0, i32 13, i32 3
  %2053 = load i8, ptr %2052, align 1, !range !8
  %2054 = icmp eq i8 %2053, 0
  br i1 %2054, label %2061, label %2055

2055:                                             ; preds = %2043
  %2056 = shl nuw i32 %2037, %2051
  %2057 = and i32 %2056, 65535
  %2058 = add nuw nsw i32 %2051, 16
  %2059 = shl i32 %2038, %2058
  %2060 = or i32 %2057, %2059
  br label %2073

2061:                                             ; preds = %2043
  %2062 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2063 = load ptr, ptr %2062, align 8
  %2064 = ashr i32 %2048, 2
  %2065 = getelementptr i32, ptr %2063, i32 %2064
  %2066 = load i32, ptr %2065, align 4
  %2067 = shl i32 %2038, %2051
  %2068 = xor i32 %2067, -1
  %2069 = and i32 %2066, %2068
  %2070 = and i32 %2038, %2037
  %2071 = shl nuw i32 %2070, %2051
  %2072 = or i32 %2069, %2071
  store i32 %2072, ptr %2065, align 4
  br label %2073

2073:                                             ; preds = %2061, %2055
  %2074 = phi i32 [ %2060, %2055 ], [ %2072, %2061 ]
  %2075 = getelementptr inbounds %struct.vop_scl_extension, ptr %2034, i32 0, i32 13, i32 4
  %2076 = load i8, ptr %2075, align 4, !range !8
  %2077 = icmp eq i8 %2076, 0
  br i1 %2077, label %2082, label %2078

2078:                                             ; preds = %2073
  %2079 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2080 = load ptr, ptr %2079, align 4
  %2081 = getelementptr i8, ptr %2080, i32 %2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2081, i32 %2074) #7, !srcloc !12
  br label %2086

2082:                                             ; preds = %2073
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2083 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2084 = load ptr, ptr %2083, align 4
  %2085 = getelementptr i8, ptr %2084, i32 %2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2085, i32 %2074) #7, !srcloc !12
  br label %2086

2086:                                             ; preds = %2082, %2078, %2040
  %2087 = load ptr, ptr %427, align 4
  %2088 = load ptr, ptr %2087, align 4
  %2089 = load ptr, ptr %2088, align 4
  %2090 = getelementptr inbounds %struct.vop_scl_extension, ptr %2089, i32 0, i32 4
  %2091 = load i32, ptr %2090, align 4
  %2092 = icmp eq i32 %2091, 0
  br i1 %2092, label %2093, label %2096

2093:                                             ; preds = %2086
  %2094 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2095 = load ptr, ptr %2094, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2095, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.63) #7
  br label %2139

2096:                                             ; preds = %2086
  %2097 = load i32, ptr %12, align 4
  %2098 = getelementptr inbounds %struct.vop_scl_extension, ptr %2089, i32 0, i32 4, i32 1
  %2099 = load i16, ptr %2098, align 4
  %2100 = zext i16 %2099 to i32
  %2101 = add i32 %2097, %2100
  %2102 = getelementptr inbounds %struct.vop_scl_extension, ptr %2089, i32 0, i32 4, i32 2
  %2103 = load i8, ptr %2102, align 2
  %2104 = zext i8 %2103 to i32
  %2105 = getelementptr inbounds %struct.vop_scl_extension, ptr %2089, i32 0, i32 4, i32 3
  %2106 = load i8, ptr %2105, align 1, !range !8
  %2107 = icmp eq i8 %2106, 0
  br i1 %2107, label %2114, label %2108

2108:                                             ; preds = %2096
  %2109 = shl i32 %1249, %2104
  %2110 = and i32 %2109, 65535
  %2111 = add nuw nsw i32 %2104, 16
  %2112 = shl i32 %2091, %2111
  %2113 = or i32 %2110, %2112
  br label %2126

2114:                                             ; preds = %2096
  %2115 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2116 = load ptr, ptr %2115, align 8
  %2117 = ashr i32 %2101, 2
  %2118 = getelementptr i32, ptr %2116, i32 %2117
  %2119 = load i32, ptr %2118, align 4
  %2120 = shl i32 %2091, %2104
  %2121 = xor i32 %2120, -1
  %2122 = and i32 %2119, %2121
  %2123 = and i32 %1825, %2091
  %2124 = shl i32 %2123, %2104
  %2125 = or i32 %2122, %2124
  store i32 %2125, ptr %2118, align 4
  br label %2126

2126:                                             ; preds = %2114, %2108
  %2127 = phi i32 [ %2113, %2108 ], [ %2125, %2114 ]
  %2128 = getelementptr inbounds %struct.vop_scl_extension, ptr %2089, i32 0, i32 4, i32 4
  %2129 = load i8, ptr %2128, align 4, !range !8
  %2130 = icmp eq i8 %2129, 0
  br i1 %2130, label %2135, label %2131

2131:                                             ; preds = %2126
  %2132 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2133 = load ptr, ptr %2132, align 4
  %2134 = getelementptr i8, ptr %2133, i32 %2101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2134, i32 %2127) #7, !srcloc !12
  br label %2139

2135:                                             ; preds = %2126
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2136 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2137 = load ptr, ptr %2136, align 4
  %2138 = getelementptr i8, ptr %2137, i32 %2101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2138, i32 %2127) #7, !srcloc !12
  br label %2139

2139:                                             ; preds = %2135, %2131, %2093
  %2140 = load ptr, ptr %427, align 4
  %2141 = load ptr, ptr %2140, align 4
  %2142 = load ptr, ptr %2141, align 4
  %2143 = getelementptr inbounds %struct.vop_scl_extension, ptr %2142, i32 0, i32 3
  %2144 = load i32, ptr %2143, align 4
  %2145 = icmp eq i32 %2144, 0
  br i1 %2145, label %2146, label %2149

2146:                                             ; preds = %2139
  %2147 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2148 = load ptr, ptr %2147, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2148, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.64) #7
  br label %2192

2149:                                             ; preds = %2139
  %2150 = load i32, ptr %12, align 4
  %2151 = getelementptr inbounds %struct.vop_scl_extension, ptr %2142, i32 0, i32 3, i32 1
  %2152 = load i16, ptr %2151, align 4
  %2153 = zext i16 %2152 to i32
  %2154 = add i32 %2150, %2153
  %2155 = getelementptr inbounds %struct.vop_scl_extension, ptr %2142, i32 0, i32 3, i32 2
  %2156 = load i8, ptr %2155, align 2
  %2157 = zext i8 %2156 to i32
  %2158 = getelementptr inbounds %struct.vop_scl_extension, ptr %2142, i32 0, i32 3, i32 3
  %2159 = load i8, ptr %2158, align 1, !range !8
  %2160 = icmp eq i8 %2159, 0
  br i1 %2160, label %2167, label %2161

2161:                                             ; preds = %2149
  %2162 = shl i32 %1891, %2157
  %2163 = and i32 %2162, 65535
  %2164 = add nuw nsw i32 %2157, 16
  %2165 = shl i32 %2144, %2164
  %2166 = or i32 %2163, %2165
  br label %2179

2167:                                             ; preds = %2149
  %2168 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2169 = load ptr, ptr %2168, align 8
  %2170 = ashr i32 %2154, 2
  %2171 = getelementptr i32, ptr %2169, i32 %2170
  %2172 = load i32, ptr %2171, align 4
  %2173 = shl i32 %2144, %2157
  %2174 = xor i32 %2173, -1
  %2175 = and i32 %2172, %2174
  %2176 = and i32 %2144, %1891
  %2177 = shl i32 %2176, %2157
  %2178 = or i32 %2175, %2177
  store i32 %2178, ptr %2171, align 4
  br label %2179

2179:                                             ; preds = %2167, %2161
  %2180 = phi i32 [ %2166, %2161 ], [ %2178, %2167 ]
  %2181 = getelementptr inbounds %struct.vop_scl_extension, ptr %2142, i32 0, i32 3, i32 4
  %2182 = load i8, ptr %2181, align 4, !range !8
  %2183 = icmp eq i8 %2182, 0
  br i1 %2183, label %2188, label %2184

2184:                                             ; preds = %2179
  %2185 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2186 = load ptr, ptr %2185, align 4
  %2187 = getelementptr i8, ptr %2186, i32 %2154
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2187, i32 %2180) #7, !srcloc !12
  br label %2192

2188:                                             ; preds = %2179
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2189 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2190 = load ptr, ptr %2189, align 4
  %2191 = getelementptr i8, ptr %2190, i32 %2154
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2191, i32 %2180) #7, !srcloc !12
  br label %2192

2192:                                             ; preds = %2188, %2184, %2146
  %2193 = load ptr, ptr %427, align 4
  %2194 = load ptr, ptr %2193, align 4
  %2195 = load ptr, ptr %2194, align 4
  %2196 = getelementptr inbounds %struct.vop_scl_extension, ptr %2195, i32 0, i32 2
  %2197 = load i32, ptr %2196, align 4
  %2198 = icmp eq i32 %2197, 0
  br i1 %2198, label %2199, label %2202

2199:                                             ; preds = %2192
  %2200 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2201 = load ptr, ptr %2200, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2201, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.65) #7
  br label %2239

2202:                                             ; preds = %2192
  %2203 = load i32, ptr %12, align 4
  %2204 = getelementptr inbounds %struct.vop_scl_extension, ptr %2195, i32 0, i32 2, i32 1
  %2205 = load i16, ptr %2204, align 4
  %2206 = zext i16 %2205 to i32
  %2207 = add i32 %2203, %2206
  %2208 = getelementptr inbounds %struct.vop_scl_extension, ptr %2195, i32 0, i32 2, i32 2
  %2209 = load i8, ptr %2208, align 2
  %2210 = zext i8 %2209 to i32
  %2211 = getelementptr inbounds %struct.vop_scl_extension, ptr %2195, i32 0, i32 2, i32 3
  %2212 = load i8, ptr %2211, align 1, !range !8
  %2213 = icmp eq i8 %2212, 0
  br i1 %2213, label %2217, label %2214

2214:                                             ; preds = %2202
  %2215 = add nuw nsw i32 %2210, 16
  %2216 = shl i32 %2197, %2215
  br label %2226

2217:                                             ; preds = %2202
  %2218 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2219 = load ptr, ptr %2218, align 8
  %2220 = ashr i32 %2207, 2
  %2221 = getelementptr i32, ptr %2219, i32 %2220
  %2222 = load i32, ptr %2221, align 4
  %2223 = shl i32 %2197, %2210
  %2224 = xor i32 %2223, -1
  %2225 = and i32 %2222, %2224
  store i32 %2225, ptr %2221, align 4
  br label %2226

2226:                                             ; preds = %2217, %2214
  %2227 = phi i32 [ %2216, %2214 ], [ %2225, %2217 ]
  %2228 = getelementptr inbounds %struct.vop_scl_extension, ptr %2195, i32 0, i32 2, i32 4
  %2229 = load i8, ptr %2228, align 4, !range !8
  %2230 = icmp eq i8 %2229, 0
  br i1 %2230, label %2235, label %2231

2231:                                             ; preds = %2226
  %2232 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2233 = load ptr, ptr %2232, align 4
  %2234 = getelementptr i8, ptr %2233, i32 %2207
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2234, i32 %2227) #7, !srcloc !12
  br label %2239

2235:                                             ; preds = %2226
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2236 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2237 = load ptr, ptr %2236, align 4
  %2238 = getelementptr i8, ptr %2237, i32 %2207
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2238, i32 %2227) #7, !srcloc !12
  br label %2239

2239:                                             ; preds = %2235, %2231, %2199
  %2240 = load ptr, ptr %427, align 4
  %2241 = load ptr, ptr %2240, align 4
  %2242 = load ptr, ptr %2241, align 4
  %2243 = load i32, ptr %12, align 4
  %2244 = icmp eq ptr %2242, null
  br i1 %2244, label %2248, label %2245

2245:                                             ; preds = %2239
  %2246 = load i32, ptr %2242, align 4
  %2247 = icmp eq i32 %2246, 0
  br i1 %2247, label %2248, label %2251

2248:                                             ; preds = %2245, %2239
  %2249 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2250 = load ptr, ptr %2249, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2250, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.66) #7
  br label %2287

2251:                                             ; preds = %2245
  %2252 = getelementptr inbounds %struct.vop_reg, ptr %2242, i32 0, i32 1
  %2253 = load i16, ptr %2252, align 4
  %2254 = zext i16 %2253 to i32
  %2255 = add i32 %2243, %2254
  %2256 = getelementptr inbounds %struct.vop_reg, ptr %2242, i32 0, i32 2
  %2257 = load i8, ptr %2256, align 2
  %2258 = zext i8 %2257 to i32
  %2259 = getelementptr inbounds %struct.vop_reg, ptr %2242, i32 0, i32 3
  %2260 = load i8, ptr %2259, align 1, !range !8
  %2261 = icmp eq i8 %2260, 0
  br i1 %2261, label %2265, label %2262

2262:                                             ; preds = %2251
  %2263 = add nuw nsw i32 %2258, 16
  %2264 = shl i32 %2246, %2263
  br label %2274

2265:                                             ; preds = %2251
  %2266 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2267 = load ptr, ptr %2266, align 8
  %2268 = ashr i32 %2255, 2
  %2269 = getelementptr i32, ptr %2267, i32 %2268
  %2270 = load i32, ptr %2269, align 4
  %2271 = shl i32 %2246, %2258
  %2272 = xor i32 %2271, -1
  %2273 = and i32 %2270, %2272
  store i32 %2273, ptr %2269, align 4
  br label %2274

2274:                                             ; preds = %2265, %2262
  %2275 = phi i32 [ %2264, %2262 ], [ %2273, %2265 ]
  %2276 = getelementptr inbounds %struct.vop_reg, ptr %2242, i32 0, i32 4
  %2277 = load i8, ptr %2276, align 4, !range !8
  %2278 = icmp eq i8 %2277, 0
  br i1 %2278, label %2283, label %2279

2279:                                             ; preds = %2274
  %2280 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2281 = load ptr, ptr %2280, align 4
  %2282 = getelementptr i8, ptr %2281, i32 %2255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2282, i32 %2275) #7, !srcloc !12
  br label %2287

2283:                                             ; preds = %2274
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2284 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2285 = load ptr, ptr %2284, align 4
  %2286 = getelementptr i8, ptr %2285, i32 %2255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2286, i32 %2275) #7, !srcloc !12
  br label %2287

2287:                                             ; preds = %2283, %2279, %2248
  %2288 = load ptr, ptr %427, align 4
  %2289 = load ptr, ptr %2288, align 4
  %2290 = load ptr, ptr %2289, align 4
  %2291 = getelementptr inbounds %struct.vop_scl_extension, ptr %2290, i32 0, i32 1
  %2292 = load i32, ptr %2291, align 4
  %2293 = icmp eq i32 %2292, 0
  br i1 %2293, label %2294, label %2297

2294:                                             ; preds = %2287
  %2295 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2296 = load ptr, ptr %2295, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2296, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.67) #7
  br label %2340

2297:                                             ; preds = %2287
  %2298 = load i32, ptr %12, align 4
  %2299 = getelementptr inbounds %struct.vop_scl_extension, ptr %2290, i32 0, i32 1, i32 1
  %2300 = load i16, ptr %2299, align 4
  %2301 = zext i16 %2300 to i32
  %2302 = add i32 %2298, %2301
  %2303 = getelementptr inbounds %struct.vop_scl_extension, ptr %2290, i32 0, i32 1, i32 2
  %2304 = load i8, ptr %2303, align 2
  %2305 = zext i8 %2304 to i32
  %2306 = getelementptr inbounds %struct.vop_scl_extension, ptr %2290, i32 0, i32 1, i32 3
  %2307 = load i8, ptr %2306, align 1, !range !8
  %2308 = icmp eq i8 %2307, 0
  br i1 %2308, label %2315, label %2309

2309:                                             ; preds = %2297
  %2310 = shl i32 %1314, %2305
  %2311 = and i32 %2310, 65535
  %2312 = add nuw nsw i32 %2305, 16
  %2313 = shl i32 %2292, %2312
  %2314 = or i32 %2311, %2313
  br label %2327

2315:                                             ; preds = %2297
  %2316 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2317 = load ptr, ptr %2316, align 8
  %2318 = ashr i32 %2302, 2
  %2319 = getelementptr i32, ptr %2317, i32 %2318
  %2320 = load i32, ptr %2319, align 4
  %2321 = shl i32 %2292, %2305
  %2322 = xor i32 %2321, -1
  %2323 = and i32 %2320, %2322
  %2324 = and i32 %2292, %1314
  %2325 = shl i32 %2324, %2305
  %2326 = or i32 %2323, %2325
  store i32 %2326, ptr %2319, align 4
  br label %2327

2327:                                             ; preds = %2315, %2309
  %2328 = phi i32 [ %2314, %2309 ], [ %2326, %2315 ]
  %2329 = getelementptr inbounds %struct.vop_scl_extension, ptr %2290, i32 0, i32 1, i32 4
  %2330 = load i8, ptr %2329, align 4, !range !8
  %2331 = icmp eq i8 %2330, 0
  br i1 %2331, label %2336, label %2332

2332:                                             ; preds = %2327
  %2333 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2334 = load ptr, ptr %2333, align 4
  %2335 = getelementptr i8, ptr %2334, i32 %2302
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2335, i32 %2328) #7, !srcloc !12
  br label %2340

2336:                                             ; preds = %2327
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2337 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2338 = load ptr, ptr %2337, align 4
  %2339 = getelementptr i8, ptr %2338, i32 %2302
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2339, i32 %2328) #7, !srcloc !12
  br label %2340

2340:                                             ; preds = %2336, %2332, %2294, %1823, %1309, %1304, %1205, %1201, %1163, %1094, %976, %952
  %2341 = load ptr, ptr %427, align 4
  %2342 = getelementptr inbounds %struct.vop_win_phy, ptr %2341, i32 0, i32 8
  %2343 = load i32, ptr %12, align 4
  %2344 = icmp eq ptr %2342, null
  br i1 %2344, label %2348, label %2345

2345:                                             ; preds = %2340
  %2346 = load i32, ptr %2342, align 4
  %2347 = icmp eq i32 %2346, 0
  br i1 %2347, label %2348, label %2351

2348:                                             ; preds = %2345, %2340
  %2349 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2350 = load ptr, ptr %2349, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2350, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.37) #7
  br label %2393

2351:                                             ; preds = %2345
  %2352 = getelementptr inbounds %struct.vop_win_phy, ptr %2341, i32 0, i32 8, i32 1
  %2353 = load i16, ptr %2352, align 4
  %2354 = zext i16 %2353 to i32
  %2355 = add i32 %2343, %2354
  %2356 = getelementptr inbounds %struct.vop_win_phy, ptr %2341, i32 0, i32 8, i32 2
  %2357 = load i8, ptr %2356, align 2
  %2358 = zext i8 %2357 to i32
  %2359 = getelementptr inbounds %struct.vop_win_phy, ptr %2341, i32 0, i32 8, i32 3
  %2360 = load i8, ptr %2359, align 1, !range !8
  %2361 = icmp eq i8 %2360, 0
  br i1 %2361, label %2368, label %2362

2362:                                             ; preds = %2351
  %2363 = shl i32 %69, %2358
  %2364 = and i32 %2363, 65535
  %2365 = add nuw nsw i32 %2358, 16
  %2366 = shl i32 %2346, %2365
  %2367 = or i32 %2364, %2366
  br label %2380

2368:                                             ; preds = %2351
  %2369 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2370 = load ptr, ptr %2369, align 8
  %2371 = ashr i32 %2355, 2
  %2372 = getelementptr i32, ptr %2370, i32 %2371
  %2373 = load i32, ptr %2372, align 4
  %2374 = shl i32 %2346, %2358
  %2375 = xor i32 %2374, -1
  %2376 = and i32 %2373, %2375
  %2377 = and i32 %2346, %71
  %2378 = shl i32 %2377, %2358
  %2379 = or i32 %2376, %2378
  store i32 %2379, ptr %2372, align 4
  br label %2380

2380:                                             ; preds = %2368, %2362
  %2381 = phi i32 [ %2367, %2362 ], [ %2379, %2368 ]
  %2382 = getelementptr inbounds %struct.vop_win_phy, ptr %2341, i32 0, i32 8, i32 4
  %2383 = load i8, ptr %2382, align 4, !range !8
  %2384 = icmp eq i8 %2383, 0
  br i1 %2384, label %2389, label %2385

2385:                                             ; preds = %2380
  %2386 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2387 = load ptr, ptr %2386, align 4
  %2388 = getelementptr i8, ptr %2387, i32 %2355
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2388, i32 %2381) #7, !srcloc !12
  br label %2393

2389:                                             ; preds = %2380
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2390 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2391 = load ptr, ptr %2390, align 4
  %2392 = getelementptr i8, ptr %2391, i32 %2355
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2392, i32 %2381) #7, !srcloc !12
  br label %2393

2393:                                             ; preds = %2389, %2385, %2348
  %2394 = load ptr, ptr %427, align 4
  %2395 = getelementptr inbounds %struct.vop_win_phy, ptr %2394, i32 0, i32 9
  %2396 = load i32, ptr %12, align 4
  %2397 = icmp eq ptr %2395, null
  br i1 %2397, label %2401, label %2398

2398:                                             ; preds = %2393
  %2399 = load i32, ptr %2395, align 4
  %2400 = icmp eq i32 %2399, 0
  br i1 %2400, label %2401, label %2404

2401:                                             ; preds = %2398, %2393
  %2402 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2403 = load ptr, ptr %2402, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2403, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.38) #7
  br label %2446

2404:                                             ; preds = %2398
  %2405 = getelementptr inbounds %struct.vop_win_phy, ptr %2394, i32 0, i32 9, i32 1
  %2406 = load i16, ptr %2405, align 4
  %2407 = zext i16 %2406 to i32
  %2408 = add i32 %2396, %2407
  %2409 = getelementptr inbounds %struct.vop_win_phy, ptr %2394, i32 0, i32 9, i32 2
  %2410 = load i8, ptr %2409, align 2
  %2411 = zext i8 %2410 to i32
  %2412 = getelementptr inbounds %struct.vop_win_phy, ptr %2394, i32 0, i32 9, i32 3
  %2413 = load i8, ptr %2412, align 1, !range !8
  %2414 = icmp eq i8 %2413, 0
  br i1 %2414, label %2421, label %2415

2415:                                             ; preds = %2404
  %2416 = shl i32 %83, %2411
  %2417 = and i32 %2416, 65535
  %2418 = add nuw nsw i32 %2411, 16
  %2419 = shl i32 %2399, %2418
  %2420 = or i32 %2417, %2419
  br label %2433

2421:                                             ; preds = %2404
  %2422 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2423 = load ptr, ptr %2422, align 8
  %2424 = ashr i32 %2408, 2
  %2425 = getelementptr i32, ptr %2423, i32 %2424
  %2426 = load i32, ptr %2425, align 4
  %2427 = shl i32 %2399, %2411
  %2428 = xor i32 %2427, -1
  %2429 = and i32 %2426, %2428
  %2430 = and i32 %2399, %85
  %2431 = shl i32 %2430, %2411
  %2432 = or i32 %2429, %2431
  store i32 %2432, ptr %2425, align 4
  br label %2433

2433:                                             ; preds = %2421, %2415
  %2434 = phi i32 [ %2420, %2415 ], [ %2432, %2421 ]
  %2435 = getelementptr inbounds %struct.vop_win_phy, ptr %2394, i32 0, i32 9, i32 4
  %2436 = load i8, ptr %2435, align 4, !range !8
  %2437 = icmp eq i8 %2436, 0
  br i1 %2437, label %2442, label %2438

2438:                                             ; preds = %2433
  %2439 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2440 = load ptr, ptr %2439, align 4
  %2441 = getelementptr i8, ptr %2440, i32 %2408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2441, i32 %2434) #7, !srcloc !12
  br label %2446

2442:                                             ; preds = %2433
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2443 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2444 = load ptr, ptr %2443, align 4
  %2445 = getelementptr i8, ptr %2444, i32 %2408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2445, i32 %2434) #7, !srcloc !12
  br label %2446

2446:                                             ; preds = %2442, %2438, %2401
  %2447 = load ptr, ptr %427, align 4
  %2448 = getelementptr inbounds %struct.vop_win_phy, ptr %2447, i32 0, i32 10
  %2449 = load i32, ptr %12, align 4
  %2450 = icmp eq ptr %2448, null
  br i1 %2450, label %2454, label %2451

2451:                                             ; preds = %2446
  %2452 = load i32, ptr %2448, align 4
  %2453 = icmp eq i32 %2452, 0
  br i1 %2453, label %2454, label %2457

2454:                                             ; preds = %2451, %2446
  %2455 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2456 = load ptr, ptr %2455, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2456, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.39) #7
  br label %2499

2457:                                             ; preds = %2451
  %2458 = getelementptr inbounds %struct.vop_win_phy, ptr %2447, i32 0, i32 10, i32 1
  %2459 = load i16, ptr %2458, align 4
  %2460 = zext i16 %2459 to i32
  %2461 = add i32 %2449, %2460
  %2462 = getelementptr inbounds %struct.vop_win_phy, ptr %2447, i32 0, i32 10, i32 2
  %2463 = load i8, ptr %2462, align 2
  %2464 = zext i8 %2463 to i32
  %2465 = getelementptr inbounds %struct.vop_win_phy, ptr %2447, i32 0, i32 10, i32 3
  %2466 = load i8, ptr %2465, align 1, !range !8
  %2467 = icmp eq i8 %2466, 0
  br i1 %2467, label %2474, label %2468

2468:                                             ; preds = %2457
  %2469 = shl i32 %93, %2464
  %2470 = and i32 %2469, 65535
  %2471 = add nuw nsw i32 %2464, 16
  %2472 = shl i32 %2452, %2471
  %2473 = or i32 %2470, %2472
  br label %2486

2474:                                             ; preds = %2457
  %2475 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2476 = load ptr, ptr %2475, align 8
  %2477 = ashr i32 %2461, 2
  %2478 = getelementptr i32, ptr %2476, i32 %2477
  %2479 = load i32, ptr %2478, align 4
  %2480 = shl i32 %2452, %2464
  %2481 = xor i32 %2480, -1
  %2482 = and i32 %2479, %2481
  %2483 = and i32 %2452, %104
  %2484 = shl i32 %2483, %2464
  %2485 = or i32 %2482, %2484
  store i32 %2485, ptr %2478, align 4
  br label %2486

2486:                                             ; preds = %2474, %2468
  %2487 = phi i32 [ %2473, %2468 ], [ %2485, %2474 ]
  %2488 = getelementptr inbounds %struct.vop_win_phy, ptr %2447, i32 0, i32 10, i32 4
  %2489 = load i8, ptr %2488, align 4, !range !8
  %2490 = icmp eq i8 %2489, 0
  br i1 %2490, label %2495, label %2491

2491:                                             ; preds = %2486
  %2492 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2493 = load ptr, ptr %2492, align 4
  %2494 = getelementptr i8, ptr %2493, i32 %2461
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2494, i32 %2487) #7, !srcloc !12
  br label %2499

2495:                                             ; preds = %2486
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2496 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2497 = load ptr, ptr %2496, align 4
  %2498 = getelementptr i8, ptr %2497, i32 %2461
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2498, i32 %2487) #7, !srcloc !12
  br label %2499

2499:                                             ; preds = %2495, %2491, %2454
  %2500 = load ptr, ptr %26, align 8
  %2501 = load i32, ptr %2500, align 4
  switch i32 %2501, label %2502 [
    i32 875709016, label %2503
    i32 875708993, label %2503
    i32 875710274, label %2503
    i32 909199170, label %2503
  ]

2502:                                             ; preds = %2499
  br label %2503

2503:                                             ; preds = %2502, %2499, %2499, %2499, %2499
  %2504 = phi i32 [ 0, %2502 ], [ 1, %2499 ], [ 1, %2499 ], [ 1, %2499 ], [ 1, %2499 ]
  %2505 = load ptr, ptr %427, align 4
  %2506 = getelementptr inbounds %struct.vop_win_phy, ptr %2505, i32 0, i32 7
  %2507 = load i32, ptr %12, align 4
  %2508 = icmp eq ptr %2506, null
  br i1 %2508, label %2512, label %2509

2509:                                             ; preds = %2503
  %2510 = load i32, ptr %2506, align 4
  %2511 = icmp eq i32 %2510, 0
  br i1 %2511, label %2512, label %2515

2512:                                             ; preds = %2509, %2503
  %2513 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2514 = load ptr, ptr %2513, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2514, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.40) #7
  br label %2557

2515:                                             ; preds = %2509
  %2516 = getelementptr inbounds %struct.vop_win_phy, ptr %2505, i32 0, i32 7, i32 1
  %2517 = load i16, ptr %2516, align 4
  %2518 = zext i16 %2517 to i32
  %2519 = add i32 %2507, %2518
  %2520 = getelementptr inbounds %struct.vop_win_phy, ptr %2505, i32 0, i32 7, i32 2
  %2521 = load i8, ptr %2520, align 2
  %2522 = zext i8 %2521 to i32
  %2523 = getelementptr inbounds %struct.vop_win_phy, ptr %2505, i32 0, i32 7, i32 3
  %2524 = load i8, ptr %2523, align 1, !range !8
  %2525 = icmp eq i8 %2524, 0
  br i1 %2525, label %2532, label %2526

2526:                                             ; preds = %2515
  %2527 = shl nuw i32 %2504, %2522
  %2528 = and i32 %2527, 65535
  %2529 = add nuw nsw i32 %2522, 16
  %2530 = shl i32 %2510, %2529
  %2531 = or i32 %2528, %2530
  br label %2544

2532:                                             ; preds = %2515
  %2533 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2534 = load ptr, ptr %2533, align 8
  %2535 = ashr i32 %2519, 2
  %2536 = getelementptr i32, ptr %2534, i32 %2535
  %2537 = load i32, ptr %2536, align 4
  %2538 = shl i32 %2510, %2522
  %2539 = xor i32 %2538, -1
  %2540 = and i32 %2537, %2539
  %2541 = and i32 %2510, %2504
  %2542 = shl nuw i32 %2541, %2522
  %2543 = or i32 %2540, %2542
  store i32 %2543, ptr %2536, align 4
  br label %2544

2544:                                             ; preds = %2532, %2526
  %2545 = phi i32 [ %2531, %2526 ], [ %2543, %2532 ]
  %2546 = getelementptr inbounds %struct.vop_win_phy, ptr %2505, i32 0, i32 7, i32 4
  %2547 = load i8, ptr %2546, align 4, !range !8
  %2548 = icmp eq i8 %2547, 0
  br i1 %2548, label %2553, label %2549

2549:                                             ; preds = %2544
  %2550 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2551 = load ptr, ptr %2550, align 4
  %2552 = getelementptr i8, ptr %2551, i32 %2519
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2552, i32 %2545) #7, !srcloc !12
  br label %2557

2553:                                             ; preds = %2544
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2554 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2555 = load ptr, ptr %2554, align 4
  %2556 = getelementptr i8, ptr %2555, i32 %2519
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2556, i32 %2545) #7, !srcloc !12
  br label %2557

2557:                                             ; preds = %2553, %2549, %2512
  %2558 = load ptr, ptr %26, align 8
  %2559 = getelementptr inbounds %struct.drm_format_info, ptr %2558, i32 0, i32 8
  %2560 = load i8, ptr %2559, align 4, !range !8
  %2561 = icmp ne i8 %2560, 0
  %2562 = icmp sgt i32 %24, 0
  %2563 = select i1 %2561, i1 %2562, i1 false
  %2564 = load ptr, ptr %427, align 4
  br i1 %2563, label %2565, label %2823

2565:                                             ; preds = %2557
  %2566 = getelementptr inbounds %struct.vop_win_phy, ptr %2564, i32 0, i32 17
  %2567 = load i32, ptr %12, align 4
  %2568 = icmp eq ptr %2566, null
  br i1 %2568, label %2572, label %2569

2569:                                             ; preds = %2565
  %2570 = load i32, ptr %2566, align 4
  %2571 = icmp eq i32 %2570, 0
  br i1 %2571, label %2572, label %2575

2572:                                             ; preds = %2569, %2565
  %2573 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2574 = load ptr, ptr %2573, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2574, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.41) #7
  br label %2617

2575:                                             ; preds = %2569
  %2576 = getelementptr inbounds %struct.vop_win_phy, ptr %2564, i32 0, i32 17, i32 1
  %2577 = load i16, ptr %2576, align 4
  %2578 = zext i16 %2577 to i32
  %2579 = add i32 %2567, %2578
  %2580 = getelementptr inbounds %struct.vop_win_phy, ptr %2564, i32 0, i32 17, i32 2
  %2581 = load i8, ptr %2580, align 2
  %2582 = zext i8 %2581 to i32
  %2583 = getelementptr inbounds %struct.vop_win_phy, ptr %2564, i32 0, i32 17, i32 3
  %2584 = load i8, ptr %2583, align 1, !range !8
  %2585 = icmp eq i8 %2584, 0
  br i1 %2585, label %2592, label %2586

2586:                                             ; preds = %2575
  %2587 = shl i32 192, %2582
  %2588 = and i32 %2587, 65472
  %2589 = add nuw nsw i32 %2582, 16
  %2590 = shl i32 %2570, %2589
  %2591 = or i32 %2588, %2590
  br label %2604

2592:                                             ; preds = %2575
  %2593 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2594 = load ptr, ptr %2593, align 8
  %2595 = ashr i32 %2579, 2
  %2596 = getelementptr i32, ptr %2594, i32 %2595
  %2597 = load i32, ptr %2596, align 4
  %2598 = shl i32 %2570, %2582
  %2599 = xor i32 %2598, -1
  %2600 = and i32 %2597, %2599
  %2601 = and i32 %2570, 192
  %2602 = shl i32 %2601, %2582
  %2603 = or i32 %2600, %2602
  store i32 %2603, ptr %2596, align 4
  br label %2604

2604:                                             ; preds = %2592, %2586
  %2605 = phi i32 [ %2591, %2586 ], [ %2603, %2592 ]
  %2606 = getelementptr inbounds %struct.vop_win_phy, ptr %2564, i32 0, i32 17, i32 4
  %2607 = load i8, ptr %2606, align 4, !range !8
  %2608 = icmp eq i8 %2607, 0
  br i1 %2608, label %2613, label %2609

2609:                                             ; preds = %2604
  %2610 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2611 = load ptr, ptr %2610, align 4
  %2612 = getelementptr i8, ptr %2611, i32 %2579
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2612, i32 %2605) #7, !srcloc !12
  br label %2617

2613:                                             ; preds = %2604
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2614 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2615 = load ptr, ptr %2614, align 4
  %2616 = getelementptr i8, ptr %2615, i32 %2579
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2616, i32 %2605) #7, !srcloc !12
  br label %2617

2617:                                             ; preds = %2613, %2609, %2572
  %2618 = load ptr, ptr %427, align 4
  %2619 = getelementptr inbounds %struct.vop_win_phy, ptr %2618, i32 0, i32 18
  %2620 = load i32, ptr %12, align 4
  %2621 = icmp eq ptr %2619, null
  br i1 %2621, label %2625, label %2622

2622:                                             ; preds = %2617
  %2623 = load i32, ptr %2619, align 4
  %2624 = icmp eq i32 %2623, 0
  br i1 %2624, label %2625, label %2628

2625:                                             ; preds = %2622, %2617
  %2626 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2627 = load ptr, ptr %2626, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2627, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.42) #7
  br label %2670

2628:                                             ; preds = %2622
  %2629 = getelementptr inbounds %struct.vop_win_phy, ptr %2618, i32 0, i32 18, i32 1
  %2630 = load i16, ptr %2629, align 4
  %2631 = zext i16 %2630 to i32
  %2632 = add i32 %2620, %2631
  %2633 = getelementptr inbounds %struct.vop_win_phy, ptr %2618, i32 0, i32 18, i32 2
  %2634 = load i8, ptr %2633, align 2
  %2635 = zext i8 %2634 to i32
  %2636 = getelementptr inbounds %struct.vop_win_phy, ptr %2618, i32 0, i32 18, i32 3
  %2637 = load i8, ptr %2636, align 1, !range !8
  %2638 = icmp eq i8 %2637, 0
  br i1 %2638, label %2645, label %2639

2639:                                             ; preds = %2628
  %2640 = shl i32 105, %2635
  %2641 = and i32 %2640, 65535
  %2642 = add nuw nsw i32 %2635, 16
  %2643 = shl i32 %2623, %2642
  %2644 = or i32 %2641, %2643
  br label %2657

2645:                                             ; preds = %2628
  %2646 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2647 = load ptr, ptr %2646, align 8
  %2648 = ashr i32 %2632, 2
  %2649 = getelementptr i32, ptr %2647, i32 %2648
  %2650 = load i32, ptr %2649, align 4
  %2651 = shl i32 %2623, %2635
  %2652 = xor i32 %2651, -1
  %2653 = and i32 %2650, %2652
  %2654 = and i32 %2623, 105
  %2655 = shl i32 %2654, %2635
  %2656 = or i32 %2653, %2655
  store i32 %2656, ptr %2649, align 4
  br label %2657

2657:                                             ; preds = %2645, %2639
  %2658 = phi i32 [ %2644, %2639 ], [ %2656, %2645 ]
  %2659 = getelementptr inbounds %struct.vop_win_phy, ptr %2618, i32 0, i32 18, i32 4
  %2660 = load i8, ptr %2659, align 4, !range !8
  %2661 = icmp eq i8 %2660, 0
  br i1 %2661, label %2666, label %2662

2662:                                             ; preds = %2657
  %2663 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2664 = load ptr, ptr %2663, align 4
  %2665 = getelementptr i8, ptr %2664, i32 %2632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2665, i32 %2658) #7, !srcloc !12
  br label %2670

2666:                                             ; preds = %2657
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2667 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2668 = load ptr, ptr %2667, align 4
  %2669 = getelementptr i8, ptr %2668, i32 %2632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2669, i32 %2658) #7, !srcloc !12
  br label %2670

2670:                                             ; preds = %2666, %2662, %2625
  %2671 = load ptr, ptr %427, align 4
  %2672 = getelementptr inbounds %struct.vop_win_phy, ptr %2671, i32 0, i32 19
  %2673 = load i32, ptr %12, align 4
  %2674 = icmp eq ptr %2672, null
  br i1 %2674, label %2678, label %2675

2675:                                             ; preds = %2670
  %2676 = load i32, ptr %2672, align 4
  %2677 = icmp eq i32 %2676, 0
  br i1 %2677, label %2678, label %2681

2678:                                             ; preds = %2675, %2670
  %2679 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2680 = load ptr, ptr %2679, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2680, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.43) #7
  br label %2717

2681:                                             ; preds = %2675
  %2682 = getelementptr inbounds %struct.vop_win_phy, ptr %2671, i32 0, i32 19, i32 1
  %2683 = load i16, ptr %2682, align 4
  %2684 = zext i16 %2683 to i32
  %2685 = add i32 %2673, %2684
  %2686 = getelementptr inbounds %struct.vop_win_phy, ptr %2671, i32 0, i32 19, i32 2
  %2687 = load i8, ptr %2686, align 2
  %2688 = zext i8 %2687 to i32
  %2689 = getelementptr inbounds %struct.vop_win_phy, ptr %2671, i32 0, i32 19, i32 3
  %2690 = load i8, ptr %2689, align 1, !range !8
  %2691 = icmp eq i8 %2690, 0
  br i1 %2691, label %2695, label %2692

2692:                                             ; preds = %2681
  %2693 = add nuw nsw i32 %2688, 16
  %2694 = shl i32 %2676, %2693
  br label %2704

2695:                                             ; preds = %2681
  %2696 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2697 = load ptr, ptr %2696, align 8
  %2698 = ashr i32 %2685, 2
  %2699 = getelementptr i32, ptr %2697, i32 %2698
  %2700 = load i32, ptr %2699, align 4
  %2701 = shl i32 %2676, %2688
  %2702 = xor i32 %2701, -1
  %2703 = and i32 %2700, %2702
  store i32 %2703, ptr %2699, align 4
  br label %2704

2704:                                             ; preds = %2695, %2692
  %2705 = phi i32 [ %2694, %2692 ], [ %2703, %2695 ]
  %2706 = getelementptr inbounds %struct.vop_win_phy, ptr %2671, i32 0, i32 19, i32 4
  %2707 = load i8, ptr %2706, align 4, !range !8
  %2708 = icmp eq i8 %2707, 0
  br i1 %2708, label %2713, label %2709

2709:                                             ; preds = %2704
  %2710 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2711 = load ptr, ptr %2710, align 4
  %2712 = getelementptr i8, ptr %2711, i32 %2685
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2712, i32 %2705) #7, !srcloc !12
  br label %2717

2713:                                             ; preds = %2704
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2714 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2715 = load ptr, ptr %2714, align 4
  %2716 = getelementptr i8, ptr %2715, i32 %2685
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2716, i32 %2705) #7, !srcloc !12
  br label %2717

2717:                                             ; preds = %2713, %2709, %2678
  %2718 = load ptr, ptr %427, align 4
  %2719 = getelementptr inbounds %struct.vop_win_phy, ptr %2718, i32 0, i32 20
  %2720 = load i32, ptr %12, align 4
  %2721 = icmp eq ptr %2719, null
  br i1 %2721, label %2725, label %2722

2722:                                             ; preds = %2717
  %2723 = load i32, ptr %2719, align 4
  %2724 = icmp eq i32 %2723, 0
  br i1 %2724, label %2725, label %2728

2725:                                             ; preds = %2722, %2717
  %2726 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2727 = load ptr, ptr %2726, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2727, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.44) #7
  br label %2770

2728:                                             ; preds = %2722
  %2729 = getelementptr inbounds %struct.vop_win_phy, ptr %2718, i32 0, i32 20, i32 1
  %2730 = load i16, ptr %2729, align 4
  %2731 = zext i16 %2730 to i32
  %2732 = add i32 %2720, %2731
  %2733 = getelementptr inbounds %struct.vop_win_phy, ptr %2718, i32 0, i32 20, i32 2
  %2734 = load i8, ptr %2733, align 2
  %2735 = zext i8 %2734 to i32
  %2736 = getelementptr inbounds %struct.vop_win_phy, ptr %2718, i32 0, i32 20, i32 3
  %2737 = load i8, ptr %2736, align 1, !range !8
  %2738 = icmp eq i8 %2737, 0
  br i1 %2738, label %2745, label %2739

2739:                                             ; preds = %2728
  %2740 = shl nuw i32 1, %2735
  %2741 = and i32 %2740, 65535
  %2742 = add nuw nsw i32 %2735, 16
  %2743 = shl i32 %2723, %2742
  %2744 = or i32 %2741, %2743
  br label %2757

2745:                                             ; preds = %2728
  %2746 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2747 = load ptr, ptr %2746, align 8
  %2748 = ashr i32 %2732, 2
  %2749 = getelementptr i32, ptr %2747, i32 %2748
  %2750 = load i32, ptr %2749, align 4
  %2751 = shl i32 %2723, %2735
  %2752 = xor i32 %2751, -1
  %2753 = and i32 %2750, %2752
  %2754 = and i32 %2723, 1
  %2755 = shl nuw i32 %2754, %2735
  %2756 = or i32 %2753, %2755
  store i32 %2756, ptr %2749, align 4
  br label %2757

2757:                                             ; preds = %2745, %2739
  %2758 = phi i32 [ %2744, %2739 ], [ %2756, %2745 ]
  %2759 = getelementptr inbounds %struct.vop_win_phy, ptr %2718, i32 0, i32 20, i32 4
  %2760 = load i8, ptr %2759, align 4, !range !8
  %2761 = icmp eq i8 %2760, 0
  br i1 %2761, label %2766, label %2762

2762:                                             ; preds = %2757
  %2763 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2764 = load ptr, ptr %2763, align 4
  %2765 = getelementptr i8, ptr %2764, i32 %2732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2765, i32 %2758) #7, !srcloc !12
  br label %2770

2766:                                             ; preds = %2757
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2767 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2768 = load ptr, ptr %2767, align 4
  %2769 = getelementptr i8, ptr %2768, i32 %2732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2769, i32 %2758) #7, !srcloc !12
  br label %2770

2770:                                             ; preds = %2766, %2762, %2725
  %2771 = load ptr, ptr %427, align 4
  %2772 = getelementptr inbounds %struct.vop_win_phy, ptr %2771, i32 0, i32 21
  %2773 = load i32, ptr %12, align 4
  %2774 = icmp eq ptr %2772, null
  br i1 %2774, label %2778, label %2775

2775:                                             ; preds = %2770
  %2776 = load i32, ptr %2772, align 4
  %2777 = icmp eq i32 %2776, 0
  br i1 %2777, label %2778, label %2781

2778:                                             ; preds = %2775, %2770
  %2779 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2780 = load ptr, ptr %2779, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2780, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.45) #7
  br label %2916

2781:                                             ; preds = %2775
  %2782 = getelementptr inbounds %struct.vop_win_phy, ptr %2771, i32 0, i32 21, i32 1
  %2783 = load i16, ptr %2782, align 4
  %2784 = zext i16 %2783 to i32
  %2785 = add i32 %2773, %2784
  %2786 = getelementptr inbounds %struct.vop_win_phy, ptr %2771, i32 0, i32 21, i32 2
  %2787 = load i8, ptr %2786, align 2
  %2788 = zext i8 %2787 to i32
  %2789 = getelementptr inbounds %struct.vop_win_phy, ptr %2771, i32 0, i32 21, i32 3
  %2790 = load i8, ptr %2789, align 1, !range !8
  %2791 = icmp eq i8 %2790, 0
  br i1 %2791, label %2798, label %2792

2792:                                             ; preds = %2781
  %2793 = shl nuw i32 1, %2788
  %2794 = and i32 %2793, 65535
  %2795 = add nuw nsw i32 %2788, 16
  %2796 = shl i32 %2776, %2795
  %2797 = or i32 %2794, %2796
  br label %2810

2798:                                             ; preds = %2781
  %2799 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2800 = load ptr, ptr %2799, align 8
  %2801 = ashr i32 %2785, 2
  %2802 = getelementptr i32, ptr %2800, i32 %2801
  %2803 = load i32, ptr %2802, align 4
  %2804 = shl i32 %2776, %2788
  %2805 = xor i32 %2804, -1
  %2806 = and i32 %2803, %2805
  %2807 = and i32 %2776, 1
  %2808 = shl nuw i32 %2807, %2788
  %2809 = or i32 %2806, %2808
  store i32 %2809, ptr %2802, align 4
  br label %2810

2810:                                             ; preds = %2798, %2792
  %2811 = phi i32 [ %2797, %2792 ], [ %2809, %2798 ]
  %2812 = getelementptr inbounds %struct.vop_win_phy, ptr %2771, i32 0, i32 21, i32 4
  %2813 = load i8, ptr %2812, align 4, !range !8
  %2814 = icmp eq i8 %2813, 0
  br i1 %2814, label %2819, label %2815

2815:                                             ; preds = %2810
  %2816 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2817 = load ptr, ptr %2816, align 4
  %2818 = getelementptr i8, ptr %2817, i32 %2785
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2818, i32 %2811) #7, !srcloc !12
  br label %2916

2819:                                             ; preds = %2810
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2820 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2821 = load ptr, ptr %2820, align 4
  %2822 = getelementptr i8, ptr %2821, i32 %2785
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2822, i32 %2811) #7, !srcloc !12
  br label %2916

2823:                                             ; preds = %2557
  %2824 = getelementptr inbounds %struct.vop_win_phy, ptr %2564, i32 0, i32 18
  %2825 = load i32, ptr %12, align 4
  %2826 = icmp eq ptr %2824, null
  br i1 %2826, label %2830, label %2827

2827:                                             ; preds = %2823
  %2828 = load i32, ptr %2824, align 4
  %2829 = icmp eq i32 %2828, 0
  br i1 %2829, label %2830, label %2833

2830:                                             ; preds = %2827, %2823
  %2831 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2832 = load ptr, ptr %2831, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2832, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.42) #7
  br label %2869

2833:                                             ; preds = %2827
  %2834 = getelementptr inbounds %struct.vop_win_phy, ptr %2564, i32 0, i32 18, i32 1
  %2835 = load i16, ptr %2834, align 4
  %2836 = zext i16 %2835 to i32
  %2837 = add i32 %2825, %2836
  %2838 = getelementptr inbounds %struct.vop_win_phy, ptr %2564, i32 0, i32 18, i32 2
  %2839 = load i8, ptr %2838, align 2
  %2840 = zext i8 %2839 to i32
  %2841 = getelementptr inbounds %struct.vop_win_phy, ptr %2564, i32 0, i32 18, i32 3
  %2842 = load i8, ptr %2841, align 1, !range !8
  %2843 = icmp eq i8 %2842, 0
  br i1 %2843, label %2847, label %2844

2844:                                             ; preds = %2833
  %2845 = add nuw nsw i32 %2840, 16
  %2846 = shl i32 %2828, %2845
  br label %2856

2847:                                             ; preds = %2833
  %2848 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2849 = load ptr, ptr %2848, align 8
  %2850 = ashr i32 %2837, 2
  %2851 = getelementptr i32, ptr %2849, i32 %2850
  %2852 = load i32, ptr %2851, align 4
  %2853 = shl i32 %2828, %2840
  %2854 = xor i32 %2853, -1
  %2855 = and i32 %2852, %2854
  store i32 %2855, ptr %2851, align 4
  br label %2856

2856:                                             ; preds = %2847, %2844
  %2857 = phi i32 [ %2846, %2844 ], [ %2855, %2847 ]
  %2858 = getelementptr inbounds %struct.vop_win_phy, ptr %2564, i32 0, i32 18, i32 4
  %2859 = load i8, ptr %2858, align 4, !range !8
  %2860 = icmp eq i8 %2859, 0
  br i1 %2860, label %2865, label %2861

2861:                                             ; preds = %2856
  %2862 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2863 = load ptr, ptr %2862, align 4
  %2864 = getelementptr i8, ptr %2863, i32 %2837
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2864, i32 %2857) #7, !srcloc !12
  br label %2869

2865:                                             ; preds = %2856
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2866 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2867 = load ptr, ptr %2866, align 4
  %2868 = getelementptr i8, ptr %2867, i32 %2837
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2868, i32 %2857) #7, !srcloc !12
  br label %2869

2869:                                             ; preds = %2865, %2861, %2830
  %2870 = load ptr, ptr %427, align 4
  %2871 = getelementptr inbounds %struct.vop_win_phy, ptr %2870, i32 0, i32 21
  %2872 = load i32, ptr %12, align 4
  %2873 = icmp eq ptr %2871, null
  br i1 %2873, label %2877, label %2874

2874:                                             ; preds = %2869
  %2875 = load i32, ptr %2871, align 4
  %2876 = icmp eq i32 %2875, 0
  br i1 %2876, label %2877, label %2880

2877:                                             ; preds = %2874, %2869
  %2878 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2879 = load ptr, ptr %2878, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2879, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.45) #7
  br label %2916

2880:                                             ; preds = %2874
  %2881 = getelementptr inbounds %struct.vop_win_phy, ptr %2870, i32 0, i32 21, i32 1
  %2882 = load i16, ptr %2881, align 4
  %2883 = zext i16 %2882 to i32
  %2884 = add i32 %2872, %2883
  %2885 = getelementptr inbounds %struct.vop_win_phy, ptr %2870, i32 0, i32 21, i32 2
  %2886 = load i8, ptr %2885, align 2
  %2887 = zext i8 %2886 to i32
  %2888 = getelementptr inbounds %struct.vop_win_phy, ptr %2870, i32 0, i32 21, i32 3
  %2889 = load i8, ptr %2888, align 1, !range !8
  %2890 = icmp eq i8 %2889, 0
  br i1 %2890, label %2894, label %2891

2891:                                             ; preds = %2880
  %2892 = add nuw nsw i32 %2887, 16
  %2893 = shl i32 %2875, %2892
  br label %2903

2894:                                             ; preds = %2880
  %2895 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2896 = load ptr, ptr %2895, align 8
  %2897 = ashr i32 %2884, 2
  %2898 = getelementptr i32, ptr %2896, i32 %2897
  %2899 = load i32, ptr %2898, align 4
  %2900 = shl i32 %2875, %2887
  %2901 = xor i32 %2900, -1
  %2902 = and i32 %2899, %2901
  store i32 %2902, ptr %2898, align 4
  br label %2903

2903:                                             ; preds = %2894, %2891
  %2904 = phi i32 [ %2893, %2891 ], [ %2902, %2894 ]
  %2905 = getelementptr inbounds %struct.vop_win_phy, ptr %2870, i32 0, i32 21, i32 4
  %2906 = load i8, ptr %2905, align 4, !range !8
  %2907 = icmp eq i8 %2906, 0
  br i1 %2907, label %2912, label %2908

2908:                                             ; preds = %2903
  %2909 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2910 = load ptr, ptr %2909, align 4
  %2911 = getelementptr i8, ptr %2910, i32 %2884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2911, i32 %2904) #7, !srcloc !12
  br label %2916

2912:                                             ; preds = %2903
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2913 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2914 = load ptr, ptr %2913, align 4
  %2915 = getelementptr i8, ptr %2914, i32 %2884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2915, i32 %2904) #7, !srcloc !12
  br label %2916

2916:                                             ; preds = %2912, %2908, %2877, %2819, %2815, %2778
  %2917 = load ptr, ptr %427, align 4
  %2918 = getelementptr inbounds %struct.vop_win_phy, ptr %2917, i32 0, i32 4
  %2919 = load i32, ptr %12, align 4
  %2920 = icmp eq ptr %2918, null
  br i1 %2920, label %2924, label %2921

2921:                                             ; preds = %2916
  %2922 = load i32, ptr %2918, align 4
  %2923 = icmp eq i32 %2922, 0
  br i1 %2923, label %2924, label %2927

2924:                                             ; preds = %2921, %2916
  %2925 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 1
  %2926 = load ptr, ptr %2925, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %2926, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #7
  br label %2969

2927:                                             ; preds = %2921
  %2928 = getelementptr inbounds %struct.vop_win_phy, ptr %2917, i32 0, i32 4, i32 1
  %2929 = load i16, ptr %2928, align 4
  %2930 = zext i16 %2929 to i32
  %2931 = add i32 %2919, %2930
  %2932 = getelementptr inbounds %struct.vop_win_phy, ptr %2917, i32 0, i32 4, i32 2
  %2933 = load i8, ptr %2932, align 2
  %2934 = zext i8 %2933 to i32
  %2935 = getelementptr inbounds %struct.vop_win_phy, ptr %2917, i32 0, i32 4, i32 3
  %2936 = load i8, ptr %2935, align 1, !range !8
  %2937 = icmp eq i8 %2936, 0
  br i1 %2937, label %2944, label %2938

2938:                                             ; preds = %2927
  %2939 = shl nuw i32 1, %2934
  %2940 = and i32 %2939, 65535
  %2941 = add nuw nsw i32 %2934, 16
  %2942 = shl i32 %2922, %2941
  %2943 = or i32 %2940, %2942
  br label %2956

2944:                                             ; preds = %2927
  %2945 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 11
  %2946 = load ptr, ptr %2945, align 8
  %2947 = ashr i32 %2931, 2
  %2948 = getelementptr i32, ptr %2946, i32 %2947
  %2949 = load i32, ptr %2948, align 4
  %2950 = shl i32 %2922, %2934
  %2951 = xor i32 %2950, -1
  %2952 = and i32 %2949, %2951
  %2953 = and i32 %2922, 1
  %2954 = shl nuw i32 %2953, %2934
  %2955 = or i32 %2952, %2954
  store i32 %2955, ptr %2948, align 4
  br label %2956

2956:                                             ; preds = %2944, %2938
  %2957 = phi i32 [ %2943, %2938 ], [ %2955, %2944 ]
  %2958 = getelementptr inbounds %struct.vop_win_phy, ptr %2917, i32 0, i32 4, i32 4
  %2959 = load i8, ptr %2958, align 4, !range !8
  %2960 = icmp eq i8 %2959, 0
  br i1 %2960, label %2965, label %2961

2961:                                             ; preds = %2956
  %2962 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2963 = load ptr, ptr %2962, align 4
  %2964 = getelementptr i8, ptr %2963, i32 %2931
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2964, i32 %2957) #7, !srcloc !12
  br label %2969

2965:                                             ; preds = %2956
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2966 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 12
  %2967 = load ptr, ptr %2966, align 4
  %2968 = getelementptr i8, ptr %2967, i32 %2931
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2968, i32 %2957) #7, !srcloc !12
  br label %2969

2969:                                             ; preds = %2965, %2961, %2924
  %2970 = shl nuw i32 1, %25
  %2971 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 5
  %2972 = load i32, ptr %2971, align 4
  %2973 = or i32 %2972, %2970
  store i32 %2973, ptr %2971, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %2974 = load i16, ptr %137, align 4
  %2975 = add i16 %2974, 1
  store i16 %2975, ptr %137, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  br label %2976

2976:                                             ; preds = %2969, %49, %43, %38, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vop_plane_atomic_disable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.vop, ptr %10, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %13) #7
  tail call fastcc void @vop_win_disable(ptr noundef nonnull %10, ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %14 = load i16, ptr %13, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  br label %16

16:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vop_plane_atomic_async_check(ptr noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vop_win, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.vop_win_data, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, i32 65536, i32 8192
  %16 = select i1 %14, i32 65536, i32 524288
  %17 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_crtc, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %46

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.drm_plane_state, ptr %24, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = icmp eq ptr %1, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.drm_crtc, ptr %18, i32 0, i32 8
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr %struct.__drm_crtcs_state, ptr %34, i32 %36, i32 1
  br label %42

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 11
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.drm_crtc, ptr %40, i32 0, i32 22
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi ptr [ %37, %32 ], [ %41, %38 ]
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef nonnull %24, ptr noundef %44, i32 noundef %15, i32 noundef %16, i1 noundef zeroext true, i1 noundef zeroext true) #7
  br label %46

46:                                               ; preds = %42, %26, %22, %2
  %47 = phi i32 [ %45, %42 ], [ -22, %2 ], [ -22, %22 ], [ -22, %26 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vop_plane_atomic_async_update(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 4
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr inbounds %struct.drm_plane_state, ptr %20, i32 0, i32 5
  store i32 %19, ptr %21, align 4
  %22 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr inbounds %struct.drm_plane_state, ptr %24, i32 0, i32 7
  store i32 %23, ptr %25, align 4
  %26 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %9, align 4
  %29 = getelementptr inbounds %struct.drm_plane_state, ptr %28, i32 0, i32 6
  store i32 %27, ptr %29, align 4
  %30 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %9, align 4
  %33 = getelementptr inbounds %struct.drm_plane_state, ptr %32, i32 0, i32 8
  store i32 %31, ptr %33, align 4
  %34 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %9, align 4
  %37 = getelementptr inbounds %struct.drm_plane_state, ptr %36, i32 0, i32 9
  store i32 %35, ptr %37, align 4
  %38 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %9, align 4
  %41 = getelementptr inbounds %struct.drm_plane_state, ptr %40, i32 0, i32 10
  store i32 %39, ptr %41, align 4
  %42 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 11
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %9, align 4
  %45 = getelementptr inbounds %struct.drm_plane_state, ptr %44, i32 0, i32 11
  store i32 %43, ptr %45, align 4
  %46 = load ptr, ptr %9, align 4
  %47 = getelementptr inbounds %struct.drm_plane_state, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  store ptr %50, ptr %47, align 4
  store ptr %48, ptr %49, align 4
  %51 = getelementptr inbounds %struct.vop, ptr %12, i32 0, i32 3
  %52 = load i8, ptr %51, align 8, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %128, label %54

54:                                               ; preds = %2
  tail call void @vop_plane_atomic_update(ptr noundef %0, ptr noundef %1)
  %55 = getelementptr inbounds %struct.vop, ptr %12, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %55) #7
  %56 = getelementptr inbounds %struct.vop, ptr %12, i32 0, i32 10
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.vop_data, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i32, ptr %59, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61, %54
  %65 = getelementptr inbounds %struct.vop, ptr %12, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %66, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.68) #7
  br label %108

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.vop_reg, ptr %59, i32 0, i32 1
  %69 = load i16, ptr %68, align 4
  %70 = zext i16 %69 to i32
  %71 = getelementptr inbounds %struct.vop_reg, ptr %59, i32 0, i32 2
  %72 = load i8, ptr %71, align 2
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds %struct.vop_reg, ptr %59, i32 0, i32 3
  %75 = load i8, ptr %74, align 1, !range !8
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %67
  %78 = shl nuw i32 1, %73
  %79 = and i32 %78, 65535
  %80 = add nuw nsw i32 %73, 16
  %81 = shl i32 %62, %80
  %82 = or i32 %79, %81
  br label %95

83:                                               ; preds = %67
  %84 = getelementptr inbounds %struct.vop, ptr %12, i32 0, i32 11
  %85 = load ptr, ptr %84, align 8
  %86 = lshr i32 %70, 2
  %87 = getelementptr i32, ptr %85, i32 %86
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %62, %73
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = and i32 %62, 1
  %93 = shl nuw i32 %92, %73
  %94 = or i32 %91, %93
  store i32 %94, ptr %87, align 4
  br label %95

95:                                               ; preds = %83, %77
  %96 = phi i32 [ %82, %77 ], [ %94, %83 ]
  %97 = getelementptr inbounds %struct.vop_reg, ptr %59, i32 0, i32 4
  %98 = load i8, ptr %97, align 4, !range !8
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.vop, ptr %12, i32 0, i32 12
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %96) #7, !srcloc !12
  br label %108

104:                                              ; preds = %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %105 = getelementptr inbounds %struct.vop, ptr %12, i32 0, i32 12
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr i8, ptr %106, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %96) #7, !srcloc !12
  br label %108

108:                                              ; preds = %104, %100, %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %109 = load i16, ptr %55, align 4
  %110 = add i16 %109, 1
  store i16 %110, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  %111 = icmp eq ptr %14, null
  br i1 %111, label %128, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %9, align 4
  %114 = getelementptr inbounds %struct.drm_plane_state, ptr %113, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, %14
  br i1 %116, label %128, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 2
  tail call void @drm_mode_object_get(ptr noundef %118) #7
  %119 = load ptr, ptr %9, align 4
  %120 = getelementptr inbounds %struct.drm_plane_state, ptr %119, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = tail call i32 @drm_crtc_vblank_get(ptr noundef %121) #7
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124, !prof !18

124:                                              ; preds = %117
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1102, i32 noundef 9, ptr noundef null) #7
  br label %125

125:                                              ; preds = %124, %117
  %126 = getelementptr inbounds %struct.vop, ptr %12, i32 0, i32 7
  tail call void @drm_flip_work_queue(ptr noundef %126, ptr noundef nonnull %14) #7
  %127 = getelementptr inbounds %struct.vop, ptr %12, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %127) #7
  br label %128

128:                                              ; preds = %125, %112, %108, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vop_win_disable(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vop_win, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vop_win_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %205, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %205, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.vop_scl_extension, ptr %10, i32 0, i32 9
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %13, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %21, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.56) #7
  br label %58

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.vop_scl_extension, ptr %10, i32 0, i32 9, i32 1
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = add i32 %14, %25
  %27 = getelementptr inbounds %struct.vop_scl_extension, ptr %10, i32 0, i32 9, i32 2
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.vop_scl_extension, ptr %10, i32 0, i32 9, i32 3
  %31 = load i8, ptr %30, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = add nuw nsw i32 %29, 16
  %35 = shl i32 %17, %34
  br label %45

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %38 = load ptr, ptr %37, align 8
  %39 = ashr i32 %26, 2
  %40 = getelementptr i32, ptr %38, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %17, %29
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  store i32 %44, ptr %40, align 4
  br label %45

45:                                               ; preds = %36, %33
  %46 = phi i32 [ %35, %33 ], [ %44, %36 ]
  %47 = getelementptr inbounds %struct.vop_scl_extension, ptr %10, i32 0, i32 9, i32 4
  %48 = load i8, ptr %47, align 4, !range !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %46) #7, !srcloc !12
  br label %58

54:                                               ; preds = %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %55 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %46) #7, !srcloc !12
  br label %58

58:                                               ; preds = %54, %50, %19
  %59 = load ptr, ptr %5, align 4
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.vop_scl_extension, ptr %61, i32 0, i32 8
  %63 = load i32, ptr %4, align 4
  %64 = icmp eq ptr %62, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, ptr %62, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65, %58
  %69 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %70, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.57) #7
  br label %107

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.vop_scl_extension, ptr %61, i32 0, i32 8, i32 1
  %73 = load i16, ptr %72, align 4
  %74 = zext i16 %73 to i32
  %75 = add i32 %63, %74
  %76 = getelementptr inbounds %struct.vop_scl_extension, ptr %61, i32 0, i32 8, i32 2
  %77 = load i8, ptr %76, align 2
  %78 = zext i8 %77 to i32
  %79 = getelementptr inbounds %struct.vop_scl_extension, ptr %61, i32 0, i32 8, i32 3
  %80 = load i8, ptr %79, align 1, !range !8
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %71
  %83 = add nuw nsw i32 %78, 16
  %84 = shl i32 %66, %83
  br label %94

85:                                               ; preds = %71
  %86 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %87 = load ptr, ptr %86, align 8
  %88 = ashr i32 %75, 2
  %89 = getelementptr i32, ptr %87, i32 %88
  %90 = load i32, ptr %89, align 4
  %91 = shl i32 %66, %78
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  store i32 %93, ptr %89, align 4
  br label %94

94:                                               ; preds = %85, %82
  %95 = phi i32 [ %84, %82 ], [ %93, %85 ]
  %96 = getelementptr inbounds %struct.vop_scl_extension, ptr %61, i32 0, i32 8, i32 4
  %97 = load i8, ptr %96, align 4, !range !8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %95) #7, !srcloc !12
  br label %107

103:                                              ; preds = %94
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %104 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr i8, ptr %105, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %95) #7, !srcloc !12
  br label %107

107:                                              ; preds = %103, %99, %68
  %108 = load ptr, ptr %5, align 4
  %109 = load ptr, ptr %108, align 4
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.vop_scl_extension, ptr %110, i32 0, i32 4
  %112 = load i32, ptr %4, align 4
  %113 = icmp eq ptr %111, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %107
  %115 = load i32, ptr %111, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114, %107
  %118 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %119 = load ptr, ptr %118, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %119, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.63) #7
  br label %156

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.vop_scl_extension, ptr %110, i32 0, i32 4, i32 1
  %122 = load i16, ptr %121, align 4
  %123 = zext i16 %122 to i32
  %124 = add i32 %112, %123
  %125 = getelementptr inbounds %struct.vop_scl_extension, ptr %110, i32 0, i32 4, i32 2
  %126 = load i8, ptr %125, align 2
  %127 = zext i8 %126 to i32
  %128 = getelementptr inbounds %struct.vop_scl_extension, ptr %110, i32 0, i32 4, i32 3
  %129 = load i8, ptr %128, align 1, !range !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %120
  %132 = add nuw nsw i32 %127, 16
  %133 = shl i32 %115, %132
  br label %143

134:                                              ; preds = %120
  %135 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %136 = load ptr, ptr %135, align 8
  %137 = ashr i32 %124, 2
  %138 = getelementptr i32, ptr %136, i32 %137
  %139 = load i32, ptr %138, align 4
  %140 = shl i32 %115, %127
  %141 = xor i32 %140, -1
  %142 = and i32 %139, %141
  store i32 %142, ptr %138, align 4
  br label %143

143:                                              ; preds = %134, %131
  %144 = phi i32 [ %133, %131 ], [ %142, %134 ]
  %145 = getelementptr inbounds %struct.vop_scl_extension, ptr %110, i32 0, i32 4, i32 4
  %146 = load i8, ptr %145, align 4, !range !8
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr i8, ptr %150, i32 %124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %144) #7, !srcloc !12
  br label %156

152:                                              ; preds = %143
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %153 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr i8, ptr %154, i32 %124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %144) #7, !srcloc !12
  br label %156

156:                                              ; preds = %152, %148, %117
  %157 = load ptr, ptr %5, align 4
  %158 = load ptr, ptr %157, align 4
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.vop_scl_extension, ptr %159, i32 0, i32 3
  %161 = load i32, ptr %4, align 4
  %162 = icmp eq ptr %160, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %156
  %164 = load i32, ptr %160, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163, %156
  %167 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %168 = load ptr, ptr %167, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %168, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.64) #7
  br label %205

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.vop_scl_extension, ptr %159, i32 0, i32 3, i32 1
  %171 = load i16, ptr %170, align 4
  %172 = zext i16 %171 to i32
  %173 = add i32 %161, %172
  %174 = getelementptr inbounds %struct.vop_scl_extension, ptr %159, i32 0, i32 3, i32 2
  %175 = load i8, ptr %174, align 2
  %176 = zext i8 %175 to i32
  %177 = getelementptr inbounds %struct.vop_scl_extension, ptr %159, i32 0, i32 3, i32 3
  %178 = load i8, ptr %177, align 1, !range !8
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %169
  %181 = add nuw nsw i32 %176, 16
  %182 = shl i32 %164, %181
  br label %192

183:                                              ; preds = %169
  %184 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %185 = load ptr, ptr %184, align 8
  %186 = ashr i32 %173, 2
  %187 = getelementptr i32, ptr %185, i32 %186
  %188 = load i32, ptr %187, align 4
  %189 = shl i32 %164, %176
  %190 = xor i32 %189, -1
  %191 = and i32 %188, %190
  store i32 %191, ptr %187, align 4
  br label %192

192:                                              ; preds = %183, %180
  %193 = phi i32 [ %182, %180 ], [ %191, %183 ]
  %194 = getelementptr inbounds %struct.vop_scl_extension, ptr %159, i32 0, i32 3, i32 4
  %195 = load i8, ptr %194, align 4, !range !8
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr i8, ptr %199, i32 %173
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %193) #7, !srcloc !12
  br label %205

201:                                              ; preds = %192
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %202 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr i8, ptr %203, i32 %173
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %193) #7, !srcloc !12
  br label %205

205:                                              ; preds = %201, %197, %166, %9, %2
  %206 = load ptr, ptr %5, align 4
  %207 = getelementptr inbounds %struct.vop_win_phy, ptr %206, i32 0, i32 4
  %208 = load i32, ptr %4, align 4
  %209 = icmp eq ptr %207, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %205
  %211 = load i32, ptr %207, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210, %205
  %214 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %215 = load ptr, ptr %214, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %215, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #7
  br label %252

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.vop_win_phy, ptr %206, i32 0, i32 4, i32 1
  %218 = load i16, ptr %217, align 4
  %219 = zext i16 %218 to i32
  %220 = add i32 %208, %219
  %221 = getelementptr inbounds %struct.vop_win_phy, ptr %206, i32 0, i32 4, i32 2
  %222 = load i8, ptr %221, align 2
  %223 = zext i8 %222 to i32
  %224 = getelementptr inbounds %struct.vop_win_phy, ptr %206, i32 0, i32 4, i32 3
  %225 = load i8, ptr %224, align 1, !range !8
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %216
  %228 = add nuw nsw i32 %223, 16
  %229 = shl i32 %211, %228
  br label %239

230:                                              ; preds = %216
  %231 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %232 = load ptr, ptr %231, align 8
  %233 = ashr i32 %220, 2
  %234 = getelementptr i32, ptr %232, i32 %233
  %235 = load i32, ptr %234, align 4
  %236 = shl i32 %211, %223
  %237 = xor i32 %236, -1
  %238 = and i32 %235, %237
  store i32 %238, ptr %234, align 4
  br label %239

239:                                              ; preds = %230, %227
  %240 = phi i32 [ %229, %227 ], [ %238, %230 ]
  %241 = getelementptr inbounds %struct.vop_win_phy, ptr %206, i32 0, i32 4, i32 4
  %242 = load i8, ptr %241, align 4, !range !8
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %248, label %244

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr i8, ptr %246, i32 %220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 %240) #7, !srcloc !12
  br label %252

248:                                              ; preds = %239
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %249 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr i8, ptr %250, i32 %220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 %240) #7, !srcloc !12
  br label %252

252:                                              ; preds = %248, %244, %213
  %253 = getelementptr inbounds %struct.vop_win, ptr %1, i32 0, i32 3
  %254 = load ptr, ptr %253, align 8
  %255 = getelementptr inbounds %struct.vop, ptr %254, i32 0, i32 24
  %256 = ptrtoint ptr %1 to i32
  %257 = ptrtoint ptr %255 to i32
  %258 = sub i32 %256, %257
  %259 = sdiv exact i32 %258, 472
  %260 = shl nuw i32 1, %259
  %261 = xor i32 %260, -1
  %262 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 5
  %263 = load i32, ptr %262, align 4
  %264 = and i32 %263, %261
  store i32 %264, ptr %262, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vop_cfg_done(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vop_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %12, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.68) #7
  br label %54

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.vop_reg, ptr %5, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.vop_reg, ptr %5, i32 0, i32 2
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.vop_reg, ptr %5, i32 0, i32 3
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %13
  %24 = shl nuw i32 1, %19
  %25 = and i32 %24, 65535
  %26 = add nuw nsw i32 %19, 16
  %27 = shl i32 %8, %26
  %28 = or i32 %25, %27
  br label %41

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %31 = load ptr, ptr %30, align 8
  %32 = lshr i32 %16, 2
  %33 = getelementptr i32, ptr %31, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %8, %19
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = and i32 %8, 1
  %39 = shl nuw i32 %38, %19
  %40 = or i32 %37, %39
  store i32 %40, ptr %33, align 4
  br label %41

41:                                               ; preds = %29, %23
  %42 = phi i32 [ %28, %23 ], [ %40, %29 ]
  %43 = getelementptr inbounds %struct.vop_reg, ptr %5, i32 0, i32 4
  %44 = load i8, ptr %43, align 4, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %42) #7, !srcloc !12
  br label %54

50:                                               ; preds = %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %51 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %42) #7, !srcloc !12
  br label %54

54:                                               ; preds = %50, %46, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vop_crtc_reset(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 304) #9
  %4 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %5) #7
  tail call void @kfree(ptr noundef nonnull %5) #7
  br label %8

8:                                                ; preds = %7, %1
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %0, ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vop_crtc_destroy(ptr noundef %0) #0 {
  tail call void @drm_crtc_cleanup(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vop_crtc_duplicate_state(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 304) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %0, ptr noundef nonnull %3) #7
  br label %6

6:                                                ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vop_crtc_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @vop_crtc_set_crc_source(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 -19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @vop_crtc_verify_crc_source(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #5 {
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vop_crtc_enable_vblank(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 8, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1132, i32 noundef 9, ptr noundef null) #7
  br label %162

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 16
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #7
  %9 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vop_data, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vop_intr, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %6
  %17 = load ptr, ptr %12, align 4
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ 0, %16 ], [ %29, %18 ]
  %20 = phi i32 [ 0, %16 ], [ %28, %18 ]
  %21 = phi i32 [ 0, %16 ], [ %30, %18 ]
  %22 = getelementptr i32, ptr %17, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = shl nuw i32 1, %21
  %27 = select i1 %25, i32 0, i32 %26
  %28 = or i32 %27, %20
  %29 = or i32 %27, %19
  %30 = add nuw i32 %21, 1
  %31 = icmp eq i32 %30, %14
  br i1 %31, label %32, label %18

32:                                               ; preds = %18, %6
  %33 = phi i32 [ 0, %6 ], [ %28, %18 ]
  %34 = phi i32 [ 0, %6 ], [ %29, %18 ]
  %35 = getelementptr inbounds %struct.vop_intr, ptr %12, i32 0, i32 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, ptr %35, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %32
  %41 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %42, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #7
  br label %85

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.vop_intr, ptr %12, i32 0, i32 4, i32 1
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = and i32 %38, %34
  %48 = getelementptr inbounds %struct.vop_intr, ptr %12, i32 0, i32 4, i32 2
  %49 = load i8, ptr %48, align 2
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds %struct.vop_intr, ptr %12, i32 0, i32 4, i32 3
  %52 = load i8, ptr %51, align 1, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %43
  %55 = shl i32 %33, %50
  %56 = and i32 %55, 65535
  %57 = add nuw nsw i32 %50, 16
  %58 = shl i32 %47, %57
  %59 = or i32 %56, %58
  br label %72

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %62 = load ptr, ptr %61, align 8
  %63 = lshr i32 %46, 2
  %64 = getelementptr i32, ptr %62, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 %47, %50
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = and i32 %47, %33
  %70 = shl i32 %69, %50
  %71 = or i32 %68, %70
  store i32 %71, ptr %64, align 4
  br label %72

72:                                               ; preds = %60, %54
  %73 = phi i32 [ %59, %54 ], [ %71, %60 ]
  %74 = getelementptr inbounds %struct.vop_intr, ptr %12, i32 0, i32 4, i32 4
  %75 = load i8, ptr %74, align 4, !range !8
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %73) #7, !srcloc !12
  br label %85

81:                                               ; preds = %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %82 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr i8, ptr %83, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %73) #7, !srcloc !12
  br label %85

85:                                               ; preds = %81, %77, %40
  %86 = load ptr, ptr %9, align 4
  %87 = getelementptr inbounds %struct.vop_data, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.vop_intr, ptr %88, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %108, label %92

92:                                               ; preds = %85
  %93 = load ptr, ptr %88, align 4
  br label %94

94:                                               ; preds = %94, %92
  %95 = phi i32 [ 0, %92 ], [ %105, %94 ]
  %96 = phi i32 [ 0, %92 ], [ %104, %94 ]
  %97 = phi i32 [ 0, %92 ], [ %106, %94 ]
  %98 = getelementptr i32, ptr %93, i32 %97
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, 2
  %101 = icmp eq i32 %100, 0
  %102 = shl nuw i32 1, %97
  %103 = select i1 %101, i32 0, i32 %102
  %104 = or i32 %103, %96
  %105 = or i32 %103, %95
  %106 = add nuw i32 %97, 1
  %107 = icmp eq i32 %106, %90
  br i1 %107, label %108, label %94

108:                                              ; preds = %94, %85
  %109 = phi i32 [ 0, %85 ], [ %104, %94 ]
  %110 = phi i32 [ 0, %85 ], [ %105, %94 ]
  %111 = getelementptr inbounds %struct.vop_intr, ptr %88, i32 0, i32 3
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i32, ptr %111, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113, %108
  %117 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %118 = load ptr, ptr %117, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %118, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #7
  br label %161

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.vop_intr, ptr %88, i32 0, i32 3, i32 1
  %121 = load i16, ptr %120, align 4
  %122 = zext i16 %121 to i32
  %123 = and i32 %114, %110
  %124 = getelementptr inbounds %struct.vop_intr, ptr %88, i32 0, i32 3, i32 2
  %125 = load i8, ptr %124, align 2
  %126 = zext i8 %125 to i32
  %127 = getelementptr inbounds %struct.vop_intr, ptr %88, i32 0, i32 3, i32 3
  %128 = load i8, ptr %127, align 1, !range !8
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %119
  %131 = shl i32 %109, %126
  %132 = and i32 %131, 65535
  %133 = add nuw nsw i32 %126, 16
  %134 = shl i32 %123, %133
  %135 = or i32 %132, %134
  br label %148

136:                                              ; preds = %119
  %137 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %138 = load ptr, ptr %137, align 8
  %139 = lshr i32 %122, 2
  %140 = getelementptr i32, ptr %138, i32 %139
  %141 = load i32, ptr %140, align 4
  %142 = shl i32 %123, %126
  %143 = xor i32 %142, -1
  %144 = and i32 %141, %143
  %145 = and i32 %123, %109
  %146 = shl i32 %145, %126
  %147 = or i32 %144, %146
  store i32 %147, ptr %140, align 4
  br label %148

148:                                              ; preds = %136, %130
  %149 = phi i32 [ %135, %130 ], [ %147, %136 ]
  %150 = getelementptr inbounds %struct.vop_intr, ptr %88, i32 0, i32 3, i32 4
  %151 = load i8, ptr %150, align 4, !range !8
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr i8, ptr %155, i32 %122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %149) #7, !srcloc !12
  br label %161

157:                                              ; preds = %148
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %158 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr i8, ptr %159, i32 %122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %149) #7, !srcloc !12
  br label %161

161:                                              ; preds = %157, %153, %116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #7
  br label %162

162:                                              ; preds = %161, %5
  %163 = phi i32 [ -1, %5 ], [ 0, %161 ]
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vop_crtc_disable_vblank(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 8, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1150, i32 noundef 9, ptr noundef null) #7
  br label %77

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 16
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #7
  %9 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vop_data, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vop_intr, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %6
  %17 = load ptr, ptr %12, align 4
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ 0, %16 ], [ %27, %18 ]
  %20 = phi i32 [ 0, %16 ], [ %28, %18 ]
  %21 = getelementptr i32, ptr %17, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  %25 = shl nuw i32 1, %20
  %26 = select i1 %24, i32 0, i32 %25
  %27 = or i32 %26, %19
  %28 = add nuw i32 %20, 1
  %29 = icmp eq i32 %28, %14
  br i1 %29, label %30, label %18

30:                                               ; preds = %18, %6
  %31 = phi i32 [ 0, %6 ], [ %27, %18 ]
  %32 = getelementptr inbounds %struct.vop_intr, ptr %12, i32 0, i32 3
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %32, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %30
  %38 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %39, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #7
  br label %76

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.vop_intr, ptr %12, i32 0, i32 3, i32 1
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = and i32 %35, %31
  %45 = getelementptr inbounds %struct.vop_intr, ptr %12, i32 0, i32 3, i32 2
  %46 = load i8, ptr %45, align 2
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds %struct.vop_intr, ptr %12, i32 0, i32 3, i32 3
  %49 = load i8, ptr %48, align 1, !range !8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  %52 = add nuw nsw i32 %47, 16
  %53 = shl i32 %44, %52
  br label %63

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %56 = load ptr, ptr %55, align 8
  %57 = lshr i32 %43, 2
  %58 = getelementptr i32, ptr %56, i32 %57
  %59 = load i32, ptr %58, align 4
  %60 = shl i32 %44, %47
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  store i32 %62, ptr %58, align 4
  br label %63

63:                                               ; preds = %54, %51
  %64 = phi i32 [ %53, %51 ], [ %62, %54 ]
  %65 = getelementptr inbounds %struct.vop_intr, ptr %12, i32 0, i32 3, i32 4
  %66 = load i8, ptr %65, align 4, !range !8
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %64) #7, !srcloc !12
  br label %76

72:                                               ; preds = %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %73 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %64) #7, !srcloc !12
  br label %76

76:                                               ; preds = %72, %68, %37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #7
  br label %77

77:                                               ; preds = %76, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @vop_crtc_mode_fixup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = mul i32 %6, 1000
  %8 = tail call i32 @clk_round_rate(ptr noundef %5, i32 noundef %7) #7
  %9 = udiv i32 %8, 1000
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %4, align 4
  %14 = mul i32 %10, 1000
  %15 = add i32 %14, 999
  %16 = tail call i32 @clk_round_rate(ptr noundef %13, i32 noundef %15) #7
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi i32 [ %16, %12 ], [ %8, %3 ]
  %19 = add i32 %18, 999
  %20 = udiv i32 %19, 1000
  store i32 %20, ptr %2, align 4
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vop_crtc_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 13
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 3
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, 32
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.drm_property_blob, ptr %19, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 3
  %25 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 17
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.69, i32 noundef %24, i32 noundef %26) #7
  br label %83

29:                                               ; preds = %21, %17, %12, %2
  %30 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 20
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.drm_atomic_state, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 30, i32 18
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %78, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 4
  br label %39

39:                                               ; preds = %67, %37
  %40 = phi ptr [ %31, %37 ], [ %68, %67 ]
  %41 = phi ptr [ %35, %37 ], [ %70, %67 ]
  %42 = phi i32 [ 0, %37 ], [ %69, %67 ]
  %43 = load i32, ptr %38, align 4
  %44 = getelementptr i8, ptr %41, i32 408
  %45 = load i32, ptr %44, align 4
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %43
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %39
  %50 = getelementptr i8, ptr %41, i32 -4
  %51 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %40, ptr noundef %50) #7
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %41, i32 8
  %55 = load ptr, ptr %54, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.70, ptr noundef %55) #7
  %56 = ptrtoint ptr %51 to i32
  br label %83

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.drm_plane_state, ptr %51, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.drm_framebuffer, ptr %59, i32 0, i32 8
  %61 = load i64, ptr %60, align 8
  %62 = and i64 %61, -4503599627370496
  %63 = icmp eq i64 %62, 576460752303423488
  %64 = zext i1 %63 to i32
  %65 = add i32 %42, %64
  %66 = load ptr, ptr %30, align 4
  br label %67

67:                                               ; preds = %57, %39
  %68 = phi ptr [ %40, %39 ], [ %66, %57 ]
  %69 = phi i32 [ %42, %39 ], [ %65, %57 ]
  %70 = load ptr, ptr %41, align 4
  %71 = getelementptr inbounds %struct.drm_atomic_state, ptr %68, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.drm_device, ptr %72, i32 0, i32 30, i32 18
  %74 = icmp eq ptr %70, %73
  br i1 %74, label %75, label %39

75:                                               ; preds = %67
  %76 = icmp sgt i32 %69, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %75
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.71, i32 noundef %69) #7
  br label %83

78:                                               ; preds = %75, %29
  %79 = phi i32 [ %69, %75 ], [ 0, %29 ]
  %80 = icmp eq i32 %79, 1
  %81 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %8, i32 0, i32 5
  %82 = zext i1 %80 to i8
  store i8 %82, ptr %81, align 4
  br label %83

83:                                               ; preds = %78, %77, %53, %28
  %84 = phi i32 [ %56, %53 ], [ -22, %77 ], [ 0, %78 ], [ -22, %28 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vop_crtc_atomic_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 3
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 36
  %12 = icmp eq i8 %11, 32
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call fastcc void @vop_crtc_gamma_set(ptr noundef %0, ptr noundef %0)
  br label %14

14:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vop_crtc_atomic_flush(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 3
  %12 = load i8, ptr %11, align 8, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15, !prof !11

14:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1493, i32 noundef 9, ptr noundef null) #7
  br label %295

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %16) #7
  %17 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %18 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.vop_data, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %74, label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %24, i32 0, i32 5
  %26 = load i8, ptr %25, align 4, !range !8
  %27 = zext i8 %26 to i32
  %28 = load i32, ptr %21, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %32, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #7
  br label %74

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.vop_reg, ptr %21, i32 0, i32 1
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds %struct.vop_reg, ptr %21, i32 0, i32 2
  %38 = load i8, ptr %37, align 2
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.vop_reg, ptr %21, i32 0, i32 3
  %41 = load i8, ptr %40, align 1, !range !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %33
  %44 = shl nuw i32 %27, %39
  %45 = and i32 %44, 65535
  %46 = add nuw nsw i32 %39, 16
  %47 = shl i32 %28, %46
  %48 = or i32 %45, %47
  br label %61

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %51 = load ptr, ptr %50, align 8
  %52 = lshr i32 %36, 2
  %53 = getelementptr i32, ptr %51, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = shl i32 %28, %39
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = and i32 %28, %27
  %59 = shl nuw i32 %58, %39
  %60 = or i32 %57, %59
  store i32 %60, ptr %53, align 4
  br label %61

61:                                               ; preds = %49, %43
  %62 = phi i32 [ %48, %43 ], [ %60, %49 ]
  %63 = getelementptr inbounds %struct.vop_reg, ptr %21, i32 0, i32 4
  %64 = load i8, ptr %63, align 4, !range !8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %62) #7, !srcloc !12
  br label %74

70:                                               ; preds = %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %71 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %62) #7, !srcloc !12
  br label %74

74:                                               ; preds = %70, %66, %30, %15
  %75 = load ptr, ptr %18, align 4
  %76 = getelementptr inbounds %struct.vop_data, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, ptr %77, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79, %74
  %83 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %84, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.68) #7
  br label %126

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.vop_reg, ptr %77, i32 0, i32 1
  %87 = load i16, ptr %86, align 4
  %88 = zext i16 %87 to i32
  %89 = getelementptr inbounds %struct.vop_reg, ptr %77, i32 0, i32 2
  %90 = load i8, ptr %89, align 2
  %91 = zext i8 %90 to i32
  %92 = getelementptr inbounds %struct.vop_reg, ptr %77, i32 0, i32 3
  %93 = load i8, ptr %92, align 1, !range !8
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %85
  %96 = shl nuw i32 1, %91
  %97 = and i32 %96, 65535
  %98 = add nuw nsw i32 %91, 16
  %99 = shl i32 %80, %98
  %100 = or i32 %97, %99
  br label %113

101:                                              ; preds = %85
  %102 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %103 = load ptr, ptr %102, align 8
  %104 = lshr i32 %88, 2
  %105 = getelementptr i32, ptr %103, i32 %104
  %106 = load i32, ptr %105, align 4
  %107 = shl i32 %80, %91
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = and i32 %80, 1
  %111 = shl nuw i32 %110, %91
  %112 = or i32 %109, %111
  store i32 %112, ptr %105, align 4
  br label %113

113:                                              ; preds = %101, %95
  %114 = phi i32 [ %100, %95 ], [ %112, %101 ]
  %115 = getelementptr inbounds %struct.vop_reg, ptr %77, i32 0, i32 4
  %116 = load i8, ptr %115, align 4, !range !8
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr i8, ptr %120, i32 %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %114) #7, !srcloc !12
  br label %126

122:                                              ; preds = %113
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %123 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr i8, ptr %124, i32 %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %114) #7, !srcloc !12
  br label %126

126:                                              ; preds = %122, %118, %82
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %127 = load i16, ptr %16, align 4
  %128 = add i16 %127, 1
  store i16 %128, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  %129 = tail call i64 @ktime_get() #7
  %130 = add i64 %129, 10000000
  %131 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  br label %132

132:                                              ; preds = %176, %126
  %133 = load ptr, ptr %18, align 4
  %134 = getelementptr inbounds %struct.vop_data, ptr %133, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.vop_intr, ptr %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.vop_intr, ptr %135, i32 0, i32 5, i32 1
  %138 = load i16, ptr %137, align 4
  %139 = zext i16 %138 to i32
  %140 = load ptr, ptr %131, align 4
  %141 = getelementptr i8, ptr %140, i32 %139
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %143 = getelementptr inbounds %struct.vop_intr, ptr %135, i32 0, i32 5, i32 2
  %144 = load i8, ptr %143, align 2
  %145 = zext i8 %144 to i32
  %146 = lshr i32 %142, %145
  %147 = load i32, ptr %136, align 4
  %148 = and i32 %146, %147
  %149 = load ptr, ptr %18, align 4
  %150 = getelementptr inbounds %struct.vop_data, ptr %149, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.vop_intr, ptr %151, i32 0, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %226, label %155

155:                                              ; preds = %132
  %156 = load ptr, ptr %151, align 4
  br label %157

157:                                              ; preds = %170, %155
  %158 = phi i32 [ 0, %155 ], [ %171, %170 ]
  %159 = phi i32 [ 0, %155 ], [ %172, %170 ]
  %160 = getelementptr i32, ptr %156, i32 %159
  %161 = load i32, ptr %160, align 4
  %162 = and i32 %161, 2
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %157
  %165 = shl nuw i32 1, %159
  %166 = and i32 %148, %165
  %167 = icmp eq i32 %166, 0
  %168 = select i1 %167, i32 0, i32 %161
  %169 = or i32 %168, %158
  br label %170

170:                                              ; preds = %164, %157
  %171 = phi i32 [ %158, %157 ], [ %169, %164 ]
  %172 = add nuw i32 %159, 1
  %173 = icmp eq i32 %172, %153
  br i1 %173, label %174, label %157

174:                                              ; preds = %170
  %175 = icmp eq i32 %171, 0
  br i1 %175, label %226, label %176

176:                                              ; preds = %174
  %177 = tail call i64 @ktime_get() #7
  %178 = icmp sgt i64 %177, %130
  br i1 %178, label %179, label %132

179:                                              ; preds = %176
  %180 = load ptr, ptr %18, align 4
  %181 = getelementptr inbounds %struct.vop_data, ptr %180, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.vop_intr, ptr %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.vop_intr, ptr %182, i32 0, i32 5, i32 1
  %185 = load i16, ptr %184, align 4
  %186 = zext i16 %185 to i32
  %187 = load ptr, ptr %131, align 4
  %188 = getelementptr i8, ptr %187, i32 %186
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %190 = getelementptr inbounds %struct.vop_intr, ptr %182, i32 0, i32 5, i32 2
  %191 = load i8, ptr %190, align 2
  %192 = zext i8 %191 to i32
  %193 = lshr i32 %189, %192
  %194 = load i32, ptr %183, align 4
  %195 = and i32 %193, %194
  %196 = load ptr, ptr %18, align 4
  %197 = getelementptr inbounds %struct.vop_data, ptr %196, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.vop_intr, ptr %198, i32 0, i32 1
  %200 = load i32, ptr %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %226, label %202

202:                                              ; preds = %179
  %203 = load ptr, ptr %198, align 4
  br label %204

204:                                              ; preds = %217, %202
  %205 = phi i32 [ 0, %202 ], [ %218, %217 ]
  %206 = phi i32 [ 0, %202 ], [ %219, %217 ]
  %207 = getelementptr i32, ptr %203, i32 %206
  %208 = load i32, ptr %207, align 4
  %209 = and i32 %208, 2
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %217, label %211

211:                                              ; preds = %204
  %212 = shl nuw i32 1, %206
  %213 = and i32 %195, %212
  %214 = icmp eq i32 %213, 0
  %215 = select i1 %214, i32 0, i32 %208
  %216 = or i32 %215, %205
  br label %217

217:                                              ; preds = %211, %204
  %218 = phi i32 [ %205, %204 ], [ %216, %211 ]
  %219 = add nuw i32 %206, 1
  %220 = icmp eq i32 %219, %200
  br i1 %220, label %221, label %204

221:                                              ; preds = %217
  %222 = icmp eq i32 %218, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %221
  %224 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %225 = load ptr, ptr %224, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %225, ptr noundef nonnull @.str, ptr noundef nonnull @.str.74) #7
  br label %226

226:                                              ; preds = %223, %221, %179, %174, %132
  %227 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 18
  %228 = load i32, ptr %227, align 4
  tail call void @synchronize_irq(i32 noundef %228) #7
  %229 = load ptr, ptr %0, align 8
  %230 = getelementptr inbounds %struct.drm_device, ptr %229, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %230) #7
  %231 = load ptr, ptr %17, align 4
  %232 = getelementptr inbounds %struct.drm_crtc_state, ptr %231, i32 0, i32 18
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %248, label %235

235:                                              ; preds = %226
  %236 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #7
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %239, label %238, !prof !18

238:                                              ; preds = %235
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1514, i32 noundef 9, ptr noundef null) #7
  br label %239

239:                                              ; preds = %238, %235
  %240 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 6
  %241 = load ptr, ptr %240, align 8
  %242 = icmp eq ptr %241, null
  br i1 %242, label %244, label %243, !prof !18

243:                                              ; preds = %239
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1515, i32 noundef 9, ptr noundef null) #7
  br label %244

244:                                              ; preds = %243, %239
  %245 = load ptr, ptr %17, align 4
  %246 = getelementptr inbounds %struct.drm_crtc_state, ptr %245, i32 0, i32 18
  %247 = load ptr, ptr %246, align 4
  store ptr %247, ptr %240, align 8
  store ptr null, ptr %246, align 4
  br label %248

248:                                              ; preds = %244, %226
  %249 = load ptr, ptr %0, align 8
  %250 = getelementptr inbounds %struct.drm_device, ptr %249, i32 0, i32 28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %251 = load i16, ptr %250, align 4
  %252 = add i16 %251, 1
  store i16 %252, ptr %250, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %253 = getelementptr inbounds %struct.drm_atomic_state, ptr %10, i32 0, i32 1
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.drm_device, ptr %254, i32 0, i32 30, i32 17
  %256 = load i32, ptr %255, align 4
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %295

258:                                              ; preds = %248
  %259 = getelementptr inbounds %struct.drm_atomic_state, ptr %10, i32 0, i32 3
  %260 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 7
  %261 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 8
  br label %262

262:                                              ; preds = %289, %258
  %263 = phi ptr [ %254, %258 ], [ %290, %289 ]
  %264 = phi i32 [ 0, %258 ], [ %291, %289 ]
  %265 = load ptr, ptr %259, align 4
  %266 = getelementptr %struct.__drm_planes_state, ptr %265, i32 %264
  %267 = load ptr, ptr %266, align 4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %289, label %269

269:                                              ; preds = %262
  %270 = getelementptr %struct.__drm_planes_state, ptr %265, i32 %264, i32 2
  %271 = load ptr, ptr %270, align 4
  %272 = getelementptr inbounds %struct.drm_plane_state, ptr %271, i32 0, i32 2
  %273 = load ptr, ptr %272, align 4
  %274 = icmp eq ptr %273, null
  br i1 %274, label %289, label %275

275:                                              ; preds = %269
  %276 = getelementptr %struct.__drm_planes_state, ptr %265, i32 %264, i32 3
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.drm_plane_state, ptr %277, i32 0, i32 2
  %279 = load ptr, ptr %278, align 4
  %280 = icmp eq ptr %273, %279
  br i1 %280, label %289, label %281

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.drm_framebuffer, ptr %273, i32 0, i32 2
  tail call void @drm_mode_object_get(ptr noundef %282) #7
  %283 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #7
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %286, label %285, !prof !18

285:                                              ; preds = %281
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1531, i32 noundef 9, ptr noundef null) #7
  br label %286

286:                                              ; preds = %285, %281
  %287 = load ptr, ptr %272, align 4
  tail call void @drm_flip_work_queue(ptr noundef %260, ptr noundef %287) #7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %261) #7
  %288 = load ptr, ptr %253, align 4
  br label %289

289:                                              ; preds = %286, %275, %269, %262
  %290 = phi ptr [ %288, %286 ], [ %263, %262 ], [ %263, %275 ], [ %263, %269 ]
  %291 = add nuw nsw i32 %264, 1
  %292 = getelementptr inbounds %struct.drm_device, ptr %290, i32 0, i32 30, i32 17
  %293 = load i32, ptr %292, align 4
  %294 = icmp slt i32 %291, %293
  br i1 %294, label %262, label %295

295:                                              ; preds = %289, %248, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vop_crtc_atomic_enable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 3
  %15 = load i16, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 2
  %17 = load i16, ptr %16, align 2
  %18 = sub i16 %15, %17
  %19 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 1
  %20 = load i16, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 4
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = sub i16 %22, %17
  %25 = zext i16 %24 to i32
  %26 = add i16 %24, %20
  %27 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 6
  %28 = load i16, ptr %27, align 2
  %29 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 9
  %30 = load i16, ptr %29, align 4
  %31 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 8
  %32 = load i16, ptr %31, align 2
  %33 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 7
  %34 = load i16, ptr %33, align 4
  %35 = sub i16 %32, %34
  %36 = zext i16 %30 to i32
  %37 = sub i16 %30, %34
  %38 = zext i16 %37 to i32
  %39 = add i16 %37, %28
  %40 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %12, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 10, i32 %41
  %44 = icmp eq ptr %8, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 16
  %47 = load i8, ptr %46, align 2, !range !8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #7
  tail call fastcc void @rockchip_drm_set_win_enabled(ptr noundef %0, i1 noundef zeroext true)
  br label %2023

50:                                               ; preds = %45, %2
  %51 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 12
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call fastcc void @vop_crtc_gamma_set(ptr noundef %0, ptr noundef %0)
  br label %55

55:                                               ; preds = %54, %50
  %56 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %56) #7
  %57 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 6
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60, !prof !18

60:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1318, i32 noundef 9, ptr noundef null) #7
  br label %61

61:                                               ; preds = %60, %55
  %62 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8
  %64 = tail call i32 @__pm_runtime_resume(ptr noundef %63, i32 noundef 4) #7
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load ptr, ptr %62, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %67, ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef %64) #7
  br label %297

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 19
  %70 = load ptr, ptr %69, align 8
  %71 = tail call i32 @clk_enable(ptr noundef %70) #7
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 21
  %75 = load ptr, ptr %74, align 8
  %76 = tail call i32 @clk_enable(ptr noundef %75) #7
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load ptr, ptr %69, align 8
  tail call void @clk_disable(ptr noundef %79) #7
  br label %80

80:                                               ; preds = %78, %68
  %81 = phi i32 [ %71, %68 ], [ %76, %78 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 598, i32 noundef 9, ptr noundef null) #7
  br label %293

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 20
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 @clk_enable(ptr noundef %84) #7
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88, !prof !11

87:                                               ; preds = %82
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 602, i32 noundef 9, ptr noundef null) #7
  br label %289

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = load ptr, ptr %62, align 8
  %92 = tail call i32 @rockchip_drm_dma_attach_device(ptr noundef %90, ptr noundef %91) #7
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr %62, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %95, ptr noundef nonnull @.str, ptr noundef nonnull @.str.108, i32 noundef %92) #7
  %96 = load ptr, ptr %83, align 4
  tail call void @clk_disable(ptr noundef %96) #7
  br label %289

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %98) #7
  %99 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 14
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %104 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  br label %105

105:                                              ; preds = %105, %102
  %106 = phi i32 [ 0, %102 ], [ %113, %105 ]
  %107 = load ptr, ptr %103, align 8
  %108 = sdiv i32 %106, 4
  %109 = getelementptr i32, ptr %107, i32 %108
  %110 = load i32, ptr %109, align 4
  %111 = load ptr, ptr %104, align 4
  %112 = getelementptr i8, ptr %111, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #7, !srcloc !12
  %113 = add i32 %106, 4
  %114 = load i32, ptr %99, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %105, label %116

116:                                              ; preds = %105, %97
  br i1 %44, label %123, label %117

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 16
  %119 = load i8, ptr %118, align 2, !range !8
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr %9, align 4
  br label %136

123:                                              ; preds = %117, %116
  %124 = load ptr, ptr %9, align 4
  %125 = getelementptr inbounds %struct.vop_data, ptr %124, i32 0, i32 9
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %128, %123
  %129 = phi i32 [ %131, %128 ], [ 0, %123 ]
  %130 = getelementptr %struct.vop, ptr %0, i32 0, i32 24, i32 %129
  tail call fastcc void @vop_win_disable(ptr noundef %0, ptr noundef %130) #7
  %131 = add nuw i32 %129, 1
  %132 = load ptr, ptr %9, align 4
  %133 = getelementptr inbounds %struct.vop_data, ptr %132, i32 0, i32 9
  %134 = load i32, ptr %133, align 4
  %135 = icmp ult i32 %131, %134
  br i1 %135, label %128, label %136

136:                                              ; preds = %128, %123, %121
  %137 = phi ptr [ %122, %121 ], [ %124, %123 ], [ %132, %128 ]
  %138 = getelementptr inbounds %struct.vop_data, ptr %137, i32 0, i32 6
  %139 = load ptr, ptr %138, align 8
  %140 = icmp eq ptr %139, null
  br i1 %140, label %185, label %141

141:                                              ; preds = %136
  %142 = load i32, ptr %139, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %145, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #7
  br label %181

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.vop_reg, ptr %139, i32 0, i32 1
  %148 = load i16, ptr %147, align 4
  %149 = zext i16 %148 to i32
  %150 = getelementptr inbounds %struct.vop_reg, ptr %139, i32 0, i32 2
  %151 = load i8, ptr %150, align 2
  %152 = zext i8 %151 to i32
  %153 = getelementptr inbounds %struct.vop_reg, ptr %139, i32 0, i32 3
  %154 = load i8, ptr %153, align 1, !range !8
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %146
  %157 = add nuw nsw i32 %152, 16
  %158 = shl i32 %142, %157
  br label %168

159:                                              ; preds = %146
  %160 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %161 = load ptr, ptr %160, align 8
  %162 = lshr i32 %149, 2
  %163 = getelementptr i32, ptr %161, i32 %162
  %164 = load i32, ptr %163, align 4
  %165 = shl i32 %142, %152
  %166 = xor i32 %165, -1
  %167 = and i32 %164, %166
  store i32 %167, ptr %163, align 4
  br label %168

168:                                              ; preds = %159, %156
  %169 = phi i32 [ %158, %156 ], [ %167, %159 ]
  %170 = getelementptr inbounds %struct.vop_reg, ptr %139, i32 0, i32 4
  %171 = load i8, ptr %170, align 4, !range !8
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr i8, ptr %175, i32 %149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %169) #7, !srcloc !12
  br label %181

177:                                              ; preds = %168
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %178 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr i8, ptr %179, i32 %149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %169) #7, !srcloc !12
  br label %181

181:                                              ; preds = %177, %173, %144
  %182 = load ptr, ptr %11, align 4
  %183 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %182, i32 0, i32 5
  store i8 0, ptr %183, align 4
  %184 = load ptr, ptr %9, align 4
  br label %185

185:                                              ; preds = %181, %136
  %186 = phi ptr [ %184, %181 ], [ %137, %136 ]
  %187 = getelementptr inbounds %struct.vop_data, ptr %186, i32 0, i32 2
  %188 = load ptr, ptr %187, align 8
  %189 = icmp eq ptr %188, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %185
  %191 = load i32, ptr %188, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %190, %185
  %194 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %194, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.68) #7
  br label %236

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.vop_reg, ptr %188, i32 0, i32 1
  %197 = load i16, ptr %196, align 4
  %198 = zext i16 %197 to i32
  %199 = getelementptr inbounds %struct.vop_reg, ptr %188, i32 0, i32 2
  %200 = load i8, ptr %199, align 2
  %201 = zext i8 %200 to i32
  %202 = getelementptr inbounds %struct.vop_reg, ptr %188, i32 0, i32 3
  %203 = load i8, ptr %202, align 1, !range !8
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %195
  %206 = shl nuw i32 1, %201
  %207 = and i32 %206, 65535
  %208 = add nuw nsw i32 %201, 16
  %209 = shl i32 %191, %208
  %210 = or i32 %207, %209
  br label %223

211:                                              ; preds = %195
  %212 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %213 = load ptr, ptr %212, align 8
  %214 = lshr i32 %198, 2
  %215 = getelementptr i32, ptr %213, i32 %214
  %216 = load i32, ptr %215, align 4
  %217 = shl i32 %191, %201
  %218 = xor i32 %217, -1
  %219 = and i32 %216, %218
  %220 = and i32 %191, 1
  %221 = shl nuw i32 %220, %201
  %222 = or i32 %219, %221
  store i32 %222, ptr %215, align 4
  br label %223

223:                                              ; preds = %211, %205
  %224 = phi i32 [ %210, %205 ], [ %222, %211 ]
  %225 = getelementptr inbounds %struct.vop_reg, ptr %188, i32 0, i32 4
  %226 = load i8, ptr %225, align 4, !range !8
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr i8, ptr %230, i32 %198
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %224) #7, !srcloc !12
  br label %236

232:                                              ; preds = %223
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %233 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr i8, ptr %234, i32 %198
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %224) #7, !srcloc !12
  br label %236

236:                                              ; preds = %232, %228, %193
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %237 = load i16, ptr %98, align 4
  %238 = add i16 %237, 1
  store i16 %238, ptr %98, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  %239 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 3
  store i8 1, ptr %239, align 8
  tail call void @_raw_spin_lock(ptr noundef %98) #7
  %240 = load ptr, ptr %9, align 4
  %241 = getelementptr inbounds %struct.vop_data, ptr %240, i32 0, i32 2
  %242 = load ptr, ptr %241, align 8
  %243 = getelementptr inbounds %struct.vop_common, ptr %242, i32 0, i32 12
  %244 = load i32, ptr %243, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %236
  %247 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %247, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.106) #7
  br label %300

248:                                              ; preds = %236
  %249 = getelementptr inbounds %struct.vop_common, ptr %242, i32 0, i32 12, i32 1
  %250 = load i16, ptr %249, align 4
  %251 = zext i16 %250 to i32
  %252 = getelementptr inbounds %struct.vop_common, ptr %242, i32 0, i32 12, i32 2
  %253 = load i8, ptr %252, align 2
  %254 = zext i8 %253 to i32
  %255 = getelementptr inbounds %struct.vop_common, ptr %242, i32 0, i32 12, i32 3
  %256 = load i8, ptr %255, align 1, !range !8
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %248
  %259 = shl nuw i32 1, %254
  %260 = and i32 %259, 65535
  %261 = add nuw nsw i32 %254, 16
  %262 = shl i32 %244, %261
  %263 = or i32 %260, %262
  br label %276

264:                                              ; preds = %248
  %265 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %266 = load ptr, ptr %265, align 8
  %267 = lshr i32 %251, 2
  %268 = getelementptr i32, ptr %266, i32 %267
  %269 = load i32, ptr %268, align 4
  %270 = shl i32 %244, %254
  %271 = xor i32 %270, -1
  %272 = and i32 %269, %271
  %273 = and i32 %244, 1
  %274 = shl nuw i32 %273, %254
  %275 = or i32 %272, %274
  store i32 %275, ptr %268, align 4
  br label %276

276:                                              ; preds = %264, %258
  %277 = phi i32 [ %263, %258 ], [ %275, %264 ]
  %278 = getelementptr inbounds %struct.vop_common, ptr %242, i32 0, i32 12, i32 4
  %279 = load i8, ptr %278, align 4, !range !8
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %285, label %281

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %283 = load ptr, ptr %282, align 4
  %284 = getelementptr i8, ptr %283, i32 %251
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %284, i32 %277) #7, !srcloc !12
  br label %300

285:                                              ; preds = %276
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %286 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %287 = load ptr, ptr %286, align 4
  %288 = getelementptr i8, ptr %287, i32 %251
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %288, i32 %277) #7, !srcloc !12
  br label %300

289:                                              ; preds = %94, %87
  %290 = phi i32 [ %92, %94 ], [ %85, %87 ]
  %291 = load ptr, ptr %74, align 8
  tail call void @clk_disable(ptr noundef %291) #7
  %292 = load ptr, ptr %69, align 8
  tail call void @clk_disable(ptr noundef %292) #7
  br label %293

293:                                              ; preds = %289, %80
  %294 = phi i32 [ %290, %289 ], [ %81, %80 ]
  %295 = load ptr, ptr %62, align 8
  %296 = tail call i32 @__pm_runtime_idle(ptr noundef %295, i32 noundef 4) #7
  br label %297

297:                                              ; preds = %293, %66
  %298 = phi i32 [ %294, %293 ], [ %64, %66 ]
  tail call void @mutex_unlock(ptr noundef %56) #7
  %299 = load ptr, ptr %62, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %299, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75, i32 noundef %298) #7
  br label %2023

300:                                              ; preds = %285, %281, %246
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %301 = load i16, ptr %98, align 4
  %302 = add i16 %301, 1
  store i16 %302, ptr %98, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #7
  %303 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 11
  %304 = load i32, ptr %303, align 4
  %305 = and i32 %304, 1
  %306 = lshr i32 %304, 1
  %307 = and i32 %306, 2
  %308 = or i32 %307, %305
  %309 = load ptr, ptr %9, align 4
  %310 = getelementptr inbounds %struct.vop_data, ptr %309, i32 0, i32 5
  %311 = load ptr, ptr %310, align 4
  %312 = icmp eq ptr %311, null
  br i1 %312, label %316, label %313

313:                                              ; preds = %300
  %314 = load i32, ptr %311, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %313, %300
  %317 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %317, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.76) #7
  br label %359

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.vop_reg, ptr %311, i32 0, i32 1
  %320 = load i16, ptr %319, align 4
  %321 = zext i16 %320 to i32
  %322 = getelementptr inbounds %struct.vop_reg, ptr %311, i32 0, i32 2
  %323 = load i8, ptr %322, align 2
  %324 = zext i8 %323 to i32
  %325 = getelementptr inbounds %struct.vop_reg, ptr %311, i32 0, i32 3
  %326 = load i8, ptr %325, align 1, !range !8
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %334, label %328

328:                                              ; preds = %318
  %329 = shl i32 %308, %324
  %330 = and i32 %329, 65535
  %331 = add nuw nsw i32 %324, 16
  %332 = shl i32 %314, %331
  %333 = or i32 %330, %332
  br label %346

334:                                              ; preds = %318
  %335 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %336 = load ptr, ptr %335, align 8
  %337 = lshr i32 %321, 2
  %338 = getelementptr i32, ptr %336, i32 %337
  %339 = load i32, ptr %338, align 4
  %340 = shl i32 %314, %324
  %341 = xor i32 %340, -1
  %342 = and i32 %339, %341
  %343 = and i32 %314, %308
  %344 = shl i32 %343, %324
  %345 = or i32 %342, %344
  store i32 %345, ptr %338, align 4
  br label %346

346:                                              ; preds = %334, %328
  %347 = phi i32 [ %333, %328 ], [ %345, %334 ]
  %348 = getelementptr inbounds %struct.vop_reg, ptr %311, i32 0, i32 4
  %349 = load i8, ptr %348, align 4, !range !8
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %355, label %351

351:                                              ; preds = %346
  %352 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %353 = load ptr, ptr %352, align 4
  %354 = getelementptr i8, ptr %353, i32 %321
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %354, i32 %347) #7, !srcloc !12
  br label %359

355:                                              ; preds = %346
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %356 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %357 = load ptr, ptr %356, align 4
  %358 = getelementptr i8, ptr %357, i32 %321
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %358, i32 %347) #7, !srcloc !12
  br label %359

359:                                              ; preds = %355, %351, %316
  %360 = load ptr, ptr %9, align 4
  %361 = getelementptr inbounds %struct.vop_data, ptr %360, i32 0, i32 5
  %362 = load ptr, ptr %361, align 4
  %363 = getelementptr inbounds %struct.vop_output, ptr %362, i32 0, i32 15
  %364 = icmp eq ptr %363, null
  br i1 %364, label %368, label %365

365:                                              ; preds = %359
  %366 = load i32, ptr %363, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %365, %359
  %369 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %369, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.77) #7
  br label %405

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.vop_output, ptr %362, i32 0, i32 15, i32 1
  %372 = load i16, ptr %371, align 4
  %373 = zext i16 %372 to i32
  %374 = getelementptr inbounds %struct.vop_output, ptr %362, i32 0, i32 15, i32 2
  %375 = load i8, ptr %374, align 2
  %376 = zext i8 %375 to i32
  %377 = getelementptr inbounds %struct.vop_output, ptr %362, i32 0, i32 15, i32 3
  %378 = load i8, ptr %377, align 1, !range !8
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %383, label %380

380:                                              ; preds = %370
  %381 = add nuw nsw i32 %376, 16
  %382 = shl i32 %366, %381
  br label %392

383:                                              ; preds = %370
  %384 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %385 = load ptr, ptr %384, align 8
  %386 = lshr i32 %373, 2
  %387 = getelementptr i32, ptr %385, i32 %386
  %388 = load i32, ptr %387, align 4
  %389 = shl i32 %366, %376
  %390 = xor i32 %389, -1
  %391 = and i32 %388, %390
  store i32 %391, ptr %387, align 4
  br label %392

392:                                              ; preds = %383, %380
  %393 = phi i32 [ %382, %380 ], [ %391, %383 ]
  %394 = getelementptr inbounds %struct.vop_output, ptr %362, i32 0, i32 15, i32 4
  %395 = load i8, ptr %394, align 4, !range !8
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %401, label %397

397:                                              ; preds = %392
  %398 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %399 = load ptr, ptr %398, align 4
  %400 = getelementptr i8, ptr %399, i32 %373
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %400, i32 %393) #7, !srcloc !12
  br label %405

401:                                              ; preds = %392
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %402 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %403 = load ptr, ptr %402, align 4
  %404 = getelementptr i8, ptr %403, i32 %373
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %404, i32 %393) #7, !srcloc !12
  br label %405

405:                                              ; preds = %401, %397, %368
  %406 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %12, i32 0, i32 1
  %407 = load i32, ptr %406, align 4
  switch i32 %407, label %1237 [
    i32 7, label %408
    i32 14, label %564
    i32 11, label %720
    i32 16, label %876
    i32 10, label %1087
  ]

408:                                              ; preds = %405
  %409 = load ptr, ptr %9, align 4
  %410 = getelementptr inbounds %struct.vop_data, ptr %409, i32 0, i32 5
  %411 = load ptr, ptr %410, align 4
  %412 = getelementptr inbounds %struct.vop_output, ptr %411, i32 0, i32 10
  %413 = icmp eq ptr %412, null
  br i1 %413, label %417, label %414

414:                                              ; preds = %408
  %415 = load i32, ptr %412, align 4
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %419

417:                                              ; preds = %414, %408
  %418 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %418, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.78) #7
  br label %460

419:                                              ; preds = %414
  %420 = getelementptr inbounds %struct.vop_output, ptr %411, i32 0, i32 10, i32 1
  %421 = load i16, ptr %420, align 4
  %422 = zext i16 %421 to i32
  %423 = getelementptr inbounds %struct.vop_output, ptr %411, i32 0, i32 10, i32 2
  %424 = load i8, ptr %423, align 2
  %425 = zext i8 %424 to i32
  %426 = getelementptr inbounds %struct.vop_output, ptr %411, i32 0, i32 10, i32 3
  %427 = load i8, ptr %426, align 1, !range !8
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %435, label %429

429:                                              ; preds = %419
  %430 = shl nuw i32 1, %425
  %431 = and i32 %430, 65535
  %432 = add nuw nsw i32 %425, 16
  %433 = shl i32 %415, %432
  %434 = or i32 %431, %433
  br label %447

435:                                              ; preds = %419
  %436 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %437 = load ptr, ptr %436, align 8
  %438 = lshr i32 %422, 2
  %439 = getelementptr i32, ptr %437, i32 %438
  %440 = load i32, ptr %439, align 4
  %441 = shl i32 %415, %425
  %442 = xor i32 %441, -1
  %443 = and i32 %440, %442
  %444 = and i32 %415, 1
  %445 = shl nuw i32 %444, %425
  %446 = or i32 %443, %445
  store i32 %446, ptr %439, align 4
  br label %447

447:                                              ; preds = %435, %429
  %448 = phi i32 [ %434, %429 ], [ %446, %435 ]
  %449 = getelementptr inbounds %struct.vop_output, ptr %411, i32 0, i32 10, i32 4
  %450 = load i8, ptr %449, align 4, !range !8
  %451 = icmp eq i8 %450, 0
  br i1 %451, label %456, label %452

452:                                              ; preds = %447
  %453 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %454 = load ptr, ptr %453, align 4
  %455 = getelementptr i8, ptr %454, i32 %422
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %455, i32 %448) #7, !srcloc !12
  br label %460

456:                                              ; preds = %447
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %457 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %458 = load ptr, ptr %457, align 4
  %459 = getelementptr i8, ptr %458, i32 %422
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %459, i32 %448) #7, !srcloc !12
  br label %460

460:                                              ; preds = %456, %452, %417
  %461 = load ptr, ptr %9, align 4
  %462 = getelementptr inbounds %struct.vop_data, ptr %461, i32 0, i32 5
  %463 = load ptr, ptr %462, align 4
  %464 = getelementptr inbounds %struct.vop_output, ptr %463, i32 0, i32 9
  %465 = icmp eq ptr %464, null
  br i1 %465, label %469, label %466

466:                                              ; preds = %460
  %467 = load i32, ptr %464, align 4
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %471

469:                                              ; preds = %466, %460
  %470 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %470, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.79) #7
  br label %512

471:                                              ; preds = %466
  %472 = getelementptr inbounds %struct.vop_output, ptr %463, i32 0, i32 9, i32 1
  %473 = load i16, ptr %472, align 4
  %474 = zext i16 %473 to i32
  %475 = getelementptr inbounds %struct.vop_output, ptr %463, i32 0, i32 9, i32 2
  %476 = load i8, ptr %475, align 2
  %477 = zext i8 %476 to i32
  %478 = getelementptr inbounds %struct.vop_output, ptr %463, i32 0, i32 9, i32 3
  %479 = load i8, ptr %478, align 1, !range !8
  %480 = icmp eq i8 %479, 0
  br i1 %480, label %487, label %481

481:                                              ; preds = %471
  %482 = shl i32 %308, %477
  %483 = and i32 %482, 65535
  %484 = add nuw nsw i32 %477, 16
  %485 = shl i32 %467, %484
  %486 = or i32 %483, %485
  br label %499

487:                                              ; preds = %471
  %488 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %489 = load ptr, ptr %488, align 8
  %490 = lshr i32 %474, 2
  %491 = getelementptr i32, ptr %489, i32 %490
  %492 = load i32, ptr %491, align 4
  %493 = shl i32 %467, %477
  %494 = xor i32 %493, -1
  %495 = and i32 %492, %494
  %496 = and i32 %467, %308
  %497 = shl i32 %496, %477
  %498 = or i32 %495, %497
  store i32 %498, ptr %491, align 4
  br label %499

499:                                              ; preds = %487, %481
  %500 = phi i32 [ %486, %481 ], [ %498, %487 ]
  %501 = getelementptr inbounds %struct.vop_output, ptr %463, i32 0, i32 9, i32 4
  %502 = load i8, ptr %501, align 4, !range !8
  %503 = icmp eq i8 %502, 0
  br i1 %503, label %508, label %504

504:                                              ; preds = %499
  %505 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %506 = load ptr, ptr %505, align 4
  %507 = getelementptr i8, ptr %506, i32 %474
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %507, i32 %500) #7, !srcloc !12
  br label %512

508:                                              ; preds = %499
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %509 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %510 = load ptr, ptr %509, align 4
  %511 = getelementptr i8, ptr %510, i32 %474
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %511, i32 %500) #7, !srcloc !12
  br label %512

512:                                              ; preds = %508, %504, %469
  %513 = load ptr, ptr %9, align 4
  %514 = getelementptr inbounds %struct.vop_data, ptr %513, i32 0, i32 5
  %515 = load ptr, ptr %514, align 4
  %516 = getelementptr inbounds %struct.vop_output, ptr %515, i32 0, i32 16
  %517 = icmp eq ptr %516, null
  br i1 %517, label %521, label %518

518:                                              ; preds = %512
  %519 = load i32, ptr %516, align 4
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %523

521:                                              ; preds = %518, %512
  %522 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %522, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.80) #7
  br label %1239

523:                                              ; preds = %518
  %524 = getelementptr inbounds %struct.vop_output, ptr %515, i32 0, i32 16, i32 1
  %525 = load i16, ptr %524, align 4
  %526 = zext i16 %525 to i32
  %527 = getelementptr inbounds %struct.vop_output, ptr %515, i32 0, i32 16, i32 2
  %528 = load i8, ptr %527, align 2
  %529 = zext i8 %528 to i32
  %530 = getelementptr inbounds %struct.vop_output, ptr %515, i32 0, i32 16, i32 3
  %531 = load i8, ptr %530, align 1, !range !8
  %532 = icmp eq i8 %531, 0
  br i1 %532, label %539, label %533

533:                                              ; preds = %523
  %534 = shl nuw i32 1, %529
  %535 = and i32 %534, 65535
  %536 = add nuw nsw i32 %529, 16
  %537 = shl i32 %519, %536
  %538 = or i32 %535, %537
  br label %551

539:                                              ; preds = %523
  %540 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %541 = load ptr, ptr %540, align 8
  %542 = lshr i32 %526, 2
  %543 = getelementptr i32, ptr %541, i32 %542
  %544 = load i32, ptr %543, align 4
  %545 = shl i32 %519, %529
  %546 = xor i32 %545, -1
  %547 = and i32 %544, %546
  %548 = and i32 %519, 1
  %549 = shl nuw i32 %548, %529
  %550 = or i32 %547, %549
  store i32 %550, ptr %543, align 4
  br label %551

551:                                              ; preds = %539, %533
  %552 = phi i32 [ %538, %533 ], [ %550, %539 ]
  %553 = getelementptr inbounds %struct.vop_output, ptr %515, i32 0, i32 16, i32 4
  %554 = load i8, ptr %553, align 4, !range !8
  %555 = icmp eq i8 %554, 0
  br i1 %555, label %560, label %556

556:                                              ; preds = %551
  %557 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %558 = load ptr, ptr %557, align 4
  %559 = getelementptr i8, ptr %558, i32 %526
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %559, i32 %552) #7, !srcloc !12
  br label %1239

560:                                              ; preds = %551
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %561 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %562 = load ptr, ptr %561, align 4
  %563 = getelementptr i8, ptr %562, i32 %526
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %563, i32 %552) #7, !srcloc !12
  br label %1239

564:                                              ; preds = %405
  %565 = load ptr, ptr %9, align 4
  %566 = getelementptr inbounds %struct.vop_data, ptr %565, i32 0, i32 5
  %567 = load ptr, ptr %566, align 4
  %568 = getelementptr inbounds %struct.vop_output, ptr %567, i32 0, i32 4
  %569 = icmp eq ptr %568, null
  br i1 %569, label %573, label %570

570:                                              ; preds = %564
  %571 = load i32, ptr %568, align 4
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %575

573:                                              ; preds = %570, %564
  %574 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %574, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.81) #7
  br label %616

575:                                              ; preds = %570
  %576 = getelementptr inbounds %struct.vop_output, ptr %567, i32 0, i32 4, i32 1
  %577 = load i16, ptr %576, align 4
  %578 = zext i16 %577 to i32
  %579 = getelementptr inbounds %struct.vop_output, ptr %567, i32 0, i32 4, i32 2
  %580 = load i8, ptr %579, align 2
  %581 = zext i8 %580 to i32
  %582 = getelementptr inbounds %struct.vop_output, ptr %567, i32 0, i32 4, i32 3
  %583 = load i8, ptr %582, align 1, !range !8
  %584 = icmp eq i8 %583, 0
  br i1 %584, label %591, label %585

585:                                              ; preds = %575
  %586 = shl nuw i32 1, %581
  %587 = and i32 %586, 65535
  %588 = add nuw nsw i32 %581, 16
  %589 = shl i32 %571, %588
  %590 = or i32 %587, %589
  br label %603

591:                                              ; preds = %575
  %592 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %593 = load ptr, ptr %592, align 8
  %594 = lshr i32 %578, 2
  %595 = getelementptr i32, ptr %593, i32 %594
  %596 = load i32, ptr %595, align 4
  %597 = shl i32 %571, %581
  %598 = xor i32 %597, -1
  %599 = and i32 %596, %598
  %600 = and i32 %571, 1
  %601 = shl nuw i32 %600, %581
  %602 = or i32 %599, %601
  store i32 %602, ptr %595, align 4
  br label %603

603:                                              ; preds = %591, %585
  %604 = phi i32 [ %590, %585 ], [ %602, %591 ]
  %605 = getelementptr inbounds %struct.vop_output, ptr %567, i32 0, i32 4, i32 4
  %606 = load i8, ptr %605, align 4, !range !8
  %607 = icmp eq i8 %606, 0
  br i1 %607, label %612, label %608

608:                                              ; preds = %603
  %609 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %610 = load ptr, ptr %609, align 4
  %611 = getelementptr i8, ptr %610, i32 %578
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %611, i32 %604) #7, !srcloc !12
  br label %616

612:                                              ; preds = %603
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %613 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %614 = load ptr, ptr %613, align 4
  %615 = getelementptr i8, ptr %614, i32 %578
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %615, i32 %604) #7, !srcloc !12
  br label %616

616:                                              ; preds = %612, %608, %573
  %617 = load ptr, ptr %9, align 4
  %618 = getelementptr inbounds %struct.vop_data, ptr %617, i32 0, i32 5
  %619 = load ptr, ptr %618, align 4
  %620 = getelementptr inbounds %struct.vop_output, ptr %619, i32 0, i32 3
  %621 = icmp eq ptr %620, null
  br i1 %621, label %625, label %622

622:                                              ; preds = %616
  %623 = load i32, ptr %620, align 4
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %625, label %627

625:                                              ; preds = %622, %616
  %626 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %626, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.82) #7
  br label %668

627:                                              ; preds = %622
  %628 = getelementptr inbounds %struct.vop_output, ptr %619, i32 0, i32 3, i32 1
  %629 = load i16, ptr %628, align 4
  %630 = zext i16 %629 to i32
  %631 = getelementptr inbounds %struct.vop_output, ptr %619, i32 0, i32 3, i32 2
  %632 = load i8, ptr %631, align 2
  %633 = zext i8 %632 to i32
  %634 = getelementptr inbounds %struct.vop_output, ptr %619, i32 0, i32 3, i32 3
  %635 = load i8, ptr %634, align 1, !range !8
  %636 = icmp eq i8 %635, 0
  br i1 %636, label %643, label %637

637:                                              ; preds = %627
  %638 = shl i32 %308, %633
  %639 = and i32 %638, 65535
  %640 = add nuw nsw i32 %633, 16
  %641 = shl i32 %623, %640
  %642 = or i32 %639, %641
  br label %655

643:                                              ; preds = %627
  %644 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %645 = load ptr, ptr %644, align 8
  %646 = lshr i32 %630, 2
  %647 = getelementptr i32, ptr %645, i32 %646
  %648 = load i32, ptr %647, align 4
  %649 = shl i32 %623, %633
  %650 = xor i32 %649, -1
  %651 = and i32 %648, %650
  %652 = and i32 %623, %308
  %653 = shl i32 %652, %633
  %654 = or i32 %651, %653
  store i32 %654, ptr %647, align 4
  br label %655

655:                                              ; preds = %643, %637
  %656 = phi i32 [ %642, %637 ], [ %654, %643 ]
  %657 = getelementptr inbounds %struct.vop_output, ptr %619, i32 0, i32 3, i32 4
  %658 = load i8, ptr %657, align 4, !range !8
  %659 = icmp eq i8 %658, 0
  br i1 %659, label %664, label %660

660:                                              ; preds = %655
  %661 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %662 = load ptr, ptr %661, align 4
  %663 = getelementptr i8, ptr %662, i32 %630
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %663, i32 %656) #7, !srcloc !12
  br label %668

664:                                              ; preds = %655
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %665 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %666 = load ptr, ptr %665, align 4
  %667 = getelementptr i8, ptr %666, i32 %630
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %667, i32 %656) #7, !srcloc !12
  br label %668

668:                                              ; preds = %664, %660, %625
  %669 = load ptr, ptr %9, align 4
  %670 = getelementptr inbounds %struct.vop_data, ptr %669, i32 0, i32 5
  %671 = load ptr, ptr %670, align 4
  %672 = getelementptr inbounds %struct.vop_output, ptr %671, i32 0, i32 12
  %673 = icmp eq ptr %672, null
  br i1 %673, label %677, label %674

674:                                              ; preds = %668
  %675 = load i32, ptr %672, align 4
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %677, label %679

677:                                              ; preds = %674, %668
  %678 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %678, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.83) #7
  br label %1239

679:                                              ; preds = %674
  %680 = getelementptr inbounds %struct.vop_output, ptr %671, i32 0, i32 12, i32 1
  %681 = load i16, ptr %680, align 4
  %682 = zext i16 %681 to i32
  %683 = getelementptr inbounds %struct.vop_output, ptr %671, i32 0, i32 12, i32 2
  %684 = load i8, ptr %683, align 2
  %685 = zext i8 %684 to i32
  %686 = getelementptr inbounds %struct.vop_output, ptr %671, i32 0, i32 12, i32 3
  %687 = load i8, ptr %686, align 1, !range !8
  %688 = icmp eq i8 %687, 0
  br i1 %688, label %695, label %689

689:                                              ; preds = %679
  %690 = shl nuw i32 1, %685
  %691 = and i32 %690, 65535
  %692 = add nuw nsw i32 %685, 16
  %693 = shl i32 %675, %692
  %694 = or i32 %691, %693
  br label %707

695:                                              ; preds = %679
  %696 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %697 = load ptr, ptr %696, align 8
  %698 = lshr i32 %682, 2
  %699 = getelementptr i32, ptr %697, i32 %698
  %700 = load i32, ptr %699, align 4
  %701 = shl i32 %675, %685
  %702 = xor i32 %701, -1
  %703 = and i32 %700, %702
  %704 = and i32 %675, 1
  %705 = shl nuw i32 %704, %685
  %706 = or i32 %703, %705
  store i32 %706, ptr %699, align 4
  br label %707

707:                                              ; preds = %695, %689
  %708 = phi i32 [ %694, %689 ], [ %706, %695 ]
  %709 = getelementptr inbounds %struct.vop_output, ptr %671, i32 0, i32 12, i32 4
  %710 = load i8, ptr %709, align 4, !range !8
  %711 = icmp eq i8 %710, 0
  br i1 %711, label %716, label %712

712:                                              ; preds = %707
  %713 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %714 = load ptr, ptr %713, align 4
  %715 = getelementptr i8, ptr %714, i32 %682
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %715, i32 %708) #7, !srcloc !12
  br label %1239

716:                                              ; preds = %707
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %717 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %718 = load ptr, ptr %717, align 4
  %719 = getelementptr i8, ptr %718, i32 %682
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %719, i32 %708) #7, !srcloc !12
  br label %1239

720:                                              ; preds = %405
  %721 = load ptr, ptr %9, align 4
  %722 = getelementptr inbounds %struct.vop_data, ptr %721, i32 0, i32 5
  %723 = load ptr, ptr %722, align 4
  %724 = getelementptr inbounds %struct.vop_output, ptr %723, i32 0, i32 6
  %725 = icmp eq ptr %724, null
  br i1 %725, label %729, label %726

726:                                              ; preds = %720
  %727 = load i32, ptr %724, align 4
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %729, label %731

729:                                              ; preds = %726, %720
  %730 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %730, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.84) #7
  br label %772

731:                                              ; preds = %726
  %732 = getelementptr inbounds %struct.vop_output, ptr %723, i32 0, i32 6, i32 1
  %733 = load i16, ptr %732, align 4
  %734 = zext i16 %733 to i32
  %735 = getelementptr inbounds %struct.vop_output, ptr %723, i32 0, i32 6, i32 2
  %736 = load i8, ptr %735, align 2
  %737 = zext i8 %736 to i32
  %738 = getelementptr inbounds %struct.vop_output, ptr %723, i32 0, i32 6, i32 3
  %739 = load i8, ptr %738, align 1, !range !8
  %740 = icmp eq i8 %739, 0
  br i1 %740, label %747, label %741

741:                                              ; preds = %731
  %742 = shl nuw i32 1, %737
  %743 = and i32 %742, 65535
  %744 = add nuw nsw i32 %737, 16
  %745 = shl i32 %727, %744
  %746 = or i32 %743, %745
  br label %759

747:                                              ; preds = %731
  %748 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %749 = load ptr, ptr %748, align 8
  %750 = lshr i32 %734, 2
  %751 = getelementptr i32, ptr %749, i32 %750
  %752 = load i32, ptr %751, align 4
  %753 = shl i32 %727, %737
  %754 = xor i32 %753, -1
  %755 = and i32 %752, %754
  %756 = and i32 %727, 1
  %757 = shl nuw i32 %756, %737
  %758 = or i32 %755, %757
  store i32 %758, ptr %751, align 4
  br label %759

759:                                              ; preds = %747, %741
  %760 = phi i32 [ %746, %741 ], [ %758, %747 ]
  %761 = getelementptr inbounds %struct.vop_output, ptr %723, i32 0, i32 6, i32 4
  %762 = load i8, ptr %761, align 4, !range !8
  %763 = icmp eq i8 %762, 0
  br i1 %763, label %768, label %764

764:                                              ; preds = %759
  %765 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %766 = load ptr, ptr %765, align 4
  %767 = getelementptr i8, ptr %766, i32 %734
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %767, i32 %760) #7, !srcloc !12
  br label %772

768:                                              ; preds = %759
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %769 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %770 = load ptr, ptr %769, align 4
  %771 = getelementptr i8, ptr %770, i32 %734
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %771, i32 %760) #7, !srcloc !12
  br label %772

772:                                              ; preds = %768, %764, %729
  %773 = load ptr, ptr %9, align 4
  %774 = getelementptr inbounds %struct.vop_data, ptr %773, i32 0, i32 5
  %775 = load ptr, ptr %774, align 4
  %776 = getelementptr inbounds %struct.vop_output, ptr %775, i32 0, i32 5
  %777 = icmp eq ptr %776, null
  br i1 %777, label %781, label %778

778:                                              ; preds = %772
  %779 = load i32, ptr %776, align 4
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %783

781:                                              ; preds = %778, %772
  %782 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %782, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.85) #7
  br label %824

783:                                              ; preds = %778
  %784 = getelementptr inbounds %struct.vop_output, ptr %775, i32 0, i32 5, i32 1
  %785 = load i16, ptr %784, align 4
  %786 = zext i16 %785 to i32
  %787 = getelementptr inbounds %struct.vop_output, ptr %775, i32 0, i32 5, i32 2
  %788 = load i8, ptr %787, align 2
  %789 = zext i8 %788 to i32
  %790 = getelementptr inbounds %struct.vop_output, ptr %775, i32 0, i32 5, i32 3
  %791 = load i8, ptr %790, align 1, !range !8
  %792 = icmp eq i8 %791, 0
  br i1 %792, label %799, label %793

793:                                              ; preds = %783
  %794 = shl i32 %308, %789
  %795 = and i32 %794, 65535
  %796 = add nuw nsw i32 %789, 16
  %797 = shl i32 %779, %796
  %798 = or i32 %795, %797
  br label %811

799:                                              ; preds = %783
  %800 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %801 = load ptr, ptr %800, align 8
  %802 = lshr i32 %786, 2
  %803 = getelementptr i32, ptr %801, i32 %802
  %804 = load i32, ptr %803, align 4
  %805 = shl i32 %779, %789
  %806 = xor i32 %805, -1
  %807 = and i32 %804, %806
  %808 = and i32 %779, %308
  %809 = shl i32 %808, %789
  %810 = or i32 %807, %809
  store i32 %810, ptr %803, align 4
  br label %811

811:                                              ; preds = %799, %793
  %812 = phi i32 [ %798, %793 ], [ %810, %799 ]
  %813 = getelementptr inbounds %struct.vop_output, ptr %775, i32 0, i32 5, i32 4
  %814 = load i8, ptr %813, align 4, !range !8
  %815 = icmp eq i8 %814, 0
  br i1 %815, label %820, label %816

816:                                              ; preds = %811
  %817 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %818 = load ptr, ptr %817, align 4
  %819 = getelementptr i8, ptr %818, i32 %786
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %819, i32 %812) #7, !srcloc !12
  br label %824

820:                                              ; preds = %811
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %821 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %822 = load ptr, ptr %821, align 4
  %823 = getelementptr i8, ptr %822, i32 %786
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %823, i32 %812) #7, !srcloc !12
  br label %824

824:                                              ; preds = %820, %816, %781
  %825 = load ptr, ptr %9, align 4
  %826 = getelementptr inbounds %struct.vop_data, ptr %825, i32 0, i32 5
  %827 = load ptr, ptr %826, align 4
  %828 = getelementptr inbounds %struct.vop_output, ptr %827, i32 0, i32 13
  %829 = icmp eq ptr %828, null
  br i1 %829, label %833, label %830

830:                                              ; preds = %824
  %831 = load i32, ptr %828, align 4
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %833, label %835

833:                                              ; preds = %830, %824
  %834 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %834, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.86) #7
  br label %1239

835:                                              ; preds = %830
  %836 = getelementptr inbounds %struct.vop_output, ptr %827, i32 0, i32 13, i32 1
  %837 = load i16, ptr %836, align 4
  %838 = zext i16 %837 to i32
  %839 = getelementptr inbounds %struct.vop_output, ptr %827, i32 0, i32 13, i32 2
  %840 = load i8, ptr %839, align 2
  %841 = zext i8 %840 to i32
  %842 = getelementptr inbounds %struct.vop_output, ptr %827, i32 0, i32 13, i32 3
  %843 = load i8, ptr %842, align 1, !range !8
  %844 = icmp eq i8 %843, 0
  br i1 %844, label %851, label %845

845:                                              ; preds = %835
  %846 = shl nuw i32 1, %841
  %847 = and i32 %846, 65535
  %848 = add nuw nsw i32 %841, 16
  %849 = shl i32 %831, %848
  %850 = or i32 %847, %849
  br label %863

851:                                              ; preds = %835
  %852 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %853 = load ptr, ptr %852, align 8
  %854 = lshr i32 %838, 2
  %855 = getelementptr i32, ptr %853, i32 %854
  %856 = load i32, ptr %855, align 4
  %857 = shl i32 %831, %841
  %858 = xor i32 %857, -1
  %859 = and i32 %856, %858
  %860 = and i32 %831, 1
  %861 = shl nuw i32 %860, %841
  %862 = or i32 %859, %861
  store i32 %862, ptr %855, align 4
  br label %863

863:                                              ; preds = %851, %845
  %864 = phi i32 [ %850, %845 ], [ %862, %851 ]
  %865 = getelementptr inbounds %struct.vop_output, ptr %827, i32 0, i32 13, i32 4
  %866 = load i8, ptr %865, align 4, !range !8
  %867 = icmp eq i8 %866, 0
  br i1 %867, label %872, label %868

868:                                              ; preds = %863
  %869 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %870 = load ptr, ptr %869, align 4
  %871 = getelementptr i8, ptr %870, i32 %838
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %871, i32 %864) #7, !srcloc !12
  br label %1239

872:                                              ; preds = %863
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %873 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %874 = load ptr, ptr %873, align 4
  %875 = getelementptr i8, ptr %874, i32 %838
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %875, i32 %864) #7, !srcloc !12
  br label %1239

876:                                              ; preds = %405
  %877 = load ptr, ptr %9, align 4
  %878 = getelementptr inbounds %struct.vop_data, ptr %877, i32 0, i32 5
  %879 = load ptr, ptr %878, align 4
  %880 = getelementptr inbounds %struct.vop_output, ptr %879, i32 0, i32 8
  %881 = icmp eq ptr %880, null
  br i1 %881, label %885, label %882

882:                                              ; preds = %876
  %883 = load i32, ptr %880, align 4
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %885, label %887

885:                                              ; preds = %882, %876
  %886 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %886, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.87) #7
  br label %928

887:                                              ; preds = %882
  %888 = getelementptr inbounds %struct.vop_output, ptr %879, i32 0, i32 8, i32 1
  %889 = load i16, ptr %888, align 4
  %890 = zext i16 %889 to i32
  %891 = getelementptr inbounds %struct.vop_output, ptr %879, i32 0, i32 8, i32 2
  %892 = load i8, ptr %891, align 2
  %893 = zext i8 %892 to i32
  %894 = getelementptr inbounds %struct.vop_output, ptr %879, i32 0, i32 8, i32 3
  %895 = load i8, ptr %894, align 1, !range !8
  %896 = icmp eq i8 %895, 0
  br i1 %896, label %903, label %897

897:                                              ; preds = %887
  %898 = shl nuw i32 1, %893
  %899 = and i32 %898, 65535
  %900 = add nuw nsw i32 %893, 16
  %901 = shl i32 %883, %900
  %902 = or i32 %899, %901
  br label %915

903:                                              ; preds = %887
  %904 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %905 = load ptr, ptr %904, align 8
  %906 = lshr i32 %890, 2
  %907 = getelementptr i32, ptr %905, i32 %906
  %908 = load i32, ptr %907, align 4
  %909 = shl i32 %883, %893
  %910 = xor i32 %909, -1
  %911 = and i32 %908, %910
  %912 = and i32 %883, 1
  %913 = shl nuw i32 %912, %893
  %914 = or i32 %911, %913
  store i32 %914, ptr %907, align 4
  br label %915

915:                                              ; preds = %903, %897
  %916 = phi i32 [ %902, %897 ], [ %914, %903 ]
  %917 = getelementptr inbounds %struct.vop_output, ptr %879, i32 0, i32 8, i32 4
  %918 = load i8, ptr %917, align 4, !range !8
  %919 = icmp eq i8 %918, 0
  br i1 %919, label %924, label %920

920:                                              ; preds = %915
  %921 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %922 = load ptr, ptr %921, align 4
  %923 = getelementptr i8, ptr %922, i32 %890
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %923, i32 %916) #7, !srcloc !12
  br label %928

924:                                              ; preds = %915
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %925 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %926 = load ptr, ptr %925, align 4
  %927 = getelementptr i8, ptr %926, i32 %890
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %927, i32 %916) #7, !srcloc !12
  br label %928

928:                                              ; preds = %924, %920, %885
  %929 = load ptr, ptr %9, align 4
  %930 = getelementptr inbounds %struct.vop_data, ptr %929, i32 0, i32 5
  %931 = load ptr, ptr %930, align 4
  %932 = getelementptr inbounds %struct.vop_output, ptr %931, i32 0, i32 7
  %933 = icmp eq ptr %932, null
  br i1 %933, label %937, label %934

934:                                              ; preds = %928
  %935 = load i32, ptr %932, align 4
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %937, label %939

937:                                              ; preds = %934, %928
  %938 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %938, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.88) #7
  br label %980

939:                                              ; preds = %934
  %940 = getelementptr inbounds %struct.vop_output, ptr %931, i32 0, i32 7, i32 1
  %941 = load i16, ptr %940, align 4
  %942 = zext i16 %941 to i32
  %943 = getelementptr inbounds %struct.vop_output, ptr %931, i32 0, i32 7, i32 2
  %944 = load i8, ptr %943, align 2
  %945 = zext i8 %944 to i32
  %946 = getelementptr inbounds %struct.vop_output, ptr %931, i32 0, i32 7, i32 3
  %947 = load i8, ptr %946, align 1, !range !8
  %948 = icmp eq i8 %947, 0
  br i1 %948, label %955, label %949

949:                                              ; preds = %939
  %950 = shl i32 %308, %945
  %951 = and i32 %950, 65535
  %952 = add nuw nsw i32 %945, 16
  %953 = shl i32 %935, %952
  %954 = or i32 %951, %953
  br label %967

955:                                              ; preds = %939
  %956 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %957 = load ptr, ptr %956, align 8
  %958 = lshr i32 %942, 2
  %959 = getelementptr i32, ptr %957, i32 %958
  %960 = load i32, ptr %959, align 4
  %961 = shl i32 %935, %945
  %962 = xor i32 %961, -1
  %963 = and i32 %960, %962
  %964 = and i32 %935, %308
  %965 = shl i32 %964, %945
  %966 = or i32 %963, %965
  store i32 %966, ptr %959, align 4
  br label %967

967:                                              ; preds = %955, %949
  %968 = phi i32 [ %954, %949 ], [ %966, %955 ]
  %969 = getelementptr inbounds %struct.vop_output, ptr %931, i32 0, i32 7, i32 4
  %970 = load i8, ptr %969, align 4, !range !8
  %971 = icmp eq i8 %970, 0
  br i1 %971, label %976, label %972

972:                                              ; preds = %967
  %973 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %974 = load ptr, ptr %973, align 4
  %975 = getelementptr i8, ptr %974, i32 %942
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %975, i32 %968) #7, !srcloc !12
  br label %980

976:                                              ; preds = %967
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %977 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %978 = load ptr, ptr %977, align 4
  %979 = getelementptr i8, ptr %978, i32 %942
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %979, i32 %968) #7, !srcloc !12
  br label %980

980:                                              ; preds = %976, %972, %937
  %981 = load ptr, ptr %9, align 4
  %982 = getelementptr inbounds %struct.vop_data, ptr %981, i32 0, i32 5
  %983 = load ptr, ptr %982, align 4
  %984 = getelementptr inbounds %struct.vop_output, ptr %983, i32 0, i32 14
  %985 = icmp eq ptr %984, null
  br i1 %985, label %989, label %986

986:                                              ; preds = %980
  %987 = load i32, ptr %984, align 4
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %989, label %991

989:                                              ; preds = %986, %980
  %990 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %990, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.89) #7
  br label %1032

991:                                              ; preds = %986
  %992 = getelementptr inbounds %struct.vop_output, ptr %983, i32 0, i32 14, i32 1
  %993 = load i16, ptr %992, align 4
  %994 = zext i16 %993 to i32
  %995 = getelementptr inbounds %struct.vop_output, ptr %983, i32 0, i32 14, i32 2
  %996 = load i8, ptr %995, align 2
  %997 = zext i8 %996 to i32
  %998 = getelementptr inbounds %struct.vop_output, ptr %983, i32 0, i32 14, i32 3
  %999 = load i8, ptr %998, align 1, !range !8
  %1000 = icmp eq i8 %999, 0
  br i1 %1000, label %1007, label %1001

1001:                                             ; preds = %991
  %1002 = shl nuw i32 1, %997
  %1003 = and i32 %1002, 65535
  %1004 = add nuw nsw i32 %997, 16
  %1005 = shl i32 %987, %1004
  %1006 = or i32 %1003, %1005
  br label %1019

1007:                                             ; preds = %991
  %1008 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1009 = load ptr, ptr %1008, align 8
  %1010 = lshr i32 %994, 2
  %1011 = getelementptr i32, ptr %1009, i32 %1010
  %1012 = load i32, ptr %1011, align 4
  %1013 = shl i32 %987, %997
  %1014 = xor i32 %1013, -1
  %1015 = and i32 %1012, %1014
  %1016 = and i32 %987, 1
  %1017 = shl nuw i32 %1016, %997
  %1018 = or i32 %1015, %1017
  store i32 %1018, ptr %1011, align 4
  br label %1019

1019:                                             ; preds = %1007, %1001
  %1020 = phi i32 [ %1006, %1001 ], [ %1018, %1007 ]
  %1021 = getelementptr inbounds %struct.vop_output, ptr %983, i32 0, i32 14, i32 4
  %1022 = load i8, ptr %1021, align 4, !range !8
  %1023 = icmp eq i8 %1022, 0
  br i1 %1023, label %1028, label %1024

1024:                                             ; preds = %1019
  %1025 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1026 = load ptr, ptr %1025, align 4
  %1027 = getelementptr i8, ptr %1026, i32 %994
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1027, i32 %1020) #7, !srcloc !12
  br label %1032

1028:                                             ; preds = %1019
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1029 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1030 = load ptr, ptr %1029, align 4
  %1031 = getelementptr i8, ptr %1030, i32 %994
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1031, i32 %1020) #7, !srcloc !12
  br label %1032

1032:                                             ; preds = %1028, %1024, %989
  %1033 = load ptr, ptr %9, align 4
  %1034 = getelementptr inbounds %struct.vop_data, ptr %1033, i32 0, i32 5
  %1035 = load ptr, ptr %1034, align 4
  %1036 = getelementptr inbounds %struct.vop_output, ptr %1035, i32 0, i32 15
  %1037 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %12, i32 0, i32 4
  %1038 = load i32, ptr %1037, align 4
  %1039 = and i32 %1038, 1
  %1040 = icmp eq ptr %1036, null
  br i1 %1040, label %1044, label %1041

1041:                                             ; preds = %1032
  %1042 = load i32, ptr %1036, align 4
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1044, label %1046

1044:                                             ; preds = %1041, %1032
  %1045 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1045, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.77) #7
  br label %1239

1046:                                             ; preds = %1041
  %1047 = getelementptr inbounds %struct.vop_output, ptr %1035, i32 0, i32 15, i32 1
  %1048 = load i16, ptr %1047, align 4
  %1049 = zext i16 %1048 to i32
  %1050 = getelementptr inbounds %struct.vop_output, ptr %1035, i32 0, i32 15, i32 2
  %1051 = load i8, ptr %1050, align 2
  %1052 = zext i8 %1051 to i32
  %1053 = getelementptr inbounds %struct.vop_output, ptr %1035, i32 0, i32 15, i32 3
  %1054 = load i8, ptr %1053, align 1, !range !8
  %1055 = icmp eq i8 %1054, 0
  br i1 %1055, label %1062, label %1056

1056:                                             ; preds = %1046
  %1057 = shl nuw i32 %1039, %1052
  %1058 = and i32 %1057, 65535
  %1059 = add nuw nsw i32 %1052, 16
  %1060 = shl i32 %1042, %1059
  %1061 = or i32 %1058, %1060
  br label %1074

1062:                                             ; preds = %1046
  %1063 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1064 = load ptr, ptr %1063, align 8
  %1065 = lshr i32 %1049, 2
  %1066 = getelementptr i32, ptr %1064, i32 %1065
  %1067 = load i32, ptr %1066, align 4
  %1068 = shl i32 %1042, %1052
  %1069 = xor i32 %1068, -1
  %1070 = and i32 %1067, %1069
  %1071 = and i32 %1042, %1039
  %1072 = shl nuw i32 %1071, %1052
  %1073 = or i32 %1070, %1072
  store i32 %1073, ptr %1066, align 4
  br label %1074

1074:                                             ; preds = %1062, %1056
  %1075 = phi i32 [ %1061, %1056 ], [ %1073, %1062 ]
  %1076 = getelementptr inbounds %struct.vop_output, ptr %1035, i32 0, i32 15, i32 4
  %1077 = load i8, ptr %1076, align 4, !range !8
  %1078 = icmp eq i8 %1077, 0
  br i1 %1078, label %1083, label %1079

1079:                                             ; preds = %1074
  %1080 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1081 = load ptr, ptr %1080, align 4
  %1082 = getelementptr i8, ptr %1081, i32 %1049
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1082, i32 %1075) #7, !srcloc !12
  br label %1239

1083:                                             ; preds = %1074
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1084 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1085 = load ptr, ptr %1084, align 4
  %1086 = getelementptr i8, ptr %1085, i32 %1049
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1086, i32 %1075) #7, !srcloc !12
  br label %1239

1087:                                             ; preds = %405
  %1088 = load ptr, ptr %9, align 4
  %1089 = getelementptr inbounds %struct.vop_data, ptr %1088, i32 0, i32 5
  %1090 = load ptr, ptr %1089, align 4
  %1091 = getelementptr inbounds %struct.vop_output, ptr %1090, i32 0, i32 2
  %1092 = icmp eq ptr %1091, null
  br i1 %1092, label %1096, label %1093

1093:                                             ; preds = %1087
  %1094 = load i32, ptr %1091, align 4
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1096, label %1098

1096:                                             ; preds = %1093, %1087
  %1097 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1097, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.90) #7
  br label %1133

1098:                                             ; preds = %1093
  %1099 = getelementptr inbounds %struct.vop_output, ptr %1090, i32 0, i32 2, i32 1
  %1100 = load i16, ptr %1099, align 4
  %1101 = zext i16 %1100 to i32
  %1102 = getelementptr inbounds %struct.vop_output, ptr %1090, i32 0, i32 2, i32 2
  %1103 = load i8, ptr %1102, align 2
  %1104 = zext i8 %1103 to i32
  %1105 = getelementptr inbounds %struct.vop_output, ptr %1090, i32 0, i32 2, i32 3
  %1106 = load i8, ptr %1105, align 1, !range !8
  %1107 = icmp eq i8 %1106, 0
  br i1 %1107, label %1111, label %1108

1108:                                             ; preds = %1098
  %1109 = add nuw nsw i32 %1104, 16
  %1110 = shl i32 %1094, %1109
  br label %1120

1111:                                             ; preds = %1098
  %1112 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1113 = load ptr, ptr %1112, align 8
  %1114 = lshr i32 %1101, 2
  %1115 = getelementptr i32, ptr %1113, i32 %1114
  %1116 = load i32, ptr %1115, align 4
  %1117 = shl i32 %1094, %1104
  %1118 = xor i32 %1117, -1
  %1119 = and i32 %1116, %1118
  store i32 %1119, ptr %1115, align 4
  br label %1120

1120:                                             ; preds = %1111, %1108
  %1121 = phi i32 [ %1110, %1108 ], [ %1119, %1111 ]
  %1122 = getelementptr inbounds %struct.vop_output, ptr %1090, i32 0, i32 2, i32 4
  %1123 = load i8, ptr %1122, align 4, !range !8
  %1124 = icmp eq i8 %1123, 0
  br i1 %1124, label %1129, label %1125

1125:                                             ; preds = %1120
  %1126 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1127 = load ptr, ptr %1126, align 4
  %1128 = getelementptr i8, ptr %1127, i32 %1101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1128, i32 %1121) #7, !srcloc !12
  br label %1133

1129:                                             ; preds = %1120
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1130 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1131 = load ptr, ptr %1130, align 4
  %1132 = getelementptr i8, ptr %1131, i32 %1101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1132, i32 %1121) #7, !srcloc !12
  br label %1133

1133:                                             ; preds = %1129, %1125, %1096
  %1134 = load ptr, ptr %9, align 4
  %1135 = getelementptr inbounds %struct.vop_data, ptr %1134, i32 0, i32 5
  %1136 = load ptr, ptr %1135, align 4
  %1137 = getelementptr inbounds %struct.vop_output, ptr %1136, i32 0, i32 1
  %1138 = icmp eq ptr %1137, null
  br i1 %1138, label %1142, label %1139

1139:                                             ; preds = %1133
  %1140 = load i32, ptr %1137, align 4
  %1141 = icmp eq i32 %1140, 0
  br i1 %1141, label %1142, label %1144

1142:                                             ; preds = %1139, %1133
  %1143 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1143, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.91) #7
  br label %1185

1144:                                             ; preds = %1139
  %1145 = getelementptr inbounds %struct.vop_output, ptr %1136, i32 0, i32 1, i32 1
  %1146 = load i16, ptr %1145, align 4
  %1147 = zext i16 %1146 to i32
  %1148 = getelementptr inbounds %struct.vop_output, ptr %1136, i32 0, i32 1, i32 2
  %1149 = load i8, ptr %1148, align 2
  %1150 = zext i8 %1149 to i32
  %1151 = getelementptr inbounds %struct.vop_output, ptr %1136, i32 0, i32 1, i32 3
  %1152 = load i8, ptr %1151, align 1, !range !8
  %1153 = icmp eq i8 %1152, 0
  br i1 %1153, label %1160, label %1154

1154:                                             ; preds = %1144
  %1155 = shl i32 %308, %1150
  %1156 = and i32 %1155, 65535
  %1157 = add nuw nsw i32 %1150, 16
  %1158 = shl i32 %1140, %1157
  %1159 = or i32 %1156, %1158
  br label %1172

1160:                                             ; preds = %1144
  %1161 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1162 = load ptr, ptr %1161, align 8
  %1163 = lshr i32 %1147, 2
  %1164 = getelementptr i32, ptr %1162, i32 %1163
  %1165 = load i32, ptr %1164, align 4
  %1166 = shl i32 %1140, %1150
  %1167 = xor i32 %1166, -1
  %1168 = and i32 %1165, %1167
  %1169 = and i32 %1140, %308
  %1170 = shl i32 %1169, %1150
  %1171 = or i32 %1168, %1170
  store i32 %1171, ptr %1164, align 4
  br label %1172

1172:                                             ; preds = %1160, %1154
  %1173 = phi i32 [ %1159, %1154 ], [ %1171, %1160 ]
  %1174 = getelementptr inbounds %struct.vop_output, ptr %1136, i32 0, i32 1, i32 4
  %1175 = load i8, ptr %1174, align 4, !range !8
  %1176 = icmp eq i8 %1175, 0
  br i1 %1176, label %1181, label %1177

1177:                                             ; preds = %1172
  %1178 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1179 = load ptr, ptr %1178, align 4
  %1180 = getelementptr i8, ptr %1179, i32 %1147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1180, i32 %1173) #7, !srcloc !12
  br label %1185

1181:                                             ; preds = %1172
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1182 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1183 = load ptr, ptr %1182, align 4
  %1184 = getelementptr i8, ptr %1183, i32 %1147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1184, i32 %1173) #7, !srcloc !12
  br label %1185

1185:                                             ; preds = %1181, %1177, %1142
  %1186 = load ptr, ptr %9, align 4
  %1187 = getelementptr inbounds %struct.vop_data, ptr %1186, i32 0, i32 5
  %1188 = load ptr, ptr %1187, align 4
  %1189 = getelementptr inbounds %struct.vop_output, ptr %1188, i32 0, i32 11
  %1190 = icmp eq ptr %1189, null
  br i1 %1190, label %1194, label %1191

1191:                                             ; preds = %1185
  %1192 = load i32, ptr %1189, align 4
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %1194, label %1196

1194:                                             ; preds = %1191, %1185
  %1195 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1195, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.92) #7
  br label %1239

1196:                                             ; preds = %1191
  %1197 = getelementptr inbounds %struct.vop_output, ptr %1188, i32 0, i32 11, i32 1
  %1198 = load i16, ptr %1197, align 4
  %1199 = zext i16 %1198 to i32
  %1200 = getelementptr inbounds %struct.vop_output, ptr %1188, i32 0, i32 11, i32 2
  %1201 = load i8, ptr %1200, align 2
  %1202 = zext i8 %1201 to i32
  %1203 = getelementptr inbounds %struct.vop_output, ptr %1188, i32 0, i32 11, i32 3
  %1204 = load i8, ptr %1203, align 1, !range !8
  %1205 = icmp eq i8 %1204, 0
  br i1 %1205, label %1212, label %1206

1206:                                             ; preds = %1196
  %1207 = shl nuw i32 1, %1202
  %1208 = and i32 %1207, 65535
  %1209 = add nuw nsw i32 %1202, 16
  %1210 = shl i32 %1192, %1209
  %1211 = or i32 %1208, %1210
  br label %1224

1212:                                             ; preds = %1196
  %1213 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1214 = load ptr, ptr %1213, align 8
  %1215 = lshr i32 %1199, 2
  %1216 = getelementptr i32, ptr %1214, i32 %1215
  %1217 = load i32, ptr %1216, align 4
  %1218 = shl i32 %1192, %1202
  %1219 = xor i32 %1218, -1
  %1220 = and i32 %1217, %1219
  %1221 = and i32 %1192, 1
  %1222 = shl nuw i32 %1221, %1202
  %1223 = or i32 %1220, %1222
  store i32 %1223, ptr %1216, align 4
  br label %1224

1224:                                             ; preds = %1212, %1206
  %1225 = phi i32 [ %1211, %1206 ], [ %1223, %1212 ]
  %1226 = getelementptr inbounds %struct.vop_output, ptr %1188, i32 0, i32 11, i32 4
  %1227 = load i8, ptr %1226, align 4, !range !8
  %1228 = icmp eq i8 %1227, 0
  br i1 %1228, label %1233, label %1229

1229:                                             ; preds = %1224
  %1230 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1231 = load ptr, ptr %1230, align 4
  %1232 = getelementptr i8, ptr %1231, i32 %1199
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1232, i32 %1225) #7, !srcloc !12
  br label %1239

1233:                                             ; preds = %1224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1234 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1235 = load ptr, ptr %1234, align 4
  %1236 = getelementptr i8, ptr %1235, i32 %1199
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1236, i32 %1225) #7, !srcloc !12
  br label %1239

1237:                                             ; preds = %405
  %1238 = load ptr, ptr %62, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1238, ptr noundef nonnull @.str, ptr noundef nonnull @.str.93, i32 noundef %407) #7
  br label %1239

1239:                                             ; preds = %1237, %1233, %1229, %1194, %1083, %1079, %1044, %872, %868, %833, %716, %712, %677, %560, %556, %521
  %1240 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %12, i32 0, i32 2
  %1241 = load i32, ptr %1240, align 4
  %1242 = icmp eq i32 %1241, 15
  br i1 %1242, label %1243, label %1303

1243:                                             ; preds = %1239
  %1244 = getelementptr inbounds %struct.vop_data, ptr %10, i32 0, i32 11
  %1245 = load i64, ptr %1244, align 8
  %1246 = and i64 %1245, 1
  %1247 = icmp eq i64 %1246, 0
  br i1 %1247, label %1248, label %1249

1248:                                             ; preds = %1243
  store i32 0, ptr %1240, align 4
  br label %1303

1249:                                             ; preds = %1243
  %1250 = icmp slt i32 %43, 9
  br i1 %1250, label %1251, label %1303

1251:                                             ; preds = %1249
  %1252 = load ptr, ptr %9, align 4
  %1253 = getelementptr inbounds %struct.vop_data, ptr %1252, i32 0, i32 2
  %1254 = load ptr, ptr %1253, align 8
  %1255 = getelementptr inbounds %struct.vop_common, ptr %1254, i32 0, i32 3
  %1256 = icmp eq ptr %1255, null
  br i1 %1256, label %1260, label %1257

1257:                                             ; preds = %1251
  %1258 = load i32, ptr %1255, align 4
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1260, label %1262

1260:                                             ; preds = %1257, %1251
  %1261 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1261, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.94) #7
  br label %1349

1262:                                             ; preds = %1257
  %1263 = getelementptr inbounds %struct.vop_common, ptr %1254, i32 0, i32 3, i32 1
  %1264 = load i16, ptr %1263, align 4
  %1265 = zext i16 %1264 to i32
  %1266 = getelementptr inbounds %struct.vop_common, ptr %1254, i32 0, i32 3, i32 2
  %1267 = load i8, ptr %1266, align 2
  %1268 = zext i8 %1267 to i32
  %1269 = getelementptr inbounds %struct.vop_common, ptr %1254, i32 0, i32 3, i32 3
  %1270 = load i8, ptr %1269, align 1, !range !8
  %1271 = icmp eq i8 %1270, 0
  br i1 %1271, label %1278, label %1272

1272:                                             ; preds = %1262
  %1273 = shl nuw i32 1, %1268
  %1274 = and i32 %1273, 65535
  %1275 = add nuw nsw i32 %1268, 16
  %1276 = shl i32 %1258, %1275
  %1277 = or i32 %1274, %1276
  br label %1290

1278:                                             ; preds = %1262
  %1279 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1280 = load ptr, ptr %1279, align 8
  %1281 = lshr i32 %1265, 2
  %1282 = getelementptr i32, ptr %1280, i32 %1281
  %1283 = load i32, ptr %1282, align 4
  %1284 = shl i32 %1258, %1268
  %1285 = xor i32 %1284, -1
  %1286 = and i32 %1283, %1285
  %1287 = and i32 %1258, 1
  %1288 = shl nuw i32 %1287, %1268
  %1289 = or i32 %1286, %1288
  store i32 %1289, ptr %1282, align 4
  br label %1290

1290:                                             ; preds = %1278, %1272
  %1291 = phi i32 [ %1277, %1272 ], [ %1289, %1278 ]
  %1292 = getelementptr inbounds %struct.vop_common, ptr %1254, i32 0, i32 3, i32 4
  %1293 = load i8, ptr %1292, align 4, !range !8
  %1294 = icmp eq i8 %1293, 0
  br i1 %1294, label %1299, label %1295

1295:                                             ; preds = %1290
  %1296 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1297 = load ptr, ptr %1296, align 4
  %1298 = getelementptr i8, ptr %1297, i32 %1265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1298, i32 %1291) #7, !srcloc !12
  br label %1349

1299:                                             ; preds = %1290
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1300 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1301 = load ptr, ptr %1300, align 4
  %1302 = getelementptr i8, ptr %1301, i32 %1265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1302, i32 %1291) #7, !srcloc !12
  br label %1349

1303:                                             ; preds = %1249, %1248, %1239
  %1304 = load ptr, ptr %9, align 4
  %1305 = getelementptr inbounds %struct.vop_data, ptr %1304, i32 0, i32 2
  %1306 = load ptr, ptr %1305, align 8
  %1307 = getelementptr inbounds %struct.vop_common, ptr %1306, i32 0, i32 3
  %1308 = icmp eq ptr %1307, null
  br i1 %1308, label %1312, label %1309

1309:                                             ; preds = %1303
  %1310 = load i32, ptr %1307, align 4
  %1311 = icmp eq i32 %1310, 0
  br i1 %1311, label %1312, label %1314

1312:                                             ; preds = %1309, %1303
  %1313 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1313, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.94) #7
  br label %1349

1314:                                             ; preds = %1309
  %1315 = getelementptr inbounds %struct.vop_common, ptr %1306, i32 0, i32 3, i32 1
  %1316 = load i16, ptr %1315, align 4
  %1317 = zext i16 %1316 to i32
  %1318 = getelementptr inbounds %struct.vop_common, ptr %1306, i32 0, i32 3, i32 2
  %1319 = load i8, ptr %1318, align 2
  %1320 = zext i8 %1319 to i32
  %1321 = getelementptr inbounds %struct.vop_common, ptr %1306, i32 0, i32 3, i32 3
  %1322 = load i8, ptr %1321, align 1, !range !8
  %1323 = icmp eq i8 %1322, 0
  br i1 %1323, label %1327, label %1324

1324:                                             ; preds = %1314
  %1325 = add nuw nsw i32 %1320, 16
  %1326 = shl i32 %1310, %1325
  br label %1336

1327:                                             ; preds = %1314
  %1328 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1329 = load ptr, ptr %1328, align 8
  %1330 = lshr i32 %1317, 2
  %1331 = getelementptr i32, ptr %1329, i32 %1330
  %1332 = load i32, ptr %1331, align 4
  %1333 = shl i32 %1310, %1320
  %1334 = xor i32 %1333, -1
  %1335 = and i32 %1332, %1334
  store i32 %1335, ptr %1331, align 4
  br label %1336

1336:                                             ; preds = %1327, %1324
  %1337 = phi i32 [ %1326, %1324 ], [ %1335, %1327 ]
  %1338 = getelementptr inbounds %struct.vop_common, ptr %1306, i32 0, i32 3, i32 4
  %1339 = load i8, ptr %1338, align 4, !range !8
  %1340 = icmp eq i8 %1339, 0
  br i1 %1340, label %1345, label %1341

1341:                                             ; preds = %1336
  %1342 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1343 = load ptr, ptr %1342, align 4
  %1344 = getelementptr i8, ptr %1343, i32 %1317
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1344, i32 %1337) #7, !srcloc !12
  br label %1349

1345:                                             ; preds = %1336
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1346 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1347 = load ptr, ptr %1346, align 4
  %1348 = getelementptr i8, ptr %1347, i32 %1317
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1348, i32 %1337) #7, !srcloc !12
  br label %1349

1349:                                             ; preds = %1345, %1341, %1312, %1299, %1295, %1260
  %1350 = icmp eq i32 %43, 6
  %1351 = load ptr, ptr %9, align 4
  %1352 = getelementptr inbounds %struct.vop_data, ptr %1351, i32 0, i32 2
  %1353 = load ptr, ptr %1352, align 8
  br i1 %1350, label %1354, label %1501

1354:                                             ; preds = %1349
  %1355 = getelementptr inbounds %struct.vop_common, ptr %1353, i32 0, i32 4
  %1356 = icmp eq ptr %1355, null
  br i1 %1356, label %1360, label %1357

1357:                                             ; preds = %1354
  %1358 = load i32, ptr %1355, align 4
  %1359 = icmp eq i32 %1358, 0
  br i1 %1359, label %1360, label %1362

1360:                                             ; preds = %1357, %1354
  %1361 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1361, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.95) #7
  br label %1397

1362:                                             ; preds = %1357
  %1363 = getelementptr inbounds %struct.vop_common, ptr %1353, i32 0, i32 4, i32 1
  %1364 = load i16, ptr %1363, align 4
  %1365 = zext i16 %1364 to i32
  %1366 = getelementptr inbounds %struct.vop_common, ptr %1353, i32 0, i32 4, i32 2
  %1367 = load i8, ptr %1366, align 2
  %1368 = zext i8 %1367 to i32
  %1369 = getelementptr inbounds %struct.vop_common, ptr %1353, i32 0, i32 4, i32 3
  %1370 = load i8, ptr %1369, align 1, !range !8
  %1371 = icmp eq i8 %1370, 0
  br i1 %1371, label %1375, label %1372

1372:                                             ; preds = %1362
  %1373 = add nuw nsw i32 %1368, 16
  %1374 = shl i32 %1358, %1373
  br label %1384

1375:                                             ; preds = %1362
  %1376 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1377 = load ptr, ptr %1376, align 8
  %1378 = lshr i32 %1365, 2
  %1379 = getelementptr i32, ptr %1377, i32 %1378
  %1380 = load i32, ptr %1379, align 4
  %1381 = shl i32 %1358, %1368
  %1382 = xor i32 %1381, -1
  %1383 = and i32 %1380, %1382
  store i32 %1383, ptr %1379, align 4
  br label %1384

1384:                                             ; preds = %1375, %1372
  %1385 = phi i32 [ %1374, %1372 ], [ %1383, %1375 ]
  %1386 = getelementptr inbounds %struct.vop_common, ptr %1353, i32 0, i32 4, i32 4
  %1387 = load i8, ptr %1386, align 4, !range !8
  %1388 = icmp eq i8 %1387, 0
  br i1 %1388, label %1393, label %1389

1389:                                             ; preds = %1384
  %1390 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1391 = load ptr, ptr %1390, align 4
  %1392 = getelementptr i8, ptr %1391, i32 %1365
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1392, i32 %1385) #7, !srcloc !12
  br label %1397

1393:                                             ; preds = %1384
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1394 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1395 = load ptr, ptr %1394, align 4
  %1396 = getelementptr i8, ptr %1395, i32 %1365
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1396, i32 %1385) #7, !srcloc !12
  br label %1397

1397:                                             ; preds = %1393, %1389, %1360
  %1398 = load ptr, ptr %9, align 4
  %1399 = getelementptr inbounds %struct.vop_data, ptr %1398, i32 0, i32 2
  %1400 = load ptr, ptr %1399, align 8
  %1401 = getelementptr inbounds %struct.vop_common, ptr %1400, i32 0, i32 5
  %1402 = icmp eq ptr %1401, null
  br i1 %1402, label %1406, label %1403

1403:                                             ; preds = %1397
  %1404 = load i32, ptr %1401, align 4
  %1405 = icmp eq i32 %1404, 0
  br i1 %1405, label %1406, label %1408

1406:                                             ; preds = %1403, %1397
  %1407 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1407, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.96) #7
  br label %1449

1408:                                             ; preds = %1403
  %1409 = getelementptr inbounds %struct.vop_common, ptr %1400, i32 0, i32 5, i32 1
  %1410 = load i16, ptr %1409, align 4
  %1411 = zext i16 %1410 to i32
  %1412 = getelementptr inbounds %struct.vop_common, ptr %1400, i32 0, i32 5, i32 2
  %1413 = load i8, ptr %1412, align 2
  %1414 = zext i8 %1413 to i32
  %1415 = getelementptr inbounds %struct.vop_common, ptr %1400, i32 0, i32 5, i32 3
  %1416 = load i8, ptr %1415, align 1, !range !8
  %1417 = icmp eq i8 %1416, 0
  br i1 %1417, label %1424, label %1418

1418:                                             ; preds = %1408
  %1419 = shl nuw i32 1, %1414
  %1420 = and i32 %1419, 65535
  %1421 = add nuw nsw i32 %1414, 16
  %1422 = shl i32 %1404, %1421
  %1423 = or i32 %1420, %1422
  br label %1436

1424:                                             ; preds = %1408
  %1425 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1426 = load ptr, ptr %1425, align 8
  %1427 = lshr i32 %1411, 2
  %1428 = getelementptr i32, ptr %1426, i32 %1427
  %1429 = load i32, ptr %1428, align 4
  %1430 = shl i32 %1404, %1414
  %1431 = xor i32 %1430, -1
  %1432 = and i32 %1429, %1431
  %1433 = and i32 %1404, 1
  %1434 = shl nuw i32 %1433, %1414
  %1435 = or i32 %1432, %1434
  store i32 %1435, ptr %1428, align 4
  br label %1436

1436:                                             ; preds = %1424, %1418
  %1437 = phi i32 [ %1423, %1418 ], [ %1435, %1424 ]
  %1438 = getelementptr inbounds %struct.vop_common, ptr %1400, i32 0, i32 5, i32 4
  %1439 = load i8, ptr %1438, align 4, !range !8
  %1440 = icmp eq i8 %1439, 0
  br i1 %1440, label %1445, label %1441

1441:                                             ; preds = %1436
  %1442 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1443 = load ptr, ptr %1442, align 4
  %1444 = getelementptr i8, ptr %1443, i32 %1411
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1444, i32 %1437) #7, !srcloc !12
  br label %1449

1445:                                             ; preds = %1436
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1446 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1447 = load ptr, ptr %1446, align 4
  %1448 = getelementptr i8, ptr %1447, i32 %1411
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1448, i32 %1437) #7, !srcloc !12
  br label %1449

1449:                                             ; preds = %1445, %1441, %1406
  %1450 = load ptr, ptr %9, align 4
  %1451 = getelementptr inbounds %struct.vop_data, ptr %1450, i32 0, i32 2
  %1452 = load ptr, ptr %1451, align 8
  %1453 = getelementptr inbounds %struct.vop_common, ptr %1452, i32 0, i32 6
  %1454 = icmp eq ptr %1453, null
  br i1 %1454, label %1458, label %1455

1455:                                             ; preds = %1449
  %1456 = load i32, ptr %1453, align 4
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1458, label %1460

1458:                                             ; preds = %1455, %1449
  %1459 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1459, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.97) #7
  br label %1544

1460:                                             ; preds = %1455
  %1461 = getelementptr inbounds %struct.vop_common, ptr %1452, i32 0, i32 6, i32 1
  %1462 = load i16, ptr %1461, align 4
  %1463 = zext i16 %1462 to i32
  %1464 = getelementptr inbounds %struct.vop_common, ptr %1452, i32 0, i32 6, i32 2
  %1465 = load i8, ptr %1464, align 2
  %1466 = zext i8 %1465 to i32
  %1467 = getelementptr inbounds %struct.vop_common, ptr %1452, i32 0, i32 6, i32 3
  %1468 = load i8, ptr %1467, align 1, !range !8
  %1469 = icmp eq i8 %1468, 0
  br i1 %1469, label %1476, label %1470

1470:                                             ; preds = %1460
  %1471 = shl nuw i32 1, %1466
  %1472 = and i32 %1471, 65535
  %1473 = add nuw nsw i32 %1466, 16
  %1474 = shl i32 %1456, %1473
  %1475 = or i32 %1472, %1474
  br label %1488

1476:                                             ; preds = %1460
  %1477 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1478 = load ptr, ptr %1477, align 8
  %1479 = lshr i32 %1463, 2
  %1480 = getelementptr i32, ptr %1478, i32 %1479
  %1481 = load i32, ptr %1480, align 4
  %1482 = shl i32 %1456, %1466
  %1483 = xor i32 %1482, -1
  %1484 = and i32 %1481, %1483
  %1485 = and i32 %1456, 1
  %1486 = shl nuw i32 %1485, %1466
  %1487 = or i32 %1484, %1486
  store i32 %1487, ptr %1480, align 4
  br label %1488

1488:                                             ; preds = %1476, %1470
  %1489 = phi i32 [ %1475, %1470 ], [ %1487, %1476 ]
  %1490 = getelementptr inbounds %struct.vop_common, ptr %1452, i32 0, i32 6, i32 4
  %1491 = load i8, ptr %1490, align 4, !range !8
  %1492 = icmp eq i8 %1491, 0
  br i1 %1492, label %1497, label %1493

1493:                                             ; preds = %1488
  %1494 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1495 = load ptr, ptr %1494, align 4
  %1496 = getelementptr i8, ptr %1495, i32 %1463
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1496, i32 %1489) #7, !srcloc !12
  br label %1544

1497:                                             ; preds = %1488
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1498 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1499 = load ptr, ptr %1498, align 4
  %1500 = getelementptr i8, ptr %1499, i32 %1463
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1500, i32 %1489) #7, !srcloc !12
  br label %1544

1501:                                             ; preds = %1349
  %1502 = getelementptr inbounds %struct.vop_common, ptr %1353, i32 0, i32 6
  %1503 = icmp eq ptr %1502, null
  br i1 %1503, label %1507, label %1504

1504:                                             ; preds = %1501
  %1505 = load i32, ptr %1502, align 4
  %1506 = icmp eq i32 %1505, 0
  br i1 %1506, label %1507, label %1509

1507:                                             ; preds = %1504, %1501
  %1508 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1508, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.97) #7
  br label %1544

1509:                                             ; preds = %1504
  %1510 = getelementptr inbounds %struct.vop_common, ptr %1353, i32 0, i32 6, i32 1
  %1511 = load i16, ptr %1510, align 4
  %1512 = zext i16 %1511 to i32
  %1513 = getelementptr inbounds %struct.vop_common, ptr %1353, i32 0, i32 6, i32 2
  %1514 = load i8, ptr %1513, align 2
  %1515 = zext i8 %1514 to i32
  %1516 = getelementptr inbounds %struct.vop_common, ptr %1353, i32 0, i32 6, i32 3
  %1517 = load i8, ptr %1516, align 1, !range !8
  %1518 = icmp eq i8 %1517, 0
  br i1 %1518, label %1522, label %1519

1519:                                             ; preds = %1509
  %1520 = add nuw nsw i32 %1515, 16
  %1521 = shl i32 %1505, %1520
  br label %1531

1522:                                             ; preds = %1509
  %1523 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1524 = load ptr, ptr %1523, align 8
  %1525 = lshr i32 %1512, 2
  %1526 = getelementptr i32, ptr %1524, i32 %1525
  %1527 = load i32, ptr %1526, align 4
  %1528 = shl i32 %1505, %1515
  %1529 = xor i32 %1528, -1
  %1530 = and i32 %1527, %1529
  store i32 %1530, ptr %1526, align 4
  br label %1531

1531:                                             ; preds = %1522, %1519
  %1532 = phi i32 [ %1521, %1519 ], [ %1530, %1522 ]
  %1533 = getelementptr inbounds %struct.vop_common, ptr %1353, i32 0, i32 6, i32 4
  %1534 = load i8, ptr %1533, align 4, !range !8
  %1535 = icmp eq i8 %1534, 0
  br i1 %1535, label %1540, label %1536

1536:                                             ; preds = %1531
  %1537 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1538 = load ptr, ptr %1537, align 4
  %1539 = getelementptr i8, ptr %1538, i32 %1512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1539, i32 %1532) #7, !srcloc !12
  br label %1544

1540:                                             ; preds = %1531
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1541 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1542 = load ptr, ptr %1541, align 4
  %1543 = getelementptr i8, ptr %1542, i32 %1512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1543, i32 %1532) #7, !srcloc !12
  br label %1544

1544:                                             ; preds = %1540, %1536, %1507, %1497, %1493, %1458
  %1545 = load ptr, ptr %9, align 4
  %1546 = getelementptr inbounds %struct.vop_data, ptr %1545, i32 0, i32 2
  %1547 = load ptr, ptr %1546, align 8
  %1548 = getelementptr inbounds %struct.vop_common, ptr %1547, i32 0, i32 11
  %1549 = load i32, ptr %1240, align 4
  %1550 = icmp eq ptr %1548, null
  br i1 %1550, label %1554, label %1551

1551:                                             ; preds = %1544
  %1552 = load i32, ptr %1548, align 4
  %1553 = icmp eq i32 %1552, 0
  br i1 %1553, label %1554, label %1556

1554:                                             ; preds = %1551, %1544
  %1555 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1555, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.98) #7
  br label %1597

1556:                                             ; preds = %1551
  %1557 = getelementptr inbounds %struct.vop_common, ptr %1547, i32 0, i32 11, i32 1
  %1558 = load i16, ptr %1557, align 4
  %1559 = zext i16 %1558 to i32
  %1560 = getelementptr inbounds %struct.vop_common, ptr %1547, i32 0, i32 11, i32 2
  %1561 = load i8, ptr %1560, align 2
  %1562 = zext i8 %1561 to i32
  %1563 = getelementptr inbounds %struct.vop_common, ptr %1547, i32 0, i32 11, i32 3
  %1564 = load i8, ptr %1563, align 1, !range !8
  %1565 = icmp eq i8 %1564, 0
  br i1 %1565, label %1572, label %1566

1566:                                             ; preds = %1556
  %1567 = shl i32 %1549, %1562
  %1568 = and i32 %1567, 65535
  %1569 = add nuw nsw i32 %1562, 16
  %1570 = shl i32 %1552, %1569
  %1571 = or i32 %1568, %1570
  br label %1584

1572:                                             ; preds = %1556
  %1573 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1574 = load ptr, ptr %1573, align 8
  %1575 = lshr i32 %1559, 2
  %1576 = getelementptr i32, ptr %1574, i32 %1575
  %1577 = load i32, ptr %1576, align 4
  %1578 = shl i32 %1552, %1562
  %1579 = xor i32 %1578, -1
  %1580 = and i32 %1577, %1579
  %1581 = and i32 %1552, %1549
  %1582 = shl i32 %1581, %1562
  %1583 = or i32 %1580, %1582
  store i32 %1583, ptr %1576, align 4
  br label %1584

1584:                                             ; preds = %1572, %1566
  %1585 = phi i32 [ %1571, %1566 ], [ %1583, %1572 ]
  %1586 = getelementptr inbounds %struct.vop_common, ptr %1547, i32 0, i32 11, i32 4
  %1587 = load i8, ptr %1586, align 4, !range !8
  %1588 = icmp eq i8 %1587, 0
  br i1 %1588, label %1593, label %1589

1589:                                             ; preds = %1584
  %1590 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1591 = load ptr, ptr %1590, align 4
  %1592 = getelementptr i8, ptr %1591, i32 %1559
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1592, i32 %1585) #7, !srcloc !12
  br label %1597

1593:                                             ; preds = %1584
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1594 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1595 = load ptr, ptr %1594, align 4
  %1596 = getelementptr i8, ptr %1595, i32 %1559
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1596, i32 %1585) #7, !srcloc !12
  br label %1597

1597:                                             ; preds = %1593, %1589, %1554
  %1598 = load ptr, ptr %9, align 4
  %1599 = getelementptr inbounds %struct.vop_data, ptr %1598, i32 0, i32 4
  %1600 = load ptr, ptr %1599, align 8
  %1601 = shl nuw i32 %23, 16
  %1602 = zext i16 %18 to i32
  %1603 = or i32 %1601, %1602
  %1604 = icmp eq ptr %1600, null
  br i1 %1604, label %1608, label %1605

1605:                                             ; preds = %1597
  %1606 = load i32, ptr %1600, align 4
  %1607 = icmp eq i32 %1606, 0
  br i1 %1607, label %1608, label %1610

1608:                                             ; preds = %1605, %1597
  %1609 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1609, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.99) #7
  br label %1651

1610:                                             ; preds = %1605
  %1611 = getelementptr inbounds %struct.vop_reg, ptr %1600, i32 0, i32 1
  %1612 = load i16, ptr %1611, align 4
  %1613 = zext i16 %1612 to i32
  %1614 = getelementptr inbounds %struct.vop_reg, ptr %1600, i32 0, i32 2
  %1615 = load i8, ptr %1614, align 2
  %1616 = zext i8 %1615 to i32
  %1617 = getelementptr inbounds %struct.vop_reg, ptr %1600, i32 0, i32 3
  %1618 = load i8, ptr %1617, align 1, !range !8
  %1619 = icmp eq i8 %1618, 0
  br i1 %1619, label %1626, label %1620

1620:                                             ; preds = %1610
  %1621 = shl i32 %1602, %1616
  %1622 = and i32 %1621, 65535
  %1623 = add nuw nsw i32 %1616, 16
  %1624 = shl i32 %1606, %1623
  %1625 = or i32 %1622, %1624
  br label %1638

1626:                                             ; preds = %1610
  %1627 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1628 = load ptr, ptr %1627, align 8
  %1629 = lshr i32 %1613, 2
  %1630 = getelementptr i32, ptr %1628, i32 %1629
  %1631 = load i32, ptr %1630, align 4
  %1632 = shl i32 %1606, %1616
  %1633 = xor i32 %1632, -1
  %1634 = and i32 %1631, %1633
  %1635 = and i32 %1606, %1603
  %1636 = shl i32 %1635, %1616
  %1637 = or i32 %1634, %1636
  store i32 %1637, ptr %1630, align 4
  br label %1638

1638:                                             ; preds = %1626, %1620
  %1639 = phi i32 [ %1625, %1620 ], [ %1637, %1626 ]
  %1640 = getelementptr inbounds %struct.vop_reg, ptr %1600, i32 0, i32 4
  %1641 = load i8, ptr %1640, align 4, !range !8
  %1642 = icmp eq i8 %1641, 0
  br i1 %1642, label %1647, label %1643

1643:                                             ; preds = %1638
  %1644 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1645 = load ptr, ptr %1644, align 4
  %1646 = getelementptr i8, ptr %1645, i32 %1613
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1646, i32 %1639) #7, !srcloc !12
  br label %1651

1647:                                             ; preds = %1638
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1648 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1649 = load ptr, ptr %1648, align 4
  %1650 = getelementptr i8, ptr %1649, i32 %1613
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1650, i32 %1639) #7, !srcloc !12
  br label %1651

1651:                                             ; preds = %1647, %1643, %1608
  %1652 = shl nuw i32 %25, 16
  %1653 = zext i16 %26 to i32
  %1654 = or i32 %1652, %1653
  %1655 = load ptr, ptr %9, align 4
  %1656 = getelementptr inbounds %struct.vop_data, ptr %1655, i32 0, i32 4
  %1657 = load ptr, ptr %1656, align 8
  %1658 = getelementptr inbounds %struct.vop_modeset, ptr %1657, i32 0, i32 1
  %1659 = icmp eq ptr %1658, null
  br i1 %1659, label %1663, label %1660

1660:                                             ; preds = %1651
  %1661 = load i32, ptr %1658, align 4
  %1662 = icmp eq i32 %1661, 0
  br i1 %1662, label %1663, label %1665

1663:                                             ; preds = %1660, %1651
  %1664 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1664, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.100) #7
  br label %1706

1665:                                             ; preds = %1660
  %1666 = getelementptr inbounds %struct.vop_modeset, ptr %1657, i32 0, i32 1, i32 1
  %1667 = load i16, ptr %1666, align 4
  %1668 = zext i16 %1667 to i32
  %1669 = getelementptr inbounds %struct.vop_modeset, ptr %1657, i32 0, i32 1, i32 2
  %1670 = load i8, ptr %1669, align 2
  %1671 = zext i8 %1670 to i32
  %1672 = getelementptr inbounds %struct.vop_modeset, ptr %1657, i32 0, i32 1, i32 3
  %1673 = load i8, ptr %1672, align 1, !range !8
  %1674 = icmp eq i8 %1673, 0
  br i1 %1674, label %1681, label %1675

1675:                                             ; preds = %1665
  %1676 = shl i32 %1653, %1671
  %1677 = and i32 %1676, 65535
  %1678 = add nuw nsw i32 %1671, 16
  %1679 = shl i32 %1661, %1678
  %1680 = or i32 %1677, %1679
  br label %1693

1681:                                             ; preds = %1665
  %1682 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1683 = load ptr, ptr %1682, align 8
  %1684 = lshr i32 %1668, 2
  %1685 = getelementptr i32, ptr %1683, i32 %1684
  %1686 = load i32, ptr %1685, align 4
  %1687 = shl i32 %1661, %1671
  %1688 = xor i32 %1687, -1
  %1689 = and i32 %1686, %1688
  %1690 = and i32 %1661, %1654
  %1691 = shl i32 %1690, %1671
  %1692 = or i32 %1689, %1691
  store i32 %1692, ptr %1685, align 4
  br label %1693

1693:                                             ; preds = %1681, %1675
  %1694 = phi i32 [ %1680, %1675 ], [ %1692, %1681 ]
  %1695 = getelementptr inbounds %struct.vop_modeset, ptr %1657, i32 0, i32 1, i32 4
  %1696 = load i8, ptr %1695, align 4, !range !8
  %1697 = icmp eq i8 %1696, 0
  br i1 %1697, label %1702, label %1698

1698:                                             ; preds = %1693
  %1699 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1700 = load ptr, ptr %1699, align 4
  %1701 = getelementptr i8, ptr %1700, i32 %1668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1701, i32 %1694) #7, !srcloc !12
  br label %1706

1702:                                             ; preds = %1693
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1703 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1704 = load ptr, ptr %1703, align 4
  %1705 = getelementptr i8, ptr %1704, i32 %1668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1705, i32 %1694) #7, !srcloc !12
  br label %1706

1706:                                             ; preds = %1702, %1698, %1663
  %1707 = load ptr, ptr %9, align 4
  %1708 = getelementptr inbounds %struct.vop_data, ptr %1707, i32 0, i32 4
  %1709 = load ptr, ptr %1708, align 8
  %1710 = getelementptr inbounds %struct.vop_modeset, ptr %1709, i32 0, i32 2
  %1711 = icmp eq ptr %1710, null
  br i1 %1711, label %1715, label %1712

1712:                                             ; preds = %1706
  %1713 = load i32, ptr %1710, align 4
  %1714 = icmp eq i32 %1713, 0
  br i1 %1714, label %1715, label %1717

1715:                                             ; preds = %1712, %1706
  %1716 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1716, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.101) #7
  br label %1758

1717:                                             ; preds = %1712
  %1718 = getelementptr inbounds %struct.vop_modeset, ptr %1709, i32 0, i32 2, i32 1
  %1719 = load i16, ptr %1718, align 4
  %1720 = zext i16 %1719 to i32
  %1721 = getelementptr inbounds %struct.vop_modeset, ptr %1709, i32 0, i32 2, i32 2
  %1722 = load i8, ptr %1721, align 2
  %1723 = zext i8 %1722 to i32
  %1724 = getelementptr inbounds %struct.vop_modeset, ptr %1709, i32 0, i32 2, i32 3
  %1725 = load i8, ptr %1724, align 1, !range !8
  %1726 = icmp eq i8 %1725, 0
  br i1 %1726, label %1733, label %1727

1727:                                             ; preds = %1717
  %1728 = shl i32 %1653, %1723
  %1729 = and i32 %1728, 65535
  %1730 = add nuw nsw i32 %1723, 16
  %1731 = shl i32 %1713, %1730
  %1732 = or i32 %1729, %1731
  br label %1745

1733:                                             ; preds = %1717
  %1734 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1735 = load ptr, ptr %1734, align 8
  %1736 = lshr i32 %1720, 2
  %1737 = getelementptr i32, ptr %1735, i32 %1736
  %1738 = load i32, ptr %1737, align 4
  %1739 = shl i32 %1713, %1723
  %1740 = xor i32 %1739, -1
  %1741 = and i32 %1738, %1740
  %1742 = and i32 %1713, %1654
  %1743 = shl i32 %1742, %1723
  %1744 = or i32 %1741, %1743
  store i32 %1744, ptr %1737, align 4
  br label %1745

1745:                                             ; preds = %1733, %1727
  %1746 = phi i32 [ %1732, %1727 ], [ %1744, %1733 ]
  %1747 = getelementptr inbounds %struct.vop_modeset, ptr %1709, i32 0, i32 2, i32 4
  %1748 = load i8, ptr %1747, align 4, !range !8
  %1749 = icmp eq i8 %1748, 0
  br i1 %1749, label %1754, label %1750

1750:                                             ; preds = %1745
  %1751 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1752 = load ptr, ptr %1751, align 4
  %1753 = getelementptr i8, ptr %1752, i32 %1720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1753, i32 %1746) #7, !srcloc !12
  br label %1758

1754:                                             ; preds = %1745
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1755 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1756 = load ptr, ptr %1755, align 4
  %1757 = getelementptr i8, ptr %1756, i32 %1720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1757, i32 %1746) #7, !srcloc !12
  br label %1758

1758:                                             ; preds = %1754, %1750, %1715
  %1759 = load ptr, ptr %9, align 4
  %1760 = getelementptr inbounds %struct.vop_data, ptr %1759, i32 0, i32 4
  %1761 = load ptr, ptr %1760, align 8
  %1762 = getelementptr inbounds %struct.vop_modeset, ptr %1761, i32 0, i32 3
  %1763 = shl nuw i32 %36, 16
  %1764 = zext i16 %35 to i32
  %1765 = or i32 %1763, %1764
  %1766 = icmp eq ptr %1762, null
  br i1 %1766, label %1770, label %1767

1767:                                             ; preds = %1758
  %1768 = load i32, ptr %1762, align 4
  %1769 = icmp eq i32 %1768, 0
  br i1 %1769, label %1770, label %1772

1770:                                             ; preds = %1767, %1758
  %1771 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1771, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.102) #7
  br label %1813

1772:                                             ; preds = %1767
  %1773 = getelementptr inbounds %struct.vop_modeset, ptr %1761, i32 0, i32 3, i32 1
  %1774 = load i16, ptr %1773, align 4
  %1775 = zext i16 %1774 to i32
  %1776 = getelementptr inbounds %struct.vop_modeset, ptr %1761, i32 0, i32 3, i32 2
  %1777 = load i8, ptr %1776, align 2
  %1778 = zext i8 %1777 to i32
  %1779 = getelementptr inbounds %struct.vop_modeset, ptr %1761, i32 0, i32 3, i32 3
  %1780 = load i8, ptr %1779, align 1, !range !8
  %1781 = icmp eq i8 %1780, 0
  br i1 %1781, label %1788, label %1782

1782:                                             ; preds = %1772
  %1783 = shl i32 %1764, %1778
  %1784 = and i32 %1783, 65535
  %1785 = add nuw nsw i32 %1778, 16
  %1786 = shl i32 %1768, %1785
  %1787 = or i32 %1784, %1786
  br label %1800

1788:                                             ; preds = %1772
  %1789 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1790 = load ptr, ptr %1789, align 8
  %1791 = lshr i32 %1775, 2
  %1792 = getelementptr i32, ptr %1790, i32 %1791
  %1793 = load i32, ptr %1792, align 4
  %1794 = shl i32 %1768, %1778
  %1795 = xor i32 %1794, -1
  %1796 = and i32 %1793, %1795
  %1797 = and i32 %1768, %1765
  %1798 = shl i32 %1797, %1778
  %1799 = or i32 %1796, %1798
  store i32 %1799, ptr %1792, align 4
  br label %1800

1800:                                             ; preds = %1788, %1782
  %1801 = phi i32 [ %1787, %1782 ], [ %1799, %1788 ]
  %1802 = getelementptr inbounds %struct.vop_modeset, ptr %1761, i32 0, i32 3, i32 4
  %1803 = load i8, ptr %1802, align 4, !range !8
  %1804 = icmp eq i8 %1803, 0
  br i1 %1804, label %1809, label %1805

1805:                                             ; preds = %1800
  %1806 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1807 = load ptr, ptr %1806, align 4
  %1808 = getelementptr i8, ptr %1807, i32 %1775
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1808, i32 %1801) #7, !srcloc !12
  br label %1813

1809:                                             ; preds = %1800
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1810 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1811 = load ptr, ptr %1810, align 4
  %1812 = getelementptr i8, ptr %1811, i32 %1775
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1812, i32 %1801) #7, !srcloc !12
  br label %1813

1813:                                             ; preds = %1809, %1805, %1770
  %1814 = shl nuw i32 %38, 16
  %1815 = zext i16 %39 to i32
  %1816 = or i32 %1814, %1815
  %1817 = load ptr, ptr %9, align 4
  %1818 = getelementptr inbounds %struct.vop_data, ptr %1817, i32 0, i32 4
  %1819 = load ptr, ptr %1818, align 8
  %1820 = getelementptr inbounds %struct.vop_modeset, ptr %1819, i32 0, i32 4
  %1821 = icmp eq ptr %1820, null
  br i1 %1821, label %1825, label %1822

1822:                                             ; preds = %1813
  %1823 = load i32, ptr %1820, align 4
  %1824 = icmp eq i32 %1823, 0
  br i1 %1824, label %1825, label %1827

1825:                                             ; preds = %1822, %1813
  %1826 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1826, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.103) #7
  br label %1868

1827:                                             ; preds = %1822
  %1828 = getelementptr inbounds %struct.vop_modeset, ptr %1819, i32 0, i32 4, i32 1
  %1829 = load i16, ptr %1828, align 4
  %1830 = zext i16 %1829 to i32
  %1831 = getelementptr inbounds %struct.vop_modeset, ptr %1819, i32 0, i32 4, i32 2
  %1832 = load i8, ptr %1831, align 2
  %1833 = zext i8 %1832 to i32
  %1834 = getelementptr inbounds %struct.vop_modeset, ptr %1819, i32 0, i32 4, i32 3
  %1835 = load i8, ptr %1834, align 1, !range !8
  %1836 = icmp eq i8 %1835, 0
  br i1 %1836, label %1843, label %1837

1837:                                             ; preds = %1827
  %1838 = shl i32 %1815, %1833
  %1839 = and i32 %1838, 65535
  %1840 = add nuw nsw i32 %1833, 16
  %1841 = shl i32 %1823, %1840
  %1842 = or i32 %1839, %1841
  br label %1855

1843:                                             ; preds = %1827
  %1844 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1845 = load ptr, ptr %1844, align 8
  %1846 = lshr i32 %1830, 2
  %1847 = getelementptr i32, ptr %1845, i32 %1846
  %1848 = load i32, ptr %1847, align 4
  %1849 = shl i32 %1823, %1833
  %1850 = xor i32 %1849, -1
  %1851 = and i32 %1848, %1850
  %1852 = and i32 %1823, %1816
  %1853 = shl i32 %1852, %1833
  %1854 = or i32 %1851, %1853
  store i32 %1854, ptr %1847, align 4
  br label %1855

1855:                                             ; preds = %1843, %1837
  %1856 = phi i32 [ %1842, %1837 ], [ %1854, %1843 ]
  %1857 = getelementptr inbounds %struct.vop_modeset, ptr %1819, i32 0, i32 4, i32 4
  %1858 = load i8, ptr %1857, align 4, !range !8
  %1859 = icmp eq i8 %1858, 0
  br i1 %1859, label %1864, label %1860

1860:                                             ; preds = %1855
  %1861 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1862 = load ptr, ptr %1861, align 4
  %1863 = getelementptr i8, ptr %1862, i32 %1830
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1863, i32 %1856) #7, !srcloc !12
  br label %1868

1864:                                             ; preds = %1855
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1865 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1866 = load ptr, ptr %1865, align 4
  %1867 = getelementptr i8, ptr %1866, i32 %1830
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1867, i32 %1856) #7, !srcloc !12
  br label %1868

1868:                                             ; preds = %1864, %1860, %1825
  %1869 = load ptr, ptr %9, align 4
  %1870 = getelementptr inbounds %struct.vop_data, ptr %1869, i32 0, i32 4
  %1871 = load ptr, ptr %1870, align 8
  %1872 = getelementptr inbounds %struct.vop_modeset, ptr %1871, i32 0, i32 5
  %1873 = icmp eq ptr %1872, null
  br i1 %1873, label %1877, label %1874

1874:                                             ; preds = %1868
  %1875 = load i32, ptr %1872, align 4
  %1876 = icmp eq i32 %1875, 0
  br i1 %1876, label %1877, label %1879

1877:                                             ; preds = %1874, %1868
  %1878 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1878, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.104) #7
  br label %1920

1879:                                             ; preds = %1874
  %1880 = getelementptr inbounds %struct.vop_modeset, ptr %1871, i32 0, i32 5, i32 1
  %1881 = load i16, ptr %1880, align 4
  %1882 = zext i16 %1881 to i32
  %1883 = getelementptr inbounds %struct.vop_modeset, ptr %1871, i32 0, i32 5, i32 2
  %1884 = load i8, ptr %1883, align 2
  %1885 = zext i8 %1884 to i32
  %1886 = getelementptr inbounds %struct.vop_modeset, ptr %1871, i32 0, i32 5, i32 3
  %1887 = load i8, ptr %1886, align 1, !range !8
  %1888 = icmp eq i8 %1887, 0
  br i1 %1888, label %1895, label %1889

1889:                                             ; preds = %1879
  %1890 = shl i32 %1815, %1885
  %1891 = and i32 %1890, 65535
  %1892 = add nuw nsw i32 %1885, 16
  %1893 = shl i32 %1875, %1892
  %1894 = or i32 %1891, %1893
  br label %1907

1895:                                             ; preds = %1879
  %1896 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1897 = load ptr, ptr %1896, align 8
  %1898 = lshr i32 %1882, 2
  %1899 = getelementptr i32, ptr %1897, i32 %1898
  %1900 = load i32, ptr %1899, align 4
  %1901 = shl i32 %1875, %1885
  %1902 = xor i32 %1901, -1
  %1903 = and i32 %1900, %1902
  %1904 = and i32 %1875, %1816
  %1905 = shl i32 %1904, %1885
  %1906 = or i32 %1903, %1905
  store i32 %1906, ptr %1899, align 4
  br label %1907

1907:                                             ; preds = %1895, %1889
  %1908 = phi i32 [ %1894, %1889 ], [ %1906, %1895 ]
  %1909 = getelementptr inbounds %struct.vop_modeset, ptr %1871, i32 0, i32 5, i32 4
  %1910 = load i8, ptr %1909, align 4, !range !8
  %1911 = icmp eq i8 %1910, 0
  br i1 %1911, label %1916, label %1912

1912:                                             ; preds = %1907
  %1913 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1914 = load ptr, ptr %1913, align 4
  %1915 = getelementptr i8, ptr %1914, i32 %1882
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1915, i32 %1908) #7, !srcloc !12
  br label %1920

1916:                                             ; preds = %1907
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1917 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1918 = load ptr, ptr %1917, align 4
  %1919 = getelementptr i8, ptr %1918, i32 %1882
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1919, i32 %1908) #7, !srcloc !12
  br label %1920

1920:                                             ; preds = %1916, %1912, %1877
  %1921 = load ptr, ptr %9, align 4
  %1922 = getelementptr inbounds %struct.vop_data, ptr %1921, i32 0, i32 1
  %1923 = load ptr, ptr %1922, align 4
  %1924 = getelementptr inbounds %struct.vop_intr, ptr %1923, i32 0, i32 2
  %1925 = icmp eq ptr %1924, null
  br i1 %1925, label %1929, label %1926

1926:                                             ; preds = %1920
  %1927 = load i32, ptr %1924, align 4
  %1928 = icmp eq i32 %1927, 0
  br i1 %1928, label %1929, label %1931

1929:                                             ; preds = %1926, %1920
  %1930 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1930, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.105) #7
  br label %1972

1931:                                             ; preds = %1926
  %1932 = getelementptr inbounds %struct.vop_intr, ptr %1923, i32 0, i32 2, i32 0, i32 1
  %1933 = load i16, ptr %1932, align 4
  %1934 = zext i16 %1933 to i32
  %1935 = getelementptr inbounds %struct.vop_intr, ptr %1923, i32 0, i32 2, i32 0, i32 2
  %1936 = load i8, ptr %1935, align 2
  %1937 = zext i8 %1936 to i32
  %1938 = getelementptr inbounds %struct.vop_intr, ptr %1923, i32 0, i32 2, i32 0, i32 3
  %1939 = load i8, ptr %1938, align 1, !range !8
  %1940 = icmp eq i8 %1939, 0
  br i1 %1940, label %1947, label %1941

1941:                                             ; preds = %1931
  %1942 = shl i32 %1815, %1937
  %1943 = and i32 %1942, 65535
  %1944 = add nuw nsw i32 %1937, 16
  %1945 = shl i32 %1927, %1944
  %1946 = or i32 %1943, %1945
  br label %1959

1947:                                             ; preds = %1931
  %1948 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %1949 = load ptr, ptr %1948, align 8
  %1950 = lshr i32 %1934, 2
  %1951 = getelementptr i32, ptr %1949, i32 %1950
  %1952 = load i32, ptr %1951, align 4
  %1953 = shl i32 %1927, %1937
  %1954 = xor i32 %1953, -1
  %1955 = and i32 %1952, %1954
  %1956 = and i32 %1927, %1815
  %1957 = shl i32 %1956, %1937
  %1958 = or i32 %1955, %1957
  store i32 %1958, ptr %1951, align 4
  br label %1959

1959:                                             ; preds = %1947, %1941
  %1960 = phi i32 [ %1946, %1941 ], [ %1958, %1947 ]
  %1961 = getelementptr inbounds %struct.vop_intr, ptr %1923, i32 0, i32 2, i32 0, i32 4
  %1962 = load i8, ptr %1961, align 4, !range !8
  %1963 = icmp eq i8 %1962, 0
  br i1 %1963, label %1968, label %1964

1964:                                             ; preds = %1959
  %1965 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1966 = load ptr, ptr %1965, align 4
  %1967 = getelementptr i8, ptr %1966, i32 %1934
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1967, i32 %1960) #7, !srcloc !12
  br label %1972

1968:                                             ; preds = %1959
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %1969 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %1970 = load ptr, ptr %1969, align 4
  %1971 = getelementptr i8, ptr %1970, i32 %1934
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1971, i32 %1960) #7, !srcloc !12
  br label %1972

1972:                                             ; preds = %1968, %1964, %1929
  %1973 = load ptr, ptr %83, align 4
  %1974 = load i32, ptr %13, align 4
  %1975 = mul i32 %1974, 1000
  %1976 = tail call i32 @clk_set_rate(ptr noundef %1973, i32 noundef %1975) #7
  %1977 = load ptr, ptr %9, align 4
  %1978 = getelementptr inbounds %struct.vop_data, ptr %1977, i32 0, i32 2
  %1979 = load ptr, ptr %1978, align 8
  %1980 = getelementptr inbounds %struct.vop_common, ptr %1979, i32 0, i32 12
  %1981 = icmp eq ptr %1980, null
  br i1 %1981, label %1985, label %1982

1982:                                             ; preds = %1972
  %1983 = load i32, ptr %1980, align 4
  %1984 = icmp eq i32 %1983, 0
  br i1 %1984, label %1985, label %1987

1985:                                             ; preds = %1982, %1972
  %1986 = load ptr, ptr %62, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1986, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.106) #7
  br label %2022

1987:                                             ; preds = %1982
  %1988 = getelementptr inbounds %struct.vop_common, ptr %1979, i32 0, i32 12, i32 1
  %1989 = load i16, ptr %1988, align 4
  %1990 = zext i16 %1989 to i32
  %1991 = getelementptr inbounds %struct.vop_common, ptr %1979, i32 0, i32 12, i32 2
  %1992 = load i8, ptr %1991, align 2
  %1993 = zext i8 %1992 to i32
  %1994 = getelementptr inbounds %struct.vop_common, ptr %1979, i32 0, i32 12, i32 3
  %1995 = load i8, ptr %1994, align 1, !range !8
  %1996 = icmp eq i8 %1995, 0
  br i1 %1996, label %2000, label %1997

1997:                                             ; preds = %1987
  %1998 = add nuw nsw i32 %1993, 16
  %1999 = shl i32 %1983, %1998
  br label %2009

2000:                                             ; preds = %1987
  %2001 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %2002 = load ptr, ptr %2001, align 8
  %2003 = lshr i32 %1990, 2
  %2004 = getelementptr i32, ptr %2002, i32 %2003
  %2005 = load i32, ptr %2004, align 4
  %2006 = shl i32 %1983, %1993
  %2007 = xor i32 %2006, -1
  %2008 = and i32 %2005, %2007
  store i32 %2008, ptr %2004, align 4
  br label %2009

2009:                                             ; preds = %2000, %1997
  %2010 = phi i32 [ %1999, %1997 ], [ %2008, %2000 ]
  %2011 = getelementptr inbounds %struct.vop_common, ptr %1979, i32 0, i32 12, i32 4
  %2012 = load i8, ptr %2011, align 4, !range !8
  %2013 = icmp eq i8 %2012, 0
  br i1 %2013, label %2018, label %2014

2014:                                             ; preds = %2009
  %2015 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %2016 = load ptr, ptr %2015, align 4
  %2017 = getelementptr i8, ptr %2016, i32 %1990
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2017, i32 %2010) #7, !srcloc !12
  br label %2022

2018:                                             ; preds = %2009
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2019 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %2020 = load ptr, ptr %2019, align 4
  %2021 = getelementptr i8, ptr %2020, i32 %1990
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2021, i32 %2010) #7, !srcloc !12
  br label %2022

2022:                                             ; preds = %2018, %2014, %1985
  tail call void @mutex_unlock(ptr noundef %56) #7
  br label %2023

2023:                                             ; preds = %2022, %297, %49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vop_crtc_atomic_disable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !18

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 701, i32 noundef 9, ptr noundef null) #7
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 16
  %11 = load i8, ptr %10, align 2, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call fastcc void @rockchip_drm_set_win_enabled(ptr noundef %0, i1 noundef zeroext false)
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %15) #7
  tail call void @drm_crtc_vblank_off(ptr noundef %0) #7
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr inbounds %struct.drm_crtc_state, ptr %16, i32 0, i32 16
  %18 = load i8, ptr %17, align 2, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %326

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 4
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 3
  %23 = load i8, ptr %22, align 8, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26, !prof !11

25:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 456, i32 noundef 9, ptr noundef null) #7
  br label %178

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 16
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #7
  %29 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 10
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.vop_data, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.vop_intr, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %32, align 4
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi i32 [ 0, %36 ], [ %49, %38 ]
  %40 = phi i32 [ 0, %36 ], [ %48, %38 ]
  %41 = phi i32 [ 0, %36 ], [ %50, %38 ]
  %42 = getelementptr i32, ptr %37, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  %46 = shl nuw i32 1, %41
  %47 = select i1 %45, i32 0, i32 %46
  %48 = or i32 %47, %40
  %49 = or i32 %47, %39
  %50 = add nuw i32 %41, 1
  %51 = icmp eq i32 %50, %34
  br i1 %51, label %52, label %38

52:                                               ; preds = %38, %26
  %53 = phi i32 [ 0, %26 ], [ %48, %38 ]
  %54 = phi i32 [ 0, %26 ], [ %49, %38 ]
  %55 = getelementptr inbounds %struct.vop_intr, ptr %32, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %60, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #7
  br label %103

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.vop_intr, ptr %32, i32 0, i32 4, i32 1
  %63 = load i16, ptr %62, align 4
  %64 = zext i16 %63 to i32
  %65 = and i32 %56, %54
  %66 = getelementptr inbounds %struct.vop_intr, ptr %32, i32 0, i32 4, i32 2
  %67 = load i8, ptr %66, align 2
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.vop_intr, ptr %32, i32 0, i32 4, i32 3
  %70 = load i8, ptr %69, align 1, !range !8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %61
  %73 = shl i32 %53, %68
  %74 = and i32 %73, 65535
  %75 = add nuw nsw i32 %68, 16
  %76 = shl i32 %65, %75
  %77 = or i32 %74, %76
  br label %90

78:                                               ; preds = %61
  %79 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %80 = load ptr, ptr %79, align 8
  %81 = lshr i32 %64, 2
  %82 = getelementptr i32, ptr %80, i32 %81
  %83 = load i32, ptr %82, align 4
  %84 = shl i32 %65, %68
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = and i32 %65, %53
  %88 = shl i32 %87, %68
  %89 = or i32 %86, %88
  store i32 %89, ptr %82, align 4
  br label %90

90:                                               ; preds = %78, %72
  %91 = phi i32 [ %77, %72 ], [ %89, %78 ]
  %92 = getelementptr inbounds %struct.vop_intr, ptr %32, i32 0, i32 4, i32 4
  %93 = load i8, ptr %92, align 4, !range !8
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr i8, ptr %97, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %91) #7, !srcloc !12
  br label %103

99:                                               ; preds = %90
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %100 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %91) #7, !srcloc !12
  br label %103

103:                                              ; preds = %99, %95, %58
  %104 = load ptr, ptr %29, align 4
  %105 = getelementptr inbounds %struct.vop_data, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.vop_intr, ptr %106, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %126, label %110

110:                                              ; preds = %103
  %111 = load ptr, ptr %106, align 4
  br label %112

112:                                              ; preds = %112, %110
  %113 = phi i32 [ 0, %110 ], [ %123, %112 ]
  %114 = phi i32 [ 0, %110 ], [ %122, %112 ]
  %115 = phi i32 [ 0, %110 ], [ %124, %112 ]
  %116 = getelementptr i32, ptr %111, i32 %115
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  %120 = shl nuw i32 1, %115
  %121 = select i1 %119, i32 0, i32 %120
  %122 = or i32 %121, %114
  %123 = or i32 %121, %113
  %124 = add nuw i32 %115, 1
  %125 = icmp eq i32 %124, %108
  br i1 %125, label %126, label %112

126:                                              ; preds = %112, %103
  %127 = phi i32 [ 0, %103 ], [ %122, %112 ]
  %128 = phi i32 [ 0, %103 ], [ %123, %112 ]
  %129 = getelementptr inbounds %struct.vop_intr, ptr %106, i32 0, i32 3
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %134 = load ptr, ptr %133, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %134, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #7
  br label %177

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.vop_intr, ptr %106, i32 0, i32 3, i32 1
  %137 = load i16, ptr %136, align 4
  %138 = zext i16 %137 to i32
  %139 = and i32 %130, %128
  %140 = getelementptr inbounds %struct.vop_intr, ptr %106, i32 0, i32 3, i32 2
  %141 = load i8, ptr %140, align 2
  %142 = zext i8 %141 to i32
  %143 = getelementptr inbounds %struct.vop_intr, ptr %106, i32 0, i32 3, i32 3
  %144 = load i8, ptr %143, align 1, !range !8
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %135
  %147 = shl i32 %127, %142
  %148 = and i32 %147, 65535
  %149 = add nuw nsw i32 %142, 16
  %150 = shl i32 %139, %149
  %151 = or i32 %148, %150
  br label %164

152:                                              ; preds = %135
  %153 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %154 = load ptr, ptr %153, align 8
  %155 = lshr i32 %138, 2
  %156 = getelementptr i32, ptr %154, i32 %155
  %157 = load i32, ptr %156, align 4
  %158 = shl i32 %139, %142
  %159 = xor i32 %158, -1
  %160 = and i32 %157, %159
  %161 = and i32 %139, %127
  %162 = shl i32 %161, %142
  %163 = or i32 %160, %162
  store i32 %163, ptr %156, align 4
  br label %164

164:                                              ; preds = %152, %146
  %165 = phi i32 [ %151, %146 ], [ %163, %152 ]
  %166 = getelementptr inbounds %struct.vop_intr, ptr %106, i32 0, i32 3, i32 4
  %167 = load i8, ptr %166, align 4, !range !8
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr i8, ptr %171, i32 %138
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %165) #7, !srcloc !12
  br label %177

173:                                              ; preds = %164
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %174 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr i8, ptr %175, i32 %138
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %165) #7, !srcloc !12
  br label %177

177:                                              ; preds = %173, %169, %132
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #7
  br label %178

178:                                              ; preds = %177, %25
  %179 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %179) #7
  %180 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 10
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.vop_data, ptr %181, i32 0, i32 2
  %183 = load ptr, ptr %182, align 8
  %184 = getelementptr inbounds %struct.vop_common, ptr %183, i32 0, i32 12
  %185 = icmp eq ptr %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %178
  %187 = load i32, ptr %184, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186, %178
  %190 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %191 = load ptr, ptr %190, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %191, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.106) #7
  br label %233

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.vop_common, ptr %183, i32 0, i32 12, i32 1
  %194 = load i16, ptr %193, align 4
  %195 = zext i16 %194 to i32
  %196 = getelementptr inbounds %struct.vop_common, ptr %183, i32 0, i32 12, i32 2
  %197 = load i8, ptr %196, align 2
  %198 = zext i8 %197 to i32
  %199 = getelementptr inbounds %struct.vop_common, ptr %183, i32 0, i32 12, i32 3
  %200 = load i8, ptr %199, align 1, !range !8
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %192
  %203 = shl nuw i32 1, %198
  %204 = and i32 %203, 65535
  %205 = add nuw nsw i32 %198, 16
  %206 = shl i32 %187, %205
  %207 = or i32 %204, %206
  br label %220

208:                                              ; preds = %192
  %209 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %210 = load ptr, ptr %209, align 8
  %211 = lshr i32 %195, 2
  %212 = getelementptr i32, ptr %210, i32 %211
  %213 = load i32, ptr %212, align 4
  %214 = shl i32 %187, %198
  %215 = xor i32 %214, -1
  %216 = and i32 %213, %215
  %217 = and i32 %187, 1
  %218 = shl nuw i32 %217, %198
  %219 = or i32 %216, %218
  store i32 %219, ptr %212, align 4
  br label %220

220:                                              ; preds = %208, %202
  %221 = phi i32 [ %207, %202 ], [ %219, %208 ]
  %222 = getelementptr inbounds %struct.vop_common, ptr %183, i32 0, i32 12, i32 4
  %223 = load i8, ptr %222, align 4, !range !8
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr i8, ptr %227, i32 %195
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %221) #7, !srcloc !12
  br label %233

229:                                              ; preds = %220
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %230 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr i8, ptr %231, i32 %195
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %221) #7, !srcloc !12
  br label %233

233:                                              ; preds = %229, %225, %189
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %234 = load i16, ptr %179, align 4
  %235 = add i16 %234, 1
  store i16 %235, ptr %179, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  %236 = tail call i32 @wait_for_completion_timeout(ptr noundef %21, i32 noundef 20) #7
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 3
  %240 = load ptr, ptr %239, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 731, i32 noundef 9, ptr noundef nonnull @.str.109, ptr noundef %240) #7
  br label %241

241:                                              ; preds = %238, %233
  %242 = load i8, ptr %22, align 8, !range !8
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %245, !prof !11

244:                                              ; preds = %241
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 471, i32 noundef 9, ptr noundef null) #7
  br label %313

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 16
  %247 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %246) #7
  %248 = load ptr, ptr %180, align 4
  %249 = getelementptr inbounds %struct.vop_data, ptr %248, i32 0, i32 1
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.vop_intr, ptr %250, i32 0, i32 1
  %252 = load i32, ptr %251, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %268, label %254

254:                                              ; preds = %245
  %255 = load ptr, ptr %250, align 4
  br label %256

256:                                              ; preds = %256, %254
  %257 = phi i32 [ 0, %254 ], [ %265, %256 ]
  %258 = phi i32 [ 0, %254 ], [ %266, %256 ]
  %259 = getelementptr i32, ptr %255, i32 %258
  %260 = load i32, ptr %259, align 4
  %261 = and i32 %260, 1
  %262 = icmp eq i32 %261, 0
  %263 = shl nuw i32 1, %258
  %264 = select i1 %262, i32 0, i32 %263
  %265 = or i32 %264, %257
  %266 = add nuw i32 %258, 1
  %267 = icmp eq i32 %266, %252
  br i1 %267, label %268, label %256

268:                                              ; preds = %256, %245
  %269 = phi i32 [ 0, %245 ], [ %265, %256 ]
  %270 = getelementptr inbounds %struct.vop_intr, ptr %250, i32 0, i32 3
  %271 = load i32, ptr %270, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %275 = load ptr, ptr %274, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %275, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #7
  br label %312

276:                                              ; preds = %268
  %277 = getelementptr inbounds %struct.vop_intr, ptr %250, i32 0, i32 3, i32 1
  %278 = load i16, ptr %277, align 4
  %279 = zext i16 %278 to i32
  %280 = and i32 %271, %269
  %281 = getelementptr inbounds %struct.vop_intr, ptr %250, i32 0, i32 3, i32 2
  %282 = load i8, ptr %281, align 2
  %283 = zext i8 %282 to i32
  %284 = getelementptr inbounds %struct.vop_intr, ptr %250, i32 0, i32 3, i32 3
  %285 = load i8, ptr %284, align 1, !range !8
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %276
  %288 = add nuw nsw i32 %283, 16
  %289 = shl i32 %280, %288
  br label %299

290:                                              ; preds = %276
  %291 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %292 = load ptr, ptr %291, align 8
  %293 = lshr i32 %279, 2
  %294 = getelementptr i32, ptr %292, i32 %293
  %295 = load i32, ptr %294, align 4
  %296 = shl i32 %280, %283
  %297 = xor i32 %296, -1
  %298 = and i32 %295, %297
  store i32 %298, ptr %294, align 4
  br label %299

299:                                              ; preds = %290, %287
  %300 = phi i32 [ %289, %287 ], [ %298, %290 ]
  %301 = getelementptr inbounds %struct.vop_intr, ptr %250, i32 0, i32 3, i32 4
  %302 = load i8, ptr %301, align 4, !range !8
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %308, label %304

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr i8, ptr %306, i32 %279
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %307, i32 %300) #7, !srcloc !12
  br label %312

308:                                              ; preds = %299
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %309 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %310 = load ptr, ptr %309, align 4
  %311 = getelementptr i8, ptr %310, i32 %279
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %311, i32 %300) #7, !srcloc !12
  br label %312

312:                                              ; preds = %308, %304, %273
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %246, i32 noundef %247) #7
  br label %313

313:                                              ; preds = %312, %244
  store i8 0, ptr %22, align 8
  %314 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 2
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %317 = load ptr, ptr %316, align 8
  tail call void @rockchip_drm_dma_detach_device(ptr noundef %315, ptr noundef %317) #7
  %318 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 20
  %319 = load ptr, ptr %318, align 4
  tail call void @clk_disable(ptr noundef %319) #7
  %320 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 21
  %321 = load ptr, ptr %320, align 8
  tail call void @clk_disable(ptr noundef %321) #7
  %322 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 19
  %323 = load ptr, ptr %322, align 8
  tail call void @clk_disable(ptr noundef %323) #7
  %324 = load ptr, ptr %316, align 8
  %325 = tail call i32 @__pm_runtime_idle(ptr noundef %324, i32 noundef 5) #7
  br label %326

326:                                              ; preds = %313, %14
  tail call void @mutex_unlock(ptr noundef %15) #7
  %327 = load ptr, ptr %8, align 4
  %328 = getelementptr inbounds %struct.drm_crtc_state, ptr %327, i32 0, i32 18
  %329 = load ptr, ptr %328, align 4
  %330 = icmp eq ptr %329, null
  br i1 %330, label %347, label %331

331:                                              ; preds = %326
  %332 = getelementptr inbounds %struct.drm_crtc_state, ptr %327, i32 0, i32 2
  %333 = load i8, ptr %332, align 1, !range !8
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %335, label %347

335:                                              ; preds = %331
  %336 = load ptr, ptr %0, align 8
  %337 = getelementptr inbounds %struct.drm_device, ptr %336, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %337) #7
  %338 = load ptr, ptr %8, align 4
  %339 = getelementptr inbounds %struct.drm_crtc_state, ptr %338, i32 0, i32 18
  %340 = load ptr, ptr %339, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef %340) #7
  %341 = load ptr, ptr %0, align 8
  %342 = getelementptr inbounds %struct.drm_device, ptr %341, i32 0, i32 28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %343 = load i16, ptr %342, align 4
  %344 = add i16 %343, 1
  store i16 %344, ptr %342, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %345 = load ptr, ptr %8, align 4
  %346 = getelementptr inbounds %struct.drm_crtc_state, ptr %345, i32 0, i32 18
  store ptr null, ptr %346, align 4
  br label %347

347:                                              ; preds = %335, %331, %326
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vop_crtc_gamma_set(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %321, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %9) #7
  %10 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vop_data, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.vop_common, ptr %13, i32 0, i32 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  %17 = load i32, ptr %14, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %8
  %20 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %21, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.72) #7
  br label %57

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.vop_common, ptr %13, i32 0, i32 8, i32 1
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds %struct.vop_common, ptr %13, i32 0, i32 8, i32 2
  %27 = load i8, ptr %26, align 2
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.vop_common, ptr %13, i32 0, i32 8, i32 3
  %30 = load i8, ptr %29, align 1, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = add nuw nsw i32 %28, 16
  %34 = shl i32 %17, %33
  br label %44

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %37 = load ptr, ptr %36, align 8
  %38 = lshr i32 %25, 2
  %39 = getelementptr i32, ptr %37, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = shl i32 %17, %28
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, ptr %39, align 4
  br label %44

44:                                               ; preds = %35, %32
  %45 = phi i32 [ %34, %32 ], [ %43, %35 ]
  %46 = getelementptr inbounds %struct.vop_common, ptr %13, i32 0, i32 8, i32 4
  %47 = load i8, ptr %46, align 4, !range !8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %45) #7, !srcloc !12
  br label %57

53:                                               ; preds = %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %54 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %45) #7, !srcloc !12
  br label %57

57:                                               ; preds = %53, %49, %19
  %58 = load ptr, ptr %10, align 4
  %59 = getelementptr inbounds %struct.vop_data, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, ptr %60, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62, %57
  %66 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %67 = load ptr, ptr %66, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %67, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.68) #7
  br label %109

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.vop_reg, ptr %60, i32 0, i32 1
  %70 = load i16, ptr %69, align 4
  %71 = zext i16 %70 to i32
  %72 = getelementptr inbounds %struct.vop_reg, ptr %60, i32 0, i32 2
  %73 = load i8, ptr %72, align 2
  %74 = zext i8 %73 to i32
  %75 = getelementptr inbounds %struct.vop_reg, ptr %60, i32 0, i32 3
  %76 = load i8, ptr %75, align 1, !range !8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %68
  %79 = shl nuw i32 1, %74
  %80 = and i32 %79, 65535
  %81 = add nuw nsw i32 %74, 16
  %82 = shl i32 %63, %81
  %83 = or i32 %80, %82
  br label %96

84:                                               ; preds = %68
  %85 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %86 = load ptr, ptr %85, align 8
  %87 = lshr i32 %71, 2
  %88 = getelementptr i32, ptr %86, i32 %87
  %89 = load i32, ptr %88, align 4
  %90 = shl i32 %63, %74
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  %93 = and i32 %63, 1
  %94 = shl nuw i32 %93, %74
  %95 = or i32 %92, %94
  store i32 %95, ptr %88, align 4
  br label %96

96:                                               ; preds = %84, %78
  %97 = phi i32 [ %83, %78 ], [ %95, %84 ]
  %98 = getelementptr inbounds %struct.vop_reg, ptr %60, i32 0, i32 4
  %99 = load i8, ptr %98, align 4, !range !8
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr i8, ptr %103, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %97) #7, !srcloc !12
  br label %109

105:                                              ; preds = %96
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %106 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %107, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %97) #7, !srcloc !12
  br label %109

109:                                              ; preds = %105, %101, %65
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %110 = load i16, ptr %9, align 4
  %111 = add i16 %110, 1
  store i16 %111, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  %112 = tail call i64 @ktime_get() #7
  %113 = add i64 %112, 30000000
  %114 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %115 = load ptr, ptr %10, align 4
  %116 = getelementptr inbounds %struct.vop_data, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %struct.vop_common, ptr %117, i32 0, i32 8
  %119 = getelementptr inbounds %struct.vop_common, ptr %117, i32 0, i32 8, i32 1
  %120 = load i16, ptr %119, align 4
  %121 = zext i16 %120 to i32
  %122 = load ptr, ptr %114, align 4
  %123 = getelementptr i8, ptr %122, i32 %121
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %125 = getelementptr inbounds %struct.vop_common, ptr %117, i32 0, i32 8, i32 2
  %126 = load i8, ptr %125, align 2
  %127 = zext i8 %126 to i32
  %128 = lshr i32 %124, %127
  %129 = load i32, ptr %118, align 4
  %130 = and i32 %128, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %174, label %132

132:                                              ; preds = %135, %109
  %133 = tail call i64 @ktime_get() #7
  %134 = icmp sgt i64 %133, %113
  br i1 %134, label %153, label %135

135:                                              ; preds = %132
  tail call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #7
  %136 = load ptr, ptr %10, align 4
  %137 = getelementptr inbounds %struct.vop_data, ptr %136, i32 0, i32 2
  %138 = load ptr, ptr %137, align 8
  %139 = getelementptr inbounds %struct.vop_common, ptr %138, i32 0, i32 8
  %140 = getelementptr inbounds %struct.vop_common, ptr %138, i32 0, i32 8, i32 1
  %141 = load i16, ptr %140, align 4
  %142 = zext i16 %141 to i32
  %143 = load ptr, ptr %114, align 4
  %144 = getelementptr i8, ptr %143, i32 %142
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %146 = getelementptr inbounds %struct.vop_common, ptr %138, i32 0, i32 8, i32 2
  %147 = load i8, ptr %146, align 2
  %148 = zext i8 %147 to i32
  %149 = lshr i32 %145, %148
  %150 = load i32, ptr %139, align 4
  %151 = and i32 %149, %150
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %174, label %132

153:                                              ; preds = %132
  %154 = load ptr, ptr %10, align 4
  %155 = getelementptr inbounds %struct.vop_data, ptr %154, i32 0, i32 2
  %156 = load ptr, ptr %155, align 8
  %157 = getelementptr inbounds %struct.vop_common, ptr %156, i32 0, i32 8
  %158 = getelementptr inbounds %struct.vop_common, ptr %156, i32 0, i32 8, i32 1
  %159 = load i16, ptr %158, align 4
  %160 = zext i16 %159 to i32
  %161 = load ptr, ptr %114, align 4
  %162 = getelementptr i8, ptr %161, i32 %160
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %164 = getelementptr inbounds %struct.vop_common, ptr %156, i32 0, i32 8, i32 2
  %165 = load i8, ptr %164, align 2
  %166 = zext i8 %165 to i32
  %167 = lshr i32 %163, %166
  %168 = load i32, ptr %157, align 4
  %169 = and i32 %167, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %153
  %172 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %173 = load ptr, ptr %172, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %173, ptr noundef nonnull @.str, ptr noundef nonnull @.str.73) #7
  br label %321

174:                                              ; preds = %153, %135, %109
  %175 = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 12
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %321, label %178

178:                                              ; preds = %174
  tail call void @_raw_spin_lock(ptr noundef %9) #7
  %179 = load ptr, ptr %3, align 4
  %180 = getelementptr inbounds %struct.drm_crtc_state, ptr %179, i32 0, i32 12
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.drm_property_blob, ptr %181, i32 0, i32 5
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 17
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %217, label %187

187:                                              ; preds = %187, %178
  %188 = phi i32 [ %214, %187 ], [ 0, %178 ]
  %189 = getelementptr %struct.drm_color_lut, ptr %183, i32 %188
  %190 = load i16, ptr %189, align 2
  %191 = zext i16 %190 to i32
  %192 = add nuw nsw i32 %191, 32
  %193 = lshr i32 %192, 6
  %194 = tail call i32 @llvm.umin.i32(i32 %193, i32 1023) #7
  %195 = shl nuw nsw i32 %194, 20
  %196 = getelementptr %struct.drm_color_lut, ptr %183, i32 %188, i32 1
  %197 = load i16, ptr %196, align 2
  %198 = zext i16 %197 to i32
  %199 = add nuw nsw i32 %198, 32
  %200 = lshr i32 %199, 6
  %201 = tail call i32 @llvm.umin.i32(i32 %200, i32 1023) #7
  %202 = shl nuw nsw i32 %201, 10
  %203 = or i32 %202, %195
  %204 = getelementptr %struct.drm_color_lut, ptr %183, i32 %188, i32 2
  %205 = load i16, ptr %204, align 2
  %206 = zext i16 %205 to i32
  %207 = add nuw nsw i32 %206, 32
  %208 = lshr i32 %207, 6
  %209 = tail call i32 @llvm.umin.i32(i32 %208, i32 1023) #7
  %210 = or i32 %203, %209
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %211 = load ptr, ptr %5, align 8
  %212 = shl i32 %188, 2
  %213 = getelementptr i8, ptr %211, i32 %212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %210) #7, !srcloc !12
  %214 = add nuw i32 %188, 1
  %215 = load i32, ptr %184, align 4
  %216 = icmp ult i32 %214, %215
  br i1 %216, label %187, label %217

217:                                              ; preds = %187, %178
  %218 = load ptr, ptr %10, align 4
  %219 = getelementptr inbounds %struct.vop_data, ptr %218, i32 0, i32 2
  %220 = load ptr, ptr %219, align 8
  %221 = getelementptr inbounds %struct.vop_common, ptr %220, i32 0, i32 8
  %222 = icmp eq ptr %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %217
  %224 = load i32, ptr %221, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %223, %217
  %227 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %228 = load ptr, ptr %227, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %228, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.72) #7
  br label %268

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.vop_common, ptr %220, i32 0, i32 8, i32 1
  %231 = load i16, ptr %230, align 4
  %232 = zext i16 %231 to i32
  %233 = getelementptr inbounds %struct.vop_common, ptr %220, i32 0, i32 8, i32 2
  %234 = load i8, ptr %233, align 2
  %235 = zext i8 %234 to i32
  %236 = getelementptr inbounds %struct.vop_common, ptr %220, i32 0, i32 8, i32 3
  %237 = load i8, ptr %236, align 1, !range !8
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %229
  %240 = shl nuw i32 1, %235
  %241 = and i32 %240, 65535
  %242 = add nuw nsw i32 %235, 16
  %243 = shl i32 %224, %242
  %244 = or i32 %241, %243
  br label %257

245:                                              ; preds = %229
  %246 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %247 = load ptr, ptr %246, align 8
  %248 = lshr i32 %232, 2
  %249 = getelementptr i32, ptr %247, i32 %248
  %250 = load i32, ptr %249, align 4
  %251 = shl i32 %224, %235
  %252 = xor i32 %251, -1
  %253 = and i32 %250, %252
  %254 = and i32 %224, 1
  %255 = shl nuw i32 %254, %235
  %256 = or i32 %253, %255
  store i32 %256, ptr %249, align 4
  br label %257

257:                                              ; preds = %245, %239
  %258 = phi i32 [ %244, %239 ], [ %256, %245 ]
  %259 = getelementptr inbounds %struct.vop_common, ptr %220, i32 0, i32 8, i32 4
  %260 = load i8, ptr %259, align 4, !range !8
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %257
  %263 = load ptr, ptr %114, align 4
  %264 = getelementptr i8, ptr %263, i32 %232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %264, i32 %258) #7, !srcloc !12
  br label %268

265:                                              ; preds = %257
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %266 = load ptr, ptr %114, align 4
  %267 = getelementptr i8, ptr %266, i32 %232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %267, i32 %258) #7, !srcloc !12
  br label %268

268:                                              ; preds = %265, %262, %226
  %269 = load ptr, ptr %10, align 4
  %270 = getelementptr inbounds %struct.vop_data, ptr %269, i32 0, i32 2
  %271 = load ptr, ptr %270, align 8
  %272 = icmp eq ptr %271, null
  br i1 %272, label %276, label %273

273:                                              ; preds = %268
  %274 = load i32, ptr %271, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273, %268
  %277 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %278 = load ptr, ptr %277, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %278, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.68) #7
  br label %318

279:                                              ; preds = %273
  %280 = getelementptr inbounds %struct.vop_reg, ptr %271, i32 0, i32 1
  %281 = load i16, ptr %280, align 4
  %282 = zext i16 %281 to i32
  %283 = getelementptr inbounds %struct.vop_reg, ptr %271, i32 0, i32 2
  %284 = load i8, ptr %283, align 2
  %285 = zext i8 %284 to i32
  %286 = getelementptr inbounds %struct.vop_reg, ptr %271, i32 0, i32 3
  %287 = load i8, ptr %286, align 1, !range !8
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %295, label %289

289:                                              ; preds = %279
  %290 = shl nuw i32 1, %285
  %291 = and i32 %290, 65535
  %292 = add nuw nsw i32 %285, 16
  %293 = shl i32 %274, %292
  %294 = or i32 %291, %293
  br label %307

295:                                              ; preds = %279
  %296 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %297 = load ptr, ptr %296, align 8
  %298 = lshr i32 %282, 2
  %299 = getelementptr i32, ptr %297, i32 %298
  %300 = load i32, ptr %299, align 4
  %301 = shl i32 %274, %285
  %302 = xor i32 %301, -1
  %303 = and i32 %300, %302
  %304 = and i32 %274, 1
  %305 = shl nuw i32 %304, %285
  %306 = or i32 %303, %305
  store i32 %306, ptr %299, align 4
  br label %307

307:                                              ; preds = %295, %289
  %308 = phi i32 [ %294, %289 ], [ %306, %295 ]
  %309 = getelementptr inbounds %struct.vop_reg, ptr %271, i32 0, i32 4
  %310 = load i8, ptr %309, align 4, !range !8
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %307
  %313 = load ptr, ptr %114, align 4
  %314 = getelementptr i8, ptr %313, i32 %282
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %314, i32 %308) #7, !srcloc !12
  br label %318

315:                                              ; preds = %307
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %316 = load ptr, ptr %114, align 4
  %317 = getelementptr i8, ptr %316, i32 %282
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %317, i32 %308) #7, !srcloc !12
  br label %318

318:                                              ; preds = %315, %312, %276
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %319 = load i16, ptr %9, align 4
  %320 = add i16 %319, 1
  store i16 %320, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  br label %321

321:                                              ; preds = %318, %174, %171, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rockchip_drm_set_win_enabled(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vop_data, ptr %5, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %81, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 5
  %11 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %12 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %13 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  br label %14

14:                                               ; preds = %75, %9
  %15 = phi i32 [ 0, %9 ], [ %76, %75 ]
  %16 = getelementptr %struct.vop, ptr %0, i32 0, i32 24, i32 %15, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.vop_win_data, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.vop_win_phy, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %17, align 4
  br i1 %1, label %22, label %27

22:                                               ; preds = %14
  %23 = load i32, ptr %10, align 4
  %24 = shl nuw i32 1, %15
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %22, %14
  %28 = phi i1 [ false, %14 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = icmp eq ptr %20, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %20, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %27
  %35 = load ptr, ptr %13, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %35, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #7
  br label %75

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.vop_win_phy, ptr %19, i32 0, i32 4, i32 1
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = add i32 %21, %39
  %41 = getelementptr inbounds %struct.vop_win_phy, ptr %19, i32 0, i32 4, i32 2
  %42 = load i8, ptr %41, align 2
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.vop_win_phy, ptr %19, i32 0, i32 4, i32 3
  %45 = load i8, ptr %44, align 1, !range !8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %36
  %48 = shl nuw i32 %29, %43
  %49 = and i32 %48, 65535
  %50 = add nuw nsw i32 %43, 16
  %51 = shl i32 %32, %50
  %52 = or i32 %49, %51
  br label %64

53:                                               ; preds = %36
  %54 = load ptr, ptr %11, align 8
  %55 = ashr i32 %40, 2
  %56 = getelementptr i32, ptr %54, i32 %55
  %57 = load i32, ptr %56, align 4
  %58 = shl i32 %32, %43
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = and i32 %32, %29
  %62 = shl nuw i32 %61, %43
  %63 = or i32 %60, %62
  store i32 %63, ptr %56, align 4
  br label %64

64:                                               ; preds = %53, %47
  %65 = phi i32 [ %52, %47 ], [ %63, %53 ]
  %66 = getelementptr inbounds %struct.vop_win_phy, ptr %19, i32 0, i32 4, i32 4
  %67 = load i8, ptr %66, align 4, !range !8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %12, align 4
  %71 = getelementptr i8, ptr %70, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %65) #7, !srcloc !12
  br label %75

72:                                               ; preds = %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %73 = load ptr, ptr %12, align 4
  %74 = getelementptr i8, ptr %73, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %65) #7, !srcloc !12
  br label %75

75:                                               ; preds = %72, %69, %34
  %76 = add nuw i32 %15, 1
  %77 = load ptr, ptr %4, align 4
  %78 = getelementptr inbounds %struct.vop_data, ptr %77, i32 0, i32 9
  %79 = load i32, ptr %78, align 4
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %14, label %81

81:                                               ; preds = %75, %2
  %82 = phi ptr [ %5, %2 ], [ %77, %75 ]
  %83 = getelementptr inbounds %struct.vop_data, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load i32, ptr %84, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86, %81
  %90 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 1
  %91 = load ptr, ptr %90, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %91, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.68) #7
  br label %133

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.vop_reg, ptr %84, i32 0, i32 1
  %94 = load i16, ptr %93, align 4
  %95 = zext i16 %94 to i32
  %96 = getelementptr inbounds %struct.vop_reg, ptr %84, i32 0, i32 2
  %97 = load i8, ptr %96, align 2
  %98 = zext i8 %97 to i32
  %99 = getelementptr inbounds %struct.vop_reg, ptr %84, i32 0, i32 3
  %100 = load i8, ptr %99, align 1, !range !8
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %92
  %103 = shl nuw i32 1, %98
  %104 = and i32 %103, 65535
  %105 = add nuw nsw i32 %98, 16
  %106 = shl i32 %87, %105
  %107 = or i32 %104, %106
  br label %120

108:                                              ; preds = %92
  %109 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 11
  %110 = load ptr, ptr %109, align 8
  %111 = lshr i32 %95, 2
  %112 = getelementptr i32, ptr %110, i32 %111
  %113 = load i32, ptr %112, align 4
  %114 = shl i32 %87, %98
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  %117 = and i32 %87, 1
  %118 = shl nuw i32 %117, %98
  %119 = or i32 %116, %118
  store i32 %119, ptr %112, align 4
  br label %120

120:                                              ; preds = %108, %102
  %121 = phi i32 [ %107, %102 ], [ %119, %108 ]
  %122 = getelementptr inbounds %struct.vop_reg, ptr %84, i32 0, i32 4
  %123 = load i8, ptr %122, align 4, !range !8
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %127, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %121) #7, !srcloc !12
  br label %133

129:                                              ; preds = %120
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %130 = getelementptr inbounds %struct.vop, ptr %0, i32 0, i32 12
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr i8, ptr %131, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %121) #7, !srcloc !12
  br label %133

133:                                              ; preds = %129, %125, %89
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %134 = load i16, ptr %3, align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_drm_dma_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_drm_dma_detach_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_commit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_self_refresh_helper_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{i64 2546126}
!10 = !{i64 2155549671}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2545708}
!13 = !{i64 2155550244}
!14 = !{i64 2148936238}
!15 = !{i64 2148932062}
!16 = !{i64 2148932137, i64 2148932164, i64 2148932211, i64 2148932233, i64 2148932261, i64 2148932281}
!17 = !{i64 2148959241}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 393554}
!20 = !{i64 2148960382}
!21 = !{i64 2155601346}
