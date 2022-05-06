; ModuleID = '/llk/IR/drivers/clk/rockchip/clk-muxgrf.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-muxgrf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.rockchip_muxgrf_clock = type { %struct.clk_hw, ptr, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"\013%s: regmap not available\0A\00", align 1
@__func__.rockchip_clk_register_muxgrf = private unnamed_addr constant [29 x i8] c"rockchip_clk_register_muxgrf\00", align 1
@rockchip_muxgrf_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @rockchip_muxgrf_set_parent, ptr @rockchip_muxgrf_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rockchip_clk_register_muxgrf(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #6
  %11 = getelementptr inbounds i8, ptr %10, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %11, i8 0, i32 12, i1 false), !annotation !8
  %12 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rockchip_clk_register_muxgrf) #7
  br label %33

15:                                               ; preds = %9
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 32) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %15
  store ptr %0, ptr %10, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 6
  store i32 %3, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 5
  store i8 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 2
  store ptr %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 1
  store ptr @rockchip_muxgrf_clk_ops, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_hw, ptr %17, i32 0, i32 2
  store ptr %10, ptr %24, align 8
  %25 = getelementptr inbounds %struct.rockchip_muxgrf_clock, ptr %17, i32 0, i32 1
  store ptr %4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rockchip_muxgrf_clock, ptr %17, i32 0, i32 2
  store i32 %5, ptr %26, align 8
  %27 = getelementptr inbounds %struct.rockchip_muxgrf_clock, ptr %17, i32 0, i32 3
  store i32 %6, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rockchip_muxgrf_clock, ptr %17, i32 0, i32 4
  store i32 %7, ptr %28, align 8
  %29 = getelementptr inbounds %struct.rockchip_muxgrf_clock, ptr %17, i32 0, i32 5
  store i32 %8, ptr %29, align 4
  %30 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %17) #6
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  call void @kfree(ptr noundef nonnull %17) #6
  br label %33

33:                                               ; preds = %32, %19, %15, %13
  %34 = phi ptr [ inttoptr (i32 -524 to ptr), %13 ], [ %30, %32 ], [ %30, %19 ], [ inttoptr (i32 -12 to ptr), %15 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #6
  ret ptr %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_muxgrf_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.rockchip_muxgrf_clock, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = shl nsw i32 -1, %4
  %6 = getelementptr inbounds %struct.rockchip_muxgrf_clock, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %4, %7
  %9 = sub i32 32, %8
  %10 = lshr i32 -1, %9
  %11 = and i32 %10, %5
  %12 = zext i8 %1 to i32
  %13 = shl i32 %12, %4
  %14 = getelementptr inbounds %struct.rockchip_muxgrf_clock, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.rockchip_muxgrf_clock, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rockchip_muxgrf_clock, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  br i1 %17, label %26, label %22

22:                                               ; preds = %2
  %23 = shl i32 %11, 16
  %24 = or i32 %23, %13
  %25 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %21, i32 noundef %24) #6
  br label %28

26:                                               ; preds = %2
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %21, i32 noundef %11, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %25, %22 ], [ %27, %26 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @rockchip_muxgrf_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.rockchip_muxgrf_clock, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = sub i32 32, %4
  %6 = lshr i32 -1, %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.rockchip_muxgrf_clock, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rockchip_muxgrf_clock, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %2) #6
  %12 = getelementptr inbounds %struct.rockchip_muxgrf_clock, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %2, align 4
  %15 = lshr i32 %14, %13
  %16 = and i32 %15, %6
  %17 = trunc i32 %16 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i8 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
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
!8 = !{!"auto-init"}
