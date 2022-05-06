; ModuleID = '/llk/IR/drivers/clk/ux500/abx500-clk.c_pt.bc'
source_filename = "../drivers/clk/ux500/abx500-clk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_onecell_data = type { ptr, i32 }
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
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }

@__initcall__kmod_abx500_clk__166_122_abx500_clk_init3 = internal global ptr @abx500_clk_init, section ".initcall3.init", align 4
@__UNIQUE_ID_author167 = internal constant [54 x i8] c"abx500_clk.author=Ulf Hansson <ulf.hansson@linaro.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description168 = internal constant [41 x i8] c"abx500_clk.description=ABX500 clk driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [45 x i8] c"abx500_clk.file=drivers/clk/ux500/abx500-clk\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [26 x i8] c"abx500_clk.license=GPL v2\00", section ".modinfo", align 1
@abx500_clk_driver = internal global %struct.platform_driver { ptr @abx500_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @abx500_clk_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"abx500-clk\00", align 1
@abx500_clk_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,ab8500-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"non supported plf id\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ab8500_sysclk\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ulpclk\00", align 1
@__const.ab8500_reg_clks.intclk_parents = private unnamed_addr constant [2 x ptr] [ptr @.str.2, ptr @.str.3], align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"ab8500_sysclk2\00", align 1
@ab8500_clks = internal global [6 x ptr] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"ab8500_sysclk3\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"ab8500_sysclk4\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"intclk\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"audioclk\00", align 1
@ab8500_clk_data = internal global %struct.clk_onecell_data zeroinitializer, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"registered clocks for ab850x\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__initcall__kmod_abx500_clk__166_122_abx500_clk_init3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @abx500_clk_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @abx500_clk_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @abx500_clk_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x ptr], align 8
  %3 = alloca [2 x i16], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.ab8500, ptr %10, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %16 = load ptr, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  %17 = load i64, ptr @__const.ab8500_reg_clks.intclk_parents, align 8
  store i64 %17, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 34275328, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #5
  store i16 768, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #5
  store i16 256, ptr %5, align 2
  %18 = tail call i32 @ab8500_sysctrl_write(i16 noundef zeroext 560, i8 noundef zeroext 2, i8 noundef zeroext 2) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = tail call ptr @clk_reg_sysctrl_gate(ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i16 noundef zeroext 523, i8 noundef zeroext 32, i8 noundef zeroext 32, i32 noundef 0, i32 noundef 0) #5
  store ptr %21, ptr @ab8500_clks, align 4
  %22 = tail call ptr @clk_reg_sysctrl_gate(ptr noundef %6, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i16 noundef zeroext 523, i8 noundef zeroext 64, i8 noundef zeroext 64, i32 noundef 0, i32 noundef 0) #5
  store ptr %22, ptr getelementptr inbounds ([6 x ptr], ptr @ab8500_clks, i32 0, i32 1), align 4
  %23 = tail call ptr @clk_reg_sysctrl_gate(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i16 noundef zeroext 523, i8 noundef zeroext -128, i8 noundef zeroext -128, i32 noundef 0, i32 noundef 0) #5
  store ptr %23, ptr getelementptr inbounds ([6 x ptr], ptr @ab8500_clks, i32 0, i32 2), align 4
  %24 = tail call ptr @clk_reg_sysctrl_gate_fixed_rate(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef null, i16 noundef zeroext 523, i8 noundef zeroext 4, i8 noundef zeroext 4, i32 noundef 38400000, i32 noundef 9000, i32 noundef 0) #5
  store ptr %24, ptr getelementptr inbounds ([6 x ptr], ptr @ab8500_clks, i32 0, i32 3), align 4
  %25 = call ptr @clk_reg_sysctrl_set_parent(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef nonnull %2, i8 noundef zeroext 2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #5
  store ptr %25, ptr getelementptr inbounds ([6 x ptr], ptr @ab8500_clks, i32 0, i32 4), align 4
  %26 = call ptr @clk_reg_sysctrl_gate(ptr noundef %6, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i16 noundef zeroext 523, i8 noundef zeroext 16, i8 noundef zeroext 16, i32 noundef 0, i32 noundef 0) #5
  store ptr %26, ptr getelementptr inbounds ([6 x ptr], ptr @ab8500_clks, i32 0, i32 5), align 4
  store ptr @ab8500_clks, ptr @ab8500_clk_data, align 4
  store i32 6, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @ab8500_clk_data, i32 0, i32 1), align 4
  %27 = call i32 @of_clk_add_provider(ptr noundef %16, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @ab8500_clk_data) #5
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.9) #6
  br label %28

28:                                               ; preds = %20, %14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  br label %30

29:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #6
  br label %30

30:                                               ; preds = %29, %28
  %31 = phi i32 [ %18, %28 ], [ -19, %29 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_sysctrl_gate(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_sysctrl_gate_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_sysctrl_set_parent(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ab8500_sysctrl_write(i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
