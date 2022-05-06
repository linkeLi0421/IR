; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_mon.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_mon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cxd2880_tnrdmd = type { ptr, ptr, %struct.cxd2880_tnrdmd_create_param, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, i8, i32, i8, i8, [100 x %struct.cxd2880_tnrdmd_cfg_mem], i8, %struct.cxd2880_tnrdmd_pid_ftr_cfg, i8, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t }
%struct.cxd2880_tnrdmd_create_param = type { i32, i8, i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_cfg_mem = type { i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_pid_ftr_cfg = type { i8, [32 x %struct.cxd2880_tnrdmd_pid_cfg] }
%struct.cxd2880_tnrdmd_pid_cfg = type { i8, i16 }
%struct.atomic_t = type { i32 }
%struct.cxd2880_io = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr }

@rf_lvl_seq = internal constant [2 x i8] c"\80\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #3
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %86

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %86

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cxd2880_io, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %13, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %86

18:                                               ; preds = %11
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr inbounds %struct.cxd2880_io, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %19, i32 noundef 1, i8 noundef zeroext 16, i8 noundef zeroext 1) #3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %86

24:                                               ; preds = %18
  %25 = load ptr, ptr %12, align 4
  %26 = getelementptr inbounds %struct.cxd2880_io, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %86

30:                                               ; preds = %24
  %31 = load ptr, ptr %12, align 4
  %32 = getelementptr inbounds %struct.cxd2880_io, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %31, i32 noundef 0, i8 noundef zeroext 91, ptr noundef nonnull @rf_lvl_seq, i32 noundef 2) #3
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %30
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #3
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr inbounds %struct.cxd2880_io, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(ptr noundef %37, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 26) #3
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %36
  %43 = load ptr, ptr %12, align 4
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 %44(ptr noundef %43, i32 noundef 0, i8 noundef zeroext 21, ptr noundef nonnull %3, i32 noundef 2) #3
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %86

47:                                               ; preds = %42
  %48 = load i8, ptr %3, align 2
  %49 = icmp ne i8 %48, 0
  %50 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = icmp ne i8 %51, 0
  %53 = select i1 %49, i1 true, i1 %52
  br i1 %53, label %86, label %54

54:                                               ; preds = %47
  %55 = load ptr, ptr %12, align 4
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 %56(ptr noundef %55, i32 noundef 0, i8 noundef zeroext 17, ptr noundef nonnull %3, i32 noundef 2) #3
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %54
  %60 = load i8, ptr %3, align 2
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 3
  %63 = load i8, ptr %50, align 1
  %64 = lshr i8 %63, 5
  %65 = zext i8 %64 to i32
  %66 = or i32 %62, %65
  %67 = call i32 @cxd2880_convert2s_complement(i32 noundef %66, i32 noundef 11) #3
  %68 = mul i32 %67, 125
  store i32 %68, ptr %1, align 4
  %69 = load ptr, ptr %12, align 4
  %70 = getelementptr inbounds %struct.cxd2880_io, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = call i32 %71(ptr noundef %69, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %59
  %75 = load ptr, ptr %12, align 4
  %76 = getelementptr inbounds %struct.cxd2880_io, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 %77(ptr noundef %75, i32 noundef 1, i8 noundef zeroext 16, i8 noundef zeroext 0) #3
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 9
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = call i32 %82(ptr noundef nonnull %0, ptr noundef nonnull %1) #3
  br label %86

86:                                               ; preds = %84, %80, %74, %59, %54, %47, %42, %36, %30, %24, %18, %11, %7, %2
  %87 = phi i32 [ -22, %2 ], [ -22, %7 ], [ %16, %11 ], [ %22, %18 ], [ %28, %24 ], [ %34, %30 ], [ %40, %36 ], [ %45, %42 ], [ -22, %47 ], [ %57, %54 ], [ %72, %59 ], [ %78, %74 ], [ %85, %84 ], [ 0, %80 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #3
  ret i32 %87
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_convert2s_complement(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_mon_rf_lvl_sub(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  %12 = tail call i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef %11, ptr noundef nonnull %1)
  br label %13

13:                                               ; preds = %10, %6, %2
  %14 = phi i32 [ %12, %10 ], [ -22, %2 ], [ -22, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_mon_internal_cpu_status(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #3
  store i16 0, ptr %3, align 2
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cxd2880_io, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 26) #3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %7
  %15 = load ptr, ptr %8, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %15, i32 noundef 0, i8 noundef zeroext 21, ptr noundef nonnull %3, i32 noundef 2) #3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i8, ptr %3, align 2
  %21 = zext i8 %20 to i16
  %22 = shl nuw i16 %21, 8
  %23 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i16
  %26 = or i16 %22, %25
  store i16 %26, ptr %1, align 2
  br label %27

27:                                               ; preds = %19, %14, %7, %2
  %28 = phi i32 [ 0, %19 ], [ -22, %2 ], [ %12, %7 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #3
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_mon_internal_cpu_status_sub(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %36

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #3
  store i16 0, ptr %3, align 2
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.cxd2880_io, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 26) #3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 %23(ptr noundef %22, i32 noundef 0, i8 noundef zeroext 21, ptr noundef nonnull %3, i32 noundef 2) #3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i8, ptr %3, align 2
  %28 = zext i8 %27 to i16
  %29 = shl nuw i16 %28, 8
  %30 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i16
  %33 = or i16 %29, %32
  store i16 %33, ptr %1, align 2
  br label %34

34:                                               ; preds = %26, %21, %14, %11
  %35 = phi i32 [ 0, %26 ], [ -22, %11 ], [ %19, %14 ], [ %24, %21 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #3
  br label %36

36:                                               ; preds = %34, %7, %2
  %37 = phi i32 [ %35, %34 ], [ -22, %2 ], [ -22, %7 ]
  ret i32 %37
}

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
!8 = !{!"auto-init"}
