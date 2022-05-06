; ModuleID = '/llk/IR/arch/arm/mach-tegra/tegra.c_pt.bc'
source_filename = "../arch/arm/mach-tegra/tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@tegra_uart_config = dso_local local_unnamed_addr global [3 x i32] [i32 1, i32 0, i32 0], align 4
@.str = private unnamed_addr constant [41 x i8] c"NVIDIA Tegra SoC (Flattened Device Tree)\00", align 1
@tegra_dt_board_compat = internal constant [5 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr null], align 4
@tegra_smp_ops = external dso_local constant %struct.smp_operations, align 4
@__mach_desc_TEGRA_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @tegra_dt_board_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 1010827264, i32 -1039154177, ptr null, ptr @tegra_smp_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_map_common_io, ptr @tegra_init_early, ptr @tegra_dt_init_irq, ptr null, ptr @tegra_dt_init, ptr @tegra_dt_init_late, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"nvidia,tegra124\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"nvidia,tegra114\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"nvidia,tegra30\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"nvidia,tegra20\00", align 1
@firmware_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"compal,paz00\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"tegra20-cpufreq\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"tegra-cpuidle\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__mach_desc_TEGRA_DT], section "llvm.metadata"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @tegra_map_common_io() #0 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_init_early() #1 section ".init.text" {
  tail call void @of_register_trusted_foundations() #5
  tail call void @tegra_cpu_reset_handler_init() #6
  %1 = load ptr, ptr @firmware_ops, align 4
  %2 = getelementptr inbounds %struct.firmware_ops, ptr %1, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = tail call i32 %3() #5
  br label %7

7:                                                ; preds = %5, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_dt_init_irq() #1 section ".init.text" {
  tail call void @tegra_init_irq() #6
  tail call void @irqchip_init() #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_dt_init() #1 section ".init.text" {
  %1 = tail call ptr @tegra_soc_device_register() #5
  %2 = tail call i32 @of_platform_default_populate(ptr noundef null, ptr noundef null, ptr noundef %1) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_dt_init_late() #1 section ".init.text" {
  %1 = alloca %struct.platform_device_info, align 8
  %2 = alloca %struct.platform_device_info, align 8
  %3 = alloca %struct.platform_device_info, align 8
  %4 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.5) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  tail call void @tegra_paz00_wifikill_init() #6
  br label %7

7:                                                ; preds = %6, %0
  %8 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #5
  %11 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false) #5
  store ptr @.str.6, ptr %11, align 4
  %12 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 4
  store i32 -1, ptr %12, align 8
  %13 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %13, i8 0, i64 16, i1 false) #5
  %14 = call ptr @platform_device_register_full(ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #5
  br label %15

15:                                               ; preds = %10, %7
  %16 = call zeroext i1 @psci_smp_available() #5
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #5
  %18 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false) #5
  store ptr @.str.7, ptr %18, align 4
  %19 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 4
  store i32 -1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %20, i8 0, i64 16, i1 false) #5
  %21 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #5
  br label %22

22:                                               ; preds = %17, %15
  %23 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #5
  %26 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false) #5
  store ptr @.str.6, ptr %26, align 4
  %27 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  store i32 -1, ptr %27, align 8
  %28 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %28, i8 0, i64 16, i1 false) #5
  %29 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #5
  br label %30

30:                                               ; preds = %25, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_register_trusted_foundations() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @tegra_cpu_reset_handler_init() local_unnamed_addr #0 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @tegra_init_irq() local_unnamed_addr #0 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irqchip_init() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_soc_device_register() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @tegra_paz00_wifikill_init() local_unnamed_addr #0 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @psci_smp_available() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
