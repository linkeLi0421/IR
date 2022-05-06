; ModuleID = '/llk/IR/arch/arm/mach-omap2/clock.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_clk_features = type { i32, i32, i32, i32, i32, i8, i8 }

@omap_clk_ll_ops = dso_local global %struct.ti_clk_ll_ops { ptr null, ptr null, ptr null, ptr @clkdm_clk_enable, ptr @clkdm_clk_disable, ptr @clkdm_lookup, ptr @omap_cm_wait_module_ready, ptr @cm_split_idlest_reg }, align 4
@cpu_mask = dso_local local_unnamed_addr global i16 0, align 2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_clk_enable(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_clk_disable(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_cm_wait_module_ready(i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext, i8 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cm_split_idlest_reg(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap2_clk_setup_ll_ops() local_unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 @ti_clk_setup_ll_ops(ptr noundef nonnull @omap_clk_ll_ops) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_setup_ll_ops(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ti_clk_init_features() local_unnamed_addr #1 section ".init.text" {
  %1 = alloca %struct.ti_clk_features, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1, i8 0, i32 24, i1 false)
  %2 = tail call i32 @omap_rev() #4
  %3 = and i32 %2, -65536
  %4 = icmp eq i32 %3, 875560960
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.ti_clk_features, ptr %1, i32 0, i32 3
  store i32 2100000, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ti_clk_features, ptr %1, i32 0, i32 4
  store i32 7500000, ptr %7, align 4
  br label %8

8:                                                ; preds = %5, %0
  %9 = phi i32 [ 750000, %5 ], [ 32000, %0 ]
  %10 = phi i32 [ 21000000, %5 ], [ 52000000, %0 ]
  %11 = getelementptr inbounds %struct.ti_clk_features, ptr %1, i32 0, i32 1
  store i32 %9, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ti_clk_features, ptr %1, i32 0, i32 2
  store i32 %10, ptr %12, align 4
  %13 = tail call i32 @omap_rev() #4
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, 52
  br i1 %15, label %36, label %16

16:                                               ; preds = %8
  %17 = tail call i32 @omap_rev() #4
  %18 = and i32 %17, -16777216
  %19 = icmp eq i32 %18, 855638016
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @omap_rev() #4
  %22 = and i32 %21, 255
  %23 = icmp eq i32 %22, 68
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @omap_rev() #4
  %26 = and i32 %25, -16777216
  %27 = icmp eq i32 %26, 1124073472
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @omap_rev() #4
  %30 = and i32 %29, 255
  %31 = icmp eq i32 %30, 84
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @omap_rev() #4
  %34 = and i32 %33, -16777216
  %35 = icmp eq i32 %34, 117440512
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %28, %24, %20, %16, %8
  %37 = phi i8 [ 96, %8 ], [ 112, %32 ], [ 112, %28 ], [ 112, %24 ], [ 112, %20 ], [ 112, %16 ]
  %38 = getelementptr inbounds %struct.ti_clk_features, ptr %1, i32 0, i32 5
  store i8 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = tail call i32 @omap_rev() #4
  %41 = and i32 %40, -1048576
  %42 = icmp eq i32 %41, 875560960
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, ptr %1, align 4
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ 1, %43 ], [ 0, %39 ]
  %46 = tail call i32 @omap_type() #4
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = or i32 %45, 32
  store i32 %49, ptr %1, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i32 [ %49, %48 ], [ %45, %44 ]
  %52 = tail call i32 @omap_rev() #4
  %53 = and i32 %52, 255
  %54 = icmp eq i32 %53, 52
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.ti_clk_features, ptr %1, i32 0, i32 6
  store i8 1, ptr %56, align 1
  br label %57

57:                                               ; preds = %55, %50
  %58 = tail call i32 @omap_rev() #4
  %59 = icmp eq i32 %58, 875561012
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = or i32 %51, 2
  store i32 %61, ptr %1, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i32 [ %61, %60 ], [ %51, %57 ]
  %64 = tail call i32 @omap_rev() #4
  %65 = and i32 %64, 255
  %66 = icmp eq i32 %65, 84
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = tail call i32 @omap_rev() #4
  %69 = and i32 %68, -16777216
  %70 = icmp eq i32 %69, 117440512
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %62
  %72 = or i32 %63, 8
  store i32 %72, ptr %1, align 4
  br label %73

73:                                               ; preds = %71, %67
  call void @ti_clk_setup_features(ptr noundef nonnull %1) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_setup_features(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
