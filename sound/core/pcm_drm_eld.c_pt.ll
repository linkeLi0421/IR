; ModuleID = '/llk/IR/sound/core/pcm_drm_eld.c_pt.bc'
source_filename = "../sound/core/pcm_drm_eld.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_constraint_eld:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_constraint_eld\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_constraint_eld:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__kstrtab_snd_pcm_hw_constraint_eld = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_constraint_eld = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_constraint_eld = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_constraint_eld to i32), ptr @__kstrtab_snd_pcm_hw_constraint_eld, ptr @__kstrtabns_snd_pcm_hw_constraint_eld }, section "___ksymtab_gpl+snd_pcm_hw_constraint_eld", align 4
@eld_rates = internal constant [7 x i32] [i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], align 4
@__const.eld_limit_channels.t = private unnamed_addr constant { i32, i32, i8, [3 x i8] } { i32 1, i32 2, i8 4, [3 x i8] zeroinitializer }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_snd_pcm_hw_constraint_eld], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_hw_constraint_eld(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %0, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @eld_limit_rates, ptr noundef %1, i32 noundef 10, i32 noundef -1) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %0, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @eld_limit_channels, ptr noundef %1, i32 noundef 11, i32 noundef -1) #5
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ %3, %2 ]
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eld_limit_rates(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr %6, align 1
  %8 = lshr i8 %7, 3
  %9 = trunc i8 %8 to i5
  switch i5 %9, label %48 [
    i5 -1, label %10
    i5 2, label %10
  ]

10:                                               ; preds = %2, %2
  %11 = getelementptr i8, ptr %6, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 31
  %14 = icmp ugt i8 %13, 16
  br i1 %14, label %48, label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i8 %13, 20
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %6, i32 %17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %6, i32 5
  %22 = load i8, ptr %21, align 1
  %23 = icmp ult i8 %22, 16
  br i1 %23, label %48, label %24

24:                                               ; preds = %20
  %25 = lshr i8 %22, 4
  %26 = zext i8 %25 to i32
  %27 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %43, %24
  %30 = phi ptr [ %18, %24 ], [ %46, %43 ]
  %31 = phi i32 [ %26, %24 ], [ %45, %43 ]
  %32 = phi i32 [ 7, %24 ], [ %44, %43 ]
  %33 = load i8, ptr %30, align 1
  %34 = and i8 %33, 7
  %35 = add nuw nsw i8 %34, 1
  %36 = zext i8 %35 to i32
  %37 = icmp ugt i32 %28, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = getelementptr i8, ptr %30, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %32, %41
  br label %43

43:                                               ; preds = %38, %29
  %44 = phi i32 [ %42, %38 ], [ %32, %29 ]
  %45 = add nsw i32 %31, -1
  %46 = getelementptr i8, ptr %30, i32 3
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %48, label %29

48:                                               ; preds = %43, %20, %15, %10, %2
  %49 = phi i32 [ 7, %15 ], [ 7, %2 ], [ 7, %10 ], [ 7, %20 ], [ %44, %43 ]
  %50 = add i32 %4, -8
  %51 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %50
  %52 = tail call i32 @snd_interval_list(ptr noundef %51, i32 noundef 7, ptr noundef nonnull @eld_rates, i32 noundef %49) #5
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eld_limit_channels(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.snd_interval, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const.eld_limit_channels.t, i32 12, i1 false)
  %6 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 1
  %9 = lshr i8 %8, 3
  %10 = trunc i8 %9 to i5
  switch i5 %10, label %112 [
    i5 -1, label %11
    i5 2, label %11
  ]

11:                                               ; preds = %2, %2
  %12 = getelementptr i8, ptr %7, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 31
  %15 = icmp ugt i8 %14, 16
  br i1 %15, label %112, label %16

16:                                               ; preds = %11
  %17 = add nuw nsw i8 %14, 20
  %18 = zext i8 %17 to i32
  %19 = getelementptr i8, ptr %7, i32 %18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %112, label %21

21:                                               ; preds = %16
  %22 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3, i32 1
  %25 = icmp ugt i32 %23, 32000
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %24, align 4
  %28 = icmp ult i32 %27, 32000
  br i1 %28, label %83, label %33

29:                                               ; preds = %21
  %30 = icmp ugt i32 %23, 44100
  br i1 %30, label %39, label %31

31:                                               ; preds = %29
  %32 = load i32, ptr %24, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi i32 [ %32, %31 ], [ %27, %26 ]
  %35 = phi i32 [ 0, %31 ], [ 1, %26 ]
  %36 = icmp ult i32 %34, 44100
  %37 = or i32 %35, 2
  %38 = select i1 %36, i32 %35, i32 %37
  br label %41

39:                                               ; preds = %29
  %40 = icmp ugt i32 %23, 48000
  br i1 %40, label %47, label %41

41:                                               ; preds = %39, %33
  %42 = phi i32 [ 0, %39 ], [ %38, %33 ]
  %43 = load i32, ptr %24, align 4
  %44 = icmp ult i32 %43, 48000
  br i1 %44, label %83, label %45

45:                                               ; preds = %41
  %46 = or i32 %42, 4
  br label %51

47:                                               ; preds = %39
  %48 = icmp ugt i32 %23, 88200
  br i1 %48, label %57, label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %24, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i32 [ %50, %49 ], [ %43, %45 ]
  %53 = phi i32 [ 0, %49 ], [ %46, %45 ]
  %54 = icmp ult i32 %52, 88200
  %55 = or i32 %53, 8
  %56 = select i1 %54, i32 %53, i32 %55
  br label %59

57:                                               ; preds = %47
  %58 = icmp ugt i32 %23, 96000
  br i1 %58, label %65, label %59

59:                                               ; preds = %57, %51
  %60 = phi i32 [ 0, %57 ], [ %56, %51 ]
  %61 = load i32, ptr %24, align 4
  %62 = icmp ult i32 %61, 96000
  br i1 %62, label %83, label %63

63:                                               ; preds = %59
  %64 = or i32 %60, 16
  br label %69

65:                                               ; preds = %57
  %66 = icmp ugt i32 %23, 176400
  br i1 %66, label %75, label %67

67:                                               ; preds = %65
  %68 = load i32, ptr %24, align 4
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi i32 [ %68, %67 ], [ %61, %63 ]
  %71 = phi i32 [ 0, %67 ], [ %64, %63 ]
  %72 = icmp ult i32 %70, 176400
  %73 = or i32 %71, 32
  %74 = select i1 %72, i32 %71, i32 %73
  br label %77

75:                                               ; preds = %65
  %76 = icmp ugt i32 %23, 192000
  br i1 %76, label %83, label %77

77:                                               ; preds = %75, %69
  %78 = phi i32 [ 0, %75 ], [ %74, %69 ]
  %79 = load i32, ptr %24, align 4
  %80 = icmp ult i32 %79, 192000
  %81 = or i32 %78, 64
  %82 = select i1 %80, i32 %78, i32 %81
  br label %83

83:                                               ; preds = %77, %75, %59, %41, %26
  %84 = phi i32 [ 0, %75 ], [ %60, %59 ], [ 0, %26 ], [ %42, %41 ], [ %82, %77 ]
  %85 = getelementptr i8, ptr %7, i32 5
  %86 = load i8, ptr %85, align 1
  %87 = icmp ult i8 %86, 16
  br i1 %87, label %112, label %88

88:                                               ; preds = %83
  %89 = lshr i8 %86, 4
  %90 = zext i8 %89 to i32
  %91 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  br label %92

92:                                               ; preds = %107, %88
  %93 = phi i32 [ 2, %88 ], [ %108, %107 ]
  %94 = phi i32 [ %90, %88 ], [ %109, %107 ]
  %95 = phi ptr [ %19, %88 ], [ %110, %107 ]
  %96 = getelementptr i8, ptr %95, i32 1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %84, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %92
  %102 = load i8, ptr %95, align 1
  %103 = and i8 %102, 7
  %104 = add nuw nsw i8 %103, 1
  %105 = zext i8 %104 to i32
  %106 = tail call i32 @llvm.umax.i32(i32 %93, i32 %105)
  store i32 %106, ptr %91, align 4
  br label %107

107:                                              ; preds = %101, %92
  %108 = phi i32 [ %93, %92 ], [ %106, %101 ]
  %109 = add nsw i32 %94, -1
  %110 = getelementptr i8, ptr %95, i32 3
  %111 = icmp eq i32 %109, 0
  br i1 %111, label %112, label %92

112:                                              ; preds = %107, %83, %16, %11, %2
  %113 = add i32 %5, -8
  %114 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %113
  %115 = call i32 @snd_interval_refine(ptr noundef %114, ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #5
  ret i32 %115
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_list(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
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
