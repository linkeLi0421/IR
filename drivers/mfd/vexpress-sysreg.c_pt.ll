; ModuleID = '/llk/IR/drivers/mfd/vexpress-sysreg.c_pt.bc'
source_filename = "../drivers/mfd/vexpress-sysreg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.bgpio_pdata = type { ptr, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.64, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.64 = type { ptr }

@__initcall__kmod_vexpress_sysreg__206_142_vexpress_sysreg_driver_init6 = internal global ptr @vexpress_sysreg_driver_init, section ".initcall6.init", align 4
@vexpress_sysreg_driver = internal global %struct.platform_driver { ptr @vexpress_sysreg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vexpress_sysreg_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_vexpress_sysreg_driver_exit = internal global ptr @vexpress_sysreg_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file207 = internal constant [49 x i8] c"vexpress_sysreg.file=drivers/mfd/vexpress-sysreg\00", section ".modinfo", align 1
@__UNIQUE_ID_license208 = internal constant [31 x i8] c"vexpress_sysreg.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"vexpress-sysreg\00", align 1
@vexpress_sysreg_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,vexpress-sysreg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@vexpress_sysreg_cells = internal global [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @vexpress_sysreg_sys_led_pdata, i32 12, ptr null, ptr @.str.2, i64 0, i8 0, ptr null, i32 1, ptr @.compoundliteral, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @vexpress_sysreg_sys_mci_pdata, i32 12, ptr null, ptr @.str.4, i64 0, i8 0, ptr null, i32 1, ptr @.compoundliteral.5, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @vexpress_sysreg_sys_flash_pdata, i32 12, ptr null, ptr @.str.6, i64 0, i8 0, ptr null, i32 1, ptr @.compoundliteral.7, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.8, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @.compoundliteral.9, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"basic-mmio-gpio\00", align 1
@vexpress_sysreg_sys_led_pdata = internal global %struct.bgpio_pdata { ptr @.str.10, i32 -1, i32 8 }, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"arm,vexpress-sysreg,sys_led\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dat\00", align 1
@.compoundliteral = internal global [1 x %struct.resource] [%struct.resource { i32 8, i32 11, ptr @.str.3, i32 512, i32 0, ptr null, ptr null, ptr null }], align 4
@vexpress_sysreg_sys_mci_pdata = internal global %struct.bgpio_pdata { ptr @.str.11, i32 -1, i32 2 }, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"arm,vexpress-sysreg,sys_mci\00", align 1
@.compoundliteral.5 = internal global [1 x %struct.resource] [%struct.resource { i32 72, i32 75, ptr @.str.3, i32 512, i32 0, ptr null, ptr null, ptr null }], align 4
@vexpress_sysreg_sys_flash_pdata = internal global %struct.bgpio_pdata { ptr @.str.12, i32 -1, i32 1 }, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"arm,vexpress-sysreg,sys_flash\00", align 1
@.compoundliteral.7 = internal global [1 x %struct.resource] [%struct.resource { i32 76, i32 79, ptr @.str.3, i32 512, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"vexpress-syscfg\00", align 1
@.compoundliteral.9 = internal global [1 x %struct.resource] [%struct.resource { i32 96, i32 171, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"sys_led\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"sys_mci\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"sys_flash\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file207, ptr @__UNIQUE_ID_license208, ptr @__exitcall_vexpress_sysreg_driver_exit, ptr @__initcall__kmod_vexpress_sysreg__206_142_vexpress_sysreg_driver_init6, ptr @vexpress_sysreg_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vexpress_sysreg_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vexpress_sysreg_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @vexpress_sysreg_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @vexpress_sysreg_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vexpress_sysreg_probe(ptr noundef %0) #2 {
  %2 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %2, align 4
  %7 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 1, %6
  %10 = add i32 %9, %8
  %11 = tail call ptr @devm_ioremap(ptr noundef %5, i32 noundef %6, i32 noundef %10) #3
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %4
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 304, i32 noundef 3520) #3
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %11, i32 72
  %18 = tail call i32 @bgpio_init(ptr noundef nonnull %14, ptr noundef %5, i32 noundef 4, ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #3
  %19 = getelementptr inbounds %struct.gpio_chip, ptr %14, i32 0, i32 20
  store i16 2, ptr %19, align 4
  %20 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %5, ptr noundef nonnull %14, ptr noundef null, ptr noundef null, ptr noundef null) #3
  %21 = tail call i32 @devm_mfd_add_devices(ptr noundef %5, i32 noundef -2, ptr noundef nonnull @vexpress_sysreg_cells, i32 noundef 4, ptr noundef nonnull %2, i32 noundef 0, ptr noundef null) #3
  br label %22

22:                                               ; preds = %16, %13, %4, %1
  %23 = phi i32 [ %21, %16 ], [ -22, %1 ], [ -12, %4 ], [ -12, %13 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
