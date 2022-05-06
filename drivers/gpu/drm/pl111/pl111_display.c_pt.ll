; ModuleID = '/llk/IR/drivers/gpu/drm/pl111/pl111_display.c_pt.bc'
source_filename = "../drivers/gpu/drm/pl111/pl111_display.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pl111_drm_dev_private = type { ptr, ptr, ptr, ptr, %struct.drm_simple_display_pipe, ptr, i32, i32, i32, ptr, %struct.clk_hw, %struct.spinlock, ptr, ptr, ptr, i8 }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.75 = type { i32, ptr }
%struct.pl111_variant_data = type { ptr, i8, i8, i8, i8, i8, i8, ptr, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_bridge_timings = type { i32, i32, i32, i8 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.70, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.70 = type { [4 x i8] }

@pl111_display_funcs = internal global %struct.drm_simple_display_pipe_funcs { ptr @pl111_mode_valid, ptr @pl111_display_enable, ptr @pl111_display_disable, ptr @pl111_display_check, ptr @pl111_display_update, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [8 x i8] c"clcdclk\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"pl111_div\00", align 1
@pl111_clk_div_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl111_clk_div_recalc_rate, ptr @pl111_clk_div_round_rate, ptr null, ptr null, ptr null, ptr @pl111_clk_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"CLCD: unable to get clcdclk.\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"%d x %d @ %d Hz, %d cpp, bw %llu too fast\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"%d x %d @ %d Hz, %d cpp, bw %llu bytes/s OK\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to set pixel clock rate to %d: %d\0A\00", align 1
@pl111_display_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"drivers/gpu/drm/pl111/pl111_display.c\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Unknown FB format 0x%08x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pl111_irq(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = and i32 %6, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 4
  %13 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %12) #5
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ 1, %11 ], [ 0, %8 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr i8, ptr %16, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %6) #5, !srcloc !11
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i32 [ %15, %14 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pl111_display_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.clk_init_data, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str) #5
  %9 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %5, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store ptr null, ptr %2, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #5
  %10 = getelementptr inbounds i8, ptr %3, i32 20
  store i32 1, ptr %10, align 4, !annotation !12
  store ptr @.str.1, ptr %3, align 4
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  store ptr @pl111_clk_div_ops, ptr %11, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 3
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 4
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  store i32 4, ptr %15, align 4
  %16 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.2) #6
  %19 = ptrtoint ptr %8 to i32
  br label %37

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %5, i32 0, i32 11
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %5, i32 0, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.pl111_variant_data, ptr %23, i32 0, i32 4
  %25 = load i8, ptr %24, align 1, !range !13
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %5, i32 0, i32 9
  store ptr %8, ptr %28, align 8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %43

29:                                               ; preds = %20
  %30 = call ptr @__clk_get_name(ptr noundef %8) #5
  store ptr %30, ptr %2, align 4
  %31 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %5, i32 0, i32 10, i32 2
  store ptr %3, ptr %31, align 4
  %32 = load ptr, ptr %6, align 4
  %33 = call i32 @devm_clk_hw_register(ptr noundef %32, ptr noundef %9) #5
  %34 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %5, i32 0, i32 10, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %5, i32 0, i32 9
  store ptr %35, ptr %36, align 8
  br label %37

37:                                               ; preds = %29, %17
  %38 = phi i32 [ %19, %17 ], [ %33, %29 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %5, i32 0, i32 12
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %27
  %44 = phi ptr [ %42, %40 ], [ %23, %27 ]
  %45 = getelementptr inbounds %struct.pl111_variant_data, ptr %44, i32 0, i32 5
  %46 = load i8, ptr %45, align 4, !range !13
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store ptr @pl111_display_enable_vblank, ptr getelementptr inbounds (%struct.drm_simple_display_pipe_funcs, ptr @pl111_display_funcs, i32 0, i32 7), align 4
  store ptr @pl111_display_disable_vblank, ptr getelementptr inbounds (%struct.drm_simple_display_pipe_funcs, ptr @pl111_display_funcs, i32 0, i32 8), align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %5, i32 0, i32 4
  %51 = getelementptr inbounds %struct.pl111_variant_data, ptr %44, i32 0, i32 7
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.pl111_variant_data, ptr %44, i32 0, i32 8
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %5, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 @drm_simple_display_pipe_init(ptr noundef %0, ptr noundef %50, ptr noundef nonnull @pl111_display_funcs, ptr noundef %52, i32 noundef %54, ptr noundef null, ptr noundef %56) #5
  br label %58

58:                                               ; preds = %49, %37
  %59 = phi i32 [ %38, %37 ], [ %57, %49 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl111_display_enable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %5 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %4, i32 0, i32 7
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr i8, ptr %6, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 4) #5, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl111_display_disable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %5 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %4, i32 0, i32 7
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr i8, ptr %6, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #5, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_display_pipe_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl111_clk_div_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %7 = and i32 %6, 67108864
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = and i32 %6, 31
  %11 = lshr i32 %6, 22
  %12 = and i32 %11, 992
  %13 = or i32 %12, %10
  %14 = add nuw nsw i32 %13, 2
  %15 = zext i32 %1 to i64
  %16 = add nuw nsw i32 %13, 1
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %17, %15
  %19 = icmp ult i64 %18, 4294967296
  br i1 %19, label %20, label %23, !prof !17

20:                                               ; preds = %9
  %21 = trunc i64 %18 to i32
  %22 = udiv i32 %21, %14
  br label %27

23:                                               ; preds = %9
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %18) #7, !srcloc !18
  %25 = extractvalue { i64, i64 } %24, 1
  %26 = trunc i64 %25 to i32
  br label %27

27:                                               ; preds = %23, %20, %2
  %28 = phi i32 [ %1, %2 ], [ %22, %20 ], [ %26, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl111_clk_div_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #5
  br label %5

5:                                                ; preds = %24, %3
  %6 = phi i32 [ 1, %3 ], [ %31, %24 ]
  %7 = phi i32 [ 1, %3 ], [ %32, %24 ]
  %8 = phi i32 [ 0, %3 ], [ %30, %24 ]
  %9 = phi i32 [ -1, %3 ], [ %29, %24 ]
  %10 = mul i32 %7, %1
  %11 = tail call i32 @clk_hw_round_rate(ptr noundef %4, i32 noundef %10) #5
  %12 = zext i32 %11 to i64
  %13 = zext i32 %7 to i64
  %14 = add nsw i64 %13, -1
  %15 = add nuw nsw i64 %14, %12
  %16 = icmp ult i64 %15, 4294967296
  br i1 %16, label %17, label %20, !prof !17

17:                                               ; preds = %5
  %18 = trunc i64 %15 to i32
  %19 = udiv i32 %18, %7
  br label %24

20:                                               ; preds = %5
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %15) #7, !srcloc !18
  %22 = extractvalue { i64, i64 } %21, 1
  %23 = trunc i64 %22 to i32
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %19, %17 ], [ %23, %20 ]
  %26 = sub i32 %1, %25
  %27 = tail call i32 @llvm.abs.i32(i32 %26, i1 false) #5
  %28 = icmp ult i32 %27, %9
  %29 = tail call i32 @llvm.umin.i32(i32 %27, i32 %9) #5
  %30 = select i1 %28, i32 %11, i32 %8
  %31 = select i1 %28, i32 %7, i32 %6
  %32 = add nuw nsw i32 %7, 1
  %33 = icmp eq i32 %32, 1023
  br i1 %33, label %34, label %5

34:                                               ; preds = %24
  store i32 %30, ptr %2, align 4
  %35 = zext i32 %30 to i64
  %36 = sext i32 %31 to i64
  %37 = add nsw i64 %36, -1
  %38 = add nsw i64 %37, %35
  %39 = icmp ult i64 %38, 4294967296
  br i1 %39, label %40, label %43, !prof !17

40:                                               ; preds = %34
  %41 = trunc i64 %38 to i32
  %42 = udiv i32 %41, %31
  br label %47

43:                                               ; preds = %34
  %44 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %31, i64 %38) #7, !srcloc !18
  %45 = extractvalue { i64, i64 } %44, 1
  %46 = trunc i64 %45 to i32
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i32 [ %42, %40 ], [ %46, %43 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl111_clk_div_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #5
  %5 = zext i32 %2 to i64
  br label %6

6:                                                ; preds = %21, %3
  %7 = phi i32 [ 1, %3 ], [ %27, %21 ]
  %8 = phi i32 [ 1, %3 ], [ %28, %21 ]
  %9 = phi i32 [ -1, %3 ], [ %26, %21 ]
  %10 = zext i32 %8 to i64
  %11 = add nsw i64 %10, -1
  %12 = add nuw nsw i64 %11, %5
  %13 = icmp ult i64 %12, 4294967296
  br i1 %13, label %14, label %17, !prof !17

14:                                               ; preds = %6
  %15 = trunc i64 %12 to i32
  %16 = udiv i32 %15, %8
  br label %21

17:                                               ; preds = %6
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %12) #7, !srcloc !18
  %19 = extractvalue { i64, i64 } %18, 1
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i32 [ %16, %14 ], [ %20, %17 ]
  %23 = sub i32 %1, %22
  %24 = tail call i32 @llvm.abs.i32(i32 %23, i1 false) #5
  %25 = icmp ult i32 %24, %9
  %26 = tail call i32 @llvm.umin.i32(i32 %24, i32 %9) #5
  %27 = select i1 %25, i32 %8, i32 %7
  %28 = add nuw nsw i32 %8, 1
  %29 = icmp eq i32 %28, 1023
  br i1 %29, label %30, label %6

30:                                               ; preds = %21
  %31 = getelementptr i8, ptr %0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %31) #5
  %32 = getelementptr i8, ptr %0, i32 -20
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr i8, ptr %33, i32 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %36 = and i32 %35, 67108832
  %37 = icmp eq i32 %27, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = or i32 %36, 67108864
  br label %47

40:                                               ; preds = %30
  %41 = add i32 %27, -2
  %42 = and i32 %41, 31
  %43 = shl i32 %41, 22
  %44 = and i32 %43, -134217728
  %45 = or i32 %44, %42
  %46 = or i32 %45, %36
  br label %47

47:                                               ; preds = %40, %38
  %48 = phi i32 [ %39, %38 ], [ %46, %40 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %49 = load ptr, ptr %32, align 8
  %50 = getelementptr i8, ptr %49, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #5, !srcloc !11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !21
  %51 = load i16, ptr %31, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !24
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl111_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pl111_variant_data, ptr %7, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 3
  %11 = load i32, ptr %1, align 4
  %12 = sext i32 %11 to i64
  %13 = mul nsw i64 %12, 1000
  %14 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i64
  %17 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i64
  %20 = zext i32 %10 to i64
  %21 = mul i64 %13, %20
  %22 = mul i64 %21, %16
  %23 = mul i64 %22, %19
  %24 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 4
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 9
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = mul nuw i32 %29, %26
  %31 = icmp ult i64 %23, 4294967296
  br i1 %31, label %32, label %36, !prof !17

32:                                               ; preds = %2
  %33 = trunc i64 %23 to i32
  %34 = udiv i32 %33, %30
  %35 = zext i32 %34 to i64
  br label %39

36:                                               ; preds = %2
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %30, i64 %23) #7, !srcloc !18
  %38 = extractvalue { i64, i64 } %37, 1
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i64 [ %35, %32 ], [ %38, %36 ]
  %41 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %5, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i32 %42 to i64
  %45 = icmp ugt i64 %40, %44
  %46 = and i1 %43, %45
  %47 = zext i16 %15 to i32
  %48 = zext i16 %18 to i32
  %49 = mul i32 %11, 1000
  %50 = select i1 %46, ptr @.str.3, ptr @.str.4
  %51 = select i1 %46, i32 -2, i32 0
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %50, i32 noundef %47, i32 noundef %48, i32 noundef %49, i32 noundef %10, i64 noundef %40) #5
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl111_display_enable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8
  %8 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 1, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %6, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %6, i32 0, i32 9
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %7, align 4
  %19 = mul i32 %18, 1000
  %20 = tail call i32 @clk_set_rate(ptr noundef %17, i32 noundef %19) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %7, align 4
  %26 = mul i32 %25, 1000
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.5, i32 noundef %26, i32 noundef %20) #6
  br label %27

27:                                               ; preds = %22, %3
  %28 = load ptr, ptr %16, align 8
  %29 = tail call i32 @clk_prepare(ptr noundef %28) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = tail call i32 @clk_enable(ptr noundef %28) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @clk_unprepare(ptr noundef %28) #5
  br label %35

35:                                               ; preds = %34, %31, %27
  %36 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 1
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 3
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 2
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i32
  %45 = xor i32 %44, -1
  %46 = add nsw i32 %45, %41
  %47 = xor i32 %38, -1
  %48 = add nsw i32 %44, %47
  %49 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 4
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = xor i32 %41, -1
  %53 = add nsw i32 %51, %52
  %54 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 6
  %55 = load i16, ptr %54, align 2
  %56 = zext i16 %55 to i32
  %57 = add nsw i32 %56, -1
  %58 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 8
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 7
  %62 = load i16, ptr %61, align 4
  %63 = zext i16 %62 to i32
  %64 = xor i32 %63, -1
  %65 = add nsw i32 %64, %60
  %66 = sub nsw i32 %63, %56
  %67 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 9
  %68 = load i16, ptr %67, align 4
  %69 = zext i16 %68 to i32
  %70 = sub nsw i32 %69, %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %71 = lshr i32 %38, 2
  %72 = and i32 %71, 16380
  %73 = add nsw i32 %72, -4
  %74 = shl nsw i32 %46, 8
  %75 = or i32 %74, %73
  %76 = shl i32 %48, 16
  %77 = or i32 %75, %76
  %78 = shl i32 %53, 24
  %79 = or i32 %77, %78
  %80 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %6, i32 0, i32 5
  %81 = load ptr, ptr %80, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %82 = shl nsw i32 %65, 10
  %83 = or i32 %82, %57
  %84 = shl i32 %66, 16
  %85 = or i32 %83, %84
  %86 = shl i32 %70, 24
  %87 = or i32 %85, %86
  %88 = load ptr, ptr %80, align 8
  %89 = getelementptr i8, ptr %88, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #5, !srcloc !11
  %90 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %6, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %90) #5
  %91 = load ptr, ptr %80, align 8
  %92 = getelementptr i8, ptr %91, i32 8
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !27
  %94 = and i32 %93, -67108833
  %95 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %6, i32 0, i32 12
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.pl111_variant_data, ptr %96, i32 0, i32 4
  %98 = load i8, ptr %97, align 1, !range !13
  %99 = icmp eq i8 %98, 0
  %100 = or i32 %94, 67108864
  %101 = select i1 %99, i32 %94, i32 %100
  %102 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 11
  %103 = load i32, ptr %102, align 4
  %104 = shl i32 %103, 11
  %105 = and i32 %104, 4096
  %106 = or i32 %105, %101
  %107 = shl i32 %103, 8
  %108 = and i32 %107, 2048
  %109 = or i32 %106, %108
  %110 = icmp eq ptr %13, null
  br i1 %110, label %130, label %111

111:                                              ; preds = %35
  %112 = getelementptr inbounds %struct.drm_connector, ptr %13, i32 0, i32 20, i32 8
  %113 = load i32, ptr %112, align 8
  %114 = shl i32 %113, 14
  %115 = and i32 %114, 16384
  %116 = or i32 %115, %109
  %117 = shl i32 %113, 10
  %118 = and i32 %117, 8192
  %119 = or i32 %116, %118
  %120 = getelementptr inbounds %struct.drm_connector, ptr %13, i32 0, i32 20, i32 7
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %130

123:                                              ; preds = %111
  %124 = getelementptr inbounds %struct.drm_connector, ptr %13, i32 0, i32 20, i32 6
  %125 = load ptr, ptr %124, align 8
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 8193
  %128 = or i32 %119, 1984
  %129 = select i1 %127, i32 %128, i32 %119
  br label %130

130:                                              ; preds = %123, %111, %35
  %131 = phi i1 [ false, %35 ], [ false, %111 ], [ %127, %123 ]
  %132 = phi i32 [ %109, %35 ], [ %119, %111 ], [ %129, %123 ]
  %133 = icmp eq ptr %15, null
  br i1 %133, label %144, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.drm_bridge, ptr %15, i32 0, i32 6
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %144, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.drm_bridge_timings, ptr %136, i32 0, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = icmp ugt i32 %140, 2999
  %142 = xor i32 %132, 8192
  %143 = select i1 %141, i32 %142, i32 %132
  br label %144

144:                                              ; preds = %138, %134, %130
  %145 = phi i32 [ %132, %130 ], [ %132, %134 ], [ %143, %138 ]
  %146 = shl nuw i32 %38, 16
  %147 = add i32 %146, -65536
  %148 = or i32 %145, %147
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %149 = load ptr, ptr %80, align 8
  %150 = getelementptr i8, ptr %149, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #5, !srcloc !11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !21
  %151 = load i16, ptr %90, align 4
  %152 = add i16 %151, 1
  store i16 %152, ptr %90, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %153 = load ptr, ptr %80, align 8
  %154 = getelementptr i8, ptr %153, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 0) #5, !srcloc !11
  %155 = select i1 %131, i32 65, i32 4129
  %156 = load ptr, ptr %95, align 4
  %157 = getelementptr inbounds %struct.pl111_variant_data, ptr %156, i32 0, i32 6
  %158 = load i8, ptr %157, align 1, !range !13
  %159 = icmp eq i8 %158, 0
  %160 = or i32 %155, 1572864
  %161 = select i1 %159, i32 %155, i32 %160
  %162 = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 4
  %163 = load ptr, ptr %162, align 8
  %164 = load i32, ptr %163, align 4
  switch i32 %164, label %219 [
    i32 875710274, label %165
    i32 875710290, label %168
    i32 875708993, label %171
    i32 875709016, label %171
    i32 875713089, label %176
    i32 875713112, label %176
    i32 909199170, label %181
    i32 909199186, label %192
    i32 892420673, label %203
    i32 892420696, label %203
    i32 892424769, label %206
    i32 892424792, label %206
    i32 842089025, label %211
    i32 842089048, label %211
    i32 842093121, label %214
    i32 842093144, label %214
  ]

165:                                              ; preds = %144
  %166 = or i32 %155, 1573132
  %167 = select i1 %159, i32 %155, i32 %166
  br label %223

168:                                              ; preds = %144
  %169 = or i32 %155, 1572876
  %170 = select i1 %159, i32 %155, i32 %169
  br label %223

171:                                              ; preds = %144, %144
  br i1 %159, label %174, label %172

172:                                              ; preds = %171
  %173 = or i32 %161, 266
  br label %223

174:                                              ; preds = %171
  %175 = or i32 %161, 10
  br label %223

176:                                              ; preds = %144, %144
  br i1 %159, label %179, label %177

177:                                              ; preds = %176
  %178 = or i32 %161, 10
  br label %223

179:                                              ; preds = %176
  %180 = or i32 %161, 266
  br label %223

181:                                              ; preds = %144
  %182 = getelementptr inbounds %struct.pl111_variant_data, ptr %156, i32 0, i32 1
  %183 = load i8, ptr %182, align 4, !range !13
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %181
  %186 = or i32 %161, 8
  br label %223

187:                                              ; preds = %181
  br i1 %159, label %190, label %188

188:                                              ; preds = %187
  %189 = or i32 %161, 262408
  br label %223

190:                                              ; preds = %187
  %191 = or i32 %161, 12
  br label %223

192:                                              ; preds = %144
  %193 = getelementptr inbounds %struct.pl111_variant_data, ptr %156, i32 0, i32 1
  %194 = load i8, ptr %193, align 4, !range !13
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %192
  %197 = or i32 %161, 264
  br label %223

198:                                              ; preds = %192
  br i1 %159, label %201, label %199

199:                                              ; preds = %198
  %200 = or i32 %161, 262152
  br label %223

201:                                              ; preds = %198
  %202 = or i32 %161, 268
  br label %223

203:                                              ; preds = %144, %144
  %204 = select i1 %159, i32 8, i32 131336
  %205 = or i32 %161, %204
  br label %223

206:                                              ; preds = %144, %144
  br i1 %159, label %209, label %207

207:                                              ; preds = %206
  %208 = or i32 %161, 131080
  br label %223

209:                                              ; preds = %206
  %210 = or i32 %161, 264
  br label %223

211:                                              ; preds = %144, %144
  %212 = select i1 %159, i32 14, i32 270
  %213 = or i32 %161, %212
  br label %223

214:                                              ; preds = %144, %144
  br i1 %159, label %217, label %215

215:                                              ; preds = %214
  %216 = or i32 %161, 14
  br label %223

217:                                              ; preds = %214
  %218 = or i32 %161, 270
  br label %223

219:                                              ; preds = %144
  %220 = load i1, ptr @pl111_display_enable.__already_done, align 1
  br i1 %220, label %223, label %221, !prof !17

221:                                              ; preds = %219
  store i1 true, ptr @pl111_display_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %164) #5
  %222 = load ptr, ptr %95, align 4
  br label %223

223:                                              ; preds = %221, %219, %217, %215, %211, %209, %207, %203, %201, %199, %196, %190, %188, %185, %179, %177, %174, %172, %168, %165
  %224 = phi ptr [ %156, %215 ], [ %156, %217 ], [ %156, %207 ], [ %156, %209 ], [ %156, %196 ], [ %156, %199 ], [ %156, %201 ], [ %156, %185 ], [ %156, %188 ], [ %156, %190 ], [ %156, %177 ], [ %156, %179 ], [ %156, %172 ], [ %156, %174 ], [ %156, %165 ], [ %156, %168 ], [ %156, %203 ], [ %156, %211 ], [ %222, %221 ], [ %156, %219 ]
  %225 = phi i32 [ %216, %215 ], [ %218, %217 ], [ %208, %207 ], [ %210, %209 ], [ %197, %196 ], [ %200, %199 ], [ %202, %201 ], [ %186, %185 ], [ %189, %188 ], [ %191, %190 ], [ %178, %177 ], [ %180, %179 ], [ %173, %172 ], [ %175, %174 ], [ %167, %165 ], [ %170, %168 ], [ %205, %203 ], [ %213, %211 ], [ %161, %221 ], [ %161, %219 ]
  %226 = getelementptr inbounds %struct.pl111_variant_data, ptr %224, i32 0, i32 3
  %227 = load i8, ptr %226, align 2, !range !13
  %228 = icmp eq i8 %227, 0
  %229 = and i32 %225, -257
  %230 = select i1 %228, i32 %225, i32 %229
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %231 = load ptr, ptr %80, align 8
  %232 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %6, i32 0, i32 8
  %233 = load i32, ptr %232, align 4
  %234 = getelementptr i8, ptr %231, i32 %233
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %230) #5, !srcloc !11
  tail call void @msleep(i32 noundef 20) #5
  %235 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %6, i32 0, i32 13
  %236 = load ptr, ptr %235, align 8
  %237 = icmp eq ptr %236, null
  br i1 %237, label %241, label %238

238:                                              ; preds = %223
  %239 = load ptr, ptr %162, align 8
  %240 = load i32, ptr %239, align 4
  tail call void %236(ptr noundef %4, i32 noundef %240) #5
  br label %241

241:                                              ; preds = %238, %223
  %242 = or i32 %230, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %243 = load ptr, ptr %80, align 8
  %244 = load i32, ptr %232, align 4
  %245 = getelementptr i8, ptr %243, i32 %244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 %242) #5, !srcloc !11
  %246 = load ptr, ptr %95, align 4
  %247 = getelementptr inbounds %struct.pl111_variant_data, ptr %246, i32 0, i32 5
  %248 = load i8, ptr %247, align 4, !range !13
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %241
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #5
  br label %251

251:                                              ; preds = %250, %241
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl111_display_disable(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pl111_variant_data, ptr %6, i32 0, i32 5
  %8 = load i8, ptr %7, align 4, !range !13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @drm_crtc_vblank_off(ptr noundef %0) #5
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %4, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %4, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !32
  %18 = and i32 %17, 2048
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %11
  %21 = and i32 %17, -2049
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %22 = load ptr, ptr %12, align 8
  %23 = load i32, ptr %14, align 4
  %24 = getelementptr i8, ptr %22, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #5, !srcloc !11
  br label %25

25:                                               ; preds = %20, %11
  tail call void @msleep(i32 noundef 20) #5
  %26 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %4, i32 0, i32 14
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void %27(ptr noundef %2) #5
  br label %30

30:                                               ; preds = %29, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %31 = load ptr, ptr %12, align 8
  %32 = load i32, ptr %14, align 4
  %33 = getelementptr i8, ptr %31, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #5, !srcloc !11
  %34 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %4, i32 0, i32 9
  %35 = load ptr, ptr %34, align 8
  tail call void @clk_disable(ptr noundef %35) #5
  tail call void @clk_unprepare(ptr noundef %35) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl111_display_check(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 1, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_crtc_state, ptr %2, i32 0, i32 8, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 15
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %3
  %15 = icmp eq ptr %9, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %14
  %17 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef nonnull %9, ptr noundef %1, i32 noundef 0) #5
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = load i16, ptr %10, align 4
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.drm_format_info, ptr %26, i32 0, i32 3
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = mul nuw nsw i32 %29, %24
  %31 = icmp eq i32 %22, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %20
  %33 = icmp eq ptr %7, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, %26
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.drm_crtc_state, ptr %2, i32 0, i32 3
  %40 = load i8, ptr %39, align 2
  %41 = or i8 %40, 2
  store i8 %41, ptr %39, align 2
  br label %42

42:                                               ; preds = %38, %34, %32, %20, %16, %14, %3
  %43 = phi i32 [ -22, %3 ], [ 0, %38 ], [ 0, %34 ], [ 0, %32 ], [ 0, %14 ], [ -22, %16 ], [ -22, %20 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl111_display_update(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 18
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 1, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef nonnull %10, ptr noundef %8, i32 noundef 0) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %17 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %15, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %18, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #5, !srcloc !11
  br label %20

20:                                               ; preds = %12, %2
  %21 = icmp eq ptr %6, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.drm_crtc_state, ptr %23, i32 0, i32 18
  store ptr null, ptr %24, align 4
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %26) #5
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 2
  %29 = load i8, ptr %28, align 1, !range !13
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %22
  %32 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %0, ptr noundef nonnull %6) #5
  br label %36

35:                                               ; preds = %31, %22
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef nonnull %6) #5
  br label %36

36:                                               ; preds = %35, %34
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !21
  %39 = load i16, ptr %38, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !23
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !37
  br label %41

41:                                               ; preds = %36, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

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
!8 = !{i64 2519825}
!9 = !{i64 2155377233}
!10 = !{i64 2155377522}
!11 = !{i64 2519407}
!12 = !{!"auto-init"}
!13 = !{i8 0, i8 2}
!14 = !{i64 2155388914}
!15 = !{i64 2155389286}
!16 = !{i64 2155406815}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2148369700, i64 2148369980, i64 2148370314, i64 2148370648}
!19 = !{i64 2155415079}
!20 = !{i64 2155417347}
!21 = !{i64 2148892505}
!22 = !{i64 2148888329}
!23 = !{i64 2148888404, i64 2148888431, i64 2148888478, i64 2148888500, i64 2148888528, i64 2148888548}
!24 = !{i64 2148915508}
!25 = !{i64 2155378965}
!26 = !{i64 2155379512}
!27 = !{i64 2155380142}
!28 = !{i64 2155382485}
!29 = !{i64 2155382822}
!30 = !{i64 2155386768}
!31 = !{i64 2155387107}
!32 = !{i64 2155387596}
!33 = !{i64 2155387808}
!34 = !{i64 2155388134}
!35 = !{i64 2155388468}
!36 = !{i64 349821}
!37 = !{i64 2148916649}
