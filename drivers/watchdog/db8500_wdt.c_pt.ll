; ModuleID = '/llk/IR/drivers/watchdog/db8500_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/db8500_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__param_str_timeout = internal constant [19 x i8] c"db8500_wdt.timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global i32 600, align 4
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype174 = internal constant [33 x i8] c"db8500_wdt.parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout175 = internal constant [66 x i8] c"db8500_wdt.parm=timeout:Watchdog timeout in seconds. default=600.\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [20 x i8] c"db8500_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype176 = internal constant [34 x i8] c"db8500_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout177 = internal constant [77 x i8] c"db8500_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1
@__initcall__kmod_db8500_wdt__178_147_db8500_wdt_driver_init6 = internal global ptr @db8500_wdt_driver_init, section ".initcall6.init", align 4
@db8500_wdt_driver = internal global %struct.platform_driver { ptr @db8500_wdt_probe, ptr null, ptr null, ptr @db8500_wdt_suspend, ptr @db8500_wdt_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_db8500_wdt_driver_exit = internal global ptr @db8500_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author179 = internal constant [60 x i8] c"db8500_wdt.author=Jonas Aaberg <jonas.aberg@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description180 = internal constant [46 x i8] c"db8500_wdt.description=DB8500 Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file181 = internal constant [44 x i8] c"db8500_wdt.file=drivers/watchdog/db8500_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license182 = internal constant [23 x i8] c"db8500_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias183 = internal constant [37 x i8] c"db8500_wdt.alias=platform:db8500_wdt\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"db8500_wdt\00", align 1
@db8500_wdt = internal global %struct.watchdog_device { i32 0, ptr null, ptr null, ptr @db8500_wdt_info, ptr @db8500_wdt_ops, ptr null, i32 0, i32 0, i32 0, i32 0, i32 268435, i32 0, i32 0, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer }, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"initialized\0A\00", align 1
@db8500_wdt_info = internal constant %struct.watchdog_info { i32 33152, i32 1, [32 x i8] c"DB8500 WDT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@db8500_wdt_ops = internal constant %struct.watchdog_ops { ptr null, ptr @db8500_wdt_start, ptr @db8500_wdt_stop, ptr @db8500_wdt_keepalive, ptr null, ptr @db8500_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias183, ptr @__UNIQUE_ID_author179, ptr @__UNIQUE_ID_description180, ptr @__UNIQUE_ID_file181, ptr @__UNIQUE_ID_license182, ptr @__UNIQUE_ID_nowayout177, ptr @__UNIQUE_ID_nowayouttype176, ptr @__UNIQUE_ID_timeout175, ptr @__UNIQUE_ID_timeouttype174, ptr @__exitcall_db8500_wdt_driver_exit, ptr @__initcall__kmod_db8500_wdt__178_147_db8500_wdt_driver_init6, ptr @__param_nowayout, ptr @__param_timeout, ptr @db8500_wdt_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @db8500_wdt_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @db8500_wdt_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @db8500_wdt_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @db8500_wdt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_wdt_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  store i32 600, ptr @timeout, align 4
  store ptr %2, ptr getelementptr inbounds (%struct.watchdog_device, ptr @db8500_wdt, i32 0, i32 1), align 4
  %3 = load i8, ptr @nowayout, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_set_bit(i32 noundef 1, ptr noundef getelementptr inbounds (%struct.watchdog_device, ptr @db8500_wdt, i32 0, i32 18)) #4
  br label %6

6:                                                ; preds = %5, %1
  %7 = tail call i32 @db8500_prcmu_config_a9wdog(i8 noundef zeroext 1, i1 noundef zeroext false) #4
  %8 = load i32, ptr @timeout, align 4
  %9 = mul i32 %8, 1000
  %10 = tail call i32 @db8500_prcmu_load_a9wdog(i8 noundef zeroext 0, i32 noundef %9) #4
  %11 = tail call i32 @devm_watchdog_register_device(ptr noundef %2, ptr noundef nonnull @db8500_wdt) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  br label %14

14:                                               ; preds = %13, %6
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_wdt_suspend(ptr nocapture noundef readnone %0, [1 x i32] %1) #2 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.watchdog_device, ptr @db8500_wdt, i32 0, i32 18), align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @db8500_prcmu_disable_a9wdog(i8 noundef zeroext 0) #4
  %8 = tail call i32 @db8500_prcmu_config_a9wdog(i8 noundef zeroext 1, i1 noundef zeroext true) #4
  %9 = load i32, ptr @timeout, align 4
  %10 = mul i32 %9, 1000
  %11 = tail call i32 @db8500_prcmu_load_a9wdog(i8 noundef zeroext 0, i32 noundef %10) #4
  %12 = tail call i32 @db8500_prcmu_enable_a9wdog(i8 noundef zeroext 0) #4
  br label %13

13:                                               ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_wdt_resume(ptr nocapture noundef readnone %0) #2 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.watchdog_device, ptr @db8500_wdt, i32 0, i32 18), align 4
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @db8500_prcmu_disable_a9wdog(i8 noundef zeroext 0) #4
  %7 = tail call i32 @db8500_prcmu_config_a9wdog(i8 noundef zeroext 1, i1 noundef zeroext false) #4
  %8 = load i32, ptr @timeout, align 4
  %9 = mul i32 %8, 1000
  %10 = tail call i32 @db8500_prcmu_load_a9wdog(i8 noundef zeroext 0, i32 noundef %9) #4
  %11 = tail call i32 @db8500_prcmu_enable_a9wdog(i8 noundef zeroext 0) #4
  br label %12

12:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_wdt_start(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call i32 @db8500_prcmu_enable_a9wdog(i8 noundef zeroext 0) #4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_wdt_stop(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call i32 @db8500_prcmu_disable_a9wdog(i8 noundef zeroext 0) #4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_wdt_keepalive(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call i32 @db8500_prcmu_kick_a9wdog(i8 noundef zeroext 0) #4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_wdt_set_timeout(ptr nocapture noundef readnone %0, i32 noundef %1) #2 {
  %3 = tail call i32 @db8500_prcmu_disable_a9wdog(i8 noundef zeroext 0) #4
  %4 = mul i32 %1, 1000
  %5 = tail call i32 @db8500_prcmu_load_a9wdog(i8 noundef zeroext 0, i32 noundef %4) #4
  %6 = tail call i32 @db8500_prcmu_enable_a9wdog(i8 noundef zeroext 0) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @db8500_prcmu_enable_a9wdog(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @db8500_prcmu_disable_a9wdog(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @db8500_prcmu_kick_a9wdog(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @db8500_prcmu_config_a9wdog(i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @db8500_prcmu_load_a9wdog(i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
