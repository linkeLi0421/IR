; ModuleID = '/llk/IR/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c_pt.bc'
source_filename = "../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_dcu_drm_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.drm_crtc, %struct.drm_encoder, %struct.fsl_dcu_drm_connector, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.fsl_dcu_drm_connector = type { %struct.drm_connector, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@.str = private unnamed_addr constant [10 x i8] c"fsl,panel\00", align 1
@fsl_dcu_drm_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @fsl_dcu_drm_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @fsl_dcu_drm_connector_get_modes, ptr null, ptr @fsl_dcu_drm_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsl_dcu_drm_encoder_create(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 10, i32 6
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fsl_tcon_bypass_enable(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 10
  %10 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @drm_simple_encoder_init(ptr noundef %11, ptr noundef %9, i32 noundef 3) #6
  %13 = tail call i32 @llvm.smin.i32(i32 %12, i32 0)
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_tcon_bypass_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsl_dcu_create_outputs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #6, !annotation !8
  %7 = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #6
  %8 = icmp ne i32 %7, 0
  %9 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  %10 = icmp eq ptr %9, null
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %37, label %12

12:                                               ; preds = %1
  %13 = call ptr @of_drm_find_panel(ptr noundef nonnull %9) #6
  %14 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 11, i32 2
  store ptr %13, ptr %14, align 4
  call void @of_node_put(ptr noundef nonnull %9) #6
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = ptrtoint ptr %15 to i32
  br label %67

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 10
  %21 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 11
  %22 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 11, i32 1
  store ptr %20, ptr %22, align 8
  %23 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 @drm_connector_init(ptr noundef %24, ptr noundef %21, ptr noundef nonnull @fsl_dcu_drm_connector_funcs, i32 noundef 7) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %67, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 11, i32 0, i32 35
  store ptr @connector_helper_funcs, ptr %28, align 4
  %29 = call i32 @drm_connector_register(ptr noundef %21) #6
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = call i32 @drm_connector_attach_encoder(ptr noundef %21, ptr noundef %20) #6
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %31
  call void @drm_connector_unregister(ptr noundef %21) #6
  br label %35

35:                                               ; preds = %34, %27
  %36 = phi i32 [ %29, %27 ], [ %32, %34 ]
  call void @drm_connector_cleanup(ptr noundef %21) #6
  br label %67

37:                                               ; preds = %1
  %38 = load ptr, ptr %5, align 4
  %39 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %38, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %37
  %42 = load ptr, ptr %3, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %63, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 11, i32 2
  store ptr %42, ptr %45, align 4
  %46 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 10
  %47 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 11
  %48 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 11, i32 1
  store ptr %46, ptr %48, align 8
  %49 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 8
  %50 = load ptr, ptr %49, align 8
  %51 = call i32 @drm_connector_init(ptr noundef %50, ptr noundef %47, ptr noundef nonnull @fsl_dcu_drm_connector_funcs, i32 noundef 7) #6
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 11, i32 0, i32 35
  store ptr @connector_helper_funcs, ptr %54, align 4
  %55 = call i32 @drm_connector_register(ptr noundef %47) #6
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = call i32 @drm_connector_attach_encoder(ptr noundef %47, ptr noundef %46) #6
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  call void @drm_connector_unregister(ptr noundef %47) #6
  br label %61

61:                                               ; preds = %60, %53
  %62 = phi i32 [ %55, %53 ], [ %58, %60 ]
  call void @drm_connector_cleanup(ptr noundef %47) #6
  br label %67

63:                                               ; preds = %41
  %64 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 10
  %65 = load ptr, ptr %4, align 4
  %66 = call i32 @drm_bridge_attach(ptr noundef %64, ptr noundef %65, ptr noundef null, i32 noundef 0) #6
  br label %67

67:                                               ; preds = %63, %61, %57, %44, %37, %35, %31, %19, %17
  %68 = phi i32 [ %18, %17 ], [ %66, %63 ], [ %39, %37 ], [ %36, %35 ], [ %25, %19 ], [ 0, %31 ], [ %62, %61 ], [ %51, %44 ], [ 0, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_connector_destroy(ptr noundef %0) #0 {
  tail call void @drm_connector_unregister(ptr noundef %0) #6
  tail call void @drm_connector_cleanup(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_dcu_drm_connector_get_modes(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fsl_dcu_drm_connector, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @drm_panel_get_modes(ptr noundef %3, ptr noundef %0) #6
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @fsl_dcu_drm_connector_mode_valid(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 15
  %6 = icmp ne i16 %5, 0
  %7 = sext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
