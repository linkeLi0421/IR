; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c"
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
%struct.sun4i_hdmi_variant = type { i8, i8, i32, i32, i32, %struct.reg_field, i8, i8, i8, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, i32, i8, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.sun4i_ddc = type { %struct.clk_hw, ptr, ptr, i8, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"hdmi-ddc\00", align 1
@sun4i_ddc_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_ddc_recalc_rate, ptr @sun4i_ddc_round_rate, ptr null, ptr null, ptr null, ptr @sun4i_ddc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ddc_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.clk_init_data, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #7
  %5 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %6 = tail call ptr @__clk_get_name(ptr noundef %1) #7
  store ptr %6, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %58, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sun4i_hdmi, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 24, i32 noundef 3520) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %58, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 8
  %15 = getelementptr inbounds %struct.sun4i_hdmi, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sun4i_hdmi, ptr %0, i32 0, i32 32
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = insertvalue [5 x i32] undef, i32 %20, 0
  %22 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %18, i32 0, i32 5, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = insertvalue [5 x i32] %21, i32 %23, 1
  %25 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %18, i32 0, i32 5, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = insertvalue [5 x i32] %24, i32 %26, 2
  %28 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %18, i32 0, i32 5, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = insertvalue [5 x i32] %27, i32 %29, 3
  %31 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %18, i32 0, i32 5, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = insertvalue [5 x i32] %30, i32 %32, 4
  %34 = tail call ptr @devm_regmap_field_alloc(ptr noundef %14, ptr noundef %16, [5 x i32] %33) #7
  %35 = getelementptr inbounds %struct.sun4i_ddc, ptr %11, i32 0, i32 2
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %13
  %38 = ptrtoint ptr %34 to i32
  br label %58

39:                                               ; preds = %13
  store ptr @.str, ptr %3, align 4
  %40 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  store ptr @sun4i_ddc_ops, ptr %40, align 4
  %41 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr %4, ptr %41, align 4
  %42 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  store i8 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.sun4i_ddc, ptr %11, i32 0, i32 1
  store ptr %0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.clk_hw, ptr %11, i32 0, i32 2
  store ptr %3, ptr %44, align 4
  %45 = load ptr, ptr %17, align 8
  %46 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %45, i32 0, i32 6
  %47 = load i8, ptr %46, align 4
  %48 = getelementptr inbounds %struct.sun4i_ddc, ptr %11, i32 0, i32 3
  store i8 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %45, i32 0, i32 7
  %50 = load i8, ptr %49, align 1
  %51 = getelementptr inbounds %struct.sun4i_ddc, ptr %11, i32 0, i32 4
  store i8 %50, ptr %51, align 1
  %52 = load ptr, ptr %9, align 8
  %53 = call ptr @devm_clk_register(ptr noundef %52, ptr noundef nonnull %11) #7
  %54 = getelementptr inbounds %struct.sun4i_hdmi, ptr %0, i32 0, i32 11
  store ptr %53, ptr %54, align 4
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  %56 = ptrtoint ptr %53 to i32
  %57 = select i1 %55, i32 %56, i32 0
  br label %58

58:                                               ; preds = %39, %37, %8, %2
  %59 = phi i32 [ %38, %37 ], [ -19, %2 ], [ -12, %8 ], [ %57, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  ret i32 %59
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_ddc_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.sun4i_ddc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_field_read(ptr noundef %5, ptr noundef nonnull %3) #7
  %7 = load i32, ptr %3, align 4
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 15
  %10 = and i32 %7, 7
  %11 = getelementptr inbounds %struct.sun4i_ddc, ptr %0, i32 0, i32 3
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = udiv i32 %1, %13
  %15 = udiv i32 %14, 10
  %16 = lshr i32 %15, %10
  %17 = getelementptr inbounds %struct.sun4i_ddc, ptr %0, i32 0, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = add nuw nsw i32 %9, %19
  %21 = udiv i32 %16, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %21
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_ddc_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #4 {
  %4 = load i32, ptr %2, align 4
  %5 = getelementptr inbounds %struct.sun4i_ddc, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sun4i_ddc, ptr %0, i32 0, i32 4
  %8 = load i8, ptr %7, align 1
  %9 = tail call fastcc i32 @sun4i_ddc_calc_divider(i32 noundef %1, i32 noundef %4, i8 noundef zeroext %6, i8 noundef zeroext %8, ptr noundef null, ptr noundef null)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_ddc_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !8
  %6 = getelementptr inbounds %struct.sun4i_ddc, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sun4i_ddc, ptr %0, i32 0, i32 4
  %9 = load i8, ptr %8, align 1
  %10 = call fastcc i32 @sun4i_ddc_calc_divider(i32 noundef %1, i32 noundef %2, i8 noundef zeroext %7, i8 noundef zeroext %9, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %11 = getelementptr inbounds %struct.sun4i_ddc, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %4, align 1
  %14 = shl i8 %13, 3
  %15 = and i8 %14, 120
  %16 = load i8, ptr %5, align 1
  %17 = and i8 %16, 7
  %18 = or i8 %15, %17
  %19 = zext i8 %18 to i32
  %20 = call i32 @regmap_field_update_bits_base(ptr noundef %12, i32 noundef -1, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define internal fastcc i32 @sun4i_ddc_calc_divider(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef writeonly %4, ptr noundef writeonly %5) unnamed_addr #5 {
  %7 = zext i8 %2 to i32
  %8 = udiv i32 %1, %7
  %9 = udiv i32 %8, 10
  %10 = zext i8 %3 to i32
  %11 = lshr i32 %9, 1
  %12 = lshr i32 %9, 2
  %13 = lshr i32 %9, 3
  %14 = lshr i32 %9, 4
  %15 = lshr i32 %9, 5
  %16 = lshr i32 %9, 6
  %17 = lshr i32 %9, 7
  br label %18

18:                                               ; preds = %148, %6
  %19 = phi i32 [ 0, %6 ], [ %152, %148 ]
  %20 = phi i32 [ 0, %6 ], [ %151, %148 ]
  %21 = phi i8 [ 0, %6 ], [ %150, %148 ]
  %22 = phi i8 [ 0, %6 ], [ %149, %148 ]
  %23 = add nuw nsw i32 %19, %10
  %24 = udiv i32 %9, %23
  %25 = icmp ugt i32 %24, %0
  br i1 %25, label %36, label %26

26:                                               ; preds = %18
  %27 = sub i32 %0, %24
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 false)
  %29 = sub i32 %0, %20
  %30 = tail call i32 @llvm.abs.i32(i32 %29, i1 false)
  %31 = icmp slt i32 %28, %30
  %32 = select i1 %31, i8 0, i8 %22
  %33 = trunc i32 %19 to i8
  %34 = select i1 %31, i8 %33, i8 %21
  %35 = select i1 %31, i32 %24, i32 %20
  br label %36

36:                                               ; preds = %26, %18
  %37 = phi i8 [ %32, %26 ], [ %22, %18 ]
  %38 = phi i8 [ %34, %26 ], [ %21, %18 ]
  %39 = phi i32 [ %35, %26 ], [ %20, %18 ]
  %40 = udiv i32 %11, %23
  %41 = icmp ugt i32 %40, %0
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = sub i32 %0, %40
  %44 = tail call i32 @llvm.abs.i32(i32 %43, i1 false)
  %45 = sub i32 %0, %39
  %46 = tail call i32 @llvm.abs.i32(i32 %45, i1 false)
  %47 = icmp slt i32 %44, %46
  %48 = select i1 %47, i8 1, i8 %37
  %49 = trunc i32 %19 to i8
  %50 = select i1 %47, i8 %49, i8 %38
  %51 = select i1 %47, i32 %40, i32 %39
  br label %52

52:                                               ; preds = %42, %36
  %53 = phi i8 [ %48, %42 ], [ %37, %36 ]
  %54 = phi i8 [ %50, %42 ], [ %38, %36 ]
  %55 = phi i32 [ %51, %42 ], [ %39, %36 ]
  %56 = udiv i32 %12, %23
  %57 = icmp ugt i32 %56, %0
  br i1 %57, label %68, label %58

58:                                               ; preds = %52
  %59 = sub i32 %0, %56
  %60 = tail call i32 @llvm.abs.i32(i32 %59, i1 false)
  %61 = sub i32 %0, %55
  %62 = tail call i32 @llvm.abs.i32(i32 %61, i1 false)
  %63 = icmp slt i32 %60, %62
  %64 = select i1 %63, i8 2, i8 %53
  %65 = trunc i32 %19 to i8
  %66 = select i1 %63, i8 %65, i8 %54
  %67 = select i1 %63, i32 %56, i32 %55
  br label %68

68:                                               ; preds = %58, %52
  %69 = phi i8 [ %64, %58 ], [ %53, %52 ]
  %70 = phi i8 [ %66, %58 ], [ %54, %52 ]
  %71 = phi i32 [ %67, %58 ], [ %55, %52 ]
  %72 = udiv i32 %13, %23
  %73 = icmp ugt i32 %72, %0
  br i1 %73, label %84, label %74

74:                                               ; preds = %68
  %75 = sub i32 %0, %72
  %76 = tail call i32 @llvm.abs.i32(i32 %75, i1 false)
  %77 = sub i32 %0, %71
  %78 = tail call i32 @llvm.abs.i32(i32 %77, i1 false)
  %79 = icmp slt i32 %76, %78
  %80 = select i1 %79, i8 3, i8 %69
  %81 = trunc i32 %19 to i8
  %82 = select i1 %79, i8 %81, i8 %70
  %83 = select i1 %79, i32 %72, i32 %71
  br label %84

84:                                               ; preds = %74, %68
  %85 = phi i8 [ %80, %74 ], [ %69, %68 ]
  %86 = phi i8 [ %82, %74 ], [ %70, %68 ]
  %87 = phi i32 [ %83, %74 ], [ %71, %68 ]
  %88 = udiv i32 %14, %23
  %89 = icmp ugt i32 %88, %0
  br i1 %89, label %100, label %90

90:                                               ; preds = %84
  %91 = sub i32 %0, %88
  %92 = tail call i32 @llvm.abs.i32(i32 %91, i1 false)
  %93 = sub i32 %0, %87
  %94 = tail call i32 @llvm.abs.i32(i32 %93, i1 false)
  %95 = icmp slt i32 %92, %94
  %96 = select i1 %95, i8 4, i8 %85
  %97 = trunc i32 %19 to i8
  %98 = select i1 %95, i8 %97, i8 %86
  %99 = select i1 %95, i32 %88, i32 %87
  br label %100

100:                                              ; preds = %90, %84
  %101 = phi i8 [ %96, %90 ], [ %85, %84 ]
  %102 = phi i8 [ %98, %90 ], [ %86, %84 ]
  %103 = phi i32 [ %99, %90 ], [ %87, %84 ]
  %104 = udiv i32 %15, %23
  %105 = icmp ugt i32 %104, %0
  br i1 %105, label %116, label %106

106:                                              ; preds = %100
  %107 = sub i32 %0, %104
  %108 = tail call i32 @llvm.abs.i32(i32 %107, i1 false)
  %109 = sub i32 %0, %103
  %110 = tail call i32 @llvm.abs.i32(i32 %109, i1 false)
  %111 = icmp slt i32 %108, %110
  %112 = select i1 %111, i8 5, i8 %101
  %113 = trunc i32 %19 to i8
  %114 = select i1 %111, i8 %113, i8 %102
  %115 = select i1 %111, i32 %104, i32 %103
  br label %116

116:                                              ; preds = %106, %100
  %117 = phi i8 [ %112, %106 ], [ %101, %100 ]
  %118 = phi i8 [ %114, %106 ], [ %102, %100 ]
  %119 = phi i32 [ %115, %106 ], [ %103, %100 ]
  %120 = udiv i32 %16, %23
  %121 = icmp ugt i32 %120, %0
  br i1 %121, label %132, label %122

122:                                              ; preds = %116
  %123 = sub i32 %0, %120
  %124 = tail call i32 @llvm.abs.i32(i32 %123, i1 false)
  %125 = sub i32 %0, %119
  %126 = tail call i32 @llvm.abs.i32(i32 %125, i1 false)
  %127 = icmp slt i32 %124, %126
  %128 = select i1 %127, i8 6, i8 %117
  %129 = trunc i32 %19 to i8
  %130 = select i1 %127, i8 %129, i8 %118
  %131 = select i1 %127, i32 %120, i32 %119
  br label %132

132:                                              ; preds = %122, %116
  %133 = phi i8 [ %128, %122 ], [ %117, %116 ]
  %134 = phi i8 [ %130, %122 ], [ %118, %116 ]
  %135 = phi i32 [ %131, %122 ], [ %119, %116 ]
  %136 = udiv i32 %17, %23
  %137 = icmp ugt i32 %136, %0
  br i1 %137, label %148, label %138

138:                                              ; preds = %132
  %139 = sub i32 %0, %136
  %140 = tail call i32 @llvm.abs.i32(i32 %139, i1 false)
  %141 = sub i32 %0, %135
  %142 = tail call i32 @llvm.abs.i32(i32 %141, i1 false)
  %143 = icmp slt i32 %140, %142
  %144 = select i1 %143, i8 7, i8 %133
  %145 = trunc i32 %19 to i8
  %146 = select i1 %143, i8 %145, i8 %134
  %147 = select i1 %143, i32 %136, i32 %135
  br label %148

148:                                              ; preds = %138, %132
  %149 = phi i8 [ %144, %138 ], [ %133, %132 ]
  %150 = phi i8 [ %146, %138 ], [ %134, %132 ]
  %151 = phi i32 [ %147, %138 ], [ %135, %132 ]
  %152 = add nuw nsw i32 %19, 1
  %153 = icmp eq i32 %152, 16
  br i1 %153, label %154, label %18

154:                                              ; preds = %148
  %155 = icmp ne ptr %4, null
  %156 = icmp ne ptr %5, null
  %157 = and i1 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store i8 %150, ptr %4, align 1
  store i8 %149, ptr %5, align 1
  br label %159

159:                                              ; preds = %158, %154
  ret i32 %151
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
