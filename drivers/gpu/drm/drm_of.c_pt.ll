; ModuleID = '/llk/IR/drivers/gpu/drm/drm_of.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_of.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_of_crtc_port_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_of_crtc_port_mask\22\09\09\09\09\09"
module asm "__kstrtabns_drm_of_crtc_port_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_of_find_possible_crtcs:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_of_find_possible_crtcs\22\09\09\09\09\09"
module asm "__kstrtabns_drm_of_find_possible_crtcs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_of_component_match_add:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_of_component_match_add\22\09\09\09\09\09"
module asm "__kstrtabns_drm_of_component_match_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_of_component_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_of_component_probe\22\09\09\09\09\09"
module asm "__kstrtabns_drm_of_component_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_of_encoder_active_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_of_encoder_active_endpoint\22\09\09\09\09\09"
module asm "__kstrtabns_drm_of_encoder_active_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_of_find_panel_or_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_of_find_panel_or_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_drm_of_find_panel_or_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_of_lvds_get_dual_link_pixel_order:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_of_lvds_get_dual_link_pixel_order\22\09\09\09\09\09"
module asm "__kstrtabns_drm_of_lvds_get_dual_link_pixel_order:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_of_lvds_get_data_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_of_lvds_get_data_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_drm_of_lvds_get_data_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }

@__kstrtab_drm_of_crtc_port_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_of_crtc_port_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_of_crtc_port_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_of_crtc_port_mask to i32), ptr @__kstrtab_drm_of_crtc_port_mask, ptr @__kstrtabns_drm_of_crtc_port_mask }, section "___ksymtab+drm_of_crtc_port_mask", align 4
@__kstrtab_drm_of_find_possible_crtcs = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_of_find_possible_crtcs = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_of_find_possible_crtcs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_of_find_possible_crtcs to i32), ptr @__kstrtab_drm_of_find_possible_crtcs, ptr @__kstrtabns_drm_of_find_possible_crtcs }, section "___ksymtab+drm_of_find_possible_crtcs", align 4
@__kstrtab_drm_of_component_match_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_of_component_match_add = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_of_component_match_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_of_component_match_add to i32), ptr @__kstrtab_drm_of_component_match_add, ptr @__kstrtabns_drm_of_component_match_add }, section "___ksymtab_gpl+drm_of_component_match_add", align 4
@.str = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"missing 'ports' property\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"no available port\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"parent device of %pOF is not available\0A\00", align 1
@__kstrtab_drm_of_component_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_of_component_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_of_component_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_of_component_probe to i32), ptr @__kstrtab_drm_of_component_probe, ptr @__kstrtabns_drm_of_component_probe }, section "___ksymtab+drm_of_component_probe", align 4
@__kstrtab_drm_of_encoder_active_endpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_of_encoder_active_endpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_of_encoder_active_endpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_of_encoder_active_endpoint to i32), ptr @__kstrtab_drm_of_encoder_active_endpoint, ptr @__kstrtabns_drm_of_encoder_active_endpoint }, section "___ksymtab_gpl+drm_of_encoder_active_endpoint", align 4
@__kstrtab_drm_of_find_panel_or_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_of_find_panel_or_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_of_find_panel_or_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_of_find_panel_or_bridge to i32), ptr @__kstrtab_drm_of_find_panel_or_bridge, ptr @__kstrtabns_drm_of_find_panel_or_bridge }, section "___ksymtab_gpl+drm_of_find_panel_or_bridge", align 4
@__kstrtab_drm_of_lvds_get_dual_link_pixel_order = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_of_lvds_get_dual_link_pixel_order = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_of_lvds_get_dual_link_pixel_order = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_of_lvds_get_dual_link_pixel_order to i32), ptr @__kstrtab_drm_of_lvds_get_dual_link_pixel_order, ptr @__kstrtabns_drm_of_lvds_get_dual_link_pixel_order }, section "___ksymtab_gpl+drm_of_lvds_get_dual_link_pixel_order", align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"data-mapping\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"jeida-18\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"jeida-24\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"vesa-24\00", align 1
@__kstrtab_drm_of_lvds_get_data_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_of_lvds_get_data_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_of_lvds_get_data_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_of_lvds_get_data_mapping to i32), ptr @__kstrtab_drm_of_lvds_get_data_mapping, ptr @__kstrtabns_drm_of_lvds_get_data_mapping }, section "___ksymtab_gpl+drm_of_lvds_get_data_mapping", align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"endpoint\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"dual-lvds-even-pixels\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"dual-lvds-odd-pixels\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_drm_of_component_match_add, ptr @__ksymtab_drm_of_component_probe, ptr @__ksymtab_drm_of_crtc_port_mask, ptr @__ksymtab_drm_of_encoder_active_endpoint, ptr @__ksymtab_drm_of_find_panel_or_bridge, ptr @__ksymtab_drm_of_find_possible_crtcs, ptr @__ksymtab_drm_of_lvds_get_data_mapping, ptr @__ksymtab_drm_of_lvds_get_dual_link_pixel_order], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @drm_of_crtc_port_mask(ptr noundef readonly %0, ptr noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %18, label %6

6:                                                ; preds = %14, %2
  %7 = phi ptr [ %16, %14 ], [ %4, %2 ]
  %8 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %9 = getelementptr i8, ptr %7, i32 -4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = shl nuw i32 1, %8
  br label %18

14:                                               ; preds = %6
  %15 = add i32 %8, 1
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %18, label %6

18:                                               ; preds = %14, %12, %2
  %19 = phi i32 [ %13, %12 ], [ 0, %2 ], [ 0, %14 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_of_find_possible_crtcs(ptr noundef readonly %0, ptr noundef %1) #2 {
  %3 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %1, ptr noundef null) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  br label %7

7:                                                ; preds = %28, %5
  %8 = phi i32 [ 0, %5 ], [ %30, %28 ]
  %9 = phi ptr [ %3, %5 ], [ %31, %28 ]
  %10 = tail call ptr @of_graph_get_remote_port(ptr noundef nonnull %9) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @of_node_put(ptr noundef nonnull %9) #7
  br label %33

13:                                               ; preds = %7
  %14 = load ptr, ptr %6, align 4
  %15 = icmp eq ptr %14, %6
  br i1 %15, label %28, label %16

16:                                               ; preds = %24, %13
  %17 = phi ptr [ %26, %24 ], [ %14, %13 ]
  %18 = phi i32 [ %25, %24 ], [ 0, %13 ]
  %19 = getelementptr i8, ptr %17, i32 -4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = shl nuw i32 1, %18
  br label %28

24:                                               ; preds = %16
  %25 = add i32 %18, 1
  %26 = load ptr, ptr %17, align 4
  %27 = icmp eq ptr %26, %6
  br i1 %27, label %28, label %16

28:                                               ; preds = %24, %22, %13
  %29 = phi i32 [ %23, %22 ], [ 0, %13 ], [ 0, %24 ]
  %30 = or i32 %29, %8
  tail call void @of_node_put(ptr noundef nonnull %10) #7
  %31 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %1, ptr noundef nonnull %9) #7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %7

33:                                               ; preds = %28, %12, %2
  %34 = phi i32 [ 0, %12 ], [ 0, %2 ], [ %30, %28 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_of_component_match_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = tail call ptr @of_node_get(ptr noundef %3) #7
  tail call void @component_match_add_release(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @drm_release_of, ptr noundef %2, ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_match_add_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_release_of(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void @of_node_put(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_of_component_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %83, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #7, !annotation !8
  %11 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %8, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #7
  %12 = icmp ne i32 %11, 0
  %13 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #7
  %14 = icmp eq ptr %13, null
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %34, label %16

16:                                               ; preds = %24, %10
  %17 = phi ptr [ %29, %24 ], [ %13, %10 ]
  %18 = phi i32 [ %25, %24 ], [ 0, %10 ]
  %19 = getelementptr inbounds %struct.device_node, ptr %17, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = call zeroext i1 @of_device_is_available(ptr noundef %20) #7
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call ptr @of_node_get(ptr noundef nonnull %17) #7
  call void @component_match_add_release(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @drm_release_of, ptr noundef %1, ptr noundef nonnull %17) #7
  br label %24

24:                                               ; preds = %22, %16
  call void @of_node_put(ptr noundef nonnull %17) #7
  %25 = add i32 %18, 1
  %26 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #7, !annotation !8
  %27 = call i32 @__of_parse_phandle_with_args(ptr noundef %26, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef %25, ptr noundef nonnull %5) #7
  %28 = icmp ne i32 %27, 0
  %29 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #7
  %30 = icmp eq ptr %29, null
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %32, label %16

32:                                               ; preds = %24
  %33 = icmp eq i32 %25, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %32, %10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #8
  br label %83

35:                                               ; preds = %32
  %36 = load ptr, ptr %6, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #7, !annotation !8
  %40 = call i32 @__of_parse_phandle_with_args(ptr noundef %39, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #7
  %41 = icmp ne i32 %40, 0
  %42 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #7
  %43 = icmp eq ptr %42, null
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %80, label %46

45:                                               ; preds = %35
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #8
  br label %83

46:                                               ; preds = %72, %38
  %47 = phi ptr [ %77, %72 ], [ %42, %38 ]
  %48 = phi i32 [ %73, %72 ], [ 0, %38 ]
  %49 = getelementptr inbounds %struct.device_node, ptr %47, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = call zeroext i1 @of_device_is_available(ptr noundef %50) #7
  br i1 %51, label %52, label %72

52:                                               ; preds = %46
  %53 = call ptr @of_get_next_child(ptr noundef nonnull %47, ptr noundef null) #7
  %54 = icmp eq ptr %53, null
  br i1 %54, label %72, label %55

55:                                               ; preds = %69, %52
  %56 = phi ptr [ %70, %69 ], [ %53, %52 ]
  %57 = call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %56) #7
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %57) #7
  br i1 %60, label %62, label %61

61:                                               ; preds = %59, %55
  call void @of_node_put(ptr noundef %57) #7
  br label %69

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.device_node, ptr %57, i32 0, i32 6
  %64 = load ptr, ptr %63, align 4
  %65 = call zeroext i1 @of_device_is_available(ptr noundef %64) #7
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %57) #8
  call void @of_node_put(ptr noundef nonnull %57) #7
  br label %69

67:                                               ; preds = %62
  %68 = call ptr @of_node_get(ptr noundef nonnull %57) #7
  call void @component_match_add_release(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @drm_release_of, ptr noundef %1, ptr noundef nonnull %57) #7
  call void @of_node_put(ptr noundef nonnull %57) #7
  br label %69

69:                                               ; preds = %67, %66, %61
  %70 = call ptr @of_get_next_child(ptr noundef nonnull %47, ptr noundef nonnull %56) #7
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %55

72:                                               ; preds = %69, %52, %46
  call void @of_node_put(ptr noundef nonnull %47) #7
  %73 = add i32 %48, 1
  %74 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #7, !annotation !8
  %75 = call i32 @__of_parse_phandle_with_args(ptr noundef %74, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef %73, ptr noundef nonnull %4) #7
  %76 = icmp ne i32 %75, 0
  %77 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #7
  %78 = icmp eq ptr %77, null
  %79 = select i1 %76, i1 true, i1 %78
  br i1 %79, label %80, label %46

80:                                               ; preds = %72, %38
  %81 = load ptr, ptr %6, align 4
  %82 = call i32 @component_master_add_with_match(ptr noundef %0, ptr noundef %2, ptr noundef %81) #7
  br label %83

83:                                               ; preds = %80, %45, %34, %3
  %84 = phi i32 [ -19, %34 ], [ %82, %80 ], [ -19, %45 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_of_encoder_active_endpoint(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = tail call ptr @of_graph_get_next_endpoint(ptr noundef nonnull %0, ptr noundef null) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 1
  br label %14

14:                                               ; preds = %21, %12
  %15 = phi ptr [ %10, %12 ], [ %22, %21 ]
  %16 = tail call ptr @of_graph_get_remote_port(ptr noundef nonnull %15) #7
  tail call void @of_node_put(ptr noundef %16) #7
  %17 = load ptr, ptr %13, align 4
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = tail call i32 @of_graph_parse_endpoint(ptr noundef nonnull %15, ptr noundef %2) #7
  tail call void @of_node_put(ptr noundef nonnull %15) #7
  br label %24

21:                                               ; preds = %14
  %22 = tail call ptr @of_graph_get_next_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %15) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %14

24:                                               ; preds = %21, %19, %9, %3
  %25 = phi i32 [ %20, %19 ], [ -22, %3 ], [ -22, %9 ], [ -22, %21 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3, ptr noundef writeonly %4) #2 {
  %6 = icmp ne ptr %3, null
  %7 = icmp ne ptr %4, null
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  br i1 %6, label %10, label %11

10:                                               ; preds = %9
  store ptr null, ptr %3, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = tail call zeroext i1 @of_graph_is_present(ptr noundef %0) #7
  br i1 %12, label %13, label %30

13:                                               ; preds = %11
  %14 = tail call ptr @of_graph_get_remote_node(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  br i1 %6, label %17, label %21

17:                                               ; preds = %16
  %18 = tail call ptr @of_drm_find_panel(ptr noundef nonnull %14) #7
  store ptr %18, ptr %3, align 4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  store ptr null, ptr %3, align 4
  br label %21

21:                                               ; preds = %20, %16
  br i1 %7, label %23, label %28

22:                                               ; preds = %17
  br i1 %7, label %27, label %28

23:                                               ; preds = %21
  %24 = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %14) #7
  store ptr %24, ptr %4, align 4
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, i32 -517, i32 0
  br label %28

27:                                               ; preds = %22
  store ptr null, ptr %4, align 4
  br label %28

28:                                               ; preds = %27, %23, %22, %21
  %29 = phi i32 [ 0, %27 ], [ -517, %21 ], [ %26, %23 ], [ 0, %22 ]
  tail call void @of_node_put(ptr noundef nonnull %14) #7
  br label %30

30:                                               ; preds = %28, %13, %11, %5
  %31 = phi i32 [ %29, %28 ], [ -22, %5 ], [ -19, %11 ], [ -19, %13 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_graph_is_present(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_of_lvds_get_dual_link_pixel_order(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @drm_of_lvds_get_remote_pixels_type(ptr noundef nonnull %0)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @drm_of_lvds_get_remote_pixels_type(ptr noundef nonnull %1)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = add nuw i32 %10, %7
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = icmp ne i32 %7, 1
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %15, %12, %9, %6, %2
  %19 = phi i32 [ %17, %15 ], [ -22, %2 ], [ %7, %6 ], [ %10, %9 ], [ -22, %12 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_of_lvds_get_remote_pixels_type(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %24, %1
  %5 = phi i32 [ %25, %24 ], [ -32, %1 ]
  %6 = phi ptr [ %26, %24 ], [ %2, %1 ]
  %7 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %6, ptr noundef nonnull @.str.8) #7
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = tail call ptr @of_graph_get_remote_port(ptr noundef nonnull %6) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @of_find_property(ptr noundef nonnull %9, ptr noundef nonnull @.str.9, ptr noundef null) #7
  %13 = icmp ne ptr %12, null
  %14 = tail call ptr @of_find_property(ptr noundef nonnull %9, ptr noundef nonnull @.str.10, ptr noundef null) #7
  %15 = icmp eq ptr %14, null
  %16 = zext i1 %13 to i32
  %17 = select i1 %15, i32 0, i32 2
  %18 = or i32 %17, %16
  tail call void @of_node_put(ptr noundef nonnull %9) #7
  %19 = icmp slt i32 %5, 0
  %20 = select i1 %19, i32 %18, i32 %5
  %21 = icmp ne i32 %18, 0
  %22 = icmp eq i32 %20, %18
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %28

24:                                               ; preds = %11, %4
  %25 = phi i32 [ %5, %4 ], [ %18, %11 ]
  %26 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %6) #7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %4

28:                                               ; preds = %11, %8
  %29 = phi i32 [ -32, %8 ], [ -22, %11 ]
  tail call void @of_node_put(ptr noundef nonnull %6) #7
  br label %30

30:                                               ; preds = %28, %24, %1
  %31 = phi i32 [ -32, %1 ], [ %29, %28 ], [ %25, %24 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_of_lvds_get_data_mapping(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %2) #7
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4
  %7 = call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(9) @.str.5)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(9) @.str.6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(8) @.str.7)
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 4113, i32 -22
  br label %16

16:                                               ; preds = %12, %9, %5, %1
  %17 = phi i32 [ -19, %1 ], [ 4112, %5 ], [ 4114, %9 ], [ %15, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
