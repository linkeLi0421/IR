; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.sun4i_hdmi = type { %struct.drm_connector, %struct.drm_encoder, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
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
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.sun4i_tmds = type { %struct.clk_hw, ptr, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.sun4i_hdmi_variant = type { i8, i8, i32, i32, i32, %struct.reg_field, i8, i8, i8, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, i32, i8, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [10 x i8] c"hdmi-tmds\00", align 1
@sun4i_tmds_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_tmds_recalc_rate, ptr null, ptr @sun4i_tmds_determine_rate, ptr @sun4i_tmds_set_parent, ptr @sun4i_tmds_get_parent, ptr @sun4i_tmds_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_tmds_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #5
  %4 = getelementptr inbounds i8, ptr %2, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %5 = getelementptr inbounds %struct.sun4i_hdmi, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @__clk_get_name(ptr noundef %6) #5
  store ptr %7, ptr %3, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sun4i_hdmi, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @__clk_get_name(ptr noundef %11) #5
  %13 = getelementptr inbounds [2 x ptr], ptr %3, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.sun4i_hdmi, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %17, i32 noundef 20, i32 noundef 3520) #5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %15
  store ptr @.str, ptr %2, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @sun4i_tmds_ops, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  store ptr %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  store i8 2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  store i32 4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.sun4i_tmds, ptr %18, i32 0, i32 1
  store ptr %0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_hw, ptr %18, i32 0, i32 2
  store ptr %2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sun4i_hdmi, ptr %0, i32 0, i32 32
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %28, i32 0, i32 8
  %30 = load i8, ptr %29, align 2
  %31 = getelementptr inbounds %struct.sun4i_tmds, ptr %18, i32 0, i32 2
  store i8 %30, ptr %31, align 4
  %32 = load ptr, ptr %16, align 8
  %33 = call ptr @devm_clk_register(ptr noundef %32, ptr noundef nonnull %18) #5
  %34 = getelementptr inbounds %struct.sun4i_hdmi, ptr %0, i32 0, i32 12
  store ptr %33, ptr %34, align 8
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  %36 = ptrtoint ptr %33 to i32
  %37 = select i1 %35, i32 %36, i32 0
  br label %38

38:                                               ; preds = %20, %15, %9, %1
  %39 = phi i32 [ -19, %1 ], [ -19, %9 ], [ -12, %15 ], [ %37, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #5
  ret i32 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_tmds_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sun4i_tmds, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sun4i_hdmi, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 516
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %9 = lshr i32 %8, 6
  %10 = and i32 %9, 1
  %11 = lshr i32 %1, %10
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.sun4i_hdmi, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 520
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %17 = lshr i32 %16, 4
  %18 = and i32 %17, 15
  %19 = getelementptr inbounds %struct.sun4i_tmds, ptr %0, i32 0, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = add nuw nsw i32 %18, %21
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 1, i32 %22
  %25 = udiv i32 %11, %24
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_tmds_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %110, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sun4i_tmds, ptr %0, i32 0, i32 2
  %8 = shl i32 %3, 1
  br label %9

9:                                                ; preds = %93, %6
  %10 = phi i32 [ 0, %6 ], [ %96, %93 ]
  %11 = phi i32 [ 0, %6 ], [ %97, %93 ]
  %12 = phi i32 [ 1, %6 ], [ %95, %93 ]
  %13 = phi i32 [ 1, %6 ], [ %94, %93 ]
  %14 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %11) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %93, label %16

16:                                               ; preds = %9
  %17 = load i8, ptr %7, align 4
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, i8 1, i8 %17
  %20 = zext i8 %19 to i32
  %21 = zext i8 %17 to i32
  %22 = add nuw nsw i32 %21, 16
  %23 = icmp ugt i32 %22, %20
  br i1 %23, label %24, label %53

24:                                               ; preds = %44, %16
  %25 = phi i32 [ %47, %44 ], [ %10, %16 ]
  %26 = phi i32 [ %48, %44 ], [ %20, %16 ]
  %27 = phi i32 [ %46, %44 ], [ %12, %16 ]
  %28 = phi i32 [ %45, %44 ], [ %13, %16 ]
  %29 = mul i32 %3, %26
  %30 = tail call i32 @clk_hw_round_rate(ptr noundef nonnull %14, i32 noundef %29) #5
  %31 = icmp eq i32 %30, %29
  br i1 %31, label %102, label %32

32:                                               ; preds = %24
  %33 = icmp eq i32 %25, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %32
  %35 = udiv i32 %30, %26
  %36 = sub i32 %3, %35
  %37 = tail call i32 @llvm.abs.i32(i32 %36, i1 false)
  %38 = udiv i32 %25, %27
  %39 = udiv i32 %38, %28
  %40 = sub i32 %3, %39
  %41 = tail call i32 @llvm.abs.i32(i32 %40, i1 false)
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34, %32
  br label %44

44:                                               ; preds = %43, %34
  %45 = phi i32 [ %28, %34 ], [ %26, %43 ]
  %46 = phi i32 [ %27, %34 ], [ 1, %43 ]
  %47 = phi i32 [ %25, %34 ], [ %30, %43 ]
  %48 = add nuw nsw i32 %26, 1
  %49 = load i8, ptr %7, align 4
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %50, 16
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %24, label %53

53:                                               ; preds = %44, %16
  %54 = phi i32 [ %22, %16 ], [ %51, %44 ]
  %55 = phi i8 [ %17, %16 ], [ %49, %44 ]
  %56 = phi i32 [ %13, %16 ], [ %45, %44 ]
  %57 = phi i32 [ %12, %16 ], [ %46, %44 ]
  %58 = phi i32 [ %10, %16 ], [ %47, %44 ]
  %59 = icmp eq i8 %55, 0
  %60 = select i1 %59, i8 1, i8 %55
  %61 = zext i8 %60 to i32
  %62 = icmp ugt i32 %54, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %84, %53
  %64 = phi i32 [ %87, %84 ], [ %58, %53 ]
  %65 = phi i32 [ %88, %84 ], [ %61, %53 ]
  %66 = phi i32 [ %86, %84 ], [ %57, %53 ]
  %67 = phi i32 [ %85, %84 ], [ %56, %53 ]
  %68 = mul i32 %8, %65
  %69 = tail call i32 @clk_hw_round_rate(ptr noundef nonnull %14, i32 noundef %68) #5
  %70 = icmp eq i32 %69, %68
  br i1 %70, label %102, label %71

71:                                               ; preds = %63
  %72 = icmp eq i32 %64, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %71
  %74 = lshr i32 %69, 1
  %75 = udiv i32 %74, %65
  %76 = sub i32 %3, %75
  %77 = tail call i32 @llvm.abs.i32(i32 %76, i1 false)
  %78 = udiv i32 %64, %66
  %79 = udiv i32 %78, %67
  %80 = sub i32 %3, %79
  %81 = tail call i32 @llvm.abs.i32(i32 %80, i1 false)
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %73, %71
  br label %84

84:                                               ; preds = %83, %73
  %85 = phi i32 [ %67, %73 ], [ %65, %83 ]
  %86 = phi i32 [ %66, %73 ], [ 2, %83 ]
  %87 = phi i32 [ %64, %73 ], [ %69, %83 ]
  %88 = add nuw nsw i32 %65, 1
  %89 = load i8, ptr %7, align 4
  %90 = zext i8 %89 to i32
  %91 = add nuw nsw i32 %90, 16
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %63, label %93

93:                                               ; preds = %84, %53, %9
  %94 = phi i32 [ %13, %9 ], [ %56, %53 ], [ %85, %84 ]
  %95 = phi i32 [ %12, %9 ], [ %57, %53 ], [ %86, %84 ]
  %96 = phi i32 [ %10, %9 ], [ %58, %53 ], [ %87, %84 ]
  %97 = add nuw i32 %11, 1
  %98 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #5
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %9, label %100

100:                                              ; preds = %93
  %101 = icmp eq ptr %14, null
  br i1 %101, label %110, label %102

102:                                              ; preds = %100, %63, %24
  %103 = phi i32 [ %94, %100 ], [ %65, %63 ], [ %26, %24 ]
  %104 = phi i32 [ %95, %100 ], [ 2, %63 ], [ 1, %24 ]
  %105 = phi i32 [ %96, %100 ], [ %68, %63 ], [ %29, %24 ]
  %106 = udiv i32 %105, %104
  %107 = udiv i32 %106, %103
  store i32 %107, ptr %1, align 4
  %108 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %105, ptr %108, align 4
  %109 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %14, ptr %109, align 4
  br label %110

110:                                              ; preds = %102, %100, %2
  %111 = phi i32 [ 0, %102 ], [ -22, %100 ], [ -22, %2 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_tmds_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = icmp ugt i8 %1, 1
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sun4i_tmds, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sun4i_hdmi, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 524
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %11 = and i32 %10, -2097153
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %12 = zext i8 %1 to i32
  %13 = shl nuw nsw i32 %12, 21
  %14 = or i32 %11, %13
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.sun4i_hdmi, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %14) #5, !srcloc !14
  br label %19

19:                                               ; preds = %4, %2
  %20 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @sun4i_tmds_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sun4i_tmds, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sun4i_hdmi, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 524
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %8 = lshr i32 %7, 21
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  ret i8 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_tmds_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sun4i_tmds, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  %8 = select i1 %7, i8 1, i8 %5
  %9 = add nuw nsw i32 %6, 16
  %10 = zext i8 %8 to i32
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %40, %3
  %13 = phi i32 [ %45, %40 ], [ %10, %3 ]
  %14 = phi i1 [ %43, %40 ], [ false, %3 ]
  %15 = phi i8 [ %44, %40 ], [ %8, %3 ]
  %16 = phi i8 [ %42, %40 ], [ 0, %3 ]
  %17 = phi i32 [ %41, %40 ], [ 0, %3 ]
  %18 = udiv i32 %2, %13
  %19 = icmp ugt i32 %18, %1
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = icmp eq i32 %17, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = sub i32 %1, %18
  %24 = sub i32 %1, %17
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %20
  br label %27

27:                                               ; preds = %26, %22, %12
  %28 = phi i32 [ %17, %12 ], [ %18, %26 ], [ %17, %22 ]
  %29 = phi i8 [ %16, %12 ], [ %15, %26 ], [ %16, %22 ]
  %30 = phi i1 [ %14, %12 ], [ false, %26 ], [ %14, %22 ]
  %31 = lshr i32 %18, 1
  %32 = icmp ugt i32 %31, %1
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = icmp eq i32 %28, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %33
  %36 = sub i32 %1, %31
  %37 = sub i32 %1, %28
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %33
  br label %40

40:                                               ; preds = %39, %35, %27
  %41 = phi i32 [ %28, %27 ], [ %31, %39 ], [ %28, %35 ]
  %42 = phi i8 [ %29, %27 ], [ %15, %39 ], [ %29, %35 ]
  %43 = phi i1 [ %30, %27 ], [ true, %39 ], [ %30, %35 ]
  %44 = add i8 %15, 1
  %45 = zext i8 %44 to i32
  %46 = icmp ugt i32 %9, %45
  br i1 %46, label %12, label %47

47:                                               ; preds = %40, %3
  %48 = phi i8 [ 0, %3 ], [ %42, %40 ]
  %49 = phi i1 [ false, %3 ], [ %43, %40 ]
  %50 = getelementptr inbounds %struct.sun4i_tmds, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sun4i_hdmi, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 516
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %56 = and i32 %55, -65
  %57 = select i1 %49, i32 64, i32 0
  %58 = or i32 %56, %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %59 = load ptr, ptr %50, align 4
  %60 = getelementptr inbounds %struct.sun4i_hdmi, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %58) #5, !srcloc !14
  %63 = load ptr, ptr %50, align 4
  %64 = getelementptr inbounds %struct.sun4i_hdmi, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 520
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %68 = and i32 %67, -241
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %69 = zext i8 %48 to i32
  %70 = load i8, ptr %4, align 4
  %71 = zext i8 %70 to i32
  %72 = sub nsw i32 %69, %71
  %73 = shl nsw i32 %72, 4
  %74 = and i32 %73, 240
  %75 = or i32 %74, %68
  %76 = load ptr, ptr %50, align 4
  %77 = getelementptr inbounds %struct.sun4i_hdmi, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %75) #5, !srcloc !14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!9 = !{i64 2845461}
!10 = !{i64 2155360656}
!11 = !{i64 2155361099}
!12 = !{i64 2155364313}
!13 = !{i64 2155364645}
!14 = !{i64 2845043}
!15 = !{i64 2155363862}
!16 = !{i64 2155361460}
!17 = !{i64 2155361822}
!18 = !{i64 2155362319}
!19 = !{i64 2155363277}
