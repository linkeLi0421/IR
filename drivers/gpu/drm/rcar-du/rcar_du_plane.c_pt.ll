; ModuleID = '/llk/IR/drivers/gpu/drm/rcar-du/rcar_du_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_du_plane.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.73 = type { i32, ptr }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.rcar_du_plane_state = type { %struct.drm_plane_state, ptr, i32, i32, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.rcar_du_plane = type { %struct.drm_plane, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.rcar_du_group = type { ptr, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, [9 x %struct.rcar_du_plane], i8 }
%struct.rcar_du_format_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rcar_du_device = type { ptr, ptr, ptr, %struct.drm_device, [4 x %struct.rcar_du_crtc], i32, [2 x %struct.rcar_du_group], [4 x ptr], [4 x %struct.rcar_du_vsp], [2 x ptr], %struct.anon.76, i32, i32, i32 }
%struct.rcar_du_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i32, i32, i8, i32, i8, ptr, %struct.wait_queue_head, %struct.spinlock, %struct.wait_queue_head, i32, ptr, ptr, ptr, i32, ptr, i32, %struct.drm_writeback_connector }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.72 }
%union.anon.72 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.rcar_du_vsp = type { i32, ptr, ptr, ptr, i32 }
%struct.anon.76 = type { ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@rcar_du_plane_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @rcar_du_plane_reset, ptr null, ptr @rcar_du_plane_atomic_duplicate_state, ptr @rcar_du_plane_atomic_destroy_state, ptr @rcar_du_plane_atomic_set_property, ptr @rcar_du_plane_atomic_get_property, ptr null, ptr null, ptr null, ptr null }, align 4
@formats = internal constant [10 x i32] [i32 909199186, i32 892424769, i32 892424792, i32 875713112, i32 875713089, i32 1498831189, i32 1448695129, i32 842094158, i32 825382478, i32 909203022], align 4
@rcar_du_plane_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @rcar_du_plane_atomic_check, ptr @rcar_du_plane_atomic_update, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/rcar-du/rcar_du_plane.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_du_atomic_check_planes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i32], align 8
  %5 = getelementptr i8, ptr %0, i32 -12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %230, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  br label %13

13:                                               ; preds = %76, %11
  %14 = phi i1 [ false, %11 ], [ %78, %76 ]
  %15 = phi i32 [ 0, %11 ], [ %79, %76 ]
  %16 = phi i32 [ 0, %11 ], [ %77, %76 ]
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr %struct.__drm_planes_state, ptr %17, i32 %15
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %76, label %21

21:                                               ; preds = %13
  %22 = getelementptr %struct.__drm_planes_state, ptr %17, i32 %15, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr %struct.__drm_planes_state, ptr %17, i32 %15, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.rcar_du_plane, ptr %19, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.rcar_du_group, ptr %31, i32 0, i32 11
  %33 = ptrtoint ptr %19 to i32
  %34 = ptrtoint ptr %32 to i32
  %35 = sub i32 %33, %34
  %36 = getelementptr inbounds %struct.rcar_du_group, ptr %31, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  br label %65

38:                                               ; preds = %21
  %39 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %23, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rcar_du_format_info, ptr %40, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.rcar_du_format_info, ptr %27, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %23, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %25, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %76, label %54

54:                                               ; preds = %48, %42, %38
  %55 = getelementptr inbounds %struct.rcar_du_plane, ptr %19, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.rcar_du_group, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = shl nuw i32 1, %58
  %60 = or i32 %59, %16
  %61 = getelementptr inbounds %struct.rcar_du_group, ptr %56, i32 0, i32 11
  %62 = ptrtoint ptr %19 to i32
  %63 = ptrtoint ptr %61 to i32
  %64 = sub i32 %62, %63
  br label %65

65:                                               ; preds = %54, %29
  %66 = phi i32 [ %58, %54 ], [ %37, %29 ]
  %67 = phi i32 [ %64, %54 ], [ %35, %29 ]
  %68 = phi i32 [ %60, %54 ], [ %16, %29 ]
  %69 = phi i1 [ true, %54 ], [ %14, %29 ]
  %70 = sdiv exact i32 %67, 464
  %71 = shl nuw i32 1, %70
  %72 = getelementptr [2 x i32], ptr %3, i32 0, i32 %66
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %71, %73
  store i32 %74, ptr %72, align 4
  %75 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %25, i32 0, i32 2
  store i32 -1, ptr %75, align 4
  br label %76

76:                                               ; preds = %65, %48, %13
  %77 = phi i32 [ %16, %13 ], [ %16, %48 ], [ %68, %65 ]
  %78 = phi i1 [ %14, %13 ], [ %14, %48 ], [ %69, %65 ]
  %79 = add nuw i32 %15, 1
  %80 = load ptr, ptr %6, align 4
  %81 = getelementptr inbounds %struct.drm_device, ptr %80, i32 0, i32 30, i32 17
  %82 = load i32, ptr %81, align 4
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %13, label %84

84:                                               ; preds = %76
  br i1 %78, label %85, label %230

85:                                               ; preds = %84
  %86 = icmp eq i32 %77, 0
  br i1 %86, label %89, label %96

87:                                               ; preds = %141
  %88 = load ptr, ptr %6, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi ptr [ %88, %87 ], [ %80, %85 ]
  %91 = getelementptr inbounds %struct.drm_device, ptr %90, i32 0, i32 30, i32 17
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %230, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  br label %150

96:                                               ; preds = %141, %85
  %97 = phi i32 [ %148, %141 ], [ %77, %85 ]
  %98 = tail call i32 @llvm.cttz.i32(i32 %97, i1 true), !range !8
  %99 = getelementptr %struct.rcar_du_device, ptr %5, i32 0, i32 6, i32 %98, i32 10
  %100 = load i32, ptr %99, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %141, label %102

102:                                              ; preds = %96
  %103 = getelementptr [2 x i32], ptr %3, i32 0, i32 %98
  br label %104

104:                                              ; preds = %136, %102
  %105 = phi i32 [ 0, %102 ], [ %137, %136 ]
  %106 = phi i32 [ 0, %102 ], [ %138, %136 ]
  %107 = getelementptr %struct.rcar_du_device, ptr %5, i32 0, i32 6, i32 %98, i32 11, i32 %106
  %108 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %1, ptr noundef %107) #7
  %109 = icmp ugt ptr %108, inttoptr (i32 -4096 to ptr)
  br i1 %109, label %134, label %110

110:                                              ; preds = %104
  %111 = load i32, ptr %103, align 4
  %112 = shl nuw i32 1, %106
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %108, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %131, label %119

119:                                              ; preds = %115
  %120 = shl nuw i32 1, %117
  %121 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %108, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.rcar_du_format_info, ptr %122, i32 0, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 2
  %126 = add nuw i32 %117, 1
  %127 = and i32 %126, 7
  %128 = shl nuw nsw i32 1, %127
  %129 = select i1 %125, i32 %128, i32 0
  %130 = or i32 %129, %120
  br label %131

131:                                              ; preds = %119, %115
  %132 = phi i32 [ %130, %119 ], [ 0, %115 ]
  %133 = or i32 %132, %105
  br label %136

134:                                              ; preds = %104
  %135 = ptrtoint ptr %108 to i32
  br label %230

136:                                              ; preds = %131, %110
  %137 = phi i32 [ %105, %110 ], [ %133, %131 ]
  %138 = add nuw i32 %106, 1
  %139 = load i32, ptr %99, align 8
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %104, label %141

141:                                              ; preds = %136, %96
  %142 = phi i32 [ 0, %96 ], [ %137, %136 ]
  %143 = and i32 %142, 255
  %144 = xor i32 %143, 255
  %145 = getelementptr [2 x i32], ptr %4, i32 0, i32 %98
  store i32 %144, ptr %145, align 4
  %146 = shl nuw i32 1, %98
  %147 = xor i32 %146, -1
  %148 = and i32 %97, %147
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %87, label %96

150:                                              ; preds = %224, %94
  %151 = phi ptr [ %90, %94 ], [ %225, %224 ]
  %152 = phi i32 [ 0, %94 ], [ %226, %224 ]
  %153 = load ptr, ptr %95, align 4
  %154 = getelementptr %struct.__drm_planes_state, ptr %153, i32 %152
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %224, label %157

157:                                              ; preds = %150
  %158 = getelementptr %struct.__drm_planes_state, ptr %153, i32 %152, i32 2
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr %struct.__drm_planes_state, ptr %153, i32 %152, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %161, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %224, label %165

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %159, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %181, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.rcar_du_format_info, ptr %167, i32 0, i32 3
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr inbounds %struct.rcar_du_format_info, ptr %163, i32 0, i32 3
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %159, i32 0, i32 3
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %161, i32 0, i32 3
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %177, %179
  br i1 %180, label %224, label %181

181:                                              ; preds = %175, %169, %165
  %182 = getelementptr inbounds %struct.drm_plane_state, ptr %161, i32 0, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.rcar_du_crtc, ptr %183, i32 0, i32 5
  %185 = load i32, ptr %184, align 8
  %186 = and i32 %185, 1
  %187 = getelementptr inbounds %struct.rcar_du_plane, ptr %155, i32 0, i32 1
  %188 = load ptr, ptr %187, align 8
  %189 = getelementptr inbounds %struct.rcar_du_group, ptr %188, i32 0, i32 9
  %190 = load i32, ptr %189, align 4
  %191 = add nsw i32 %186, -1
  %192 = xor i32 %190, %191
  %193 = getelementptr inbounds %struct.rcar_du_plane, ptr %155, i32 0, i32 1
  %194 = getelementptr inbounds %struct.rcar_du_group, ptr %188, i32 0, i32 2
  %195 = load i32, ptr %194, align 8
  %196 = getelementptr [2 x i32], ptr %4, i32 0, i32 %195
  %197 = load i32, ptr %196, align 4
  %198 = and i32 %197, %192
  %199 = tail call fastcc i32 @rcar_du_plane_hwalloc(ptr noundef nonnull %155, ptr noundef %161, i32 noundef %198)
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %181
  %202 = tail call fastcc i32 @rcar_du_plane_hwalloc(ptr noundef nonnull %155, ptr noundef %161, i32 noundef %197)
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %230, label %204

204:                                              ; preds = %201, %181
  %205 = phi i32 [ %202, %201 ], [ %199, %181 ]
  %206 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %161, i32 0, i32 2
  store i32 %205, ptr %206, align 4
  %207 = shl nuw i32 1, %205
  %208 = getelementptr inbounds %struct.rcar_du_format_info, ptr %163, i32 0, i32 3
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 2
  %211 = add nuw i32 %205, 1
  %212 = and i32 %211, 7
  %213 = shl nuw nsw i32 1, %212
  %214 = select i1 %210, i32 %213, i32 0
  %215 = or i32 %214, %207
  %216 = xor i32 %215, -1
  %217 = load ptr, ptr %193, align 8
  %218 = getelementptr inbounds %struct.rcar_du_group, ptr %217, i32 0, i32 2
  %219 = load i32, ptr %218, align 8
  %220 = getelementptr [2 x i32], ptr %4, i32 0, i32 %219
  %221 = load i32, ptr %220, align 4
  %222 = and i32 %221, %216
  store i32 %222, ptr %220, align 4
  %223 = load ptr, ptr %6, align 4
  br label %224

224:                                              ; preds = %204, %175, %157, %150
  %225 = phi ptr [ %151, %157 ], [ %151, %175 ], [ %223, %204 ], [ %151, %150 ]
  %226 = add nuw i32 %152, 1
  %227 = getelementptr inbounds %struct.drm_device, ptr %225, i32 0, i32 30, i32 17
  %228 = load i32, ptr %227, align 4
  %229 = icmp ult i32 %226, %228
  br i1 %229, label %150, label %230

230:                                              ; preds = %224, %201, %134, %89, %84, %2
  %231 = phi i32 [ 0, %84 ], [ %135, %134 ], [ 0, %89 ], [ 0, %2 ], [ 0, %224 ], [ %202, %201 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %231
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @rcar_du_plane_hwalloc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %6 [
    i32 1, label %14
    i32 2, label %20
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rcar_du_format_info, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  %12 = and i32 %2, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %33

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.rcar_du_plane, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.rcar_du_group, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %91

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.rcar_du_plane, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.rcar_du_group, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %20, %14
  %28 = phi i32 [ 0, %14 ], [ %26, %20 ]
  %29 = shl nuw nsw i32 1, %28
  %30 = and i32 %29, %2
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 -16, i32 %28
  br label %91

33:                                               ; preds = %6
  %34 = and i32 %2, 1
  %35 = icmp ne i32 %34, 0
  %36 = or i1 %11, %35
  br i1 %36, label %91, label %42

37:                                               ; preds = %6
  %38 = and i32 %2, 64
  %39 = icmp eq i32 %38, 0
  %40 = xor i1 %11, true
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %45, label %91

42:                                               ; preds = %33
  %43 = and i32 %2, 64
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %91

45:                                               ; preds = %42, %37
  %46 = phi i1 [ true, %42 ], [ %39, %37 ]
  %47 = and i32 %2, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = xor i1 %46, true
  %51 = or i1 %11, %50
  br i1 %51, label %91, label %57

52:                                               ; preds = %45
  %53 = and i32 %2, 16
  %54 = icmp eq i32 %53, 0
  %55 = xor i1 %11, true
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %60, label %91

57:                                               ; preds = %49
  %58 = and i32 %2, 16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %57, %52
  %61 = phi i1 [ true, %57 ], [ %54, %52 ]
  %62 = and i32 %2, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = xor i1 %61, true
  %66 = or i1 %11, %65
  br i1 %66, label %91, label %72

67:                                               ; preds = %60
  %68 = and i32 %2, 4
  %69 = icmp eq i32 %68, 0
  %70 = xor i1 %11, true
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %75, label %91

72:                                               ; preds = %64
  %73 = and i32 %2, 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %72, %67
  %76 = phi i1 [ true, %72 ], [ %69, %67 ]
  %77 = and i32 %2, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = xor i1 %76, true
  %81 = or i1 %11, %80
  br i1 %81, label %91, label %87

82:                                               ; preds = %75
  %83 = and i32 %2, 1
  %84 = icmp eq i32 %83, 0
  %85 = xor i1 %11, true
  %86 = select i1 %84, i1 true, i1 %85
  br i1 %86, label %90, label %91

87:                                               ; preds = %79
  %88 = and i32 %2, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87, %82
  br label %91

91:                                               ; preds = %90, %87, %82, %79, %72, %67, %64, %57, %52, %49, %42, %37, %33, %27, %14
  %92 = phi i32 [ %32, %27 ], [ -22, %14 ], [ -16, %90 ], [ 1, %79 ], [ 3, %64 ], [ 5, %49 ], [ 7, %33 ], [ 6, %42 ], [ 4, %57 ], [ 2, %72 ], [ 0, %87 ], [ 6, %37 ], [ 4, %52 ], [ 2, %67 ], [ 0, %82 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__rcar_du_plane_setup(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i32], align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  tail call fastcc void @rcar_du_plane_setup_format(ptr noundef %0, i32 noundef %6, ptr noundef %1)
  %7 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rcar_du_format_info, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, ptr %5, align 4
  %14 = add i32 %13, 1
  %15 = srem i32 %14, 8
  tail call fastcc void @rcar_du_plane_setup_format(ptr noundef %0, i32 noundef %15, ptr noundef %1)
  br label %16

16:                                               ; preds = %12, %2
  %17 = getelementptr inbounds %struct.rcar_du_device, ptr %4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %21, label %206

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20
  %23 = load i32, ptr %22, align 4
  %24 = ashr i32 %23, 16
  %25 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = ashr i32 %26, 16
  %28 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !9
  %29 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.drm_crtc, ptr %30, i32 0, i32 22
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.drm_crtc_state, ptr %32, i32 0, i32 7, i32 11
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %1, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %21
  %41 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr inbounds %struct.rcar_du_format_info, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 2
  %47 = getelementptr inbounds %struct.drm_framebuffer, ptr %42, i32 0, i32 6
  %48 = load i32, ptr %47, align 8
  br i1 %46, label %55, label %49

49:                                               ; preds = %40
  %50 = shl i32 %48, 3
  %51 = getelementptr inbounds %struct.rcar_du_format_info, ptr %43, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = udiv i32 %50, %52
  %54 = icmp eq i32 %45, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %49, %40
  %56 = phi i32 [ %53, %49 ], [ %48, %40 ]
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i32 [ %66, %57 ], [ 0, %55 ]
  %59 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %42, i32 noundef %58) #7
  %60 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %59, i32 0, i32 1
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr %struct.drm_framebuffer, ptr %42, i32 0, i32 7, i32 %58
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, %61
  %65 = getelementptr [2 x i32], ptr %3, i32 0, i32 %58
  store i32 %64, ptr %65, align 4
  %66 = add nuw i32 %58, 1
  %67 = load ptr, ptr %7, align 4
  %68 = getelementptr inbounds %struct.rcar_du_format_info, ptr %67, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %57, label %77

71:                                               ; preds = %21
  %72 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = sub i32 %73, %23
  %75 = ashr i32 %74, 16
  store i32 0, ptr %3, align 8
  %76 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  store i32 0, ptr %76, align 4
  br label %77

77:                                               ; preds = %71, %57, %49
  %78 = phi i32 [ %75, %71 ], [ %53, %49 ], [ %56, %57 ]
  br i1 %36, label %102, label %79

79:                                               ; preds = %77
  %80 = load ptr, ptr %7, align 4
  %81 = getelementptr inbounds %struct.rcar_du_format_info, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 32
  br i1 %83, label %84, label %124

84:                                               ; preds = %79
  %85 = shl i32 %78, 1
  %86 = load ptr, ptr %0, align 8
  %87 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %28, 8
  %90 = add i32 %89, 260
  %91 = add i32 %90, %88
  %92 = getelementptr inbounds %struct.rcar_du_device, ptr %86, i32 0, i32 2
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr i8, ptr %93, i32 %91
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %85) #7, !srcloc !11
  %95 = load ptr, ptr %0, align 8
  %96 = load i32, ptr %87, align 4
  %97 = add i32 %89, 304
  %98 = add i32 %97, %96
  %99 = getelementptr inbounds %struct.rcar_du_device, ptr %95, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr i8, ptr %100, i32 %98
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %24) #7, !srcloc !11
  br label %141

102:                                              ; preds = %77
  %103 = load ptr, ptr %0, align 8
  %104 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = shl i32 %28, 8
  %107 = add i32 %106, 260
  %108 = add i32 %107, %105
  %109 = getelementptr inbounds %struct.rcar_du_device, ptr %103, i32 0, i32 2
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr i8, ptr %110, i32 %108
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %78) #7, !srcloc !11
  %112 = load ptr, ptr %0, align 8
  %113 = load i32, ptr %104, align 4
  %114 = add i32 %106, 304
  %115 = add i32 %114, %113
  %116 = getelementptr inbounds %struct.rcar_du_device, ptr %112, i32 0, i32 2
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr i8, ptr %117, i32 %115
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %24) #7, !srcloc !11
  %119 = load ptr, ptr %7, align 4
  %120 = getelementptr inbounds %struct.rcar_du_format_info, ptr %119, i32 0, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 32
  %123 = select i1 %122, i32 2, i32 1
  br label %141

124:                                              ; preds = %79
  %125 = load ptr, ptr %0, align 8
  %126 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = shl i32 %28, 8
  %129 = add i32 %128, 260
  %130 = add i32 %129, %127
  %131 = getelementptr inbounds %struct.rcar_du_device, ptr %125, i32 0, i32 2
  %132 = load ptr, ptr %131, align 8
  %133 = getelementptr i8, ptr %132, i32 %130
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %78) #7, !srcloc !11
  %134 = load ptr, ptr %0, align 8
  %135 = load i32, ptr %126, align 4
  %136 = add i32 %128, 304
  %137 = add i32 %136, %135
  %138 = getelementptr inbounds %struct.rcar_du_device, ptr %134, i32 0, i32 2
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr i8, ptr %139, i32 %137
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %24) #7, !srcloc !11
  br label %141

141:                                              ; preds = %124, %102, %84
  %142 = phi i32 [ %89, %84 ], [ %128, %124 ], [ %106, %102 ]
  %143 = phi i32 [ 1, %84 ], [ 1, %124 ], [ %123, %102 ]
  %144 = mul nsw i32 %143, %27
  %145 = load ptr, ptr %0, align 8
  %146 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = add i32 %142, 308
  %149 = add i32 %148, %147
  %150 = getelementptr inbounds %struct.rcar_du_device, ptr %145, i32 0, i32 2
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr i8, ptr %151, i32 %149
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %144) #7, !srcloc !11
  %153 = load i32, ptr %3, align 8
  %154 = load ptr, ptr %0, align 8
  %155 = load i32, ptr %146, align 4
  %156 = add i32 %142, 288
  %157 = add i32 %156, %155
  %158 = getelementptr inbounds %struct.rcar_du_device, ptr %154, i32 0, i32 2
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr i8, ptr %159, i32 %157
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %153) #7, !srcloc !11
  %161 = load ptr, ptr %7, align 4
  %162 = getelementptr inbounds %struct.rcar_du_format_info, ptr %161, i32 0, i32 3
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %205

165:                                              ; preds = %141
  %166 = load ptr, ptr %0, align 8
  %167 = load i32, ptr %146, align 4
  %168 = add i32 %142, 256
  %169 = and i32 %168, 1792
  %170 = add nuw nsw i32 %169, 260
  %171 = add i32 %170, %167
  %172 = getelementptr inbounds %struct.rcar_du_device, ptr %166, i32 0, i32 2
  %173 = load ptr, ptr %172, align 8
  %174 = getelementptr i8, ptr %173, i32 %171
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %78) #7, !srcloc !11
  %175 = load ptr, ptr %0, align 8
  %176 = load i32, ptr %146, align 4
  %177 = add nuw nsw i32 %169, 304
  %178 = add i32 %177, %176
  %179 = getelementptr inbounds %struct.rcar_du_device, ptr %175, i32 0, i32 2
  %180 = load ptr, ptr %179, align 8
  %181 = getelementptr i8, ptr %180, i32 %178
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %24) #7, !srcloc !11
  %182 = load ptr, ptr %7, align 4
  %183 = getelementptr inbounds %struct.rcar_du_format_info, ptr %182, i32 0, i32 2
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 16
  %186 = select i1 %185, i32 2, i32 1
  %187 = mul nsw i32 %186, %27
  %188 = lshr i32 %187, 1
  %189 = load ptr, ptr %0, align 8
  %190 = load i32, ptr %146, align 4
  %191 = add nuw nsw i32 %169, 308
  %192 = add i32 %191, %190
  %193 = getelementptr inbounds %struct.rcar_du_device, ptr %189, i32 0, i32 2
  %194 = load ptr, ptr %193, align 8
  %195 = getelementptr i8, ptr %194, i32 %192
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %188) #7, !srcloc !11
  %196 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %197 = load i32, ptr %196, align 4
  %198 = load ptr, ptr %0, align 8
  %199 = load i32, ptr %146, align 4
  %200 = add nuw nsw i32 %169, 288
  %201 = add i32 %200, %199
  %202 = getelementptr inbounds %struct.rcar_du_device, ptr %198, i32 0, i32 2
  %203 = load ptr, ptr %202, align 8
  %204 = getelementptr i8, ptr %203, i32 %201
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %197) #7, !srcloc !11
  br label %205

205:                                              ; preds = %165, %141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %206

206:                                              ; preds = %205, %16
  %207 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %1, i32 0, i32 3
  %208 = load i32, ptr %207, align 4
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %210, label %220

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 2
  %212 = load i32, ptr %211, align 8
  %213 = icmp eq i32 %212, 0
  %214 = select i1 %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.rcar_du_device, ptr %4, i32 0, i32 13
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, %214
  br i1 %217, label %220, label %218

218:                                              ; preds = %210
  store i32 %214, ptr %215, align 4
  %219 = tail call i32 @rcar_du_set_dpad0_vsp1_routing(ptr noundef %4) #7
  br label %220

220:                                              ; preds = %218, %210, %206
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcar_du_plane_setup_format(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_plane_state, ptr %2, i32 0, i32 21
  %6 = getelementptr inbounds %struct.rcar_du_device, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 3
  %10 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  br i1 %9, label %12, label %151

12:                                               ; preds = %3
  %13 = load i32, ptr %11, align 4
  %14 = icmp eq i32 %13, 892424792
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %1, 8
  %19 = add i32 %18, 264
  %20 = add i32 %19, %17
  %21 = getelementptr inbounds %struct.rcar_du_device, ptr %4, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr i8, ptr %22, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 4096) #7, !srcloc !11
  br label %38

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.drm_plane_state, ptr %2, i32 0, i32 12
  %26 = load i16, ptr %25, align 4
  %27 = lshr i16 %26, 8
  %28 = or i16 %27, 8192
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %1, 8
  %33 = add i32 %32, 264
  %34 = add i32 %33, %31
  %35 = getelementptr inbounds %struct.rcar_du_device, ptr %4, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr i8, ptr %36, i32 %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %29) #7, !srcloc !11
  br label %38

38:                                               ; preds = %24, %15
  %39 = phi i32 [ %32, %24 ], [ %18, %15 ]
  %40 = load ptr, ptr %10, align 4
  %41 = getelementptr inbounds %struct.rcar_du_format_info, ptr %40, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %2, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = lshr i32 %44, 10
  %46 = and i32 %45, 16384
  %47 = xor i32 %46, 16384
  %48 = or i32 %47, %42
  %49 = load i32, ptr %40, align 4
  %50 = icmp eq i32 %49, 1448695129
  %51 = or i32 %48, 1048576
  %52 = select i1 %50, i32 %51, i32 %48
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %39, 256
  %57 = add i32 %56, %55
  %58 = getelementptr inbounds %struct.rcar_du_device, ptr %53, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr i8, ptr %59, i32 %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %52) #7, !srcloc !11
  %61 = load ptr, ptr %10, align 4
  %62 = load i32, ptr %61, align 4
  switch i32 %62, label %108 [
    i32 909199186, label %63
    i32 892424769, label %80
    i32 892424792, label %80
    i32 875713112, label %97
    i32 875713089, label %97
  ]

63:                                               ; preds = %38
  %64 = load i32, ptr %43, align 4
  %65 = lshr i32 %64, 8
  %66 = and i32 %65, 63488
  %67 = lshr i32 %64, 5
  %68 = and i32 %67, 2016
  %69 = or i32 %66, %68
  %70 = lshr i32 %64, 3
  %71 = and i32 %70, 31
  %72 = or i32 %69, %71
  %73 = load ptr, ptr %0, align 8
  %74 = load i32, ptr %54, align 4
  %75 = add i32 %39, 328
  %76 = add i32 %75, %74
  %77 = getelementptr inbounds %struct.rcar_du_device, ptr %73, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr i8, ptr %78, i32 %76
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %72) #7, !srcloc !11
  br label %108

80:                                               ; preds = %38, %38
  %81 = load i32, ptr %43, align 4
  %82 = lshr i32 %81, 9
  %83 = and i32 %82, 31744
  %84 = lshr i32 %81, 6
  %85 = and i32 %84, 992
  %86 = or i32 %83, %85
  %87 = lshr i32 %81, 3
  %88 = and i32 %87, 31
  %89 = or i32 %86, %88
  %90 = load ptr, ptr %0, align 8
  %91 = load i32, ptr %54, align 4
  %92 = add i32 %39, 328
  %93 = add i32 %92, %91
  %94 = getelementptr inbounds %struct.rcar_du_device, ptr %90, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr i8, ptr %95, i32 %93
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %89) #7, !srcloc !11
  br label %108

97:                                               ; preds = %38, %38
  %98 = load i32, ptr %43, align 4
  %99 = and i32 %98, 16777215
  %100 = or i32 %99, 1711276032
  %101 = load ptr, ptr %0, align 8
  %102 = load i32, ptr %54, align 4
  %103 = add i32 %39, 332
  %104 = add i32 %103, %102
  %105 = getelementptr inbounds %struct.rcar_du_device, ptr %101, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr i8, ptr %106, i32 %104
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %100) #7, !srcloc !11
  br label %108

108:                                              ; preds = %97, %80, %63, %38
  %109 = load ptr, ptr %10, align 4
  %110 = getelementptr inbounds %struct.rcar_du_format_info, ptr %109, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %2, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, %1
  br i1 %116, label %126, label %117

117:                                              ; preds = %113
  %118 = load i32, ptr %109, align 4
  %119 = icmp eq i32 %118, 842094158
  %120 = icmp eq i32 %118, 825382478
  %121 = or i1 %119, %120
  %122 = select i1 %121, i32 2004221968, i32 2004221952
  %123 = or i32 %122, 32
  %124 = select i1 %120, i32 %123, i32 %122
  %125 = or i32 %124, 2
  br label %126

126:                                              ; preds = %117, %113, %108
  %127 = phi i32 [ %125, %117 ], [ 2004221952, %108 ], [ 2004221953, %113 ]
  %128 = load ptr, ptr %0, align 8
  %129 = load i32, ptr %54, align 4
  %130 = shl i32 %1, 8
  %131 = add i32 %130, 392
  %132 = add i32 %131, %129
  %133 = getelementptr inbounds %struct.rcar_du_device, ptr %128, i32 0, i32 2
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr i8, ptr %134, i32 %132
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %127) #7, !srcloc !11
  %136 = load ptr, ptr %10, align 4
  %137 = getelementptr inbounds %struct.rcar_du_format_info, ptr %136, i32 0, i32 6
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %2, i32 0, i32 3
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, i32 2003173376, i32 2003181568
  %143 = or i32 %142, %138
  %144 = load ptr, ptr %0, align 8
  %145 = load i32, ptr %54, align 4
  %146 = add i32 %130, 400
  %147 = add i32 %146, %145
  %148 = getelementptr inbounds %struct.rcar_du_device, ptr %144, i32 0, i32 2
  %149 = load ptr, ptr %148, align 8
  %150 = getelementptr i8, ptr %149, i32 %147
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %143) #7, !srcloc !11
  br label %174

151:                                              ; preds = %3
  %152 = getelementptr inbounds %struct.rcar_du_format_info, ptr %11, i32 0, i32 5
  %153 = load i32, ptr %152, align 4
  %154 = or i32 %153, 16384
  %155 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = shl i32 %1, 8
  %158 = add i32 %157, 256
  %159 = add i32 %158, %156
  %160 = getelementptr inbounds %struct.rcar_du_device, ptr %4, i32 0, i32 2
  %161 = load ptr, ptr %160, align 8
  %162 = getelementptr i8, ptr %161, i32 %159
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %154) #7, !srcloc !11
  %163 = load ptr, ptr %10, align 4
  %164 = getelementptr inbounds %struct.rcar_du_format_info, ptr %163, i32 0, i32 6
  %165 = load i32, ptr %164, align 4
  %166 = or i32 %165, 2003173376
  %167 = load ptr, ptr %0, align 8
  %168 = load i32, ptr %155, align 4
  %169 = add i32 %157, 400
  %170 = add i32 %169, %168
  %171 = getelementptr inbounds %struct.rcar_du_device, ptr %167, i32 0, i32 2
  %172 = load ptr, ptr %171, align 8
  %173 = getelementptr i8, ptr %172, i32 %170
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %166) #7, !srcloc !11
  br label %174

174:                                              ; preds = %151, %126
  %175 = phi i32 [ %157, %151 ], [ %130, %126 ]
  %176 = getelementptr inbounds %struct.drm_plane_state, ptr %2, i32 0, i32 21, i32 2
  %177 = load i32, ptr %176, align 4
  %178 = load i32, ptr %5, align 4
  %179 = sub i32 %177, %178
  %180 = load ptr, ptr %0, align 8
  %181 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %182 = load i32, ptr %181, align 4
  %183 = add i32 %175, 272
  %184 = add i32 %183, %182
  %185 = getelementptr inbounds %struct.rcar_du_device, ptr %180, i32 0, i32 2
  %186 = load ptr, ptr %185, align 8
  %187 = getelementptr i8, ptr %186, i32 %184
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %179) #7, !srcloc !11
  %188 = getelementptr inbounds %struct.drm_plane_state, ptr %2, i32 0, i32 21, i32 3
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr inbounds %struct.drm_plane_state, ptr %2, i32 0, i32 21, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = sub i32 %189, %191
  %193 = load ptr, ptr %0, align 8
  %194 = load i32, ptr %181, align 4
  %195 = add i32 %175, 276
  %196 = add i32 %195, %194
  %197 = getelementptr inbounds %struct.rcar_du_device, ptr %193, i32 0, i32 2
  %198 = load ptr, ptr %197, align 8
  %199 = getelementptr i8, ptr %198, i32 %196
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %192) #7, !srcloc !11
  %200 = load i32, ptr %5, align 4
  %201 = load ptr, ptr %0, align 8
  %202 = load i32, ptr %181, align 4
  %203 = add i32 %175, 280
  %204 = add i32 %203, %202
  %205 = getelementptr inbounds %struct.rcar_du_device, ptr %201, i32 0, i32 2
  %206 = load ptr, ptr %205, align 8
  %207 = getelementptr i8, ptr %206, i32 %204
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 %200) #7, !srcloc !11
  %208 = load i32, ptr %190, align 4
  %209 = load ptr, ptr %0, align 8
  %210 = load i32, ptr %181, align 4
  %211 = add i32 %175, 284
  %212 = add i32 %211, %210
  %213 = getelementptr inbounds %struct.rcar_du_device, ptr %209, i32 0, i32 2
  %214 = load ptr, ptr %213, align 8
  %215 = getelementptr i8, ptr %214, i32 %212
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 %208) #7, !srcloc !11
  %216 = load ptr, ptr %6, align 4
  %217 = load i32, ptr %216, align 4
  %218 = icmp ult i32 %217, 3
  br i1 %218, label %219, label %248

219:                                              ; preds = %174
  %220 = load ptr, ptr %0, align 8
  %221 = load i32, ptr %181, align 4
  %222 = add i32 %175, 312
  %223 = add i32 %222, %221
  %224 = getelementptr inbounds %struct.rcar_du_device, ptr %220, i32 0, i32 2
  %225 = load ptr, ptr %224, align 8
  %226 = getelementptr i8, ptr %225, i32 %223
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %226, i32 0) #7, !srcloc !11
  %227 = load ptr, ptr %0, align 8
  %228 = load i32, ptr %181, align 4
  %229 = add i32 %175, 316
  %230 = add i32 %229, %228
  %231 = getelementptr inbounds %struct.rcar_du_device, ptr %227, i32 0, i32 2
  %232 = load ptr, ptr %231, align 8
  %233 = getelementptr i8, ptr %232, i32 %230
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 4095) #7, !srcloc !11
  %234 = load ptr, ptr %0, align 8
  %235 = load i32, ptr %181, align 4
  %236 = add i32 %175, 320
  %237 = add i32 %236, %235
  %238 = getelementptr inbounds %struct.rcar_du_device, ptr %234, i32 0, i32 2
  %239 = load ptr, ptr %238, align 8
  %240 = getelementptr i8, ptr %239, i32 %237
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 0) #7, !srcloc !11
  %241 = load ptr, ptr %0, align 8
  %242 = load i32, ptr %181, align 4
  %243 = add i32 %175, 336
  %244 = add i32 %243, %242
  %245 = getelementptr inbounds %struct.rcar_du_device, ptr %241, i32 0, i32 2
  %246 = load ptr, ptr %245, align 8
  %247 = getelementptr i8, ptr %246, i32 %244
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 0) #7, !srcloc !11
  br label %248

248:                                              ; preds = %219, %174
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_set_dpad0_vsp1_routing(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__rcar_du_plane_atomic_check(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 22
  store i8 0, ptr %8, align 4
  store ptr null, ptr %2, align 4
  br label %33

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 25
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %11, ptr noundef nonnull %5) #7
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = ptrtoint ptr %12 to i32
  br label %33

16:                                               ; preds = %9
  %17 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %1, ptr noundef %12, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 22
  %21 = load i8, ptr %20, align 4, !range !12
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store ptr null, ptr %2, align 4
  br label %33

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_framebuffer, ptr %26, i32 0, i32 4
  %28 = load ptr, ptr %27, align 8
  %29 = load i32, ptr %28, align 4
  %30 = tail call ptr @rcar_du_format_info(i32 noundef %29) #7
  store ptr %30, ptr %2, align 4
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, i32 -22, i32 0
  br label %33

33:                                               ; preds = %24, %23, %16, %14, %7
  %34 = phi i32 [ %15, %14 ], [ 0, %23 ], [ 0, %7 ], [ %17, %16 ], [ %32, %24 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rcar_du_format_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_du_planes_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 7
  %6 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 10
  store i32 %5, ptr %6, align 8
  %7 = getelementptr inbounds %struct.rcar_du_device, ptr %2, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = shl nsw i32 -1, %8
  %10 = xor i32 %9, -1
  %11 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = shl i32 %12, 1
  %14 = shl i32 3, %13
  %15 = and i32 %14, %10
  %16 = icmp eq i32 %5, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.rcar_du_device, ptr %2, i32 0, i32 3
  %19 = getelementptr inbounds %struct.rcar_du_device, ptr %2, i32 0, i32 10
  br label %20

20:                                               ; preds = %42, %17
  %21 = phi i32 [ %4, %17 ], [ %43, %42 ]
  %22 = phi i32 [ 0, %17 ], [ %39, %42 ]
  %23 = icmp ult i32 %22, %21
  %24 = zext i1 %23 to i32
  %25 = getelementptr %struct.rcar_du_group, ptr %0, i32 0, i32 11, i32 %22
  %26 = getelementptr %struct.rcar_du_group, ptr %0, i32 0, i32 11, i32 %22, i32 1
  store ptr %0, ptr %26, align 8
  %27 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %18, ptr noundef %25, i32 noundef %15, ptr noundef nonnull @rcar_du_plane_funcs, ptr noundef nonnull @formats, i32 noundef 10, ptr noundef null, i32 noundef %24, ptr noundef null) #7
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.drm_plane, ptr %25, i32 0, i32 18
  store ptr @rcar_du_plane_helper_funcs, ptr %30, align 8
  %31 = tail call i32 @drm_plane_create_alpha_property(ptr noundef %25) #7
  br i1 %23, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef %25, i32 noundef 0) #7
  br label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.drm_plane, ptr %25, i32 0, i32 4
  %36 = load ptr, ptr %19, align 8
  tail call void @drm_object_attach_property(ptr noundef %35, ptr noundef %36, i64 noundef 0) #7
  %37 = tail call i32 @drm_plane_create_zpos_property(ptr noundef %25, i32 noundef 1, i32 noundef 1, i32 noundef 7) #7
  br label %38

38:                                               ; preds = %34, %32
  %39 = add nuw i32 %22, 1
  %40 = load i32, ptr %6, align 8
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, ptr %3, align 4
  br label %20

44:                                               ; preds = %38, %20, %1
  %45 = phi i32 [ 0, %1 ], [ %27, %20 ], [ 0, %38 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_du_plane_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %3) #7
  tail call void @kfree(ptr noundef nonnull %3) #7
  store ptr null, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 140) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %0, ptr noundef nonnull %8) #7
  %11 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %8, i32 0, i32 2
  store i32 -1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %8, i32 0, i32 3
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %8, i32 0, i32 4
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 16
  %15 = load i32, ptr %14, align 8
  %16 = icmp ne i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 15
  store i32 %17, ptr %18, align 8
  br label %19

19:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rcar_du_plane_atomic_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !13

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 661, i32 noundef 9, ptr noundef null) #7
  br label %10

6:                                                ; preds = %1
  %7 = tail call ptr @kmemdup(ptr noundef nonnull %3, i32 noundef 140, i32 noundef 3264) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %0, ptr noundef nonnull %7) #7
  br label %10

10:                                               ; preds = %9, %6, %5
  %11 = phi ptr [ null, %5 ], [ %7, %9 ], [ null, %6 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_du_plane_atomic_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rcar_du_plane_atomic_set_property(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef readnone %2, i64 noundef %3) #5 {
  %5 = getelementptr inbounds %struct.rcar_du_plane, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rcar_du_device, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = trunc i64 %3 to i32
  %13 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %1, i32 0, i32 4
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i32 [ 0, %11 ], [ -22, %4 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rcar_du_plane_atomic_get_property(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2, ptr nocapture noundef writeonly %3) #5 {
  %5 = getelementptr inbounds %struct.rcar_du_plane, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rcar_du_device, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = zext i32 %13 to i64
  store i64 %14, ptr %3, align 8
  br label %15

15:                                               ; preds = %11, %4
  %16 = phi i32 [ 0, %11 ], [ -22, %4 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_du_plane_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 22
  store i8 0, ptr %14, align 4
  store ptr null, ptr %9, align 4
  br label %39

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 25
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %17, ptr noundef nonnull %11) #7
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = ptrtoint ptr %18 to i32
  br label %39

22:                                               ; preds = %15
  %23 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %8, ptr noundef %18, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 22
  %27 = load i8, ptr %26, align 4, !range !12
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store ptr null, ptr %9, align 4
  br label %39

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.drm_framebuffer, ptr %32, i32 0, i32 4
  %34 = load ptr, ptr %33, align 8
  %35 = load i32, ptr %34, align 4
  %36 = tail call ptr @rcar_du_format_info(i32 noundef %35) #7
  store ptr %36, ptr %9, align 4
  %37 = icmp eq ptr %36, null
  %38 = select i1 %37, i32 -22, i32 0
  br label %39

39:                                               ; preds = %30, %29, %22, %20, %13
  %40 = phi i32 [ %21, %20 ], [ 0, %29 ], [ 0, %13 ], [ %23, %22 ], [ %38, %30 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_du_plane_atomic_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 22
  %10 = load i8, ptr %9, align 4, !range !12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %2
  %13 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rcar_du_plane, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  tail call void @__rcar_du_plane_setup(ptr noundef %18, ptr noundef %16) #7
  %19 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %14, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = getelementptr inbounds %struct.rcar_du_plane_state, ptr %8, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = xor i1 %21, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %12
  %27 = load ptr, ptr %17, align 8
  %28 = getelementptr inbounds %struct.rcar_du_group, ptr %27, i32 0, i32 12
  store i8 1, ptr %28, align 8
  br label %29

29:                                               ; preds = %26, %12, %2
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!8 = !{i32 0, i32 33}
!9 = !{!"auto-init"}
!10 = !{i64 2152988827}
!11 = !{i64 5455224}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 1, i32 2000}
