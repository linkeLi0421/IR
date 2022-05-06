; ModuleID = '/llk/IR/drivers/clk/mediatek/clk-cpumux.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-cpumux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mtk_composite = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.mtk_clk_cpumux = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [36 x i8] c"\013Cannot find regmap for %pOF: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\013Failed to register clk %s: %ld\0A\00", align 1
@__UNIQUE_ID_file166 = internal constant [48 x i8] c"clk_cpumux.file=drivers/clk/mediatek/clk-cpumux\00", section ".modinfo", align 1
@__UNIQUE_ID_license167 = internal constant [23 x i8] c"clk_cpumux.license=GPL\00", section ".modinfo", align 1
@clk_cpumux_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_cpumux_set_parent, ptr @clk_cpumux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_file166, ptr @__UNIQUE_ID_license167], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_clk_register_cpumuxes(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.clk_init_data, align 4
  %6 = tail call ptr @device_node_to_regmap(ptr noundef %0) #6
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %65

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, ptr %5, i32 12
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  br label %19

16:                                               ; preds = %4
  %17 = ptrtoint ptr %6 to i32
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0, i32 noundef %17) #7
  br label %65

19:                                               ; preds = %62, %10
  %20 = phi i32 [ 0, %10 ], [ %63, %62 ]
  %21 = getelementptr %struct.mtk_composite, ptr %1, i32 %20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %11, i8 0, i32 12, i1 false) #6, !annotation !8
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 28) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #6
  br label %52

26:                                               ; preds = %19
  %27 = getelementptr %struct.mtk_composite, ptr %1, i32 %20, i32 1
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr %5, align 4
  store ptr @clk_cpumux_ops, ptr %12, align 4
  %29 = getelementptr %struct.mtk_composite, ptr %1, i32 %20, i32 2
  %30 = load ptr, ptr %29, align 4
  store ptr %30, ptr %13, align 4
  %31 = getelementptr %struct.mtk_composite, ptr %1, i32 %20, i32 14
  %32 = load i8, ptr %31, align 2
  store i8 %32, ptr %14, align 4
  %33 = getelementptr %struct.mtk_composite, ptr %1, i32 %20, i32 4
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %15, align 4
  %35 = getelementptr %struct.mtk_composite, ptr %1, i32 %20, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %23, i32 0, i32 2
  store i32 %36, ptr %37, align 8
  %38 = getelementptr %struct.mtk_composite, ptr %1, i32 %20, i32 8
  %39 = load i8, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %23, i32 0, i32 4
  store i8 %39, ptr %40, align 8
  %41 = getelementptr %struct.mtk_composite, ptr %1, i32 %20, i32 9
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nsw i32 -1, %43
  %45 = xor i32 %44, -1
  %46 = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %23, i32 0, i32 3
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %23, i32 0, i32 1
  store ptr %6, ptr %47, align 4
  %48 = getelementptr inbounds %struct.clk_hw, ptr %23, i32 0, i32 2
  store ptr %5, ptr %48, align 8
  %49 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %23) #6
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %58

51:                                               ; preds = %26
  call void @kfree(ptr noundef nonnull %23) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #6
  br label %52

52:                                               ; preds = %51, %25
  %53 = phi ptr [ inttoptr (i32 -12 to ptr), %25 ], [ %49, %51 ]
  %54 = getelementptr %struct.mtk_composite, ptr %1, i32 %20, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = ptrtoint ptr %53 to i32
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %55, i32 noundef %56) #7
  br label %62

58:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #6
  %59 = load ptr, ptr %3, align 4
  %60 = load i32, ptr %21, align 4
  %61 = getelementptr ptr, ptr %59, i32 %60
  store ptr %49, ptr %61, align 4
  br label %62

62:                                               ; preds = %58, %52
  %63 = add nuw nsw i32 %20, 1
  %64 = icmp eq i32 %63, %2
  br i1 %64, label %65, label %19

65:                                               ; preds = %62, %16, %8
  %66 = phi i32 [ %17, %16 ], [ 0, %8 ], [ 0, %62 ]
  ret i32 %66
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_cpumux_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = shl i32 %3, %6
  %8 = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, %6
  %11 = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %14, i32 noundef %10, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_cpumux_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %2) #6
  %8 = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %0, i32 0, i32 4
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = load i32, ptr %2, align 4
  %12 = lshr i32 %11, %10
  %13 = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %12
  %16 = trunc i32 %15 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i8 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
