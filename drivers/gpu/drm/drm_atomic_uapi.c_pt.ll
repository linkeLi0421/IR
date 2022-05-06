; ModuleID = '/llk/IR/drivers/gpu/drm/drm_atomic_uapi.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_atomic_uapi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_set_mode_for_crtc:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_set_mode_for_crtc\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_set_mode_for_crtc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_set_mode_prop_for_crtc:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_set_mode_prop_for_crtc\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_set_mode_prop_for_crtc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_set_crtc_for_plane:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_set_crtc_for_plane\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_set_crtc_for_plane:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_set_fb_for_plane:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_set_fb_for_plane\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_set_fb_for_plane:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_set_fence_for_plane:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_set_fence_for_plane\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_set_fence_for_plane:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_set_crtc_for_connector:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_set_crtc_for_connector\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_set_crtc_for_connector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_mode_modeinfo = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, [32 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.74 = type { i32, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.dma_fence = type { ptr, ptr, %union.anon.71, i64, i64, i32, %struct.kref, i32 }
%union.anon.71 = type { i64 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.73 }
%union.anon.73 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_property = type { %struct.list_head, %struct.drm_mode_object, i32, [32 x i8], i32, ptr, ptr, %struct.list_head }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.drm_mode_atomic = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_pending_vblank_event = type { %struct.drm_pending_event, i32, i64, %union.anon.72 }
%struct.drm_pending_event = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%union.anon.72 = type { %struct.drm_event_vblank }
%struct.drm_event_vblank = type { %struct.drm_event, i64, i32, i32, i32, i32 }
%struct.drm_event = type { i32, i32 }
%struct.drm_out_fence_state = type { ptr, ptr, i32 }
%struct.drm_writeback_job = type { ptr, i8, %struct.work_struct, %struct.list_head, ptr, ptr, ptr }

@.str = private unnamed_addr constant [41 x i8] c"Set [MODE:%s] for [CRTC:%d:%s] state %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Set [NOMODE] for [CRTC:%d:%s] state %p\0A\00", align 1
@__kstrtab_drm_atomic_set_mode_for_crtc = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_set_mode_for_crtc = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_set_mode_for_crtc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_set_mode_for_crtc to i32), ptr @__kstrtab_drm_atomic_set_mode_for_crtc, ptr @__kstrtabns_drm_atomic_set_mode_for_crtc }, section "___ksymtab+drm_atomic_set_mode_for_crtc", align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"[CRTC:%d:%s] bad mode blob length: %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"[CRTC:%d:%s] invalid mode (ret=%d, status=%s):\0A\00", align 1
@__kstrtab_drm_atomic_set_mode_prop_for_crtc = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_set_mode_prop_for_crtc = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_set_mode_prop_for_crtc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_set_mode_prop_for_crtc to i32), ptr @__kstrtab_drm_atomic_set_mode_prop_for_crtc, ptr @__kstrtabns_drm_atomic_set_mode_prop_for_crtc }, section "___ksymtab+drm_atomic_set_mode_prop_for_crtc", align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"drivers/gpu/drm/drm_atomic_uapi.c\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Link [PLANE:%d:%s] state %p to [CRTC:%d:%s]\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Link [PLANE:%d:%s] state %p to [NOCRTC]\0A\00", align 1
@__kstrtab_drm_atomic_set_crtc_for_plane = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_set_crtc_for_plane = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_set_crtc_for_plane = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_set_crtc_for_plane to i32), ptr @__kstrtab_drm_atomic_set_crtc_for_plane, ptr @__kstrtabns_drm_atomic_set_crtc_for_plane }, section "___ksymtab+drm_atomic_set_crtc_for_plane", align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Set [FB:%d] for [PLANE:%d:%s] state %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Set [NOFB] for [PLANE:%d:%s] state %p\0A\00", align 1
@__kstrtab_drm_atomic_set_fb_for_plane = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_set_fb_for_plane = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_set_fb_for_plane = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_set_fb_for_plane to i32), ptr @__kstrtab_drm_atomic_set_fb_for_plane, ptr @__kstrtabns_drm_atomic_set_fb_for_plane }, section "___ksymtab+drm_atomic_set_fb_for_plane", align 4
@__kstrtab_drm_atomic_set_fence_for_plane = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_set_fence_for_plane = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_set_fence_for_plane = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_set_fence_for_plane to i32), ptr @__kstrtab_drm_atomic_set_fence_for_plane, ptr @__kstrtabns_drm_atomic_set_fence_for_plane }, section "___ksymtab+drm_atomic_set_fence_for_plane", align 4
@.str.9 = private unnamed_addr constant [49 x i8] c"Link [CONNECTOR:%d:%s] state %p to [CRTC:%d:%s]\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"Link [CONNECTOR:%d:%s] state %p to [NOCRTC]\0A\00", align 1
@__kstrtab_drm_atomic_set_crtc_for_connector = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_set_crtc_for_connector = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_set_crtc_for_connector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_set_crtc_for_connector to i32), ptr @__kstrtab_drm_atomic_set_crtc_for_connector, ptr @__kstrtabns_drm_atomic_set_crtc_for_connector }, section "___ksymtab+drm_atomic_set_crtc_for_connector", align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"commit failed: atomic cap not enabled\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"commit failed: invalid flag\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"commit failed: reserved field set\0A\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"commit failed: invalid flag DRM_MODE_PAGE_FLIP_ASYNC\0A\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c"commit failed: page-flip event requested with test-only commit\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"only drivers can set CP Enabled\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"[CONNECTOR:%d:%s] unknown property [PROP:%d:%s]]\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Set [FB:%d] for connector state %p\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Set [NOFB] for connector state %p\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"[CRTC:%d:%s] unknown property [PROP:%d:%s]]\0A\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"[PLANE:%d:%s] bad rotation bitmask: 0x%llx\0A\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"[PLANE:%d:%s] unknown property [PROP:%d:%s]]\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.25 = private unnamed_addr constant [30 x i8] c"Couldn't clear out_fence_ptr\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_drm_atomic_set_crtc_for_connector, ptr @__ksymtab_drm_atomic_set_crtc_for_plane, ptr @__ksymtab_drm_atomic_set_fb_for_plane, ptr @__ksymtab_drm_atomic_set_fence_for_plane, ptr @__ksymtab_drm_atomic_set_mode_for_crtc, ptr @__ksymtab_drm_atomic_set_mode_prop_for_crtc], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_atomic_set_mode_for_crtc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.drm_mode_modeinfo, align 4
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i32 68, i1 false), !annotation !8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 8
  %8 = tail call i32 @bcmp(ptr noundef dereferenceable(112) %7, ptr noundef nonnull dereferenceable(112) %1, i32 112)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %48, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  tail call void @drm_property_blob_put(ptr noundef %12) #10
  store ptr null, ptr %11, align 4
  call void @drm_mode_convert_to_umode(ptr noundef nonnull %3, ptr noundef nonnull %1) #10
  %13 = load ptr, ptr %4, align 8
  %14 = call ptr @drm_property_create_blob(ptr noundef %13, i32 noundef 68, ptr noundef nonnull %3) #10
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = ptrtoint ptr %14 to i32
  br label %48

18:                                               ; preds = %10
  call void @drm_mode_copy(ptr noundef %7, ptr noundef nonnull %1) #10
  store ptr %14, ptr %11, align 4
  %19 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 1
  store i8 1, ptr %19, align 4
  %20 = load ptr, ptr %4, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi ptr [ %24, %22 ], [ null, %18 ]
  %27 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 31
  %28 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %26, i32 noundef 16, ptr noundef nonnull @.str, ptr noundef %27, i32 noundef %29, ptr noundef %31, ptr noundef %0) #10
  br label %48

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  tail call void @drm_property_blob_put(ptr noundef %34) #10
  %35 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 8
  %36 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 1
  store i8 0, ptr %36, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(116) %35, i8 0, i64 116, i1 false)
  %37 = load ptr, ptr %4, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %32
  %43 = phi ptr [ %41, %39 ], [ null, %32 ]
  %44 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %43, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %45, ptr noundef %47, ptr noundef %0) #10
  br label %48

48:                                               ; preds = %42, %25, %16, %6
  %49 = phi i32 [ 0, %6 ], [ %17, %16 ], [ 0, %25 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #10
  ret i32 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_blob_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_convert_to_umode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_blob(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_atomic_set_mode_prop_for_crtc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %74, label %7

7:                                                ; preds = %2
  tail call void @drm_property_blob_put(ptr noundef %5) #10
  %8 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 8
  %9 = icmp eq ptr %1, null
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(116) %8, i8 0, i64 116, i1 false)
  br i1 %9, label %61, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.drm_property_blob, ptr %1, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 68
  %14 = load ptr, ptr %3, align 8
  br i1 %13, label %26, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %14, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi ptr [ %19, %17 ], [ null, %15 ]
  %22 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %21, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %23, ptr noundef %25, i32 noundef %12) #10
  br label %74

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.drm_property_blob, ptr %1, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @drm_mode_convert_umode(ptr noundef %14, ptr noundef %8, ptr noundef %28) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %3, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi ptr [ %36, %34 ], [ null, %31 ]
  %39 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 8, i32 32
  %44 = load i32, ptr %43, align 4
  %45 = tail call ptr @drm_get_mode_status_name(i32 noundef %44) #10
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %38, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %40, ptr noundef %42, i32 noundef %29, ptr noundef %45) #10
  tail call void @drm_mode_debug_printmodeline(ptr noundef %8) #10
  br label %74

46:                                               ; preds = %26
  %47 = tail call ptr @drm_property_blob_get(ptr noundef nonnull %1) #10
  store ptr %47, ptr %4, align 4
  %48 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 1
  store i8 1, ptr %48, align 4
  %49 = load ptr, ptr %3, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.drm_device, ptr %49, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi ptr [ %53, %51 ], [ null, %46 ]
  %56 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 8, i32 31
  %57 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 3
  %60 = load ptr, ptr %59, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %55, i32 noundef 16, ptr noundef nonnull @.str, ptr noundef %56, i32 noundef %58, ptr noundef %60, ptr noundef %0) #10
  br label %74

61:                                               ; preds = %7
  %62 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 1
  store i8 0, ptr %62, align 4
  %63 = load ptr, ptr %3, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.drm_device, ptr %63, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  br label %68

68:                                               ; preds = %65, %61
  %69 = phi ptr [ %67, %65 ], [ null, %61 ]
  %70 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 3
  %73 = load ptr, ptr %72, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %69, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %71, ptr noundef %73, ptr noundef %0) #10
  br label %74

74:                                               ; preds = %68, %54, %37, %20, %2
  %75 = phi i32 [ 0, %2 ], [ -22, %37 ], [ -22, %20 ], [ 0, %54 ], [ 0, %68 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_convert_umode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_mode_status_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_debug_printmodeline(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_blob_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_atomic_set_crtc_for_plane(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %67, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %5, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 25
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %11, ptr noundef nonnull %5) #10
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16, !prof !9

14:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 197, i32 noundef 9, ptr noundef null) #10
  %15 = ptrtoint ptr %12 to i32
  br label %67

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  %19 = shl nuw i32 1, %18
  %20 = xor i32 %19, -1
  %21 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %20
  store i32 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %16, %7
  store ptr %1, ptr %4, align 4
  %25 = icmp eq ptr %1, null
  br i1 %25, label %55, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 25
  %28 = load ptr, ptr %27, align 4
  %29 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %28, ptr noundef nonnull %1) #10
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = ptrtoint ptr %29 to i32
  br label %67

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 17
  %35 = load i32, ptr %34, align 4
  %36 = shl nuw i32 1, %35
  %37 = getelementptr inbounds %struct.drm_crtc_state, ptr %29, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, ptr %37, align 4
  %40 = load ptr, ptr %3, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.drm_device, ptr %40, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %33
  %46 = phi ptr [ %44, %42 ], [ null, %33 ]
  %47 = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 4
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %46, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %48, ptr noundef %50, ptr noundef %0, i32 noundef %52, ptr noundef %54) #10
  br label %67

55:                                               ; preds = %24
  %56 = load ptr, ptr %3, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.drm_device, ptr %56, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi ptr [ %60, %58 ], [ null, %55 ]
  %63 = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 4
  %64 = load i32, ptr %63, align 8
  %65 = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %62, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %64, ptr noundef %66, ptr noundef %0) #10
  br label %67

67:                                               ; preds = %61, %45, %31, %14, %2
  %68 = phi i32 [ %15, %14 ], [ %32, %31 ], [ 0, %2 ], [ 0, %61 ], [ 0, %45 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_atomic_set_fb_for_plane(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %1, null
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, null
  br i1 %4, label %11, label %7

7:                                                ; preds = %2
  br i1 %6, label %21, label %8

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  br label %21

11:                                               ; preds = %2
  br i1 %6, label %15, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %11
  %16 = phi ptr [ %14, %12 ], [ null, %11 ]
  %17 = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %16, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %18, ptr noundef %20, ptr noundef %0) #10
  br label %29

21:                                               ; preds = %8, %7
  %22 = phi ptr [ %10, %8 ], [ null, %7 ]
  %23 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %22, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %24, i32 noundef %26, ptr noundef %28, ptr noundef %0) #10
  tail call void @drm_mode_object_get(ptr noundef %23) #10
  br label %29

29:                                               ; preds = %21, %15
  %30 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.drm_framebuffer, ptr %31, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %34) #10
  br label %35

35:                                               ; preds = %33, %29
  store ptr %1, ptr %30, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_atomic_set_fence_for_plane(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #10, !srcloc !11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #10, !srcloc !12
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %18, label %15, !prof !13

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #10
  br label %18

16:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void @dma_fence_release(ptr noundef %9) #10, !callees !15
  br label %18

17:                                               ; preds = %2
  store ptr %1, ptr %3, align 4
  br label %18

18:                                               ; preds = %17, %16, %15, %13, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_atomic_set_crtc_for_connector(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_connector_state, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %73, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %5, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.drm_connector_state, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_atomic_state, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %15, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = shl nuw i32 1, %19
  %21 = xor i32 %20, -1
  %22 = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, %21
  store i32 %24, ptr %22, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.drm_connector, ptr %25, i32 0, i32 6
  tail call void @drm_mode_object_put(ptr noundef %26) #10
  store ptr null, ptr %4, align 4
  br label %27

27:                                               ; preds = %9, %7
  %28 = icmp eq ptr %1, null
  br i1 %28, label %61, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.drm_connector_state, ptr %0, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %31, ptr noundef nonnull %1) #10
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = ptrtoint ptr %32 to i32
  br label %73

36:                                               ; preds = %29
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.drm_connector, ptr %37, i32 0, i32 9
  %39 = load i32, ptr %38, align 4
  %40 = shl nuw i32 1, %39
  %41 = getelementptr inbounds %struct.drm_crtc_state, ptr %32, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, ptr %41, align 4
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr inbounds %struct.drm_connector, ptr %44, i32 0, i32 6
  tail call void @drm_mode_object_get(ptr noundef %45) #10
  store ptr %1, ptr %4, align 4
  %46 = load ptr, ptr %3, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %36
  %52 = phi ptr [ %50, %48 ], [ null, %36 ]
  %53 = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 6
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 3
  %60 = load ptr, ptr %59, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %52, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %54, ptr noundef %56, ptr noundef %0, i32 noundef %58, ptr noundef %60) #10
  br label %73

61:                                               ; preds = %27
  %62 = load ptr, ptr %3, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.drm_device, ptr %62, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi ptr [ %66, %64 ], [ null, %61 ]
  %69 = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 6
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 7
  %72 = load ptr, ptr %71, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %68, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %70, ptr noundef %72, ptr noundef %0) #10
  br label %73

73:                                               ; preds = %67, %51, %34, %2
  %74 = phi i32 [ %35, %34 ], [ 0, %2 ], [ 0, %67 ], [ 0, %51 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_atomic_get_property(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_mode_object, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %534 [
    i32 -1061109568, label %6
    i32 -858993460, label %248
    i32 -286331154, label %352
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_property, ptr %1, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -32
  %10 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 30, i32 1
  %11 = tail call zeroext i1 @mutex_is_locked(ptr noundef %10) #10
  br i1 %11, label %13, label %12, !prof !13

12:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 903, i32 noundef 9, ptr noundef null) #10
  br label %13

13:                                               ; preds = %12, %6
  %14 = getelementptr i8, ptr %0, i32 888
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %9, align 8
  %17 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 52
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.drm_crtc, ptr %22, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i32 [ %26, %24 ], [ 0, %20 ]
  %29 = zext i32 %28 to i64
  store i64 %29, ptr %2, align 8
  br label %534

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 36
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %1
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.drm_crtc, ptr %36, i32 0, i32 22
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.drm_crtc_state, ptr %40, i32 0, i32 16
  %42 = load i8, ptr %41, align 2, !range !16
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i64 0, ptr %2, align 8
  br label %534

45:                                               ; preds = %38, %34
  %46 = getelementptr i8, ptr %0, i32 600
  %47 = load i32, ptr %46, align 8
  %48 = sext i32 %47 to i64
  store i64 %48, ptr %2, align 8
  br label %534

49:                                               ; preds = %30
  %50 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 61
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %1
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = zext i32 %55 to i64
  store i64 %56, ptr %2, align 8
  br label %534

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 63
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %1
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 1, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = zext i32 %63 to i64
  store i64 %64, ptr %2, align 8
  br label %534

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 64
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %1
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 1, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = zext i32 %71 to i64
  store i64 %72, ptr %2, align 8
  br label %534

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 65
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %1
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 1, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = zext i32 %79 to i64
  store i64 %80, ptr %2, align 8
  br label %534

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 66
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %1
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, ptr %2, align 8
  br label %534

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 62
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %1
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = zext i32 %95 to i64
  store i64 %96, ptr %2, align 8
  br label %534

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 67
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %1
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = zext i32 %103 to i64
  store i64 %104, ptr %2, align 8
  br label %534

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 68
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %1
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 4
  %111 = load i32, ptr %110, align 4
  %112 = zext i32 %111 to i64
  store i64 %112, ptr %2, align 8
  br label %534

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 69
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, %1
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 5
  %119 = load i32, ptr %118, align 4
  %120 = zext i32 %119 to i64
  store i64 %120, ptr %2, align 8
  br label %534

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 70
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, %1
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 6
  %127 = load i32, ptr %126, align 4
  %128 = zext i32 %127 to i64
  store i64 %128, ptr %2, align 8
  br label %534

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 71
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, %1
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 7
  %135 = load i32, ptr %134, align 4
  %136 = zext i32 %135 to i64
  store i64 %136, ptr %2, align 8
  br label %534

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 72
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, %1
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 8
  %143 = load i32, ptr %142, align 4
  %144 = zext i32 %143 to i64
  store i64 %144, ptr %2, align 8
  br label %534

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 39
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, %1
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 3
  %151 = load i32, ptr %150, align 4
  %152 = zext i32 %151 to i64
  store i64 %152, ptr %2, align 8
  br label %534

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 74
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, %1
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 8
  %159 = load i32, ptr %158, align 4
  %160 = zext i32 %159 to i64
  store i64 %160, ptr %2, align 8
  br label %534

161:                                              ; preds = %153
  %162 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 75
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, %1
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 9
  %167 = load i32, ptr %166, align 4
  %168 = zext i32 %167 to i64
  store i64 %168, ptr %2, align 8
  br label %534

169:                                              ; preds = %161
  %170 = getelementptr i8, ptr %0, i32 560
  %171 = load ptr, ptr %170, align 8
  %172 = icmp eq ptr %171, %1
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 13
  %175 = load i32, ptr %174, align 4
  %176 = zext i32 %175 to i64
  store i64 %176, ptr %2, align 8
  br label %534

177:                                              ; preds = %169
  %178 = getelementptr i8, ptr %0, i32 552
  %179 = load ptr, ptr %178, align 8
  %180 = icmp eq ptr %179, %1
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 11
  %183 = load i32, ptr %182, align 4
  %184 = zext i32 %183 to i64
  store i64 %184, ptr %2, align 8
  br label %534

185:                                              ; preds = %177
  %186 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 88
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, %1
  br i1 %188, label %189, label %198

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 18
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %195, label %193

193:                                              ; preds = %189
  %194 = load i32, ptr %191, align 4
  br label %195

195:                                              ; preds = %193, %189
  %196 = phi i32 [ %194, %193 ], [ 0, %189 ]
  %197 = zext i32 %196 to i64
  store i64 %197, ptr %2, align 8
  br label %534

198:                                              ; preds = %185
  %199 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 89
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, %1
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 12
  %204 = load i32, ptr %203, align 4
  %205 = zext i32 %204 to i64
  store i64 %205, ptr %2, align 8
  br label %534

206:                                              ; preds = %198
  %207 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 90
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, %1
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 10
  %212 = load i32, ptr %211, align 4
  %213 = zext i32 %212 to i64
  store i64 %213, ptr %2, align 8
  br label %534

214:                                              ; preds = %206
  %215 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 85
  %216 = load ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, %1
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  store i64 0, ptr %2, align 8
  br label %534

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 87
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, %1
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  store i64 0, ptr %2, align 8
  br label %534

224:                                              ; preds = %219
  %225 = getelementptr i8, ptr %0, i32 568
  %226 = load ptr, ptr %225, align 8
  %227 = icmp eq ptr %226, %1
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 15
  %230 = load i8, ptr %229, align 4
  %231 = zext i8 %230 to i64
  store i64 %231, ptr %2, align 8
  br label %534

232:                                              ; preds = %224
  %233 = getelementptr i8, ptr %0, i32 588
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, %1
  br i1 %235, label %236, label %240

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 17
  %238 = load i32, ptr %237, align 4
  %239 = zext i32 %238 to i64
  store i64 %239, ptr %2, align 8
  br label %534

240:                                              ; preds = %232
  %241 = getelementptr i8, ptr %0, i32 248
  %242 = load ptr, ptr %241, align 8
  %243 = getelementptr inbounds %struct.drm_connector_funcs, ptr %242, i32 0, i32 12
  %244 = load ptr, ptr %243, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %534, label %246

246:                                              ; preds = %240
  %247 = tail call i32 %244(ptr noundef %9, ptr noundef %15, ptr noundef %1, ptr noundef %2) #10
  br label %534

248:                                              ; preds = %3
  %249 = getelementptr i8, ptr %0, i32 -52
  %250 = getelementptr i8, ptr %0, i32 -32
  %251 = tail call zeroext i1 @mutex_is_locked(ptr noundef %250) #10
  br i1 %251, label %253, label %252, !prof !13

252:                                              ; preds = %248
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 911, i32 noundef 9, ptr noundef null) #10
  br label %253

253:                                              ; preds = %252, %248
  %254 = getelementptr i8, ptr %0, i32 592
  %255 = load ptr, ptr %254, align 4
  %256 = load ptr, ptr %249, align 8
  %257 = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 30, i32 54
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, %1
  br i1 %259, label %260, label %271

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct.drm_crtc_state, ptr %255, i32 0, i32 2
  %262 = load i8, ptr %261, align 1, !range !16
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.drm_crtc_state, ptr %255, i32 0, i32 16
  %266 = load i8, ptr %265, align 2, !range !16
  %267 = icmp ne i8 %266, 0
  br label %268

268:                                              ; preds = %264, %260
  %269 = phi i1 [ true, %260 ], [ %267, %264 ]
  %270 = zext i1 %269 to i64
  store i64 %270, ptr %2, align 8
  br label %534

271:                                              ; preds = %253
  %272 = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 30, i32 55
  %273 = load ptr, ptr %272, align 4
  %274 = icmp eq ptr %273, %1
  br i1 %274, label %275, label %284

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.drm_crtc_state, ptr %255, i32 0, i32 9
  %277 = load ptr, ptr %276, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %281, label %279

279:                                              ; preds = %275
  %280 = load i32, ptr %277, align 4
  br label %281

281:                                              ; preds = %279, %275
  %282 = phi i32 [ %280, %279 ], [ 0, %275 ]
  %283 = zext i32 %282 to i64
  store i64 %283, ptr %2, align 8
  br label %534

284:                                              ; preds = %271
  %285 = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 30, i32 56
  %286 = load ptr, ptr %285, align 4
  %287 = icmp eq ptr %286, %1
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.drm_crtc_state, ptr %255, i32 0, i32 15
  %290 = load i8, ptr %289, align 1, !range !16
  %291 = zext i8 %290 to i64
  store i64 %291, ptr %2, align 8
  br label %534

292:                                              ; preds = %284
  %293 = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 30, i32 76
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, %1
  br i1 %295, label %296, label %305

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.drm_crtc_state, ptr %255, i32 0, i32 10
  %298 = load ptr, ptr %297, align 4
  %299 = icmp eq ptr %298, null
  br i1 %299, label %302, label %300

300:                                              ; preds = %296
  %301 = load i32, ptr %298, align 4
  br label %302

302:                                              ; preds = %300, %296
  %303 = phi i32 [ %301, %300 ], [ 0, %296 ]
  %304 = zext i32 %303 to i64
  store i64 %304, ptr %2, align 8
  br label %534

305:                                              ; preds = %292
  %306 = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 30, i32 78
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, %1
  br i1 %308, label %309, label %318

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.drm_crtc_state, ptr %255, i32 0, i32 11
  %311 = load ptr, ptr %310, align 4
  %312 = icmp eq ptr %311, null
  br i1 %312, label %315, label %313

313:                                              ; preds = %309
  %314 = load i32, ptr %311, align 4
  br label %315

315:                                              ; preds = %313, %309
  %316 = phi i32 [ %314, %313 ], [ 0, %309 ]
  %317 = zext i32 %316 to i64
  store i64 %317, ptr %2, align 8
  br label %534

318:                                              ; preds = %305
  %319 = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 30, i32 79
  %320 = load ptr, ptr %319, align 4
  %321 = icmp eq ptr %320, %1
  br i1 %321, label %322, label %331

322:                                              ; preds = %318
  %323 = getelementptr inbounds %struct.drm_crtc_state, ptr %255, i32 0, i32 12
  %324 = load ptr, ptr %323, align 4
  %325 = icmp eq ptr %324, null
  br i1 %325, label %328, label %326

326:                                              ; preds = %322
  %327 = load i32, ptr %324, align 4
  br label %328

328:                                              ; preds = %326, %322
  %329 = phi i32 [ %327, %326 ], [ 0, %322 ]
  %330 = zext i32 %329 to i64
  store i64 %330, ptr %2, align 8
  br label %534

331:                                              ; preds = %318
  %332 = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 30, i32 51
  %333 = load ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, %1
  br i1 %334, label %335, label %336

335:                                              ; preds = %331
  store i64 0, ptr %2, align 8
  br label %534

336:                                              ; preds = %331
  %337 = getelementptr i8, ptr %0, i32 588
  %338 = load ptr, ptr %337, align 8
  %339 = icmp eq ptr %338, %1
  br i1 %339, label %340, label %344

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.drm_crtc_state, ptr %255, i32 0, i32 17
  %342 = load i32, ptr %341, align 4
  %343 = zext i32 %342 to i64
  store i64 %343, ptr %2, align 8
  br label %534

344:                                              ; preds = %336
  %345 = getelementptr i8, ptr %0, i32 276
  %346 = load ptr, ptr %345, align 8
  %347 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %346, i32 0, i32 13
  %348 = load ptr, ptr %347, align 4
  %349 = icmp eq ptr %348, null
  br i1 %349, label %534, label %350

350:                                              ; preds = %344
  %351 = tail call i32 %348(ptr noundef %249, ptr noundef %255, ptr noundef %1, ptr noundef %2) #10
  br label %534

352:                                              ; preds = %3
  %353 = getelementptr i8, ptr %0, i32 -48
  %354 = getelementptr i8, ptr %0, i32 -32
  %355 = tail call zeroext i1 @mutex_is_locked(ptr noundef %354) #10
  br i1 %355, label %357, label %356, !prof !13

356:                                              ; preds = %352
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 919, i32 noundef 9, ptr noundef null) #10
  br label %357

357:                                              ; preds = %356, %352
  %358 = getelementptr i8, ptr %0, i32 372
  %359 = load ptr, ptr %358, align 4
  %360 = load ptr, ptr %353, align 8
  %361 = getelementptr inbounds %struct.drm_device, ptr %360, i32 0, i32 30, i32 49
  %362 = load ptr, ptr %361, align 4
  %363 = icmp eq ptr %362, %1
  br i1 %363, label %364, label %374

364:                                              ; preds = %357
  %365 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 2
  %366 = load ptr, ptr %365, align 4
  %367 = icmp eq ptr %366, null
  br i1 %367, label %371, label %368

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.drm_framebuffer, ptr %366, i32 0, i32 2
  %370 = load i32, ptr %369, align 4
  br label %371

371:                                              ; preds = %368, %364
  %372 = phi i32 [ %370, %368 ], [ 0, %364 ]
  %373 = zext i32 %372 to i64
  store i64 %373, ptr %2, align 8
  br label %534

374:                                              ; preds = %357
  %375 = getelementptr inbounds %struct.drm_device, ptr %360, i32 0, i32 30, i32 50
  %376 = load ptr, ptr %375, align 4
  %377 = icmp eq ptr %376, %1
  br i1 %377, label %378, label %379

378:                                              ; preds = %374
  store i64 -1, ptr %2, align 8
  br label %534

379:                                              ; preds = %374
  %380 = getelementptr inbounds %struct.drm_device, ptr %360, i32 0, i32 30, i32 52
  %381 = load ptr, ptr %380, align 4
  %382 = icmp eq ptr %381, %1
  br i1 %382, label %383, label %393

383:                                              ; preds = %379
  %384 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 1
  %385 = load ptr, ptr %384, align 4
  %386 = icmp eq ptr %385, null
  br i1 %386, label %390, label %387

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.drm_crtc, ptr %385, i32 0, i32 5
  %389 = load i32, ptr %388, align 4
  br label %390

390:                                              ; preds = %387, %383
  %391 = phi i32 [ %389, %387 ], [ 0, %383 ]
  %392 = zext i32 %391 to i64
  store i64 %392, ptr %2, align 8
  br label %534

393:                                              ; preds = %379
  %394 = getelementptr inbounds %struct.drm_device, ptr %360, i32 0, i32 30, i32 45
  %395 = load ptr, ptr %394, align 4
  %396 = icmp eq ptr %395, %1
  br i1 %396, label %397, label %401

397:                                              ; preds = %393
  %398 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 4
  %399 = load i32, ptr %398, align 4
  %400 = sext i32 %399 to i64
  store i64 %400, ptr %2, align 8
  br label %534

401:                                              ; preds = %393
  %402 = getelementptr inbounds %struct.drm_device, ptr %360, i32 0, i32 30, i32 46
  %403 = load ptr, ptr %402, align 4
  %404 = icmp eq ptr %403, %1
  br i1 %404, label %405, label %409

405:                                              ; preds = %401
  %406 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 5
  %407 = load i32, ptr %406, align 4
  %408 = sext i32 %407 to i64
  store i64 %408, ptr %2, align 8
  br label %534

409:                                              ; preds = %401
  %410 = getelementptr inbounds %struct.drm_device, ptr %360, i32 0, i32 30, i32 47
  %411 = load ptr, ptr %410, align 4
  %412 = icmp eq ptr %411, %1
  br i1 %412, label %413, label %417

413:                                              ; preds = %409
  %414 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 6
  %415 = load i32, ptr %414, align 4
  %416 = zext i32 %415 to i64
  store i64 %416, ptr %2, align 8
  br label %534

417:                                              ; preds = %409
  %418 = getelementptr inbounds %struct.drm_device, ptr %360, i32 0, i32 30, i32 48
  %419 = load ptr, ptr %418, align 4
  %420 = icmp eq ptr %419, %1
  br i1 %420, label %421, label %425

421:                                              ; preds = %417
  %422 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 7
  %423 = load i32, ptr %422, align 4
  %424 = zext i32 %423 to i64
  store i64 %424, ptr %2, align 8
  br label %534

425:                                              ; preds = %417
  %426 = getelementptr inbounds %struct.drm_device, ptr %360, i32 0, i32 30, i32 41
  %427 = load ptr, ptr %426, align 4
  %428 = icmp eq ptr %427, %1
  br i1 %428, label %429, label %433

429:                                              ; preds = %425
  %430 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 8
  %431 = load i32, ptr %430, align 4
  %432 = zext i32 %431 to i64
  store i64 %432, ptr %2, align 8
  br label %534

433:                                              ; preds = %425
  %434 = getelementptr inbounds %struct.drm_device, ptr %360, i32 0, i32 30, i32 42
  %435 = load ptr, ptr %434, align 4
  %436 = icmp eq ptr %435, %1
  br i1 %436, label %437, label %441

437:                                              ; preds = %433
  %438 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 9
  %439 = load i32, ptr %438, align 4
  %440 = zext i32 %439 to i64
  store i64 %440, ptr %2, align 8
  br label %534

441:                                              ; preds = %433
  %442 = getelementptr inbounds %struct.drm_device, ptr %360, i32 0, i32 30, i32 43
  %443 = load ptr, ptr %442, align 4
  %444 = icmp eq ptr %443, %1
  br i1 %444, label %445, label %449

445:                                              ; preds = %441
  %446 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 11
  %447 = load i32, ptr %446, align 4
  %448 = zext i32 %447 to i64
  store i64 %448, ptr %2, align 8
  br label %534

449:                                              ; preds = %441
  %450 = getelementptr inbounds %struct.drm_device, ptr %360, i32 0, i32 30, i32 44
  %451 = load ptr, ptr %450, align 4
  %452 = icmp eq ptr %451, %1
  br i1 %452, label %453, label %457

453:                                              ; preds = %449
  %454 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 10
  %455 = load i32, ptr %454, align 4
  %456 = zext i32 %455 to i64
  store i64 %456, ptr %2, align 8
  br label %534

457:                                              ; preds = %449
  %458 = getelementptr i8, ptr %0, i32 376
  %459 = load ptr, ptr %458, align 8
  %460 = icmp eq ptr %459, %1
  br i1 %460, label %461, label %465

461:                                              ; preds = %457
  %462 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 12
  %463 = load i16, ptr %462, align 4
  %464 = zext i16 %463 to i64
  store i64 %464, ptr %2, align 8
  br label %534

465:                                              ; preds = %457
  %466 = getelementptr i8, ptr %0, i32 388
  %467 = load ptr, ptr %466, align 4
  %468 = icmp eq ptr %467, %1
  br i1 %468, label %469, label %473

469:                                              ; preds = %465
  %470 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 13
  %471 = load i16, ptr %470, align 2
  %472 = zext i16 %471 to i64
  store i64 %472, ptr %2, align 8
  br label %534

473:                                              ; preds = %465
  %474 = getelementptr i8, ptr %0, i32 384
  %475 = load ptr, ptr %474, align 8
  %476 = icmp eq ptr %475, %1
  br i1 %476, label %477, label %481

477:                                              ; preds = %473
  %478 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 14
  %479 = load i32, ptr %478, align 4
  %480 = zext i32 %479 to i64
  store i64 %480, ptr %2, align 8
  br label %534

481:                                              ; preds = %473
  %482 = getelementptr i8, ptr %0, i32 380
  %483 = load ptr, ptr %482, align 4
  %484 = icmp eq ptr %483, %1
  br i1 %484, label %485, label %489

485:                                              ; preds = %481
  %486 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 15
  %487 = load i32, ptr %486, align 4
  %488 = zext i32 %487 to i64
  store i64 %488, ptr %2, align 8
  br label %534

489:                                              ; preds = %481
  %490 = getelementptr i8, ptr %0, i32 392
  %491 = load ptr, ptr %490, align 8
  %492 = icmp eq ptr %491, %1
  br i1 %492, label %493, label %497

493:                                              ; preds = %489
  %494 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 17
  %495 = load i32, ptr %494, align 4
  %496 = zext i32 %495 to i64
  store i64 %496, ptr %2, align 8
  br label %534

497:                                              ; preds = %489
  %498 = getelementptr i8, ptr %0, i32 396
  %499 = load ptr, ptr %498, align 4
  %500 = icmp eq ptr %499, %1
  br i1 %500, label %501, label %505

501:                                              ; preds = %497
  %502 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 18
  %503 = load i32, ptr %502, align 4
  %504 = zext i32 %503 to i64
  store i64 %504, ptr %2, align 8
  br label %534

505:                                              ; preds = %497
  %506 = getelementptr inbounds %struct.drm_device, ptr %360, i32 0, i32 30, i32 53
  %507 = load ptr, ptr %506, align 4
  %508 = icmp eq ptr %507, %1
  br i1 %508, label %509, label %518

509:                                              ; preds = %505
  %510 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 19
  %511 = load ptr, ptr %510, align 4
  %512 = icmp eq ptr %511, null
  br i1 %512, label %515, label %513

513:                                              ; preds = %509
  %514 = load i32, ptr %511, align 4
  br label %515

515:                                              ; preds = %513, %509
  %516 = phi i32 [ %514, %513 ], [ 0, %509 ]
  %517 = zext i32 %516 to i64
  store i64 %517, ptr %2, align 8
  br label %534

518:                                              ; preds = %505
  %519 = getelementptr i8, ptr %0, i32 400
  %520 = load ptr, ptr %519, align 8
  %521 = icmp eq ptr %520, %1
  br i1 %521, label %522, label %526

522:                                              ; preds = %518
  %523 = getelementptr inbounds %struct.drm_plane_state, ptr %359, i32 0, i32 23
  %524 = load i32, ptr %523, align 4
  %525 = zext i32 %524 to i64
  store i64 %525, ptr %2, align 8
  br label %534

526:                                              ; preds = %518
  %527 = getelementptr i8, ptr %0, i32 56
  %528 = load ptr, ptr %527, align 8
  %529 = getelementptr inbounds %struct.drm_plane_funcs, ptr %528, i32 0, i32 8
  %530 = load ptr, ptr %529, align 4
  %531 = icmp eq ptr %530, null
  br i1 %531, label %534, label %532

532:                                              ; preds = %526
  %533 = tail call i32 %530(ptr noundef %353, ptr noundef %359, ptr noundef %1, ptr noundef %2) #10
  br label %534

534:                                              ; preds = %532, %526, %522, %515, %501, %493, %485, %477, %469, %461, %453, %445, %437, %429, %421, %413, %405, %397, %390, %378, %371, %350, %344, %340, %335, %328, %315, %302, %288, %281, %268, %246, %240, %236, %228, %223, %218, %210, %202, %195, %181, %173, %165, %157, %149, %141, %133, %125, %117, %109, %101, %93, %85, %77, %69, %61, %53, %45, %44, %27, %3
  %535 = phi i32 [ -22, %3 ], [ %247, %246 ], [ -22, %240 ], [ 0, %45 ], [ 0, %44 ], [ 0, %61 ], [ 0, %77 ], [ 0, %93 ], [ 0, %109 ], [ 0, %125 ], [ 0, %141 ], [ 0, %157 ], [ 0, %173 ], [ 0, %195 ], [ 0, %210 ], [ 0, %223 ], [ 0, %236 ], [ 0, %228 ], [ 0, %218 ], [ 0, %202 ], [ 0, %181 ], [ 0, %165 ], [ 0, %149 ], [ 0, %133 ], [ 0, %117 ], [ 0, %101 ], [ 0, %85 ], [ 0, %69 ], [ 0, %53 ], [ 0, %27 ], [ %351, %350 ], [ -22, %344 ], [ 0, %281 ], [ 0, %302 ], [ 0, %328 ], [ 0, %340 ], [ 0, %335 ], [ 0, %315 ], [ 0, %288 ], [ 0, %268 ], [ %533, %532 ], [ -22, %526 ], [ 0, %378 ], [ 0, %397 ], [ 0, %413 ], [ 0, %429 ], [ 0, %445 ], [ 0, %461 ], [ 0, %477 ], [ 0, %493 ], [ 0, %515 ], [ 0, %522 ], [ 0, %501 ], [ 0, %485 ], [ 0, %469 ], [ 0, %453 ], [ 0, %437 ], [ 0, %421 ], [ 0, %405 ], [ 0, %390 ], [ 0, %371 ]
  ret i32 %535
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_atomic_connector_commit_dpms(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 34
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 1
  %9 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @drm_modeset_lock(ptr noundef %8, ptr noundef %10) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  %15 = select i1 %14, i32 0, i32 3
  store i32 %15, ptr %4, align 8
  %16 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 52
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.drm_connector_state, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %66, label %21

21:                                               ; preds = %13
  %22 = tail call i32 @drm_atomic_add_affected_connectors(ptr noundef %0, ptr noundef nonnull %19) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %21
  %25 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %0, ptr noundef nonnull %19) #10
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  br label %36

34:                                               ; preds = %24
  %35 = ptrtoint ptr %25 to i32
  br label %61

36:                                               ; preds = %52, %31
  %37 = phi i1 [ true, %31 ], [ %54, %52 ]
  %38 = phi i32 [ 0, %31 ], [ %53, %52 ]
  %39 = getelementptr %struct.__drm_connnectors_state, ptr %33, i32 %38
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = getelementptr %struct.__drm_connnectors_state, ptr %33, i32 %38, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.drm_connector_state, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %19
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.drm_connector, ptr %40, i32 0, i32 34
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48, %42, %36
  %53 = add nuw nsw i32 %38, 1
  %54 = icmp slt i32 %53, %29
  %55 = icmp eq i32 %53, %29
  br i1 %55, label %56, label %36

56:                                               ; preds = %52, %48, %27
  %57 = phi i1 [ false, %27 ], [ %37, %48 ], [ %54, %52 ]
  %58 = getelementptr inbounds %struct.drm_crtc_state, ptr %25, i32 0, i32 2
  %59 = zext i1 %57 to i8
  store i8 %59, ptr %58, align 1
  %60 = tail call i32 @drm_atomic_commit(ptr noundef %0) #10
  br label %61

61:                                               ; preds = %56, %34
  %62 = phi i32 [ %35, %34 ], [ %60, %56 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61, %21
  %65 = phi i32 [ %62, %61 ], [ %22, %21 ]
  store i32 %5, ptr %4, align 8
  br label %66

66:                                               ; preds = %64, %61, %13, %3
  %67 = phi i32 [ %11, %3 ], [ %65, %64 ], [ 0, %61 ], [ 0, %13 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_connectors(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_atomic_set_property(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store ptr null, ptr %8, align 4, !annotation !8
  %9 = call zeroext i1 @drm_property_change_valid_get(ptr noundef %3, i64 noundef %4, ptr noundef nonnull %8) #10
  br i1 %9, label %10, label %620

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.drm_mode_object, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %617 [
    i32 -1061109568, label %13
    i32 -858993460, label %249
    i32 -286331154, label %421
  ]

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %2, i32 -32
  %15 = call ptr @drm_atomic_get_connector_state(ptr noundef %0, ptr noundef %14) #10
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = ptrtoint ptr %15 to i32
  br label %617

19:                                               ; preds = %13
  %20 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  %21 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 52
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %3
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = trunc i64 %4 to i32
  %26 = call ptr @drm_mode_object_find(ptr noundef %20, ptr noundef %1, i32 noundef %25, i32 noundef -858993460) #10
  %27 = icmp eq ptr %26, null
  %28 = getelementptr i8, ptr %26, i32 -52
  %29 = select i1 %27, ptr null, ptr %28
  %30 = icmp eq i64 %4, 0
  %31 = icmp ne ptr %29, null
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %33, label %247

33:                                               ; preds = %24
  %34 = call i32 @drm_atomic_set_crtc_for_connector(ptr noundef %15, ptr noundef %29) #10
  br label %247

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 36
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %247, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 61
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %3
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = trunc i64 %4 to i32
  %45 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6
  store i32 %44, ptr %45, align 4
  br label %247

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 63
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %3
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = trunc i64 %4 to i32
  %52 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 1, i32 1
  store i32 %51, ptr %52, align 4
  br label %247

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 64
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %3
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = trunc i64 %4 to i32
  %59 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 1, i32 2
  store i32 %58, ptr %59, align 4
  br label %247

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 65
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %3
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = trunc i64 %4 to i32
  %66 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 1, i32 3
  store i32 %65, ptr %66, align 4
  br label %247

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 66
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %3
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = trunc i64 %4 to i32
  %73 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 1
  store i32 %72, ptr %73, align 4
  br label %247

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 62
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %3
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = trunc i64 %4 to i32
  %80 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 2
  store i32 %79, ptr %80, align 4
  br label %247

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 67
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %3
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = trunc i64 %4 to i32
  %87 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 3
  store i32 %86, ptr %87, align 4
  br label %247

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 68
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %3
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = trunc i64 %4 to i32
  %94 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 4
  store i32 %93, ptr %94, align 4
  br label %247

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 69
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, %3
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = trunc i64 %4 to i32
  %101 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 5
  store i32 %100, ptr %101, align 4
  br label %247

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 70
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %3
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = trunc i64 %4 to i32
  %108 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 6
  store i32 %107, ptr %108, align 4
  br label %247

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 71
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, %3
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = trunc i64 %4 to i32
  %115 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 7
  store i32 %114, ptr %115, align 4
  br label %247

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 72
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, %3
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = trunc i64 %4 to i32
  %122 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 6, i32 8
  store i32 %121, ptr %122, align 4
  br label %247

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 39
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, %3
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %247, label %131

131:                                              ; preds = %127
  %132 = trunc i64 %4 to i32
  store i32 %132, ptr %128, align 4
  br label %247

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 88
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, %3
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 18
  %139 = call fastcc i32 @drm_atomic_replace_property_blob_from_id(ptr noundef %20, ptr noundef %138, i64 noundef %4, i32 noundef 32, i32 noundef -1, ptr noundef nonnull %7) #10
  br label %247

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 74
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, %3
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = trunc i64 %4 to i32
  %146 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 8
  store i32 %145, ptr %146, align 4
  br label %247

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 75
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, %3
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = trunc i64 %4 to i32
  %153 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 9
  store i32 %152, ptr %153, align 4
  br label %247

154:                                              ; preds = %147
  %155 = getelementptr i8, ptr %2, i32 552
  %156 = load ptr, ptr %155, align 8
  %157 = icmp eq ptr %156, %3
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = trunc i64 %4 to i32
  %160 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 11
  store i32 %159, ptr %160, align 4
  br label %247

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 89
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, %3
  br i1 %164, label %165, label %177

165:                                              ; preds = %161
  %166 = icmp eq i64 %4, 2
  br i1 %166, label %167, label %174

167:                                              ; preds = %165
  %168 = icmp eq ptr %20, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 2
  %171 = load ptr, ptr %170, align 4
  br label %172

172:                                              ; preds = %169, %167
  %173 = phi ptr [ %171, %169 ], [ null, %167 ]
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %173, i32 noundef 4, ptr noundef nonnull @.str.16) #10
  br label %247

174:                                              ; preds = %165
  %175 = trunc i64 %4 to i32
  %176 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 12
  store i32 %175, ptr %176, align 4
  br label %247

177:                                              ; preds = %161
  %178 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 90
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, %3
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = trunc i64 %4 to i32
  %183 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 10
  store i32 %182, ptr %183, align 4
  br label %247

184:                                              ; preds = %177
  %185 = getelementptr i8, ptr %2, i32 560
  %186 = load ptr, ptr %185, align 8
  %187 = icmp eq ptr %186, %3
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = trunc i64 %4 to i32
  %190 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 13
  store i32 %189, ptr %190, align 4
  br label %247

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 85
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, %3
  br i1 %194, label %195, label %202

195:                                              ; preds = %191
  %196 = trunc i64 %4 to i32
  %197 = call ptr @drm_framebuffer_lookup(ptr noundef %20, ptr noundef %1, i32 noundef %196) #10
  %198 = call fastcc i32 @drm_atomic_set_writeback_fb_for_connector(ptr noundef %15, ptr noundef %197) #10
  %199 = icmp eq ptr %197, null
  br i1 %199, label %247, label %200

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.drm_framebuffer, ptr %197, i32 0, i32 2
  call void @drm_mode_object_put(ptr noundef %201) #10
  br label %247

202:                                              ; preds = %191
  %203 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 87
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, %3
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = trunc i64 %4 to i32
  %208 = inttoptr i32 %207 to ptr
  %209 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 4
  %210 = load ptr, ptr %209, align 4
  %211 = call fastcc i32 @set_out_fence_for_connector(ptr noundef %210, ptr noundef %14, ptr noundef %208) #10
  br label %247

212:                                              ; preds = %202
  %213 = getelementptr i8, ptr %2, i32 568
  %214 = load ptr, ptr %213, align 8
  %215 = icmp eq ptr %214, %3
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = trunc i64 %4 to i8
  %218 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 15
  store i8 %217, ptr %218, align 4
  br label %247

219:                                              ; preds = %212
  %220 = getelementptr i8, ptr %2, i32 588
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, %3
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = trunc i64 %4 to i32
  %225 = getelementptr inbounds %struct.drm_connector_state, ptr %15, i32 0, i32 17
  store i32 %224, ptr %225, align 4
  br label %247

226:                                              ; preds = %219
  %227 = getelementptr i8, ptr %2, i32 248
  %228 = load ptr, ptr %227, align 8
  %229 = getelementptr inbounds %struct.drm_connector_funcs, ptr %228, i32 0, i32 11
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %234, label %232

232:                                              ; preds = %226
  %233 = call i32 %230(ptr noundef %14, ptr noundef %15, ptr noundef %3, i64 noundef %4) #10
  br label %247

234:                                              ; preds = %226
  %235 = icmp eq ptr %20, null
  br i1 %235, label %239, label %236

236:                                              ; preds = %234
  %237 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 2
  %238 = load ptr, ptr %237, align 4
  br label %239

239:                                              ; preds = %236, %234
  %240 = phi ptr [ %238, %236 ], [ null, %234 ]
  %241 = load i32, ptr %2, align 8
  %242 = getelementptr i8, ptr %2, i32 20
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.drm_property, ptr %3, i32 0, i32 1
  %245 = load i32, ptr %244, align 4
  %246 = getelementptr inbounds %struct.drm_property, ptr %3, i32 0, i32 3
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %240, i32 noundef 16, ptr noundef nonnull @.str.17, i32 noundef %241, ptr noundef %243, i32 noundef %245, ptr noundef %246) #10
  br label %247

247:                                              ; preds = %239, %232, %223, %216, %206, %200, %195, %188, %181, %174, %172, %158, %151, %144, %137, %131, %127, %120, %113, %106, %99, %92, %85, %78, %71, %64, %57, %50, %43, %35, %33, %24
  %248 = phi i32 [ %139, %137 ], [ -22, %172 ], [ %211, %206 ], [ %233, %232 ], [ -22, %239 ], [ %34, %33 ], [ -13, %24 ], [ -22, %35 ], [ %198, %200 ], [ %198, %195 ], [ 0, %50 ], [ 0, %64 ], [ 0, %78 ], [ 0, %92 ], [ 0, %106 ], [ 0, %120 ], [ 0, %151 ], [ 0, %174 ], [ 0, %188 ], [ 0, %223 ], [ 0, %216 ], [ 0, %181 ], [ 0, %158 ], [ 0, %144 ], [ 0, %127 ], [ 0, %131 ], [ 0, %113 ], [ 0, %99 ], [ 0, %85 ], [ 0, %71 ], [ 0, %57 ], [ 0, %43 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  br label %617

249:                                              ; preds = %10
  %250 = getelementptr i8, ptr %2, i32 -52
  %251 = call ptr @drm_atomic_get_crtc_state(ptr noundef %0, ptr noundef %250) #10
  %252 = icmp ugt ptr %251, inttoptr (i32 -4096 to ptr)
  br i1 %252, label %253, label %255

253:                                              ; preds = %249
  %254 = ptrtoint ptr %251 to i32
  br label %617

255:                                              ; preds = %249
  %256 = load ptr, ptr %250, align 8
  %257 = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 30, i32 54
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, %3
  br i1 %259, label %260, label %264

260:                                              ; preds = %255
  %261 = icmp ne i64 %4, 0
  %262 = getelementptr inbounds %struct.drm_crtc_state, ptr %251, i32 0, i32 2
  %263 = zext i1 %261 to i8
  store i8 %263, ptr %262, align 1
  br label %617

264:                                              ; preds = %255
  %265 = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 30, i32 55
  %266 = load ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, %3
  br i1 %267, label %268, label %272

268:                                              ; preds = %264
  %269 = trunc i64 %4 to i32
  %270 = call ptr @drm_property_lookup_blob(ptr noundef %256, i32 noundef %269) #10
  %271 = call i32 @drm_atomic_set_mode_prop_for_crtc(ptr noundef %251, ptr noundef %270) #10
  call void @drm_property_blob_put(ptr noundef %270) #10
  br label %617

272:                                              ; preds = %264
  %273 = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 30, i32 56
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, %3
  br i1 %275, label %276, label %280

276:                                              ; preds = %272
  %277 = icmp ne i64 %4, 0
  %278 = getelementptr inbounds %struct.drm_crtc_state, ptr %251, i32 0, i32 15
  %279 = zext i1 %277 to i8
  store i8 %279, ptr %278, align 1
  br label %617

280:                                              ; preds = %272
  %281 = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 30, i32 76
  %282 = load ptr, ptr %281, align 4
  %283 = icmp eq ptr %282, %3
  br i1 %283, label %284, label %310

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.drm_crtc_state, ptr %251, i32 0, i32 10
  %286 = icmp eq i64 %4, 0
  br i1 %286, label %297, label %287

287:                                              ; preds = %284
  %288 = trunc i64 %4 to i32
  %289 = call ptr @drm_property_lookup_blob(ptr noundef %256, i32 noundef %288) #10
  %290 = icmp eq ptr %289, null
  br i1 %290, label %301, label %291

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.drm_property_blob, ptr %289, i32 0, i32 4
  %293 = load i32, ptr %292, align 4
  %294 = and i32 %293, 7
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %297, label %296

296:                                              ; preds = %291
  call void @drm_property_blob_put(ptr noundef nonnull %289) #10
  br label %301

297:                                              ; preds = %291, %284
  %298 = phi ptr [ %289, %291 ], [ null, %284 ]
  %299 = call zeroext i1 @drm_property_replace_blob(ptr noundef %285, ptr noundef %298) #10
  call void @drm_property_blob_put(ptr noundef %298) #10
  %300 = select i1 %299, i8 32, i8 0
  br label %301

301:                                              ; preds = %297, %296, %287
  %302 = phi i8 [ %300, %297 ], [ 0, %287 ], [ 0, %296 ]
  %303 = phi i32 [ 0, %297 ], [ -22, %287 ], [ -22, %296 ]
  %304 = getelementptr inbounds %struct.drm_crtc_state, ptr %251, i32 0, i32 3
  %305 = load i8, ptr %304, align 2
  %306 = and i8 %305, 32
  %307 = or i8 %306, %302
  %308 = and i8 %305, -33
  %309 = or i8 %307, %308
  store i8 %309, ptr %304, align 2
  br label %617

310:                                              ; preds = %280
  %311 = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 30, i32 78
  %312 = load ptr, ptr %311, align 4
  %313 = icmp eq ptr %312, %3
  br i1 %313, label %314, label %339

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.drm_crtc_state, ptr %251, i32 0, i32 11
  %316 = icmp eq i64 %4, 0
  br i1 %316, label %326, label %317

317:                                              ; preds = %314
  %318 = trunc i64 %4 to i32
  %319 = call ptr @drm_property_lookup_blob(ptr noundef %256, i32 noundef %318) #10
  %320 = icmp eq ptr %319, null
  br i1 %320, label %330, label %321

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.drm_property_blob, ptr %319, i32 0, i32 4
  %323 = load i32, ptr %322, align 4
  %324 = icmp eq i32 %323, 72
  br i1 %324, label %326, label %325

325:                                              ; preds = %321
  call void @drm_property_blob_put(ptr noundef nonnull %319) #10
  br label %330

326:                                              ; preds = %321, %314
  %327 = phi ptr [ null, %314 ], [ %319, %321 ]
  %328 = call zeroext i1 @drm_property_replace_blob(ptr noundef %315, ptr noundef %327) #10
  call void @drm_property_blob_put(ptr noundef %327) #10
  %329 = select i1 %328, i8 32, i8 0
  br label %330

330:                                              ; preds = %326, %325, %317
  %331 = phi i8 [ %329, %326 ], [ 0, %317 ], [ 0, %325 ]
  %332 = phi i32 [ 0, %326 ], [ -22, %317 ], [ -22, %325 ]
  %333 = getelementptr inbounds %struct.drm_crtc_state, ptr %251, i32 0, i32 3
  %334 = load i8, ptr %333, align 2
  %335 = and i8 %334, 32
  %336 = or i8 %335, %331
  %337 = and i8 %334, -33
  %338 = or i8 %336, %337
  store i8 %338, ptr %333, align 2
  br label %617

339:                                              ; preds = %310
  %340 = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 30, i32 79
  %341 = load ptr, ptr %340, align 4
  %342 = icmp eq ptr %341, %3
  br i1 %342, label %343, label %369

343:                                              ; preds = %339
  %344 = getelementptr inbounds %struct.drm_crtc_state, ptr %251, i32 0, i32 12
  %345 = icmp eq i64 %4, 0
  br i1 %345, label %356, label %346

346:                                              ; preds = %343
  %347 = trunc i64 %4 to i32
  %348 = call ptr @drm_property_lookup_blob(ptr noundef %256, i32 noundef %347) #10
  %349 = icmp eq ptr %348, null
  br i1 %349, label %360, label %350

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.drm_property_blob, ptr %348, i32 0, i32 4
  %352 = load i32, ptr %351, align 4
  %353 = and i32 %352, 7
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %356, label %355

355:                                              ; preds = %350
  call void @drm_property_blob_put(ptr noundef nonnull %348) #10
  br label %360

356:                                              ; preds = %350, %343
  %357 = phi ptr [ %348, %350 ], [ null, %343 ]
  %358 = call zeroext i1 @drm_property_replace_blob(ptr noundef %344, ptr noundef %357) #10
  call void @drm_property_blob_put(ptr noundef %357) #10
  %359 = select i1 %358, i8 32, i8 0
  br label %360

360:                                              ; preds = %356, %355, %346
  %361 = phi i8 [ %359, %356 ], [ 0, %346 ], [ 0, %355 ]
  %362 = phi i32 [ 0, %356 ], [ -22, %346 ], [ -22, %355 ]
  %363 = getelementptr inbounds %struct.drm_crtc_state, ptr %251, i32 0, i32 3
  %364 = load i8, ptr %363, align 2
  %365 = and i8 %364, 32
  %366 = or i8 %365, %361
  %367 = and i8 %364, -33
  %368 = or i8 %366, %367
  store i8 %368, ptr %363, align 2
  br label %617

369:                                              ; preds = %339
  %370 = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 30, i32 51
  %371 = load ptr, ptr %370, align 4
  %372 = icmp eq ptr %371, %3
  br i1 %372, label %373, label %393

373:                                              ; preds = %369
  %374 = trunc i64 %4 to i32
  %375 = inttoptr i32 %374 to ptr
  %376 = icmp eq i32 %374, 0
  br i1 %376, label %617, label %377

377:                                              ; preds = %373
  %378 = tail call ptr @llvm.thread.pointer() #10
  %379 = getelementptr inbounds %struct.thread_info, ptr %378, i32 0, i32 3
  %380 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %379) #11, !srcloc !17
  %381 = and i32 %380, -13
  %382 = or i32 %381, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %382) #10, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %383 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %375, i32 -1, i32 -1090519041) #10, !srcloc !20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %380) #10, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %617

385:                                              ; preds = %377
  %386 = getelementptr inbounds %struct.drm_crtc_state, ptr %251, i32 0, i32 20
  %387 = load ptr, ptr %386, align 4
  %388 = getelementptr inbounds %struct.drm_atomic_state, ptr %387, i32 0, i32 4
  %389 = load ptr, ptr %388, align 4
  %390 = getelementptr i8, ptr %2, i32 28
  %391 = load i32, ptr %390, align 8
  %392 = getelementptr %struct.__drm_crtcs_state, ptr %389, i32 %391, i32 5
  store ptr %375, ptr %392, align 4
  br label %617

393:                                              ; preds = %369
  %394 = getelementptr i8, ptr %2, i32 588
  %395 = load ptr, ptr %394, align 8
  %396 = icmp eq ptr %395, %3
  br i1 %396, label %397, label %400

397:                                              ; preds = %393
  %398 = trunc i64 %4 to i32
  %399 = getelementptr inbounds %struct.drm_crtc_state, ptr %251, i32 0, i32 17
  store i32 %398, ptr %399, align 4
  br label %617

400:                                              ; preds = %393
  %401 = getelementptr i8, ptr %2, i32 276
  %402 = load ptr, ptr %401, align 8
  %403 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %402, i32 0, i32 12
  %404 = load ptr, ptr %403, align 4
  %405 = icmp eq ptr %404, null
  br i1 %405, label %408, label %406

406:                                              ; preds = %400
  %407 = call i32 %404(ptr noundef %250, ptr noundef %251, ptr noundef %3, i64 noundef %4) #10
  br label %617

408:                                              ; preds = %400
  %409 = icmp eq ptr %256, null
  br i1 %409, label %413, label %410

410:                                              ; preds = %408
  %411 = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 2
  %412 = load ptr, ptr %411, align 4
  br label %413

413:                                              ; preds = %410, %408
  %414 = phi ptr [ %412, %410 ], [ null, %408 ]
  %415 = load i32, ptr %2, align 4
  %416 = getelementptr i8, ptr %2, i32 -36
  %417 = load ptr, ptr %416, align 8
  %418 = getelementptr inbounds %struct.drm_property, ptr %3, i32 0, i32 1
  %419 = load i32, ptr %418, align 4
  %420 = getelementptr inbounds %struct.drm_property, ptr %3, i32 0, i32 3
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %414, i32 noundef 16, ptr noundef nonnull @.str.20, i32 noundef %415, ptr noundef %417, i32 noundef %419, ptr noundef %420) #10
  br label %617

421:                                              ; preds = %10
  %422 = getelementptr i8, ptr %2, i32 -48
  %423 = call ptr @drm_atomic_get_plane_state(ptr noundef %0, ptr noundef %422) #10
  %424 = icmp ugt ptr %423, inttoptr (i32 -4096 to ptr)
  br i1 %424, label %425, label %427

425:                                              ; preds = %421
  %426 = ptrtoint ptr %423 to i32
  br label %617

427:                                              ; preds = %421
  %428 = load ptr, ptr %422, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1
  %429 = getelementptr inbounds %struct.drm_device, ptr %428, i32 0, i32 30, i32 49
  %430 = load ptr, ptr %429, align 4
  %431 = icmp eq ptr %430, %3
  br i1 %431, label %432, label %438

432:                                              ; preds = %427
  %433 = trunc i64 %4 to i32
  %434 = call ptr @drm_framebuffer_lookup(ptr noundef %428, ptr noundef %1, i32 noundef %433) #10
  call void @drm_atomic_set_fb_for_plane(ptr noundef %423, ptr noundef %434) #10
  %435 = icmp eq ptr %434, null
  br i1 %435, label %614, label %436

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.drm_framebuffer, ptr %434, i32 0, i32 2
  call void @drm_mode_object_put(ptr noundef %437) #10
  br label %614

438:                                              ; preds = %427
  %439 = getelementptr inbounds %struct.drm_device, ptr %428, i32 0, i32 30, i32 50
  %440 = load ptr, ptr %439, align 4
  %441 = icmp eq ptr %440, %3
  br i1 %441, label %442, label %452

442:                                              ; preds = %438
  %443 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 3
  %444 = load ptr, ptr %443, align 4
  %445 = icmp eq ptr %444, null
  br i1 %445, label %446, label %615

446:                                              ; preds = %442
  %447 = icmp eq i64 %4, -1
  br i1 %447, label %615, label %448

448:                                              ; preds = %446
  %449 = trunc i64 %4 to i32
  %450 = call ptr @sync_file_get_fence(i32 noundef %449) #10
  store ptr %450, ptr %443, align 4
  %451 = icmp eq ptr %450, null
  br i1 %451, label %615, label %614

452:                                              ; preds = %438
  %453 = getelementptr inbounds %struct.drm_device, ptr %428, i32 0, i32 30, i32 52
  %454 = load ptr, ptr %453, align 4
  %455 = icmp eq ptr %454, %3
  br i1 %455, label %456, label %467

456:                                              ; preds = %452
  %457 = trunc i64 %4 to i32
  %458 = call ptr @drm_mode_object_find(ptr noundef %428, ptr noundef %1, i32 noundef %457, i32 noundef -858993460) #10
  %459 = icmp eq ptr %458, null
  %460 = getelementptr i8, ptr %458, i32 -52
  %461 = select i1 %459, ptr null, ptr %460
  %462 = icmp eq i64 %4, 0
  %463 = icmp ne ptr %461, null
  %464 = select i1 %462, i1 true, i1 %463
  br i1 %464, label %465, label %615

465:                                              ; preds = %456
  %466 = call i32 @drm_atomic_set_crtc_for_plane(ptr noundef %423, ptr noundef %461) #10
  br label %615

467:                                              ; preds = %452
  %468 = getelementptr inbounds %struct.drm_device, ptr %428, i32 0, i32 30, i32 45
  %469 = load ptr, ptr %468, align 4
  %470 = icmp eq ptr %469, %3
  br i1 %470, label %471, label %474

471:                                              ; preds = %467
  %472 = trunc i64 %4 to i32
  %473 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 4
  store i32 %472, ptr %473, align 4
  br label %614

474:                                              ; preds = %467
  %475 = getelementptr inbounds %struct.drm_device, ptr %428, i32 0, i32 30, i32 46
  %476 = load ptr, ptr %475, align 4
  %477 = icmp eq ptr %476, %3
  br i1 %477, label %478, label %481

478:                                              ; preds = %474
  %479 = trunc i64 %4 to i32
  %480 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 5
  store i32 %479, ptr %480, align 4
  br label %614

481:                                              ; preds = %474
  %482 = getelementptr inbounds %struct.drm_device, ptr %428, i32 0, i32 30, i32 47
  %483 = load ptr, ptr %482, align 4
  %484 = icmp eq ptr %483, %3
  br i1 %484, label %485, label %488

485:                                              ; preds = %481
  %486 = trunc i64 %4 to i32
  %487 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 6
  store i32 %486, ptr %487, align 4
  br label %614

488:                                              ; preds = %481
  %489 = getelementptr inbounds %struct.drm_device, ptr %428, i32 0, i32 30, i32 48
  %490 = load ptr, ptr %489, align 4
  %491 = icmp eq ptr %490, %3
  br i1 %491, label %492, label %495

492:                                              ; preds = %488
  %493 = trunc i64 %4 to i32
  %494 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 7
  store i32 %493, ptr %494, align 4
  br label %614

495:                                              ; preds = %488
  %496 = getelementptr inbounds %struct.drm_device, ptr %428, i32 0, i32 30, i32 41
  %497 = load ptr, ptr %496, align 4
  %498 = icmp eq ptr %497, %3
  br i1 %498, label %499, label %502

499:                                              ; preds = %495
  %500 = trunc i64 %4 to i32
  %501 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 8
  store i32 %500, ptr %501, align 4
  br label %614

502:                                              ; preds = %495
  %503 = getelementptr inbounds %struct.drm_device, ptr %428, i32 0, i32 30, i32 42
  %504 = load ptr, ptr %503, align 4
  %505 = icmp eq ptr %504, %3
  br i1 %505, label %506, label %509

506:                                              ; preds = %502
  %507 = trunc i64 %4 to i32
  %508 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 9
  store i32 %507, ptr %508, align 4
  br label %614

509:                                              ; preds = %502
  %510 = getelementptr inbounds %struct.drm_device, ptr %428, i32 0, i32 30, i32 43
  %511 = load ptr, ptr %510, align 4
  %512 = icmp eq ptr %511, %3
  br i1 %512, label %513, label %516

513:                                              ; preds = %509
  %514 = trunc i64 %4 to i32
  %515 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 11
  store i32 %514, ptr %515, align 4
  br label %614

516:                                              ; preds = %509
  %517 = getelementptr inbounds %struct.drm_device, ptr %428, i32 0, i32 30, i32 44
  %518 = load ptr, ptr %517, align 4
  %519 = icmp eq ptr %518, %3
  br i1 %519, label %520, label %523

520:                                              ; preds = %516
  %521 = trunc i64 %4 to i32
  %522 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 10
  store i32 %521, ptr %522, align 4
  br label %614

523:                                              ; preds = %516
  %524 = getelementptr i8, ptr %2, i32 376
  %525 = load ptr, ptr %524, align 8
  %526 = icmp eq ptr %525, %3
  br i1 %526, label %527, label %530

527:                                              ; preds = %523
  %528 = trunc i64 %4 to i16
  %529 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 12
  store i16 %528, ptr %529, align 4
  br label %614

530:                                              ; preds = %523
  %531 = getelementptr i8, ptr %2, i32 388
  %532 = load ptr, ptr %531, align 4
  %533 = icmp eq ptr %532, %3
  br i1 %533, label %534, label %537

534:                                              ; preds = %530
  %535 = trunc i64 %4 to i16
  %536 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 13
  store i16 %535, ptr %536, align 2
  br label %614

537:                                              ; preds = %530
  %538 = getelementptr i8, ptr %2, i32 384
  %539 = load ptr, ptr %538, align 8
  %540 = icmp eq ptr %539, %3
  br i1 %540, label %541, label %558

541:                                              ; preds = %537
  %542 = trunc i64 %4 to i32
  %543 = and i32 %542, 15
  %544 = call i32 @llvm.ctpop.i32(i32 %543) #10, !range !21
  %545 = icmp eq i32 %544, 1
  br i1 %545, label %556, label %546

546:                                              ; preds = %541
  %547 = icmp eq ptr %428, null
  br i1 %547, label %551, label %548

548:                                              ; preds = %546
  %549 = getelementptr inbounds %struct.drm_device, ptr %428, i32 0, i32 2
  %550 = load ptr, ptr %549, align 4
  br label %551

551:                                              ; preds = %548, %546
  %552 = phi ptr [ %550, %548 ], [ null, %546 ]
  %553 = load i32, ptr %2, align 8
  %554 = getelementptr i8, ptr %2, i32 -36
  %555 = load ptr, ptr %554, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %552, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %553, ptr noundef %555, i64 noundef %4) #10
  br label %615

556:                                              ; preds = %541
  %557 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 14
  store i32 %542, ptr %557, align 4
  br label %614

558:                                              ; preds = %537
  %559 = getelementptr i8, ptr %2, i32 380
  %560 = load ptr, ptr %559, align 4
  %561 = icmp eq ptr %560, %3
  br i1 %561, label %562, label %565

562:                                              ; preds = %558
  %563 = trunc i64 %4 to i32
  %564 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 15
  store i32 %563, ptr %564, align 4
  br label %614

565:                                              ; preds = %558
  %566 = getelementptr i8, ptr %2, i32 392
  %567 = load ptr, ptr %566, align 8
  %568 = icmp eq ptr %567, %3
  br i1 %568, label %569, label %572

569:                                              ; preds = %565
  %570 = trunc i64 %4 to i32
  %571 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 17
  store i32 %570, ptr %571, align 4
  br label %614

572:                                              ; preds = %565
  %573 = getelementptr i8, ptr %2, i32 396
  %574 = load ptr, ptr %573, align 4
  %575 = icmp eq ptr %574, %3
  br i1 %575, label %576, label %579

576:                                              ; preds = %572
  %577 = trunc i64 %4 to i32
  %578 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 18
  store i32 %577, ptr %578, align 4
  br label %614

579:                                              ; preds = %572
  %580 = getelementptr inbounds %struct.drm_device, ptr %428, i32 0, i32 30, i32 53
  %581 = load ptr, ptr %580, align 4
  %582 = icmp eq ptr %581, %3
  br i1 %582, label %583, label %586

583:                                              ; preds = %579
  %584 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 19
  %585 = call fastcc i32 @drm_atomic_replace_property_blob_from_id(ptr noundef %428, ptr noundef %584, i64 noundef %4, i32 noundef -1, i32 noundef 16, ptr noundef nonnull %6) #10
  br label %615

586:                                              ; preds = %579
  %587 = getelementptr i8, ptr %2, i32 400
  %588 = load ptr, ptr %587, align 8
  %589 = icmp eq ptr %588, %3
  br i1 %589, label %590, label %593

590:                                              ; preds = %586
  %591 = trunc i64 %4 to i32
  %592 = getelementptr inbounds %struct.drm_plane_state, ptr %423, i32 0, i32 23
  store i32 %591, ptr %592, align 4
  br label %614

593:                                              ; preds = %586
  %594 = getelementptr i8, ptr %2, i32 56
  %595 = load ptr, ptr %594, align 8
  %596 = getelementptr inbounds %struct.drm_plane_funcs, ptr %595, i32 0, i32 7
  %597 = load ptr, ptr %596, align 4
  %598 = icmp eq ptr %597, null
  br i1 %598, label %601, label %599

599:                                              ; preds = %593
  %600 = call i32 %597(ptr noundef %422, ptr noundef %423, ptr noundef %3, i64 noundef %4) #10
  br label %615

601:                                              ; preds = %593
  %602 = icmp eq ptr %428, null
  br i1 %602, label %606, label %603

603:                                              ; preds = %601
  %604 = getelementptr inbounds %struct.drm_device, ptr %428, i32 0, i32 2
  %605 = load ptr, ptr %604, align 4
  br label %606

606:                                              ; preds = %603, %601
  %607 = phi ptr [ %605, %603 ], [ null, %601 ]
  %608 = load i32, ptr %2, align 8
  %609 = getelementptr i8, ptr %2, i32 -36
  %610 = load ptr, ptr %609, align 4
  %611 = getelementptr inbounds %struct.drm_property, ptr %3, i32 0, i32 1
  %612 = load i32, ptr %611, align 4
  %613 = getelementptr inbounds %struct.drm_property, ptr %3, i32 0, i32 3
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %607, i32 noundef 16, ptr noundef nonnull @.str.22, i32 noundef %608, ptr noundef %610, i32 noundef %612, ptr noundef %613) #10
  br label %615

614:                                              ; preds = %590, %576, %569, %562, %556, %534, %527, %520, %513, %506, %499, %492, %485, %478, %471, %448, %436, %432
  br label %615

615:                                              ; preds = %614, %606, %599, %583, %551, %465, %456, %448, %446, %442
  %616 = phi i32 [ 0, %614 ], [ -22, %551 ], [ %585, %583 ], [ %600, %599 ], [ -22, %606 ], [ -22, %442 ], [ 0, %446 ], [ -22, %448 ], [ %466, %465 ], [ -13, %456 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  br label %617

617:                                              ; preds = %615, %425, %413, %406, %397, %385, %377, %373, %360, %330, %301, %276, %268, %260, %253, %247, %17, %10
  %618 = phi i32 [ %18, %17 ], [ %248, %247 ], [ %254, %253 ], [ %426, %425 ], [ %616, %615 ], [ -22, %10 ], [ %271, %268 ], [ %303, %301 ], [ %332, %330 ], [ %362, %360 ], [ %407, %406 ], [ -22, %413 ], [ 0, %385 ], [ 0, %397 ], [ 0, %276 ], [ 0, %260 ], [ -14, %377 ], [ 0, %373 ]
  %619 = load ptr, ptr %8, align 4
  call void @drm_property_change_valid_put(ptr noundef %3, ptr noundef %619) #10
  br label %620

620:                                              ; preds = %617, %5
  %621 = phi i32 [ %618, %617 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  ret i32 %621
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_property_change_valid_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_connector_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_change_valid_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_atomic_ioctl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_printer, align 4
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds %struct.drm_mode_atomic, ptr %1, i32 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.drm_mode_atomic, ptr %1, i32 0, i32 3
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.drm_mode_atomic, ptr %1, i32 0, i32 4
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.drm_mode_atomic, ptr %1, i32 0, i32 5
  %22 = load i64, ptr %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = inttoptr i32 %23 to ptr
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  %25 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  store ptr @__drm_printfn_info, ptr %7, align 4, !alias.scope !22
  %27 = getelementptr inbounds %struct.drm_printer, ptr %7, i32 0, i32 1
  store ptr null, ptr %27, align 4, !alias.scope !22
  %28 = getelementptr inbounds %struct.drm_printer, ptr %7, i32 0, i32 2
  store ptr %26, ptr %28, align 4, !alias.scope !22
  %29 = getelementptr inbounds %struct.drm_printer, ptr %7, i32 0, i32 3
  store ptr null, ptr %29, align 4, !alias.scope !22
  %30 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.drm_driver, ptr %31, i32 0, i32 24
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %33, 16
  %37 = and i32 %36, %35
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %199, label %39

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 3
  %41 = load i8, ptr %40, align 1, !range !16
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = icmp eq ptr %0, null
  %45 = select i1 %44, ptr null, ptr %26
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %45, i32 noundef 16, ptr noundef nonnull @.str.11) #10
  br label %199

46:                                               ; preds = %39
  %47 = load i32, ptr %1, align 8
  %48 = and i32 %47, -1796
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = icmp eq ptr %0, null
  %52 = select i1 %51, ptr null, ptr %26
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %52, i32 noundef 16, ptr noundef nonnull @.str.12) #10
  br label %199

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.drm_mode_atomic, ptr %1, i32 0, i32 6
  %55 = load i64, ptr %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = icmp eq ptr %0, null
  %59 = select i1 %58, ptr null, ptr %26
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %59, i32 noundef 16, ptr noundef nonnull @.str.13) #10
  br label %199

60:                                               ; preds = %53
  %61 = and i32 %47, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = icmp eq ptr %0, null
  %65 = select i1 %64, ptr null, ptr %26
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %65, i32 noundef 16, ptr noundef nonnull @.str.14) #10
  br label %199

66:                                               ; preds = %60
  %67 = and i32 %47, 257
  %68 = icmp eq i32 %67, 257
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = icmp eq ptr %0, null
  %71 = select i1 %70, ptr null, ptr %26
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %71, i32 noundef 16, ptr noundef nonnull @.str.15) #10
  br label %199

72:                                               ; preds = %66
  %73 = tail call ptr @drm_atomic_state_alloc(ptr noundef %0) #10
  %74 = icmp eq ptr %73, null
  br i1 %74, label %199, label %75

75:                                               ; preds = %72
  call void @drm_modeset_acquire_init(ptr noundef nonnull %4, i32 noundef 1) #10
  %76 = getelementptr inbounds %struct.drm_atomic_state, ptr %73, i32 0, i32 9
  store ptr %4, ptr %76, align 4
  %77 = load i32, ptr %1, align 8
  %78 = getelementptr inbounds %struct.drm_atomic_state, ptr %73, i32 0, i32 2
  %79 = lshr i32 %77, 10
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = load i8, ptr %78, align 4
  %83 = and i8 %82, -2
  %84 = or i8 %81, %83
  store i8 %84, ptr %78, align 4
  %85 = getelementptr inbounds %struct.drm_mode_atomic, ptr %1, i32 0, i32 1
  br label %86

86:                                               ; preds = %194, %75
  store ptr null, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %87 = load i32, ptr %85, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %167, label %89

89:                                               ; preds = %86
  %90 = tail call ptr @llvm.thread.pointer() #10
  %91 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 3
  br label %92

92:                                               ; preds = %163, %89
  %93 = phi i32 [ 0, %89 ], [ %122, %163 ]
  %94 = phi i32 [ 0, %89 ], [ %164, %163 ]
  %95 = getelementptr i32, ptr %12, i32 %93
  %96 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %91) #11, !srcloc !17
  %97 = and i32 %96, -13
  %98 = or i32 %97, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %98) #10, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %99 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %95, i32 -1090519041) #10, !srcloc !25
  %100 = extractvalue { i32, i32 } %99, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %96) #10, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %188

102:                                              ; preds = %92
  %103 = extractvalue { i32, i32 } %99, 1
  %104 = call ptr @drm_mode_object_find(ptr noundef %0, ptr noundef %2, i32 noundef %103, i32 noundef 0) #10
  %105 = icmp eq ptr %104, null
  br i1 %105, label %188, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.drm_mode_object, ptr %104, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  call void @drm_mode_object_put(ptr noundef nonnull %104) #10
  br label %188

111:                                              ; preds = %106
  %112 = getelementptr i32, ptr %16, i32 %93
  %113 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %91) #11, !srcloc !17
  %114 = and i32 %113, -13
  %115 = or i32 %114, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %115) #10, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %116 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %112, i32 -1090519041) #10, !srcloc !26
  %117 = extractvalue { i32, i32 } %116, 0
  %118 = extractvalue { i32, i32 } %116, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %113) #10, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %119 = icmp eq i32 %117, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %111
  call void @drm_mode_object_put(ptr noundef nonnull %104) #10
  br label %188

121:                                              ; preds = %111
  %122 = add nuw i32 %93, 1
  %123 = icmp eq i32 %118, 0
  br i1 %123, label %163, label %124

124:                                              ; preds = %121
  %125 = add i32 %118, %94
  br label %126

126:                                              ; preds = %160, %124
  %127 = phi i32 [ %161, %160 ], [ %94, %124 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8, !annotation !8
  %128 = getelementptr i32, ptr %20, i32 %127
  %129 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %91) #11, !srcloc !17
  %130 = and i32 %129, -13
  %131 = or i32 %130, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %131) #10, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %132 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %128, i32 -1090519041) #10, !srcloc !27
  %133 = extractvalue { i32, i32 } %132, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %129) #10, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %126
  %136 = extractvalue { i32, i32 } %132, 1
  %137 = call ptr @drm_mode_obj_find_prop_id(ptr noundef nonnull %104, i32 noundef %136) #10
  %138 = icmp eq ptr %137, null
  br i1 %138, label %158, label %139

139:                                              ; preds = %135
  %140 = getelementptr i64, ptr %24, i32 %127
  %141 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %140, i32 8, i32 -1090519040) #12, !srcloc !28
  %142 = extractvalue { i32, i32 } %141, 0
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %150, !prof !13

144:                                              ; preds = %139
  %145 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %91) #11, !srcloc !17
  %146 = and i32 %145, -13
  %147 = or i32 %146, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %147) #10, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %148 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %140, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %145) #10, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150, !prof !13

150:                                              ; preds = %144, %139
  %151 = phi i32 [ %148, %144 ], [ 8, %139 ]
  %152 = sub i32 8, %151
  %153 = getelementptr i8, ptr %8, i32 %152
  call void @llvm.memset.p0.i32(ptr align 1 %153, i8 0, i32 %151, i1 false) #10
  br label %158

154:                                              ; preds = %144
  %155 = load i64, ptr %8, align 8
  %156 = call i32 @drm_atomic_set_property(ptr noundef nonnull %73, ptr noundef %2, ptr noundef nonnull %104, ptr noundef nonnull %137, i64 noundef %155)
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %154, %150, %135, %126
  %159 = phi i32 [ -14, %150 ], [ -14, %126 ], [ -2, %135 ], [ %156, %154 ]
  call void @drm_mode_object_put(ptr noundef nonnull %104) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br label %188

160:                                              ; preds = %154
  %161 = add i32 %127, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  %162 = icmp eq i32 %161, %125
  br i1 %162, label %163, label %126

163:                                              ; preds = %160, %121
  %164 = phi i32 [ %94, %121 ], [ %125, %160 ]
  call void @drm_mode_object_put(ptr noundef nonnull %104) #10
  %165 = load i32, ptr %85, align 4
  %166 = icmp ult i32 %122, %165
  br i1 %166, label %92, label %167

167:                                              ; preds = %163, %86
  %168 = call fastcc i32 @prepare_signaling(ptr noundef %0, ptr noundef nonnull %73, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %188

170:                                              ; preds = %167
  %171 = load i32, ptr %1, align 8
  %172 = and i32 %171, 256
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %170
  %175 = call i32 @drm_atomic_check_only(ptr noundef nonnull %73) #10
  br label %188

176:                                              ; preds = %170
  %177 = and i32 %171, 512
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = call i32 @drm_atomic_nonblocking_commit(ptr noundef nonnull %73) #10
  br label %188

181:                                              ; preds = %176
  %182 = load i32, ptr @__drm_debug, align 4
  %183 = and i32 %182, 64
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  call void @drm_atomic_print_new_state(ptr noundef nonnull %73, ptr noundef nonnull %7) #10
  br label %186

186:                                              ; preds = %185, %181
  %187 = call i32 @drm_atomic_commit(ptr noundef nonnull %73) #10
  br label %188

188:                                              ; preds = %186, %179, %174, %167, %158, %120, %110, %102, %92
  %189 = phi i32 [ %168, %167 ], [ %175, %174 ], [ %180, %179 ], [ %187, %186 ], [ %159, %158 ], [ -2, %110 ], [ -14, %120 ], [ -14, %92 ], [ -2, %102 ]
  %190 = load ptr, ptr %5, align 4
  %191 = load i32, ptr %6, align 4
  %192 = icmp eq i32 %189, 0
  call fastcc void @complete_signaling(ptr noundef %0, ptr noundef nonnull %73, ptr noundef %190, i32 noundef %191, i1 noundef zeroext %192)
  %193 = icmp eq i32 %189, -35
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  call void @drm_atomic_state_clear(ptr noundef nonnull %73) #10
  %195 = call i32 @drm_modeset_backoff(ptr noundef nonnull %4) #10
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %86, label %197

197:                                              ; preds = %194, %188
  %198 = phi i32 [ %195, %194 ], [ %189, %188 ]
  call fastcc void @drm_atomic_state_put(ptr noundef nonnull %73)
  call void @drm_modeset_drop_locks(ptr noundef nonnull %4) #10
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %4) #10
  br label %199

199:                                              ; preds = %197, %72, %69, %63, %57, %50, %43, %3
  %200 = phi i32 [ -22, %50 ], [ -22, %57 ], [ -22, %63 ], [ -22, %69 ], [ %198, %197 ], [ -22, %43 ], [ -95, %3 ], [ -12, %72 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #10
  ret i32 %200
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_object_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_obj_find_prop_id(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @prepare_signaling(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #0 {
  %7 = load i32, ptr %2, align 8
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %207

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 30, i32 19
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %18 = getelementptr inbounds %struct.drm_mode_atomic, ptr %2, i32 0, i32 7
  %19 = icmp eq ptr %3, null
  br label %27

20:                                               ; preds = %125, %10
  %21 = phi i32 [ 0, %10 ], [ %126, %125 ]
  %22 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %200

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  br label %132

27:                                               ; preds = %125, %16
  %28 = phi i32 [ 0, %16 ], [ %126, %125 ]
  %29 = phi i32 [ 0, %16 ], [ %127, %125 ]
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr %struct.__drm_crtcs_state, ptr %30, i32 %29
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %125, label %34

34:                                               ; preds = %27
  %35 = getelementptr %struct.__drm_crtcs_state, ptr %30, i32 %29, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.drm_crtc_state, ptr %36, i32 0, i32 20
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.drm_atomic_state, ptr %38, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.drm_crtc, ptr %32, i32 0, i32 8
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr %struct.__drm_crtcs_state, ptr %40, i32 %42, i32 5
  %44 = load ptr, ptr %43, align 4
  store ptr null, ptr %43, align 4
  %45 = load i32, ptr %2, align 8
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  %48 = icmp ne ptr %44, null
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %34
  %51 = load i64, ptr %18, align 8
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 80) #13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %207, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.drm_pending_vblank_event, ptr %53, i32 0, i32 3
  store i32 2, ptr %56, align 8
  %57 = getelementptr inbounds %struct.drm_pending_vblank_event, ptr %53, i32 0, i32 3, i32 0, i32 0, i32 1
  store i32 32, ptr %57, align 4
  %58 = getelementptr inbounds %struct.drm_crtc, ptr %32, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.drm_pending_vblank_event, ptr %53, i32 0, i32 3, i32 0, i32 5
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.drm_pending_vblank_event, ptr %53, i32 0, i32 3, i32 0, i32 1
  store i64 %51, ptr %61, align 8
  %62 = getelementptr inbounds %struct.drm_crtc_state, ptr %36, i32 0, i32 18
  store ptr %53, ptr %62, align 4
  %63 = load i32, ptr %2, align 8
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %55
  br i1 %19, label %125, label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.drm_crtc_state, ptr %36, i32 0, i32 18
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.drm_pending_vblank_event, ptr %69, i32 0, i32 3
  %71 = tail call i32 @drm_event_reserve_init(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %69, ptr noundef %70) #10
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.drm_crtc_state, ptr %36, i32 0, i32 18
  tail call void @kfree(ptr noundef %69) #10
  store ptr null, ptr %74, align 4
  br label %207

75:                                               ; preds = %67, %55, %34
  br i1 %48, label %76, label %123

76:                                               ; preds = %75
  %77 = load ptr, ptr %4, align 4
  %78 = load i32, ptr %5, align 4
  %79 = mul i32 %78, 12
  %80 = add i32 %79, 12
  %81 = tail call noalias ptr @krealloc(ptr noundef %77, i32 noundef %80, i32 noundef 3264) #14
  %82 = icmp eq ptr %81, null
  br i1 %82, label %207, label %83

83:                                               ; preds = %76
  %84 = load i32, ptr %5, align 4
  %85 = getelementptr %struct.drm_out_fence_state, ptr %81, i32 %84
  %86 = getelementptr inbounds i8, ptr %85, i32 4
  store i64 0, ptr %86, align 4
  store ptr %44, ptr %85, align 4
  store ptr %81, ptr %4, align 4
  %87 = tail call ptr @drm_crtc_create_fence(ptr noundef nonnull %32) #10
  %88 = icmp eq ptr %87, null
  br i1 %88, label %207, label %89

89:                                               ; preds = %83
  %90 = load i32, ptr %5, align 4
  %91 = add i32 %90, 1
  store i32 %91, ptr %5, align 4
  %92 = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #10
  %93 = getelementptr %struct.drm_out_fence_state, ptr %81, i32 %90, i32 2
  store i32 %92, ptr %93, align 4
  %94 = icmp slt i32 %92, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %89
  %96 = getelementptr %struct.drm_out_fence_state, ptr %81, i32 %90
  %97 = load ptr, ptr %96, align 4
  %98 = tail call ptr @llvm.thread.pointer() #10
  %99 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 3
  %100 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %99) #11, !srcloc !17
  %101 = and i32 %100, -13
  %102 = or i32 %101, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %102) #10, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %103 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %97, i32 %92, i32 -1090519041) #10, !srcloc !29
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #10, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %95
  %106 = tail call ptr @sync_file_create(ptr noundef nonnull %87) #10
  %107 = getelementptr %struct.drm_out_fence_state, ptr %81, i32 %90, i32 1
  store ptr %106, ptr %107, align 4
  %108 = icmp eq ptr %106, null
  br i1 %108, label %109, label %119

109:                                              ; preds = %105, %95, %89
  %110 = phi i32 [ -14, %95 ], [ %92, %89 ], [ -12, %105 ]
  %111 = getelementptr inbounds %struct.dma_fence, ptr %87, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %111) #10, !srcloc !11
  %112 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %111, ptr %111, i32 1, ptr elementtype(i32) %111) #10, !srcloc !12
  %113 = extractvalue { i32, i32, i32 } %112, 0
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %118, label %115

115:                                              ; preds = %109
  %116 = icmp sgt i32 %113, 0
  br i1 %116, label %207, label %117, !prof !13

117:                                              ; preds = %115
  tail call void @refcount_warn_saturate(ptr noundef %111, i32 noundef 3) #10
  br label %207

118:                                              ; preds = %109
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void @dma_fence_release(ptr noundef %111) #10, !callees !15
  br label %207

119:                                              ; preds = %105
  %120 = getelementptr inbounds %struct.drm_crtc_state, ptr %36, i32 0, i32 18
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.drm_pending_event, ptr %121, i32 0, i32 3
  store ptr %87, ptr %122, align 4
  br label %123

123:                                              ; preds = %119, %75
  %124 = add i32 %28, 1
  br label %125

125:                                              ; preds = %123, %66, %27
  %126 = phi i32 [ %28, %27 ], [ %124, %123 ], [ %28, %66 ]
  %127 = add nuw nsw i32 %29, 1
  %128 = load ptr, ptr %11, align 4
  %129 = getelementptr inbounds %struct.drm_device, ptr %128, i32 0, i32 30, i32 19
  %130 = load i32, ptr %129, align 4
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %27, label %20

132:                                              ; preds = %196, %25
  %133 = phi i32 [ 0, %25 ], [ %197, %196 ]
  %134 = load ptr, ptr %26, align 4
  %135 = getelementptr %struct.__drm_connnectors_state, ptr %134, i32 %133
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %196, label %138

138:                                              ; preds = %132
  %139 = getelementptr %struct.__drm_connnectors_state, ptr %134, i32 %133, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.drm_connector_state, ptr %140, i32 0, i32 14
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %196, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.drm_connector, ptr %136, i32 0, i32 9
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr %struct.__drm_connnectors_state, ptr %134, i32 %146, i32 4
  %148 = load ptr, ptr %147, align 4
  store ptr null, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %196, label %150

150:                                              ; preds = %144
  %151 = load ptr, ptr %4, align 4
  %152 = load i32, ptr %5, align 4
  %153 = mul i32 %152, 12
  %154 = add i32 %153, 12
  %155 = tail call noalias ptr @krealloc(ptr noundef %151, i32 noundef %154, i32 noundef 3264) #14
  %156 = icmp eq ptr %155, null
  br i1 %156, label %207, label %157

157:                                              ; preds = %150
  %158 = load i32, ptr %5, align 4
  %159 = getelementptr %struct.drm_out_fence_state, ptr %155, i32 %158
  %160 = getelementptr inbounds i8, ptr %159, i32 4
  store i64 0, ptr %160, align 4
  store ptr %148, ptr %159, align 4
  store ptr %155, ptr %4, align 4
  %161 = tail call ptr @drm_writeback_get_out_fence(ptr noundef nonnull %136) #10
  %162 = icmp eq ptr %161, null
  br i1 %162, label %207, label %163

163:                                              ; preds = %157
  %164 = load i32, ptr %5, align 4
  %165 = add i32 %164, 1
  store i32 %165, ptr %5, align 4
  %166 = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #10
  %167 = getelementptr %struct.drm_out_fence_state, ptr %155, i32 %164, i32 2
  store i32 %166, ptr %167, align 4
  %168 = icmp slt i32 %166, 0
  br i1 %168, label %183, label %169

169:                                              ; preds = %163
  %170 = getelementptr %struct.drm_out_fence_state, ptr %155, i32 %164
  %171 = load ptr, ptr %170, align 4
  %172 = tail call ptr @llvm.thread.pointer() #10
  %173 = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 3
  %174 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %173) #11, !srcloc !17
  %175 = and i32 %174, -13
  %176 = or i32 %175, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %176) #10, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %177 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %171, i32 %166, i32 -1090519041) #10, !srcloc !29
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %174) #10, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %169
  %180 = tail call ptr @sync_file_create(ptr noundef nonnull %161) #10
  %181 = getelementptr %struct.drm_out_fence_state, ptr %155, i32 %164, i32 1
  store ptr %180, ptr %181, align 4
  %182 = icmp eq ptr %180, null
  br i1 %182, label %183, label %193

183:                                              ; preds = %179, %169, %163
  %184 = phi i32 [ -14, %169 ], [ %166, %163 ], [ -12, %179 ]
  %185 = getelementptr inbounds %struct.dma_fence, ptr %161, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %185) #10, !srcloc !11
  %186 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %185, ptr %185, i32 1, ptr elementtype(i32) %185) #10, !srcloc !12
  %187 = extractvalue { i32, i32, i32 } %186, 0
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %192, label %189

189:                                              ; preds = %183
  %190 = icmp sgt i32 %187, 0
  br i1 %190, label %207, label %191, !prof !13

191:                                              ; preds = %189
  tail call void @refcount_warn_saturate(ptr noundef %185, i32 noundef 3) #10
  br label %207

192:                                              ; preds = %183
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void @dma_fence_release(ptr noundef %185) #10, !callees !15
  br label %207

193:                                              ; preds = %179
  %194 = load ptr, ptr %141, align 4
  %195 = getelementptr inbounds %struct.drm_writeback_job, ptr %194, i32 0, i32 5
  store ptr %161, ptr %195, align 4
  br label %196

196:                                              ; preds = %193, %144, %138, %132
  %197 = add nuw nsw i32 %133, 1
  %198 = load i32, ptr %22, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %132, label %200

200:                                              ; preds = %196, %20
  %201 = icmp eq i32 %21, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %200
  %203 = load i32, ptr %2, align 8
  %204 = and i32 %203, 1
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %202, %200
  br label %207

207:                                              ; preds = %206, %202, %192, %191, %189, %157, %150, %118, %117, %115, %83, %76, %73, %50, %6
  %208 = phi i32 [ 0, %206 ], [ 0, %6 ], [ -22, %202 ], [ %71, %73 ], [ %110, %118 ], [ %110, %117 ], [ %110, %115 ], [ %184, %192 ], [ %184, %191 ], [ %184, %189 ], [ -12, %150 ], [ -12, %157 ], [ -12, %50 ], [ -12, %76 ], [ -12, %83 ]
  ret i32 %208
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_check_only(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_nonblocking_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_print_new_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @complete_signaling(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  br i1 %4, label %14, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 30, i32 19
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  br label %26

14:                                               ; preds = %5
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ %23, %16 ], [ 0, %14 ]
  %18 = getelementptr %struct.drm_out_fence_state, ptr %2, i32 %17, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.drm_out_fence_state, ptr %2, i32 %17, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 4
  tail call void @fd_install(i32 noundef %19, ptr noundef %22) #10
  %23 = add nuw i32 %17, 1
  %24 = icmp eq i32 %23, %3
  br i1 %24, label %25, label %16

25:                                               ; preds = %16, %14
  tail call void @kfree(ptr noundef %2) #10
  br label %95

26:                                               ; preds = %49, %12
  %27 = phi ptr [ %8, %12 ], [ %50, %49 ]
  %28 = phi i32 [ 0, %12 ], [ %51, %49 ]
  %29 = load ptr, ptr %13, align 4
  %30 = getelementptr %struct.__drm_crtcs_state, ptr %29, i32 %28
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %26
  %34 = getelementptr %struct.__drm_crtcs_state, ptr %29, i32 %28, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.drm_crtc_state, ptr %35, i32 0, i32 18
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.drm_pending_event, ptr %37, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.drm_pending_event, ptr %37, i32 0, i32 4
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43, %39
  tail call void @drm_event_cancel_free(ptr noundef %0, ptr noundef nonnull %37) #10
  store ptr null, ptr %36, align 4
  %48 = load ptr, ptr %7, align 4
  br label %49

49:                                               ; preds = %47, %43, %33, %26
  %50 = phi ptr [ %27, %33 ], [ %27, %43 ], [ %48, %47 ], [ %27, %26 ]
  %51 = add nuw nsw i32 %28, 1
  %52 = getelementptr inbounds %struct.drm_device, ptr %50, i32 0, i32 30, i32 19
  %53 = load i32, ptr %52, align 4
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %26, label %55

55:                                               ; preds = %49, %6
  %56 = icmp eq ptr %2, null
  br i1 %56, label %95, label %57

57:                                               ; preds = %55
  %58 = icmp eq i32 %3, 0
  br i1 %58, label %94, label %59

59:                                               ; preds = %57
  %60 = icmp eq ptr %0, null
  %61 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  br label %62

62:                                               ; preds = %91, %59
  %63 = phi i32 [ 0, %59 ], [ %92, %91 ]
  %64 = getelementptr %struct.drm_out_fence_state, ptr %2, i32 %63
  %65 = getelementptr %struct.drm_out_fence_state, ptr %2, i32 %63, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = load ptr, ptr %66, align 4
  tail call void @fput(ptr noundef %69) #10
  br label %70

70:                                               ; preds = %68, %62
  %71 = getelementptr %struct.drm_out_fence_state, ptr %2, i32 %63, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  tail call void @put_unused_fd(i32 noundef %72) #10
  br label %75

75:                                               ; preds = %74, %70
  %76 = load ptr, ptr %64, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %91, label %78

78:                                               ; preds = %75
  %79 = tail call ptr @llvm.thread.pointer() #10
  %80 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 3
  %81 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %80) #11, !srcloc !17
  %82 = and i32 %81, -13
  %83 = or i32 %82, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #10, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %84 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %76, i32 -1, i32 -1090519041) #10, !srcloc !30
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #10, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %78
  br i1 %60, label %89, label %87

87:                                               ; preds = %86
  %88 = load ptr, ptr %61, align 4
  br label %89

89:                                               ; preds = %87, %86
  %90 = phi ptr [ %88, %87 ], [ null, %86 ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %90, i32 noundef 16, ptr noundef nonnull @.str.25) #10
  br label %91

91:                                               ; preds = %89, %78, %75
  %92 = add nuw i32 %63, 1
  %93 = icmp eq i32 %92, %3
  br i1 %93, label %94, label %62

94:                                               ; preds = %91, %57
  tail call void @kfree(ptr noundef nonnull %2) #10
  br label %95

95:                                               ; preds = %94, %55, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drm_atomic_state_put(ptr noundef %0) unnamed_addr #4 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #10, !srcloc !11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #10, !srcloc !12
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %9, label %7, !prof !13

7:                                                ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #10
  br label %9

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void @__drm_atomic_state_free(ptr noundef %0) #10, !callees !15
  br label %9

9:                                                ; preds = %8, %7, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_atomic_replace_property_blob_from_id(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) unnamed_addr #0 {
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %6
  %9 = trunc i64 %2 to i32
  %10 = tail call ptr @drm_property_lookup_blob(ptr noundef %0, i32 noundef %9) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = icmp sgt i32 %3, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.drm_property_blob, ptr %10, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %3
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @drm_property_blob_put(ptr noundef nonnull %10) #10
  br label %33

19:                                               ; preds = %14, %12
  %20 = icmp sgt i32 %4, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.drm_property_blob, ptr %10, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = urem i32 %23, %4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @drm_property_blob_put(ptr noundef nonnull %10) #10
  br label %33

27:                                               ; preds = %21, %19, %6
  %28 = phi ptr [ %10, %21 ], [ %10, %19 ], [ null, %6 ]
  %29 = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %1, ptr noundef %28) #10
  %30 = zext i1 %29 to i8
  %31 = load i8, ptr %5, align 1, !range !16
  %32 = or i8 %31, %30
  store i8 %32, ptr %5, align 1
  tail call void @drm_property_blob_put(ptr noundef %28) #10
  br label %33

33:                                               ; preds = %27, %26, %18, %8
  %34 = phi i32 [ -22, %18 ], [ -22, %26 ], [ 0, %27 ], [ -22, %8 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_framebuffer_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_atomic_set_writeback_fb_for_connector(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = tail call i32 @drm_writeback_set_fb(ptr noundef %0, ptr noundef %1) #10
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  %8 = load ptr, ptr %3, align 8
  %9 = icmp eq ptr %8, null
  br i1 %7, label %18, label %10

10:                                               ; preds = %6
  br i1 %9, label %14, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi ptr [ %13, %11 ], [ null, %10 ]
  %16 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %15, i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %17, ptr noundef %0) #10
  br label %24

18:                                               ; preds = %6
  br i1 %9, label %22, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %18
  %23 = phi ptr [ %21, %19 ], [ null, %18 ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %23, i32 noundef 16, ptr noundef nonnull @.str.19, ptr noundef %0) #10
  br label %24

24:                                               ; preds = %22, %14, %2
  %25 = phi i32 [ %4, %2 ], [ 0, %22 ], [ 0, %14 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_out_fence_for_connector(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq ptr %2, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #11, !srcloc !17
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %2, i32 -1, i32 -1090519041) #10, !srcloc !31
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #10, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.__drm_connnectors_state, ptr %17, i32 %5, i32 4
  store ptr %2, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %7, %3
  %20 = phi i32 [ 0, %15 ], [ 0, %3 ], [ -14, %7 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_lookup_blob(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_property_replace_blob(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_writeback_set_fb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_get_fence(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_info(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_event_reserve_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_crtc_create_fence(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_writeback_get_out_fence(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_event_cancel_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(1) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148279641}
!11 = !{i64 675790, i64 2148165761, i64 2148165787, i64 2148165834, i64 2148165856, i64 2148165884, i64 2148165904}
!12 = !{i64 2148181788, i64 2148181820, i64 2148181849, i64 2148181883, i64 2148181914, i64 2148181937}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149618667}
!15 = !{ptr @__drm_atomic_state_free, ptr @dma_fence_release}
!16 = !{i8 0, i8 2}
!17 = !{i64 5015907}
!18 = !{i64 5016104}
!19 = !{i64 2152501383}
!20 = !{i64 2155184331, i64 2155184611, i64 2155184945, i64 2155185279}
!21 = !{i32 0, i32 5}
!22 = !{!23}
!23 = distinct !{!23, !24, !"drm_info_printer: argument 0"}
!24 = distinct !{!24, !"drm_info_printer"}
!25 = !{i64 2155227445, i64 2155227725, i64 2155228059, i64 2155228393}
!26 = !{i64 2155239534, i64 2155239814, i64 2155240148, i64 2155240482}
!27 = !{i64 2155251565, i64 2155251845, i64 2155252179, i64 2155252513}
!28 = !{i64 2152519795, i64 2152519820}
!29 = !{i64 2155204178, i64 2155204458, i64 2155204792, i64 2155205126}
!30 = !{i64 2155215047, i64 2155215327, i64 2155215661, i64 2155215995}
!31 = !{i64 2155175951, i64 2155176231, i64 2155176565, i64 2155176899}
