; ModuleID = '/llk/IR/drivers/gpu/drm/drm_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_encoder.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_encoder_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_encoder_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_encoder_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_encoder_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_encoder_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_drm_encoder_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___drmm_encoder_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__drmm_encoder_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___drmm_encoder_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_prop_enum_list = type { i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
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
%struct.anon.72 = type { i32, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_mode_get_encoder = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/drm_encoder.c\00", align 1
@__kstrtab_drm_encoder_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_encoder_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_encoder_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_encoder_init to i32), ptr @__kstrtab_drm_encoder_init, ptr @__kstrtabns_drm_encoder_init }, section "___ksymtab+drm_encoder_init", align 4
@__kstrtab_drm_encoder_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_encoder_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_encoder_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_encoder_cleanup to i32), ptr @__kstrtab_drm_encoder_cleanup, ptr @__kstrtabns_drm_encoder_cleanup }, section "___ksymtab+drm_encoder_cleanup", align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"drmm_encoder_alloc_release\00", align 1
@__kstrtab___drmm_encoder_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___drmm_encoder_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___drmm_encoder_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__drmm_encoder_alloc to i32), ptr @__kstrtab___drmm_encoder_alloc, ptr @__kstrtabns___drmm_encoder_alloc }, section "___ksymtab+__drmm_encoder_alloc", align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@drm_encoder_enum_list = internal unnamed_addr constant [9 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.3 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.4 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.5 }, %struct.drm_prop_enum_list { i32 3, ptr @.str.6 }, %struct.drm_prop_enum_list { i32 4, ptr @.str.7 }, %struct.drm_prop_enum_list { i32 5, ptr @.str.8 }, %struct.drm_prop_enum_list { i32 6, ptr @.str.9 }, %struct.drm_prop_enum_list { i32 7, ptr @.str.10 }, %struct.drm_prop_enum_list { i32 8, ptr @.str.11 }], align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DAC\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"TMDS\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"LVDS\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"TV\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Virtual\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"DSI\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"DP MST\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"DPI\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab___drmm_encoder_alloc, ptr @__ksymtab_drm_encoder_cleanup, ptr @__ksymtab_drm_encoder_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_encoder_register_all(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16
  br label %3

3:                                                ; preds = %18, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %18 ]
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = icmp eq ptr %5, %2
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %5, i32 60
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.drm_encoder_funcs, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 %14(ptr noundef %6) #5
  br label %18

18:                                               ; preds = %16, %12, %8
  %19 = phi i32 [ %17, %16 ], [ 0, %12 ], [ 0, %8 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %3, label %21

21:                                               ; preds = %18, %3
  %22 = phi i32 [ %19, %18 ], [ 0, %3 ]
  ret i32 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_encoder_unregister_all(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %19, label %5

5:                                                ; preds = %16, %1
  %6 = phi ptr [ %17, %16 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = getelementptr i8, ptr %6, i32 60
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.drm_encoder_funcs, ptr %9, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef %7) #5
  br label %16

16:                                               ; preds = %15, %11, %5
  %17 = load ptr, ptr %6, align 4
  %18 = icmp eq ptr %17, %2
  br i1 %18, label %19, label %5

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) #0 {
  %6 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.drm_encoder_funcs, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef null) #5
  br label %11

11:                                               ; preds = %10, %5
  call void @llvm.va_start(ptr nonnull %6)
  %12 = load i32, ptr %6, align 4
  %13 = insertvalue [1 x i32] poison, i32 %12, 0
  %14 = call fastcc i32 @__drm_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, [1 x i32] %13)
  call void @llvm.va_end(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  ret i32 %14
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__drm_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, [1 x i32] %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 31
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 104, i32 noundef 9, ptr noundef null) #5
  br label %42

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 2
  %13 = tail call i32 @drm_mode_object_add(ptr noundef %0, ptr noundef %12, i32 noundef -522133280) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  store ptr %0, ptr %1, align 4
  %16 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 4
  store i32 %3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 10
  store ptr %2, ptr %17, align 4
  %18 = icmp eq ptr %4, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call noalias ptr @kvasprintf(i32 noundef 3264, ptr noundef nonnull %4, [1 x i32] %5) #5
  br label %26

21:                                               ; preds = %15
  %22 = getelementptr [9 x %struct.drm_prop_enum_list], ptr @drm_encoder_enum_list, i32 0, i32 %3, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %12, align 4
  %25 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %23, i32 noundef %24) #5
  br label %26

26:                                               ; preds = %21, %19
  %27 = phi ptr [ %25, %21 ], [ %20, %19 ]
  %28 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 3
  store ptr %27, ptr %28, align 4
  %29 = icmp eq ptr %27, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 9
  store volatile ptr %31, ptr %31, align 4
  %32 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 9, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 1
  %34 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16
  %35 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16, i32 1
  %36 = load ptr, ptr %35, align 4
  store ptr %33, ptr %35, align 4
  store ptr %34, ptr %33, align 4
  %37 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 1, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %33, ptr %36, align 4
  %38 = load i32, ptr %7, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %7, align 4
  %40 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 5
  store i32 %38, ptr %40, align 4
  br label %42

41:                                               ; preds = %26
  tail call void @drm_mode_object_unregister(ptr noundef %0, ptr noundef %12) #5
  br label %42

42:                                               ; preds = %41, %30, %11, %10
  %43 = phi i32 [ -22, %10 ], [ %13, %11 ], [ -12, %41 ], [ 0, %30 ]
  ret i32 %43
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_encoder_cleanup(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %11, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %9, %6 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -56
  %9 = load ptr, ptr %7, align 4
  tail call void @drm_bridge_detach(ptr noundef %8) #5
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %1
  %12 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  tail call void @drm_mode_object_unregister(ptr noundef %2, ptr noundef %12) #5
  %13 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %14) #5
  %15 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 1
  %16 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  %20 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 15
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(72) %0, i8 0, i32 72, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__drmm_encoder_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ...) #0 {
  %7 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = icmp eq ptr %3, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.drm_encoder_funcs, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !10

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 224, i32 noundef 9, ptr noundef null) #5
  br label %30

14:                                               ; preds = %9, %6
  %15 = tail call noalias ptr @drmm_kmalloc(ptr noundef %0, i32 noundef %1, i32 noundef 3520) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %15, i32 %2
  call void @llvm.va_start(ptr nonnull %7)
  %19 = load i32, ptr %7, align 4
  %20 = insertvalue [1 x i32] poison, i32 %19, 0
  %21 = call fastcc i32 @__drm_encoder_init(ptr noundef %0, ptr noundef %18, ptr noundef %3, i32 noundef %4, ptr noundef %5, [1 x i32] %20)
  call void @llvm.va_end(ptr nonnull %7)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = inttoptr i32 %21 to ptr
  br label %30

25:                                               ; preds = %17
  %26 = call i32 @__drmm_add_action_or_reset(ptr noundef %0, ptr noundef nonnull @drmm_encoder_alloc_release, ptr noundef %18, ptr noundef nonnull @.str.1) #5
  %27 = icmp eq i32 %26, 0
  %28 = inttoptr i32 %26 to ptr
  %29 = select i1 %27, ptr %15, ptr %28
  br label %30

30:                                               ; preds = %25, %23, %14, %13
  %31 = phi ptr [ inttoptr (i32 -22 to ptr), %13 ], [ %24, %23 ], [ inttoptr (i32 -22 to ptr), %14 ], [ %29, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  ret ptr %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drmm_encoder_alloc_release(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef null) #5
  br label %27

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %15, label %10

10:                                               ; preds = %10, %6
  %11 = phi ptr [ %13, %10 ], [ %8, %6 ]
  %12 = getelementptr i8, ptr %11, i32 -56
  %13 = load ptr, ptr %11, align 4
  tail call void @drm_bridge_detach(ptr noundef %12) #5
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %15, label %10

15:                                               ; preds = %10, %6
  %16 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 2
  tail call void @drm_mode_object_unregister(ptr noundef nonnull %3, ptr noundef %16) #5
  %17 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #5
  %19 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 1
  %20 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  %24 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 15
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -1
  store i32 %26, ptr %24, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(72) %1, i8 0, i32 72, i1 false) #5
  br label %27

27:                                               ; preds = %15, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_getencoder(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.drm_connector_list_iter, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, 2
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %70, label %14

14:                                               ; preds = %3
  %15 = load i32, ptr %1, align 4
  %16 = tail call ptr @drm_mode_object_find(ptr noundef %0, ptr noundef %2, i32 noundef %15, i32 noundef -522133280) #5
  %17 = icmp eq ptr %16, null
  %18 = getelementptr i8, ptr %16, i32 -12
  %19 = icmp eq ptr %18, null
  %20 = or i1 %17, %19
  br i1 %20, label %70, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 1
  %23 = tail call i32 @drm_modeset_lock(ptr noundef %22, ptr noundef null) #5
  %24 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  store i64 0, ptr %4, align 8, !annotation !8
  call void @drm_connector_list_iter_begin(ptr noundef %24, ptr noundef nonnull %4) #5
  br label %25

25:                                               ; preds = %34, %21
  %26 = phi i1 [ true, %34 ], [ false, %21 ]
  br label %27

27:                                               ; preds = %30, %25
  %28 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.drm_connector, ptr %28, i32 0, i32 52
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %27, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.drm_connector_state, ptr %32, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %18
  br i1 %37, label %38, label %25

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.drm_connector, ptr %28, i32 0, i32 52
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #5
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.drm_connector_state, ptr %40, i32 0, i32 1
  br label %46

42:                                               ; preds = %27
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #5
  br i1 %26, label %43, label %44

43:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  br label %56

44:                                               ; preds = %42
  %45 = getelementptr i8, ptr %16, i32 40
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi ptr [ %45, %44 ], [ %41, %38 ]
  %48 = load ptr, ptr %47, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.drm_crtc, ptr %48, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = call zeroext i1 @drm_lease_held(ptr noundef %2, i32 noundef %52) #5
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, ptr %51, align 4
  br label %56

56:                                               ; preds = %54, %50, %46, %43
  %57 = phi i32 [ %55, %54 ], [ 0, %43 ], [ 0, %50 ], [ 0, %46 ]
  %58 = getelementptr inbounds %struct.drm_mode_get_encoder, ptr %1, i32 0, i32 2
  store i32 %57, ptr %58, align 4
  call void @drm_modeset_unlock(ptr noundef %22) #5
  %59 = getelementptr i8, ptr %16, i32 24
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.drm_mode_get_encoder, ptr %1, i32 0, i32 1
  store i32 %60, ptr %61, align 4
  %62 = load i32, ptr %16, align 4
  store i32 %62, ptr %1, align 4
  %63 = getelementptr i8, ptr %16, i32 32
  %64 = load i32, ptr %63, align 4
  %65 = call i32 @drm_lease_filter_crtcs(ptr noundef %2, i32 noundef %64) #5
  %66 = getelementptr inbounds %struct.drm_mode_get_encoder, ptr %1, i32 0, i32 3
  store i32 %65, ptr %66, align 4
  %67 = getelementptr i8, ptr %16, i32 36
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.drm_mode_get_encoder, ptr %1, i32 0, i32 4
  store i32 %68, ptr %69, align 4
  br label %70

70:                                               ; preds = %56, %14, %3
  %71 = phi i32 [ 0, %56 ], [ -95, %3 ], [ -2, %14 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_lease_held(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_lease_filter_crtcs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_object_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kvasprintf(i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @drmm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_object_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
