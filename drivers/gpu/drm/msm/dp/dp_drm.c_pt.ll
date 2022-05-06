; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dp/dp_drm.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_drm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.78, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.78 = type { i32, ptr }
%struct.dp_connector = type { %struct.drm_connector, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.79 }
%union.anon.79 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.msm_dp = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i32, ptr, i32, i32, ptr }
%struct.msm_dp_bridge = type { %struct.drm_bridge, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@dp_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @dp_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@dp_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @dp_connector_get_modes, ptr null, ptr @dp_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to attach panel bridge: %d\0A\00", align 1
@dp_bridge_ops = internal constant %struct.drm_bridge_funcs { ptr null, ptr null, ptr null, ptr null, ptr @dp_bridge_disable, ptr @dp_bridge_post_disable, ptr @dp_bridge_mode_set, ptr null, ptr @dp_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to attach bridge, rc=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"is_connected = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to get DP sink modes, rc=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to add mode %ux%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"No sink connected\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dp_drm_connector_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 976, i32 noundef 3520) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dp_connector, ptr %5, i32 0, i32 1
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @drm_connector_init(ptr noundef %9, ptr noundef nonnull %5, ptr noundef nonnull @dp_connector_funcs, i32 noundef %11) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = inttoptr i32 %12 to ptr
  br label %31

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.drm_connector, ptr %5, i32 0, i32 35
  store ptr @dp_connector_helper_funcs, ptr %17, align 4
  %18 = getelementptr inbounds %struct.drm_connector, ptr %5, i32 0, i32 33
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %5, ptr noundef %20) #5
  %22 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = load ptr, ptr %19, align 4
  %27 = tail call i32 @drm_bridge_attach(ptr noundef %26, ptr noundef nonnull %23, ptr noundef null, i32 noundef 1) #5
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %27) #5
  %30 = inttoptr i32 %27 to ptr
  br label %31

31:                                               ; preds = %29, %25, %16, %14, %1
  %32 = phi ptr [ %15, %14 ], [ %30, %29 ], [ %5, %25 ], [ %5, %16 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_dp_bridge_init(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 136, i32 noundef 3520) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.msm_dp_bridge, ptr %6, i32 0, i32 1
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drm_bridge, ptr %6, i32 0, i32 7
  store ptr @dp_bridge_ops, ptr %10, align 4
  %11 = getelementptr inbounds %struct.drm_bridge, ptr %6, i32 0, i32 2
  store ptr %2, ptr %11, align 4
  %12 = tail call i32 @drm_bridge_attach(ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, i32 noundef 1) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %12) #5
  %15 = inttoptr i32 %12 to ptr
  br label %16

16:                                               ; preds = %14, %8, %3
  %17 = phi ptr [ %15, %14 ], [ %6, %8 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_connector_detect(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.dp_connector, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.msm_dp, ptr %4, i32 0, i32 6
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, ptr @.str.4, ptr @.str.3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #5
  %9 = load i8, ptr %5, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 2, i32 1
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_connector_get_modes(ptr noundef %0) #0 {
  %2 = alloca %struct.drm_display_mode, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %2, i8 0, i32 112, i1 false), !annotation !9
  %3 = icmp eq ptr %0, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dp_connector, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 128) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.msm_dp, ptr %6, i32 0, i32 6
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @dp_display_get_modes(ptr noundef %6, ptr noundef nonnull %8) #5
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %15) #5
  tail call void @kfree(ptr noundef nonnull %8) #5
  br label %36

18:                                               ; preds = %14
  %19 = load i32, ptr %8, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %2, i8 0, i32 112, i1 false)
  call void @drm_mode_copy(ptr noundef nonnull %2, ptr noundef nonnull %8) #5
  %22 = load ptr, ptr %0, align 8
  %23 = call ptr @drm_mode_duplicate(ptr noundef %22, ptr noundef nonnull %2) #5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 1
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 6
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %28, i32 noundef %31) #5
  call void @kfree(ptr noundef nonnull %8) #5
  br label %36

32:                                               ; preds = %21
  call void @drm_mode_probed_add(ptr noundef nonnull %0, ptr noundef nonnull %23) #5
  br label %34

33:                                               ; preds = %10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.7) #5
  br label %34

34:                                               ; preds = %33, %32, %18
  %35 = phi i32 [ %15, %32 ], [ %15, %18 ], [ 0, %33 ]
  call void @kfree(ptr noundef nonnull %8) #5
  br label %36

36:                                               ; preds = %34, %25, %17, %4, %1
  %37 = phi i32 [ %15, %17 ], [ %35, %34 ], [ 0, %25 ], [ 0, %1 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #5
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_connector_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dp_connector, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.msm_dp, ptr %4, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -675001
  %8 = icmp ult i32 %7, -675000
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %1, align 4
  %11 = icmp ugt i32 %10, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @dp_display_validate_mode(ptr noundef %4, i32 noundef %10) #5
  br label %14

14:                                               ; preds = %12, %9, %2
  %15 = phi i32 [ %13, %12 ], [ -2, %9 ], [ -2, %2 ]
  ret i32 %15
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_display_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_display_validate_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dp_bridge_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dp_bridge, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @msm_dp_display_pre_disable(ptr noundef %3, ptr noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dp_bridge_post_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dp_bridge, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @msm_dp_display_disable(ptr noundef %3, ptr noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dp_bridge_mode_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.msm_dp_bridge, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @msm_dp_display_mode_set(ptr noundef %5, ptr noundef %7, ptr noundef %1, ptr noundef %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dp_bridge_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dp_bridge, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @msm_dp_display_enable(ptr noundef %3, ptr noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dp_display_pre_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dp_display_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dp_display_mode_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dp_display_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
