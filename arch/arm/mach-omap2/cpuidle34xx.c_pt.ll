; ModuleID = '/llk/IR/arch/arm/mach-omap2/cpuidle34xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/cpuidle34xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.omap3_idle_statedata = type { i8, i8, i8, i8 }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@mpu_pd = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"core_pwrdm\00", align 1
@core_pd = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"per_pwrdm\00", align 1
@per_pd = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"cam_pwrdm\00", align 1
@cam_pd = internal unnamed_addr global ptr null, align 4
@omap3430_idle_driver = internal global %struct.cpuidle_driver { ptr @.str.4, ptr null, i8 0, [10 x %struct.cpuidle_state] [%struct.cpuidle_state { [16 x i8] c"C1\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU ON + CORE ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 272, i32 0, i32 5, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C2\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU ON + CORE ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 286, i32 0, i32 309, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C3\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU RET + CORE ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 517, i32 0, i32 46057, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C4\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU OFF + CORE ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 3495, i32 0, i32 46057, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C5\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU RET + CORE RET\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 2001, i32 0, i32 46057, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C6\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU OFF + CORE RET\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 11714, i32 0, i32 484329, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C7\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU OFF + CORE OFF\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 22779, i32 0, i32 484329, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer], i32 7, i32 0, ptr null, ptr null }, align 8
@omap3_idle_driver = internal global %struct.cpuidle_driver { ptr @.str.5, ptr null, i8 0, [10 x %struct.cpuidle_state] [%struct.cpuidle_state { [16 x i8] c"C1\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU ON + CORE ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 4, i32 0, i32 5, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C2\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU ON + CORE ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 20, i32 0, i32 30, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C3\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU RET + CORE ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 100, i32 0, i32 300, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C4\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU OFF + CORE ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 3300, i32 0, i32 4000, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C5\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU RET + CORE RET\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 10000, i32 0, i32 12000, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C6\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU OFF + CORE RET\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 11500, i32 0, i32 15000, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C7\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU OFF + CORE OFF\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 40000, i32 0, i32 30000, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer], i32 7, i32 0, ptr null, ptr null }, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"omap3430_idle\00", align 1
@omap3_idle_data = internal unnamed_addr constant [7 x %struct.omap3_idle_statedata] [%struct.omap3_idle_statedata { i8 3, i8 3, i8 3, i8 1 }, %struct.omap3_idle_statedata { i8 3, i8 3, i8 1, i8 0 }, %struct.omap3_idle_statedata { i8 1, i8 3, i8 1, i8 0 }, %struct.omap3_idle_statedata { i8 0, i8 3, i8 1, i8 0 }, %struct.omap3_idle_statedata { i8 1, i8 1, i8 0, i8 0 }, %struct.omap3_idle_statedata { i8 0, i8 1, i8 0, i8 0 }, %struct.omap3_idle_statedata zeroinitializer], align 1
@enable_off_mode = external dso_local local_unnamed_addr global i32, align 4
@pm34xx_errata = external dso_local local_unnamed_addr global i16, align 2
@.str.5 = private unnamed_addr constant [11 x i8] c"omap3_idle\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap3_idle_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str) #4
  store ptr %1, ptr @mpu_pd, align 4
  %2 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.1) #4
  store ptr %2, ptr @core_pd, align 4
  %3 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.2) #4
  store ptr %3, ptr @per_pd, align 4
  %4 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.3) #4
  store ptr %4, ptr @cam_pd, align 4
  %5 = load ptr, ptr @mpu_pd, align 4
  %6 = icmp ne ptr %5, null
  %7 = load ptr, ptr @core_pd, align 4
  %8 = icmp ne ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false
  %10 = load ptr, ptr @per_pd, align 4
  %11 = icmp ne ptr %10, null
  %12 = select i1 %9, i1 %11, i1 false
  %13 = icmp ne ptr %4, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %21

15:                                               ; preds = %0
  %16 = tail call i32 @omap_rev() #4
  %17 = and i32 %16, -65536
  %18 = icmp eq i32 %17, 875560960
  %19 = select i1 %18, ptr @omap3430_idle_driver, ptr @omap3_idle_driver
  %20 = tail call i32 @cpuidle_register(ptr noundef nonnull %19, ptr noundef null) #4
  br label %21

21:                                               ; preds = %15, %0
  %22 = phi i32 [ -19, %0 ], [ %20, %15 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwrdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_enter_idle_bm(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr @cam_pd, align 4
  %5 = tail call i32 @pwrdm_read_pwrst(ptr noundef %4) #4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cpuidle_driver, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  br label %44

10:                                               ; preds = %3
  %11 = getelementptr [7 x %struct.omap3_idle_statedata], ptr @omap3_idle_data, i32 0, i32 %2
  %12 = load i32, ptr @enable_off_mode, align 4
  %13 = icmp eq i32 %12, 0
  %14 = load i16, ptr @pm34xx_errata, align 2
  %15 = lshr i16 %14, 1
  %16 = and i16 %15, 1
  %17 = zext i16 %16 to i32
  %18 = select i1 %13, i32 1, i32 %17
  %19 = load i8, ptr %11, align 1
  %20 = zext i1 %13 to i8
  %21 = icmp ult i8 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %10
  %23 = getelementptr [7 x %struct.omap3_idle_statedata], ptr @omap3_idle_data, i32 0, i32 %2, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ugt i32 %18, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %22, %10
  %28 = add i32 %2, -1
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = trunc i32 %18 to i8
  br label %32

32:                                               ; preds = %41, %30
  %33 = phi i32 [ %28, %30 ], [ %42, %41 ]
  %34 = getelementptr [7 x %struct.omap3_idle_statedata], ptr @omap3_idle_data, i32 0, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = icmp ult i8 %35, %20
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr [7 x %struct.omap3_idle_statedata], ptr @omap3_idle_data, i32 0, i32 %33, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = icmp ult i8 %39, %31
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %32
  %42 = add i32 %33, -1
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %32, label %44

44:                                               ; preds = %41, %37, %27, %22, %7
  %45 = phi i32 [ %9, %7 ], [ %2, %22 ], [ 0, %27 ], [ 0, %41 ], [ %33, %37 ]
  %46 = load ptr, ptr @per_pd, align 4
  %47 = tail call i32 @pwrdm_read_next_pwrst(ptr noundef %46) #4
  %48 = trunc i32 %47 to i8
  %49 = and i32 %47, 255
  %50 = getelementptr [7 x %struct.omap3_idle_statedata], ptr @omap3_idle_data, i32 0, i32 %45, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load ptr, ptr @per_pd, align 4
  %56 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %55, i8 noundef zeroext %51) #4
  br label %57

57:                                               ; preds = %54, %44
  %58 = phi i8 [ %51, %54 ], [ %48, %44 ]
  %59 = getelementptr [7 x %struct.omap3_idle_statedata], ptr @omap3_idle_data, i32 0, i32 %45
  %60 = tail call i32 @omap_irq_pending() #4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %100

62:                                               ; preds = %57
  %63 = tail call ptr @llvm.thread.pointer() #4
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %62
  %68 = and i32 %45, 1073741823
  %69 = icmp eq i32 %68, 0
  %70 = load ptr, ptr @mpu_pd, align 4
  br i1 %69, label %71, label %75

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.powerdomain, ptr %70, i32 0, i32 10
  %73 = load ptr, ptr %72, align 4
  tail call void @clkdm_deny_idle(ptr noundef %73) #4
  %74 = load i8, ptr %59, align 1
  br label %82

75:                                               ; preds = %67
  %76 = load i8, ptr %59, align 1
  %77 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %70, i8 noundef zeroext %76) #4
  %78 = load ptr, ptr @core_pd, align 4
  %79 = getelementptr [7 x %struct.omap3_idle_statedata], ptr @omap3_idle_data, i32 0, i32 %45, i32 1
  %80 = load i8, ptr %79, align 1
  %81 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %78, i8 noundef zeroext %80) #4
  br label %82

82:                                               ; preds = %75, %71
  %83 = phi i8 [ %76, %75 ], [ %74, %71 ]
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = tail call i32 @cpu_pm_enter() #4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %95

88:                                               ; preds = %82
  tail call void @omap_sram_idle() #4
  br label %95

89:                                               ; preds = %85
  tail call void @omap_sram_idle() #4
  %90 = load ptr, ptr @mpu_pd, align 4
  %91 = tail call i32 @pwrdm_read_prev_pwrst(ptr noundef %90) #4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = tail call i32 @cpu_pm_exit() #4
  br label %95

95:                                               ; preds = %93, %89, %88, %85
  br i1 %69, label %96, label %100

96:                                               ; preds = %95
  %97 = load ptr, ptr @mpu_pd, align 4
  %98 = getelementptr inbounds %struct.powerdomain, ptr %97, i32 0, i32 10
  %99 = load ptr, ptr %98, align 4
  tail call void @clkdm_allow_idle(ptr noundef %99) #4
  br label %100

100:                                              ; preds = %96, %95, %62, %57
  %101 = icmp eq i8 %58, %48
  br i1 %101, label %105, label %102

102:                                              ; preds = %100
  %103 = load ptr, ptr @per_pd, align 4
  %104 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %103, i8 noundef zeroext %48) #4
  br label %105

105:                                              ; preds = %102, %100
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_next_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_next_pwrst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_irq_pending() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_deny_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_sram_idle() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_prev_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_allow_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
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
