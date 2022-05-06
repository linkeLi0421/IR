; ModuleID = '/llk/IR/arch/arm/mach-imx/anatop.c_pt.bc'
source_filename = "../arch/arm/mach-imx/anatop.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@.str = private unnamed_addr constant [17 x i8] c"fsl,imx6q-anatop\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"arch/arm/mach-imx/anatop.c\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"fsl,imx6sl-anatop\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"fsl,imx7d-anatop\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"fsl,imx6ul-src\00", align 1
@anatop = internal unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"\013%s: failed to find imx6q-anatop regmap!\0A\00", align 1
@__func__.imx_anatop_init = private unnamed_addr constant [16 x i8] c"imx_anatop_init\00", align 1
@__mxc_cpu_type = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_anatop_pre_suspend() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = tail call i32 @imx_mmdc_get_ddr_type() #5
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load ptr, ptr @anatop, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 308, i32 noundef 8) #5
  br label %16

7:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #5
  store i32 0, ptr %1, align 4, !annotation !8
  %8 = load ptr, ptr @anatop, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 336, ptr noundef nonnull %1) #5
  %10 = load i32, ptr %1, align 4
  %11 = and i32 %10, 4096
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 308, i32 312
  %14 = load ptr, ptr @anatop, align 4
  %15 = call i32 @regmap_write(ptr noundef %14, i32 noundef %13, i32 noundef 262144) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #5
  br label %16

16:                                               ; preds = %7, %4
  %17 = load ptr, ptr @anatop, align 4
  %18 = call i32 @regmap_write(ptr noundef %17, i32 noundef 324, i32 noundef 536870912) #5
  %19 = load i32, ptr @__mxc_cpu_type, align 4
  %20 = icmp eq i32 %19, 96
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load ptr, ptr @anatop, align 4
  %23 = call i32 @regmap_write(ptr noundef %22, i32 noundef 340, i32 noundef 8192) #5
  br label %24

24:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_mmdc_get_ddr_type() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_anatop_post_resume() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = tail call i32 @imx_mmdc_get_ddr_type() #5
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load ptr, ptr @anatop, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 312, i32 noundef 8) #5
  br label %12

7:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #5
  store i32 0, ptr %1, align 4, !annotation !8
  %8 = load ptr, ptr @anatop, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 336, ptr noundef nonnull %1) #5
  %10 = load ptr, ptr @anatop, align 4
  %11 = call i32 @regmap_write(ptr noundef %10, i32 noundef 312, i32 noundef 262144) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #5
  br label %12

12:                                               ; preds = %7, %4
  %13 = load ptr, ptr @anatop, align 4
  %14 = call i32 @regmap_write(ptr noundef %13, i32 noundef 328, i32 noundef 536870912) #5
  %15 = load i32, ptr @__mxc_cpu_type, align 4
  %16 = icmp eq i32 %15, 96
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load ptr, ptr @anatop, align 4
  %19 = call i32 @regmap_write(ptr noundef %18, i32 noundef 344, i32 noundef 8192) #5
  br label %20

20:                                               ; preds = %17, %12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @imx_init_revision_from_anatop() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #5
  %2 = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !9

4:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 105, i32 noundef 9, ptr noundef null) #5
  br label %5

5:                                                ; preds = %4, %0
  %6 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.2) #5
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 608, i32 640
  %9 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.3) #5
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 %8, i32 2048
  %12 = getelementptr i8, ptr %2, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !10
  tail call void @iounmap(ptr noundef %2) #5
  %14 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.3) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  %17 = and i32 %13, 255
  br label %37

18:                                               ; preds = %5
  %19 = and i32 %13, 15
  %20 = lshr i32 %13, 4
  %21 = and i32 %20, 240
  %22 = add nuw nsw i32 %21, 16
  %23 = or i32 %22, %19
  %24 = and i32 %13, -65536
  %25 = icmp eq i32 %24, 6619136
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4) #5
  %28 = tail call ptr @of_iomap(ptr noundef %27, i32 noundef 0) #5
  tail call void @of_node_put(ptr noundef %27) #5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !9

30:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 141, i32 noundef 9, ptr noundef null) #5
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr i8, ptr %28, i32 28
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !10
  tail call void @iounmap(ptr noundef %28) #5
  %34 = and i32 %33, 64
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 %13, i32 7012352
  br label %37

37:                                               ; preds = %31, %18, %16
  %38 = phi i32 [ %13, %16 ], [ %36, %31 ], [ %13, %18 ]
  %39 = phi i32 [ %17, %16 ], [ %23, %31 ], [ %23, %18 ]
  tail call void @of_node_put(ptr noundef %1) #5
  %40 = lshr i32 %38, 16
  %41 = and i32 %40, 255
  tail call void @mxc_set_cpu_type(i32 noundef %41) #5
  tail call void @imx_set_soc_revision(i32 noundef %39) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxc_set_cpu_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_set_soc_revision(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @imx_anatop_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str) #5
  store ptr %1, ptr @anatop, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.imx_anatop_init) #6
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 363776}
