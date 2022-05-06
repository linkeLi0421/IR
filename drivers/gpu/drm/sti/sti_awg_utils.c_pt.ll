; ModuleID = '/llk/IR/drivers/gpu/drm/sti/sti_awg_utils.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_awg_utils.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.awg_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.awg_code_generation_params = type { ptr, i8 }

@.str = private unnamed_addr constant [33 x i8] c"too many number of instructions\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"instruction %d does not exist\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sti_awg_generate_code_data_enable_mode(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.awg_timing, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.awg_timing, ptr %1, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = tail call fastcc i32 @awg_generate_instr(i32 noundef 2, i32 noundef %8, i32 noundef 0, ptr noundef %0)
  %10 = load i32, ptr %3, align 4
  %11 = add i32 %10, -1
  %12 = tail call fastcc i32 @awg_generate_instr(i32 noundef 6, i32 noundef %11, i32 noundef 0, ptr noundef %0)
  %13 = or i32 %12, %9
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ %13, %6 ], [ 0, %2 ]
  %16 = getelementptr inbounds %struct.awg_timing, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.awg_timing, ptr %1, i32 0, i32 7
  %22 = getelementptr inbounds %struct.awg_timing, ptr %1, i32 0, i32 8
  %23 = getelementptr inbounds %struct.awg_timing, ptr %1, i32 0, i32 6
  %24 = getelementptr inbounds %struct.awg_timing, ptr %1, i32 0, i32 5
  br label %25

25:                                               ; preds = %56, %20
  %26 = phi i32 [ %18, %20 ], [ %62, %56 ]
  %27 = phi i32 [ %15, %20 ], [ %61, %56 ]
  %28 = load i32, ptr %21, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load i32, ptr %22, align 4
  %32 = tail call fastcc i32 @awg_generate_instr(i32 noundef 2, i32 noundef %31, i32 noundef 0, ptr noundef %0) #3
  %33 = load i32, ptr %21, align 4
  %34 = add i32 %33, -6
  %35 = tail call fastcc i32 @awg_generate_instr(i32 noundef 3, i32 noundef %34, i32 noundef 0, ptr noundef %0) #3
  %36 = or i32 %35, %32
  %37 = load i32, ptr %21, align 4
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 2, i32 0
  br label %40

40:                                               ; preds = %30, %25
  %41 = phi i32 [ %39, %30 ], [ 2, %25 ]
  %42 = phi i32 [ %36, %30 ], [ 0, %25 ]
  %43 = load i32, ptr %22, align 4
  %44 = tail call fastcc i32 @awg_generate_instr(i32 noundef %41, i32 noundef %43, i32 noundef 1, ptr noundef %0) #3
  %45 = or i32 %44, %42
  %46 = load i32, ptr %23, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %40
  %49 = load i32, ptr %24, align 4
  %50 = add i32 %49, -1
  %51 = tail call fastcc i32 @awg_generate_instr(i32 noundef 3, i32 noundef %50, i32 noundef 1, ptr noundef %0) #3
  %52 = or i32 %51, %45
  %53 = load i32, ptr %22, align 4
  %54 = tail call fastcc i32 @awg_generate_instr(i32 noundef 0, i32 noundef %53, i32 noundef 0, ptr noundef %0) #3
  %55 = or i32 %52, %54
  br label %56

56:                                               ; preds = %48, %40
  %57 = phi i32 [ %55, %48 ], [ %45, %40 ]
  %58 = or i32 %57, %27
  %59 = tail call i32 @llvm.smin.i32(i32 %26, i32 1023)
  %60 = tail call fastcc i32 @awg_generate_instr(i32 noundef 6, i32 noundef %59, i32 noundef 0, ptr noundef %0)
  %61 = or i32 %58, %60
  %62 = add nsw i32 %26, -1023
  %63 = icmp sgt i32 %26, 1023
  br i1 %63, label %25, label %64

64:                                               ; preds = %56, %14
  %65 = phi i32 [ %15, %14 ], [ %61, %56 ]
  %66 = getelementptr inbounds %struct.awg_timing, ptr %1, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.awg_timing, ptr %1, i32 0, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = tail call fastcc i32 @awg_generate_instr(i32 noundef 2, i32 noundef %71, i32 noundef 0, ptr noundef %0)
  %73 = or i32 %72, %65
  %74 = load i32, ptr %66, align 4
  %75 = add i32 %74, -1
  %76 = tail call fastcc i32 @awg_generate_instr(i32 noundef 6, i32 noundef %75, i32 noundef 0, ptr noundef %0)
  %77 = or i32 %73, %76
  br label %78

78:                                               ; preds = %69, %64
  %79 = phi i32 [ %77, %69 ], [ %65, %64 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @awg_generate_instr(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %48

6:                                                ; preds = %4
  %7 = shl i32 %2, 9
  %8 = and i32 %7, 512
  %9 = getelementptr inbounds %struct.awg_code_generation_params, ptr %3, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  br label %11

11:                                               ; preds = %32, %6
  %12 = phi i8 [ %10, %6 ], [ %46, %32 ]
  %13 = phi i32 [ %1, %6 ], [ %37, %32 ]
  %14 = phi i32 [ %8, %6 ], [ %35, %32 ]
  %15 = phi i32 [ %0, %6 ], [ %34, %32 ]
  %16 = icmp ugt i8 %12, 63
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %48

18:                                               ; preds = %11
  switch i32 %15, label %31 [
    i32 3, label %19
    i32 5, label %24
    i32 6, label %24
    i32 7, label %26
    i32 4, label %32
    i32 0, label %29
    i32 1, label %29
    i32 2, label %29
    i32 8, label %29
  ]

19:                                               ; preds = %18
  %20 = add nsw i32 %13, -1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = and i32 %20, 1023
  br label %32

24:                                               ; preds = %18, %18
  %25 = and i32 %13, 1023
  br label %32

26:                                               ; preds = %18
  %27 = and i32 %13, 959
  %28 = or i32 %27, 64
  br label %32

29:                                               ; preds = %18, %18, %18, %18
  %30 = and i32 %13, 255
  br label %32

31:                                               ; preds = %18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %15) #3
  br label %48

32:                                               ; preds = %29, %26, %24, %22, %19, %18
  %33 = phi i32 [ %30, %29 ], [ %28, %26 ], [ %25, %24 ], [ %23, %22 ], [ 0, %19 ], [ 0, %18 ]
  %34 = phi i32 [ %15, %29 ], [ 7, %26 ], [ %15, %24 ], [ 3, %22 ], [ 0, %19 ], [ %15, %18 ]
  %35 = phi i32 [ %14, %29 ], [ 0, %26 ], [ 0, %24 ], [ 0, %22 ], [ %14, %19 ], [ %14, %18 ]
  %36 = phi i32 [ %13, %29 ], [ %13, %26 ], [ %13, %24 ], [ %20, %22 ], [ 0, %19 ], [ %13, %18 ]
  %37 = sub i32 %36, %33
  %38 = add i32 %35, %33
  %39 = shl nuw nsw i32 %34, 10
  %40 = or i32 %38, %39
  %41 = and i32 %40, 16383
  %42 = load ptr, ptr %3, align 4
  %43 = zext i8 %12 to i32
  %44 = getelementptr i32, ptr %42, i32 %43
  store i32 %41, ptr %44, align 4
  %45 = load i8, ptr %9, align 4
  %46 = add i8 %45, 1
  store i8 %46, ptr %9, align 4
  %47 = icmp sgt i32 %37, 0
  br i1 %47, label %11, label %48

48:                                               ; preds = %32, %31, %17, %4
  %49 = phi i32 [ -22, %17 ], [ -22, %31 ], [ 0, %4 ], [ 0, %32 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
