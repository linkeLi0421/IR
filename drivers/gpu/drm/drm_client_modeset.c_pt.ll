; ModuleID = '/llk/IR/drivers/gpu/drm/drm_client_modeset.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_client_modeset.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_modeset_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_modeset_probe\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_modeset_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_rotation:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_rotation\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_rotation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_modeset_check:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_modeset_check\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_modeset_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_modeset_commit_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_modeset_commit_locked\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_modeset_commit_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_modeset_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_modeset_commit\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_modeset_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_modeset_dpms:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_modeset_dpms\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_modeset_dpms:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
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
%struct.anon.73 = type { i32, ptr }
%struct.drm_client_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, ptr }
%struct.drm_mode_set = type { ptr, ptr, ptr, i32, i32, ptr, i32 }
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
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_client_offset = type { i32, i32 }
%struct.drm_tile_group = type { %struct.kref, ptr, i32, [8 x i8] }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_property = type { %struct.list_head, %struct.drm_mode_object, i32, [32 x i8], i32, ptr, ptr, %struct.list_head }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@drm_client_modeset_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [23 x i8] c"&client->modeset_mutex\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Memory allocation failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"No connectors reported connected with modes\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"picking CRTCs for %dx%d config\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"desired mode %s set on crtc %d (%d,%d)\0A\00", align 1
@drm_client_modeset_probe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"drivers/gpu/drm/drm_client_modeset.c\00", align 1
@__kstrtab_drm_client_modeset_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_modeset_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_modeset_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_modeset_probe to i32), ptr @__kstrtab_drm_client_modeset_probe, ptr @__kstrtabns_drm_client_modeset_probe }, section "___ksymtab+drm_client_modeset_probe", align 4
@__kstrtab_drm_client_rotation = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_rotation = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_rotation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_rotation to i32), ptr @__kstrtab_drm_client_rotation, ptr @__kstrtabns_drm_client_rotation }, section "___ksymtab+drm_client_rotation", align 4
@__kstrtab_drm_client_modeset_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_modeset_check = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_modeset_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_modeset_check to i32), ptr @__kstrtab_drm_client_modeset_check, ptr @__kstrtabns_drm_client_modeset_check }, section "___ksymtab+drm_client_modeset_check", align 4
@__kstrtab_drm_client_modeset_commit_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_modeset_commit_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_modeset_commit_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_modeset_commit_locked to i32), ptr @__kstrtab_drm_client_modeset_commit_locked, ptr @__kstrtabns_drm_client_modeset_commit_locked }, section "___ksymtab+drm_client_modeset_commit_locked", align 4
@__kstrtab_drm_client_modeset_commit = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_modeset_commit = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_modeset_commit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_modeset_commit to i32), ptr @__kstrtab_drm_client_modeset_commit, ptr @__kstrtabns_drm_client_modeset_commit }, section "___ksymtab+drm_client_modeset_commit", align 4
@__kstrtab_drm_client_modeset_dpms = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_modeset_dpms = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_modeset_dpms = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_modeset_dpms to i32), ptr @__kstrtab_drm_client_modeset_dpms, ptr @__kstrtabns_drm_client_modeset_dpms }, section "___ksymtab+drm_client_modeset_dpms", align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"connector %d enabled? %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"non desktop\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"connector %s not enabled, skipping\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"connector %s is disabled by user, skipping\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"connector %s has no encoder or crtc, skipping\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"fallback: cloned configuration\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"looking for cmdline mode on connector %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"looking for preferred mode on connector %s %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"using first mode listed on connector %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"looking for current mode on connector %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"Falling back to non tiled mode on Connector %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"connector %s on [CRTC:%d:%s]: %dx%d%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"fallback: Not all outputs enabled\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Enabled: %i, detected: %i\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"Not using firmware configuration\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"can clone using command line\0A\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"can clone using 1024x768\0A\00", align 1
@.str.29 = private unnamed_addr constant [63 x i8] c"\016[drm] kms: can't enable cloning when we probably wanted to.\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"looking for cmdline mode on connector %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"looking for preferred mode on connector %d %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"found mode %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"no modes for connector tiled %d %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"returned %d %d for %d %d\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_drm_client_modeset_check, ptr @__ksymtab_drm_client_modeset_commit, ptr @__ksymtab_drm_client_modeset_commit_locked, ptr @__ksymtab_drm_client_modeset_dpms, ptr @__ksymtab_drm_client_modeset_probe, ptr @__ksymtab_drm_client_rotation], section "llvm.metadata"
@switch.table.drm_client_rotation = private unnamed_addr constant [3 x i32] [i32 4, i32 2, i32 8], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_client_modeset_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 19
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 28) #11
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %8, label %10, !prof !8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 6
  store ptr null, ptr %9, align 4
  br label %48

10:                                               ; preds = %1
  %11 = extractvalue { i32, i1 } %6, 0
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #12
  %13 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 6
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @drm_client_modeset_create.__key) #11
  %17 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 20
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %29, label %20

20:                                               ; preds = %20, %15
  %21 = phi ptr [ %27, %20 ], [ %18, %15 ]
  %22 = phi i32 [ %25, %20 ], [ 0, %15 ]
  %23 = getelementptr i8, ptr %21, i32 -8
  %24 = load ptr, ptr %13, align 4
  %25 = add i32 %22, 1
  %26 = getelementptr %struct.drm_mode_set, ptr %24, i32 %22, i32 1
  store ptr %23, ptr %26, align 4
  %27 = load ptr, ptr %21, align 4
  %28 = icmp eq ptr %27, %17
  br i1 %28, label %29, label %20

29:                                               ; preds = %20, %15
  %30 = load ptr, ptr %13, align 4
  %31 = getelementptr inbounds %struct.drm_mode_set, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %29
  %35 = icmp eq i32 %4, 1
  %36 = select i1 %35, i32 32, i32 4
  br label %42

37:                                               ; preds = %42
  %38 = getelementptr %struct.drm_mode_set, ptr %43, i32 1
  %39 = getelementptr %struct.drm_mode_set, ptr %43, i32 1, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %37, %34
  %43 = phi ptr [ %30, %34 ], [ %38, %37 ]
  %44 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #12
  %45 = getelementptr inbounds %struct.drm_mode_set, ptr %43, i32 0, i32 5
  store ptr %44, ptr %45, align 4
  %46 = icmp eq ptr %44, null
  br i1 %46, label %47, label %37

47:                                               ; preds = %42
  tail call void @drm_client_modeset_free(ptr noundef %0)
  br label %48

48:                                               ; preds = %47, %37, %29, %10, %8
  %49 = phi i32 [ -12, %47 ], [ -12, %10 ], [ -12, %8 ], [ 0, %29 ], [ 0, %37 ]
  ret i32 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_client_modeset_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_mode_set, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %29, %1
  %9 = phi ptr [ %30, %29 ], [ %4, %1 ]
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.drm_mode_set, ptr %9, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void @drm_mode_destroy(ptr noundef %10, ptr noundef %12) #11
  store ptr null, ptr %11, align 4
  store ptr null, ptr %9, align 4
  %13 = getelementptr inbounds %struct.drm_mode_set, ptr %9, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.drm_mode_set, ptr %9, i32 0, i32 5
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ 0, %16 ], [ %26, %18 ]
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr ptr, ptr %20, i32 %19
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_connector, ptr %22, i32 0, i32 6
  tail call void @drm_mode_object_put(ptr noundef %23) #11
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr ptr, ptr %24, i32 %19
  store ptr null, ptr %25, align 4
  %26 = add nuw i32 %19, 1
  %27 = load i32, ptr %13, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %18, label %29

29:                                               ; preds = %18, %8
  store i32 0, ptr %13, align 4
  %30 = getelementptr %struct.drm_mode_set, ptr %9, i32 1
  %31 = getelementptr %struct.drm_mode_set, ptr %9, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %8

34:                                               ; preds = %29
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.drm_mode_set, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %39, %34
  %40 = phi ptr [ %43, %39 ], [ %35, %34 ]
  %41 = getelementptr inbounds %struct.drm_mode_set, ptr %40, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  tail call void @kfree(ptr noundef %42) #11
  %43 = getelementptr %struct.drm_mode_set, ptr %40, i32 1
  %44 = getelementptr %struct.drm_mode_set, ptr %40, i32 1, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %39

47:                                               ; preds = %39, %34, %1
  tail call void @mutex_unlock(ptr noundef %2) #11
  %48 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %48) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_client_modeset_probe(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %5 = alloca %struct.drm_connector_list_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store i64 0, ptr %5, align 8, !annotation !9
  %6 = load ptr, ptr %0, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1) #11
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 25
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %1, %3 ], [ %10, %8 ]
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 26
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %2, %11 ], [ %16, %14 ]
  call void @drm_connector_list_iter_begin(ptr noundef %6, ptr noundef nonnull %5) #11
  %19 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %5) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  call void @drm_connector_list_iter_end(ptr noundef nonnull %5) #11
  br label %882

22:                                               ; preds = %37, %17
  %23 = phi ptr [ %40, %37 ], [ %19, %17 ]
  %24 = phi i32 [ %39, %37 ], [ 0, %17 ]
  %25 = phi ptr [ %38, %37 ], [ null, %17 ]
  %26 = getelementptr inbounds %struct.drm_connector, ptr %23, i32 0, i32 10
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 18
  br i1 %28, label %37, label %29

29:                                               ; preds = %22
  %30 = add i32 %24, 1
  %31 = shl i32 %30, 2
  %32 = call noalias ptr @krealloc(ptr noundef %25, i32 noundef %31, i32 noundef 3264) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %869, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.drm_connector, ptr %23, i32 0, i32 6
  call void @drm_mode_object_get(ptr noundef %35) #11
  %36 = getelementptr ptr, ptr %32, i32 %24
  store ptr %23, ptr %36, align 4
  br label %37

37:                                               ; preds = %34, %22
  %38 = phi ptr [ %25, %22 ], [ %32, %34 ]
  %39 = phi i32 [ %24, %22 ], [ %30, %34 ]
  %40 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %5) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %22

42:                                               ; preds = %37
  call void @drm_connector_list_iter_end(ptr noundef nonnull %5) #11
  %43 = icmp eq i32 %39, 0
  br i1 %43, label %882, label %44

44:                                               ; preds = %42
  %45 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 4) #11
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %51, label %47, !prof !8

47:                                               ; preds = %44
  %48 = extractvalue { i32, i1 } %45, 0
  %49 = call noalias align 64 ptr @__kmalloc(i32 noundef %48, i32 noundef 3520) #12
  %50 = call noalias align 64 ptr @__kmalloc(i32 noundef %48, i32 noundef 3520) #12
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi ptr [ %49, %47 ], [ null, %44 ]
  %53 = phi ptr [ %50, %47 ], [ null, %44 ]
  %54 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 8) #11
  %55 = extractvalue { i32, i1 } %54, 1
  br i1 %55, label %59, label %56, !prof !8

56:                                               ; preds = %51
  %57 = extractvalue { i32, i1 } %54, 0
  %58 = call noalias align 64 ptr @__kmalloc(i32 noundef %57, i32 noundef 3520) #12
  br label %59

59:                                               ; preds = %56, %51
  %60 = phi ptr [ %58, %56 ], [ null, %51 ]
  %61 = call noalias align 64 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #12
  %62 = icmp ne ptr %52, null
  %63 = icmp ne ptr %53, null
  %64 = select i1 %62, i1 %63, i1 false
  %65 = icmp ne ptr %61, null
  %66 = select i1 %64, i1 %65, i1 false
  %67 = icmp ne ptr %60, null
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %70, label %69

69:                                               ; preds = %59
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #11
  br label %867

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 5
  call void @mutex_lock(ptr noundef %71) #11
  %72 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30
  call void @mutex_lock(ptr noundef %72) #11
  br label %73

73:                                               ; preds = %73, %70
  %74 = phi i32 [ 0, %70 ], [ %84, %73 ]
  %75 = phi i32 [ 0, %70 ], [ %83, %73 ]
  %76 = getelementptr ptr, ptr %38, i32 %74
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.drm_connector, ptr %77, i32 0, i32 21
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.drm_connector_funcs, ptr %79, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 %81(ptr noundef %77, i32 noundef %12, i32 noundef %18) #11
  %83 = add i32 %82, %75
  %84 = add nuw i32 %74, 1
  %85 = icmp eq i32 %84, %39
  br i1 %85, label %86, label %73

86:                                               ; preds = %73
  %87 = icmp eq i32 %83, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %86
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3) #11
  br label %89

89:                                               ; preds = %88, %86
  br label %90

90:                                               ; preds = %107, %89
  %91 = phi i32 [ %120, %107 ], [ 0, %89 ]
  %92 = phi i1 [ %119, %107 ], [ false, %89 ]
  %93 = getelementptr ptr, ptr %38, i32 %91
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.drm_connector, ptr %94, i32 0, i32 20, i32 17
  %96 = load i8, ptr %95, align 8, !range !10
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %90
  %99 = getelementptr i8, ptr %61, i32 %91
  store i8 0, ptr %99, align 1
  br label %107

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.drm_connector, ptr %94, i32 0, i32 18
  %102 = load i32, ptr %101, align 8
  %103 = icmp eq i32 %102, 1
  %104 = getelementptr i8, ptr %61, i32 %91
  %105 = zext i1 %103 to i8
  store i8 %105, ptr %104, align 1
  %106 = select i1 %103, ptr @.str.10, ptr @.str.11
  br label %107

107:                                              ; preds = %100, %98
  %108 = phi ptr [ %99, %98 ], [ %104, %100 ]
  %109 = phi ptr [ @.str.11, %98 ], [ %106, %100 ]
  %110 = getelementptr inbounds %struct.drm_connector, ptr %94, i32 0, i32 6
  %111 = load i32, ptr %110, align 8
  %112 = load i8, ptr %95, align 8, !range !10
  %113 = icmp eq i8 %112, 0
  %114 = select i1 %113, ptr %109, ptr @.str.9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %111, ptr noundef nonnull %114) #11
  %115 = load i8, ptr %108, align 1, !range !10
  %116 = zext i8 %115 to i32
  %117 = zext i1 %92 to i32
  %118 = or i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = add nuw i32 %91, 1
  %121 = icmp eq i32 %120, %39
  br i1 %121, label %122, label %90

122:                                              ; preds = %107
  br i1 %119, label %140, label %123

123:                                              ; preds = %134, %122
  %124 = phi i32 [ %138, %134 ], [ 0, %122 ]
  %125 = getelementptr ptr, ptr %38, i32 %124
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.drm_connector, ptr %126, i32 0, i32 20, i32 17
  %128 = load i8, ptr %127, align 8, !range !10
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.drm_connector, ptr %126, i32 0, i32 18
  %132 = load i32, ptr %131, align 8
  %133 = icmp ne i32 %132, 2
  br label %134

134:                                              ; preds = %130, %123
  %135 = phi i1 [ false, %123 ], [ %133, %130 ]
  %136 = getelementptr i8, ptr %61, i32 %124
  %137 = zext i1 %135 to i8
  store i8 %137, ptr %136, align 1
  %138 = add nuw i32 %124, 1
  %139 = icmp eq i32 %138, %39
  br i1 %139, label %140, label %123

140:                                              ; preds = %134, %122
  %141 = call i32 @llvm.umin.i32(i32 %39, i32 32) #11
  %142 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false) #11, !annotation !9
  %143 = getelementptr inbounds %struct.drm_device, ptr %142, i32 0, i32 4
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.drm_driver, ptr %144, i32 0, i32 24
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr inbounds %struct.drm_device, ptr %142, i32 0, i32 10
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %146, 16
  %150 = and i32 %149, %148
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %140
  %153 = getelementptr inbounds %struct.drm_device, ptr %142, i32 0, i32 30, i32 27
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %403, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %154, i32 0, i32 5
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %403, label %160

160:                                              ; preds = %156, %140
  %161 = icmp eq i32 %141, 0
  br i1 %161, label %162, label %163, !prof !8

162:                                              ; preds = %160
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 581, i32 noundef 9, ptr noundef null) #11
  br label %403

163:                                              ; preds = %160
  %164 = call noalias align 64 ptr @__kmalloc(i32 noundef %141, i32 noundef 3520) #12
  %165 = icmp eq ptr %164, null
  br i1 %165, label %403, label %166

166:                                              ; preds = %163
  call void @drm_modeset_acquire_init(ptr noundef nonnull %4, i32 noundef 0) #11
  %167 = call i32 @drm_modeset_lock_all_ctx(ptr noundef %142, ptr noundef nonnull %4) #11
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %169, %166
  %170 = call i32 @drm_modeset_backoff(ptr noundef nonnull %4) #11
  %171 = call i32 @drm_modeset_lock_all_ctx(ptr noundef %142, ptr noundef nonnull %4) #11
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %169

173:                                              ; preds = %169, %166
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %164, ptr nonnull align 64 %61, i32 %141, i1 false) #11
  %174 = sub nuw nsw i32 32, %141
  %175 = call i32 @llvm.umax.i32(i32 %141, i32 1) #11
  br label %179

176:                                              ; preds = %193
  %177 = lshr i32 -1, %174
  %178 = call i32 @llvm.smax.i32(i32 %141, i32 1) #11
  br label %197

179:                                              ; preds = %193, %173
  %180 = phi i32 [ %194, %193 ], [ 0, %173 ]
  %181 = phi i32 [ %195, %193 ], [ 0, %173 ]
  %182 = getelementptr ptr, ptr %38, i32 %181
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.drm_connector, ptr %183, i32 0, i32 54
  %185 = load i8, ptr %184, align 8, !range !10
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %179
  %188 = getelementptr inbounds %struct.drm_connector, ptr %183, i32 0, i32 18
  %189 = load i32, ptr %188, align 8
  %190 = icmp eq i32 %189, 1
  %191 = zext i1 %190 to i32
  %192 = add i32 %180, %191
  br label %193

193:                                              ; preds = %187, %179
  %194 = phi i32 [ %180, %179 ], [ %192, %187 ]
  %195 = add nuw nsw i32 %181, 1
  %196 = icmp eq i32 %195, %175
  br i1 %196, label %176, label %179

197:                                              ; preds = %389, %176
  %198 = phi i1 [ %383, %389 ], [ true, %176 ]
  %199 = phi i32 [ %384, %389 ], [ 0, %176 ]
  %200 = phi i32 [ %385, %389 ], [ 0, %176 ]
  %201 = phi i32 [ %386, %389 ], [ 0, %176 ]
  %202 = icmp eq i32 %201, 0
  br label %203

203:                                              ; preds = %382, %197
  %204 = phi i32 [ %201, %197 ], [ %386, %382 ]
  %205 = phi i32 [ %200, %197 ], [ %385, %382 ]
  %206 = phi i32 [ %199, %197 ], [ %384, %382 ]
  %207 = phi i1 [ %198, %197 ], [ %383, %382 ]
  %208 = phi i32 [ 0, %197 ], [ %387, %382 ]
  %209 = getelementptr ptr, ptr %38, i32 %208
  %210 = load ptr, ptr %209, align 4
  %211 = shl nuw i32 1, %208
  %212 = and i32 %211, %204
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %382

214:                                              ; preds = %203
  br i1 %202, label %215, label %219

215:                                              ; preds = %214
  %216 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 54
  %217 = load i8, ptr %216, align 8, !range !10
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %382, label %219

219:                                              ; preds = %215, %214
  %220 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 18
  %221 = load i32, ptr %220, align 8
  %222 = icmp eq i32 %221, 1
  %223 = zext i1 %222 to i32
  %224 = add i32 %205, %223
  %225 = getelementptr i8, ptr %61, i32 %208
  %226 = load i8, ptr %225, align 1, !range !10
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %219
  %229 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 7
  %230 = load ptr, ptr %229, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef %230) #11
  %231 = or i32 %211, %204
  br label %382

232:                                              ; preds = %219
  %233 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 37
  %234 = load i32, ptr %233, align 4
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 7
  %238 = load ptr, ptr %237, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.13, ptr noundef %238) #11
  store i8 0, ptr %225, align 1
  br label %382

239:                                              ; preds = %232
  %240 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 52
  %241 = load ptr, ptr %240, align 8
  %242 = getelementptr inbounds %struct.drm_connector_state, ptr %241, i32 0, i32 2
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %251, label %245

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.drm_connector_state, ptr %241, i32 0, i32 1
  %247 = load ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %258, !prof !8

249:                                              ; preds = %245
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 634, i32 noundef 9, ptr noundef null) #11
  %250 = load i32, ptr %233, align 4
  br label %251

251:                                              ; preds = %249, %239
  %252 = phi i32 [ %250, %249 ], [ %234, %239 ]
  %253 = icmp ugt i32 %252, 1
  br i1 %253, label %402, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 7
  %256 = load ptr, ptr %255, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, ptr noundef %256) #11
  store i8 0, ptr %225, align 1
  %257 = or i32 %211, %204
  br label %382

258:                                              ; preds = %245
  %259 = add i32 %206, 1
  br label %263

260:                                              ; preds = %263
  %261 = add nuw nsw i32 %264, 1
  %262 = icmp eq i32 %261, %175
  br i1 %262, label %269, label %263

263:                                              ; preds = %260, %258
  %264 = phi i32 [ 0, %258 ], [ %261, %260 ]
  %265 = getelementptr ptr, ptr %52, i32 %264
  %266 = load ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, %247
  br i1 %267, label %268, label %260

268:                                              ; preds = %263
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.15) #11
  br label %402

269:                                              ; preds = %260
  %270 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 7
  %271 = load ptr, ptr %270, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.16, ptr noundef %271) #11
  %272 = call fastcc ptr @drm_connector_pick_cmdline_mode(ptr noundef %210) #11
  %273 = getelementptr ptr, ptr %53, i32 %208
  store ptr %272, ptr %273, align 4
  %274 = icmp eq ptr %272, null
  br i1 %274, label %275, label %320

275:                                              ; preds = %269
  %276 = load ptr, ptr %270, align 4
  %277 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 54
  %278 = load i8, ptr %277, align 8, !range !10
  %279 = zext i8 %278 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef %276, i32 noundef %279) #11
  %280 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 17
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, %280
  br i1 %282, label %302, label %283

283:                                              ; preds = %299, %275
  %284 = phi ptr [ %300, %299 ], [ %281, %275 ]
  %285 = getelementptr i8, ptr %284, i32 -60
  %286 = load i16, ptr %285, align 4
  %287 = zext i16 %286 to i32
  %288 = icmp slt i32 %12, %287
  br i1 %288, label %299, label %289

289:                                              ; preds = %283
  %290 = getelementptr i8, ptr %284, i32 -50
  %291 = load i16, ptr %290, align 2
  %292 = zext i16 %291 to i32
  %293 = icmp slt i32 %18, %292
  br i1 %293, label %299, label %294

294:                                              ; preds = %289
  %295 = getelementptr i8, ptr %284, i32 -2
  %296 = load i8, ptr %295, align 2
  %297 = and i8 %296, 8
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %294, %289, %283
  %300 = load ptr, ptr %284, align 4
  %301 = icmp eq ptr %300, %280
  br i1 %301, label %302, label %283

302:                                              ; preds = %299, %275
  store ptr null, ptr %273, align 4
  br label %306

303:                                              ; preds = %294
  %304 = getelementptr i8, ptr %284, i32 -64
  store ptr %304, ptr %273, align 4
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %320

306:                                              ; preds = %303, %302
  %307 = load volatile ptr, ptr %280, align 4
  %308 = icmp eq ptr %307, %280
  br i1 %308, label %314, label %309

309:                                              ; preds = %306
  %310 = load ptr, ptr %270, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef %310) #11
  %311 = load ptr, ptr %280, align 8
  %312 = getelementptr i8, ptr %311, i32 -64
  store ptr %312, ptr %273, align 4
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %320

314:                                              ; preds = %309, %306
  %315 = load ptr, ptr %270, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef %315) #11
  %316 = load ptr, ptr %240, align 8
  %317 = getelementptr inbounds %struct.drm_connector_state, ptr %316, i32 0, i32 1
  %318 = load ptr, ptr %317, align 4
  %319 = getelementptr inbounds %struct.drm_crtc, ptr %318, i32 0, i32 12
  store ptr %319, ptr %273, align 4
  br label %320

320:                                              ; preds = %314, %309, %303, %269
  %321 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 54
  %322 = load i8, ptr %321, align 8, !range !10
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %359, label %324

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 57
  %326 = load i8, ptr %325, align 1
  %327 = zext i8 %326 to i32
  %328 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 58
  %329 = load i8, ptr %328, align 2
  %330 = zext i8 %329 to i32
  %331 = mul nuw nsw i32 %330, %327
  %332 = icmp slt i32 %194, %331
  br i1 %332, label %333, label %359

333:                                              ; preds = %324
  %334 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 6
  %335 = load i32, ptr %334, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %335) #11
  %336 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 17
  %337 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 61
  %338 = getelementptr inbounds %struct.drm_connector, ptr %210, i32 0, i32 62
  br label %339

339:                                              ; preds = %348, %333
  %340 = phi ptr [ %336, %333 ], [ %341, %348 ]
  %341 = load ptr, ptr %340, align 4
  %342 = icmp eq ptr %341, %336
  br i1 %342, label %357, label %343

343:                                              ; preds = %339
  %344 = getelementptr i8, ptr %341, i32 -60
  %345 = load i16, ptr %344, align 4
  %346 = load i16, ptr %337, align 2
  %347 = icmp eq i16 %345, %346
  br i1 %347, label %348, label %353

348:                                              ; preds = %343
  %349 = getelementptr i8, ptr %341, i32 -50
  %350 = load i16, ptr %349, align 2
  %351 = load i16, ptr %338, align 8
  %352 = icmp eq i16 %350, %351
  br i1 %352, label %339, label %355

353:                                              ; preds = %343
  %354 = getelementptr i8, ptr %341, i32 -64
  br label %357

355:                                              ; preds = %348
  %356 = getelementptr i8, ptr %341, i32 -64
  br label %357

357:                                              ; preds = %355, %353, %339
  %358 = phi ptr [ %354, %353 ], [ %356, %355 ], [ null, %339 ]
  store ptr %358, ptr %273, align 4
  br label %359

359:                                              ; preds = %357, %324, %320
  %360 = getelementptr ptr, ptr %52, i32 %208
  store ptr %247, ptr %360, align 4
  %361 = load ptr, ptr %270, align 4
  %362 = load ptr, ptr %240, align 8
  %363 = getelementptr inbounds %struct.drm_connector_state, ptr %362, i32 0, i32 1
  %364 = load ptr, ptr %363, align 4
  %365 = getelementptr inbounds %struct.drm_crtc, ptr %364, i32 0, i32 5
  %366 = load i32, ptr %365, align 4
  %367 = getelementptr inbounds %struct.drm_crtc, ptr %364, i32 0, i32 3
  %368 = load ptr, ptr %367, align 8
  %369 = load ptr, ptr %273, align 4
  %370 = getelementptr inbounds %struct.drm_display_mode, ptr %369, i32 0, i32 1
  %371 = load i16, ptr %370, align 4
  %372 = zext i16 %371 to i32
  %373 = getelementptr inbounds %struct.drm_display_mode, ptr %369, i32 0, i32 6
  %374 = load i16, ptr %373, align 2
  %375 = zext i16 %374 to i32
  %376 = getelementptr inbounds %struct.drm_display_mode, ptr %369, i32 0, i32 11
  %377 = load i32, ptr %376, align 4
  %378 = and i32 %377, 16
  %379 = icmp eq i32 %378, 0
  %380 = select i1 %379, ptr @.str.23, ptr @.str.22
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef %361, i32 noundef %366, ptr noundef %368, i32 noundef %372, i32 noundef %375, ptr noundef nonnull %380) #11
  %381 = or i32 %211, %204
  br label %382

382:                                              ; preds = %359, %254, %236, %228, %215, %203
  %383 = phi i1 [ %207, %215 ], [ %207, %203 ], [ %207, %228 ], [ false, %359 ], [ %207, %254 ], [ %207, %236 ]
  %384 = phi i32 [ %206, %215 ], [ %206, %203 ], [ %206, %228 ], [ %259, %359 ], [ %206, %254 ], [ %206, %236 ]
  %385 = phi i32 [ %205, %215 ], [ %205, %203 ], [ %224, %228 ], [ %224, %359 ], [ %224, %254 ], [ %224, %236 ]
  %386 = phi i32 [ %204, %215 ], [ %204, %203 ], [ %231, %228 ], [ %381, %359 ], [ %257, %254 ], [ %204, %236 ]
  %387 = add nuw nsw i32 %208, 1
  %388 = icmp eq i32 %387, %178
  br i1 %388, label %389, label %203

389:                                              ; preds = %382
  %390 = and i32 %386, %177
  %391 = icmp eq i32 %390, %177
  %392 = icmp eq i32 %386, %201
  %393 = or i1 %392, %391
  br i1 %393, label %394, label %197

394:                                              ; preds = %389
  %395 = icmp eq i32 %384, %385
  br i1 %395, label %401, label %396

396:                                              ; preds = %394
  %397 = getelementptr inbounds %struct.drm_device, ptr %142, i32 0, i32 30, i32 19
  %398 = load i32, ptr %397, align 4
  %399 = icmp slt i32 %384, %398
  br i1 %399, label %400, label %401

400:                                              ; preds = %396
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.24) #11
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %384, i32 noundef %385) #11
  br label %402

401:                                              ; preds = %396, %394
  br i1 %383, label %402, label %404

402:                                              ; preds = %401, %400, %268, %251
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.26) #11
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %61, ptr nonnull align 64 %164, i32 %141, i1 false) #11
  call void @drm_modeset_drop_locks(ptr noundef nonnull %4) #11
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %4) #11
  call void @kfree(ptr noundef nonnull %164) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  br label %405

403:                                              ; preds = %163, %162, %156, %152
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  br label %405

404:                                              ; preds = %401
  call void @drm_modeset_drop_locks(ptr noundef nonnull %4) #11
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %4) #11
  call void @kfree(ptr noundef nonnull %164) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  br label %766

405:                                              ; preds = %403, %402
  %406 = shl i32 %39, 2
  call void @llvm.memset.p0.i32(ptr nonnull align 64 %53, i8 0, i32 %406, i1 false)
  call void @llvm.memset.p0.i32(ptr nonnull align 64 %52, i8 0, i32 %406, i1 false)
  %407 = shl i32 %39, 3
  call void @llvm.memset.p0.i32(ptr nonnull align 64 %60, i8 0, i32 %407, i1 false)
  %408 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 19
  %409 = load i32, ptr %408, align 4
  %410 = icmp sgt i32 %409, 1
  br i1 %410, label %495, label %411

411:                                              ; preds = %411, %405
  %412 = phi i32 [ %417, %411 ], [ 0, %405 ]
  %413 = phi i32 [ %418, %411 ], [ 0, %405 ]
  %414 = getelementptr i8, ptr %61, i32 %413
  %415 = load i8, ptr %414, align 1, !range !10
  %416 = zext i8 %415 to i32
  %417 = add i32 %412, %416
  %418 = add nuw i32 %413, 1
  %419 = icmp eq i32 %418, %39
  br i1 %419, label %420, label %411

420:                                              ; preds = %411
  %421 = icmp slt i32 %417, 2
  br i1 %421, label %495, label %422

422:                                              ; preds = %452, %420
  %423 = phi i32 [ %454, %452 ], [ 0, %420 ]
  %424 = phi i1 [ %453, %452 ], [ true, %420 ]
  %425 = getelementptr i8, ptr %61, i32 %423
  %426 = load i8, ptr %425, align 1, !range !10
  %427 = icmp eq i8 %426, 0
  br i1 %427, label %452, label %428

428:                                              ; preds = %422
  %429 = getelementptr ptr, ptr %38, i32 %423
  %430 = load ptr, ptr %429, align 4
  %431 = call fastcc ptr @drm_connector_pick_cmdline_mode(ptr noundef %430) #11
  %432 = getelementptr ptr, ptr %53, i32 %423
  store ptr %431, ptr %432, align 4
  %433 = icmp eq ptr %431, null
  br i1 %433, label %457, label %434

434:                                              ; preds = %428
  %435 = icmp sgt i32 %423, 0
  br i1 %435, label %436, label %452

436:                                              ; preds = %448, %434
  %437 = phi i32 [ %450, %448 ], [ 0, %434 ]
  %438 = phi i1 [ %449, %448 ], [ %424, %434 ]
  %439 = getelementptr i8, ptr %61, i32 %437
  %440 = load i8, ptr %439, align 1, !range !10
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %448, label %442

442:                                              ; preds = %436
  %443 = getelementptr ptr, ptr %53, i32 %437
  %444 = load ptr, ptr %443, align 4
  %445 = load ptr, ptr %432, align 4
  %446 = call zeroext i1 @drm_mode_match(ptr noundef %444, ptr noundef %445, i32 noundef 15) #11
  %447 = select i1 %446, i1 %438, i1 false
  br label %448

448:                                              ; preds = %442, %436
  %449 = phi i1 [ %438, %436 ], [ %447, %442 ]
  %450 = add nuw nsw i32 %437, 1
  %451 = icmp eq i32 %450, %423
  br i1 %451, label %452, label %436

452:                                              ; preds = %448, %434, %422
  %453 = phi i1 [ %424, %422 ], [ %424, %434 ], [ %449, %448 ]
  %454 = add nuw i32 %423, 1
  %455 = icmp eq i32 %454, %39
  br i1 %455, label %456, label %422

456:                                              ; preds = %452
  br i1 %453, label %762, label %457

457:                                              ; preds = %456, %428
  %458 = call ptr @drm_mode_find_dmt(ptr noundef %6, i32 noundef 1024, i32 noundef 768, i32 noundef 60, i1 noundef zeroext false) #11
  br label %459

459:                                              ; preds = %488, %457
  %460 = phi i32 [ %490, %488 ], [ 0, %457 ]
  %461 = phi i1 [ %489, %488 ], [ true, %457 ]
  %462 = getelementptr i8, ptr %61, i32 %460
  %463 = load i8, ptr %462, align 1, !range !10
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %488, label %465

465:                                              ; preds = %459
  %466 = getelementptr ptr, ptr %38, i32 %460
  %467 = load ptr, ptr %466, align 4
  %468 = getelementptr inbounds %struct.drm_connector, ptr %467, i32 0, i32 17
  %469 = load ptr, ptr %468, align 4
  %470 = icmp eq ptr %469, %468
  br i1 %470, label %483, label %471

471:                                              ; preds = %465
  %472 = getelementptr ptr, ptr %53, i32 %460
  br label %473

473:                                              ; preds = %478, %471
  %474 = phi ptr [ %469, %471 ], [ %479, %478 ]
  %475 = getelementptr i8, ptr %474, i32 -64
  %476 = call zeroext i1 @drm_mode_match(ptr noundef %475, ptr noundef %458, i32 noundef 15) #11
  br i1 %476, label %477, label %478

477:                                              ; preds = %473
  store ptr %475, ptr %472, align 4
  br label %478

478:                                              ; preds = %477, %473
  %479 = load ptr, ptr %474, align 4
  %480 = load ptr, ptr %466, align 4
  %481 = getelementptr inbounds %struct.drm_connector, ptr %480, i32 0, i32 17
  %482 = icmp eq ptr %479, %481
  br i1 %482, label %483, label %473

483:                                              ; preds = %478, %465
  %484 = getelementptr ptr, ptr %53, i32 %460
  %485 = load ptr, ptr %484, align 4
  %486 = icmp ne ptr %485, null
  %487 = select i1 %486, i1 %461, i1 false
  br label %488

488:                                              ; preds = %483, %459
  %489 = phi i1 [ %461, %459 ], [ %487, %483 ]
  %490 = add nuw i32 %460, 1
  %491 = icmp eq i32 %490, %39
  br i1 %491, label %492, label %459

492:                                              ; preds = %488
  br i1 %489, label %762, label %493

493:                                              ; preds = %492
  %494 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #14
  br label %495

495:                                              ; preds = %493, %420, %405
  %496 = zext i32 %39 to i64
  %497 = shl nsw i64 -1, %496
  br label %498

498:                                              ; preds = %512, %495
  %499 = phi i32 [ %514, %512 ], [ 0, %495 ]
  %500 = phi i32 [ %513, %512 ], [ 0, %495 ]
  %501 = getelementptr ptr, ptr %38, i32 %499
  %502 = load ptr, ptr %501, align 4
  %503 = getelementptr inbounds %struct.drm_connector, ptr %502, i32 0, i32 54
  %504 = load i8, ptr %503, align 8, !range !10
  %505 = icmp eq i8 %504, 0
  br i1 %505, label %512, label %506

506:                                              ; preds = %498
  %507 = getelementptr inbounds %struct.drm_connector, ptr %502, i32 0, i32 18
  %508 = load i32, ptr %507, align 8
  %509 = icmp eq i32 %508, 1
  %510 = zext i1 %509 to i32
  %511 = add i32 %500, %510
  br label %512

512:                                              ; preds = %506, %498
  %513 = phi i32 [ %500, %498 ], [ %511, %506 ]
  %514 = add nuw i32 %499, 1
  %515 = icmp eq i32 %514, %39
  br i1 %515, label %516, label %498

516:                                              ; preds = %512
  %517 = xor i64 %497, -1
  br label %518

518:                                              ; preds = %758, %516
  %519 = phi i64 [ %755, %758 ], [ 0, %516 ]
  %520 = phi i32 [ %761, %758 ], [ 0, %516 ]
  %521 = add i32 %520, -1
  br label %522

522:                                              ; preds = %754, %518
  %523 = phi i32 [ 0, %518 ], [ %756, %754 ]
  %524 = phi i64 [ %519, %518 ], [ %755, %754 ]
  %525 = getelementptr ptr, ptr %38, i32 %523
  %526 = load ptr, ptr %525, align 4
  %527 = zext i32 %523 to i64
  %528 = shl nuw i64 1, %527
  %529 = and i64 %528, %524
  %530 = icmp eq i64 %529, 0
  br i1 %530, label %531, label %754

531:                                              ; preds = %522
  %532 = getelementptr i8, ptr %61, i32 %523
  %533 = load i8, ptr %532, align 1, !range !10
  %534 = icmp eq i8 %533, 0
  br i1 %534, label %535, label %537

535:                                              ; preds = %531
  %536 = or i64 %528, %524
  br label %754

537:                                              ; preds = %531
  switch i32 %520, label %550 [
    i32 0, label %538
    i32 1, label %542
  ]

538:                                              ; preds = %537
  %539 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 54
  %540 = load i8, ptr %539, align 8, !range !10
  %541 = icmp eq i8 %540, 0
  br i1 %541, label %550, label %754

542:                                              ; preds = %537
  %543 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 59
  %544 = load i8, ptr %543, align 1
  %545 = icmp eq i8 %544, 0
  br i1 %545, label %546, label %754

546:                                              ; preds = %542
  %547 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 60
  %548 = load i8, ptr %547, align 4
  %549 = icmp eq i8 %548, 0
  br i1 %549, label %607, label %754

550:                                              ; preds = %538, %537
  %551 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 59
  %552 = load i8, ptr %551, align 1
  %553 = zext i8 %552 to i32
  %554 = icmp eq i32 %521, %553
  %555 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 60
  %556 = load i8, ptr %555, align 4
  %557 = zext i8 %556 to i32
  %558 = icmp eq i32 %521, %557
  %559 = select i1 %554, i1 true, i1 %558
  br i1 %559, label %560, label %754

560:                                              ; preds = %550
  %561 = or i8 %556, %552
  %562 = icmp eq i8 %561, 0
  br label %563

563:                                              ; preds = %599, %560
  %564 = phi i32 [ 0, %560 ], [ %601, %599 ]
  %565 = phi i32 [ 0, %560 ], [ %600, %599 ]
  %566 = phi i32 [ 0, %560 ], [ %602, %599 ]
  %567 = getelementptr ptr, ptr %38, i32 %566
  %568 = load ptr, ptr %567, align 4
  %569 = getelementptr inbounds %struct.drm_connector, ptr %568, i32 0, i32 54
  %570 = load i8, ptr %569, align 8, !range !10
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %599, label %572

572:                                              ; preds = %563
  %573 = getelementptr ptr, ptr %53, i32 %566
  %574 = load ptr, ptr %573, align 4
  %575 = icmp ne ptr %574, null
  %576 = or i1 %562, %575
  br i1 %576, label %580, label %577

577:                                              ; preds = %572
  %578 = getelementptr inbounds %struct.drm_connector, ptr %568, i32 0, i32 6
  %579 = load i32, ptr %578, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.34, i32 noundef %566, i32 noundef %579) #11
  br label %599

580:                                              ; preds = %572
  %581 = getelementptr inbounds %struct.drm_connector, ptr %568, i32 0, i32 59
  %582 = load i8, ptr %581, align 1
  %583 = icmp ult i8 %582, %552
  br i1 %583, label %584, label %589

584:                                              ; preds = %580
  %585 = getelementptr inbounds %struct.drm_display_mode, ptr %574, i32 0, i32 1
  %586 = load i16, ptr %585, align 4
  %587 = zext i16 %586 to i32
  %588 = add i32 %565, %587
  br label %589

589:                                              ; preds = %584, %580
  %590 = phi i32 [ %588, %584 ], [ %565, %580 ]
  %591 = getelementptr inbounds %struct.drm_connector, ptr %568, i32 0, i32 60
  %592 = load i8, ptr %591, align 4
  %593 = icmp ult i8 %592, %556
  br i1 %593, label %594, label %599

594:                                              ; preds = %589
  %595 = getelementptr inbounds %struct.drm_display_mode, ptr %574, i32 0, i32 6
  %596 = load i16, ptr %595, align 2
  %597 = zext i16 %596 to i32
  %598 = add i32 %564, %597
  br label %599

599:                                              ; preds = %594, %589, %577, %563
  %600 = phi i32 [ %590, %594 ], [ %590, %589 ], [ %565, %577 ], [ %565, %563 ]
  %601 = phi i32 [ %598, %594 ], [ %564, %589 ], [ %564, %577 ], [ %564, %563 ]
  %602 = add nuw i32 %566, 1
  %603 = icmp eq i32 %602, %39
  br i1 %603, label %604, label %563

604:                                              ; preds = %599
  %605 = getelementptr %struct.drm_client_offset, ptr %60, i32 %523
  store i32 %600, ptr %605, align 8
  %606 = getelementptr %struct.drm_client_offset, ptr %60, i32 %523, i32 1
  store i32 %601, ptr %606, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef %600, i32 noundef %601, i32 noundef %553, i32 noundef %557) #11
  br label %607

607:                                              ; preds = %604, %546
  %608 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 6
  %609 = load i32, ptr %608, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %609) #11
  %610 = call fastcc ptr @drm_connector_pick_cmdline_mode(ptr noundef %526) #11
  %611 = getelementptr ptr, ptr %53, i32 %523
  store ptr %610, ptr %611, align 4
  %612 = icmp eq ptr %610, null
  br i1 %612, label %613, label %654

613:                                              ; preds = %607
  %614 = load i32, ptr %608, align 8
  %615 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 55
  %616 = load ptr, ptr %615, align 4
  %617 = icmp eq ptr %616, null
  br i1 %617, label %621, label %618

618:                                              ; preds = %613
  %619 = getelementptr inbounds %struct.drm_tile_group, ptr %616, i32 0, i32 2
  %620 = load i32, ptr %619, align 4
  br label %621

621:                                              ; preds = %618, %613
  %622 = phi i32 [ %620, %618 ], [ 0, %613 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %614, i32 noundef %622) #11
  %623 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 17
  %624 = load ptr, ptr %623, align 4
  %625 = icmp eq ptr %624, %623
  br i1 %625, label %645, label %626

626:                                              ; preds = %642, %621
  %627 = phi ptr [ %643, %642 ], [ %624, %621 ]
  %628 = getelementptr i8, ptr %627, i32 -60
  %629 = load i16, ptr %628, align 4
  %630 = zext i16 %629 to i32
  %631 = icmp slt i32 %12, %630
  br i1 %631, label %642, label %632

632:                                              ; preds = %626
  %633 = getelementptr i8, ptr %627, i32 -50
  %634 = load i16, ptr %633, align 2
  %635 = zext i16 %634 to i32
  %636 = icmp slt i32 %18, %635
  br i1 %636, label %642, label %637

637:                                              ; preds = %632
  %638 = getelementptr i8, ptr %627, i32 -2
  %639 = load i8, ptr %638, align 2
  %640 = and i8 %639, 8
  %641 = icmp eq i8 %640, 0
  br i1 %641, label %642, label %646

642:                                              ; preds = %637, %632, %626
  %643 = load ptr, ptr %627, align 4
  %644 = icmp eq ptr %643, %623
  br i1 %644, label %645, label %626

645:                                              ; preds = %642, %621
  store ptr null, ptr %611, align 4
  br label %649

646:                                              ; preds = %637
  %647 = getelementptr i8, ptr %627, i32 -64
  store ptr %647, ptr %611, align 4
  %648 = icmp eq ptr %647, null
  br i1 %648, label %649, label %654

649:                                              ; preds = %646, %645
  %650 = load volatile ptr, ptr %623, align 4
  %651 = icmp eq ptr %650, %623
  br i1 %651, label %654, label %652

652:                                              ; preds = %649
  %653 = getelementptr i8, ptr %650, i32 -64
  store ptr %653, ptr %611, align 4
  br label %654

654:                                              ; preds = %652, %649, %646, %607
  %655 = phi ptr [ %610, %607 ], [ %653, %652 ], [ null, %649 ], [ %647, %646 ]
  %656 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 54
  %657 = load i8, ptr %656, align 8, !range !10
  %658 = icmp eq i8 %657, 0
  br i1 %658, label %748, label %659

659:                                              ; preds = %654
  %660 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 57
  %661 = load i8, ptr %660, align 1
  %662 = zext i8 %661 to i32
  %663 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 58
  %664 = load i8, ptr %663, align 2
  %665 = zext i8 %664 to i32
  %666 = mul nuw nsw i32 %665, %662
  %667 = icmp slt i32 %513, %666
  br i1 %667, label %700, label %668

668:                                              ; preds = %659
  %669 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 59
  %670 = load i8, ptr %669, align 1
  %671 = icmp eq i8 %670, 0
  br i1 %671, label %672, label %723

672:                                              ; preds = %668
  %673 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 60
  %674 = load i8, ptr %673, align 4
  %675 = icmp eq i8 %674, 0
  br i1 %675, label %676, label %723

676:                                              ; preds = %672
  %677 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 17
  %678 = load ptr, ptr %677, align 4
  %679 = icmp eq ptr %678, %677
  br i1 %679, label %700, label %680

680:                                              ; preds = %676
  %681 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 61
  %682 = load i16, ptr %681, align 2
  %683 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 62
  br label %684

684:                                              ; preds = %694, %680
  %685 = phi ptr [ %678, %680 ], [ %695, %694 ]
  %686 = getelementptr i8, ptr %685, i32 -60
  %687 = load i16, ptr %686, align 4
  %688 = icmp eq i16 %687, %682
  br i1 %688, label %689, label %694

689:                                              ; preds = %684
  %690 = getelementptr i8, ptr %685, i32 -50
  %691 = load i16, ptr %690, align 2
  %692 = load i16, ptr %683, align 8
  %693 = icmp eq i16 %691, %692
  br i1 %693, label %697, label %694

694:                                              ; preds = %689, %684
  %695 = load ptr, ptr %685, align 4
  %696 = icmp eq ptr %695, %677
  br i1 %696, label %700, label %684

697:                                              ; preds = %689
  %698 = getelementptr i8, ptr %685, i32 -64
  %699 = icmp eq ptr %698, null
  br i1 %699, label %700, label %723

700:                                              ; preds = %697, %694, %676, %659
  %701 = load i32, ptr %608, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %701) #11
  %702 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 17
  %703 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 61
  %704 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 62
  br label %705

705:                                              ; preds = %714, %700
  %706 = phi ptr [ %702, %700 ], [ %707, %714 ]
  %707 = load ptr, ptr %706, align 4
  %708 = icmp eq ptr %707, %702
  br i1 %708, label %746, label %709

709:                                              ; preds = %705
  %710 = getelementptr i8, ptr %707, i32 -60
  %711 = load i16, ptr %710, align 4
  %712 = load i16, ptr %703, align 2
  %713 = icmp eq i16 %711, %712
  br i1 %713, label %714, label %719

714:                                              ; preds = %709
  %715 = getelementptr i8, ptr %707, i32 -50
  %716 = load i16, ptr %715, align 2
  %717 = load i16, ptr %704, align 8
  %718 = icmp eq i16 %716, %717
  br i1 %718, label %705, label %721

719:                                              ; preds = %709
  %720 = getelementptr i8, ptr %707, i32 -64
  br label %746

721:                                              ; preds = %714
  %722 = getelementptr i8, ptr %707, i32 -64
  br label %746

723:                                              ; preds = %697, %672, %668
  %724 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 17
  %725 = load ptr, ptr %724, align 4
  %726 = icmp eq ptr %725, %724
  br i1 %726, label %746, label %727

727:                                              ; preds = %723
  %728 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 61
  %729 = load i16, ptr %728, align 2
  %730 = getelementptr inbounds %struct.drm_connector, ptr %526, i32 0, i32 62
  br label %731

731:                                              ; preds = %741, %727
  %732 = phi ptr [ %725, %727 ], [ %742, %741 ]
  %733 = getelementptr i8, ptr %732, i32 -60
  %734 = load i16, ptr %733, align 4
  %735 = icmp eq i16 %734, %729
  br i1 %735, label %736, label %741

736:                                              ; preds = %731
  %737 = getelementptr i8, ptr %732, i32 -50
  %738 = load i16, ptr %737, align 2
  %739 = load i16, ptr %730, align 8
  %740 = icmp eq i16 %738, %739
  br i1 %740, label %744, label %741

741:                                              ; preds = %736, %731
  %742 = load ptr, ptr %732, align 4
  %743 = icmp eq ptr %742, %724
  br i1 %743, label %746, label %731

744:                                              ; preds = %736
  %745 = getelementptr i8, ptr %732, i32 -64
  br label %746

746:                                              ; preds = %744, %741, %723, %721, %719, %705
  %747 = phi ptr [ %720, %719 ], [ %722, %721 ], [ %745, %744 ], [ null, %723 ], [ null, %705 ], [ null, %741 ]
  store ptr %747, ptr %611, align 4
  br label %748

748:                                              ; preds = %746, %654
  %749 = phi ptr [ %655, %654 ], [ %747, %746 ]
  %750 = icmp eq ptr %749, null
  %751 = getelementptr inbounds %struct.drm_display_mode, ptr %749, i32 0, i32 31
  %752 = select i1 %750, ptr @.str.33, ptr %751
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.32, ptr noundef %752) #11
  %753 = or i64 %528, %524
  br label %754

754:                                              ; preds = %748, %550, %546, %542, %538, %535, %522
  %755 = phi i64 [ %524, %522 ], [ %536, %535 ], [ %524, %538 ], [ %524, %542 ], [ %524, %546 ], [ %753, %748 ], [ %524, %550 ]
  %756 = add nuw i32 %523, 1
  %757 = icmp eq i32 %756, %39
  br i1 %757, label %758, label %522

758:                                              ; preds = %754
  %759 = and i64 %755, %517
  %760 = icmp eq i64 %759, %517
  %761 = add i32 %520, 1
  br i1 %760, label %764, label %518

762:                                              ; preds = %492, %456
  %763 = phi ptr [ @.str.27, %456 ], [ @.str.28, %492 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %763) #11
  br label %764

764:                                              ; preds = %762, %758
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %12, i32 noundef %18) #11
  %765 = call fastcc i32 @drm_client_pick_crtcs(ptr noundef %0, ptr noundef %38, i32 noundef %39, ptr noundef nonnull %52, ptr noundef nonnull %53, i32 noundef 0, i32 noundef %12, i32 noundef %18)
  br label %766

766:                                              ; preds = %764, %404
  call void @mutex_unlock(ptr noundef %72) #11
  %767 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 6
  %768 = load ptr, ptr %767, align 4
  %769 = getelementptr inbounds %struct.drm_mode_set, ptr %768, i32 0, i32 1
  %770 = load ptr, ptr %769, align 4
  %771 = icmp eq ptr %770, null
  br i1 %771, label %798, label %772

772:                                              ; preds = %793, %766
  %773 = phi ptr [ %794, %793 ], [ %768, %766 ]
  %774 = load ptr, ptr %0, align 4
  %775 = getelementptr inbounds %struct.drm_mode_set, ptr %773, i32 0, i32 2
  %776 = load ptr, ptr %775, align 4
  call void @drm_mode_destroy(ptr noundef %774, ptr noundef %776) #11
  store ptr null, ptr %775, align 4
  store ptr null, ptr %773, align 4
  %777 = getelementptr inbounds %struct.drm_mode_set, ptr %773, i32 0, i32 6
  %778 = load i32, ptr %777, align 4
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %793, label %780

780:                                              ; preds = %772
  %781 = getelementptr inbounds %struct.drm_mode_set, ptr %773, i32 0, i32 5
  br label %782

782:                                              ; preds = %782, %780
  %783 = phi i32 [ 0, %780 ], [ %790, %782 ]
  %784 = load ptr, ptr %781, align 4
  %785 = getelementptr ptr, ptr %784, i32 %783
  %786 = load ptr, ptr %785, align 4
  %787 = getelementptr inbounds %struct.drm_connector, ptr %786, i32 0, i32 6
  call void @drm_mode_object_put(ptr noundef %787) #11
  %788 = load ptr, ptr %781, align 4
  %789 = getelementptr ptr, ptr %788, i32 %783
  store ptr null, ptr %789, align 4
  %790 = add nuw i32 %783, 1
  %791 = load i32, ptr %777, align 4
  %792 = icmp ult i32 %790, %791
  br i1 %792, label %782, label %793

793:                                              ; preds = %782, %772
  store i32 0, ptr %777, align 4
  %794 = getelementptr %struct.drm_mode_set, ptr %773, i32 1
  %795 = getelementptr %struct.drm_mode_set, ptr %773, i32 1, i32 1
  %796 = load ptr, ptr %795, align 4
  %797 = icmp eq ptr %796, null
  br i1 %797, label %798, label %772

798:                                              ; preds = %793, %766
  %799 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 19
  br label %800

800:                                              ; preds = %862, %798
  %801 = phi i32 [ 0, %798 ], [ %863, %862 ]
  %802 = getelementptr ptr, ptr %53, i32 %801
  %803 = load ptr, ptr %802, align 4
  %804 = getelementptr ptr, ptr %52, i32 %801
  %805 = load ptr, ptr %804, align 4
  %806 = getelementptr %struct.drm_client_offset, ptr %60, i32 %801
  %807 = icmp ne ptr %803, null
  %808 = icmp ne ptr %805, null
  %809 = select i1 %807, i1 %808, i1 false
  br i1 %809, label %810, label %862

810:                                              ; preds = %800
  %811 = load ptr, ptr %767, align 4
  %812 = getelementptr inbounds %struct.drm_mode_set, ptr %811, i32 0, i32 1
  %813 = load ptr, ptr %812, align 4
  %814 = icmp eq ptr %813, null
  br i1 %814, label %824, label %815

815:                                              ; preds = %819, %810
  %816 = phi ptr [ %822, %819 ], [ %813, %810 ]
  %817 = phi ptr [ %820, %819 ], [ %811, %810 ]
  %818 = icmp eq ptr %816, %805
  br i1 %818, label %824, label %819

819:                                              ; preds = %815
  %820 = getelementptr %struct.drm_mode_set, ptr %817, i32 1
  %821 = getelementptr %struct.drm_mode_set, ptr %817, i32 1, i32 1
  %822 = load ptr, ptr %821, align 4
  %823 = icmp eq ptr %822, null
  br i1 %823, label %824, label %815

824:                                              ; preds = %819, %815, %810
  %825 = phi ptr [ null, %810 ], [ %817, %815 ], [ null, %819 ]
  %826 = getelementptr ptr, ptr %38, i32 %801
  %827 = load ptr, ptr %826, align 4
  %828 = getelementptr inbounds %struct.drm_display_mode, ptr %803, i32 0, i32 31
  %829 = getelementptr inbounds %struct.drm_crtc, ptr %805, i32 0, i32 5
  %830 = load i32, ptr %829, align 4
  %831 = load i32, ptr %806, align 8
  %832 = getelementptr %struct.drm_client_offset, ptr %60, i32 %801, i32 1
  %833 = load i32, ptr %832, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, ptr noundef %828, i32 noundef %830, i32 noundef %831, i32 noundef %833) #11
  %834 = getelementptr inbounds %struct.drm_mode_set, ptr %825, i32 0, i32 6
  %835 = load i32, ptr %834, align 4
  %836 = icmp eq i32 %835, 8
  br i1 %836, label %842, label %837

837:                                              ; preds = %824
  %838 = load i32, ptr %799, align 4
  %839 = icmp sgt i32 %838, 1
  %840 = icmp eq i32 %835, 1
  %841 = select i1 %839, i1 %840, i1 false
  br label %842

842:                                              ; preds = %837, %824
  %843 = phi i1 [ true, %824 ], [ %841, %837 ]
  %844 = load i1, ptr @drm_client_modeset_probe.__already_done, align 1
  %845 = xor i1 %844, true
  %846 = select i1 %843, i1 %845, i1 false
  br i1 %846, label %847, label %848, !prof !8

847:                                              ; preds = %842
  store i1 true, ptr @drm_client_modeset_probe.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 858, i32 noundef 9, ptr noundef null) #11
  br label %848

848:                                              ; preds = %847, %842
  br i1 %843, label %865, label %849

849:                                              ; preds = %848
  %850 = call ptr @drm_mode_duplicate(ptr noundef %6, ptr noundef nonnull %803) #11
  %851 = getelementptr inbounds %struct.drm_mode_set, ptr %825, i32 0, i32 2
  store ptr %850, ptr %851, align 4
  %852 = getelementptr inbounds %struct.drm_connector, ptr %827, i32 0, i32 6
  call void @drm_mode_object_get(ptr noundef %852) #11
  %853 = getelementptr inbounds %struct.drm_mode_set, ptr %825, i32 0, i32 5
  %854 = load ptr, ptr %853, align 4
  %855 = load i32, ptr %834, align 4
  %856 = add i32 %855, 1
  store i32 %856, ptr %834, align 4
  %857 = getelementptr ptr, ptr %854, i32 %855
  store ptr %827, ptr %857, align 4
  %858 = load i32, ptr %806, align 8
  %859 = getelementptr inbounds %struct.drm_mode_set, ptr %825, i32 0, i32 3
  store i32 %858, ptr %859, align 4
  %860 = load i32, ptr %832, align 4
  %861 = getelementptr inbounds %struct.drm_mode_set, ptr %825, i32 0, i32 4
  store i32 %860, ptr %861, align 4
  br label %862

862:                                              ; preds = %849, %800
  %863 = add nuw i32 %801, 1
  %864 = icmp eq i32 %863, %39
  br i1 %864, label %865, label %800

865:                                              ; preds = %862, %848
  %866 = phi i32 [ 0, %862 ], [ -22, %848 ]
  call void @mutex_unlock(ptr noundef %71) #11
  br label %867

867:                                              ; preds = %865, %69
  %868 = phi i32 [ %866, %865 ], [ -12, %69 ]
  call void @kfree(ptr noundef %52) #11
  call void @kfree(ptr noundef %53) #11
  call void @kfree(ptr noundef %60) #11
  call void @kfree(ptr noundef %61) #11
  br label %869

869:                                              ; preds = %867, %29
  %870 = phi ptr [ %38, %867 ], [ %25, %29 ]
  %871 = phi i32 [ %39, %867 ], [ %24, %29 ]
  %872 = phi i32 [ %868, %867 ], [ -12, %29 ]
  %873 = icmp eq i32 %871, 0
  br i1 %873, label %881, label %874

874:                                              ; preds = %874, %869
  %875 = phi i32 [ %879, %874 ], [ 0, %869 ]
  %876 = getelementptr ptr, ptr %870, i32 %875
  %877 = load ptr, ptr %876, align 4
  %878 = getelementptr inbounds %struct.drm_connector, ptr %877, i32 0, i32 6
  call void @drm_mode_object_put(ptr noundef %878) #11
  %879 = add nuw i32 %875, 1
  %880 = icmp eq i32 %879, %871
  br i1 %880, label %881, label %874

881:                                              ; preds = %874, %869
  call void @kfree(ptr noundef %870) #11
  br label %882

882:                                              ; preds = %881, %42, %21
  %883 = phi i32 [ %872, %881 ], [ 0, %42 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret i32 %883
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_client_pick_crtcs(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq i32 %5, %2
  br i1 %10, label %135, label %11

11:                                               ; preds = %8
  %12 = getelementptr ptr, ptr %1, i32 %5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %3, i32 %5
  store ptr null, ptr %14, align 4
  %15 = add i32 %5, 1
  %16 = tail call fastcc i32 @drm_client_pick_crtcs(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %15, i32 noundef %6, i32 noundef %7)
  %17 = getelementptr ptr, ptr %4, i32 %5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %135, label %20

20:                                               ; preds = %11
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #11
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %135, label %23, !prof !8

23:                                               ; preds = %20
  %24 = extractvalue { i32, i1 } %21, 0
  %25 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %135, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.drm_connector, ptr %13, i32 0, i32 18
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 1
  %31 = select i1 %30, i32 2, i32 1
  %32 = getelementptr inbounds %struct.drm_connector, ptr %13, i32 0, i32 36, i32 1
  %33 = load i8, ptr %32, align 8, !range !10
  %34 = zext i8 %33 to i32
  %35 = add nuw nsw i32 %31, %34
  %36 = getelementptr inbounds %struct.drm_connector, ptr %13, i32 0, i32 17
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %62, label %39

39:                                               ; preds = %55, %27
  %40 = phi ptr [ %56, %55 ], [ %37, %27 ]
  %41 = getelementptr i8, ptr %40, i32 -60
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = icmp sgt i32 %43, %6
  br i1 %44, label %55, label %45

45:                                               ; preds = %39
  %46 = getelementptr i8, ptr %40, i32 -50
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = icmp sgt i32 %48, %7
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = getelementptr i8, ptr %40, i32 -2
  %52 = load i8, ptr %51, align 2
  %53 = and i8 %52, 8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %45, %39
  %56 = load ptr, ptr %40, align 4
  %57 = icmp eq ptr %56, %36
  br i1 %57, label %62, label %39

58:                                               ; preds = %50
  %59 = getelementptr i8, ptr %40, i32 -64
  %60 = icmp ne ptr %59, null
  %61 = zext i1 %60 to i32
  br label %62

62:                                               ; preds = %58, %55, %27
  %63 = phi i32 [ %61, %58 ], [ 0, %27 ], [ 0, %55 ]
  %64 = add nuw nsw i32 %35, %63
  %65 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 6
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.drm_mode_set, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %133, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.drm_connector, ptr %13, i32 0, i32 40
  %72 = icmp sgt i32 %5, 0
  %73 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30, i32 19
  %74 = getelementptr ptr, ptr %25, i32 %5
  %75 = shl i32 %5, 2
  %76 = shl i32 %2, 2
  br label %77

77:                                               ; preds = %127, %70
  %78 = phi ptr [ %68, %70 ], [ %131, %127 ]
  %79 = phi ptr [ %66, %70 ], [ %129, %127 ]
  %80 = phi i32 [ %16, %70 ], [ %128, %127 ]
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds %struct.drm_device, ptr %81, i32 0, i32 30, i32 16
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %82
  br i1 %84, label %127, label %85

85:                                               ; preds = %77
  %86 = load i32, ptr %71, align 8
  %87 = getelementptr inbounds %struct.drm_crtc, ptr %78, i32 0, i32 8
  br label %88

88:                                               ; preds = %103, %85
  %89 = phi ptr [ %83, %85 ], [ %104, %103 ]
  %90 = getelementptr i8, ptr %89, i32 36
  %91 = load i32, ptr %90, align 4
  %92 = shl nuw i32 1, %91
  %93 = and i32 %92, %86
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %88
  %96 = getelementptr i8, ptr %89, i32 40
  %97 = load i32, ptr %96, align 4
  %98 = load i32, ptr %87, align 8
  %99 = shl nuw i32 1, %98
  %100 = and i32 %99, %97
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %95
  br i1 %72, label %106, label %122

103:                                              ; preds = %95, %88
  %104 = load ptr, ptr %89, align 4
  %105 = icmp eq ptr %104, %82
  br i1 %105, label %127, label %88

106:                                              ; preds = %111, %102
  %107 = phi i32 [ %112, %111 ], [ 0, %102 ]
  %108 = getelementptr ptr, ptr %3, i32 %107
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, %78
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = add nuw nsw i32 %107, 1
  %113 = icmp eq i32 %112, %5
  br i1 %113, label %122, label %106

114:                                              ; preds = %106
  %115 = load i32, ptr %73, align 4
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %127, label %117

117:                                              ; preds = %114
  %118 = getelementptr ptr, ptr %4, i32 %107
  %119 = load ptr, ptr %118, align 4
  %120 = load ptr, ptr %17, align 4
  %121 = tail call zeroext i1 @drm_mode_equal(ptr noundef %119, ptr noundef %120) #11
  br i1 %121, label %122, label %127

122:                                              ; preds = %117, %111, %102
  store ptr %78, ptr %74, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %25, ptr align 4 %3, i32 %75, i1 false)
  %123 = tail call fastcc i32 @drm_client_pick_crtcs(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %25, ptr noundef %4, i32 noundef %15, i32 noundef %6, i32 noundef %7)
  %124 = add i32 %64, %123
  %125 = icmp sgt i32 %124, %80
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %3, ptr nonnull align 64 %25, i32 %76, i1 false)
  br label %127

127:                                              ; preds = %126, %122, %117, %114, %103, %77
  %128 = phi i32 [ %80, %114 ], [ %124, %126 ], [ %80, %122 ], [ %80, %117 ], [ %80, %77 ], [ %80, %103 ]
  %129 = getelementptr %struct.drm_mode_set, ptr %79, i32 1
  %130 = getelementptr %struct.drm_mode_set, ptr %79, i32 1, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %77

133:                                              ; preds = %127, %62
  %134 = phi i32 [ %16, %62 ], [ %128, %127 ]
  tail call void @kfree(ptr noundef nonnull %25) #11
  br label %135

135:                                              ; preds = %133, %23, %20, %11, %8
  %136 = phi i32 [ %134, %133 ], [ 0, %8 ], [ %16, %11 ], [ %16, %23 ], [ %16, %20 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_client_rotation(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #5 {
  %3 = getelementptr inbounds %struct.drm_mode_set, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_mode_set, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.drm_mode_set, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %71, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.drm_connector, ptr %5, i32 0, i32 20, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = add i32 %15, -1
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds [3 x i32], ptr @switch.table.drm_client_rotation, i32 0, i32 %16
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %20, %18 ], [ 1, %13 ]
  store i32 %22, ptr %1, align 4
  %23 = getelementptr inbounds %struct.drm_connector, ptr %5, i32 0, i32 36, i32 1
  %24 = load i8, ptr %23, align 4, !range !10
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.drm_connector, ptr %5, i32 0, i32 36, i32 13
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @llvm.ctlz.i32(i32 %22, i1 true) #11, !range !11
  %32 = xor i32 %31, -1
  %33 = and i32 %28, 15
  %34 = icmp eq i32 %33, 0
  %35 = tail call i32 @llvm.ctlz.i32(i32 %33, i1 false) #11, !range !11
  %36 = sub nsw i32 3, %35
  %37 = select i1 %34, i32 3, i32 %36
  %38 = add nsw i32 %37, %32
  %39 = and i32 %38, 3
  %40 = and i32 %28, -16
  %41 = shl nuw nsw i32 1, %39
  %42 = or i32 %41, %40
  store i32 %42, ptr %1, align 4
  br label %43

43:                                               ; preds = %30, %26, %21
  %44 = phi i32 [ %42, %30 ], [ %22, %26 ], [ %22, %21 ]
  %45 = and i32 %44, 15
  switch i32 %45, label %71 [
    i32 1, label %46
    i32 4, label %46
  ]

46:                                               ; preds = %43, %43
  %47 = getelementptr inbounds %struct.drm_plane, ptr %9, i32 0, i32 22
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %71, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.drm_property, ptr %48, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.drm_property, ptr %48, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  br label %57

57:                                               ; preds = %57, %54
  %58 = phi i32 [ 0, %54 ], [ %64, %57 ]
  %59 = phi i64 [ 0, %54 ], [ %63, %57 ]
  %60 = getelementptr i64, ptr %56, i32 %58
  %61 = load i64, ptr %60, align 8
  %62 = shl nuw i64 1, %61
  %63 = or i64 %62, %59
  %64 = add nuw i32 %58, 1
  %65 = icmp eq i32 %64, %52
  br i1 %65, label %66, label %57

66:                                               ; preds = %57, %50
  %67 = phi i64 [ 0, %50 ], [ %63, %57 ]
  %68 = zext i32 %44 to i64
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %66, %46, %43, %2
  %72 = phi i1 [ false, %2 ], [ false, %43 ], [ false, %46 ], [ %70, %66 ]
  ret i1 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_client_modeset_check(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %6, 16
  %10 = and i32 %9, %8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 27
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %14, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %1
  %21 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %21) #11
  %22 = tail call fastcc i32 @drm_client_modeset_commit_atomic(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %21) #11
  br label %23

23:                                               ; preds = %20, %16, %12
  %24 = phi i32 [ %22, %20 ], [ 0, %16 ], [ 0, %12 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_client_modeset_commit_atomic(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !9
  call void @drm_modeset_acquire_init(ptr noundef nonnull %4, i32 noundef 0) #11
  %7 = call ptr @drm_atomic_state_alloc(ptr noundef %6) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %90, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_atomic_state, ptr %7, i32 0, i32 9
  store ptr %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 18
  %12 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.drm_atomic_state, ptr %7, i32 0, i32 3
  %14 = getelementptr inbounds %struct.drm_atomic_state, ptr %7, i32 0, i32 4
  br label %15

15:                                               ; preds = %92, %9
  %16 = load ptr, ptr %11, align 4
  %17 = icmp eq ptr %16, %11
  br i1 %17, label %36, label %18

18:                                               ; preds = %33, %15
  %19 = phi ptr [ %34, %33 ], [ %16, %15 ]
  %20 = getelementptr i8, ptr %19, i32 -4
  %21 = call ptr @drm_atomic_get_plane_state(ptr noundef nonnull %7, ptr noundef %20) #11
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = ptrtoint ptr %21 to i32
  br label %79

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.drm_plane_state, ptr %21, i32 0, i32 14
  store i32 1, ptr %26, align 4
  %27 = getelementptr i8, ptr %19, i32 404
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = call i32 @__drm_atomic_helper_disable_plane(ptr noundef %20, ptr noundef %21) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %30, %25
  %34 = load ptr, ptr %19, align 4
  %35 = icmp eq ptr %34, %11
  br i1 %35, label %36, label %18

36:                                               ; preds = %33, %15
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr inbounds %struct.drm_mode_set, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %74, label %41

41:                                               ; preds = %69, %36
  %42 = phi ptr [ %72, %69 ], [ %39, %36 ]
  %43 = phi ptr [ %71, %69 ], [ %38, %36 ]
  %44 = phi ptr [ %70, %69 ], [ %37, %36 ]
  %45 = getelementptr inbounds %struct.drm_crtc, ptr %42, i32 0, i32 6
  %46 = load ptr, ptr %45, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !9
  %47 = call zeroext i1 @drm_client_rotation(ptr noundef %44, ptr noundef nonnull %5)
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load ptr, ptr %13, align 4
  %50 = getelementptr inbounds %struct.drm_plane, ptr %46, i32 0, i32 17
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr %struct.__drm_planes_state, ptr %49, i32 %51, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = load i32, ptr %5, align 4
  %55 = getelementptr inbounds %struct.drm_plane_state, ptr %53, i32 0, i32 14
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %48, %41
  %57 = call i32 @__drm_atomic_helper_set_config(ptr noundef %44, ptr noundef nonnull %7) #11
  %58 = icmp ne i32 %57, 0
  %59 = or i1 %58, %1
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %43, align 4
  %62 = load ptr, ptr %14, align 4
  %63 = getelementptr inbounds %struct.drm_crtc, ptr %61, i32 0, i32 8
  %64 = load i32, ptr %63, align 8
  %65 = getelementptr %struct.__drm_crtcs_state, ptr %62, i32 %64, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.drm_crtc_state, ptr %66, i32 0, i32 2
  store i8 0, ptr %67, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br label %69

68:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br i1 %58, label %79, label %69

69:                                               ; preds = %68, %60
  %70 = getelementptr %struct.drm_mode_set, ptr %44, i32 1
  %71 = getelementptr %struct.drm_mode_set, ptr %44, i32 1, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %41

74:                                               ; preds = %69, %36
  br i1 %2, label %75, label %77

75:                                               ; preds = %74
  %76 = call i32 @drm_atomic_check_only(ptr noundef nonnull %7) #11
  br label %79

77:                                               ; preds = %74
  %78 = call i32 @drm_atomic_commit(ptr noundef nonnull %7) #11
  br label %79

79:                                               ; preds = %77, %75, %68, %30, %23
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ], [ %24, %23 ], [ %57, %68 ], [ %31, %30 ]
  %81 = icmp eq i32 %80, -35
  br i1 %81, label %92, label %82

82:                                               ; preds = %79
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #11, !srcloc !13
  %83 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #11, !srcloc !14
  %84 = extractvalue { i32, i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = icmp sgt i32 %84, 0
  br i1 %87, label %90, label %88, !prof !15

88:                                               ; preds = %86
  call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #11
  br label %90

89:                                               ; preds = %82
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  call void @__drm_atomic_state_free(ptr noundef nonnull %7) #11
  br label %90

90:                                               ; preds = %89, %88, %86, %3
  %91 = phi i32 [ -12, %3 ], [ %80, %86 ], [ %80, %88 ], [ %80, %89 ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %4) #11
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  ret i32 %91

92:                                               ; preds = %79
  call void @drm_atomic_state_clear(ptr noundef nonnull %7) #11
  %93 = call i32 @drm_modeset_backoff(ptr noundef nonnull %4) #11
  br label %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_client_modeset_commit_locked(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 16
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %15, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17, %1
  %22 = tail call fastcc i32 @drm_client_modeset_commit_atomic(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %78

23:                                               ; preds = %17, %13
  %24 = load ptr, ptr %0, align 4
  tail call void @drm_modeset_lock_all(ptr noundef %24) #11
  %25 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 30, i32 18
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %44, label %28

28:                                               ; preds = %41, %23
  %29 = phi ptr [ %42, %41 ], [ %26, %23 ]
  %30 = getelementptr i8, ptr %29, i32 -4
  %31 = getelementptr i8, ptr %29, i32 404
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  tail call void @drm_plane_force_disable(ptr noundef %30) #11
  br label %35

35:                                               ; preds = %34, %28
  %36 = getelementptr i8, ptr %29, i32 428
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @drm_mode_plane_set_obj_prop(ptr noundef %30, ptr noundef nonnull %37, i64 noundef 1) #11
  br label %41

41:                                               ; preds = %39, %35
  %42 = load ptr, ptr %29, align 4
  %43 = icmp eq ptr %42, %25
  br i1 %43, label %44, label %28

44:                                               ; preds = %41, %23
  %45 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.drm_mode_set, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %76, label %55

50:                                               ; preds = %73
  %51 = getelementptr %struct.drm_mode_set, ptr %57, i32 1
  %52 = getelementptr %struct.drm_mode_set, ptr %57, i32 1, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %76, label %55

55:                                               ; preds = %50, %44
  %56 = phi ptr [ %53, %50 ], [ %48, %44 ]
  %57 = phi ptr [ %51, %50 ], [ %46, %44 ]
  %58 = getelementptr inbounds %struct.drm_crtc, ptr %56, i32 0, i32 16
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = tail call i32 %61(ptr noundef nonnull %56, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %73, label %76

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %59, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = tail call i32 %68(ptr noundef nonnull %56, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70, %66, %63
  %74 = tail call i32 @drm_mode_set_config_internal(ptr noundef %57) #11
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %50, label %76

76:                                               ; preds = %73, %70, %63, %50, %44
  %77 = phi i32 [ 0, %44 ], [ 0, %50 ], [ %64, %63 ], [ %71, %70 ], [ %74, %73 ]
  tail call void @drm_modeset_unlock_all(ptr noundef %24) #11
  br label %78

78:                                               ; preds = %76, %21
  %79 = phi i32 [ %22, %21 ], [ %77, %76 ]
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_client_modeset_commit(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call zeroext i1 @drm_master_internal_acquire(ptr noundef %2) #11
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @drm_client_modeset_commit_locked(ptr noundef %0)
  tail call void @drm_master_internal_release(ptr noundef %2) #11
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ -16, %1 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_master_internal_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_master_internal_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_client_modeset_dpms(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = tail call zeroext i1 @drm_master_internal_acquire(ptr noundef %4) #11
  br i1 %5, label %6, label %116

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_driver, ptr %9, i32 0, i32 24
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %11, 16
  %15 = and i32 %14, %13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %19, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21, %6
  %26 = icmp eq i32 %1, 0
  %27 = tail call fastcc i32 @drm_client_modeset_commit_atomic(ptr noundef %0, i1 noundef zeroext %26, i1 noundef zeroext false)
  br label %114

28:                                               ; preds = %21, %17
  %29 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false) #11, !annotation !9
  %30 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.drm_driver, ptr %31, i32 0, i32 24
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %33, 16
  %37 = and i32 %36, %35
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 30, i32 27
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %41, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %39
  %48 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 30
  tail call void @mutex_lock(ptr noundef %48) #11
  br label %49

49:                                               ; preds = %47, %43, %28
  call void @drm_modeset_acquire_init(ptr noundef nonnull %3, i32 noundef 0) #11
  %50 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 30, i32 36
  %52 = sext i32 %1 to i64
  br label %53

53:                                               ; preds = %92, %49
  %54 = call i32 @drm_modeset_lock_all_ctx(ptr noundef %29, ptr noundef nonnull %3) #11
  switch i32 %54, label %95 [
    i32 0, label %55
    i32 -35, label %92
  ]

55:                                               ; preds = %53
  %56 = load ptr, ptr %50, align 4
  %57 = getelementptr inbounds %struct.drm_mode_set, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %95, label %60

60:                                               ; preds = %87, %55
  %61 = phi ptr [ %90, %87 ], [ %58, %55 ]
  %62 = phi ptr [ %88, %87 ], [ %56, %55 ]
  %63 = getelementptr inbounds %struct.drm_crtc, ptr %61, i32 0, i32 11
  %64 = load i8, ptr %63, align 4, !range !10
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %87, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.drm_mode_set, ptr %62, i32 0, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %87, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.drm_mode_set, ptr %62, i32 0, i32 5
  br label %72

72:                                               ; preds = %72, %70
  %73 = phi i32 [ 0, %70 ], [ %84, %72 ]
  %74 = load ptr, ptr %71, align 4
  %75 = getelementptr ptr, ptr %74, i32 %73
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.drm_connector, ptr %76, i32 0, i32 21
  %78 = load ptr, ptr %77, align 8
  %79 = load ptr, ptr %78, align 4
  %80 = call i32 %79(ptr noundef %76, i32 noundef %1) #11
  %81 = getelementptr inbounds %struct.drm_connector, ptr %76, i32 0, i32 6
  %82 = load ptr, ptr %51, align 4
  %83 = call i32 @drm_object_property_set_value(ptr noundef %81, ptr noundef %82, i64 noundef %52) #11
  %84 = add nuw i32 %73, 1
  %85 = load i32, ptr %67, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %72, label %87

87:                                               ; preds = %72, %66, %60
  %88 = getelementptr %struct.drm_mode_set, ptr %62, i32 1
  %89 = getelementptr %struct.drm_mode_set, ptr %62, i32 1, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %60

92:                                               ; preds = %53
  %93 = call i32 @drm_modeset_backoff(ptr noundef nonnull %3) #11
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %53, label %95

95:                                               ; preds = %92, %87, %55, %53
  call void @drm_modeset_drop_locks(ptr noundef nonnull %3) #11
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %3) #11
  %96 = load ptr, ptr %30, align 4
  %97 = getelementptr inbounds %struct.drm_driver, ptr %96, i32 0, i32 24
  %98 = load i32, ptr %97, align 4
  %99 = load i32, ptr %34, align 4
  %100 = and i32 %98, 16
  %101 = and i32 %100, %99
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 30, i32 27
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %105, i32 0, i32 5
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %107, %103
  %112 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 30
  call void @mutex_unlock(ptr noundef %112) #11
  br label %113

113:                                              ; preds = %111, %107, %95
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  br label %114

114:                                              ; preds = %113, %25
  %115 = phi i32 [ %27, %25 ], [ 0, %113 ]
  call void @mutex_unlock(ptr noundef %7) #11
  call void @drm_master_internal_release(ptr noundef %4) #11
  br label %116

116:                                              ; preds = %114, %2
  %117 = phi i32 [ %115, %114 ], [ -16, %2 ]
  ret i32 %117
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock_all_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @drm_connector_pick_cmdline_mode(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 36
  %3 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 36, i32 1
  %4 = load i8, ptr %3, align 4, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %80, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 36, i32 8
  %8 = load i8, ptr %7, align 4, !range !10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 36, i32 11
  %12 = load i8, ptr %11, align 1, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %70

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 36, i32 9
  %16 = load i8, ptr %15, align 1, !range !10
  %17 = icmp ne i8 %16, 1
  %18 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 17
  %19 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 36, i32 4
  %20 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 36, i32 5
  %21 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 36, i32 2
  %22 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 36, i32 7
  br label %23

23:                                               ; preds = %69, %14
  %24 = phi i1 [ %17, %14 ], [ false, %69 ]
  %25 = load ptr, ptr %18, align 4
  %26 = icmp eq ptr %25, %18
  br i1 %26, label %69, label %27

27:                                               ; preds = %66, %23
  %28 = phi ptr [ %67, %66 ], [ %25, %23 ]
  %29 = getelementptr i8, ptr %28, i32 -64
  %30 = getelementptr i8, ptr %28, i32 8
  %31 = tail call i32 @strcmp(ptr noundef %30, ptr noundef %2)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %80, label %33

33:                                               ; preds = %27
  %34 = getelementptr i8, ptr %28, i32 -60
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = load i32, ptr %19, align 4
  %38 = icmp eq i32 %37, %36
  br i1 %38, label %39, label %66

39:                                               ; preds = %33
  %40 = getelementptr i8, ptr %28, i32 -50
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = load i32, ptr %20, align 4
  %44 = icmp eq i32 %43, %42
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load i8, ptr %21, align 1, !range !10
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = tail call i32 @drm_mode_vrefresh(ptr noundef %29) #11
  %50 = load i32, ptr %22, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48, %45
  %53 = load i8, ptr %15, align 1, !range !10
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = getelementptr i8, ptr %28, i32 -40
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %80

60:                                               ; preds = %52
  br i1 %24, label %61, label %80

61:                                               ; preds = %60
  %62 = getelementptr i8, ptr %28, i32 -40
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %61, %55, %48, %39, %33
  %67 = load ptr, ptr %28, align 4
  %68 = icmp eq ptr %67, %18
  br i1 %68, label %69, label %27

69:                                               ; preds = %66, %23
  br i1 %24, label %23, label %70

70:                                               ; preds = %69, %10, %6
  %71 = load ptr, ptr %0, align 8
  %72 = tail call ptr @drm_mode_create_from_cmdline_mode(ptr noundef %71, ptr noundef %2) #11
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.drm_display_mode, ptr %72, i32 0, i32 30
  %76 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 17
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  store ptr %75, ptr %78, align 4
  store ptr %77, ptr %75, align 4
  %79 = getelementptr inbounds %struct.drm_display_mode, ptr %72, i32 0, i32 30, i32 1
  store ptr %76, ptr %79, align 4
  store volatile ptr %75, ptr %76, align 4
  br label %80

80:                                               ; preds = %74, %70, %61, %60, %55, %27, %1
  %81 = phi ptr [ null, %1 ], [ %72, %74 ], [ null, %70 ], [ %29, %27 ], [ %29, %60 ], [ %29, %61 ], [ %29, %55 ]
  ret ptr %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create_from_cmdline_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_match(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_find_dmt(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drm_atomic_helper_set_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_check_only(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_force_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_plane_set_obj_prop(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_set_config_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_object_property_set_value(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { cold nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{i32 0, i32 33}
!12 = !{i64 2148374323}
!13 = !{i64 771257, i64 2148261228, i64 2148261254, i64 2148261301, i64 2148261323, i64 2148261351, i64 2148261371}
!14 = !{i64 2148276458, i64 2148276490, i64 2148276519, i64 2148276553, i64 2148276584, i64 2148276607}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2149289213}
