; ModuleID = '/llk/IR/drivers/clk/samsung/clk-exynos4412-isp.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-exynos4412-isp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.samsung_div_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.samsung_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.samsung_clk_provider = type { ptr, ptr, %struct.spinlock, %struct.clk_hw_onecell_data }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__initcall__kmod_clk_exynos4412_isp__167_170_exynos4x12_isp_clk_init1 = internal global ptr @exynos4x12_isp_clk_init, section ".initcall1.init", align 4
@exynos4x12_isp_clk_driver = internal global %struct.platform_driver { ptr @exynos4x12_isp_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @exynos4x12_isp_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos4x12_isp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, section ".ref.data", align 4
@.str = private unnamed_addr constant [19 x i8] c"exynos4x12-isp-clk\00", align 1
@exynos4x12_isp_clk_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4412-isp-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@exynos4x12_isp_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos4x12_isp_clk_suspend, ptr @exynos4x12_isp_clk_resume, ptr null }, align 4
@exynos4x12_clk_isp_save = internal constant [4 x i32] [i32 768, i32 772, i32 2048, i32 2052], section ".init.rodata", align 4
@exynos4x12_save_isp = internal unnamed_addr global ptr null, align 4
@exynos4x12_isp_div_clks = internal global [5 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 27, ptr @.str.1, ptr @.str.2, i32 0, i32 768, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 28, ptr @.str.3, ptr @.str.2, i32 0, i32 768, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 29, ptr @.str.4, ptr @.str.5, i32 0, i32 772, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 30, ptr @.str.6, ptr @.str.4, i32 0, i32 772, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.7, ptr @.str.3, i32 0, i32 772, i8 0, i8 3, i8 0, ptr null }], align 4
@exynos4x12_isp_gate_clks = internal global [26 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 1, ptr @.str.8, ptr @.str.2, i32 0, i32 2048, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 2, ptr @.str.9, ptr @.str.2, i32 0, i32 2048, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 3, ptr @.str.10, ptr @.str.2, i32 0, i32 2048, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 4, ptr @.str.11, ptr @.str.2, i32 0, i32 2048, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 5, ptr @.str.12, ptr @.str.2, i32 0, i32 2048, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 6, ptr @.str.13, ptr @.str.2, i32 0, i32 2048, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 7, ptr @.str.14, ptr @.str.2, i32 0, i32 2048, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 8, ptr @.str.15, ptr @.str.2, i32 0, i32 2048, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 9, ptr @.str.16, ptr @.str.2, i32 0, i32 2048, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 10, ptr @.str.17, ptr @.str.2, i32 0, i32 2048, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 11, ptr @.str.18, ptr @.str.2, i32 0, i32 2048, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 12, ptr @.str.19, ptr @.str.2, i32 0, i32 2048, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 13, ptr @.str.20, ptr @.str.2, i32 0, i32 2048, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 14, ptr @.str.21, ptr @.str.2, i32 0, i32 2048, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 15, ptr @.str.22, ptr @.str.2, i32 0, i32 2048, i8 23, i8 0 }, %struct.samsung_gate_clock { i32 16, ptr @.str.23, ptr @.str.2, i32 0, i32 2048, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 17, ptr @.str.24, ptr @.str.2, i32 0, i32 2048, i8 25, i8 0 }, %struct.samsung_gate_clock { i32 18, ptr @.str.25, ptr @.str.2, i32 0, i32 2048, i8 26, i8 0 }, %struct.samsung_gate_clock { i32 19, ptr @.str.26, ptr @.str.2, i32 0, i32 2048, i8 27, i8 0 }, %struct.samsung_gate_clock { i32 20, ptr @.str.27, ptr @.str.2, i32 0, i32 2048, i8 28, i8 0 }, %struct.samsung_gate_clock { i32 21, ptr @.str.28, ptr @.str.2, i32 0, i32 2048, i8 30, i8 0 }, %struct.samsung_gate_clock { i32 22, ptr @.str.29, ptr @.str.2, i32 0, i32 2048, i8 31, i8 0 }, %struct.samsung_gate_clock { i32 23, ptr @.str.30, ptr @.str.2, i32 0, i32 2052, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 24, ptr @.str.31, ptr @.str.2, i32 0, i32 2052, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 25, ptr @.str.32, ptr @.str.2, i32 0, i32 2052, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 26, ptr @.str.33, ptr @.str.2, i32 0, i32 2052, i8 13, i8 0 }], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"div_isp0\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"aclk200\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"div_isp1\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"div_mcuisp0\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"aclk400_mcuisp\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"div_mcuisp1\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"div_mpwm\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"isp\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"drc\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"lite0\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"lite1\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"mcuisp\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"gicisp\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"smmu_isp\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"smmu_drc\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"smmu_fd\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"smmu_lite0\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"smmu_lite1\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"ppmuispmx\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"ppmuispx\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"mcuctl_isp\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"mpwm_isp\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"i2c0_isp\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"i2c1_isp\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"mtcadc_isp\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"pwm_isp\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"wdt_isp\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"uart_isp\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"asyncaxim\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"smmu_ispcx\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"spi0_isp\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"spi1_isp\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_clk_exynos4412_isp__167_170_exynos4x12_isp_clk_init1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos4x12_isp_clk_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos4x12_isp_clk_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos4x12_isp_clk_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #3
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %5 to i32
  br label %19

9:                                                ; preds = %1
  %10 = tail call ptr @samsung_clk_alloc_reg_dump(ptr noundef nonnull @exynos4x12_clk_isp_save, i32 noundef 4) #3
  store ptr %10, ptr @exynos4x12_save_isp, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @samsung_clk_init(ptr noundef %4, ptr noundef %5, i32 noundef 31) #3
  %14 = getelementptr inbounds %struct.samsung_clk_provider, ptr %13, i32 0, i32 1
  store ptr %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %15, align 8
  %16 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #3
  tail call void @pm_runtime_enable(ptr noundef %2) #3
  %17 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #3
  tail call void @samsung_clk_register_div(ptr noundef %13, ptr noundef nonnull @exynos4x12_isp_div_clks, i32 noundef 5) #3
  tail call void @samsung_clk_register_gate(ptr noundef %13, ptr noundef nonnull @exynos4x12_isp_gate_clks, i32 noundef 26) #3
  tail call void @samsung_clk_of_add_provider(ptr noundef %4, ptr noundef %13) #3
  %18 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #3
  br label %19

19:                                               ; preds = %12, %9, %7
  %20 = phi i32 [ %8, %7 ], [ 0, %12 ], [ -12, %9 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @samsung_clk_alloc_reg_dump(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @samsung_clk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_div(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_gate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_of_add_provider(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos4x12_isp_clk_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr @exynos4x12_save_isp, align 4
  tail call void @samsung_clk_save(ptr noundef %4, ptr noundef %5, i32 noundef 4) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos4x12_isp_clk_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr @exynos4x12_save_isp, align 4
  tail call void @samsung_clk_restore(ptr noundef %4, ptr noundef %5, i32 noundef 4) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_save(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_restore(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
