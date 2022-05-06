; ModuleID = '/llk/IR/drivers/gpu/drm/drm_mode_config.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_mode_config.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_config_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_config_reset\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_config_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drmm_mode_config_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drmm_mode_config_init\22\09\09\09\09\09"
module asm "__kstrtabns_drmm_mode_config_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_config_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_config_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_config_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.drm_prop_enum_list = type { i32, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.71, ptr, i32, ptr, i8, i32 }
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
%struct.anon.71 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_mode_card_res = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_drm_mode_config_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_config_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_config_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_config_reset to i32), ptr @__kstrtab_drm_mode_config_reset, ptr @__kstrtabns_drm_mode_config_reset }, section "___ksymtab+drm_mode_config_reset", align 4
@drmm_mode_config_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [24 x i8] c"&dev->mode_config.mutex\00", align 1
@drmm_mode_config_init.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"&dev->mode_config.idr_mutex\00", align 1
@drmm_mode_config_init.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"&dev->mode_config.fb_lock\00", align 1
@drmm_mode_config_init.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"&dev->mode_config.blob_lock\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"drm_mode_config_init_release\00", align 1
@__kstrtab_drmm_mode_config_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drmm_mode_config_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drmm_mode_config_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drmm_mode_config_init to i32), ptr @__kstrtab_drmm_mode_config_init, ptr @__kstrtabns_drmm_mode_config_init }, section "___ksymtab+drmm_mode_config_init", align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"drivers/gpu/drm/drm_mode_config.c\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"connector %s leaked!\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"[leaked fb]\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"framebuffer[%u]:\0A\00", align 1
@__kstrtab_drm_mode_config_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_config_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_config_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_config_cleanup to i32), ptr @__kstrtab_drm_mode_config_cleanup, ptr @__kstrtabns_drm_mode_config_cleanup }, section "___ksymtab+drm_mode_config_cleanup", align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"Missing primary plane on [CRTC:%d:%s]\0A\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"[CRTC:%d:%s] must not have both a cursor plane and a cursor_set func\00", align 1
@.str.14 = private unnamed_addr constant [70 x i8] c"[CRTC:%d:%s] must not have both a cursor plane and a cursor_set2 func\00", align 1
@.str.15 = private unnamed_addr constant [70 x i8] c"[CRTC:%d:%s] must not have both a cursor plane and a cursor_move func\00", align 1
@.str.16 = private unnamed_addr constant [88 x i8] c"Bogus primary plane possible_crtcs: [PLANE:%d:%s] must be compatible with [CRTC:%d:%s]\0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"Primary plane [PLANE:%d:%s] used for multiple CRTCs\00", align 1
@.str.18 = private unnamed_addr constant [87 x i8] c"Bogus cursor plane possible_crtcs: [PLANE:%d:%s] must be compatible with [CRTC:%d:%s]\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"Cursor plane [PLANE:%d:%s] used for multiple CRTCs\00", align 1
@.str.20 = private unnamed_addr constant [93 x i8] c"Must have as many primary planes as there are CRTCs, but have %u primary planes and %u CRTCs\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@drm_plane_type_enum_list = internal constant [3 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.44 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.45 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.46 }], align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"SRC_X\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"SRC_Y\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"SRC_W\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"SRC_H\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"CRTC_X\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"CRTC_Y\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"CRTC_W\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"CRTC_H\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"FB_ID\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"IN_FENCE_FD\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"OUT_FENCE_PTR\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"CRTC_ID\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"FB_DAMAGE_CLIPS\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"MODE_ID\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"VRR_ENABLED\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"DEGAMMA_LUT\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"DEGAMMA_LUT_SIZE\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"CTM\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"GAMMA_LUT\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"GAMMA_LUT_SIZE\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"IN_FORMATS\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"Overlay\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"Primary\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"Cursor\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"include/drm/drm_modeset_lock.h\00", align 1
@.str.48 = private unnamed_addr constant [125 x i8] c"possible_clones mismatch: [ENCODER:%d:%s] mask=0x%x possible_clones=0x%x vs. [ENCODER:%d:%s] mask=0x%x possible_clones=0x%x\0A\00", align 1
@.str.49 = private unnamed_addr constant [86 x i8] c"Bogus possible_clones: [ENCODER:%d:%s] possible_clones=0x%x (full encoder mask=0x%x)\0A\00", align 1
@.str.50 = private unnamed_addr constant [81 x i8] c"Bogus possible_crtcs: [ENCODER:%d:%s] possible_crtcs=0x%x (full crtc mask=0x%x)\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_drm_mode_config_cleanup, ptr @__ksymtab_drm_mode_config_reset, ptr @__ksymtab_drmm_mode_config_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_modeset_register_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @drm_plane_register_all(ptr noundef %0) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  %5 = tail call i32 @drm_crtc_register_all(ptr noundef %0) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = tail call i32 @drm_encoder_register_all(ptr noundef %0) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call i32 @drm_connector_register_all(ptr noundef %0) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  tail call void @drm_encoder_unregister_all(ptr noundef %0) #5
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i32 [ %8, %7 ], [ %11, %13 ]
  tail call void @drm_crtc_unregister_all(ptr noundef %0) #5
  br label %16

16:                                               ; preds = %14, %4
  %17 = phi i32 [ %5, %4 ], [ %15, %14 ]
  tail call void @drm_plane_unregister_all(ptr noundef %0) #5
  br label %18

18:                                               ; preds = %16, %10, %1
  %19 = phi i32 [ 0, %10 ], [ %2, %1 ], [ %17, %16 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_register_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_register_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_register_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_unregister_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_unregister_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_unregister_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_modeset_unregister_all(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @drm_connector_unregister_all(ptr noundef %0) #5
  tail call void @drm_encoder_unregister_all(ptr noundef %0) #5
  tail call void @drm_crtc_unregister_all(ptr noundef %0) #5
  tail call void @drm_plane_unregister_all(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_getresources(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.drm_connector_list_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, 2
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %169, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %15) #5
  %16 = load i64, ptr %1, align 8
  %17 = trunc i64 %16 to i32
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 20
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %45, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.drm_mode_card_res, ptr %1, i32 0, i32 4
  br label %24

24:                                               ; preds = %41, %22
  %25 = phi ptr [ %20, %22 ], [ %43, %41 ]
  %26 = phi i32 [ 0, %22 ], [ %42, %41 ]
  %27 = load i32, ptr %23, align 8
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = getelementptr i32, ptr %18, i32 %26
  %31 = getelementptr i8, ptr %25, i32 -104
  %32 = load i32, ptr %31, align 4
  %33 = tail call ptr @llvm.thread.pointer() #5
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %34) #6, !srcloc !9
  %36 = and i32 %35, -13
  %37 = or i32 %36, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #5, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !11
  %38 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %30, i32 %32, i32 -1090519041) #5, !srcloc !12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #5, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  tail call void @mutex_unlock(ptr noundef %15) #5
  br label %169

41:                                               ; preds = %29, %24
  %42 = add i32 %26, 1
  %43 = load ptr, ptr %25, align 4
  %44 = icmp eq ptr %43, %19
  br i1 %44, label %45, label %24

45:                                               ; preds = %41, %14
  %46 = phi i32 [ 0, %14 ], [ %42, %41 ]
  %47 = getelementptr inbounds %struct.drm_mode_card_res, ptr %1, i32 0, i32 4
  store i32 %46, ptr %47, align 8
  tail call void @mutex_unlock(ptr noundef %15) #5
  %48 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 26
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.drm_mode_card_res, ptr %1, i32 0, i32 11
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 24
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.drm_mode_card_res, ptr %1, i32 0, i32 10
  store i32 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 25
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.drm_mode_card_res, ptr %1, i32 0, i32 9
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 23
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.drm_mode_card_res, ptr %1, i32 0, i32 8
  store i32 %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.drm_mode_card_res, ptr %1, i32 0, i32 1
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = inttoptr i32 %62 to ptr
  %64 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %94, label %67

67:                                               ; preds = %45
  %68 = getelementptr inbounds %struct.drm_mode_card_res, ptr %1, i32 0, i32 5
  br label %69

69:                                               ; preds = %90, %67
  %70 = phi ptr [ %65, %67 ], [ %92, %90 ]
  %71 = phi i32 [ 0, %67 ], [ %91, %90 ]
  %72 = getelementptr i8, ptr %70, i32 44
  %73 = load i32, ptr %72, align 4
  %74 = tail call zeroext i1 @drm_lease_held(ptr noundef %2, i32 noundef %73) #5
  br i1 %74, label %75, label %90

75:                                               ; preds = %69
  %76 = load i32, ptr %68, align 4
  %77 = icmp ult i32 %71, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = getelementptr i32, ptr %63, i32 %71
  %80 = load i32, ptr %72, align 4
  %81 = tail call ptr @llvm.thread.pointer() #5
  %82 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 3
  %83 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %82) #6, !srcloc !9
  %84 = and i32 %83, -13
  %85 = or i32 %84, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #5, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !11
  %86 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %79, i32 %80, i32 -1090519041) #5, !srcloc !13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #5, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !11
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %169

88:                                               ; preds = %78, %75
  %89 = add i32 %71, 1
  br label %90

90:                                               ; preds = %88, %69
  %91 = phi i32 [ %89, %88 ], [ %71, %69 ]
  %92 = load ptr, ptr %70, align 4
  %93 = icmp eq ptr %92, %64
  br i1 %93, label %94, label %69

94:                                               ; preds = %90, %45
  %95 = phi i32 [ 0, %45 ], [ %91, %90 ]
  %96 = getelementptr inbounds %struct.drm_mode_card_res, ptr %1, i32 0, i32 5
  store i32 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.drm_mode_card_res, ptr %1, i32 0, i32 3
  %98 = load i64, ptr %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = inttoptr i32 %99 to ptr
  %101 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %101
  br i1 %103, label %126, label %104

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.drm_mode_card_res, ptr %1, i32 0, i32 7
  br label %106

106:                                              ; preds = %122, %104
  %107 = phi ptr [ %102, %104 ], [ %124, %122 ]
  %108 = phi i32 [ 0, %104 ], [ %123, %122 ]
  %109 = load i32, ptr %105, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = getelementptr i32, ptr %100, i32 %108
  %113 = getelementptr i8, ptr %107, i32 8
  %114 = load i32, ptr %113, align 4
  %115 = tail call ptr @llvm.thread.pointer() #5
  %116 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 3
  %117 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %116) #6, !srcloc !9
  %118 = and i32 %117, -13
  %119 = or i32 %118, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %119) #5, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !11
  %120 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %112, i32 %114, i32 -1090519041) #5, !srcloc !14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %117) #5, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !11
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %169

122:                                              ; preds = %111, %106
  %123 = add i32 %108, 1
  %124 = load ptr, ptr %107, align 4
  %125 = icmp eq ptr %124, %101
  br i1 %125, label %126, label %106

126:                                              ; preds = %122, %94
  %127 = phi i32 [ 0, %94 ], [ %123, %122 ]
  %128 = getelementptr inbounds %struct.drm_mode_card_res, ptr %1, i32 0, i32 7
  store i32 %127, ptr %128, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %0, ptr noundef nonnull %4) #5
  %129 = getelementptr inbounds %struct.drm_mode_card_res, ptr %1, i32 0, i32 2
  %130 = load i64, ptr %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = inttoptr i32 %131 to ptr
  %133 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 5
  %134 = getelementptr inbounds %struct.drm_mode_card_res, ptr %1, i32 0, i32 6
  br label %135

135:                                              ; preds = %166, %126
  %136 = phi i32 [ %167, %166 ], [ 0, %126 ]
  br label %137

137:                                              ; preds = %148, %135
  br label %138

138:                                              ; preds = %144, %137
  %139 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #5
  %140 = icmp eq ptr %139, null
  br i1 %140, label %168, label %141

141:                                              ; preds = %138
  %142 = load i8, ptr %133, align 1, !range !15
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.drm_connector, ptr %139, i32 0, i32 10
  %146 = load i32, ptr %145, align 8
  %147 = icmp eq i32 %146, 18
  br i1 %147, label %138, label %148

148:                                              ; preds = %144, %141
  %149 = getelementptr inbounds %struct.drm_connector, ptr %139, i32 0, i32 6
  %150 = load i32, ptr %149, align 8
  %151 = call zeroext i1 @drm_lease_held(ptr noundef %2, i32 noundef %150) #5
  br i1 %151, label %152, label %137

152:                                              ; preds = %148
  %153 = load i32, ptr %134, align 8
  %154 = icmp ult i32 %136, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %152
  %156 = getelementptr i32, ptr %132, i32 %136
  %157 = load i32, ptr %149, align 8
  %158 = tail call ptr @llvm.thread.pointer() #5
  %159 = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 3
  %160 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %159) #6, !srcloc !9
  %161 = and i32 %160, -13
  %162 = or i32 %161, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %162) #5, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !11
  %163 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %156, i32 %157, i32 -1090519041) #5, !srcloc !16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %160) #5, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !11
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %155
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #5
  br label %169

166:                                              ; preds = %155, %152
  %167 = add i32 %136, 1
  br label %135

168:                                              ; preds = %138
  store i32 %136, ptr %134, align 8
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #5
  br label %169

169:                                              ; preds = %168, %165, %111, %78, %40, %3
  %170 = phi i32 [ -14, %40 ], [ -14, %165 ], [ 0, %168 ], [ -95, %3 ], [ -14, %111 ], [ -14, %78 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret i32 %170
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_lease_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_mode_config_reset(ptr noundef %0) #0 {
  %2 = alloca %struct.drm_connector_list_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 18
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %18, label %6

6:                                                ; preds = %15, %1
  %7 = phi ptr [ %16, %15 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 100
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.drm_plane_funcs, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %7, i32 -4
  tail call void %11(ptr noundef %14) #5
  br label %15

15:                                               ; preds = %13, %6
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %18, label %6

18:                                               ; preds = %15, %1
  %19 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %33, label %22

22:                                               ; preds = %30, %18
  %23 = phi ptr [ %31, %30 ], [ %20, %18 ]
  %24 = getelementptr i8, ptr %23, i32 320
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %23, i32 -8
  tail call void %26(ptr noundef %29) #5
  br label %30

30:                                               ; preds = %28, %22
  %31 = load ptr, ptr %23, align 4
  %32 = icmp eq ptr %31, %19
  br i1 %32, label %33, label %22

33:                                               ; preds = %30, %18
  %34 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %50, label %37

37:                                               ; preds = %47, %33
  %38 = phi ptr [ %48, %47 ], [ %35, %33 ]
  %39 = getelementptr i8, ptr %38, i32 -4
  %40 = getelementptr i8, ptr %38, i32 60
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %41, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void %44(ptr noundef %39) #5
  br label %47

47:                                               ; preds = %46, %43, %37
  %48 = load ptr, ptr %38, align 4
  %49 = icmp eq ptr %48, %34
  br i1 %49, label %50, label %37

50:                                               ; preds = %47, %33
  call void @drm_connector_list_iter_begin(ptr noundef %0, ptr noundef nonnull %2) #5
  %51 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #5
  %52 = icmp eq ptr %51, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %61, %50
  %54 = phi ptr [ %62, %61 ], [ %51, %50 ]
  %55 = getelementptr inbounds %struct.drm_connector, ptr %54, i32 0, i32 21
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.drm_connector_funcs, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  call void %58(ptr noundef nonnull %54) #5
  br label %61

61:                                               ; preds = %60, %53
  %62 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #5
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %53

64:                                               ; preds = %61, %50
  call void @drm_connector_list_iter_end(ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drmm_mode_config_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @drmm_mode_config_init.__key) #5
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 1
  tail call void @drm_modeset_lock_init(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 3
  tail call void @__mutex_init(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @drmm_mode_config_init.__key.1) #5
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 6
  tail call void @__mutex_init(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @drmm_mode_config_init.__key.3) #5
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 33
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @drmm_mode_config_init.__key.5) #5
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 8
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 8, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 12
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 12, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 21
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 21, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 34
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 34, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 18
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 18, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 22
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 22, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 4
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 4, i32 0, i32 1
  store i32 33554436, ptr %24, align 4
  %25 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 4, i32 0, i32 2
  %26 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  store i32 33554436, ptr %26, align 4
  %27 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 5, i32 0, i32 2
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 5, i32 1
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 5, i32 2
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 11
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 11, i32 0, i32 1
  store i32 33554437, ptr %31, align 4
  %32 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 11, i32 0, i32 2
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 9
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 13
  store ptr null, ptr %34, align 4
  %35 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 14
  store i32 -32, ptr %35, align 4
  %36 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 14, i32 1
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 14, i32 1, i32 1
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 14, i32 2
  store ptr @drm_connector_free_work_fn, ptr %38, align 4
  %39 = tail call i32 @drm_connector_create_standard_properties(ptr noundef %0) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %134

41:                                               ; preds = %1
  %42 = tail call ptr @drm_property_create_enum(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef nonnull @drm_plane_type_enum_list, i32 noundef 3) #5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %134, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 40
  store ptr %42, ptr %45, align 4
  %46 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef -2147483648, ptr noundef nonnull @.str.22, i64 noundef 0, i64 noundef 4294967295) #5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %134, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 41
  store ptr %46, ptr %49, align 4
  %50 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef -2147483648, ptr noundef nonnull @.str.23, i64 noundef 0, i64 noundef 4294967295) #5
  %51 = icmp eq ptr %50, null
  br i1 %51, label %134, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 42
  store ptr %50, ptr %53, align 4
  %54 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef -2147483648, ptr noundef nonnull @.str.24, i64 noundef 0, i64 noundef 4294967295) #5
  %55 = icmp eq ptr %54, null
  br i1 %55, label %134, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 43
  store ptr %54, ptr %57, align 4
  %58 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef -2147483648, ptr noundef nonnull @.str.25, i64 noundef 0, i64 noundef 4294967295) #5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %134, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 44
  store ptr %58, ptr %61, align 4
  %62 = tail call ptr @drm_property_create_signed_range(ptr noundef %0, i32 noundef -2147483648, ptr noundef nonnull @.str.26, i64 noundef -2147483648, i64 noundef 2147483647) #5
  %63 = icmp eq ptr %62, null
  br i1 %63, label %134, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 45
  store ptr %62, ptr %65, align 4
  %66 = tail call ptr @drm_property_create_signed_range(ptr noundef %0, i32 noundef -2147483648, ptr noundef nonnull @.str.27, i64 noundef -2147483648, i64 noundef 2147483647) #5
  %67 = icmp eq ptr %66, null
  br i1 %67, label %134, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 46
  store ptr %66, ptr %69, align 4
  %70 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef -2147483648, ptr noundef nonnull @.str.28, i64 noundef 0, i64 noundef 2147483647) #5
  %71 = icmp eq ptr %70, null
  br i1 %71, label %134, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 47
  store ptr %70, ptr %73, align 4
  %74 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef -2147483648, ptr noundef nonnull @.str.29, i64 noundef 0, i64 noundef 2147483647) #5
  %75 = icmp eq ptr %74, null
  br i1 %75, label %134, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 48
  store ptr %74, ptr %77, align 4
  %78 = tail call ptr @drm_property_create_object(ptr noundef %0, i32 noundef -2147483648, ptr noundef nonnull @.str.30, i32 noundef -67372037) #5
  %79 = icmp eq ptr %78, null
  br i1 %79, label %134, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 49
  store ptr %78, ptr %81, align 4
  %82 = tail call ptr @drm_property_create_signed_range(ptr noundef %0, i32 noundef -2147483648, ptr noundef nonnull @.str.31, i64 noundef -1, i64 noundef 2147483647) #5
  %83 = icmp eq ptr %82, null
  br i1 %83, label %134, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 50
  store ptr %82, ptr %85, align 4
  %86 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef -2147483648, ptr noundef nonnull @.str.32, i64 noundef 0, i64 noundef -1) #5
  %87 = icmp eq ptr %86, null
  br i1 %87, label %134, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 51
  store ptr %86, ptr %89, align 4
  %90 = tail call ptr @drm_property_create_object(ptr noundef %0, i32 noundef -2147483648, ptr noundef nonnull @.str.33, i32 noundef -858993460) #5
  %91 = icmp eq ptr %90, null
  br i1 %91, label %134, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 52
  store ptr %90, ptr %93, align 4
  %94 = tail call ptr @drm_property_create(ptr noundef %0, i32 noundef -2147483632, ptr noundef nonnull @.str.34, i32 noundef 0) #5
  %95 = icmp eq ptr %94, null
  br i1 %95, label %134, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 53
  store ptr %94, ptr %97, align 4
  %98 = tail call ptr @drm_property_create_bool(ptr noundef %0, i32 noundef -2147483648, ptr noundef nonnull @.str.35) #5
  %99 = icmp eq ptr %98, null
  br i1 %99, label %134, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 54
  store ptr %98, ptr %101, align 4
  %102 = tail call ptr @drm_property_create(ptr noundef %0, i32 noundef -2147483632, ptr noundef nonnull @.str.36, i32 noundef 0) #5
  %103 = icmp eq ptr %102, null
  br i1 %103, label %134, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 55
  store ptr %102, ptr %105, align 4
  %106 = tail call ptr @drm_property_create_bool(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.37) #5
  %107 = icmp eq ptr %106, null
  br i1 %107, label %134, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 56
  store ptr %106, ptr %109, align 4
  %110 = tail call ptr @drm_property_create(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.38, i32 noundef 0) #5
  %111 = icmp eq ptr %110, null
  br i1 %111, label %134, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 76
  store ptr %110, ptr %113, align 4
  %114 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.39, i64 noundef 0, i64 noundef 4294967295) #5
  %115 = icmp eq ptr %114, null
  br i1 %115, label %134, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 77
  store ptr %114, ptr %117, align 4
  %118 = tail call ptr @drm_property_create(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.40, i32 noundef 0) #5
  %119 = icmp eq ptr %118, null
  br i1 %119, label %134, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 78
  store ptr %118, ptr %121, align 4
  %122 = tail call ptr @drm_property_create(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.41, i32 noundef 0) #5
  %123 = icmp eq ptr %122, null
  br i1 %123, label %134, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 79
  store ptr %122, ptr %125, align 4
  %126 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.42, i64 noundef 0, i64 noundef 4294967295) #5
  %127 = icmp eq ptr %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 80
  store ptr %126, ptr %129, align 4
  %130 = tail call ptr @drm_property_create(ptr noundef %0, i32 noundef 20, ptr noundef nonnull @.str.43, i32 noundef 0) #5
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 99
  store ptr %130, ptr %133, align 4
  br label %134

134:                                              ; preds = %132, %128, %124, %120, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %41, %1
  %135 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 7
  store i32 0, ptr %135, align 4
  %136 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 10
  store i32 0, ptr %136, align 4
  %137 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 19
  store i32 0, ptr %137, align 4
  %138 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 15
  store i32 0, ptr %138, align 4
  %139 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 17
  store i32 0, ptr %139, align 4
  %140 = tail call i32 @__drmm_add_action_or_reset(ptr noundef %0, ptr noundef nonnull @drm_mode_config_init_release, ptr noundef null, ptr noundef nonnull @.str.7) #5
  ret i32 %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_free_work_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_mode_config_init_release(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @drm_mode_config_cleanup(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_mode_config_cleanup(ptr noundef %0) #0 {
  %2 = alloca %struct.drm_connector_list_iter, align 8
  %3 = alloca %struct.drm_printer, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  store i64 0, ptr %2, align 8, !annotation !8
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %16, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %10, %7 ], [ %5, %1 ]
  %9 = getelementptr i8, ptr %8, i32 -4
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr i8, ptr %8, i32 60
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_encoder_funcs, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %9) #5
  %15 = icmp eq ptr %10, %4
  br i1 %15, label %16, label %7

16:                                               ; preds = %7, %1
  call void @drm_connector_list_iter_begin(ptr noundef %0, ptr noundef nonnull %2) #5
  %17 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %22, %19 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.drm_connector, ptr %20, i32 0, i32 6
  call void @drm_mode_object_put(ptr noundef %21) #5
  %22 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19

24:                                               ; preds = %19, %16
  call void @drm_connector_list_iter_end(ptr noundef nonnull %2) #5
  %25 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 14
  %26 = call zeroext i1 @flush_work(ptr noundef %25) #5
  %27 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 12
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %40, label %30, !prof !17

30:                                               ; preds = %24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 504, i32 noundef 9, ptr noundef null) #5
  call void @drm_connector_list_iter_begin(ptr noundef %0, ptr noundef nonnull %2) #5
  %31 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #5
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %33, %30
  %34 = phi ptr [ %37, %33 ], [ %31, %30 ]
  %35 = getelementptr inbounds %struct.drm_connector, ptr %34, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, ptr noundef %36) #5
  %37 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #5
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %33

39:                                               ; preds = %33, %30
  call void @drm_connector_list_iter_end(ptr noundef nonnull %2) #5
  br label %40

40:                                               ; preds = %39, %24
  %41 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 21
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %48, label %44

44:                                               ; preds = %44, %40
  %45 = phi ptr [ %46, %44 ], [ %42, %40 ]
  %46 = load ptr, ptr %45, align 4
  call void @drm_property_destroy(ptr noundef %0, ptr noundef %45) #5
  %47 = icmp eq ptr %46, %41
  br i1 %47, label %48, label %44

48:                                               ; preds = %44, %40
  %49 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 18
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %61, label %52

52:                                               ; preds = %52, %48
  %53 = phi ptr [ %55, %52 ], [ %50, %48 ]
  %54 = getelementptr i8, ptr %53, i32 -4
  %55 = load ptr, ptr %53, align 4
  %56 = getelementptr i8, ptr %53, i32 100
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.drm_plane_funcs, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  call void %59(ptr noundef %54) #5
  %60 = icmp eq ptr %55, %49
  br i1 %60, label %61, label %52

61:                                               ; preds = %52, %48
  %62 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %62
  br i1 %64, label %74, label %65

65:                                               ; preds = %65, %61
  %66 = phi ptr [ %68, %65 ], [ %63, %61 ]
  %67 = getelementptr i8, ptr %66, i32 -8
  %68 = load ptr, ptr %66, align 8
  %69 = getelementptr i8, ptr %66, i32 320
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %70, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  call void %72(ptr noundef %67) #5
  %73 = icmp eq ptr %68, %62
  br i1 %73, label %74, label %65

74:                                               ; preds = %65, %61
  %75 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 34
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %75
  br i1 %77, label %83, label %78

78:                                               ; preds = %78, %74
  %79 = phi ptr [ %81, %78 ], [ %76, %74 ]
  %80 = getelementptr i8, ptr %79, i32 -24
  %81 = load ptr, ptr %79, align 4
  call void @drm_property_blob_put(ptr noundef %80) #5
  %82 = icmp eq ptr %81, %75
  br i1 %82, label %83, label %78

83:                                               ; preds = %78, %74
  %84 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 8
  %85 = load volatile ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, %84
  br i1 %86, label %102, label %87, !prof !17

87:                                               ; preds = %83
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 538, i32 noundef 9, ptr noundef null) #5
  %88 = load ptr, ptr %84, align 4
  %89 = icmp eq ptr %88, %84
  br i1 %89, label %102, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 1
  %92 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 2
  %93 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 3
  br label %94

94:                                               ; preds = %94, %90
  %95 = phi ptr [ %88, %90 ], [ %97, %94 ]
  %96 = getelementptr i8, ptr %95, i32 -4
  %97 = load ptr, ptr %95, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  store ptr @__drm_printfn_debug, ptr %3, align 4, !alias.scope !18
  store ptr null, ptr %91, align 4, !alias.scope !18
  store ptr null, ptr %92, align 4, !alias.scope !18
  store ptr @.str.10, ptr %93, align 4, !alias.scope !18
  %98 = getelementptr i8, ptr %95, i32 8
  %99 = load i32, ptr %98, align 4
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.11, i32 noundef %99) #5
  call void @drm_framebuffer_print_info(ptr noundef nonnull %3, i32 noundef 1, ptr noundef %96) #5
  %100 = getelementptr i8, ptr %95, i32 20
  call void @drm_framebuffer_free(ptr noundef %100) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  %101 = icmp eq ptr %97, %84
  br i1 %101, label %102, label %94

102:                                              ; preds = %94, %87, %83
  %103 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 11
  call void @ida_destroy(ptr noundef %103) #5
  %104 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 5
  call void @idr_destroy(ptr noundef %104) #5
  %105 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 4
  call void @idr_destroy(ptr noundef %105) #5
  %106 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 1, i32 1
  %107 = load volatile ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %106
  br i1 %108, label %110, label %109, !prof !17

109:                                              ; preds = %102
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 113, i32 noundef 9, ptr noundef null) #5
  br label %110

110:                                              ; preds = %109, %102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_blob_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_framebuffer_print_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_framebuffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_mode_config_validate(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %5, 2
  %9 = and i32 %8, %7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %286, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %126, label %18

15:                                               ; preds = %27
  %16 = load ptr, ptr %12, align 4
  %17 = icmp eq ptr %16, %12
  br i1 %17, label %126, label %30

18:                                               ; preds = %27, %11
  %19 = phi ptr [ %28, %27 ], [ %13, %11 ]
  %20 = getelementptr i8, ptr %19, i32 44
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %19, i32 36
  %25 = load i32, ptr %24, align 4
  %26 = shl nuw i32 1, %25
  store i32 %26, ptr %20, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load ptr, ptr %19, align 4
  %29 = icmp eq ptr %28, %12
  br i1 %29, label %15, label %18

30:                                               ; preds = %123, %15
  %31 = phi ptr [ %124, %123 ], [ %16, %15 ]
  %32 = getelementptr i8, ptr %31, i32 -4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 30, i32 16
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %76, label %37

37:                                               ; preds = %37, %30
  %38 = phi ptr [ %44, %37 ], [ %35, %30 ]
  %39 = phi i32 [ %43, %37 ], [ 0, %30 ]
  %40 = getelementptr i8, ptr %38, i32 36
  %41 = load i32, ptr %40, align 4
  %42 = shl nuw i32 1, %41
  %43 = or i32 %42, %39
  %44 = load ptr, ptr %38, align 4
  %45 = icmp eq ptr %44, %34
  br i1 %45, label %46, label %37

46:                                               ; preds = %37
  %47 = getelementptr i8, ptr %31, i32 44
  %48 = getelementptr i8, ptr %31, i32 36
  %49 = getelementptr i8, ptr %31, i32 8
  %50 = getelementptr i8, ptr %31, i32 28
  br label %51

51:                                               ; preds = %73, %46
  %52 = phi ptr [ %35, %46 ], [ %74, %73 ]
  %53 = load i32, ptr %47, align 4
  %54 = getelementptr i8, ptr %52, i32 36
  %55 = load i32, ptr %54, align 4
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, %53
  %58 = icmp eq i32 %57, 0
  %59 = getelementptr i8, ptr %52, i32 44
  %60 = load i32, ptr %59, align 4
  %61 = load i32, ptr %48, align 4
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %58, %64
  br i1 %65, label %73, label %66, !prof !17

66:                                               ; preds = %51
  %67 = load i32, ptr %49, align 4
  %68 = load ptr, ptr %50, align 4
  %69 = getelementptr i8, ptr %52, i32 8
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %52, i32 28
  %72 = load ptr, ptr %71, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 591, i32 noundef 9, ptr noundef nonnull @.str.48, i32 noundef %67, ptr noundef %68, i32 noundef %62, i32 noundef %53, i32 noundef %70, ptr noundef %72, i32 noundef %56, i32 noundef %60) #5
  br label %73

73:                                               ; preds = %66, %51
  %74 = load ptr, ptr %52, align 4
  %75 = icmp eq ptr %74, %34
  br i1 %75, label %76, label %51

76:                                               ; preds = %73, %30
  %77 = phi i32 [ 0, %30 ], [ %43, %73 ]
  %78 = getelementptr i8, ptr %31, i32 44
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr i8, ptr %31, i32 36
  %81 = load i32, ptr %80, align 4
  %82 = shl nuw i32 1, %81
  %83 = and i32 %82, %79
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %76
  %86 = xor i32 %77, -1
  %87 = and i32 %79, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89, !prof !17

89:                                               ; preds = %85, %76
  %90 = getelementptr i8, ptr %31, i32 8
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr i8, ptr %31, i32 28
  %93 = load ptr, ptr %92, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 599, i32 noundef 9, ptr noundef nonnull @.str.49, i32 noundef %91, ptr noundef %93, i32 noundef %79, i32 noundef %77) #5
  br label %94

94:                                               ; preds = %89, %85
  %95 = load ptr, ptr %32, align 4
  %96 = getelementptr inbounds %struct.drm_device, ptr %95, i32 0, i32 30, i32 20
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, %96
  br i1 %98, label %108, label %99

99:                                               ; preds = %99, %94
  %100 = phi ptr [ %106, %99 ], [ %97, %94 ]
  %101 = phi i32 [ %105, %99 ], [ 0, %94 ]
  %102 = getelementptr i8, ptr %100, i32 72
  %103 = load i32, ptr %102, align 8
  %104 = shl nuw i32 1, %103
  %105 = or i32 %104, %101
  %106 = load ptr, ptr %100, align 4
  %107 = icmp eq ptr %106, %96
  br i1 %107, label %108, label %99

108:                                              ; preds = %99, %94
  %109 = phi i32 [ 0, %94 ], [ %105, %99 ]
  %110 = getelementptr i8, ptr %31, i32 40
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, %109
  %113 = icmp eq i32 %112, 0
  %114 = xor i32 %109, -1
  %115 = and i32 %111, %114
  %116 = icmp ne i32 %115, 0
  %117 = select i1 %113, i1 true, i1 %116
  br i1 %117, label %118, label %123, !prof !21

118:                                              ; preds = %108
  %119 = getelementptr i8, ptr %31, i32 8
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr i8, ptr %31, i32 28
  %122 = load ptr, ptr %121, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 622, i32 noundef 9, ptr noundef nonnull @.str.50, i32 noundef %120, ptr noundef %122, i32 noundef %111, i32 noundef %109) #5
  br label %123

123:                                              ; preds = %118, %108
  %124 = load ptr, ptr %31, align 4
  %125 = icmp eq ptr %124, %12
  br i1 %125, label %126, label %30

126:                                              ; preds = %123, %15, %11
  %127 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, %127
  br i1 %129, label %266, label %130

130:                                              ; preds = %262, %126
  %131 = phi ptr [ %264, %262 ], [ %128, %126 ]
  %132 = phi i32 [ %222, %262 ], [ 0, %126 ]
  %133 = phi i32 [ %263, %262 ], [ 0, %126 ]
  %134 = getelementptr i8, ptr %131, i32 64
  %135 = load ptr, ptr %134, align 8
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %142, !prof !21

137:                                              ; preds = %130
  %138 = getelementptr i8, ptr %131, i32 44
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr i8, ptr %131, i32 8
  %141 = load ptr, ptr %140, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 646, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %139, ptr noundef %141) #5
  br label %142

142:                                              ; preds = %137, %130
  %143 = getelementptr i8, ptr %131, i32 68
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %181, label %146

146:                                              ; preds = %142
  %147 = getelementptr i8, ptr %131, i32 320
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %148, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %159, label %152, !prof !17

152:                                              ; preds = %146
  %153 = getelementptr i8, ptr %131, i32 44
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr i8, ptr %131, i32 8
  %156 = load ptr, ptr %155, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 650, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %154, ptr noundef %156) #5
  %157 = load ptr, ptr %143, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %181, label %159

159:                                              ; preds = %152, %146
  %160 = load ptr, ptr %147, align 8
  %161 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %160, i32 0, i32 2
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %171, label %164, !prof !17

164:                                              ; preds = %159
  %165 = getelementptr i8, ptr %131, i32 44
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr i8, ptr %131, i32 8
  %168 = load ptr, ptr %167, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 653, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %166, ptr noundef %168) #5
  %169 = load ptr, ptr %143, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %181, label %171

171:                                              ; preds = %164, %159
  %172 = load ptr, ptr %147, align 8
  %173 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %172, i32 0, i32 3
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %181, label %176, !prof !17

176:                                              ; preds = %171
  %177 = getelementptr i8, ptr %131, i32 44
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr i8, ptr %131, i32 8
  %180 = load ptr, ptr %179, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 656, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %178, ptr noundef %180) #5
  br label %181

181:                                              ; preds = %176, %171, %164, %152, %142
  %182 = load ptr, ptr %134, align 8
  %183 = icmp eq ptr %182, null
  br i1 %183, label %221, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.drm_plane, ptr %182, i32 0, i32 5
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr i8, ptr %131, i32 72
  %188 = load i32, ptr %187, align 8
  %189 = shl nuw i32 1, %188
  %190 = and i32 %189, %186
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %202, !prof !21

192:                                              ; preds = %184
  %193 = getelementptr inbounds %struct.drm_plane, ptr %182, i32 0, i32 4
  %194 = load i32, ptr %193, align 8
  %195 = getelementptr inbounds %struct.drm_plane, ptr %182, i32 0, i32 2
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr i8, ptr %131, i32 44
  %198 = load i32, ptr %197, align 4
  %199 = getelementptr i8, ptr %131, i32 8
  %200 = load ptr, ptr %199, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 662, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %194, ptr noundef %196, i32 noundef %198, ptr noundef %200) #5
  %201 = load ptr, ptr %134, align 8
  br label %202

202:                                              ; preds = %192, %184
  %203 = phi ptr [ %201, %192 ], [ %182, %184 ]
  %204 = getelementptr inbounds %struct.drm_plane, ptr %203, i32 0, i32 17
  %205 = load i32, ptr %204, align 4
  %206 = shl nuw i32 1, %205
  %207 = and i32 %206, %132
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %218, label %209, !prof !17

209:                                              ; preds = %202
  %210 = getelementptr inbounds %struct.drm_plane, ptr %203, i32 0, i32 4
  %211 = load i32, ptr %210, align 8
  %212 = getelementptr inbounds %struct.drm_plane, ptr %203, i32 0, i32 2
  %213 = load ptr, ptr %212, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 665, i32 noundef 9, ptr noundef nonnull @.str.17, i32 noundef %211, ptr noundef %213) #5
  %214 = load ptr, ptr %134, align 8
  %215 = getelementptr inbounds %struct.drm_plane, ptr %214, i32 0, i32 17
  %216 = load i32, ptr %215, align 4
  %217 = shl nuw i32 1, %216
  br label %218

218:                                              ; preds = %209, %202
  %219 = phi i32 [ %217, %209 ], [ %206, %202 ]
  %220 = or i32 %219, %132
  br label %221

221:                                              ; preds = %218, %181
  %222 = phi i32 [ %220, %218 ], [ %132, %181 ]
  %223 = load ptr, ptr %143, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %262, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.drm_plane, ptr %223, i32 0, i32 5
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr i8, ptr %131, i32 72
  %229 = load i32, ptr %228, align 8
  %230 = shl nuw i32 1, %229
  %231 = and i32 %230, %227
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %243, !prof !21

233:                                              ; preds = %225
  %234 = getelementptr inbounds %struct.drm_plane, ptr %223, i32 0, i32 4
  %235 = load i32, ptr %234, align 8
  %236 = getelementptr inbounds %struct.drm_plane, ptr %223, i32 0, i32 2
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr i8, ptr %131, i32 44
  %239 = load i32, ptr %238, align 4
  %240 = getelementptr i8, ptr %131, i32 8
  %241 = load ptr, ptr %240, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 672, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %235, ptr noundef %237, i32 noundef %239, ptr noundef %241) #5
  %242 = load ptr, ptr %143, align 4
  br label %243

243:                                              ; preds = %233, %225
  %244 = phi ptr [ %242, %233 ], [ %223, %225 ]
  %245 = getelementptr inbounds %struct.drm_plane, ptr %244, i32 0, i32 17
  %246 = load i32, ptr %245, align 4
  %247 = shl nuw i32 1, %246
  %248 = and i32 %247, %133
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %259, label %250, !prof !17

250:                                              ; preds = %243
  %251 = getelementptr inbounds %struct.drm_plane, ptr %244, i32 0, i32 4
  %252 = load i32, ptr %251, align 8
  %253 = getelementptr inbounds %struct.drm_plane, ptr %244, i32 0, i32 2
  %254 = load ptr, ptr %253, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 675, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %252, ptr noundef %254) #5
  %255 = load ptr, ptr %143, align 4
  %256 = getelementptr inbounds %struct.drm_plane, ptr %255, i32 0, i32 17
  %257 = load i32, ptr %256, align 4
  %258 = shl nuw i32 1, %257
  br label %259

259:                                              ; preds = %250, %243
  %260 = phi i32 [ %258, %250 ], [ %247, %243 ]
  %261 = or i32 %260, %133
  br label %262

262:                                              ; preds = %259, %221
  %263 = phi i32 [ %261, %259 ], [ %133, %221 ]
  %264 = load ptr, ptr %131, align 4
  %265 = icmp eq ptr %264, %127
  br i1 %265, label %266, label %130

266:                                              ; preds = %262, %126
  %267 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 18
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, %267
  br i1 %269, label %280, label %270

270:                                              ; preds = %270, %266
  %271 = phi ptr [ %278, %270 ], [ %268, %266 ]
  %272 = phi i32 [ %277, %270 ], [ 0, %266 ]
  %273 = getelementptr i8, ptr %271, i32 404
  %274 = load i32, ptr %273, align 8
  %275 = icmp eq i32 %274, 1
  %276 = zext i1 %275 to i32
  %277 = add i32 %272, %276
  %278 = load ptr, ptr %271, align 4
  %279 = icmp eq ptr %278, %267
  br i1 %279, label %280, label %270

280:                                              ; preds = %270, %266
  %281 = phi i32 [ 0, %266 ], [ %277, %270 ]
  %282 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 19
  %283 = load i32, ptr %282, align 4
  %284 = icmp eq i32 %281, %283
  br i1 %284, label %286, label %285, !prof !17

285:                                              ; preds = %280
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 687, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef %281, i32 noundef %283) #5
  br label %286

286:                                              ; preds = %285, %280, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_create_standard_properties(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_enum(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_signed_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_object(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_bool(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_debug(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

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
!9 = !{i64 2419982}
!10 = !{i64 2420179}
!11 = !{i64 2149905458}
!12 = !{i64 2155078637, i64 2155078917, i64 2155079251, i64 2155079585}
!13 = !{i64 2155094741, i64 2155095021, i64 2155095355, i64 2155095689}
!14 = !{i64 2155106994, i64 2155107274, i64 2155107608, i64 2155107942}
!15 = !{i8 0, i8 2}
!16 = !{i64 2155115566, i64 2155115846, i64 2155116180, i64 2155116514}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{!19}
!19 = distinct !{!19, !20, !"drm_debug_printer: argument 0"}
!20 = distinct !{!20, !"drm_debug_printer"}
!21 = !{!"branch_weights", i32 1, i32 2000}
