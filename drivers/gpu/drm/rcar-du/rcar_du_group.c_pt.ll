; ModuleID = '/llk/IR/drivers/gpu/drm/rcar-du/rcar_du_group.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_du_group.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rcar_du_group = type { ptr, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, [9 x %struct.rcar_du_plane], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rcar_du_plane = type { %struct.drm_plane, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.rcar_du_device = type { ptr, ptr, ptr, %struct.drm_device, [4 x %struct.rcar_du_crtc], i32, [2 x %struct.rcar_du_group], [4 x ptr], [4 x %struct.rcar_du_vsp], [2 x ptr], %struct.anon.75, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.71, ptr, i32, ptr, i8, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.71 = type { i32, ptr }
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
%struct.anon.75 = type { ptr }
%struct.rcar_du_device_info = type { i32, i32, i32, i32, [9 x %struct.rcar_du_output_routing], i32, i32, i32, i32 }
%struct.rcar_du_output_routing = type { i32, i32 }
%struct.rcar_du_crtc_state = type { %struct.drm_crtc_state, %struct.vsp1_du_crc_config, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.vsp1_du_crc_config = type { i32, i32 }

@rcar_du_group_set_dpad_levels.doflr_values = internal unnamed_addr constant [2 x i32] [i32 63, i32 16128], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_du_group_read(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %1
  %7 = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcar_du_group_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, %1
  %8 = getelementptr inbounds %struct.rcar_du_device, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %2) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_du_group_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %201

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 32
  %10 = getelementptr inbounds %struct.rcar_du_device, ptr %6, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 2004025345) #3, !srcloc !11
  %13 = getelementptr inbounds %struct.rcar_du_device, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %17, label %36

17:                                               ; preds = %5
  %18 = load ptr, ptr %0, align 8
  %19 = load i32, ptr %7, align 4
  %20 = add i32 %19, 52
  %21 = getelementptr inbounds %struct.rcar_du_device, ptr %18, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr i8, ptr %22, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 2004156417) #3, !srcloc !11
  %24 = load ptr, ptr %0, align 8
  %25 = load i32, ptr %7, align 4
  %26 = add i32 %25, 56
  %27 = getelementptr inbounds %struct.rcar_du_device, ptr %24, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr i8, ptr %28, i32 %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 2004221953) #3, !srcloc !11
  %30 = load ptr, ptr %0, align 8
  %31 = load i32, ptr %7, align 4
  %32 = add i32 %31, 60
  %33 = getelementptr inbounds %struct.rcar_du_device, ptr %30, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr i8, ptr %34, i32 %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 2004287488) #3, !srcloc !11
  br label %36

36:                                               ; preds = %17, %5
  %37 = load ptr, ptr %0, align 8
  %38 = load i32, ptr %7, align 4
  %39 = add i32 %38, 224
  %40 = getelementptr inbounds %struct.rcar_du_device, ptr %37, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr i8, ptr %41, i32 %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 1711276033) #3, !srcloc !11
  %43 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 2004353024, i32 2004353536
  %48 = shl i32 %44, 10
  %49 = and i32 %48, 2048
  %50 = or i32 %47, %49
  %51 = load ptr, ptr %0, align 8
  %52 = load i32, ptr %7, align 4
  %53 = add i32 %52, 232
  %54 = getelementptr inbounds %struct.rcar_du_device, ptr %51, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr i8, ptr %55, i32 %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %50) #3, !srcloc !11
  %57 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 4
  %58 = load i32, ptr %57, align 8
  %59 = shl i32 %58, 5
  %60 = and i32 %59, 64
  %61 = shl i32 %58, 4
  %62 = and i32 %61, 16
  %63 = or i32 %60, %62
  %64 = or i32 %63, 2004418560
  %65 = load ptr, ptr %0, align 8
  %66 = load i32, ptr %7, align 4
  %67 = add i32 %66, 236
  %68 = getelementptr inbounds %struct.rcar_du_device, ptr %65, i32 0, i32 2
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr i8, ptr %69, i32 %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %64) #3, !srcloc !11
  %71 = load ptr, ptr %13, align 4
  %72 = load i32, ptr %71, align 4
  %73 = icmp ugt i32 %72, 1
  br i1 %73, label %74, label %171

74:                                               ; preds = %36
  %75 = load ptr, ptr %0, align 8
  %76 = getelementptr inbounds %struct.rcar_du_device, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = load i32, ptr %77, align 4
  %79 = icmp ult i32 %78, 3
  %80 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 2
  %81 = load i32, ptr %80, align 8
  br i1 %79, label %82, label %93

82:                                               ; preds = %74
  %83 = icmp eq i32 %81, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.rcar_du_device, ptr %75, i32 0, i32 11
  %86 = load i32, ptr %85, align 4
  %87 = shl i32 %86, 4
  %88 = getelementptr inbounds %struct.rcar_du_device, ptr %75, i32 0, i32 13
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 2
  %91 = select i1 %90, i32 2005925953, i32 2005925889
  %92 = or i32 %91, %87
  br label %101

93:                                               ; preds = %74
  %94 = getelementptr inbounds %struct.rcar_du_device, ptr %75, i32 0, i32 11
  %95 = load i32, ptr %94, align 4
  %96 = lshr i32 %95, 1
  %97 = icmp eq i32 %81, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = shl i32 %95, 4
  %100 = or i32 %99, 2005925888
  br label %101

101:                                              ; preds = %98, %93, %84, %82
  %102 = phi i32 [ 2005925889, %82 ], [ %100, %98 ], [ 2005925888, %93 ], [ %92, %84 ]
  %103 = load i32, ptr %7, align 4
  %104 = add i32 %103, 131104
  %105 = getelementptr inbounds %struct.rcar_du_device, ptr %75, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr i8, ptr %106, i32 %104
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %102) #3, !srcloc !11
  %108 = load ptr, ptr %0, align 8
  %109 = getelementptr inbounds %struct.rcar_du_device, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = load i32, ptr %110, align 4
  %112 = icmp ult i32 %111, 3
  br i1 %112, label %113, label %116

113:                                              ; preds = %101
  %114 = load i32, ptr %80, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %126, label %171

116:                                              ; preds = %101
  %117 = icmp eq i32 %111, 3
  br i1 %117, label %118, label %171

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = icmp ugt i32 %120, 1
  br i1 %121, label %122, label %171

122:                                              ; preds = %118
  %123 = load i32, ptr %80, align 8
  %124 = shl i32 %123, 1
  %125 = getelementptr %struct.rcar_du_device, ptr %108, i32 0, i32 4, i32 %124
  br label %131

126:                                              ; preds = %113
  %127 = getelementptr inbounds %struct.rcar_du_device, ptr %108, i32 0, i32 4
  %128 = getelementptr inbounds %struct.rcar_du_device, ptr %108, i32 0, i32 5
  %129 = load i32, ptr %128, align 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %171, label %131

131:                                              ; preds = %126, %122
  %132 = phi i32 [ %120, %122 ], [ %129, %126 ]
  %133 = phi ptr [ %125, %122 ], [ %127, %126 ]
  %134 = getelementptr inbounds %struct.rcar_du_device_info, ptr %110, i32 0, i32 8
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.rcar_du_device_info, ptr %110, i32 0, i32 7
  br label %137

137:                                              ; preds = %160, %131
  %138 = phi i32 [ 2005925888, %131 ], [ %161, %160 ]
  %139 = phi i32 [ 0, %131 ], [ %162, %160 ]
  %140 = phi ptr [ %133, %131 ], [ %163, %160 ]
  %141 = getelementptr inbounds %struct.rcar_du_crtc, ptr %140, i32 0, i32 5
  %142 = load i32, ptr %141, align 8
  %143 = shl nuw i32 1, %142
  %144 = and i32 %143, %135
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %137
  %147 = shl i32 %139, 1
  %148 = add i32 %147, 8
  %149 = shl i32 2, %148
  %150 = or i32 %149, %138
  br label %160

151:                                              ; preds = %137
  %152 = load i32, ptr %136, align 4
  %153 = and i32 %152, %143
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %151
  %156 = shl i32 %139, 1
  %157 = add i32 %156, 8
  %158 = shl i32 2, %157
  %159 = or i32 %158, %138
  br label %160

160:                                              ; preds = %155, %151, %146
  %161 = phi i32 [ %150, %146 ], [ %159, %155 ], [ %138, %151 ]
  %162 = add nuw i32 %139, 1
  %163 = getelementptr %struct.rcar_du_crtc, ptr %140, i32 1
  %164 = icmp eq i32 %162, %132
  br i1 %164, label %165, label %137

165:                                              ; preds = %160
  %166 = load i32, ptr %7, align 4
  %167 = add i32 %166, 131112
  %168 = getelementptr inbounds %struct.rcar_du_device, ptr %108, i32 0, i32 2
  %169 = load ptr, ptr %168, align 8
  %170 = getelementptr i8, ptr %169, i32 %167
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %161) #3, !srcloc !11
  br label %171

171:                                              ; preds = %165, %126, %118, %116, %113, %36
  %172 = load ptr, ptr %13, align 4
  %173 = load i32, ptr %172, align 4
  %174 = icmp ugt i32 %173, 2
  br i1 %174, label %175, label %182

175:                                              ; preds = %171
  %176 = load ptr, ptr %0, align 8
  %177 = load i32, ptr %7, align 4
  %178 = add i32 %177, 131128
  %179 = getelementptr inbounds %struct.rcar_du_device, ptr %176, i32 0, i32 2
  %180 = load ptr, ptr %179, align 8
  %181 = getelementptr i8, ptr %180, i32 %178
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 2006253569) #3, !srcloc !11
  br label %182

182:                                              ; preds = %175, %171
  %183 = load ptr, ptr %0, align 8
  %184 = load i32, ptr %7, align 4
  %185 = add i32 %184, 69632
  %186 = getelementptr inbounds %struct.rcar_du_device, ptr %183, i32 0, i32 2
  %187 = load ptr, ptr %186, align 8
  %188 = getelementptr i8, ptr %187, i32 %185
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 1) #3, !srcloc !11
  %189 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %189) #3
  %190 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 9
  %191 = load i32, ptr %190, align 4
  %192 = shl i32 %191, 16
  %193 = or i32 %192, %191
  %194 = load ptr, ptr %0, align 8
  %195 = load i32, ptr %7, align 4
  %196 = add i32 %195, 69636
  %197 = getelementptr inbounds %struct.rcar_du_device, ptr %194, i32 0, i32 2
  %198 = load ptr, ptr %197, align 8
  %199 = getelementptr i8, ptr %198, i32 %196
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %193) #3, !srcloc !11
  tail call void @mutex_unlock(ptr noundef %189) #3
  %200 = load i32, ptr %2, align 8
  br label %201

201:                                              ; preds = %182, %1
  %202 = phi i32 [ %3, %1 ], [ %200, %182 ]
  %203 = add i32 %202, 1
  store i32 %203, ptr %2, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @rcar_du_group_put(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, -1
  store i32 %4, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcar_du_group_start_stop(ptr nocapture noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  br i1 %1, label %5, label %48

5:                                                ; preds = %2
  %6 = add i32 %4, 1
  store i32 %6, ptr %3, align 4
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.rcar_du_device, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rcar_du_device_info, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = shl i32 %15, 1
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %8
  %21 = getelementptr %struct.rcar_du_device, ptr %9, i32 0, i32 4, i32 %16
  tail call void @rcar_du_crtc_dsysr_clr_set(ptr noundef %21, i32 noundef 768, i32 noundef 512) #3
  br label %28

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.rcar_du_device, ptr %9, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i8, ptr %26, i32 %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 512) #3, !srcloc !11
  br label %28

28:                                               ; preds = %22, %20, %5
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds %struct.rcar_du_device, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.rcar_du_device_info, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = shl i32 %35, 1
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %33
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %28
  %41 = getelementptr %struct.rcar_du_device, ptr %29, i32 0, i32 4, i32 %36
  tail call void @rcar_du_crtc_dsysr_clr_set(ptr noundef %41, i32 noundef 768, i32 noundef 256) #3
  br label %71

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.rcar_du_device, ptr %29, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr i8, ptr %46, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 256) #3, !srcloc !11
  br label %71

48:                                               ; preds = %2
  %49 = add i32 %4, -1
  store i32 %49, ptr %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr inbounds %struct.rcar_du_device, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.rcar_du_device_info, ptr %54, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = shl i32 %58, 1
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %56
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %51
  %64 = getelementptr %struct.rcar_du_device, ptr %52, i32 0, i32 4, i32 %59
  tail call void @rcar_du_crtc_dsysr_clr_set(ptr noundef %64, i32 noundef 768, i32 noundef 512) #3
  br label %71

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.rcar_du_device, ptr %52, i32 0, i32 2
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr i8, ptr %69, i32 %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 512) #3, !srcloc !11
  br label %71

71:                                               ; preds = %65, %63, %48, %42, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcar_du_group_restart(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 12
  store i8 0, ptr %2, align 8
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rcar_du_device_info, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = shl i32 %9, 1
  %11 = shl nuw i32 1, %10
  %12 = and i32 %11, %7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = getelementptr %struct.rcar_du_device, ptr %3, i32 0, i32 4, i32 %10
  tail call void @rcar_du_crtc_dsysr_clr_set(ptr noundef %15, i32 noundef 768, i32 noundef 512) #3
  br label %22

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 512) #3, !srcloc !11
  br label %22

22:                                               ; preds = %16, %14
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.rcar_du_device, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rcar_du_device_info, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %8, align 8
  %29 = shl i32 %28, 1
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %27
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  %34 = getelementptr %struct.rcar_du_device, ptr %23, i32 0, i32 4, i32 %29
  tail call void @rcar_du_crtc_dsysr_clr_set(ptr noundef %34, i32 noundef 768, i32 noundef 256) #3
  br label %41

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.rcar_du_device, ptr %23, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr i8, ptr %39, i32 %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 256) #3, !srcloc !11
  br label %41

41:                                               ; preds = %35, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_du_set_dpad0_vsp1_routing(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %65, label %6

6:                                                ; preds = %1
  %7 = icmp eq i32 %4, 2
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  %12 = lshr i32 %11, 1
  %13 = add nsw i32 %12, -1
  br label %14

14:                                               ; preds = %8, %6
  %15 = phi i32 [ %13, %8 ], [ 0, %6 ]
  %16 = shl i32 %15, 1
  %17 = getelementptr %struct.rcar_du_device, ptr %0, i32 0, i32 4, i32 %16, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @clk_prepare(ptr noundef %18) #3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = tail call i32 @clk_enable(ptr noundef %18) #3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef %18) #3
  br label %25

25:                                               ; preds = %24, %14
  %26 = phi i32 [ %19, %14 ], [ %22, %24 ]
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %65, label %28

28:                                               ; preds = %25, %21
  %29 = getelementptr %struct.rcar_du_device, ptr %0, i32 0, i32 6, i32 %15
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.rcar_du_device, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %33, 3
  %35 = getelementptr %struct.rcar_du_device, ptr %0, i32 0, i32 6, i32 %15, i32 2
  %36 = load i32, ptr %35, align 8
  br i1 %34, label %37, label %48

37:                                               ; preds = %28
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.rcar_du_device, ptr %30, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %41, 4
  %43 = getelementptr inbounds %struct.rcar_du_device, ptr %30, i32 0, i32 13
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 2
  %46 = select i1 %45, i32 2005925953, i32 2005925889
  %47 = or i32 %46, %42
  br label %56

48:                                               ; preds = %28
  %49 = getelementptr inbounds %struct.rcar_du_device, ptr %30, i32 0, i32 11
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %50, 1
  %52 = icmp eq i32 %36, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = shl i32 %50, 4
  %55 = or i32 %54, 2005925888
  br label %56

56:                                               ; preds = %53, %48, %39, %37
  %57 = phi i32 [ 2005925889, %37 ], [ %55, %53 ], [ 2005925888, %48 ], [ %47, %39 ]
  %58 = getelementptr %struct.rcar_du_device, ptr %0, i32 0, i32 6, i32 %15, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 131104
  %61 = getelementptr inbounds %struct.rcar_du_device, ptr %30, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr i8, ptr %62, i32 %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %57) #3, !srcloc !11
  %64 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %64) #3
  tail call void @clk_unprepare(ptr noundef %64) #3
  br label %65

65:                                               ; preds = %56, %25, %1
  %66 = phi i32 [ 0, %56 ], [ 0, %1 ], [ %26, %25 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_du_group_set_routing(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 69632
  %6 = getelementptr inbounds %struct.rcar_du_device, ptr %2, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 %5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %10 = and i32 %9, -1392508929
  %11 = getelementptr inbounds %struct.rcar_du_device, ptr %2, i32 0, i32 12
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = shl i32 %14, 1
  %16 = icmp eq i32 %12, %15
  %17 = or i32 %10, 1358954496
  %18 = select i1 %16, i32 %10, i32 %17
  %19 = load ptr, ptr %0, align 8
  %20 = load i32, ptr %3, align 4
  %21 = add i32 %20, 69632
  %22 = getelementptr inbounds %struct.rcar_du_device, ptr %19, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %23, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %18) #3, !srcloc !11
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds %struct.rcar_du_device, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %63, label %30

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.rcar_du_group, ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %13, align 8
  %36 = shl i32 %35, 1
  br label %37

37:                                               ; preds = %51, %34
  %38 = phi i32 [ 2005925888, %34 ], [ %52, %51 ]
  %39 = phi i32 [ 0, %34 ], [ %53, %51 ]
  %40 = add i32 %39, %36
  %41 = getelementptr %struct.rcar_du_device, ptr %25, i32 0, i32 4, i32 %40, i32 0, i32 22
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 3
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = getelementptr [2 x i32], ptr @rcar_du_group_set_dpad_levels.doflr_values, i32 0, i32 %39
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, %38
  br label %51

51:                                               ; preds = %47, %37
  %52 = phi i32 [ %38, %37 ], [ %50, %47 ]
  %53 = add nuw i32 %39, 1
  %54 = icmp eq i32 %53, %32
  br i1 %54, label %55, label %37

55:                                               ; preds = %51, %30
  %56 = phi i32 [ 2005925888, %30 ], [ %52, %51 ]
  %57 = load i32, ptr %3, align 4
  %58 = add i32 %57, 131108
  %59 = getelementptr inbounds %struct.rcar_du_device, ptr %25, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr i8, ptr %60, i32 %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %56) #3, !srcloc !11
  %62 = load ptr, ptr %0, align 8
  br label %63

63:                                               ; preds = %55, %1
  %64 = phi ptr [ %25, %1 ], [ %62, %55 ]
  %65 = tail call i32 @rcar_du_set_dpad0_vsp1_routing(ptr noundef %64)
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_du_crtc_dsysr_clr_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
!8 = !{i64 1727912}
!9 = !{i64 2149267365}
!10 = !{i64 2149268587}
!11 = !{i64 1727494}
