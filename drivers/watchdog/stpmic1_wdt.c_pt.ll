; ModuleID = '/llk/IR/drivers/watchdog/stpmic1_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/stpmic1_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.stpmic1_wdt = type { ptr, %struct.watchdog_device }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.stpmic1 = type { ptr, ptr, i32, ptr }

@__param_str_nowayout = internal constant [21 x i8] c"stpmic1_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype166 = internal constant [35 x i8] c"stpmic1_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout167 = internal constant [78 x i8] c"stpmic1_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1
@__initcall__kmod_stpmic1_wdt__168_136_stpmic1_wdt_driver_init6 = internal global ptr @stpmic1_wdt_driver_init, section ".initcall6.init", align 4
@stpmic1_wdt_driver = internal global %struct.platform_driver { ptr @pmic_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_pmic_wdt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_stpmic1_wdt_driver_exit = internal global ptr @stpmic1_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description169 = internal constant [59 x i8] c"stpmic1_wdt.description=Watchdog driver for STPMIC1 device\00", section ".modinfo", align 1
@__UNIQUE_ID_author170 = internal constant [53 x i8] c"stpmic1_wdt.author=Pascal Paillet <p.paillet@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file171 = internal constant [46 x i8] c"stpmic1_wdt.file=drivers/watchdog/stpmic1_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [27 x i8] c"stpmic1_wdt.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"stpmic1-wdt\00", align 1
@of_pmic_wdt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stpmic1-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@pmic_watchdog_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"STPMIC1 PMIC Watchdog\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@pmic_watchdog_ops = internal constant %struct.watchdog_ops { ptr null, ptr @pmic_wdt_start, ptr @pmic_wdt_stop, ptr @pmic_wdt_ping, ptr null, ptr @pmic_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description169, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__UNIQUE_ID_nowayout167, ptr @__UNIQUE_ID_nowayouttype166, ptr @__exitcall_stpmic1_wdt_driver_exit, ptr @__initcall__kmod_stpmic1_wdt__168_136_stpmic1_wdt_driver_init6, ptr @__param_nowayout, ptr @stpmic1_wdt_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stpmic1_wdt_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stpmic1_wdt_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stpmic1_wdt_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stpmic1_wdt_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_wdt_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 112, i32 noundef 3520) #3
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %10
  store ptr %8, ptr %11, align 4
  %14 = getelementptr inbounds %struct.stpmic1_wdt, ptr %11, i32 0, i32 1
  %15 = getelementptr inbounds %struct.stpmic1_wdt, ptr %11, i32 0, i32 1, i32 3
  store ptr @pmic_watchdog_info, ptr %15, align 4
  %16 = getelementptr inbounds %struct.stpmic1_wdt, ptr %11, i32 0, i32 1, i32 4
  store ptr @pmic_watchdog_ops, ptr %16, align 4
  %17 = getelementptr inbounds %struct.stpmic1_wdt, ptr %11, i32 0, i32 1, i32 9
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.stpmic1_wdt, ptr %11, i32 0, i32 1, i32 10
  store i32 256, ptr %18, align 4
  %19 = getelementptr inbounds %struct.stpmic1_wdt, ptr %11, i32 0, i32 1, i32 1
  store ptr %2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.stpmic1_wdt, ptr %11, i32 0, i32 1, i32 7
  store i32 30, ptr %20, align 4
  %21 = tail call i32 @watchdog_init_timeout(ptr noundef %14, i32 noundef 0, ptr noundef %2) #3
  %22 = load i8, ptr @nowayout, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.stpmic1_wdt, ptr %11, i32 0, i32 1, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %25) #3
  br label %26

26:                                               ; preds = %24, %13
  %27 = getelementptr inbounds %struct.stpmic1_wdt, ptr %11, i32 0, i32 1, i32 16
  store ptr %11, ptr %27, align 4
  %28 = tail call i32 @devm_watchdog_register_device(ptr noundef %2, ptr noundef %14) #3
  br label %29

29:                                               ; preds = %26, %10, %6, %1
  %30 = phi i32 [ -22, %1 ], [ -22, %6 ], [ -12, %10 ], [ %28, %26 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_wdt_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stpmic1, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 27, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_wdt_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stpmic1, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 27, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_wdt_ping(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stpmic1, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 27, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_wdt_set_timeout(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %1, ptr %5, align 4
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.stpmic1, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = add i32 %1, -1
  %10 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 28, i32 noundef %9) #3
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

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
!8 = !{i8 0, i8 2}
