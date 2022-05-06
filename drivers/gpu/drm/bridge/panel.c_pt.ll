; ModuleID = '/llk/IR/drivers/gpu/drm/bridge/panel.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/panel.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_panel_bridge_add:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_panel_bridge_add\22\09\09\09\09\09"
module asm "__kstrtabns_drm_panel_bridge_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_panel_bridge_add_typed:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_panel_bridge_add_typed\22\09\09\09\09\09"
module asm "__kstrtabns_drm_panel_bridge_add_typed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_panel_bridge_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_panel_bridge_remove\22\09\09\09\09\09"
module asm "__kstrtabns_drm_panel_bridge_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_drm_panel_bridge_add:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_drm_panel_bridge_add\22\09\09\09\09\09"
module asm "__kstrtabns_devm_drm_panel_bridge_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_drm_panel_bridge_add_typed:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_drm_panel_bridge_add_typed\22\09\09\09\09\09"
module asm "__kstrtabns_devm_drm_panel_bridge_add_typed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_panel_bridge_connector:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_panel_bridge_connector\22\09\09\09\09\09"
module asm "__kstrtabns_drm_panel_bridge_connector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_drm_of_get_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_drm_of_get_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_devm_drm_of_get_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.panel_bridge = type { %struct.drm_bridge, %struct.drm_connector, ptr, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }

@.str = private unnamed_addr constant [31 x i8] c"drivers/gpu/drm/bridge/panel.c\00", align 1
@__kstrtab_drm_panel_bridge_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_panel_bridge_add = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_panel_bridge_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_panel_bridge_add to i32), ptr @__kstrtab_drm_panel_bridge_add, ptr @__kstrtabns_drm_panel_bridge_add }, section "___ksymtab+drm_panel_bridge_add", align 4
@panel_bridge_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr @panel_bridge_attach, ptr @panel_bridge_detach, ptr null, ptr null, ptr @panel_bridge_disable, ptr @panel_bridge_post_disable, ptr null, ptr @panel_bridge_pre_enable, ptr @panel_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr null, ptr @drm_atomic_helper_bridge_propagate_bus_fmt, ptr null, ptr @drm_atomic_helper_bridge_reset, ptr null, ptr @panel_bridge_get_modes, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_drm_panel_bridge_add_typed = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_panel_bridge_add_typed = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_panel_bridge_add_typed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_panel_bridge_add_typed to i32), ptr @__kstrtab_drm_panel_bridge_add_typed, ptr @__kstrtabns_drm_panel_bridge_add_typed }, section "___ksymtab+drm_panel_bridge_add_typed", align 4
@__kstrtab_drm_panel_bridge_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_panel_bridge_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_panel_bridge_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_panel_bridge_remove to i32), ptr @__kstrtab_drm_panel_bridge_remove, ptr @__kstrtabns_drm_panel_bridge_remove }, section "___ksymtab+drm_panel_bridge_remove", align 4
@__kstrtab_devm_drm_panel_bridge_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_drm_panel_bridge_add = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_drm_panel_bridge_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_drm_panel_bridge_add to i32), ptr @__kstrtab_devm_drm_panel_bridge_add, ptr @__kstrtabns_devm_drm_panel_bridge_add }, section "___ksymtab+devm_drm_panel_bridge_add", align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"devm_drm_panel_bridge_release\00", align 1
@__kstrtab_devm_drm_panel_bridge_add_typed = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_drm_panel_bridge_add_typed = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_drm_panel_bridge_add_typed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_drm_panel_bridge_add_typed to i32), ptr @__kstrtab_devm_drm_panel_bridge_add_typed, ptr @__kstrtabns_devm_drm_panel_bridge_add_typed }, section "___ksymtab+devm_drm_panel_bridge_add_typed", align 4
@__kstrtab_drm_panel_bridge_connector = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_panel_bridge_connector = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_panel_bridge_connector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_panel_bridge_connector to i32), ptr @__kstrtab_drm_panel_bridge_connector, ptr @__kstrtabns_drm_panel_bridge_connector }, section "___ksymtab+drm_panel_bridge_connector", align 4
@__kstrtab_devm_drm_of_get_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_drm_of_get_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_drm_of_get_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_drm_of_get_bridge to i32), ptr @__kstrtab_devm_drm_of_get_bridge, ptr @__kstrtabns_devm_drm_of_get_bridge }, section "___ksymtab+devm_drm_of_get_bridge", align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Missing encoder\0A\00", align 1
@panel_bridge_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @panel_bridge_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@panel_bridge_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to initialize connector\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_devm_drm_of_get_bridge, ptr @__ksymtab_devm_drm_panel_bridge_add, ptr @__ksymtab_devm_drm_panel_bridge_add_typed, ptr @__ksymtab_drm_panel_bridge_add, ptr @__ksymtab_drm_panel_bridge_add_typed, ptr @__ksymtab_drm_panel_bridge_connector, ptr @__ksymtab_drm_panel_bridge_remove], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_panel_bridge_add(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 182, i32 noundef 9, ptr noundef null) #4
  br label %22

6:                                                ; preds = %1
  %7 = icmp eq ptr %0, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr %0, align 4
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 1112, i32 noundef 3520) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.panel_bridge, ptr %10, i32 0, i32 3
  store i32 %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.panel_bridge, ptr %10, i32 0, i32 2
  store ptr %0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.drm_bridge, ptr %10, i32 0, i32 7
  store ptr @panel_bridge_bridge_funcs, ptr %15, align 8
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.drm_bridge, ptr %10, i32 0, i32 4
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.drm_bridge, ptr %10, i32 0, i32 9
  store i32 8, ptr %20, align 8
  %21 = getelementptr inbounds %struct.drm_bridge, ptr %10, i32 0, i32 10
  store i32 %3, ptr %21, align 4
  tail call void @drm_bridge_add(ptr noundef nonnull %10) #4
  br label %22

22:                                               ; preds = %12, %8, %6, %5
  %23 = phi ptr [ inttoptr (i32 -22 to ptr), %5 ], [ %10, %12 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -12 to ptr), %8 ]
  ret ptr %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_panel_bridge_add_typed(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 1112, i32 noundef 3520) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.panel_bridge, ptr %6, i32 0, i32 3
  store i32 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.panel_bridge, ptr %6, i32 0, i32 2
  store ptr %0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.drm_bridge, ptr %6, i32 0, i32 7
  store ptr @panel_bridge_bridge_funcs, ptr %11, align 8
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.drm_bridge, ptr %6, i32 0, i32 4
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.drm_bridge, ptr %6, i32 0, i32 9
  store i32 8, ptr %16, align 8
  %17 = getelementptr inbounds %struct.drm_bridge, ptr %6, i32 0, i32 10
  store i32 %1, ptr %17, align 4
  tail call void @drm_bridge_add(ptr noundef nonnull %6) #4
  br label %18

18:                                               ; preds = %8, %4, %2
  %19 = phi ptr [ %6, %8 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_panel_bridge_remove(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @panel_bridge_bridge_funcs
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  tail call void @drm_bridge_remove(ptr noundef nonnull %0) #4
  %8 = getelementptr inbounds %struct.panel_bridge, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  tail call void @devm_kfree(ptr noundef %10, ptr noundef nonnull %0) #4
  br label %11

11:                                               ; preds = %7, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_drm_panel_bridge_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_panel, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 9, ptr noundef null) #4
  br label %9

7:                                                ; preds = %2
  %8 = tail call ptr @devm_drm_panel_bridge_add_typed(ptr noundef %0, ptr noundef %1, i32 noundef %4)
  br label %9

9:                                                ; preds = %7, %6
  %10 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_drm_panel_bridge_add_typed(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_drm_panel_bridge_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr %1, align 4
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 1112, i32 noundef 3520) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.panel_bridge, ptr %10, i32 0, i32 3
  store i32 %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.panel_bridge, ptr %10, i32 0, i32 2
  store ptr %1, ptr %14, align 8
  %15 = getelementptr inbounds %struct.drm_bridge, ptr %10, i32 0, i32 7
  store ptr @panel_bridge_bridge_funcs, ptr %15, align 8
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.drm_bridge, ptr %10, i32 0, i32 4
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.drm_bridge, ptr %10, i32 0, i32 9
  store i32 8, ptr %20, align 8
  %21 = getelementptr inbounds %struct.drm_bridge, ptr %10, i32 0, i32 10
  store i32 %2, ptr %21, align 4
  tail call void @drm_bridge_add(ptr noundef nonnull %10) #4
  %22 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  store ptr %10, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #4
  br label %26

24:                                               ; preds = %12, %8, %6
  %25 = phi ptr [ %10, %12 ], [ inttoptr (i32 -12 to ptr), %8 ], [ inttoptr (i32 -22 to ptr), %6 ]
  tail call void @devres_free(ptr noundef nonnull %4) #4
  br label %26

26:                                               ; preds = %24, %23, %3
  %27 = phi ptr [ %25, %24 ], [ %10, %23 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_drm_panel_bridge_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.drm_bridge, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @panel_bridge_bridge_funcs
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  tail call void @drm_bridge_remove(ptr noundef nonnull %3) #4
  %10 = getelementptr inbounds %struct.panel_bridge, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 4
  tail call void @devm_kfree(ptr noundef %12, ptr noundef nonnull %3) #4
  br label %13

13:                                               ; preds = %9, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @drm_panel_bridge_connector(ptr noundef readnone %0) #3 {
  %2 = getelementptr inbounds %struct.panel_bridge, ptr %0, i32 0, i32 1
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_drm_of_get_bridge(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  store ptr null, ptr %6, align 4, !annotation !9
  %7 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %5) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = inttoptr i32 %7 to ptr
  br label %23

11:                                               ; preds = %4
  %12 = load ptr, ptr %6, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 4
  br label %23

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.drm_panel, ptr %12, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 9, ptr noundef null) #4
  br label %23

21:                                               ; preds = %16
  %22 = call ptr @devm_drm_panel_bridge_add_typed(ptr noundef %0, ptr noundef nonnull %12, i32 noundef %18) #4
  br label %23

23:                                               ; preds = %21, %20, %14, %9
  %24 = phi ptr [ %10, %9 ], [ %15, %14 ], [ inttoptr (i32 -22 to ptr), %20 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  ret ptr %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_bridge_attach(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.panel_bridge, ptr %0, i32 0, i32 1
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #4
  br label %23

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.panel_bridge, ptr %0, i32 0, i32 1, i32 35
  store ptr @panel_bridge_connector_helper_funcs, ptr %12, align 4
  %13 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.panel_bridge, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @drm_connector_init(ptr noundef %14, ptr noundef %3, ptr noundef nonnull @panel_bridge_connector_funcs, i32 noundef %16) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #4
  br label %23

20:                                               ; preds = %11
  %21 = load ptr, ptr %7, align 4
  %22 = tail call i32 @drm_connector_attach_encoder(ptr noundef %3, ptr noundef %21) #4
  br label %23

23:                                               ; preds = %20, %19, %10, %2
  %24 = phi i32 [ %17, %19 ], [ 0, %20 ], [ -19, %10 ], [ 0, %2 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @panel_bridge_detach(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.panel_bridge, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @drm_connector_cleanup(ptr noundef %2) #4
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @panel_bridge_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.panel_bridge, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_panel_disable(ptr noundef %3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @panel_bridge_post_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.panel_bridge, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_panel_unprepare(ptr noundef %3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @panel_bridge_pre_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.panel_bridge, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_panel_prepare(ptr noundef %3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @panel_bridge_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.panel_bridge, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_panel_enable(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_propagate_bus_fmt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_bridge_get_modes(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.panel_bridge, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @drm_panel_get_modes(ptr noundef %4, ptr noundef %1) #4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_bridge_connector_get_modes(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 968
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_panel_get_modes(ptr noundef %3, ptr noundef %0) #4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
