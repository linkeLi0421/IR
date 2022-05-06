; ModuleID = '/llk/IR/drivers/gpu/drm/drm_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_crtc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_crtc_from_index:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_crtc_from_index\22\09\09\09\09\09"
module asm "__kstrtabns_drm_crtc_from_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_crtc_init_with_planes:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_crtc_init_with_planes\22\09\09\09\09\09"
module asm "__kstrtabns_drm_crtc_init_with_planes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___drmm_crtc_alloc_with_planes:\09\09\09\09\09"
module asm "\09.asciz \09\22__drmm_crtc_alloc_with_planes\22\09\09\09\09\09"
module asm "__kstrtabns___drmm_crtc_alloc_with_planes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_crtc_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_crtc_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_drm_crtc_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_set_config_internal:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_set_config_internal\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_set_config_internal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_crtc_check_viewport:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_crtc_check_viewport\22\09\09\09\09\09"
module asm "__kstrtabns_drm_crtc_check_viewport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_crtc_create_scaling_filter_property:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_crtc_create_scaling_filter_property\22\09\09\09\09\09"
module asm "__kstrtabns_drm_crtc_create_scaling_filter_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.74 = type { i32, ptr }
%struct.drm_mode_set = type { ptr, ptr, ptr, i32, i32, ptr, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__va_list = type { ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_crtc = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.drm_mode_modeinfo }
%struct.drm_mode_modeinfo = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, [32 x i8] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.73 }
%union.anon.73 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.dma_fence = type { ptr, ptr, %union.anon.71, i64, i64, i32, %struct.kref, i32 }
%union.anon.71 = type { i64 }

@__kstrtab_drm_crtc_from_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_crtc_from_index = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_crtc_from_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_crtc_from_index to i32), ptr @__kstrtab_drm_crtc_from_index, ptr @__kstrtabns_drm_crtc_from_index }, section "___ksymtab+drm_crtc_from_index", align 4
@.str = private unnamed_addr constant [27 x i8] c"drivers/gpu/drm/drm_crtc.c\00", align 1
@drm_crtc_fence_ops = internal constant %struct.dma_fence_ops { i8 0, ptr @drm_crtc_fence_get_driver_name, ptr @drm_crtc_fence_get_timeline_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_drm_crtc_init_with_planes = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_crtc_init_with_planes = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_crtc_init_with_planes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_crtc_init_with_planes to i32), ptr @__kstrtab_drm_crtc_init_with_planes, ptr @__kstrtabns_drm_crtc_init_with_planes }, section "___ksymtab+drm_crtc_init_with_planes", align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"drmm_crtc_alloc_with_planes_cleanup\00", align 1
@__kstrtab___drmm_crtc_alloc_with_planes = external dso_local constant [0 x i8], align 1
@__kstrtabns___drmm_crtc_alloc_with_planes = external dso_local constant [0 x i8], align 1
@__ksymtab___drmm_crtc_alloc_with_planes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__drmm_crtc_alloc_with_planes to i32), ptr @__kstrtab___drmm_crtc_alloc_with_planes, ptr @__kstrtabns___drmm_crtc_alloc_with_planes }, section "___ksymtab+__drmm_crtc_alloc_with_planes", align 4
@__kstrtab_drm_crtc_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_crtc_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_crtc_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_crtc_cleanup to i32), ptr @__kstrtab_drm_crtc_cleanup, ptr @__kstrtabns_drm_crtc_cleanup }, section "___ksymtab+drm_crtc_cleanup", align 4
@__kstrtab_drm_mode_set_config_internal = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_set_config_internal = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_set_config_internal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_set_config_internal to i32), ptr @__kstrtab_drm_mode_set_config_internal, ptr @__kstrtabns_drm_mode_set_config_internal }, section "___ksymtab+drm_mode_set_config_internal", align 4
@__kstrtab_drm_crtc_check_viewport = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_crtc_check_viewport = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_crtc_check_viewport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_crtc_check_viewport to i32), ptr @__kstrtab_drm_crtc_check_viewport, ptr @__kstrtabns_drm_crtc_check_viewport }, section "___ksymtab+drm_crtc_check_viewport", align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Unknown CRTC ID %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"[CRTC:%d:%s]\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"CRTC doesn't have current FB\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Unknown FB ID%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Unexpected aspect-ratio flag bits\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Invalid mode (ret=%d, status=%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Invalid pixel format %p4cc, modifier 0x%llx\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Count connectors is 0 but mode set\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Count connectors is %d but no mode or fb set\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Connector id %d unknown\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"[CONNECTOR:%d:%s]\0A\00", align 1
@__kstrtab_drm_crtc_create_scaling_filter_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_crtc_create_scaling_filter_property = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_crtc_create_scaling_filter_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_crtc_create_scaling_filter_property to i32), ptr @__kstrtab_drm_crtc_create_scaling_filter_property, ptr @__kstrtabns_drm_crtc_create_scaling_filter_property }, section "___ksymtab+drm_crtc_create_scaling_filter_property", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"crtc-%d\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"CRTC:%d-%s\00", align 1
@drm_crtc_crc_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"&crtc->crc.wq\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"include/drm/drm_modeset_lock.h\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab___drmm_crtc_alloc_with_planes, ptr @__ksymtab_drm_crtc_check_viewport, ptr @__ksymtab_drm_crtc_cleanup, ptr @__ksymtab_drm_crtc_create_scaling_filter_property, ptr @__ksymtab_drm_crtc_from_index, ptr @__ksymtab_drm_crtc_init_with_planes, ptr @__ksymtab_drm_mode_set_config_internal], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @drm_crtc_from_index(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 72
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -8
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi ptr [ %13, %12 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_crtc_force_disable(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.drm_mode_set, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.drm_mode_set, ptr %2, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  store ptr %0, ptr %3, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, 16
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 16
  br i1 %13, label %22, label %14, !prof !8

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %16, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22, !prof !9

22:                                               ; preds = %18, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 9, ptr noundef null) #11
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.drm_driver, ptr %25, i32 0, i32 24
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %27, 16
  %31 = and i32 %30, %29
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %42, label %33, !prof !8

33:                                               ; preds = %22, %18, %14
  %34 = phi ptr [ %23, %22 ], [ %4, %14 ], [ %4, %18 ]
  %35 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 30, i32 27
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %36, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42, !prof !9

42:                                               ; preds = %38, %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 585, i32 noundef 9, ptr noundef null) #11
  br label %43

43:                                               ; preds = %42, %38, %33
  %44 = call fastcc i32 @__drm_mode_set_config_internal(ptr noundef nonnull %2, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #11
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_set_config_internal(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.drm_mode_set, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, 16
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 16
  br i1 %13, label %22, label %14, !prof !8

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %16, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !9

22:                                               ; preds = %18, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 585, i32 noundef 9, ptr noundef null) #11
  br label %23

23:                                               ; preds = %22, %18, %14
  %24 = tail call fastcc i32 @__drm_mode_set_config_internal(ptr noundef %0, ptr noundef null)
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_crtc_register_all(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  br label %3

3:                                                ; preds = %16, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %16 ]
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -8
  %7 = icmp eq ptr %5, %2
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  tail call void @drm_debugfs_crtc_add(ptr noundef %6) #11
  %9 = getelementptr i8, ptr %5, i32 320
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %10, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = tail call i32 %12(ptr noundef %6) #11
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i32 [ %15, %14 ], [ 0, %8 ]
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %3, label %19

19:                                               ; preds = %16, %3
  %20 = phi i32 [ %17, %16 ], [ 0, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_crtc_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_crtc_unregister_all(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %17, label %5

5:                                                ; preds = %14, %1
  %6 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -8
  %8 = getelementptr i8, ptr %6, i32 320
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  tail call void %11(ptr noundef %7) #11
  br label %14

14:                                               ; preds = %13, %5
  tail call void @drm_debugfs_crtc_remove(ptr noundef %7) #11
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %5

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_crtc_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_crtc_create_fence(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 48) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 28
  %7 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 27
  %8 = load i32, ptr %7, align 8
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 29
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8
  %13 = zext i32 %12 to i64
  tail call void @dma_fence_init(ptr noundef nonnull %3, ptr noundef nonnull @drm_crtc_fence_ops, ptr noundef %6, i64 noundef %9, i64 noundef %13) #11
  br label %14

14:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_crtc_init_with_planes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ...) #2 {
  %7 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !10
  %8 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %4, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 360, i32 noundef 9, ptr noundef null) #11
  br label %12

12:                                               ; preds = %11, %6
  call void @llvm.va_start(ptr nonnull %7)
  %13 = load i32, ptr %7, align 4
  %14 = insertvalue [1 x i32] poison, i32 %13, 0
  %15 = call fastcc i32 @__drm_crtc_init_with_planes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, [1 x i32] %14)
  call void @llvm.va_end(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__drm_crtc_init_with_planes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, [1 x i32] %6) unnamed_addr #2 {
  %8 = icmp eq ptr %2, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.drm_plane, ptr %2, i32 0, i32 16
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %14, label %13, !prof !9

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 254, i32 noundef 9, ptr noundef null) #11
  br label %14

14:                                               ; preds = %13, %9, %7
  %15 = icmp eq ptr %3, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 16
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %21, label %20, !prof !9

20:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #11
  br label %21

21:                                               ; preds = %20, %16, %14
  %22 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 19
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, 31
  br i1 %24, label %25, label %26, !prof !11

25:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 258, i32 noundef 9, ptr noundef null) #11
  br label %141

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drm_driver, ptr %28, i32 0, i32 24
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %30, 16
  %34 = and i32 %33, %32
  %35 = icmp eq i32 %34, 16
  br i1 %35, label %44, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %38, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %40, %26
  %45 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %4, i32 0, i32 11
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %4, i32 0, i32 10
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53, !prof !11

52:                                               ; preds = %48, %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 263, i32 noundef 9, ptr noundef null) #11
  br label %53

53:                                               ; preds = %52, %48, %40, %36
  store ptr %0, ptr %1, align 8
  %54 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 16
  store ptr %4, ptr %54, align 8
  %55 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 23
  store volatile ptr %55, ptr %55, align 4
  %56 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 23, i32 1
  store ptr %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 24
  store i32 0, ptr %57, align 8
  %58 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 4
  tail call void @drm_modeset_lock_init(ptr noundef %58) #11
  %59 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 5
  %60 = tail call i32 @drm_mode_object_add(ptr noundef %0, ptr noundef %59, i32 noundef -858993460) #11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %141

62:                                               ; preds = %53
  %63 = icmp eq ptr %5, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = tail call noalias ptr @kvasprintf(i32 noundef 3264, ptr noundef nonnull %5, [1 x i32] %6) #11
  br label %76

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi ptr [ %67, %66 ], [ %71, %68 ]
  %70 = phi i32 [ 0, %66 ], [ %73, %68 ]
  %71 = load ptr, ptr %69, align 4
  %72 = icmp eq ptr %71, %67
  %73 = add i32 %70, 1
  br i1 %72, label %74, label %68

74:                                               ; preds = %68
  %75 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.13, i32 noundef %70) #11
  br label %76

76:                                               ; preds = %74, %64
  %77 = phi ptr [ %75, %74 ], [ %65, %64 ]
  %78 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 3
  store ptr %77, ptr %78, align 8
  %79 = icmp eq ptr %77, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  tail call void @drm_mode_object_unregister(ptr noundef %0, ptr noundef %59) #11
  br label %141

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 3
  %83 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #11
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 27
  store i32 %84, ptr %85, align 8
  %86 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 28
  store i32 0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 30
  %88 = load i32, ptr %59, align 4
  %89 = load ptr, ptr %82, align 8
  %90 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %87, i32 noundef 32, ptr noundef nonnull @.str.14, i32 noundef %88, ptr noundef %89)
  %91 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 20
  %92 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 5, i32 2
  store ptr %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 2
  %94 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %95 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20, i32 1
  %96 = load ptr, ptr %95, align 4
  store ptr %93, ptr %95, align 4
  store ptr %94, ptr %93, align 4
  %97 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 2, i32 1
  store ptr %96, ptr %97, align 4
  store volatile ptr %93, ptr %96, align 4
  %98 = load i32, ptr %22, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %22, align 4
  %100 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 8
  store i32 %98, ptr %100, align 8
  %101 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 6
  store ptr %2, ptr %101, align 8
  %102 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 7
  store ptr %3, ptr %102, align 4
  br i1 %8, label %109, label %103

103:                                              ; preds = %81
  %104 = getelementptr inbounds %struct.drm_plane, ptr %2, i32 0, i32 5
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = shl nuw i32 1, %98
  store i32 %108, ptr %104, align 4
  br label %109

109:                                              ; preds = %107, %103, %81
  br i1 %15, label %117, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 5
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, ptr %100, align 8
  %116 = shl nuw i32 1, %115
  store i32 %116, ptr %111, align 4
  br label %117

117:                                              ; preds = %114, %110, %109
  %118 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 26
  store i32 0, ptr %118, align 8
  %119 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 26, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %119, ptr noundef nonnull @.str.15, ptr noundef nonnull @drm_crtc_crc_init.__key) #11
  %120 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.16, i32 noundef 3264) #11
  %121 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 26, i32 1
  store ptr %120, ptr %121, align 4
  %122 = icmp eq ptr %120, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  tail call void @drm_mode_object_unregister(ptr noundef %0, ptr noundef %59) #11
  br label %141

124:                                              ; preds = %117
  %125 = load ptr, ptr %27, align 4
  %126 = getelementptr inbounds %struct.drm_driver, ptr %125, i32 0, i32 24
  %127 = load i32, ptr %126, align 4
  %128 = load i32, ptr %31, align 4
  %129 = and i32 %127, 16
  %130 = and i32 %129, %128
  %131 = icmp eq i32 %130, 16
  br i1 %131, label %132, label %141

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 54
  %134 = load ptr, ptr %133, align 4
  tail call void @drm_object_attach_property(ptr noundef %59, ptr noundef %134, i64 noundef 0) #11
  %135 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 55
  %136 = load ptr, ptr %135, align 4
  tail call void @drm_object_attach_property(ptr noundef %59, ptr noundef %136, i64 noundef 0) #11
  %137 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 51
  %138 = load ptr, ptr %137, align 4
  tail call void @drm_object_attach_property(ptr noundef %59, ptr noundef %138, i64 noundef 0) #11
  %139 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 56
  %140 = load ptr, ptr %139, align 4
  tail call void @drm_object_attach_property(ptr noundef %59, ptr noundef %140, i64 noundef 0) #11
  br label %141

141:                                              ; preds = %132, %124, %123, %80, %53, %25
  %142 = phi i32 [ -22, %25 ], [ -12, %123 ], [ -12, %80 ], [ %60, %53 ], [ 0, %132 ], [ 0, %124 ]
  ret i32 %142
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__drmm_crtc_alloc_with_planes(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ...) #2 {
  %8 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4, !annotation !10
  %9 = icmp eq ptr %5, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %5, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !9

14:                                               ; preds = %10, %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef null) #11
  br label %31

15:                                               ; preds = %10
  %16 = tail call noalias ptr @drmm_kmalloc(ptr noundef %0, i32 noundef %1, i32 noundef 3520) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %16, i32 %2
  call void @llvm.va_start(ptr nonnull %8)
  %20 = load i32, ptr %8, align 4
  %21 = insertvalue [1 x i32] poison, i32 %20, 0
  %22 = call fastcc i32 @__drm_crtc_init_with_planes(ptr noundef %0, ptr noundef %19, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, [1 x i32] %21)
  call void @llvm.va_end(ptr nonnull %8)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = inttoptr i32 %22 to ptr
  br label %31

26:                                               ; preds = %18
  %27 = call i32 @__drmm_add_action_or_reset(ptr noundef %0, ptr noundef nonnull @drmm_crtc_alloc_with_planes_cleanup, ptr noundef %19, ptr noundef nonnull @.str.1) #11
  %28 = icmp eq i32 %27, 0
  %29 = inttoptr i32 %27 to ptr
  %30 = select i1 %28, ptr %16, ptr %29
  br label %31

31:                                               ; preds = %26, %24, %15, %14
  %32 = phi ptr [ inttoptr (i32 -22 to ptr), %14 ], [ %25, %24 ], [ inttoptr (i32 -12 to ptr), %15 ], [ %30, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drmm_crtc_alloc_with_planes_cleanup(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void @drm_crtc_cleanup(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_crtc_cleanup(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 26, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 18
  %6 = load ptr, ptr %5, align 8
  tail call void @kfree(ptr noundef %6) #11
  store ptr null, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 4, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 113, i32 noundef 9, ptr noundef null) #11
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  tail call void @drm_mode_object_unregister(ptr noundef %2, ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 2
  %14 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  %18 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 19
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 16
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %26, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33, !prof !11

30:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 444, i32 noundef 9, ptr noundef null) #11
  %31 = load ptr, ptr %21, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %30, %24
  %34 = phi ptr [ %31, %30 ], [ %22, %24 ]
  %35 = load ptr, ptr %25, align 8
  %36 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %35, i32 0, i32 11
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  tail call void %37(ptr noundef %0, ptr noundef nonnull %34) #11
  br label %40

40:                                               ; preds = %39, %33, %30, %11
  %41 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  tail call void @kfree(ptr noundef %42) #11
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(752) %0, i8 0, i32 752, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_unregister(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_getcrtc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 2
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %96

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @drm_mode_object_find(ptr noundef %0, ptr noundef %2, i32 noundef %15, i32 noundef -858993460) #11
  %17 = icmp eq ptr %16, null
  %18 = getelementptr i8, ptr %16, i32 -52
  %19 = icmp eq ptr %18, null
  %20 = or i1 %17, %19
  br i1 %20, label %96, label %21

21:                                               ; preds = %13
  %22 = getelementptr i8, ptr %16, i32 20
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %16, i32 280
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 6
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.drm_plane, ptr %23, i32 0, i32 3
  %28 = tail call i32 @drm_modeset_lock(ptr noundef %27, ptr noundef null) #11
  %29 = getelementptr inbounds %struct.drm_plane, ptr %23, i32 0, i32 19
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.drm_plane_state, ptr %30, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %40

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.drm_plane, ptr %23, i32 0, i32 12
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %36, %32
  %41 = phi ptr [ %34, %32 ], [ %38, %36 ]
  %42 = getelementptr inbounds %struct.drm_framebuffer, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  br label %44

44:                                               ; preds = %40, %36, %32
  %45 = phi i32 [ 0, %32 ], [ 0, %36 ], [ %43, %40 ]
  %46 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 3
  store i32 %45, ptr %46, align 8
  %47 = load ptr, ptr %29, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.drm_plane_state, ptr %47, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = lshr i32 %51, 16
  %53 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 4
  store i32 %52, ptr %53, align 4
  %54 = load ptr, ptr %29, align 4
  %55 = getelementptr inbounds %struct.drm_plane_state, ptr %54, i32 0, i32 9
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 16
  %58 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 5
  store i32 %57, ptr %58, align 8
  br label %59

59:                                               ; preds = %49, %44
  tail call void @drm_modeset_unlock(ptr noundef %27) #11
  %60 = getelementptr i8, ptr %16, i32 -32
  %61 = tail call i32 @drm_modeset_lock(ptr noundef %60, ptr noundef null) #11
  %62 = getelementptr i8, ptr %16, i32 592
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.drm_crtc_state, ptr %63, i32 0, i32 1
  %67 = load i8, ptr %66, align 4, !range !12
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 8
  %71 = getelementptr inbounds %struct.drm_crtc_state, ptr %63, i32 0, i32 8
  tail call void @drm_mode_convert_to_umode(ptr noundef %70, ptr noundef %71) #11
  br label %85

72:                                               ; preds = %59
  %73 = getelementptr i8, ptr %16, i32 268
  %74 = load i32, ptr %73, align 8
  %75 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 4
  store i32 %74, ptr %75, align 4
  %76 = getelementptr i8, ptr %16, i32 272
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 5
  store i32 %77, ptr %78, align 8
  %79 = getelementptr i8, ptr %16, i32 40
  %80 = load i8, ptr %79, align 4, !range !12
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 8
  %84 = getelementptr i8, ptr %16, i32 44
  tail call void @drm_mode_convert_to_umode(ptr noundef %83, ptr noundef %84) #11
  br label %85

85:                                               ; preds = %82, %72, %69, %65
  %86 = phi i32 [ 1, %82 ], [ 1, %69 ], [ 0, %65 ], [ 0, %72 ]
  %87 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 7
  store i32 %86, ptr %87, align 8
  %88 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 4
  %89 = load i8, ptr %88, align 4, !range !12
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 8, i32 12
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, -7864321
  store i32 %94, ptr %92, align 4
  br label %95

95:                                               ; preds = %91, %85
  tail call void @drm_modeset_unlock(ptr noundef %60) #11
  br label %96

96:                                               ; preds = %95, %13, %3
  %97 = phi i32 [ 0, %95 ], [ -95, %3 ], [ -2, %13 ]
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_convert_to_umode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__drm_mode_set_config_internal(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.drm_mode_set, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_driver, ptr %7, i32 0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %9, 16
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %23, label %15, !prof !8

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 27
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %17, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !9

23:                                               ; preds = %19, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 534, i32 noundef 9, ptr noundef null) #11
  %24 = load ptr, ptr %4, align 8
  br label %25

25:                                               ; preds = %23, %19, %15
  %26 = phi ptr [ %5, %15 ], [ %24, %23 ], [ %5, %19 ]
  %27 = getelementptr inbounds %struct.drm_device, ptr %26, i32 0, i32 30, i32 20
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %41, label %30

30:                                               ; preds = %30, %25
  %31 = phi ptr [ %37, %30 ], [ %28, %25 ]
  %32 = getelementptr i8, ptr %31, i32 64
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.drm_plane, ptr %33, i32 0, i32 12
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.drm_plane, ptr %33, i32 0, i32 13
  store ptr %35, ptr %36, align 4
  %37 = load ptr, ptr %31, align 4
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 30, i32 20
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %41, label %30

41:                                               ; preds = %30, %25
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 16
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %44, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef %0, ptr noundef %1) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 6
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %42, null
  %53 = select i1 %52, ptr null, ptr %4
  %54 = getelementptr inbounds %struct.drm_plane, ptr %51, i32 0, i32 11
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.drm_plane, ptr %51, i32 0, i32 12
  store ptr %42, ptr %55, align 8
  br label %56

56:                                               ; preds = %49, %41
  %57 = load ptr, ptr %4, align 8
  %58 = getelementptr inbounds %struct.drm_device, ptr %57, i32 0, i32 30, i32 20
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %58
  br i1 %60, label %81, label %61

61:                                               ; preds = %76, %56
  %62 = phi ptr [ %77, %76 ], [ %59, %56 ]
  %63 = getelementptr i8, ptr %62, i32 64
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.drm_plane, ptr %64, i32 0, i32 12
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.drm_framebuffer, ptr %66, i32 0, i32 2
  tail call void @drm_mode_object_get(ptr noundef %69) #11
  br label %70

70:                                               ; preds = %68, %61
  %71 = getelementptr inbounds %struct.drm_plane, ptr %64, i32 0, i32 13
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.drm_framebuffer, ptr %72, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %75) #11
  br label %76

76:                                               ; preds = %74, %70
  store ptr null, ptr %71, align 4
  %77 = load ptr, ptr %62, align 4
  %78 = load ptr, ptr %4, align 8
  %79 = getelementptr inbounds %struct.drm_device, ptr %78, i32 0, i32 30, i32 20
  %80 = icmp eq ptr %77, %79
  br i1 %80, label %81, label %61

81:                                               ; preds = %76, %56
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_crtc_check_viewport(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !10
  call void @drm_mode_get_hv_timing(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_plane, ptr %13, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 14
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = load i32, ptr %6, align 4
  %22 = load i32, ptr %7, align 4
  store i32 %22, ptr %6, align 4
  store i32 %21, ptr %7, align 4
  br label %23

23:                                               ; preds = %20, %11, %5
  %24 = shl i32 %1, 16
  %25 = shl i32 %2, 16
  %26 = load i32, ptr %6, align 4
  %27 = shl i32 %26, 16
  %28 = load i32, ptr %7, align 4
  %29 = shl i32 %28, 16
  %30 = call i32 @drm_framebuffer_check_src_coords(i32 noundef %24, i32 noundef %25, i32 noundef %27, i32 noundef %29, ptr noundef %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_get_hv_timing(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_framebuffer_check_src_coords(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_setcrtc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.drm_mode_set, align 4
  %5 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i32 36, i1 false), !annotation !10
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_driver, ptr %8, i32 0, i32 24
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %10, 2
  %14 = and i32 %13, %12
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %289

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, 65536
  br i1 %19, label %20, label %289

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = icmp ult i32 %22, 65536
  br i1 %23, label %24, label %289

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = tail call ptr @drm_mode_object_find(ptr noundef %0, ptr noundef %2, i32 noundef %26, i32 noundef -858993460) #11
  %28 = icmp eq ptr %27, null
  %29 = getelementptr i8, ptr %27, i32 -52
  %30 = icmp eq ptr %29, null
  %31 = or i1 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, ptr %25, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %33) #11
  br label %289

34:                                               ; preds = %24
  %35 = load i32, ptr %27, align 4
  %36 = getelementptr i8, ptr %27, i32 -36
  %37 = load ptr, ptr %36, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %35, ptr noundef %37) #11
  %38 = getelementptr i8, ptr %27, i32 20
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 7
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.drm_plane, ptr %39, i32 0, i32 4
  %45 = load i32, ptr %44, align 8
  %46 = tail call zeroext i1 @drm_lease_held(ptr noundef %2, i32 noundef %45) #11
  br i1 %46, label %47, label %289

47:                                               ; preds = %43, %34
  %48 = load ptr, ptr %7, align 4
  %49 = getelementptr inbounds %struct.drm_driver, ptr %48, i32 0, i32 24
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %11, align 4
  %52 = and i32 %50, 16
  %53 = and i32 %52, %51
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %64, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %57, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %55
  tail call void @mutex_lock(ptr noundef %6) #11
  br label %64

64:                                               ; preds = %63, %59, %47
  call void @drm_modeset_acquire_init(ptr noundef nonnull %5, i32 noundef 1) #11
  %65 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 3
  %66 = getelementptr inbounds %struct.drm_plane, ptr %39, i32 0, i32 19
  %67 = getelementptr inbounds %struct.drm_plane, ptr %39, i32 0, i32 12
  %68 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 4
  %69 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 8, i32 12
  %70 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 8
  %71 = getelementptr inbounds %struct.drm_plane, ptr %39, i32 0, i32 8
  %72 = getelementptr inbounds %struct.drm_mode_crtc, ptr %1, i32 0, i32 1
  %73 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 10
  %74 = getelementptr inbounds %struct.drm_mode_set, ptr %4, i32 0, i32 1
  %75 = getelementptr inbounds %struct.drm_mode_set, ptr %4, i32 0, i32 3
  %76 = getelementptr inbounds %struct.drm_mode_set, ptr %4, i32 0, i32 4
  %77 = getelementptr inbounds %struct.drm_mode_set, ptr %4, i32 0, i32 2
  %78 = getelementptr inbounds %struct.drm_mode_set, ptr %4, i32 0, i32 5
  %79 = getelementptr inbounds %struct.drm_mode_set, ptr %4, i32 0, i32 6
  %80 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  %81 = getelementptr i8, ptr %27, i32 276
  br label %82

82:                                               ; preds = %269, %64
  %83 = call i32 @drm_modeset_lock_all_ctx(ptr noundef %0, ptr noundef nonnull %5) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %266

85:                                               ; preds = %82
  %86 = load i32, ptr %40, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %148, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr %65, align 8
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load ptr, ptr %66, align 4
  %93 = icmp eq ptr %92, null
  %94 = getelementptr inbounds %struct.drm_plane_state, ptr %92, i32 0, i32 2
  %95 = select i1 %93, ptr %67, ptr %94
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.drm_framebuffer, ptr %96, i32 0, i32 2
  call void @drm_mode_object_get(ptr noundef %99) #11
  br label %106

100:                                              ; preds = %91
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4) #11
  br label %262

101:                                              ; preds = %88
  %102 = call ptr @drm_framebuffer_lookup(ptr noundef %0, ptr noundef %2, i32 noundef %89) #11
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, ptr %65, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %105) #11
  br label %262

106:                                              ; preds = %101, %98
  %107 = phi ptr [ %102, %101 ], [ %96, %98 ]
  %108 = call ptr @drm_mode_create(ptr noundef %0) #11
  %109 = icmp eq ptr %108, null
  br i1 %109, label %235, label %110

110:                                              ; preds = %106
  %111 = load i8, ptr %68, align 4, !range !12
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, ptr %69, align 4
  %115 = and i32 %114, 7864320
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #11
  br label %235

118:                                              ; preds = %113, %110
  %119 = call i32 @drm_mode_convert_umode(ptr noundef %0, ptr noundef nonnull %108, ptr noundef %70) #11
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.drm_display_mode, ptr %108, i32 0, i32 32
  %123 = load i32, ptr %122, align 4
  %124 = call ptr @drm_get_mode_status_name(i32 noundef %123) #11
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %119, ptr noundef %124) #11
  call void @drm_mode_debug_printmodeline(ptr noundef nonnull %108) #11
  br label %235

125:                                              ; preds = %118
  %126 = load i8, ptr %71, align 8, !range !12
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.drm_framebuffer, ptr %107, i32 0, i32 4
  %130 = load ptr, ptr %129, align 8
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.drm_framebuffer, ptr %107, i32 0, i32 8
  %133 = load i64, ptr %132, align 8
  %134 = call i32 @drm_plane_check_pixel_format(ptr noundef %39, i32 noundef %131, i64 noundef %133) #11
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %128
  %137 = load ptr, ptr %129, align 8
  %138 = load i64, ptr %132, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef %137, i64 noundef %138) #11
  br label %235

139:                                              ; preds = %128, %125
  %140 = load i32, ptr %17, align 4
  %141 = load i32, ptr %21, align 8
  %142 = call i32 @drm_crtc_check_viewport(ptr noundef nonnull %29, i32 noundef %140, i32 noundef %141, ptr noundef nonnull %108, ptr noundef nonnull %107)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %235

144:                                              ; preds = %139
  %145 = load i32, ptr %72, align 8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.9) #11
  br label %235

148:                                              ; preds = %85
  %149 = load i32, ptr %72, align 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %201, label %152

151:                                              ; preds = %144
  br i1 %87, label %152, label %156

152:                                              ; preds = %151, %148
  %153 = phi ptr [ %108, %151 ], [ null, %148 ]
  %154 = phi ptr [ %107, %151 ], [ null, %148 ]
  %155 = phi i32 [ %145, %151 ], [ %149, %148 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %155) #11
  br label %229

156:                                              ; preds = %151
  %157 = load i32, ptr %73, align 4
  %158 = icmp ugt i32 %145, %157
  br i1 %158, label %235, label %159

159:                                              ; preds = %156
  %160 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %145, i32 4) #11
  %161 = extractvalue { i32, i1 } %160, 1
  br i1 %161, label %235, label %162, !prof !11

162:                                              ; preds = %159
  %163 = extractvalue { i32, i1 } %160, 0
  %164 = call noalias align 64 ptr @__kmalloc(i32 noundef %163, i32 noundef 3264) #13
  %165 = icmp eq ptr %164, null
  br i1 %165, label %235, label %166

166:                                              ; preds = %162
  %167 = load i32, ptr %72, align 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %201, label %169

169:                                              ; preds = %166
  %170 = tail call ptr @llvm.thread.pointer() #11
  %171 = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 3
  br label %172

172:                                              ; preds = %194, %169
  %173 = phi i32 [ 0, %169 ], [ %198, %194 ]
  %174 = getelementptr ptr, ptr %164, i32 %173
  store ptr null, ptr %174, align 4
  %175 = load i64, ptr %1, align 8
  %176 = trunc i64 %175 to i32
  %177 = inttoptr i32 %176 to ptr
  %178 = getelementptr i32, ptr %177, i32 %173
  %179 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %171) #14, !srcloc !13
  %180 = and i32 %179, -13
  %181 = or i32 %180, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %181) #11, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !15
  %182 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %178, i32 -1090519041) #11, !srcloc !16
  %183 = extractvalue { i32, i32 } %182, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %179) #11, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !15
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %229

185:                                              ; preds = %172
  %186 = extractvalue { i32, i32 } %182, 1
  %187 = call ptr @drm_mode_object_find(ptr noundef %0, ptr noundef %2, i32 noundef %186, i32 noundef -1061109568) #11
  %188 = icmp eq ptr %187, null
  %189 = getelementptr i8, ptr %187, i32 -32
  %190 = icmp eq ptr %189, null
  %191 = or i1 %188, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = extractvalue { i32, i32 } %182, 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %193) #11
  br label %229

194:                                              ; preds = %185
  %195 = load i32, ptr %187, align 8
  %196 = getelementptr i8, ptr %187, i32 20
  %197 = load ptr, ptr %196, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %195, ptr noundef %197) #11
  store ptr %189, ptr %174, align 4
  %198 = add nuw i32 %173, 1
  %199 = load i32, ptr %72, align 8
  %200 = icmp ult i32 %198, %199
  br i1 %200, label %172, label %201

201:                                              ; preds = %194, %166, %148
  %202 = phi ptr [ %107, %166 ], [ null, %148 ], [ %107, %194 ]
  %203 = phi ptr [ %108, %166 ], [ null, %148 ], [ %108, %194 ]
  %204 = phi i32 [ 0, %166 ], [ 0, %148 ], [ %199, %194 ]
  %205 = phi ptr [ %164, %166 ], [ null, %148 ], [ %164, %194 ]
  store ptr %29, ptr %74, align 4
  %206 = load i32, ptr %17, align 4
  store i32 %206, ptr %75, align 4
  %207 = load i32, ptr %21, align 8
  store i32 %207, ptr %76, align 4
  store ptr %203, ptr %77, align 4
  store ptr %205, ptr %78, align 4
  store i32 %204, ptr %79, align 4
  store ptr %202, ptr %4, align 4
  %208 = load ptr, ptr %7, align 4
  %209 = getelementptr inbounds %struct.drm_driver, ptr %208, i32 0, i32 24
  %210 = load i32, ptr %209, align 4
  %211 = load i32, ptr %11, align 4
  %212 = and i32 %210, 16
  %213 = and i32 %212, %211
  %214 = icmp eq i32 %213, 16
  br i1 %214, label %222, label %215

215:                                              ; preds = %201
  %216 = load ptr, ptr %80, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %227, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %216, i32 0, i32 5
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %227, label %222

222:                                              ; preds = %218, %201
  %223 = load ptr, ptr %81, align 8
  %224 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %223, i32 0, i32 6
  %225 = load ptr, ptr %224, align 4
  %226 = call i32 %225(ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  br label %229

227:                                              ; preds = %218, %215
  %228 = call fastcc i32 @__drm_mode_set_config_internal(ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %229

229:                                              ; preds = %227, %222, %192, %172, %152
  %230 = phi ptr [ %203, %222 ], [ %203, %227 ], [ %153, %152 ], [ %108, %192 ], [ %108, %172 ]
  %231 = phi ptr [ %202, %222 ], [ %202, %227 ], [ %154, %152 ], [ %107, %192 ], [ %107, %172 ]
  %232 = phi i32 [ %226, %222 ], [ %228, %227 ], [ -22, %152 ], [ -2, %192 ], [ -14, %172 ]
  %233 = phi ptr [ %205, %222 ], [ %205, %227 ], [ null, %152 ], [ %164, %192 ], [ %164, %172 ]
  %234 = icmp eq ptr %231, null
  br i1 %234, label %241, label %235

235:                                              ; preds = %229, %162, %159, %156, %147, %139, %136, %121, %117, %106
  %236 = phi ptr [ %233, %229 ], [ null, %121 ], [ null, %139 ], [ null, %147 ], [ null, %136 ], [ null, %117 ], [ null, %106 ], [ null, %162 ], [ null, %156 ], [ null, %159 ]
  %237 = phi ptr [ %231, %229 ], [ %107, %121 ], [ %107, %139 ], [ %107, %147 ], [ %107, %136 ], [ %107, %117 ], [ %107, %106 ], [ %107, %162 ], [ %107, %156 ], [ %107, %159 ]
  %238 = phi ptr [ %230, %229 ], [ %108, %121 ], [ %108, %139 ], [ %108, %147 ], [ %108, %136 ], [ %108, %117 ], [ null, %106 ], [ %108, %162 ], [ %108, %156 ], [ %108, %159 ]
  %239 = phi i32 [ %232, %229 ], [ %119, %121 ], [ %142, %139 ], [ -22, %147 ], [ %134, %136 ], [ -22, %117 ], [ -12, %106 ], [ -12, %162 ], [ -22, %156 ], [ -12, %159 ]
  %240 = getelementptr inbounds %struct.drm_framebuffer, ptr %237, i32 0, i32 2
  call void @drm_mode_object_put(ptr noundef %240) #11
  br label %241

241:                                              ; preds = %235, %229
  %242 = phi ptr [ %236, %235 ], [ %233, %229 ]
  %243 = phi ptr [ %238, %235 ], [ %230, %229 ]
  %244 = phi i32 [ %239, %235 ], [ %232, %229 ]
  %245 = icmp eq ptr %242, null
  br i1 %245, label %262, label %246

246:                                              ; preds = %241
  %247 = load i32, ptr %72, align 8
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %262, label %249

249:                                              ; preds = %258, %246
  %250 = phi i32 [ %259, %258 ], [ %247, %246 ]
  %251 = phi i32 [ %260, %258 ], [ 0, %246 ]
  %252 = getelementptr ptr, ptr %242, i32 %251
  %253 = load ptr, ptr %252, align 4
  %254 = icmp eq ptr %253, null
  br i1 %254, label %258, label %255

255:                                              ; preds = %249
  %256 = getelementptr inbounds %struct.drm_connector, ptr %253, i32 0, i32 6
  call void @drm_mode_object_put(ptr noundef %256) #11
  %257 = load i32, ptr %72, align 8
  br label %258

258:                                              ; preds = %255, %249
  %259 = phi i32 [ %250, %249 ], [ %257, %255 ]
  %260 = add nuw i32 %251, 1
  %261 = icmp ult i32 %260, %259
  br i1 %261, label %249, label %262

262:                                              ; preds = %258, %246, %241, %104, %100
  %263 = phi i32 [ %244, %241 ], [ -2, %104 ], [ -22, %100 ], [ %244, %246 ], [ %244, %258 ]
  %264 = phi ptr [ %243, %241 ], [ null, %104 ], [ null, %100 ], [ %243, %246 ], [ %243, %258 ]
  %265 = phi ptr [ null, %241 ], [ null, %104 ], [ null, %100 ], [ %242, %246 ], [ %242, %258 ]
  call void @kfree(ptr noundef %265) #11
  call void @drm_mode_destroy(ptr noundef %0, ptr noundef %264) #11
  br label %266

266:                                              ; preds = %262, %82
  %267 = phi i32 [ %83, %82 ], [ %263, %262 ]
  %268 = icmp eq i32 %267, -35
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = call i32 @drm_modeset_backoff(ptr noundef nonnull %5) #11
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %82, label %272

272:                                              ; preds = %269, %266
  %273 = phi i32 [ %270, %269 ], [ %267, %266 ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %5) #11
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %5) #11
  %274 = load ptr, ptr %7, align 4
  %275 = getelementptr inbounds %struct.drm_driver, ptr %274, i32 0, i32 24
  %276 = load i32, ptr %275, align 4
  %277 = load i32, ptr %11, align 4
  %278 = and i32 %276, 16
  %279 = and i32 %278, %277
  %280 = icmp eq i32 %279, 16
  br i1 %280, label %289, label %281

281:                                              ; preds = %272
  %282 = load ptr, ptr %80, align 4
  %283 = icmp eq ptr %282, null
  br i1 %283, label %288, label %284

284:                                              ; preds = %281
  %285 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %282, i32 0, i32 5
  %286 = load ptr, ptr %285, align 4
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %289

288:                                              ; preds = %284, %281
  call void @mutex_unlock(ptr noundef %6) #11
  br label %289

289:                                              ; preds = %288, %284, %272, %43, %32, %20, %16, %3
  %290 = phi i32 [ -2, %32 ], [ -95, %3 ], [ -34, %20 ], [ -34, %16 ], [ -13, %43 ], [ %273, %288 ], [ %273, %284 ], [ %273, %272 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  ret i32 %290
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_lease_held(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock_all_ctx(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_framebuffer_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_convert_umode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_mode_status_name(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_debug_printmodeline(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_check_pixel_format(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_destroy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_crtc_set_obj_prop(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr i8, ptr %0, i32 276
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 -52
  %11 = tail call i32 %7(ptr noundef %10, ptr noundef %1, i64 noundef %2) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i32 @drm_object_property_set_value(ptr noundef %0, ptr noundef %1, i64 noundef %2) #11
  br label %15

15:                                               ; preds = %13, %9, %3
  %16 = phi i32 [ 0, %13 ], [ %11, %9 ], [ -22, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_object_property_set_value(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_crtc_create_scaling_filter_property(ptr noundef %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call ptr @drm_create_scaling_filter_prop(ptr noundef %3, i32 noundef %1) #11
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = ptrtoint ptr %4 to i32
  br label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  tail call void @drm_object_attach_property(ptr noundef %9, ptr noundef %4, i64 noundef 0) #11
  %10 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 21
  store ptr %4, ptr %10, align 8
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ %7, %6 ], [ 0, %8 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_create_scaling_filter_prop(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @drm_crtc_fence_get_driver_name(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @drm_crtc_fence_ops
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_crtc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 171, 0\0A.popsection", ""() #11, !srcloc !17
  unreachable

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr i8, ptr %7, i32 -708
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_driver, ptr %11, i32 0, i32 21
  %13 = load ptr, ptr %12, align 4
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @drm_crtc_fence_get_timeline_name(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @drm_crtc_fence_ops
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_crtc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 171, 0\0A.popsection", ""() #11, !srcloc !17
  unreachable

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr i8, ptr %7, i32 8
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_object_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kvasprintf(i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @drmm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_object_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #4

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 1073205, i32 2146410443}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i8 0, i8 2}
!13 = !{i64 3204025}
!14 = !{i64 3204222}
!15 = !{i64 2150689501}
!16 = !{i64 2155129437, i64 2155129717, i64 2155130051, i64 2155130385}
!17 = !{i64 2155096153, i64 2155096644, i64 2155096190, i64 2155096246, i64 2155096280, i64 2155096304, i64 2155096345, i64 2155096366, i64 2155096394, i64 2155096428}
