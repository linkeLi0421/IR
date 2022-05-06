; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun4i_rgb.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_rgb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_rgb_init:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_rgb_init\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_rgb_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sun4i_rgb = type { %struct.drm_connector, %struct.drm_encoder, ptr, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
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
%struct.sun4i_tcon = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.list_head }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }

@.str = private unnamed_addr constant [49 x i8] c"No panel or bridge found... RGB output disabled\0A\00", align 1
@sun4i_rgb_enc_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr @sun4i_rgb_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_rgb_encoder_disable, ptr @sun4i_rgb_encoder_enable, ptr null }, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Couldn't initialise the rgb encoder\0A\00", align 1
@sun4i_rgb_con_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @sun4i_rgb_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sun4i_rgb_con_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @sun4i_rgb_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Couldn't initialise the rgb connector\0A\00", align 1
@__kstrtab_sun4i_rgb_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_rgb_init = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_rgb_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_rgb_init to i32), ptr @__kstrtab_sun4i_rgb_init, ptr @__kstrtabns_sun4i_rgb_init }, section "___ksymtab+sun4i_rgb_init", align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Validating modes...\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Horizontal parameters OK\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Vertical parameters OK\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"RGB panel used, skipping clock rate checks\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Clock rate OK\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Disabling RGB output\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Enabling RGB output\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_sun4i_rgb_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_rgb_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 1056, i32 noundef 3520) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sun4i_rgb, ptr %5, i32 0, i32 2
  store ptr %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.sun4i_rgb, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sun4i_rgb, ptr %5, i32 0, i32 3
  %14 = getelementptr inbounds %struct.sun4i_rgb, ptr %5, i32 0, i32 4
  %15 = tail call i32 @drm_of_find_panel_or_bridge(ptr noundef %12, i32 noundef 1, i32 noundef 0, ptr noundef %13, ptr noundef %14) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %7
  %18 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str) #4
  br label %50

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.sun4i_rgb, ptr %5, i32 0, i32 1, i32 11
  store ptr @sun4i_rgb_enc_helper_funcs, ptr %20, align 4
  %21 = tail call i32 @drm_simple_encoder_init(ptr noundef %0, ptr noundef %9, i32 noundef 0) #3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.1) #4
  br label %50

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 13
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.drm_crtc, ptr %27, i32 0, i32 8
  %29 = load i32, ptr %28, align 8
  %30 = shl nuw i32 1, %29
  %31 = getelementptr inbounds %struct.sun4i_rgb, ptr %5, i32 0, i32 1, i32 6
  store i32 %30, ptr %31, align 4
  %32 = load ptr, ptr %13, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.drm_connector, ptr %5, i32 0, i32 35
  store ptr @sun4i_rgb_con_helper_funcs, ptr %35, align 4
  %36 = tail call i32 @drm_connector_init(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull @sun4i_rgb_con_funcs, i32 noundef 0) #3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.2) #4
  br label %48

40:                                               ; preds = %34
  %41 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %5, ptr noundef %9) #3
  br label %42

42:                                               ; preds = %40, %25
  %43 = load ptr, ptr %14, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @drm_bridge_attach(ptr noundef %9, ptr noundef nonnull %43, ptr noundef null, i32 noundef 0) #3
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45, %38
  %49 = phi i32 [ %36, %38 ], [ %46, %45 ]
  tail call void @drm_encoder_cleanup(ptr noundef %9) #3
  br label %50

50:                                               ; preds = %48, %45, %42, %23, %17, %2
  %51 = phi i32 [ 0, %17 ], [ -12, %2 ], [ 0, %45 ], [ 0, %42 ], [ %21, %23 ], [ %49, %48 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_rgb_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 72
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 3
  %6 = load i16, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 2
  %8 = load i16, ptr %7, align 2
  %9 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 8
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 7
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = sub nsw i32 %11, %14
  %16 = load i32, ptr %1, align 4
  %17 = mul i32 %16, 1000
  %18 = sext i32 %17 to i64
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3) #3
  %19 = icmp eq i16 %6, %8
  br i1 %19, label %87, label %20

20:                                               ; preds = %2
  %21 = zext i16 %8 to i32
  %22 = zext i16 %6 to i32
  %23 = sub nsw i32 %22, %21
  %24 = icmp ugt i32 %23, 1023
  br i1 %24, label %87, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %27 = load i16, ptr %26, align 4
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %87, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 4
  %31 = load i16, ptr %30, align 2
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %87, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i16 %27, 2047
  %35 = icmp ugt i16 %31, 4095
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %87, label %37

37:                                               ; preds = %33
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4) #3
  %38 = icmp eq i16 %10, %13
  br i1 %38, label %87, label %39

39:                                               ; preds = %37
  %40 = icmp ugt i32 %15, 1023
  br i1 %40, label %87, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %43 = load i16, ptr %42, align 2
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %87, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 9
  %47 = load i16, ptr %46, align 4
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %87, label %49

49:                                               ; preds = %45
  %50 = icmp ugt i16 %43, 2047
  %51 = icmp ugt i16 %47, 4095
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %87, label %53

53:                                               ; preds = %49
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5) #3
  %54 = getelementptr i8, ptr %0, i32 76
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6) #3
  br label %86

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %0, i32 80
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %86, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.sun4i_tcon, ptr %4, i32 0, i32 9
  store i8 6, ptr %63, align 1
  %64 = getelementptr inbounds %struct.sun4i_tcon, ptr %4, i32 0, i32 8
  store i8 127, ptr %64, align 4
  %65 = getelementptr inbounds %struct.sun4i_tcon, ptr %4, i32 0, i32 7
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 @clk_round_rate(ptr noundef %66, i32 noundef %17) #3
  %68 = sext i32 %67 to i64
  %69 = mul nsw i64 %18, 995
  %70 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %69, i32 0) #5, !srcloc !8
  %71 = extractvalue { i64, i32 } %70, 0
  %72 = extractvalue { i64, i32 } %70, 1
  %73 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %69, i64 %71, i32 %72) #5, !srcloc !9
  %74 = extractvalue { i64, i32 } %73, 0
  %75 = lshr i64 %74, 9
  %76 = icmp ugt i64 %75, %68
  br i1 %76, label %87, label %77

77:                                               ; preds = %62
  %78 = mul nsw i64 %18, 1005
  %79 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %78, i32 0) #5, !srcloc !8
  %80 = extractvalue { i64, i32 } %79, 0
  %81 = extractvalue { i64, i32 } %79, 1
  %82 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %78, i64 %80, i32 %81) #5, !srcloc !9
  %83 = extractvalue { i64, i32 } %82, 0
  %84 = lshr i64 %83, 9
  %85 = icmp ult i64 %84, %68
  br i1 %85, label %87, label %86

86:                                               ; preds = %77, %58, %57
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #3
  br label %87

87:                                               ; preds = %86, %77, %62, %49, %45, %41, %39, %37, %33, %29, %25, %20, %2
  %88 = phi i32 [ 0, %86 ], [ 21, %2 ], [ 22, %20 ], [ 3, %29 ], [ 3, %25 ], [ 18, %33 ], [ 25, %37 ], [ 26, %39 ], [ 4, %45 ], [ 4, %41 ], [ 19, %49 ], [ 16, %62 ], [ 15, %77 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_rgb_encoder_disable(ptr nocapture noundef readonly %0) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8) #3
  %2 = getelementptr i8, ptr %0, i32 76
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @drm_panel_disable(ptr noundef nonnull %3) #3
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 @drm_panel_unprepare(ptr noundef %7) #3
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_rgb_encoder_enable(ptr nocapture noundef readonly %0) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9) #3
  %2 = getelementptr i8, ptr %0, i32 76
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @drm_panel_prepare(ptr noundef nonnull %3) #3
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 @drm_panel_enable(ptr noundef %7) #3
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_rgb_get_modes(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sun4i_rgb, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @drm_panel_get_modes(ptr noundef %3, ptr noundef %0) #3
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_rgb_connector_destroy(ptr noundef %0) #0 {
  tail call void @drm_connector_cleanup(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind readnone }

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
!8 = !{i64 874773, i64 874800, i64 874822, i64 874850}
!9 = !{i64 875181, i64 875208, i64 875241, i64 875262, i64 875289, i64 875315}
