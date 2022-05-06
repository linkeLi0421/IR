; ModuleID = '/llk/IR/drivers/gpu/drm/drm_bridge_connector.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_bridge_connector.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_bridge_connector_enable_hpd:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_bridge_connector_enable_hpd\22\09\09\09\09\09"
module asm "__kstrtabns_drm_bridge_connector_enable_hpd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_bridge_connector_disable_hpd:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_bridge_connector_disable_hpd\22\09\09\09\09\09"
module asm "__kstrtabns_drm_bridge_connector_disable_hpd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_bridge_connector_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_bridge_connector_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_bridge_connector_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_connector = type { %struct.drm_connector, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.71, ptr, i32, ptr, i8, i32 }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.71 = type { i32, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }

@__kstrtab_drm_bridge_connector_enable_hpd = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_bridge_connector_enable_hpd = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_bridge_connector_enable_hpd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_bridge_connector_enable_hpd to i32), ptr @__kstrtab_drm_bridge_connector_enable_hpd, ptr @__kstrtabns_drm_bridge_connector_enable_hpd }, section "___ksymtab_gpl+drm_bridge_connector_enable_hpd", align 4
@__kstrtab_drm_bridge_connector_disable_hpd = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_bridge_connector_disable_hpd = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_bridge_connector_disable_hpd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_bridge_connector_disable_hpd to i32), ptr @__kstrtab_drm_bridge_connector_disable_hpd, ptr @__kstrtabns_drm_bridge_connector_disable_hpd }, section "___ksymtab_gpl+drm_bridge_connector_disable_hpd", align 4
@drm_bridge_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @drm_bridge_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_bridge_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@drm_bridge_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @drm_bridge_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_drm_bridge_connector_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_bridge_connector_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_bridge_connector_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_bridge_connector_init to i32), ptr @__kstrtab_drm_bridge_connector_init, ptr @__kstrtabns_drm_bridge_connector_init }, section "___ksymtab_gpl+drm_bridge_connector_init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_drm_bridge_connector_disable_hpd, ptr @__ksymtab_drm_bridge_connector_enable_hpd, ptr @__ksymtab_drm_bridge_connector_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_bridge_connector_enable_hpd(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_bridge_connector, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @drm_bridge_hpd_enable(ptr noundef nonnull %3, ptr noundef nonnull @drm_bridge_connector_hpd_cb, ptr noundef %0) #3
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_enable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_bridge_connector_hpd_cb(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30
  tail call void @mutex_lock(ptr noundef %4) #3
  %5 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 18
  %6 = load i32, ptr %5, align 8
  store i32 %1, ptr %5, align 8
  tail call void @mutex_unlock(ptr noundef %4) #3
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %31, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_bridge_connector, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %30, label %14

14:                                               ; preds = %25, %8
  %15 = phi ptr [ %26, %25 ], [ %10, %8 ]
  %16 = phi ptr [ %27, %25 ], [ %12, %8 ]
  %17 = getelementptr i8, ptr %16, i32 24
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %18, i32 0, i32 22
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = getelementptr i8, ptr %16, i32 -56
  tail call void %20(ptr noundef %23, i32 noundef %1) #3
  %24 = load ptr, ptr %9, align 8
  br label %25

25:                                               ; preds = %22, %14
  %26 = phi ptr [ %15, %14 ], [ %24, %22 ]
  %27 = load ptr, ptr %16, align 4
  %28 = getelementptr inbounds %struct.drm_encoder, ptr %26, i32 0, i32 9
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %14

30:                                               ; preds = %25, %8
  tail call void @drm_kms_helper_hotplug_event(ptr noundef %3) #3
  br label %31

31:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_bridge_connector_disable_hpd(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_bridge_connector, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @drm_bridge_hpd_disable(ptr noundef nonnull %3) #3
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_bridge_connector_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 992) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %86, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_bridge_connector, ptr %4, i32 0, i32 1
  store ptr %1, ptr %7, align 8
  %8 = getelementptr inbounds %struct.drm_connector, ptr %4, i32 0, i32 12
  store i8 1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %71, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.drm_bridge_connector, ptr %4, i32 0, i32 2
  %14 = getelementptr inbounds %struct.drm_bridge_connector, ptr %4, i32 0, i32 3
  %15 = getelementptr inbounds %struct.drm_bridge_connector, ptr %4, i32 0, i32 4
  %16 = getelementptr inbounds %struct.drm_bridge_connector, ptr %4, i32 0, i32 5
  br label %17

17:                                               ; preds = %62, %12
  %18 = phi ptr [ %10, %12 ], [ %54, %62 ]
  %19 = phi ptr [ null, %12 ], [ %67, %62 ]
  %20 = phi i32 [ 0, %12 ], [ %63, %62 ]
  %21 = getelementptr i8, ptr %18, i32 -56
  %22 = getelementptr i8, ptr %18, i32 40
  %23 = load i8, ptr %22, align 4, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i8 0, ptr %8, align 8
  br label %26

26:                                               ; preds = %25, %17
  %27 = getelementptr i8, ptr %18, i32 32
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  store ptr %21, ptr %13, align 4
  %32 = load i32, ptr %27, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi i32 [ %32, %31 ], [ %28, %26 ]
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  store ptr %21, ptr %14, align 8
  %38 = load i32, ptr %27, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %38, %37 ], [ %34, %33 ]
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  store ptr %21, ptr %15, align 4
  %44 = load i32, ptr %27, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %44, %43 ], [ %40, %39 ]
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store ptr %21, ptr %16, align 8
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr i8, ptr %18, i32 -4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.drm_encoder, ptr %52, i32 0, i32 9
  %54 = load ptr, ptr %18, align 4
  %55 = icmp eq ptr %54, %53
  %56 = getelementptr i8, ptr %54, i32 -56
  %57 = icmp eq ptr %56, null
  %58 = or i1 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = getelementptr i8, ptr %18, i32 36
  %61 = load i32, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %50
  %63 = phi i32 [ %20, %50 ], [ %61, %59 ]
  %64 = getelementptr i8, ptr %18, i32 44
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  %67 = select i1 %66, ptr %19, ptr %65
  %68 = icmp eq ptr %54, %9
  br i1 %68, label %69, label %17

69:                                               ; preds = %62
  %70 = icmp eq i32 %63, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %69, %6
  tail call void @kfree(ptr noundef nonnull %4) #3
  br label %86

72:                                               ; preds = %69
  %73 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @drm_bridge_connector_funcs, i32 noundef %63, ptr noundef %67) #3
  %74 = getelementptr inbounds %struct.drm_connector, ptr %4, i32 0, i32 35
  store ptr @drm_bridge_connector_helper_funcs, ptr %74, align 4
  %75 = getelementptr inbounds %struct.drm_bridge_connector, ptr %4, i32 0, i32 3
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.drm_connector, ptr %4, i32 0, i32 33
  store i8 1, ptr %79, align 4
  br label %86

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.drm_bridge_connector, ptr %4, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.drm_connector, ptr %4, i32 0, i32 33
  store i8 6, ptr %85, align 4
  br label %86

86:                                               ; preds = %84, %80, %78, %71, %2
  %87 = phi ptr [ inttoptr (i32 -22 to ptr), %71 ], [ %4, %80 ], [ %4, %84 ], [ %4, %78 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_bridge_connector_detect(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.drm_bridge_connector, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_bridge, ptr %4, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %8, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef nonnull %4) #3
  %12 = getelementptr inbounds %struct.drm_bridge_connector, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %37, label %17

17:                                               ; preds = %28, %6
  %18 = phi ptr [ %29, %28 ], [ %13, %6 ]
  %19 = phi ptr [ %30, %28 ], [ %15, %6 ]
  %20 = getelementptr i8, ptr %19, i32 24
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %21, i32 0, i32 22
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = getelementptr i8, ptr %19, i32 -56
  tail call void %23(ptr noundef %26, i32 noundef %11) #3
  %27 = load ptr, ptr %12, align 8
  br label %28

28:                                               ; preds = %25, %17
  %29 = phi ptr [ %18, %17 ], [ %27, %25 ]
  %30 = load ptr, ptr %19, align 4
  %31 = getelementptr inbounds %struct.drm_encoder, ptr %29, i32 0, i32 9
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %37, label %17

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 10
  %35 = load i32, ptr %34, align 8
  switch i32 %35, label %36 [
    i32 17, label %37
    i32 7, label %37
    i32 16, label %37
    i32 14, label %37
  ]

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36, %33, %33, %33, %33, %28, %6
  %38 = phi i32 [ 3, %36 ], [ 1, %33 ], [ 1, %33 ], [ 1, %33 ], [ 1, %33 ], [ %11, %6 ], [ %11, %28 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_bridge_connector_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_bridge_connector, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @drm_bridge_hpd_disable(ptr noundef nonnull %3) #3
  br label %6

6:                                                ; preds = %5, %1
  tail call void @drm_connector_unregister(ptr noundef %0) #3
  tail call void @drm_connector_cleanup(ptr noundef %0) #3
  tail call void @kfree(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_bridge_connector_get_modes(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_bridge_connector, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_bridge_connector, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.drm_bridge, ptr %7, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %11, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef nonnull %7) #3
  %15 = getelementptr inbounds %struct.drm_bridge_connector, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.drm_encoder, ptr %16, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %39, label %20

20:                                               ; preds = %31, %9
  %21 = phi ptr [ %32, %31 ], [ %16, %9 ]
  %22 = phi ptr [ %33, %31 ], [ %18, %9 ]
  %23 = getelementptr i8, ptr %22, i32 24
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %24, i32 0, i32 22
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = getelementptr i8, ptr %22, i32 -56
  tail call void %26(ptr noundef %29, i32 noundef %14) #3
  %30 = load ptr, ptr %15, align 8
  br label %31

31:                                               ; preds = %28, %20
  %32 = phi ptr [ %21, %20 ], [ %30, %28 ]
  %33 = load ptr, ptr %22, align 4
  %34 = getelementptr inbounds %struct.drm_encoder, ptr %32, i32 0, i32 9
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %39, label %20

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 10
  %38 = load i32, ptr %37, align 8
  switch i32 %38, label %52 [
    i32 17, label %41
    i32 7, label %41
    i32 16, label %41
    i32 14, label %41
  ]

39:                                               ; preds = %31, %9
  %40 = icmp eq i32 %14, 1
  br i1 %40, label %41, label %52

41:                                               ; preds = %39, %36, %36, %36, %36
  %42 = getelementptr inbounds %struct.drm_bridge, ptr %3, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %43, i32 0, i32 21
  %45 = load ptr, ptr %44, align 4
  %46 = tail call ptr %45(ptr noundef nonnull %3, ptr noundef %0) #3
  %47 = tail call zeroext i1 @drm_edid_is_valid(ptr noundef %46) #3
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  tail call void @kfree(ptr noundef %46) #3
  br label %52

49:                                               ; preds = %41
  %50 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef %46) #3
  %51 = tail call i32 @drm_add_edid_modes(ptr noundef %0, ptr noundef %46) #3
  tail call void @kfree(ptr noundef %46) #3
  br label %64

52:                                               ; preds = %48, %39, %36
  %53 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef null) #3
  br label %64

54:                                               ; preds = %1
  %55 = getelementptr inbounds %struct.drm_bridge_connector, ptr %0, i32 0, i32 5
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.drm_bridge, ptr %56, i32 0, i32 7
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %60, i32 0, i32 20
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 %62(ptr noundef nonnull %56, ptr noundef %0) #3
  br label %64

64:                                               ; preds = %58, %54, %52, %49
  %65 = phi i32 [ %63, %58 ], [ 0, %54 ], [ 0, %52 ], [ %51, %49 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_edid_is_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
