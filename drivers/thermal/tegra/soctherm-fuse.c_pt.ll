; ModuleID = '/llk/IR/drivers/thermal/tegra/soctherm-fuse.c_pt.bc'
source_filename = "../drivers/thermal/tegra/soctherm-fuse.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_soctherm_fuse = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tsensor_shared_calib = type { i32, i32, i32, i32 }
%struct.tegra_tsensor = type { ptr, i32, ptr, i32, i32, i32, ptr }
%struct.tegra_tsensor_group = type { ptr, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }
%struct.tegra_tsensor_configuration = type { i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author162 = internal constant [31 x i8] c"author=Wei Ni <wni@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description163 = internal constant [43 x i8] c"description=Tegra SOCTHERM fuse management\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author162, ptr @__UNIQUE_ID_description163, ptr @__UNIQUE_ID_license164], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_calc_shared_calib(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @tegra_fuse_readl(i32 noundef 384, ptr noundef nonnull %3) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 4
  %8 = load i32, ptr %0, align 4
  %9 = and i32 %8, %7
  %10 = getelementptr inbounds %struct.tegra_soctherm_fuse, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %9, %11
  store i32 %12, ptr %1, align 4
  %13 = getelementptr inbounds %struct.tegra_soctherm_fuse, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %7
  %16 = getelementptr inbounds %struct.tegra_soctherm_fuse, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %15, %17
  %19 = getelementptr inbounds %struct.tsensor_shared_calib, ptr %1, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tegra_soctherm_fuse, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, %7
  %23 = getelementptr inbounds %struct.tegra_soctherm_fuse, ptr %0, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %22, %24
  %26 = shl i32 %25, 27
  %27 = ashr exact i32 %26, 27
  %28 = getelementptr inbounds %struct.tegra_soctherm_fuse, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %6
  %32 = call i32 @tegra_fuse_readl(i32 noundef %29, ptr noundef nonnull %3) #3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32, ptr %3, align 4
  br label %36

36:                                               ; preds = %34, %6
  %37 = phi i32 [ %35, %34 ], [ %7, %6 ]
  %38 = shl i32 %37, 26
  %39 = ashr exact i32 %38, 26
  %40 = add nsw i32 %39, 50
  %41 = getelementptr inbounds %struct.tsensor_shared_calib, ptr %1, i32 0, i32 2
  store i32 %40, ptr %41, align 4
  %42 = add nsw i32 %27, 210
  %43 = getelementptr inbounds %struct.tsensor_shared_calib, ptr %1, i32 0, i32 3
  store i32 %42, ptr %43, align 4
  br label %44

44:                                               ; preds = %36, %31, %2
  %45 = phi i32 [ 0, %36 ], [ %4, %2 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret i32 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_fuse_readl(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_calc_tsensor_calib(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = call i32 @tegra_fuse_readl(i32 noundef %8, ptr noundef nonnull %4) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %92

11:                                               ; preds = %3
  %12 = load i32, ptr %1, align 4
  %13 = shl i32 %12, 6
  %14 = load i32, ptr %4, align 4
  %15 = shl i32 %14, 19
  %16 = ashr exact i32 %15, 19
  %17 = add i32 %16, %13
  %18 = lshr i32 %14, 13
  %19 = and i32 %18, 8191
  store i32 %19, ptr %4, align 4
  %20 = getelementptr inbounds %struct.tsensor_shared_calib, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 5
  %23 = shl nuw i32 %19, 19
  %24 = ashr exact i32 %23, 19
  %25 = add i32 %24, %22
  %26 = sub i32 %25, %17
  %27 = getelementptr inbounds %struct.tsensor_shared_calib, ptr %1, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.tsensor_shared_calib, ptr %1, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %28, %30
  %32 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %6, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.tegra_tsensor_configuration, ptr %35, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = mul i32 %37, %33
  %39 = getelementptr inbounds %struct.tegra_tsensor_configuration, ptr %35, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %6, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = sext i32 %31 to i64
  %44 = sext i32 %38 to i64
  %45 = shl nsw i64 %43, 30
  %46 = mul i64 %45, %44
  %47 = or i64 %46, 1
  %48 = shl i32 %26, 1
  %49 = mul i32 %48, %40
  %50 = mul i32 %49, %42
  %51 = sext i32 %50 to i64
  %52 = call i64 @div64_s64(i64 noundef %47, i64 noundef %51) #3
  %53 = sext i32 %25 to i64
  %54 = load i32, ptr %29, align 4
  %55 = zext i32 %54 to i64
  %56 = mul nsw i64 %55, %53
  %57 = sext i32 %17 to i64
  %58 = load i32, ptr %27, align 4
  %59 = zext i32 %58 to i64
  %60 = mul nsw i64 %59, %57
  %61 = sub i64 %56, %60
  %62 = shl i64 %61, 17
  %63 = or i64 %62, 1
  %64 = sext i32 %48 to i64
  %65 = call i64 @div64_s64(i64 noundef %63, i64 noundef %64) #3
  %66 = shl i64 %52, 32
  %67 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = sext i32 %68 to i64
  %70 = ashr exact i64 %66, 31
  %71 = and i64 %70, -131072
  %72 = mul i64 %71, %69
  %73 = or i64 %72, 1
  %74 = call i64 @div64_s64(i64 noundef %73, i64 noundef 2000000) #3
  %75 = trunc i64 %74 to i32
  %76 = and i32 %75, -65536
  %77 = shl i64 %65, 32
  %78 = ashr i64 %77, 48
  %79 = load i32, ptr %67, align 4
  %80 = sext i32 %79 to i64
  %81 = mul nsw i64 %78, %80
  %82 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 5
  %83 = load i32, ptr %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %81, %84
  %86 = shl i64 %85, 17
  %87 = or i64 %86, 1
  %88 = call i64 @div64_s64(i64 noundef %87, i64 noundef 2000000) #3
  %89 = trunc i64 %88 to i32
  %90 = lshr i32 %89, 16
  %91 = or i32 %90, %76
  store i32 %91, ptr %2, align 4
  br label %92

92:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{!"auto-init"}
