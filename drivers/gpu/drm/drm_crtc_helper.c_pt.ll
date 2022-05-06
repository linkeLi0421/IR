; ModuleID = '/llk/IR/drivers/gpu/drm/drm_crtc_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_crtc_helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_helper_encoder_in_use:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_helper_encoder_in_use\22\09\09\09\09\09"
module asm "__kstrtabns_drm_helper_encoder_in_use:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_helper_crtc_in_use:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_helper_crtc_in_use\22\09\09\09\09\09"
module asm "__kstrtabns_drm_helper_crtc_in_use:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_helper_disable_unused_functions:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_helper_disable_unused_functions\22\09\09\09\09\09"
module asm "__kstrtabns_drm_helper_disable_unused_functions:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_crtc_helper_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_crtc_helper_set_mode\22\09\09\09\09\09"
module asm "__kstrtabns_drm_crtc_helper_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_crtc_helper_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_crtc_helper_set_config\22\09\09\09\09\09"
module asm "__kstrtabns_drm_crtc_helper_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_helper_connector_dpms:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_helper_connector_dpms\22\09\09\09\09\09"
module asm "__kstrtabns_drm_helper_connector_dpms:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_helper_resume_force_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_helper_resume_force_mode\22\09\09\09\09\09"
module asm "__kstrtabns_drm_helper_resume_force_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_helper_force_disable_all:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_helper_force_disable_all\22\09\09\09\09\09"
module asm "__kstrtabns_drm_helper_force_disable_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
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
%struct.anon.75 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_mode_set = type { ptr, ptr, ptr, i32, i32, ptr, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }

@.str = private unnamed_addr constant [34 x i8] c"drivers/gpu/drm/drm_crtc_helper.c\00", align 1
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_drm_helper_encoder_in_use = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_helper_encoder_in_use = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_helper_encoder_in_use = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_helper_encoder_in_use to i32), ptr @__kstrtab_drm_helper_encoder_in_use, ptr @__kstrtabns_drm_helper_encoder_in_use }, section "___ksymtab+drm_helper_encoder_in_use", align 4
@__kstrtab_drm_helper_crtc_in_use = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_helper_crtc_in_use = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_helper_crtc_in_use = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_helper_crtc_in_use to i32), ptr @__kstrtab_drm_helper_crtc_in_use, ptr @__kstrtabns_drm_helper_crtc_in_use }, section "___ksymtab+drm_helper_crtc_in_use", align 4
@__kstrtab_drm_helper_disable_unused_functions = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_helper_disable_unused_functions = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_helper_disable_unused_functions = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_helper_disable_unused_functions to i32), ptr @__kstrtab_drm_helper_disable_unused_functions, ptr @__kstrtabns_drm_helper_disable_unused_functions }, section "___ksymtab+drm_helper_disable_unused_functions", align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Encoder fixup failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"CRTC fixup failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"[CRTC:%d:%s]\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"[ENCODER:%d:%s] set [MODE:%s]\0A\00", align 1
@__kstrtab_drm_crtc_helper_set_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_crtc_helper_set_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_crtc_helper_set_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_crtc_helper_set_mode to i32), ptr @__kstrtab_drm_crtc_helper_set_mode, ptr @__kstrtabns_drm_crtc_helper_set_mode }, section "___ksymtab+drm_crtc_helper_set_mode", align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"[CRTC:%d:%s] [FB:%d] #connectors=%d (x y) (%i %i)\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"[CRTC:%d:%s] [NOFB]\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"crtc has no fb, full mode set\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"modes are different, full mode set\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"connector dpms not on, full mode switch\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"encoder changed, full mode switch\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"crtc changed, full mode switch\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"[CONNECTOR:%d:%s] to [CRTC:%d:%s]\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"[CONNECTOR:%d:%s] to [NOCRTC]\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"attempting to set mode from userspace\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"failed to set mode on [CRTC:%d:%s]\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Setting connector DPMS state to on\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"\09[CONNECTOR:%d:%s] set DPMS on\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"failed to restore config after modeset failure\0A\00", align 1
@__kstrtab_drm_crtc_helper_set_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_crtc_helper_set_config = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_crtc_helper_set_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_crtc_helper_set_config to i32), ptr @__kstrtab_drm_crtc_helper_set_config, ptr @__kstrtabns_drm_crtc_helper_set_config }, section "___ksymtab+drm_crtc_helper_set_config", align 4
@__kstrtab_drm_helper_connector_dpms = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_helper_connector_dpms = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_helper_connector_dpms = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_helper_connector_dpms to i32), ptr @__kstrtab_drm_helper_connector_dpms, ptr @__kstrtabns_drm_helper_connector_dpms }, section "___ksymtab+drm_helper_connector_dpms", align 4
@.str.20 = private unnamed_addr constant [31 x i8] c"failed to set mode on crtc %p\0A\00", align 1
@__kstrtab_drm_helper_resume_force_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_helper_resume_force_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_helper_resume_force_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_helper_resume_force_mode to i32), ptr @__kstrtab_drm_helper_resume_force_mode, ptr @__kstrtabns_drm_helper_resume_force_mode }, section "___ksymtab+drm_helper_resume_force_mode", align 4
@__kstrtab_drm_helper_force_disable_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_helper_force_disable_all = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_helper_force_disable_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_helper_force_disable_all to i32), ptr @__kstrtab_drm_helper_force_disable_all, ptr @__kstrtabns_drm_helper_force_disable_all }, section "___ksymtab+drm_helper_force_disable_all", align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_drm_crtc_helper_set_config, ptr @__ksymtab_drm_crtc_helper_set_mode, ptr @__ksymtab_drm_helper_connector_dpms, ptr @__ksymtab_drm_helper_crtc_in_use, ptr @__ksymtab_drm_helper_disable_unused_functions, ptr @__ksymtab_drm_helper_encoder_in_use, ptr @__ksymtab_drm_helper_force_disable_all, ptr @__ksymtab_drm_helper_resume_force_mode], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_helper_encoder_in_use(ptr noundef readonly %0) #0 {
  %2 = alloca %struct.drm_connector_list_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 16
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21, !prof !9

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %15, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !10

21:                                               ; preds = %17, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 101, i32 noundef 9, ptr noundef null) #7
  br label %22

22:                                               ; preds = %21, %17, %13
  %23 = load i32, ptr @oops_in_progress, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30
  %27 = tail call zeroext i1 @mutex_is_locked(ptr noundef %26) #7
  br i1 %27, label %29, label %28, !prof !10

28:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %29

29:                                               ; preds = %28, %25
  %30 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 1
  %31 = tail call zeroext i1 @mutex_is_locked(ptr noundef %30) #7
  br i1 %31, label %33, label %32, !prof !10

32:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #7
  br label %33

33:                                               ; preds = %32, %29, %22
  call void @drm_connector_list_iter_begin(ptr noundef %3, ptr noundef nonnull %2) #7
  br label %34

34:                                               ; preds = %37, %33
  %35 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.drm_connector, ptr %35, i32 0, i32 41
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %34

41:                                               ; preds = %37, %34
  call void @drm_connector_list_iter_end(ptr noundef nonnull %2) #7
  %42 = xor i1 %36, true
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i1 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_helper_crtc_in_use(ptr noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %6, 16
  %10 = and i32 %9, %8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !9

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 27
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %14, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !10

20:                                               ; preds = %16, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef null) #7
  br label %21

21:                                               ; preds = %20, %16, %12
  %22 = load i32, ptr @oops_in_progress, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30
  %26 = tail call zeroext i1 @mutex_is_locked(ptr noundef %25) #7
  br i1 %26, label %28, label %27, !prof !10

27:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef null) #7
  br label %28

28:                                               ; preds = %27, %24, %21
  %29 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %43, label %32

32:                                               ; preds = %40, %28
  %33 = phi ptr [ %41, %40 ], [ %30, %28 ]
  %34 = getelementptr i8, ptr %33, i32 48
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %33, i32 -4
  %39 = tail call zeroext i1 @drm_helper_encoder_in_use(ptr noundef %38)
  br i1 %39, label %43, label %40

40:                                               ; preds = %37, %32
  %41 = load ptr, ptr %33, align 4
  %42 = icmp eq ptr %41, %29
  br i1 %42, label %43, label %32

43:                                               ; preds = %40, %37, %28
  %44 = phi i1 [ false, %28 ], [ false, %40 ], [ true, %37 ]
  ret i1 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_helper_disable_unused_functions(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %5, 16
  %9 = and i32 %8, %7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19, !prof !9

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %13, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !10

19:                                               ; preds = %15, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 221, i32 noundef 9, ptr noundef null) #7
  br label %20

20:                                               ; preds = %19, %15, %11
  tail call void @drm_modeset_lock_all(ptr noundef %0) #7
  tail call fastcc void @__drm_helper_disable_unused_functions(ptr noundef %0)
  tail call void @drm_modeset_unlock_all(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__drm_helper_disable_unused_functions(ptr noundef %0) unnamed_addr #0 {
  tail call void @drm_warn_on_modeset_not_all_locked(ptr noundef %0) #7
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %27, label %5

5:                                                ; preds = %24, %1
  %6 = phi ptr [ %25, %24 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = tail call zeroext i1 @drm_helper_encoder_in_use(ptr noundef %7)
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %6, i32 64
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %11, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void %15(ptr noundef %7) #7
  br label %22

18:                                               ; preds = %13
  %19 = load ptr, ptr %11, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void %19(ptr noundef %7, i32 noundef 3) #7
  br label %22

22:                                               ; preds = %21, %18, %17, %9
  %23 = getelementptr i8, ptr %6, i32 48
  store ptr null, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %5
  %25 = load ptr, ptr %6, align 4
  %26 = icmp eq ptr %25, %2
  br i1 %26, label %27, label %5

27:                                               ; preds = %24, %1
  %28 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %53, label %31

31:                                               ; preds = %50, %27
  %32 = phi ptr [ %51, %50 ], [ %29, %27 ]
  %33 = getelementptr i8, ptr %32, i32 -8
  %34 = getelementptr i8, ptr %32, i32 332
  %35 = load ptr, ptr %34, align 4
  %36 = tail call zeroext i1 @drm_helper_crtc_in_use(ptr noundef %33)
  %37 = getelementptr i8, ptr %32, i32 84
  %38 = zext i1 %36 to i8
  store i8 %38, ptr %37, align 4
  br i1 %36, label %50, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.drm_crtc_helper_funcs, ptr %35, i32 0, i32 9
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void %41(ptr noundef %33) #7
  br label %46

44:                                               ; preds = %39
  %45 = load ptr, ptr %35, align 4
  tail call void %45(ptr noundef %33, i32 noundef 3) #7
  br label %46

46:                                               ; preds = %44, %43
  %47 = getelementptr i8, ptr %32, i32 64
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.drm_plane, ptr %48, i32 0, i32 12
  store ptr null, ptr %49, align 8
  br label %50

50:                                               ; preds = %46, %31
  %51 = load ptr, ptr %32, align 4
  %52 = icmp eq ptr %51, %28
  br i1 %52, label %53, label %31

53:                                               ; preds = %50, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_crtc_helper_set_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.drm_display_mode, align 4
  %7 = alloca %struct.drm_display_mode, align 4
  %8 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %7)
  %9 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_driver, ptr %12, i32 0, i32 24
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %14, 16
  %18 = and i32 %17, %16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28, !prof !9

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 30, i32 27
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %22, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !10

28:                                               ; preds = %24, %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef null) #7
  br label %29

29:                                               ; preds = %28, %24, %20
  tail call void @drm_warn_on_modeset_not_all_locked(ptr noundef %8) #7
  %30 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 11
  %31 = load i8, ptr %30, align 4, !range !11
  %32 = tail call zeroext i1 @drm_helper_crtc_in_use(ptr noundef %0)
  %33 = zext i1 %32 to i8
  store i8 %33, ptr %30, align 4
  br i1 %32, label %34, label %184

34:                                               ; preds = %29
  %35 = tail call ptr @drm_mode_duplicate(ptr noundef %8, ptr noundef %1) #7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i8 %31, ptr %30, align 4
  br label %184

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %6, ptr noundef align 8 dereferenceable(112) %39, i32 112, i1 false)
  %40 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %7, ptr noundef align 8 dereferenceable(112) %40, i32 112, i1 false)
  %41 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 14
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 15
  %44 = load i32, ptr %43, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(112) %39, ptr noundef align 4 dereferenceable(112) %1, i32 112, i1 false)
  store i32 %2, ptr %41, align 8
  store i32 %3, ptr %43, align 4
  %45 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 30, i32 16
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %67, label %48

48:                                               ; preds = %64, %38
  %49 = phi ptr [ %65, %64 ], [ %46, %38 ]
  %50 = getelementptr i8, ptr %49, i32 -4
  %51 = getelementptr i8, ptr %49, i32 48
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %0
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = getelementptr i8, ptr %49, i32 64
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %56, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = tail call zeroext i1 %60(ptr noundef %50, ptr noundef %1, ptr noundef nonnull %35) #7
  br i1 %63, label %64, label %181

64:                                               ; preds = %62, %58, %54, %48
  %65 = load ptr, ptr %49, align 4
  %66 = icmp eq ptr %65, %45
  br i1 %66, label %67, label %48

67:                                               ; preds = %64, %38
  %68 = getelementptr inbounds %struct.drm_crtc_helper_funcs, ptr %10, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = tail call zeroext i1 %69(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %35) #7
  br i1 %72, label %73, label %181

73:                                               ; preds = %71, %67
  %74 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 3
  %77 = load ptr, ptr %76, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %75, ptr noundef %77) #7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(112) %40, ptr noundef nonnull align 4 dereferenceable(112) %35, i32 112, i1 false)
  %78 = load ptr, ptr %45, align 4
  %79 = icmp eq ptr %78, %45
  br i1 %79, label %123, label %80

80:                                               ; preds = %95, %73
  %81 = phi ptr [ %96, %95 ], [ %78, %73 ]
  %82 = getelementptr i8, ptr %81, i32 -4
  %83 = getelementptr i8, ptr %81, i32 48
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %0
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = getelementptr i8, ptr %81, i32 64
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %88, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call void %92(ptr noundef %82) #7
  br label %95

95:                                               ; preds = %94, %90, %86, %80
  %96 = load ptr, ptr %81, align 4
  %97 = icmp eq ptr %96, %45
  br i1 %97, label %98, label %80

98:                                               ; preds = %95
  %99 = load ptr, ptr %45, align 4
  %100 = icmp eq ptr %99, %45
  br i1 %100, label %123, label %101

101:                                              ; preds = %120, %98
  %102 = phi ptr [ %121, %120 ], [ %99, %98 ]
  %103 = getelementptr i8, ptr %102, i32 -4
  %104 = getelementptr i8, ptr %102, i32 64
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %120, label %107

107:                                              ; preds = %101
  %108 = getelementptr i8, ptr %102, i32 48
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %105, i32 0, i32 10
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  tail call void %113(ptr noundef %103) #7
  br label %120

116:                                              ; preds = %111
  %117 = load ptr, ptr %105, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  tail call void %117(ptr noundef %103, i32 noundef 3) #7
  br label %120

120:                                              ; preds = %119, %116, %115, %107, %101
  %121 = load ptr, ptr %102, align 4
  %122 = icmp eq ptr %121, %45
  br i1 %122, label %123, label %101

123:                                              ; preds = %120, %98, %73
  %124 = getelementptr inbounds %struct.drm_crtc_helper_funcs, ptr %10, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  tail call void %125(ptr noundef %0) #7
  %126 = getelementptr inbounds %struct.drm_crtc_helper_funcs, ptr %10, i32 0, i32 5
  %127 = load ptr, ptr %126, align 4
  %128 = tail call i32 %127(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %35, i32 noundef %2, i32 noundef %3, ptr noundef %4) #7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %183

130:                                              ; preds = %123
  %131 = load ptr, ptr %45, align 4
  %132 = icmp eq ptr %131, %45
  br i1 %132, label %157, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 31
  br label %135

135:                                              ; preds = %154, %133
  %136 = phi ptr [ %131, %133 ], [ %155, %154 ]
  %137 = getelementptr i8, ptr %136, i32 -4
  %138 = getelementptr i8, ptr %136, i32 48
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, %0
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  %142 = getelementptr i8, ptr %136, i32 64
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %154, label %145

145:                                              ; preds = %141
  %146 = getelementptr i8, ptr %136, i32 8
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr i8, ptr %136, i32 28
  %149 = load ptr, ptr %148, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %147, ptr noundef %149, ptr noundef %134) #7
  %150 = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %143, i32 0, i32 5
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %145
  tail call void %151(ptr noundef %137, ptr noundef %1, ptr noundef nonnull %35) #7
  br label %154

154:                                              ; preds = %153, %145, %141, %135
  %155 = load ptr, ptr %136, align 4
  %156 = icmp eq ptr %155, %45
  br i1 %156, label %157, label %135

157:                                              ; preds = %154, %130
  %158 = getelementptr inbounds %struct.drm_crtc_helper_funcs, ptr %10, i32 0, i32 2
  %159 = load ptr, ptr %158, align 4
  tail call void %159(ptr noundef %0) #7
  %160 = load ptr, ptr %45, align 4
  %161 = icmp eq ptr %160, %45
  br i1 %161, label %180, label %162

162:                                              ; preds = %177, %157
  %163 = phi ptr [ %178, %177 ], [ %160, %157 ]
  %164 = getelementptr i8, ptr %163, i32 -4
  %165 = getelementptr i8, ptr %163, i32 48
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, %0
  br i1 %167, label %168, label %177

168:                                              ; preds = %162
  %169 = getelementptr i8, ptr %163, i32 64
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %177, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %170, i32 0, i32 4
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  tail call void %174(ptr noundef %164) #7
  br label %177

177:                                              ; preds = %176, %172, %168, %162
  %178 = load ptr, ptr %163, align 4
  %179 = icmp eq ptr %178, %45
  br i1 %179, label %180, label %162

180:                                              ; preds = %177, %157
  tail call void @drm_calc_timestamping_constants(ptr noundef %0, ptr noundef %40) #7
  tail call void @drm_mode_destroy(ptr noundef %8, ptr noundef nonnull %35) #7
  br label %184

181:                                              ; preds = %71, %62
  %182 = phi ptr [ @.str.2, %71 ], [ @.str.1, %62 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %182) #7
  br label %183

183:                                              ; preds = %181, %123
  tail call void @drm_mode_destroy(ptr noundef %8, ptr noundef nonnull %35) #7
  store i8 %31, ptr %30, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(112) %39, ptr noundef nonnull align 4 dereferenceable(112) %6, i32 112, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(112) %40, ptr noundef nonnull align 4 dereferenceable(112) %7, i32 112, i1 false)
  store i32 %42, ptr %41, align 8
  store i32 %44, ptr %43, align 4
  br label %184

184:                                              ; preds = %183, %180, %37, %29
  %185 = phi i1 [ false, %37 ], [ true, %29 ], [ false, %183 ], [ true, %180 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6)
  ret i1 %185
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_warn_on_modeset_not_all_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_calc_timestamping_constants(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_connector_get_single_encoder(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 40
  %3 = load i32, ptr %2, align 8
  %4 = tail call i32 @__sw_hweight32(i32 noundef %3) #7
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %6, label %7, !prof !12

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 471, i32 noundef 9, ptr noundef null) #7
  br label %7

7:                                                ; preds = %6, %1
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 30, i32 16
  br label %10

10:                                               ; preds = %14, %7
  %11 = phi ptr [ %9, %7 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %9
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %2, align 8
  %16 = getelementptr i8, ptr %12, i32 36
  %17 = load i32, ptr %16, align 4
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %10, label %21

21:                                               ; preds = %14
  %22 = getelementptr i8, ptr %12, i32 -4
  br label %23

23:                                               ; preds = %21, %10
  %24 = phi ptr [ %22, %21 ], [ null, %10 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_crtc_helper_set_config(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.drm_connector_list_iter, align 8
  %4 = alloca %struct.drm_connector_list_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5) #7
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !12

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_crtc_helper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #7, !srcloc !13
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_mode_set, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !12

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_crtc_helper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 535, 0\0A.popsection", ""() #7, !srcloc !14
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 19
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !12

16:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_crtc_helper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 536, 0\0A.popsection", ""() #7, !srcloc !15
  unreachable

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.drm_mode_set, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = load ptr, ptr %0, align 4
  %22 = icmp eq ptr %21, null
  br i1 %20, label %23, label %25

23:                                               ; preds = %17
  br i1 %22, label %31, label %24, !prof !10

24:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_crtc_helper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 539, 0\0A.popsection", ""() #7, !srcloc !16
  unreachable

25:                                               ; preds = %17
  br i1 %22, label %31, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.drm_mode_set, ptr %0, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31, !prof !12

30:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_crtc_helper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 540, 0\0A.popsection", ""() #7, !srcloc !17
  unreachable

31:                                               ; preds = %26, %25, %23
  %32 = load ptr, ptr %9, align 8
  %33 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.drm_driver, ptr %34, i32 0, i32 24
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 10
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %36, 16
  %40 = and i32 %39, %38
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50, !prof !9

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 30, i32 27
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %44, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50, !prof !10

50:                                               ; preds = %46, %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 545, i32 noundef 9, ptr noundef null) #7
  %51 = load ptr, ptr %18, align 4
  br label %52

52:                                               ; preds = %50, %46, %42
  %53 = phi ptr [ %19, %42 ], [ %51, %50 ], [ %19, %46 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store ptr null, ptr %0, align 4
  br label %81

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %81, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %8, align 4
  %61 = getelementptr inbounds %struct.drm_crtc, ptr %60, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.drm_crtc, ptr %60, i32 0, i32 3
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.drm_framebuffer, ptr %57, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.drm_mode_set, ptr %0, i32 0, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.drm_mode_set, ptr %0, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.drm_mode_set, ptr %0, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %62, ptr noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %72) #7
  tail call void @drm_warn_on_modeset_not_all_locked(ptr noundef %32) #7
  %73 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 30, i32 15
  %74 = load i32, ptr %73, align 4
  %75 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %74, i32 4) #7
  %76 = extractvalue { i32, i1 } %75, 1
  br i1 %76, label %499, label %77, !prof !12

77:                                               ; preds = %59
  %78 = extractvalue { i32, i1 } %75, 0
  %79 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %78, i32 noundef 3520) #8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %499, label %117

81:                                               ; preds = %56, %55
  %82 = load ptr, ptr %8, align 4
  %83 = getelementptr inbounds %struct.drm_crtc, ptr %82, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.drm_crtc, ptr %82, i32 0, i32 3
  %86 = load ptr, ptr %85, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %84, ptr noundef %86) #7
  %87 = load ptr, ptr %8, align 4
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.drm_device, ptr %88, i32 0, i32 30, i32 16
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %89
  br i1 %91, label %116, label %92

92:                                               ; preds = %113, %81
  %93 = phi ptr [ %114, %113 ], [ %90, %81 ]
  %94 = getelementptr i8, ptr %93, i32 -4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !8
  %95 = getelementptr i8, ptr %93, i32 48
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, %87
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  call void @drm_connector_list_iter_begin(ptr noundef %88, ptr noundef nonnull %3) #7
  %99 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %3) #7
  %100 = icmp eq ptr %99, null
  br i1 %100, label %112, label %101

101:                                              ; preds = %109, %98
  %102 = phi ptr [ %110, %109 ], [ %99, %98 ]
  %103 = getelementptr inbounds %struct.drm_connector, ptr %102, i32 0, i32 41
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %94
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  store ptr null, ptr %103, align 4
  %107 = getelementptr inbounds %struct.drm_connector, ptr %102, i32 0, i32 34
  store i32 3, ptr %107, align 8
  %108 = getelementptr inbounds %struct.drm_connector, ptr %102, i32 0, i32 6
  call void @drm_mode_object_put(ptr noundef %108) #7
  br label %109

109:                                              ; preds = %106, %101
  %110 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %3) #7
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %101

112:                                              ; preds = %109, %98
  call void @drm_connector_list_iter_end(ptr noundef nonnull %3) #7
  br label %113

113:                                              ; preds = %112, %92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  %114 = load ptr, ptr %93, align 4
  %115 = icmp eq ptr %114, %89
  br i1 %115, label %116, label %92

116:                                              ; preds = %113, %81
  call fastcc void @__drm_helper_disable_unused_functions(ptr noundef %88) #7
  br label %499

117:                                              ; preds = %77
  %118 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 30, i32 10
  %119 = load i32, ptr %118, align 4
  %120 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %119, i32 4) #7
  %121 = extractvalue { i32, i1 } %120, 1
  br i1 %121, label %126, label %122, !prof !12

122:                                              ; preds = %117
  %123 = extractvalue { i32, i1 } %120, 0
  %124 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %123, i32 noundef 3520) #8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %122, %117
  tail call void @kfree(ptr noundef nonnull %79) #7
  br label %499

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 30, i32 16
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, %128
  br i1 %130, label %140, label %131

131:                                              ; preds = %131, %127
  %132 = phi ptr [ %138, %131 ], [ %129, %127 ]
  %133 = phi i32 [ %136, %131 ], [ 0, %127 ]
  %134 = getelementptr i8, ptr %132, i32 48
  %135 = load ptr, ptr %134, align 4
  %136 = add i32 %133, 1
  %137 = getelementptr ptr, ptr %79, i32 %133
  store ptr %135, ptr %137, align 4
  %138 = load ptr, ptr %132, align 4
  %139 = icmp eq ptr %138, %128
  br i1 %139, label %140, label %131

140:                                              ; preds = %131, %127
  call void @drm_connector_list_iter_begin(ptr noundef %32, ptr noundef nonnull %4) #7
  %141 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #7
  %142 = icmp eq ptr %141, null
  br i1 %142, label %152, label %143

143:                                              ; preds = %143, %140
  %144 = phi ptr [ %150, %143 ], [ %141, %140 ]
  %145 = phi i32 [ %148, %143 ], [ 0, %140 ]
  %146 = getelementptr inbounds %struct.drm_connector, ptr %144, i32 0, i32 41
  %147 = load ptr, ptr %146, align 4
  %148 = add i32 %145, 1
  %149 = getelementptr ptr, ptr %124, i32 %145
  store ptr %147, ptr %149, align 4
  %150 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #7
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %143

152:                                              ; preds = %143, %140
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #7
  %153 = load ptr, ptr %8, align 4
  %154 = getelementptr inbounds %struct.drm_crtc, ptr %153, i32 0, i32 12
  %155 = getelementptr inbounds %struct.drm_crtc, ptr %153, i32 0, i32 14
  %156 = load i32, ptr %155, align 8
  %157 = getelementptr inbounds %struct.drm_crtc, ptr %153, i32 0, i32 15
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr inbounds %struct.drm_crtc, ptr %153, i32 0, i32 6
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds %struct.drm_plane, ptr %160, i32 0, i32 12
  %162 = load ptr, ptr %161, align 8
  %163 = load ptr, ptr %0, align 4
  %164 = icmp eq ptr %162, %163
  br i1 %164, label %178, label %165

165:                                              ; preds = %152
  %166 = icmp eq ptr %162, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %165
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8) #7
  %168 = load ptr, ptr %8, align 4
  %169 = getelementptr inbounds %struct.drm_crtc, ptr %168, i32 0, i32 14
  %170 = load i32, ptr %169, align 8
  br label %178

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.drm_framebuffer, ptr %163, i32 0, i32 4
  %173 = load ptr, ptr %172, align 8
  %174 = getelementptr inbounds %struct.drm_framebuffer, ptr %162, i32 0, i32 4
  %175 = load ptr, ptr %174, align 8
  %176 = icmp eq ptr %173, %175
  %177 = xor i1 %176, true
  br label %178

178:                                              ; preds = %171, %167, %152
  %179 = phi i32 [ %170, %167 ], [ %156, %152 ], [ %156, %171 ]
  %180 = phi ptr [ %168, %167 ], [ %153, %152 ], [ %153, %171 ]
  %181 = phi i1 [ false, %167 ], [ false, %152 ], [ %176, %171 ]
  %182 = phi i1 [ true, %167 ], [ false, %152 ], [ %177, %171 ]
  %183 = load i32, ptr %69, align 4
  %184 = icmp eq i32 %183, %179
  br i1 %184, label %185, label %190

185:                                              ; preds = %178
  %186 = load i32, ptr %71, align 4
  %187 = getelementptr inbounds %struct.drm_crtc, ptr %180, i32 0, i32 15
  %188 = load i32, ptr %187, align 4
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %191, label %190

190:                                              ; preds = %185, %178
  br label %191

191:                                              ; preds = %190, %185
  %192 = phi i1 [ true, %190 ], [ %181, %185 ]
  %193 = load ptr, ptr %18, align 4
  %194 = getelementptr inbounds %struct.drm_crtc, ptr %180, i32 0, i32 12
  %195 = call zeroext i1 @drm_mode_equal(ptr noundef %193, ptr noundef %194) #7
  br i1 %195, label %200, label %196

196:                                              ; preds = %191
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.9) #7
  %197 = load ptr, ptr %8, align 4
  %198 = getelementptr inbounds %struct.drm_crtc, ptr %197, i32 0, i32 12
  call void @drm_mode_debug_printmodeline(ptr noundef %198) #7
  %199 = load ptr, ptr %18, align 4
  call void @drm_mode_debug_printmodeline(ptr noundef %199) #7
  br label %200

200:                                              ; preds = %196, %191
  %201 = phi i1 [ %182, %191 ], [ true, %196 ]
  %202 = load i32, ptr %67, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %222, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.drm_mode_set, ptr %0, i32 0, i32 5
  br label %206

206:                                              ; preds = %218, %204
  %207 = phi i32 [ %202, %204 ], [ %219, %218 ]
  %208 = phi i32 [ 0, %204 ], [ %220, %218 ]
  %209 = load ptr, ptr %205, align 4
  %210 = getelementptr ptr, ptr %209, i32 %208
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.drm_connector, ptr %211, i32 0, i32 41
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %206
  %216 = getelementptr inbounds %struct.drm_connector, ptr %211, i32 0, i32 6
  call void @drm_mode_object_get(ptr noundef %216) #7
  %217 = load i32, ptr %67, align 4
  br label %218

218:                                              ; preds = %215, %206
  %219 = phi i32 [ %207, %206 ], [ %217, %215 ]
  %220 = add nuw i32 %208, 1
  %221 = icmp ult i32 %220, %219
  br i1 %221, label %206, label %222

222:                                              ; preds = %218, %200
  call void @drm_connector_list_iter_begin(ptr noundef %32, ptr noundef nonnull %4) #7
  %223 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #7
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %226

225:                                              ; preds = %222
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #7
  br label %302

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.drm_mode_set, ptr %0, i32 0, i32 5
  br label %228

228:                                              ; preds = %296, %226
  %229 = phi ptr [ %223, %226 ], [ %298, %296 ]
  %230 = phi i1 [ %201, %226 ], [ %297, %296 ]
  %231 = phi i32 [ 0, %226 ], [ %285, %296 ]
  %232 = getelementptr inbounds %struct.drm_connector, ptr %229, i32 0, i32 35
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.drm_connector, ptr %229, i32 0, i32 41
  %235 = load ptr, ptr %234, align 4
  %236 = load i32, ptr %67, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %284, label %238

238:                                              ; preds = %228
  %239 = load ptr, ptr %227, align 4
  br label %243

240:                                              ; preds = %243
  %241 = add nuw i32 %244, 1
  %242 = icmp eq i32 %241, %236
  br i1 %242, label %284, label %243

243:                                              ; preds = %240, %238
  %244 = phi i32 [ 0, %238 ], [ %241, %240 ]
  %245 = getelementptr ptr, ptr %239, i32 %244
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, %229
  br i1 %247, label %248, label %240

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %233, i32 0, i32 4
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %254, label %252

252:                                              ; preds = %248
  %253 = call ptr %250(ptr noundef nonnull %229) #7
  br label %276

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.drm_connector, ptr %229, i32 0, i32 40
  %256 = load i32, ptr %255, align 8
  %257 = call i32 @__sw_hweight32(i32 noundef %256) #7
  %258 = icmp ugt i32 %257, 1
  br i1 %258, label %259, label %260, !prof !12

259:                                              ; preds = %254
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 471, i32 noundef 9, ptr noundef null) #7
  br label %260

260:                                              ; preds = %259, %254
  %261 = load ptr, ptr %229, align 8
  %262 = getelementptr inbounds %struct.drm_device, ptr %261, i32 0, i32 30, i32 16
  br label %263

263:                                              ; preds = %267, %260
  %264 = phi ptr [ %262, %260 ], [ %265, %267 ]
  %265 = load ptr, ptr %264, align 4
  %266 = icmp eq ptr %265, %262
  br i1 %266, label %276, label %267

267:                                              ; preds = %263
  %268 = load i32, ptr %255, align 8
  %269 = getelementptr i8, ptr %265, i32 36
  %270 = load i32, ptr %269, align 4
  %271 = shl nuw i32 1, %270
  %272 = and i32 %271, %268
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %263, label %274

274:                                              ; preds = %267
  %275 = getelementptr i8, ptr %265, i32 -4
  br label %276

276:                                              ; preds = %274, %263, %252
  %277 = phi ptr [ %253, %252 ], [ %275, %274 ], [ null, %263 ]
  %278 = icmp eq ptr %277, null
  %279 = select i1 %278, i32 1, i32 %231
  %280 = getelementptr inbounds %struct.drm_connector, ptr %229, i32 0, i32 34
  %281 = load i32, ptr %280, align 8
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %276
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.10) #7
  br label %284

284:                                              ; preds = %283, %276, %240, %228
  %285 = phi i32 [ %279, %283 ], [ %279, %276 ], [ %231, %228 ], [ %231, %240 ]
  %286 = phi i1 [ true, %283 ], [ %230, %276 ], [ %230, %228 ], [ %230, %240 ]
  %287 = phi ptr [ %277, %283 ], [ %277, %276 ], [ %235, %228 ], [ %235, %240 ]
  %288 = load ptr, ptr %234, align 4
  %289 = icmp eq ptr %287, %288
  br i1 %289, label %296, label %290

290:                                              ; preds = %284
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.11) #7
  %291 = load ptr, ptr %234, align 4
  %292 = icmp eq ptr %291, null
  br i1 %292, label %295, label %293

293:                                              ; preds = %290
  %294 = getelementptr inbounds %struct.drm_encoder, ptr %291, i32 0, i32 8
  store ptr null, ptr %294, align 4
  br label %295

295:                                              ; preds = %293, %290
  store ptr %287, ptr %234, align 4
  br label %296

296:                                              ; preds = %295, %284
  %297 = phi i1 [ true, %295 ], [ %286, %284 ]
  %298 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #7
  %299 = icmp eq ptr %298, null
  br i1 %299, label %300, label %228

300:                                              ; preds = %296
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #7
  %301 = icmp eq i32 %285, 0
  br i1 %301, label %302, label %447

302:                                              ; preds = %300, %225
  %303 = phi i1 [ %201, %225 ], [ %297, %300 ]
  call void @drm_connector_list_iter_begin(ptr noundef %32, ptr noundef nonnull %4) #7
  %304 = getelementptr inbounds %struct.drm_mode_set, ptr %0, i32 0, i32 5
  br label %305

305:                                              ; preds = %363, %302
  %306 = phi i1 [ %303, %302 ], [ %352, %363 ]
  br label %307

307:                                              ; preds = %310, %305
  %308 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #7
  %309 = icmp eq ptr %308, null
  br i1 %309, label %364, label %310

310:                                              ; preds = %307
  %311 = getelementptr inbounds %struct.drm_connector, ptr %308, i32 0, i32 41
  %312 = load ptr, ptr %311, align 4
  %313 = icmp eq ptr %312, null
  br i1 %313, label %307, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.drm_connector, ptr %308, i32 0, i32 41
  %316 = getelementptr inbounds %struct.drm_encoder, ptr %312, i32 0, i32 8
  %317 = load ptr, ptr %316, align 4
  %318 = load ptr, ptr %8, align 4
  %319 = icmp eq ptr %317, %318
  %320 = select i1 %319, ptr null, ptr %317
  %321 = load i32, ptr %67, align 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %334, label %323

323:                                              ; preds = %314
  %324 = load ptr, ptr %304, align 4
  br label %325

325:                                              ; preds = %325, %323
  %326 = phi ptr [ %320, %323 ], [ %331, %325 ]
  %327 = phi i32 [ 0, %323 ], [ %332, %325 ]
  %328 = getelementptr ptr, ptr %324, i32 %327
  %329 = load ptr, ptr %328, align 4
  %330 = icmp eq ptr %329, %308
  %331 = select i1 %330, ptr %318, ptr %326
  %332 = add nuw i32 %327, 1
  %333 = icmp eq i32 %332, %321
  br i1 %333, label %334, label %325

334:                                              ; preds = %325, %314
  %335 = phi ptr [ %320, %314 ], [ %331, %325 ]
  %336 = icmp eq ptr %335, null
  br i1 %336, label %346, label %337

337:                                              ; preds = %334
  %338 = getelementptr inbounds %struct.drm_encoder, ptr %312, i32 0, i32 6
  %339 = load i32, ptr %338, align 4
  %340 = getelementptr inbounds %struct.drm_crtc, ptr %335, i32 0, i32 8
  %341 = load i32, ptr %340, align 8
  %342 = shl nuw i32 1, %341
  %343 = and i32 %342, %339
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %337
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #7
  br label %447

346:                                              ; preds = %337, %334
  %347 = icmp eq ptr %335, %317
  br i1 %347, label %351, label %348

348:                                              ; preds = %346
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12) #7
  %349 = load ptr, ptr %315, align 4
  %350 = getelementptr inbounds %struct.drm_encoder, ptr %349, i32 0, i32 8
  store ptr %335, ptr %350, align 4
  br label %351

351:                                              ; preds = %348, %346
  %352 = phi i1 [ true, %348 ], [ %306, %346 ]
  %353 = getelementptr inbounds %struct.drm_connector, ptr %308, i32 0, i32 6
  %354 = load i32, ptr %353, align 8
  %355 = getelementptr inbounds %struct.drm_connector, ptr %308, i32 0, i32 7
  %356 = load ptr, ptr %355, align 4
  br i1 %336, label %362, label %357

357:                                              ; preds = %351
  %358 = getelementptr inbounds %struct.drm_crtc, ptr %335, i32 0, i32 5
  %359 = load i32, ptr %358, align 4
  %360 = getelementptr inbounds %struct.drm_crtc, ptr %335, i32 0, i32 3
  %361 = load ptr, ptr %360, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %354, ptr noundef %356, i32 noundef %359, ptr noundef %361) #7
  br label %363

362:                                              ; preds = %351
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %354, ptr noundef %356) #7
  br label %363

363:                                              ; preds = %362, %357
  br label %305

364:                                              ; preds = %307
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #7
  br i1 %192, label %365, label %370

365:                                              ; preds = %364
  %366 = getelementptr inbounds %struct.drm_crtc_helper_funcs, ptr %14, i32 0, i32 7
  %367 = load ptr, ptr %366, align 4
  %368 = icmp eq ptr %367, null
  %369 = select i1 %368, i1 true, i1 %306
  br i1 %369, label %371, label %419

370:                                              ; preds = %364
  br i1 %306, label %371, label %446

371:                                              ; preds = %370, %365
  %372 = load ptr, ptr %8, align 4
  %373 = call zeroext i1 @drm_helper_crtc_in_use(ptr noundef %372)
  br i1 %373, label %374, label %418

374:                                              ; preds = %371
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.15) #7
  %375 = load ptr, ptr %18, align 4
  call void @drm_mode_debug_printmodeline(ptr noundef %375) #7
  %376 = load ptr, ptr %0, align 4
  %377 = load ptr, ptr %8, align 4
  %378 = getelementptr inbounds %struct.drm_crtc, ptr %377, i32 0, i32 6
  %379 = load ptr, ptr %378, align 8
  %380 = getelementptr inbounds %struct.drm_plane, ptr %379, i32 0, i32 12
  store ptr %376, ptr %380, align 8
  %381 = load ptr, ptr %8, align 4
  %382 = load ptr, ptr %18, align 4
  %383 = load i32, ptr %69, align 4
  %384 = load i32, ptr %71, align 4
  %385 = call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef %381, ptr noundef %382, i32 noundef %383, i32 noundef %384, ptr noundef %162)
  br i1 %385, label %396, label %386

386:                                              ; preds = %374
  %387 = load ptr, ptr %8, align 4
  %388 = getelementptr inbounds %struct.drm_crtc, ptr %387, i32 0, i32 5
  %389 = load i32, ptr %388, align 4
  %390 = getelementptr inbounds %struct.drm_crtc, ptr %387, i32 0, i32 3
  %391 = load ptr, ptr %390, align 8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %389, ptr noundef %391) #7
  %392 = load ptr, ptr %8, align 4
  %393 = getelementptr inbounds %struct.drm_crtc, ptr %392, i32 0, i32 6
  %394 = load ptr, ptr %393, align 8
  %395 = getelementptr inbounds %struct.drm_plane, ptr %394, i32 0, i32 12
  store ptr %162, ptr %395, align 8
  br label %447

396:                                              ; preds = %374
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.17) #7
  %397 = load i32, ptr %67, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %418, label %399

399:                                              ; preds = %399, %396
  %400 = phi i32 [ %415, %399 ], [ 0, %396 ]
  %401 = load ptr, ptr %304, align 4
  %402 = getelementptr ptr, ptr %401, i32 %400
  %403 = load ptr, ptr %402, align 4
  %404 = getelementptr inbounds %struct.drm_connector, ptr %403, i32 0, i32 6
  %405 = load i32, ptr %404, align 8
  %406 = getelementptr inbounds %struct.drm_connector, ptr %403, i32 0, i32 7
  %407 = load ptr, ptr %406, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %405, ptr noundef %407) #7
  %408 = load ptr, ptr %304, align 4
  %409 = getelementptr ptr, ptr %408, i32 %400
  %410 = load ptr, ptr %409, align 4
  %411 = getelementptr inbounds %struct.drm_connector, ptr %410, i32 0, i32 21
  %412 = load ptr, ptr %411, align 8
  %413 = load ptr, ptr %412, align 4
  %414 = call i32 %413(ptr noundef %410, i32 noundef 0) #7
  %415 = add nuw i32 %400, 1
  %416 = load i32, ptr %67, align 4
  %417 = icmp ult i32 %415, %416
  br i1 %417, label %399, label %418

418:                                              ; preds = %399, %396, %371
  call fastcc void @__drm_helper_disable_unused_functions(ptr noundef %32)
  br label %446

419:                                              ; preds = %365
  %420 = load i32, ptr %69, align 4
  %421 = load ptr, ptr %8, align 4
  %422 = getelementptr inbounds %struct.drm_crtc, ptr %421, i32 0, i32 14
  store i32 %420, ptr %422, align 8
  %423 = load i32, ptr %71, align 4
  %424 = load ptr, ptr %8, align 4
  %425 = getelementptr inbounds %struct.drm_crtc, ptr %424, i32 0, i32 15
  store i32 %423, ptr %425, align 4
  %426 = load ptr, ptr %0, align 4
  %427 = load ptr, ptr %8, align 4
  %428 = getelementptr inbounds %struct.drm_crtc, ptr %427, i32 0, i32 6
  %429 = load ptr, ptr %428, align 8
  %430 = getelementptr inbounds %struct.drm_plane, ptr %429, i32 0, i32 12
  store ptr %426, ptr %430, align 8
  %431 = load ptr, ptr %366, align 4
  %432 = load ptr, ptr %8, align 4
  %433 = load i32, ptr %69, align 4
  %434 = load i32, ptr %71, align 4
  %435 = call i32 %431(ptr noundef %432, i32 noundef %433, i32 noundef %434, ptr noundef %162) #7
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %446, label %437

437:                                              ; preds = %419
  %438 = load ptr, ptr %8, align 4
  %439 = getelementptr inbounds %struct.drm_crtc, ptr %438, i32 0, i32 14
  store i32 %156, ptr %439, align 8
  %440 = load ptr, ptr %8, align 4
  %441 = getelementptr inbounds %struct.drm_crtc, ptr %440, i32 0, i32 15
  store i32 %158, ptr %441, align 4
  %442 = load ptr, ptr %8, align 4
  %443 = getelementptr inbounds %struct.drm_crtc, ptr %442, i32 0, i32 6
  %444 = load ptr, ptr %443, align 8
  %445 = getelementptr inbounds %struct.drm_plane, ptr %444, i32 0, i32 12
  store ptr %162, ptr %445, align 8
  br label %447

446:                                              ; preds = %419, %418, %370
  call void @kfree(ptr noundef nonnull %124) #7
  call void @kfree(ptr noundef nonnull %79) #7
  br label %499

447:                                              ; preds = %437, %386, %345, %300
  %448 = phi i32 [ -22, %345 ], [ -22, %386 ], [ %435, %437 ], [ -22, %300 ]
  %449 = phi i1 [ %306, %345 ], [ true, %386 ], [ false, %437 ], [ %297, %300 ]
  %450 = load ptr, ptr %128, align 4
  %451 = icmp eq ptr %450, %128
  br i1 %451, label %461, label %452

452:                                              ; preds = %452, %447
  %453 = phi ptr [ %459, %452 ], [ %450, %447 ]
  %454 = phi i32 [ %455, %452 ], [ 0, %447 ]
  %455 = add i32 %454, 1
  %456 = getelementptr ptr, ptr %79, i32 %454
  %457 = load ptr, ptr %456, align 4
  %458 = getelementptr i8, ptr %453, i32 48
  store ptr %457, ptr %458, align 4
  %459 = load ptr, ptr %453, align 4
  %460 = icmp eq ptr %459, %128
  br i1 %460, label %461, label %452

461:                                              ; preds = %452, %447
  call void @drm_connector_list_iter_begin(ptr noundef %32, ptr noundef nonnull %4) #7
  %462 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #7
  %463 = icmp eq ptr %462, null
  br i1 %463, label %473, label %464

464:                                              ; preds = %464, %461
  %465 = phi ptr [ %471, %464 ], [ %462, %461 ]
  %466 = phi i32 [ %467, %464 ], [ 0, %461 ]
  %467 = add i32 %466, 1
  %468 = getelementptr ptr, ptr %124, i32 %466
  %469 = load ptr, ptr %468, align 4
  %470 = getelementptr inbounds %struct.drm_connector, ptr %465, i32 0, i32 41
  store ptr %469, ptr %470, align 4
  %471 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #7
  %472 = icmp eq ptr %471, null
  br i1 %472, label %473, label %464

473:                                              ; preds = %464, %461
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #7
  %474 = load i32, ptr %67, align 4
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %494, label %476

476:                                              ; preds = %473
  %477 = getelementptr inbounds %struct.drm_mode_set, ptr %0, i32 0, i32 5
  br label %478

478:                                              ; preds = %490, %476
  %479 = phi i32 [ %474, %476 ], [ %491, %490 ]
  %480 = phi i32 [ 0, %476 ], [ %492, %490 ]
  %481 = load ptr, ptr %477, align 4
  %482 = getelementptr ptr, ptr %481, i32 %480
  %483 = load ptr, ptr %482, align 4
  %484 = getelementptr inbounds %struct.drm_connector, ptr %483, i32 0, i32 41
  %485 = load ptr, ptr %484, align 4
  %486 = icmp eq ptr %485, null
  br i1 %486, label %487, label %490

487:                                              ; preds = %478
  %488 = getelementptr inbounds %struct.drm_connector, ptr %483, i32 0, i32 6
  call void @drm_mode_object_put(ptr noundef %488) #7
  %489 = load i32, ptr %67, align 4
  br label %490

490:                                              ; preds = %487, %478
  %491 = phi i32 [ %479, %478 ], [ %489, %487 ]
  %492 = add nuw i32 %480, 1
  %493 = icmp ult i32 %492, %491
  br i1 %493, label %478, label %494

494:                                              ; preds = %490, %473
  br i1 %449, label %495, label %498

495:                                              ; preds = %494
  %496 = call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef %153, ptr noundef %154, i32 noundef %156, i32 noundef %158, ptr noundef %162)
  br i1 %496, label %498, label %497

497:                                              ; preds = %495
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #7
  br label %498

498:                                              ; preds = %497, %495, %494
  call void @kfree(ptr noundef nonnull %124) #7
  call void @kfree(ptr noundef nonnull %79) #7
  br label %499

499:                                              ; preds = %498, %446, %126, %116, %77, %59
  %500 = phi i32 [ %448, %498 ], [ 0, %446 ], [ -12, %126 ], [ 0, %116 ], [ -12, %77 ], [ -12, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %500
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_debug_printmodeline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_helper_connector_dpms(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.drm_connector_list_iter, align 8
  %4 = alloca %struct.drm_connector_list_iter, align 8
  %5 = alloca %struct.drm_connector_list_iter, align 8
  %6 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 41
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.drm_encoder, ptr %7, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_driver, ptr %16, i32 0, i32 24
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %18, 16
  %22 = and i32 %21, %20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32, !prof !9

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 30, i32 27
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %26, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !10

32:                                               ; preds = %28, %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 873, i32 noundef 9, ptr noundef null) #7
  br label %33

33:                                               ; preds = %32, %28, %24
  %34 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 34
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %146, label %37

37:                                               ; preds = %33
  store i32 %1, ptr %34, align 8
  br i1 %8, label %58, label %38

38:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8, !annotation !8
  %39 = load ptr, ptr %7, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %39, ptr noundef nonnull %5) #7
  %40 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %5) #7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %52, %38
  %43 = phi ptr [ %54, %52 ], [ %40, %38 ]
  %44 = phi i32 [ %53, %52 ], [ 3, %38 ]
  %45 = getelementptr inbounds %struct.drm_connector, ptr %43, i32 0, i32 41
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %7
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.drm_connector, ptr %43, i32 0, i32 34
  %50 = load i32, ptr %49, align 8
  %51 = call i32 @llvm.smin.i32(i32 %50, i32 %44) #7
  br label %52

52:                                               ; preds = %48, %42
  %53 = phi i32 [ %44, %42 ], [ %51, %48 ]
  %54 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %5) #7
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %42

56:                                               ; preds = %52, %38
  %57 = phi i32 [ 3, %38 ], [ %53, %52 ]
  call void @drm_connector_list_iter_end(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %58

58:                                               ; preds = %56, %37
  %59 = phi i32 [ %57, %56 ], [ 3, %37 ]
  %60 = icmp sgt i32 %35, %1
  br i1 %60, label %61, label %101

61:                                               ; preds = %58
  %62 = icmp eq ptr %13, null
  br i1 %62, label %92, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 19
  %65 = load ptr, ptr %64, align 4
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %92, label %68

68:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !8
  %69 = load ptr, ptr %13, align 8
  call void @drm_connector_list_iter_begin(ptr noundef %69, ptr noundef nonnull %4) #7
  %70 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #7
  %71 = icmp eq ptr %70, null
  br i1 %71, label %90, label %72

72:                                               ; preds = %86, %68
  %73 = phi ptr [ %88, %86 ], [ %70, %68 ]
  %74 = phi i32 [ %87, %86 ], [ 3, %68 ]
  %75 = getelementptr inbounds %struct.drm_connector, ptr %73, i32 0, i32 41
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.drm_encoder, ptr %76, i32 0, i32 8
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %13
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.drm_connector, ptr %73, i32 0, i32 34
  %84 = load i32, ptr %83, align 8
  %85 = call i32 @llvm.smin.i32(i32 %84, i32 %74) #7
  br label %86

86:                                               ; preds = %82, %78, %72
  %87 = phi i32 [ %74, %78 ], [ %74, %72 ], [ %85, %82 ]
  %88 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #7
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %72

90:                                               ; preds = %86, %68
  %91 = phi i32 [ 3, %68 ], [ %87, %86 ]
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void %66(ptr noundef nonnull %13, i32 noundef %91) #7
  br label %92

92:                                               ; preds = %90, %63, %61
  br i1 %8, label %103, label %93

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.drm_encoder, ptr %7, i32 0, i32 11
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %95, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  call void %98(ptr noundef nonnull %7, i32 noundef %59) #7
  br label %101

101:                                              ; preds = %100, %97, %93, %58
  %102 = icmp slt i32 %35, %1
  br i1 %102, label %106, label %146

103:                                              ; preds = %92
  %104 = icmp sge i32 %35, %1
  %105 = select i1 %104, i1 true, i1 %62
  br i1 %105, label %146, label %117

106:                                              ; preds = %101
  br i1 %8, label %115, label %107

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct.drm_encoder, ptr %7, i32 0, i32 11
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %109, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  call void %112(ptr noundef nonnull %7, i32 noundef %59) #7
  br label %115

115:                                              ; preds = %114, %111, %107, %106
  %116 = icmp eq ptr %13, null
  br i1 %116, label %146, label %117

117:                                              ; preds = %115, %103
  %118 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 19
  %119 = load ptr, ptr %118, align 4
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %146, label %122

122:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !8
  %123 = load ptr, ptr %13, align 8
  call void @drm_connector_list_iter_begin(ptr noundef %123, ptr noundef nonnull %3) #7
  %124 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %3) #7
  %125 = icmp eq ptr %124, null
  br i1 %125, label %144, label %126

126:                                              ; preds = %140, %122
  %127 = phi ptr [ %142, %140 ], [ %124, %122 ]
  %128 = phi i32 [ %141, %140 ], [ 3, %122 ]
  %129 = getelementptr inbounds %struct.drm_connector, ptr %127, i32 0, i32 41
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %140, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.drm_encoder, ptr %130, i32 0, i32 8
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, %13
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.drm_connector, ptr %127, i32 0, i32 34
  %138 = load i32, ptr %137, align 8
  %139 = call i32 @llvm.smin.i32(i32 %138, i32 %128) #7
  br label %140

140:                                              ; preds = %136, %132, %126
  %141 = phi i32 [ %128, %132 ], [ %128, %126 ], [ %139, %136 ]
  %142 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %3) #7
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %126

144:                                              ; preds = %140, %122
  %145 = phi i32 [ 3, %122 ], [ %141, %140 ]
  call void @drm_connector_list_iter_end(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  call void %120(ptr noundef nonnull %13, i32 noundef %145) #7
  br label %146

146:                                              ; preds = %144, %117, %115, %103, %101, %33
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_helper_resume_force_mode(ptr noundef %0) #0 {
  %2 = alloca %struct.drm_connector_list_iter, align 8
  %3 = alloca %struct.drm_connector_list_iter, align 8
  %4 = alloca %struct.drm_connector_list_iter, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, 16
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22, !prof !9

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %16, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !10

22:                                               ; preds = %18, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 948, i32 noundef 9, ptr noundef null) #7
  br label %23

23:                                               ; preds = %22, %18, %14
  tail call void @drm_modeset_lock_all(ptr noundef %0) #7
  %24 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %143, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16
  br label %29

29:                                               ; preds = %140, %27
  %30 = phi ptr [ %25, %27 ], [ %141, %140 ]
  %31 = getelementptr i8, ptr %30, i32 -8
  %32 = getelementptr i8, ptr %30, i32 84
  %33 = load i8, ptr %32, align 4, !range !11
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %140, label %35

35:                                               ; preds = %29
  %36 = getelementptr i8, ptr %30, i32 88
  %37 = getelementptr i8, ptr %30, i32 312
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr i8, ptr %30, i32 316
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i8, ptr %30, i32 64
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.drm_plane, ptr %42, i32 0, i32 12
  %44 = load ptr, ptr %43, align 8
  %45 = call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef %31, ptr noundef %36, i32 noundef %38, i32 noundef %40, ptr noundef %44)
  br i1 %45, label %47, label %46

46:                                               ; preds = %35
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, ptr noundef %31) #7
  br label %47

47:                                               ; preds = %46, %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !8
  %48 = load ptr, ptr %31, align 8
  call void @drm_connector_list_iter_begin(ptr noundef %48, ptr noundef nonnull %4) #7
  %49 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #7
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %72

52:                                               ; preds = %66, %47
  %53 = phi ptr [ %68, %66 ], [ %49, %47 ]
  %54 = phi i32 [ %67, %66 ], [ 3, %47 ]
  %55 = getelementptr inbounds %struct.drm_connector, ptr %53, i32 0, i32 41
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.drm_encoder, ptr %56, i32 0, i32 8
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %31
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.drm_connector, ptr %53, i32 0, i32 34
  %64 = load i32, ptr %63, align 8
  %65 = call i32 @llvm.smin.i32(i32 %64, i32 %54) #7
  br label %66

66:                                               ; preds = %62, %58, %52
  %67 = phi i32 [ %54, %58 ], [ %54, %52 ], [ %65, %62 ]
  %68 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #7
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %52

70:                                               ; preds = %66
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  %71 = icmp eq i32 %67, 0
  br i1 %71, label %140, label %72

72:                                               ; preds = %70, %51
  %73 = load ptr, ptr %28, align 4
  %74 = icmp eq ptr %73, %28
  br i1 %74, label %111, label %75

75:                                               ; preds = %108, %72
  %76 = phi ptr [ %109, %108 ], [ %73, %72 ]
  %77 = getelementptr i8, ptr %76, i32 -4
  %78 = getelementptr i8, ptr %76, i32 48
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %31
  br i1 %80, label %81, label %108

81:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !8
  %82 = load ptr, ptr %77, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %82, ptr noundef nonnull %3) #7
  %83 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %3) #7
  %84 = icmp eq ptr %83, null
  br i1 %84, label %99, label %85

85:                                               ; preds = %95, %81
  %86 = phi ptr [ %97, %95 ], [ %83, %81 ]
  %87 = phi i32 [ %96, %95 ], [ 3, %81 ]
  %88 = getelementptr inbounds %struct.drm_connector, ptr %86, i32 0, i32 41
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, %77
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.drm_connector, ptr %86, i32 0, i32 34
  %93 = load i32, ptr %92, align 8
  %94 = call i32 @llvm.smin.i32(i32 %93, i32 %87) #7
  br label %95

95:                                               ; preds = %91, %85
  %96 = phi i32 [ %87, %85 ], [ %94, %91 ]
  %97 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %3) #7
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %85

99:                                               ; preds = %95, %81
  %100 = phi i32 [ 3, %81 ], [ %96, %95 ]
  call void @drm_connector_list_iter_end(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  %101 = getelementptr i8, ptr %76, i32 64
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = load ptr, ptr %102, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  call void %105(ptr noundef %77, i32 noundef %100) #7
  br label %108

108:                                              ; preds = %107, %104, %99, %75
  %109 = load ptr, ptr %76, align 4
  %110 = icmp eq ptr %109, %28
  br i1 %110, label %111, label %75

111:                                              ; preds = %108, %72
  %112 = getelementptr i8, ptr %30, i32 332
  %113 = load ptr, ptr %112, align 4
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %140, label %116

116:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store i64 0, ptr %2, align 8, !annotation !8
  %117 = load ptr, ptr %31, align 8
  call void @drm_connector_list_iter_begin(ptr noundef %117, ptr noundef nonnull %2) #7
  %118 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #7
  %119 = icmp eq ptr %118, null
  br i1 %119, label %138, label %120

120:                                              ; preds = %134, %116
  %121 = phi ptr [ %136, %134 ], [ %118, %116 ]
  %122 = phi i32 [ %135, %134 ], [ 3, %116 ]
  %123 = getelementptr inbounds %struct.drm_connector, ptr %121, i32 0, i32 41
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %134, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.drm_encoder, ptr %124, i32 0, i32 8
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, %31
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.drm_connector, ptr %121, i32 0, i32 34
  %132 = load i32, ptr %131, align 8
  %133 = call i32 @llvm.smin.i32(i32 %132, i32 %122) #7
  br label %134

134:                                              ; preds = %130, %126, %120
  %135 = phi i32 [ %122, %126 ], [ %122, %120 ], [ %133, %130 ]
  %136 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #7
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %120

138:                                              ; preds = %134, %116
  %139 = phi i32 [ 3, %116 ], [ %135, %134 ]
  call void @drm_connector_list_iter_end(ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  call void %114(ptr noundef %31, i32 noundef %139) #7
  br label %140

140:                                              ; preds = %138, %111, %70, %29
  %141 = load ptr, ptr %30, align 4
  %142 = icmp eq ptr %141, %24
  br i1 %142, label %143, label %29

143:                                              ; preds = %140, %23
  call fastcc void @__drm_helper_disable_unused_functions(ptr noundef %0)
  call void @drm_modeset_unlock_all(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_helper_force_disable_all(ptr noundef %0) #0 {
  %2 = alloca %struct.drm_mode_set, align 4
  tail call void @drm_modeset_lock_all(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_mode_set, ptr %2, i32 0, i32 1
  br label %8

8:                                                ; preds = %17, %6
  %9 = phi ptr [ %4, %6 ], [ %18, %17 ]
  %10 = getelementptr i8, ptr %9, i32 84
  %11 = load i8, ptr %10, align 4, !range !11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %9, i32 -8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  store ptr %14, ptr %7, align 4
  %15 = call i32 @drm_mode_set_config_internal(ptr noundef nonnull %2) #7
  %16 = icmp eq i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #7
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %8
  %18 = load ptr, ptr %9, align 4
  %19 = icmp eq ptr %18, %3
  br i1 %19, label %20, label %8

20:                                               ; preds = %17, %13, %1
  %21 = phi i32 [ 0, %1 ], [ %15, %13 ], [ 0, %17 ]
  call void @drm_modeset_unlock_all(ptr noundef %0) #7
  ret i32 %21
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_set_config_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 2146410443, i32 1073205}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2155357574, i64 2155358072, i64 2155357611, i64 2155357667, i64 2155357701, i64 2155357725, i64 2155357766, i64 2155357787, i64 2155357815, i64 2155357849}
!14 = !{i64 2155358628, i64 2155359126, i64 2155358665, i64 2155358721, i64 2155358755, i64 2155358779, i64 2155358820, i64 2155358841, i64 2155358869, i64 2155358903}
!15 = !{i64 2155359714, i64 2155360212, i64 2155359751, i64 2155359807, i64 2155359841, i64 2155359865, i64 2155359906, i64 2155359927, i64 2155359955, i64 2155359989}
!16 = !{i64 2155360790, i64 2155361288, i64 2155360827, i64 2155360883, i64 2155360917, i64 2155360941, i64 2155360982, i64 2155361003, i64 2155361031, i64 2155361065}
!17 = !{i64 2155361894, i64 2155362392, i64 2155361931, i64 2155361987, i64 2155362021, i64 2155362045, i64 2155362086, i64 2155362107, i64 2155362135, i64 2155362169}
