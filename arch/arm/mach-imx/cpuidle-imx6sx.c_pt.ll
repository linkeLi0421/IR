; ModuleID = '/llk/IR/arch/arm/mach-imx/cpuidle-imx6sx.c_pt.bc'
source_filename = "../arch/arm/mach-imx/cpuidle-imx6sx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@imx6sx_cpuidle_driver = internal global %struct.cpuidle_driver { ptr @.str, ptr null, i8 0, [10 x %struct.cpuidle_state] [%struct.cpuidle_state { [16 x i8] c"WFI\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ARM WFI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 1, i32 -1, i32 1, ptr @arm_cpuidle_simple_enter, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"WAIT\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Clock off\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 4, i32 50, i32 0, i32 75, ptr @imx6sx_enter_wait, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"LOW-POWER-IDLE\00\00", [32 x i8] c"ARM power off\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 4, i32 300, i32 0, i32 500, ptr @imx6sx_enter_wait, ptr null, ptr null }, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer], i32 3, i32 0, ptr null, ptr null }, align 8
@__mxc_cpu_type = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [15 x i8] c"imx6sx_cpuidle\00", align 1
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @imx6sx_cpuidle_init() local_unnamed_addr #0 section ".init.text" {
  tail call void @imx6_set_int_mem_clk_lpm(i1 noundef zeroext true) #3
  tail call void @imx6_enable_rbc(i1 noundef zeroext false) #3
  tail call void @imx_gpc_set_l2_mem_power_in_lpm(i1 noundef zeroext false) #3
  %1 = load i32, ptr @__mxc_cpu_type, align 4
  %2 = icmp eq i32 %1, 98
  %3 = select i1 %2, i32 15, i32 2
  tail call void @imx_gpc_set_arm_power_up_timing(i32 noundef %3, i32 noundef 1) #3
  tail call void @imx_gpc_set_arm_power_down_timing(i32 noundef 1, i32 noundef 1) #3
  %4 = tail call i32 @cpuidle_register(ptr noundef nonnull @imx6sx_cpuidle_driver, ptr noundef null) #3
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6_set_int_mem_clk_lpm(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6_enable_rbc(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_set_l2_mem_power_in_lpm(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_set_arm_power_up_timing(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_set_arm_power_down_timing(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_cpuidle_simple_enter(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx6sx_enter_wait(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef returned %2) #2 {
  %4 = tail call i32 @imx6_set_lpm(i32 noundef 1) #3
  switch i32 %2, label %14 [
    i32 1, label %5
    i32 2, label %8
  ]

5:                                                ; preds = %3
  %6 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %7 = tail call i32 %6() #3
  br label %14

8:                                                ; preds = %3
  tail call void @imx6_enable_rbc(i1 noundef zeroext true) #3
  tail call void @imx_gpc_set_arm_power_in_lpm(i1 noundef zeroext true) #3
  tail call void @imx_set_cpu_jump(i32 noundef 0, ptr noundef nonnull @v7_cpu_resume) #3
  %9 = tail call i32 @cpu_pm_enter() #3
  %10 = tail call i32 @cpu_cluster_pm_enter() #3
  %11 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @imx6sx_idle_finish) #3
  %12 = tail call i32 @cpu_cluster_pm_exit() #3
  %13 = tail call i32 @cpu_pm_exit() #3
  tail call void @imx_gpc_set_arm_power_in_lpm(i1 noundef zeroext false) #3
  tail call void @imx6_enable_rbc(i1 noundef zeroext false) #3
  br label %14

14:                                               ; preds = %8, %5, %3
  %15 = tail call i32 @imx6_set_lpm(i32 noundef 0) #3
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx6_set_lpm(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_set_arm_power_in_lpm(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_set_cpu_jump(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v7_cpu_resume() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_cluster_pm_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx6sx_idle_finish(i32 noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %2() #3
  %3 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %4 = tail call i32 %3() #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_cluster_pm_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
