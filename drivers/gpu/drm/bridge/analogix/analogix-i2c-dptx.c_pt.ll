; ModuleID = '/llk/IR/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_anx_dp_aux_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22anx_dp_aux_transfer\22\09\09\09\09\09"
module asm "__kstrtabns_anx_dp_aux_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }

@.str = private unnamed_addr constant [52 x i8] c"drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c\00", align 1
@__kstrtab_anx_dp_aux_transfer = external dso_local constant [0 x i8], align 1
@__kstrtabns_anx_dp_aux_transfer = external dso_local constant [0 x i8], align 1
@__ksymtab_anx_dp_aux_transfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @anx_dp_aux_transfer to i32), ptr @__kstrtab_anx_dp_aux_transfer, ptr @__kstrtabns_anx_dp_aux_transfer }, section "___ksymtab_gpl+anx_dp_aux_transfer", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [33 x i8] c"Timed out waiting AUX to finish\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to read from AUX channel: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to wait for AUX channel (status: %02x)\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_anx_dp_aux_transfer], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @anx_dp_aux_transfer(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 16
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef null) #3
  br label %106

13:                                               ; preds = %2
  %14 = load i8, ptr %6, align 4
  %15 = icmp eq i32 %10, 0
  %16 = trunc i32 %10 to i8
  %17 = shl i8 %16, 4
  %18 = add i8 %17, -16
  %19 = select i1 %15, i8 0, i8 %18
  %20 = or i8 %14, %19
  %21 = select i1 %15, i32 3, i32 1
  %22 = xor i1 %15, true
  %23 = and i8 %14, 1
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = tail call i32 @regmap_bulk_write(ptr noundef %0, i32 noundef 240, ptr noundef %8, i32 noundef %10) #3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %106

29:                                               ; preds = %26, %13
  %30 = load i32, ptr %1, align 4
  %31 = and i32 %30, 255
  %32 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 230, i32 noundef %31) #3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %106

34:                                               ; preds = %29
  %35 = lshr i32 %30, 8
  %36 = and i32 %35, 255
  %37 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 231, i32 noundef %36) #3
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %106

39:                                               ; preds = %34
  %40 = lshr i32 %30, 16
  %41 = and i32 %40, 15
  %42 = tail call i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef 232, i32 noundef 15, i32 noundef %41, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %106

44:                                               ; preds = %39
  %45 = zext i8 %20 to i32
  %46 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 229, i32 noundef %45) #3
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %106

48:                                               ; preds = %44
  %49 = tail call i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef 233, i32 noundef 3, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %106

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  store i32 0, ptr %5, align 4, !annotation !9
  %52 = load volatile i32, ptr @jiffies, align 64
  %53 = add i32 %52, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !annotation !9
  %54 = call i32 @regmap_read(ptr noundef %0, i32 noundef 233, ptr noundef nonnull %4) #3
  %55 = icmp sgt i32 %54, -1
  %56 = load i32, ptr %4, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %55, i1 %58, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  br i1 %59, label %79, label %60

60:                                               ; preds = %72, %51
  %61 = load volatile i32, ptr @jiffies, align 64
  %62 = sub i32 %53, %61
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !9
  %65 = call i32 @regmap_read(ptr noundef %0, i32 noundef 233, ptr noundef nonnull %3) #3
  %66 = icmp sgt i32 %65, -1
  %67 = load i32, ptr %3, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %66, i1 %69, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  br i1 %70, label %79, label %71

71:                                               ; preds = %64
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #3
  br label %88

72:                                               ; preds = %60
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !annotation !9
  %73 = call i32 @regmap_read(ptr noundef %0, i32 noundef 233, ptr noundef nonnull %4) #3
  %74 = icmp sgt i32 %73, -1
  %75 = load i32, ptr %4, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %74, i1 %77, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  br i1 %78, label %79, label %60

79:                                               ; preds = %72, %64, %51
  %80 = call i32 @regmap_read(ptr noundef %0, i32 noundef 224, ptr noundef nonnull %5) #3
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %80) #3
  br label %88

83:                                               ; preds = %79
  %84 = load i32, ptr %5, align 4
  %85 = and i32 %84, 15
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %84) #3
  br label %88

88:                                               ; preds = %87, %82, %71
  %89 = phi i32 [ -110, %71 ], [ -110, %87 ], [ %80, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  br label %106

90:                                               ; preds = %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  %91 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 2
  store i8 0, ptr %91, align 1
  %92 = load i32, ptr %9, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  %95 = load i8, ptr %6, align 4
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = call i32 @regmap_bulk_read(ptr noundef %0, i32 noundef 240, ptr noundef %8, i32 noundef %92) #3
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98, %94, %90
  %102 = call i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef 233, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, ptr %9, align 4
  br label %106

106:                                              ; preds = %104, %101, %98, %88, %48, %44, %39, %34, %29, %26, %12
  %107 = phi i32 [ -7, %12 ], [ %105, %104 ], [ %27, %26 ], [ %42, %39 ], [ %46, %44 ], [ %49, %48 ], [ %99, %98 ], [ %102, %101 ], [ %89, %88 ], [ %37, %34 ], [ %32, %29 ]
  ret i32 %107
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
