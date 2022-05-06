; ModuleID = '/llk/IR/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.atmel_hlcdc_crtc = type { %struct.drm_crtc, ptr, ptr, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atmel_hlcdc_dc = type { ptr, ptr, ptr, ptr, [6 x ptr], %struct.anon.77 }
%struct.anon.77 = type { i32, ptr }
%struct.atmel_hlcdc_layer_desc = type { ptr, i32, i32, i32, i32, i32, ptr, %struct.atmel_hlcdc_layer_cfg_layout, i32, i32 }
%struct.atmel_hlcdc_layer_cfg_layout = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.76, i32, i32, i32 }
%struct.anon.76 = type { i32, i32 }
%struct.atmel_hlcdc_crtc_state = type { %struct.drm_crtc_state, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.atmel_hlcdc = type { ptr, ptr, ptr, ptr, i32 }
%struct.atmel_hlcdc_dc_desc = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.72 }
%union.anon.72 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_pending_vblank_event = type { %struct.drm_pending_event, i32, i64, %union.anon.71 }
%struct.drm_pending_event = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%union.anon.71 = type { %struct.drm_event_vblank }
%struct.drm_event_vblank = type { %struct.drm_event, i64, i32, i32, i32, i32 }
%struct.drm_event = type { i32, i32 }

@atmel_hlcdc_crtc_funcs = internal constant %struct.drm_crtc_funcs { ptr @atmel_hlcdc_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @atmel_hlcdc_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @atmel_hlcdc_crtc_duplicate_state, ptr @atmel_hlcdc_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_hlcdc_crtc_enable_vblank, ptr @atmel_hlcdc_crtc_disable_vblank, ptr null }, align 4
@lcdc_crtc_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @atmel_hlcdc_crtc_mode_valid, ptr null, ptr null, ptr @atmel_hlcdc_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr @atmel_hlcdc_crtc_atomic_check, ptr @atmel_hlcdc_crtc_atomic_begin, ptr @atmel_hlcdc_crtc_atomic_flush, ptr @atmel_hlcdc_crtc_atomic_enable, ptr @atmel_hlcdc_crtc_atomic_disable, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [47 x i8] c"drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @atmel_hlcdc_crtc_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %0) #5
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 28
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef nonnull %7) #5
  tail call void @drm_crtc_vblank_put(ptr noundef %0) #5
  store ptr null, ptr %6, align 4
  br label %10

10:                                               ; preds = %9, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atmel_hlcdc_crtc_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 768) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %174, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %5, i32 0, i32 1
  store ptr %3, ptr %8, align 8
  %9 = getelementptr %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 4, i32 0
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %20 [
    i32 1, label %16
    i32 3, label %18
  ]

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %10, i32 -456
  br label %20

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %10, i32 -456
  br label %20

20:                                               ; preds = %18, %16, %12, %7
  %21 = phi ptr [ null, %12 ], [ null, %18 ], [ %17, %16 ], [ null, %7 ]
  %22 = phi ptr [ null, %12 ], [ %19, %18 ], [ null, %16 ], [ null, %7 ]
  %23 = getelementptr %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 4, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  switch i32 %29, label %34 [
    i32 1, label %32
    i32 3, label %30
  ]

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %24, i32 -456
  br label %34

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %24, i32 -456
  br label %34

34:                                               ; preds = %32, %30, %26, %20
  %35 = phi ptr [ %21, %26 ], [ %21, %30 ], [ %33, %32 ], [ %21, %20 ]
  %36 = phi ptr [ %22, %26 ], [ %31, %30 ], [ %22, %32 ], [ %22, %20 ]
  %37 = getelementptr %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 4, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %38, align 4
  %42 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  switch i32 %43, label %48 [
    i32 1, label %46
    i32 3, label %44
  ]

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %38, i32 -456
  br label %48

46:                                               ; preds = %40
  %47 = getelementptr i8, ptr %38, i32 -456
  br label %48

48:                                               ; preds = %46, %44, %40, %34
  %49 = phi ptr [ %35, %40 ], [ %35, %44 ], [ %47, %46 ], [ %35, %34 ]
  %50 = phi ptr [ %36, %40 ], [ %45, %44 ], [ %36, %46 ], [ %36, %34 ]
  %51 = getelementptr %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 4, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load ptr, ptr %52, align 4
  %56 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  switch i32 %57, label %62 [
    i32 1, label %60
    i32 3, label %58
  ]

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %52, i32 -456
  br label %62

60:                                               ; preds = %54
  %61 = getelementptr i8, ptr %52, i32 -456
  br label %62

62:                                               ; preds = %60, %58, %54, %48
  %63 = phi ptr [ %49, %54 ], [ %49, %58 ], [ %61, %60 ], [ %49, %48 ]
  %64 = phi ptr [ %50, %54 ], [ %59, %58 ], [ %50, %60 ], [ %50, %48 ]
  %65 = getelementptr %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 4, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %62
  %69 = load ptr, ptr %66, align 4
  %70 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  switch i32 %71, label %76 [
    i32 1, label %74
    i32 3, label %72
  ]

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %66, i32 -456
  br label %76

74:                                               ; preds = %68
  %75 = getelementptr i8, ptr %66, i32 -456
  br label %76

76:                                               ; preds = %74, %72, %68, %62
  %77 = phi ptr [ %63, %68 ], [ %63, %72 ], [ %75, %74 ], [ %63, %62 ]
  %78 = phi ptr [ %64, %68 ], [ %73, %72 ], [ %64, %74 ], [ %64, %62 ]
  %79 = getelementptr %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 4, i32 5
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %90, label %82

82:                                               ; preds = %76
  %83 = load ptr, ptr %80, align 4
  %84 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %83, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  switch i32 %85, label %90 [
    i32 1, label %88
    i32 3, label %86
  ]

86:                                               ; preds = %82
  %87 = getelementptr i8, ptr %80, i32 -456
  br label %90

88:                                               ; preds = %82
  %89 = getelementptr i8, ptr %80, i32 -456
  br label %90

90:                                               ; preds = %88, %86, %82, %76
  %91 = phi ptr [ %77, %82 ], [ %77, %86 ], [ %89, %88 ], [ %77, %76 ]
  %92 = phi ptr [ %78, %82 ], [ %87, %86 ], [ %78, %88 ], [ %78, %76 ]
  %93 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %91, ptr noundef %92, ptr noundef nonnull @atmel_hlcdc_crtc_funcs, ptr noundef null) #5
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %173, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 8
  %97 = load i32, ptr %96, align 8
  %98 = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %5, i32 0, i32 3
  store i32 %97, ptr %98, align 8
  %99 = load ptr, ptr %9, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr %99, align 4
  %103 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %102, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = shl nuw i32 1, %97
  %108 = getelementptr i8, ptr %99, i32 -388
  store i32 %107, ptr %108, align 4
  br label %109

109:                                              ; preds = %106, %101, %95
  %110 = load ptr, ptr %23, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %121, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %110, align 4
  %114 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %113, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, ptr %98, align 8
  %119 = shl nuw i32 1, %118
  %120 = getelementptr i8, ptr %110, i32 -388
  store i32 %119, ptr %120, align 4
  br label %121

121:                                              ; preds = %117, %112, %109
  %122 = load ptr, ptr %37, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %133, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %122, align 4
  %126 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %125, i32 0, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, ptr %98, align 8
  %131 = shl nuw i32 1, %130
  %132 = getelementptr i8, ptr %122, i32 -388
  store i32 %131, ptr %132, align 4
  br label %133

133:                                              ; preds = %129, %124, %121
  %134 = load ptr, ptr %51, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %145, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr %134, align 4
  %138 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %137, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 2
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i32, ptr %98, align 8
  %143 = shl nuw i32 1, %142
  %144 = getelementptr i8, ptr %134, i32 -388
  store i32 %143, ptr %144, align 4
  br label %145

145:                                              ; preds = %141, %136, %133
  %146 = load ptr, ptr %65, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %157, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr %146, align 4
  %150 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %149, i32 0, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %151, 2
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, ptr %98, align 8
  %155 = shl nuw i32 1, %154
  %156 = getelementptr i8, ptr %146, i32 -388
  store i32 %155, ptr %156, align 4
  br label %157

157:                                              ; preds = %153, %148, %145
  %158 = load ptr, ptr %79, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %169, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr %158, align 4
  %162 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %161, i32 0, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load i32, ptr %98, align 8
  %167 = shl nuw i32 1, %166
  %168 = getelementptr i8, ptr %158, i32 -388
  store i32 %167, ptr %168, align 4
  br label %169

169:                                              ; preds = %165, %160, %157
  %170 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 19
  store ptr @lcdc_crtc_helper_funcs, ptr %170, align 4
  %171 = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef nonnull %5, i32 noundef 256) #5
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef nonnull %5, i32 noundef 0, i1 noundef zeroext false, i32 noundef 256) #5
  %172 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 3
  store ptr %5, ptr %172, align 4
  br label %174

173:                                              ; preds = %90
  tail call void @drm_crtc_cleanup(ptr noundef nonnull %5) #5
  tail call void @kfree(ptr noundef nonnull %5) #5
  br label %174

174:                                              ; preds = %173, %169, %1
  %175 = phi i32 [ %93, %173 ], [ 0, %169 ], [ -12, %1 ]
  ret i32 %175
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_destroy(ptr noundef %0) #0 {
  tail call void @drm_crtc_cleanup(ptr noundef %0) #5
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %3) #5
  %6 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %6) #5
  store ptr null, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 288) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %0, ptr noundef nonnull %9) #5
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @atmel_hlcdc_crtc_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 427, i32 noundef 9, ptr noundef null) #5
  br label %15

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 288) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %0, ptr noundef nonnull %8) #5
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.atmel_hlcdc_crtc_state, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.atmel_hlcdc_crtc_state, ptr %8, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %10, %6, %5
  %16 = phi ptr [ null, %5 ], [ %8, %10 ], [ null, %6 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %1) #5
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_crtc_enable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 44, i32 noundef 1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_disable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 48, i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_crtc_mode_valid(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @atmel_hlcdc_dc_mode_valid(ptr noundef %4, ptr noundef %1) #5
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_mode_set_nofb(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.atmel_hlcdc, ptr %5, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %143

13:                                               ; preds = %1
  %14 = tail call i32 @clk_enable(ptr noundef %10) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %141

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 23
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 20
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 25
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 24
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = sub nsw i32 %25, %28
  %30 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 16
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 13
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 18
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 17
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = xor i32 %32, -1
  %43 = add nsw i32 %41, %42
  %44 = xor i32 %19, -1
  %45 = add nsw i32 %28, %44
  %46 = shl i32 %45, 16
  %47 = or i32 %43, %46
  %48 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 4, i32 noundef %47) #5
  %49 = xor i32 %22, -1
  %50 = add nsw i32 %49, %19
  %51 = shl i32 %29, 16
  %52 = or i32 %51, %50
  %53 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 8, i32 noundef %52) #5
  %54 = xor i32 %35, -1
  %55 = add nsw i32 %54, %32
  %56 = xor i32 %41, -1
  %57 = add nsw i32 %56, %38
  %58 = shl i32 %57, 16
  %59 = or i32 %58, %55
  %60 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 12, i32 noundef %59) #5
  %61 = load i16, ptr %33, align 4
  %62 = zext i16 %61 to i32
  %63 = add nsw i32 %62, -1
  %64 = load i16, ptr %20, align 2
  %65 = zext i16 %64 to i32
  %66 = shl nuw i32 %65, 16
  %67 = add i32 %66, -65536
  %68 = or i32 %67, %63
  %69 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 16, i32 noundef %68) #5
  %70 = load ptr, ptr %2, align 8
  %71 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.atmel_hlcdc, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 @clk_get_rate(ptr noundef %74) #5
  %76 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 12
  %77 = load i32, ptr %76, align 4
  %78 = mul i32 %77, 1000
  %79 = load ptr, ptr %2, align 8
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %80, i32 0, i32 8
  %82 = load i8, ptr %81, align 1, !range !9
  %83 = icmp eq i8 %82, 0
  %84 = xor i8 %82, 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %75, %85
  %87 = select i1 %83, i32 16711685, i32 16711681
  %88 = select i1 %83, i32 4, i32 0
  %89 = add i32 %78, -1
  %90 = add i32 %89, %86
  %91 = udiv i32 %90, %78
  %92 = icmp slt i32 %91, 2
  br i1 %92, label %116, label %93

93:                                               ; preds = %16
  %94 = shl i32 %91, 16
  %95 = add i32 %94, -131072
  %96 = icmp ult i32 %95, 16777216
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = lshr i32 %86, 1
  %99 = add i32 %89, %98
  %100 = udiv i32 %99, %78
  %101 = shl i32 %100, 16
  %102 = add i32 %101, -131072
  %103 = icmp ult i32 %102, 16777216
  %104 = select i1 %103, i32 %100, i32 16711680
  br label %116

105:                                              ; preds = %93
  %106 = udiv i32 %86, %78
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = udiv i32 %86, %106
  %110 = sub i32 %109, %78
  %111 = mul i32 %110, 10
  %112 = udiv i32 %86, %91
  %113 = sub i32 %78, %112
  %114 = icmp ult i32 %111, %113
  %115 = select i1 %114, i32 %106, i32 %91
  br label %116

116:                                              ; preds = %108, %105, %97, %16
  %117 = phi i32 [ 0, %97 ], [ %88, %16 ], [ %88, %108 ], [ %88, %105 ]
  %118 = phi i32 [ %104, %97 ], [ 2, %16 ], [ %115, %108 ], [ %91, %105 ]
  %119 = shl i32 %118, 16
  %120 = add i32 %119, -131072
  %121 = or i32 %120, %117
  %122 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef %87, i32 noundef %121, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %123 = load ptr, ptr %7, align 4
  %124 = getelementptr inbounds %struct.atmel_hlcdc_crtc_state, ptr %123, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = shl i32 %125, 8
  %127 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 11
  %128 = load i32, ptr %127, align 4
  %129 = lshr i32 %128, 2
  %130 = and i32 %129, 2
  %131 = or i32 %130, %126
  %132 = lshr i32 %128, 1
  %133 = and i32 %132, 1
  %134 = or i32 %131, %133
  %135 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 20, i32 noundef 2044831, i32 noundef %134, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %136 = load ptr, ptr %2, align 8
  %137 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %136, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.atmel_hlcdc, ptr %138, i32 0, i32 2
  %140 = load ptr, ptr %139, align 4
  tail call void @clk_disable(ptr noundef %140) #5
  br label %141

141:                                              ; preds = %116, %13
  %142 = phi ptr [ %140, %116 ], [ %10, %13 ]
  tail call void @clk_unprepare(ptr noundef %142) #5
  br label %143

143:                                              ; preds = %141, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_crtc_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_atomic_state, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %91

14:                                               ; preds = %2
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %15, i32 0, i32 1
  br label %17

17:                                               ; preds = %82, %14
  %18 = phi ptr [ %10, %14 ], [ %83, %82 ]
  %19 = phi i32 [ 0, %14 ], [ %85, %82 ]
  %20 = phi i32 [ 15, %14 ], [ %84, %82 ]
  %21 = getelementptr inbounds %struct.drm_atomic_state, ptr %18, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.__drm_connnectors_state, ptr %22, i32 %19
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %82, label %26

26:                                               ; preds = %17
  %27 = getelementptr %struct.__drm_connnectors_state, ptr %22, i32 %19, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drm_connector_state, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %82, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %28, align 4
  %34 = getelementptr inbounds %struct.drm_connector_state, ptr %28, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.drm_connector, ptr %33, i32 0, i32 41
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi ptr [ %35, %32 ], [ %39, %37 ]
  %42 = tail call i32 @atmel_hlcdc_encoder_get_bus_fmt(ptr noundef %41) #5
  switch i32 %42, label %53 [
    i32 0, label %43
    i32 4118, label %71
    i32 4119, label %50
    i32 4105, label %51
    i32 4106, label %52
  ]

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.drm_connector, ptr %33, i32 0, i32 20, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.drm_connector, ptr %33, i32 0, i32 20, i32 6
  %49 = load ptr, ptr %48, align 8
  br label %54

50:                                               ; preds = %40
  br label %71

51:                                               ; preds = %40
  br label %71

52:                                               ; preds = %40
  br label %71

53:                                               ; preds = %40
  br label %71

54:                                               ; preds = %67, %47
  %55 = phi i32 [ 0, %47 ], [ %69, %67 ]
  %56 = phi i32 [ 0, %47 ], [ %68, %67 ]
  %57 = getelementptr i32, ptr %49, i32 %55
  %58 = load i32, ptr %57, align 4
  switch i32 %58, label %67 [
    i32 4118, label %59
    i32 4119, label %61
    i32 4105, label %63
    i32 4106, label %65
  ]

59:                                               ; preds = %54
  %60 = or i32 %56, 1
  br label %67

61:                                               ; preds = %54
  %62 = or i32 %56, 2
  br label %67

63:                                               ; preds = %54
  %64 = or i32 %56, 4
  br label %67

65:                                               ; preds = %54
  %66 = or i32 %56, 8
  br label %67

67:                                               ; preds = %65, %63, %61, %59, %54
  %68 = phi i32 [ %56, %54 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %60, %59 ]
  %69 = add nuw i32 %55, 1
  %70 = icmp eq i32 %69, %45
  br i1 %70, label %71, label %54

71:                                               ; preds = %67, %53, %52, %51, %50, %43, %40
  %72 = phi i32 [ -22, %53 ], [ 8, %52 ], [ 4, %51 ], [ 2, %50 ], [ 1, %40 ], [ 0, %43 ], [ %68, %67 ]
  %73 = load ptr, ptr %16, align 8
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %74, i32 0, i32 7
  %76 = load i8, ptr %75, align 4, !range !9
  %77 = icmp eq i8 %76, 0
  %78 = and i32 %72, %20
  %79 = or i32 %72, %20
  %80 = select i1 %77, i32 %79, i32 %78
  %81 = load ptr, ptr %9, align 4
  br label %82

82:                                               ; preds = %71, %26, %17
  %83 = phi ptr [ %18, %17 ], [ %81, %71 ], [ %18, %26 ]
  %84 = phi i32 [ %20, %17 ], [ %80, %71 ], [ %20, %26 ]
  %85 = add nuw nsw i32 %19, 1
  %86 = getelementptr inbounds %struct.drm_atomic_state, ptr %83, i32 0, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %17, label %89

89:                                               ; preds = %82
  %90 = icmp eq i32 %84, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %89, %2
  %92 = phi i32 [ %84, %89 ], [ 15, %2 ]
  %93 = tail call i32 @llvm.ctlz.i32(i32 %92, i1 true) #5, !range !10
  %94 = xor i32 %93, 31
  %95 = getelementptr inbounds %struct.atmel_hlcdc_crtc_state, ptr %8, i32 0, i32 1
  store i32 %94, ptr %95, align 4
  %96 = tail call i32 @atmel_hlcdc_plane_prepare_disc_area(ptr noundef %8) #5
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = tail call i32 @atmel_hlcdc_plane_prepare_ahb_routing(ptr noundef %8) #5
  br label %100

100:                                              ; preds = %98, %91, %89
  %101 = phi i32 [ %99, %98 ], [ %96, %91 ], [ -22, %89 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_atomic_begin(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_atomic_flush(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 28
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_pending_vblank_event, ptr %9, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !11

17:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 360, i32 noundef 9, ptr noundef null) #5
  br label %18

18:                                               ; preds = %17, %11
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 18
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %0, i32 0, i32 2
  store ptr %21, ptr %22, align 4
  store ptr null, ptr %20, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_atomic_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !12
  %10 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #5
  %13 = load ptr, ptr %10, align 4
  tail call void @pm_runtime_forbid(ptr noundef %13) #5
  %14 = load ptr, ptr %10, align 4
  %15 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %14) #5
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.atmel_hlcdc, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = tail call i32 @clk_enable(ptr noundef %20) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #5
  br label %27

27:                                               ; preds = %26, %23, %2
  %28 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 32, i32 noundef 1) #5
  %29 = call i32 @regmap_read(ptr noundef %9, i32 noundef 40, ptr noundef nonnull %3) #5
  %30 = icmp eq i32 %29, 0
  %31 = load i32, ptr %3, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %30, i1 %33, i1 false
  br i1 %34, label %35, label %42

35:                                               ; preds = %35, %27
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !14
  %36 = call i32 @regmap_read(ptr noundef %9, i32 noundef 40, ptr noundef nonnull %3) #5
  %37 = icmp eq i32 %36, 0
  %38 = load i32, ptr %3, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %37, i1 %40, i1 false
  br i1 %41, label %35, label %42

42:                                               ; preds = %35, %27
  %43 = call i32 @regmap_write(ptr noundef %9, i32 noundef 32, i32 noundef 2) #5
  %44 = call i32 @regmap_read(ptr noundef %9, i32 noundef 40, ptr noundef nonnull %3) #5
  %45 = icmp eq i32 %44, 0
  %46 = load i32, ptr %3, align 4
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %45, i1 %48, i1 false
  br i1 %49, label %50, label %57

50:                                               ; preds = %50, %42
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !16
  %51 = call i32 @regmap_read(ptr noundef %9, i32 noundef 40, ptr noundef nonnull %3) #5
  %52 = icmp eq i32 %51, 0
  %53 = load i32, ptr %3, align 4
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %50, label %57

57:                                               ; preds = %50, %42
  %58 = call i32 @regmap_write(ptr noundef %9, i32 noundef 32, i32 noundef 4) #5
  %59 = call i32 @regmap_read(ptr noundef %9, i32 noundef 40, ptr noundef nonnull %3) #5
  %60 = icmp eq i32 %59, 0
  %61 = load i32, ptr %3, align 4
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %60, i1 %63, i1 false
  br i1 %64, label %65, label %72

65:                                               ; preds = %65, %57
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !18
  %66 = call i32 @regmap_read(ptr noundef %9, i32 noundef 40, ptr noundef nonnull %3) #5
  %67 = icmp eq i32 %66, 0
  %68 = load i32, ptr %3, align 4
  %69 = and i32 %68, 4
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %67, i1 %70, i1 false
  br i1 %71, label %65, label %72

72:                                               ; preds = %65, %57
  %73 = load ptr, ptr %10, align 4
  %74 = call i32 @__pm_runtime_idle(ptr noundef %73, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_hlcdc_crtc_atomic_disable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.atmel_hlcdc_crtc, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !12
  tail call void @drm_crtc_vblank_off(ptr noundef %0) #5
  %10 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #5
  %13 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 36, i32 noundef 4) #5
  %14 = call i32 @regmap_read(ptr noundef %9, i32 noundef 40, ptr noundef nonnull %3) #5
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %16, 4
  %18 = icmp ne i32 %17, 0
  %19 = select i1 %15, i1 %18, i1 false
  br i1 %19, label %20, label %27

20:                                               ; preds = %20, %2
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !19
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !20
  %21 = call i32 @regmap_read(ptr noundef %9, i32 noundef 40, ptr noundef nonnull %3) #5
  %22 = icmp eq i32 %21, 0
  %23 = load i32, ptr %3, align 4
  %24 = and i32 %23, 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %22, i1 %25, i1 false
  br i1 %26, label %20, label %27

27:                                               ; preds = %20, %2
  %28 = call i32 @regmap_write(ptr noundef %9, i32 noundef 36, i32 noundef 2) #5
  %29 = call i32 @regmap_read(ptr noundef %9, i32 noundef 40, ptr noundef nonnull %3) #5
  %30 = icmp eq i32 %29, 0
  %31 = load i32, ptr %3, align 4
  %32 = and i32 %31, 2
  %33 = icmp ne i32 %32, 0
  %34 = select i1 %30, i1 %33, i1 false
  br i1 %34, label %35, label %42

35:                                               ; preds = %35, %27
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !21
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !22
  %36 = call i32 @regmap_read(ptr noundef %9, i32 noundef 40, ptr noundef nonnull %3) #5
  %37 = icmp eq i32 %36, 0
  %38 = load i32, ptr %3, align 4
  %39 = and i32 %38, 2
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %37, i1 %40, i1 false
  br i1 %41, label %35, label %42

42:                                               ; preds = %35, %27
  %43 = call i32 @regmap_write(ptr noundef %9, i32 noundef 36, i32 noundef 1) #5
  %44 = call i32 @regmap_read(ptr noundef %9, i32 noundef 40, ptr noundef nonnull %3) #5
  %45 = icmp eq i32 %44, 0
  %46 = load i32, ptr %3, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  %49 = select i1 %45, i1 %48, i1 false
  br i1 %49, label %50, label %57

50:                                               ; preds = %50, %42
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !23
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !24
  %51 = call i32 @regmap_read(ptr noundef %9, i32 noundef 40, ptr noundef nonnull %3) #5
  %52 = icmp eq i32 %51, 0
  %53 = load i32, ptr %3, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %50, label %57

57:                                               ; preds = %50, %42
  %58 = load ptr, ptr %5, align 8
  %59 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.atmel_hlcdc, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  call void @clk_disable(ptr noundef %62) #5
  call void @clk_unprepare(ptr noundef %62) #5
  %63 = load ptr, ptr %10, align 4
  %64 = call i32 @pinctrl_pm_select_sleep_state(ptr noundef %63) #5
  %65 = load ptr, ptr %10, align 4
  call void @pm_runtime_allow(ptr noundef %65) #5
  %66 = load ptr, ptr %10, align 4
  %67 = call i32 @__pm_runtime_idle(ptr noundef %66, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_hlcdc_dc_mode_valid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_hlcdc_plane_prepare_disc_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_hlcdc_plane_prepare_ahb_routing(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_hlcdc_encoder_get_bus_fmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{i32 0, i32 33}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"auto-init"}
!13 = !{i64 2155222055}
!14 = !{i64 2155221897}
!15 = !{i64 2155222478}
!16 = !{i64 2155222320}
!17 = !{i64 2155222901}
!18 = !{i64 2155222743}
!19 = !{i64 2155220786}
!20 = !{i64 2155220628}
!21 = !{i64 2155221209}
!22 = !{i64 2155221051}
!23 = !{i64 2155221632}
!24 = !{i64 2155221474}
