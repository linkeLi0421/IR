; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun8i_csc.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun8i_csc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sun8i_mixer = type { %struct.sunxi_engine, ptr, ptr, ptr, ptr }
%struct.sunxi_engine = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.sun8i_mixer_cfg = type { i32, i32, i32, i32, i32, i8, i32 }

@ccsc_base = internal unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 696400, i32 1024080], [2 x i32] [i32 655360, i32 983040]], align 4
@yuv2rgb_de3 = internal constant [2 x [3 x [12 x i32]]] [[3 x [12 x i32]] [[12 x i32] [i32 152618, i32 0, i32 209194, i32 -4194304, i32 152618, i32 -51349, i32 -106557, i32 -33554432, i32 152618, i32 264402, i32 0, i32 -33554432], [12 x i32] [i32 152618, i32 0, i32 234978, i32 -4194304, i32 152618, i32 -27950, i32 -69849, i32 -33554432, i32 152618, i32 276876, i32 0, i32 -33554432], [12 x i32] [i32 152618, i32 0, i32 220027, i32 -4194304, i32 152618, i32 -24553, i32 -85252, i32 -33554432, i32 152618, i32 280726, i32 0, i32 -33554432]], [3 x [12 x i32]] [[12 x i32] [i32 131072, i32 0, i32 183762, i32 0, i32 131072, i32 -45106, i32 -93603, i32 -33554432, i32 131072, i32 232259, i32 0, i32 -33554432], [12 x i32] [i32 131072, i32 0, i32 206412, i32 0, i32 131072, i32 -24552, i32 -61357, i32 -33554432, i32 131072, i32 243217, i32 0, i32 -33554432], [12 x i32] [i32 131072, i32 0, i32 193278, i32 0, i32 131072, i32 -21568, i32 -74888, i32 -33554432, i32 131072, i32 246598, i32 0, i32 -33554432]]], align 4
@.str = private unnamed_addr constant [35 x i8] c"\014[drm] Wrong CSC mode specified.\0A\00", align 1
@yuv2rgb = internal constant [2 x [2 x [12 x i32]]] [[2 x [12 x i32]] [[12 x i32] [i32 1192, i32 0, i32 1634, i32 -228271, i32 1192, i32 -401, i32 -832, i32 138829, i32 1192, i32 2065, i32 0, i32 -283479], [12 x i32] [i32 1192, i32 0, i32 1835, i32 -254055, i32 1192, i32 -218, i32 -545, i32 78723, i32 1192, i32 2163, i32 0, i32 -295953]], [2 x [12 x i32]] [[12 x i32] [i32 1024, i32 0, i32 1435, i32 -183762, i32 1024, i32 -352, i32 -731, i32 138709, i32 1024, i32 1814, i32 0, i32 -232259], [12 x i32] [i32 1024, i32 0, i32 1612, i32 -206412, i32 1024, i32 -191, i32 -479, i32 85910, i32 1024, i32 1900, i32 0, i32 -243217]]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sun8i_csc_set_ccsc_coefficients(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.sun8i_mixer, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %7, i32 0, i32 5
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %71, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr [2 x [3 x [12 x i32]]], ptr @yuv2rgb_de3, i32 0, i32 %4, i32 %3
  switch i32 %2, label %69 [
    i32 1, label %16
    i32 2, label %20
  ]

16:                                               ; preds = %12
  %17 = mul i32 %1, 48
  %18 = add i32 %17, 2320
  %19 = tail call i32 @regmap_bulk_write(ptr noundef %14, i32 noundef %18, ptr noundef %15, i32 noundef 12) #3
  br label %132

20:                                               ; preds = %12
  %21 = mul i32 %1, 48
  %22 = add i32 %21, 2320
  %23 = load i32, ptr %15, align 4
  %24 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %22, i32 noundef %23) #3
  %25 = add i32 %21, 2328
  %26 = getelementptr i32, ptr %15, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %25, i32 noundef %27) #3
  %29 = add i32 %21, 2324
  %30 = getelementptr i32, ptr %15, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %29, i32 noundef %31) #3
  %33 = add i32 %21, 2332
  %34 = getelementptr i32, ptr %15, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %33, i32 noundef %35) #3
  %37 = add i32 %21, 2336
  %38 = getelementptr i32, ptr %15, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %37, i32 noundef %39) #3
  %41 = add i32 %21, 2344
  %42 = getelementptr i32, ptr %15, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %41, i32 noundef %43) #3
  %45 = add i32 %21, 2340
  %46 = getelementptr i32, ptr %15, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %45, i32 noundef %47) #3
  %49 = add i32 %21, 2348
  %50 = getelementptr i32, ptr %15, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %49, i32 noundef %51) #3
  %53 = add i32 %21, 2352
  %54 = getelementptr i32, ptr %15, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %53, i32 noundef %55) #3
  %57 = add i32 %21, 2360
  %58 = getelementptr i32, ptr %15, i32 9
  %59 = load i32, ptr %58, align 4
  %60 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %57, i32 noundef %59) #3
  %61 = add i32 %21, 2356
  %62 = getelementptr i32, ptr %15, i32 10
  %63 = load i32, ptr %62, align 4
  %64 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %61, i32 noundef %63) #3
  %65 = add i32 %21, 2364
  %66 = getelementptr i32, ptr %15, i32 11
  %67 = load i32, ptr %66, align 4
  %68 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %65, i32 noundef %67) #3
  br label %132

69:                                               ; preds = %12
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #4
  br label %132

71:                                               ; preds = %5
  %72 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %7, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr [2 x [2 x i32]], ptr @ccsc_base, i32 0, i32 %73, i32 %1
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr [2 x [2 x [12 x i32]]], ptr @yuv2rgb, i32 0, i32 %4, i32 %3
  switch i32 %2, label %130 [
    i32 1, label %79
    i32 2, label %82
  ]

79:                                               ; preds = %71
  %80 = add i32 %75, 16
  %81 = tail call i32 @regmap_bulk_write(ptr noundef %77, i32 noundef %80, ptr noundef %78, i32 noundef 12) #3
  br label %132

82:                                               ; preds = %71
  %83 = add i32 %75, 16
  %84 = load i32, ptr %78, align 4
  %85 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %83, i32 noundef %84) #3
  %86 = add i32 %75, 24
  %87 = getelementptr i32, ptr %78, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %86, i32 noundef %88) #3
  %90 = add i32 %75, 20
  %91 = getelementptr i32, ptr %78, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %90, i32 noundef %92) #3
  %94 = add i32 %75, 28
  %95 = getelementptr i32, ptr %78, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %94, i32 noundef %96) #3
  %98 = add i32 %75, 32
  %99 = getelementptr i32, ptr %78, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %98, i32 noundef %100) #3
  %102 = add i32 %75, 40
  %103 = getelementptr i32, ptr %78, i32 5
  %104 = load i32, ptr %103, align 4
  %105 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %102, i32 noundef %104) #3
  %106 = add i32 %75, 36
  %107 = getelementptr i32, ptr %78, i32 6
  %108 = load i32, ptr %107, align 4
  %109 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %106, i32 noundef %108) #3
  %110 = add i32 %75, 44
  %111 = getelementptr i32, ptr %78, i32 7
  %112 = load i32, ptr %111, align 4
  %113 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %110, i32 noundef %112) #3
  %114 = add i32 %75, 48
  %115 = getelementptr i32, ptr %78, i32 8
  %116 = load i32, ptr %115, align 4
  %117 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %114, i32 noundef %116) #3
  %118 = add i32 %75, 56
  %119 = getelementptr i32, ptr %78, i32 9
  %120 = load i32, ptr %119, align 4
  %121 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %118, i32 noundef %120) #3
  %122 = add i32 %75, 52
  %123 = getelementptr i32, ptr %78, i32 10
  %124 = load i32, ptr %123, align 4
  %125 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %122, i32 noundef %124) #3
  %126 = add i32 %75, 60
  %127 = getelementptr i32, ptr %78, i32 11
  %128 = load i32, ptr %127, align 4
  %129 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %126, i32 noundef %128) #3
  br label %132

130:                                              ; preds = %71
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #4
  br label %132

132:                                              ; preds = %130, %82, %79, %69, %20, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sun8i_csc_enable_ccsc(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sun8i_mixer, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %5, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = shl nuw i32 1, %1
  %14 = select i1 %2, i32 %13, i32 0
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 2304, i32 noundef %13, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %25

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %5, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr [2 x [2 x i32]], ptr @ccsc_base, i32 0, i32 %18, i32 %1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = zext i1 %2 to i32
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %20, i32 noundef 1, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %25

25:                                               ; preds = %16, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

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
