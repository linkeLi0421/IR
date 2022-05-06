; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun8i_ui_scaler.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun8i_ui_scaler.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sun8i_mixer = type { %struct.sunxi_engine, ptr, ptr, ptr, ptr }
%struct.sunxi_engine = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.sun8i_mixer_cfg = type { i32, i32, i32, i32, i32, i8, i32 }

@.str = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/sun4i/sun8i_ui_scaler.c\00", align 1
@lan2coefftab16 = internal unnamed_addr constant [240 x i32] [i32 16384, i32 212990, i32 409340, i32 670715, i32 -15779845, i32 -32230405, i32 -48680965, i32 -48289285, i32 -64740100, i32 -81190915, i32 -80799235, i32 -80538370, i32 -80277505, i32 -80016896, i32 -63044096, i32 -29424896, i32 -16435196, i32 -16238591, i32 -16107776, i32 -15846145, i32 -15584515, i32 -32100355, i32 -48550660, i32 -48289540, i32 -48028675, i32 -64479235, i32 -64218115, i32 -47245570, i32 -47049985, i32 -13365505, i32 3541504, i32 37160704, i32 -16240121, i32 -16109051, i32 -15912701, i32 -32428031, i32 -32231936, i32 -31970305, i32 -31774210, i32 -31513090, i32 -31317250, i32 -31121410, i32 -30860290, i32 -13952770, i32 3020030, i32 19927295, i32 53546495, i32 87099904, i32 -16110071, i32 -15979001, i32 -15782651, i32 -15586301, i32 -32167166, i32 -31971071, i32 -31774976, i32 -14801665, i32 -14605825, i32 -14409985, i32 2497535, i32 19405055, i32 36312575, i32 53220095, i32 86839295, i32 120392704, i32 -15980021, i32 -15848951, i32 -15717881, i32 -15521531, i32 -15325181, i32 -15194366, i32 -14998271, i32 -14802176, i32 2105344, i32 19012864, i32 19209215, i32 52828415, i32 69735935, i32 86578175, i32 120197375, i32 153750784, i32 -15914996, i32 -15783926, i32 -15652856, i32 -15456506, i32 -15325691, i32 -15129341, i32 1778434, i32 1909249, i32 18816769, i32 19012864, i32 35855104, i32 69474304, i32 86382335, i32 120001535, i32 136777984, i32 170397184, i32 -15849971, i32 -15718901, i32 -15587831, i32 -15457016, i32 1385734, i32 1581829, i32 1778179, i32 18685954, i32 18816769, i32 35659009, i32 52566784, i32 69408769, i32 103028224, i32 136647424, i32 153489664, i32 187043584, i32 -15850226, i32 -15719156, i32 1123594, i32 1319944, i32 1450759, i32 1581574, i32 18489604, i32 18620419, i32 35528194, i32 52435969, i32 69278209, i32 86120449, i32 119739904, i32 136582144, i32 170136064, i32 203689984, i32 926734, i32 1057804, i32 1254154, i32 1319689, i32 1450504, i32 18358534, i32 18489349, i32 35331844, i32 52239619, i32 69082114, i32 85989889, i32 102832129, i32 119674369, i32 153293824, i32 170070784, i32 203624704, i32 991759, i32 1122829, i32 1253899, i32 1384714, i32 18227464, i32 18358279, i32 35200774, i32 52043269, i32 68951044, i32 85793539, i32 102701314, i32 119543809, i32 136386049, i32 169940224, i32 186782464, i32 220336384, i32 1057039, i32 1122574, i32 1253644, i32 18096139, i32 18226954, i32 35069704, i32 51912199, i32 52043014, i32 68951044, i32 85793284, i32 119347459, i32 136189954, i32 153032194, i32 186586369, i32 203494144, i32 236982784, i32 1056784, i32 1187854, i32 1253389, i32 18161419, i32 18226954, i32 35069449, i32 51977479, i32 68819974, i32 85662469, i32 102504964, i32 119347459, i32 136189699, i32 169809409, i32 186586369, i32 220205824, i32 236982784, i32 1056784, i32 1187599, i32 1318669, i32 18095884, i32 35003914, i32 51846409, i32 51911944, i32 68819974, i32 85662469, i32 102504964, i32 136059139, i32 152901379, i32 169743874, i32 203298049, i32 220140544, i32 236917249, i32 1121809, i32 1252879, i32 18030094, i32 34938124, i32 35003659, i32 51846154, i32 68688649, i32 85531399, i32 102373894, i32 119216389, i32 152770564, i32 169613059, i32 186455554, i32 203232514, i32 236786689, i32 253629184, i32 1121809, i32 1252624, i32 18095374, i32 34937869, i32 51780619, i32 68623114, i32 85400329, i32 102242824, i32 119085319, i32 135927814, i32 152705029, i32 169547524, i32 186390019, i32 219944194, i32 236786689, i32 253563649], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sun8i_ui_scaler_enable(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sun8i_mixer, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 134, i32 noundef 9, ptr noundef null) #2
  br label %26

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %5, i32 0, i32 5
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  %14 = shl i32 %1, 15
  %15 = add i32 %14, 131072
  %16 = shl i32 %6, 17
  %17 = add i32 %16, 131072
  %18 = sub i32 %1, %6
  %19 = shl i32 %18, 16
  %20 = add i32 %17, %19
  %21 = select i1 %13, i32 %20, i32 %15
  %22 = select i1 %2, i32 17, i32 0
  %23 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef %21, i32 noundef %22) #2
  br label %26

26:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sun8i_ui_scaler_setup(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = getelementptr inbounds %struct.sun8i_mixer, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, %1
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 156, i32 noundef 9, ptr noundef null) #2
  br label %85

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %12, i32 0, i32 5
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  %21 = shl i32 %1, 15
  %22 = add i32 %21, 131072
  %23 = shl i32 %13, 17
  %24 = add i32 %23, 131072
  %25 = sub i32 %1, %13
  %26 = shl i32 %25, 16
  %27 = add i32 %24, %26
  %28 = select i1 %20, i32 %27, i32 %22
  %29 = shl i32 %8, 4
  %30 = shl i32 %9, 4
  %31 = shl i32 %6, 4
  %32 = shl i32 %7, 4
  %33 = shl i32 %3, 16
  %34 = add i32 %33, -65536
  %35 = add i32 %2, -1
  %36 = or i32 %34, %35
  %37 = shl i32 %5, 16
  %38 = add i32 %37, -65536
  %39 = add i32 %4, -1
  %40 = or i32 %38, %39
  %41 = getelementptr inbounds %struct.sunxi_engine, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = or i32 %28, 64
  %44 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef %43, i32 noundef %40) #2
  %45 = load ptr, ptr %41, align 4
  %46 = or i32 %28, 128
  %47 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef %46, i32 noundef %36) #2
  %48 = load ptr, ptr %41, align 4
  %49 = or i32 %28, 136
  %50 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef %49, i32 noundef %31) #2
  %51 = load ptr, ptr %41, align 4
  %52 = or i32 %28, 140
  %53 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef %52, i32 noundef %32) #2
  %54 = load ptr, ptr %41, align 4
  %55 = or i32 %28, 144
  %56 = tail call i32 @regmap_write(ptr noundef %54, i32 noundef %55, i32 noundef %29) #2
  %57 = load ptr, ptr %41, align 4
  %58 = or i32 %28, 152
  %59 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef %58, i32 noundef %30) #2
  %60 = lshr i32 %31, 17
  %61 = lshr i32 %31, 20
  %62 = and i32 %60, 7
  switch i32 %61, label %69 [
    i32 0, label %70
    i32 1, label %63
    i32 2, label %64
    i32 3, label %67
    i32 4, label %68
  ]

63:                                               ; preds = %16
  br label %70

64:                                               ; preds = %16
  %65 = lshr i32 %62, 1
  %66 = or i32 %65, 8
  br label %70

67:                                               ; preds = %16
  br label %70

68:                                               ; preds = %16
  br label %70

69:                                               ; preds = %16
  br label %70

70:                                               ; preds = %69, %68, %67, %64, %63, %16
  %71 = phi i32 [ 14, %69 ], [ 13, %68 ], [ 12, %67 ], [ %66, %64 ], [ %62, %63 ], [ %61, %16 ]
  %72 = shl i32 %71, 4
  %73 = or i32 %28, 512
  br label %74

74:                                               ; preds = %74, %70
  %75 = phi i32 [ 0, %70 ], [ %83, %74 ]
  %76 = load ptr, ptr %41, align 4
  %77 = shl i32 %75, 2
  %78 = add nuw nsw i32 %73, %77
  %79 = add nuw nsw i32 %75, %72
  %80 = getelementptr [240 x i32], ptr @lan2coefftab16, i32 0, i32 %79
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 @regmap_write(ptr noundef %76, i32 noundef %78, i32 noundef %81) #2
  %83 = add nuw nsw i32 %75, 1
  %84 = icmp eq i32 %83, 16
  br i1 %84, label %85, label %74

85:                                               ; preds = %74, %15
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
