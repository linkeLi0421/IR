; ModuleID = '/llk/IR/drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aspeed_gfx = type { %struct.drm_device, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.drm_simple_display_pipe, %struct.drm_connector }
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
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
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

@aspeed_gfx_funcs = internal constant %struct.drm_simple_display_pipe_funcs { ptr null, ptr @aspeed_gfx_pipe_enable, ptr @aspeed_gfx_pipe_disable, ptr null, ptr @aspeed_gfx_pipe_update, ptr null, ptr null, ptr @aspeed_gfx_enable_vblank, ptr @aspeed_gfx_disable_vblank, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@aspeed_gfx_formats = internal constant [2 x i32] [i32 875713112, i32 909199186], align 4
@.str = private unnamed_addr constant [29 x i8] c"Unhandled pixel format %08x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aspeed_gfx_create_pipe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.aspeed_gfx, ptr %0, i32 0, i32 9
  %3 = getelementptr inbounds %struct.aspeed_gfx, ptr %0, i32 0, i32 10
  %4 = tail call i32 @drm_simple_display_pipe_init(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @aspeed_gfx_funcs, ptr noundef nonnull @aspeed_gfx_formats, i32 noundef 2, ptr noundef null, ptr noundef %3) #3
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_display_pipe_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_gfx_pipe_enable(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 644
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %0, i32 72
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_plane, ptr %8, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 -36
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 96
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %20 = and i32 %19, -897
  switch i32 %15, label %23 [
    i32 909199186, label %26
    i32 875713112, label %21
  ]

21:                                               ; preds = %3
  %22 = or i32 %20, 256
  br label %26

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef %15) #4
  br label %111

26:                                               ; preds = %21, %3
  %27 = phi i32 [ 32, %21 ], [ 16, %3 ]
  %28 = phi i32 [ %22, %21 ], [ %20, %3 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr i8, ptr %29, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #3, !srcloc !11
  %31 = load ptr, ptr %16, align 4
  %32 = getelementptr i8, ptr %31, i32 96
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %34 = and i32 %33, -196617
  %35 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 11
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 1
  %38 = and i32 %37, 8
  %39 = or i32 %38, %34
  %40 = shl i32 %36, 16
  %41 = and i32 %40, 65536
  %42 = or i32 %39, %41
  %43 = shl i32 %36, 15
  %44 = and i32 %43, 131072
  %45 = or i32 %42, %44
  %46 = xor i32 %45, 196608
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %47 = load ptr, ptr %16, align 4
  %48 = getelementptr i8, ptr %47, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %49 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 4
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = add nsw i32 %51, -1
  %53 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 1
  %54 = load i16, ptr %53, align 4
  %55 = zext i16 %54 to i32
  %56 = shl nuw i32 %55, 16
  %57 = add i32 %56, -65536
  %58 = or i32 %57, %52
  %59 = load ptr, ptr %16, align 4
  %60 = getelementptr i8, ptr %59, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %61 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 2
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = add nsw i32 %63, -1
  %65 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 3
  %66 = load i16, ptr %65, align 4
  %67 = zext i16 %66 to i32
  %68 = shl nuw i32 %67, 16
  %69 = or i32 %68, %64
  %70 = load ptr, ptr %16, align 4
  %71 = getelementptr i8, ptr %70, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %72 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 9
  %73 = load i16, ptr %72, align 4
  %74 = zext i16 %73 to i32
  %75 = add nsw i32 %74, -1
  %76 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 6
  %77 = load i16, ptr %76, align 2
  %78 = zext i16 %77 to i32
  %79 = shl nuw i32 %78, 16
  %80 = add i32 %79, -65536
  %81 = or i32 %80, %75
  %82 = load ptr, ptr %16, align 4
  %83 = getelementptr i8, ptr %82, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %84 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 7
  %85 = load i16, ptr %84, align 4
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 8
  %88 = load i16, ptr %87, align 2
  %89 = zext i16 %88 to i32
  %90 = shl nuw i32 %89, 16
  %91 = or i32 %90, %86
  %92 = load ptr, ptr %16, align 4
  %93 = getelementptr i8, ptr %92, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #3, !srcloc !11
  %94 = load i16, ptr %53, align 4
  %95 = zext i16 %94 to i32
  %96 = mul nuw nsw i32 %27, %95
  %97 = lshr exact i32 %96, 3
  %98 = getelementptr i8, ptr %0, i32 -8
  %99 = load i32, ptr %98, align 8
  %100 = add i32 %99, -1
  %101 = add i32 %100, %96
  %102 = udiv i32 %101, %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %103 = shl i32 %102, 16
  %104 = or i32 %97, %103
  %105 = load ptr, ptr %16, align 4
  %106 = getelementptr i8, ptr %105, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %107 = getelementptr i8, ptr %0, i32 -12
  %108 = load i32, ptr %107, align 4
  %109 = load ptr, ptr %16, align 4
  %110 = getelementptr i8, ptr %109, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #3, !srcloc !11
  br label %111

111:                                              ; preds = %26, %23
  %112 = load ptr, ptr %16, align 4
  %113 = getelementptr i8, ptr %112, i32 96
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !20
  %115 = load ptr, ptr %16, align 4
  %116 = getelementptr i8, ptr %115, i32 100
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !21
  %118 = getelementptr i8, ptr %0, i32 -24
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr i8, ptr %0, i32 -20
  %121 = load i32, ptr %120, align 4
  %122 = tail call i32 @regmap_update_bits_base(ptr noundef %119, i32 noundef %121, i32 noundef 65536, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  %123 = or i32 %114, 1
  %124 = load ptr, ptr %16, align 4
  %125 = getelementptr i8, ptr %124, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %126 = or i32 %117, 1
  %127 = load ptr, ptr %16, align 4
  %128 = getelementptr i8, ptr %127, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %126) #3, !srcloc !11
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_gfx_pipe_disable(ptr noundef %0) #0 {
  tail call void @drm_crtc_vblank_off(ptr noundef %0) #3
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 96
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !24
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 100
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %9 = and i32 %5, -2
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %12 = and i32 %8, -2
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #3, !srcloc !11
  %15 = getelementptr i8, ptr %0, i32 -24
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %0, i32 -20
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %18, i32 noundef 65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_gfx_pipe_update(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %0, i32 0, i32 1, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %8) #3
  %9 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_crtc_state, ptr %10, i32 0, i32 18
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  store ptr null, ptr %11, align 4
  %15 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %0, ptr noundef nonnull %12) #3
  br label %19

18:                                               ; preds = %14
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef nonnull %12) #3
  br label %19

19:                                               ; preds = %18, %17, %2
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !28
  %22 = load i16, ptr %21, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !30
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #3, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !32
  %24 = icmp eq ptr %6, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %6, i32 noundef 0) #3
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !33
  tail call void @arm_heavy_mb() #3
  %29 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %26, i32 0, i32 1
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr i8, ptr %0, i32 -36
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %30) #3, !srcloc !11
  br label %34

34:                                               ; preds = %28, %25, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_gfx_enable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 96
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !34
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %6 = or i32 %5, -2147483648
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #3, !srcloc !11
  %9 = or i32 %5, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #3, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_gfx_disable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 96
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !37
  %6 = and i32 %5, -1073741825
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !38
  tail call void @arm_heavy_mb() #3
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %9 = or i32 %6, -2147483648
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #3, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 2594097}
!9 = !{i64 2155332032}
!10 = !{i64 2155334933}
!11 = !{i64 2593679}
!12 = !{i64 2155338989}
!13 = !{i64 2155339702}
!14 = !{i64 2155340115}
!15 = !{i64 2155340616}
!16 = !{i64 2155341117}
!17 = !{i64 2155341610}
!18 = !{i64 2155342181}
!19 = !{i64 2155342574}
!20 = !{i64 2155335405}
!21 = !{i64 2155335744}
!22 = !{i64 2155336200}
!23 = !{i64 2155336697}
!24 = !{i64 2155337229}
!25 = !{i64 2155337568}
!26 = !{i64 2155337874}
!27 = !{i64 2155338377}
!28 = !{i64 2148883414}
!29 = !{i64 2148879238}
!30 = !{i64 2148879313, i64 2148879340, i64 2148879387, i64 2148879409, i64 2148879437, i64 2148879457}
!31 = !{i64 340730}
!32 = !{i64 2148907558}
!33 = !{i64 2155342936}
!34 = !{i64 2155343418}
!35 = !{i64 2155343723}
!36 = !{i64 2155344188}
!37 = !{i64 2155344656}
!38 = !{i64 2155344930}
!39 = !{i64 2155345364}
