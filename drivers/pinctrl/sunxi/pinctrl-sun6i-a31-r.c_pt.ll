; ModuleID = '/llk/IR/drivers/pinctrl/sunxi/pinctrl-sun6i-a31-r.c_pt.bc'
source_filename = "../drivers/pinctrl/sunxi/pinctrl-sun6i-a31-r.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_pinctrl_desc = type { ptr, i32, i32, i32, ptr, i8, i8, i32 }
%struct.sunxi_desc_pin = type { %struct.pinctrl_pin_desc, i32, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.sunxi_desc_function = type { i32, ptr, i8, i8, i8 }
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

@__initcall__kmod_pinctrl_sun6i_a31_r__202_148_sun6i_a31_r_pinctrl_driver_init6 = internal global ptr @sun6i_a31_r_pinctrl_driver_init, section ".initcall6.init", align 4
@sun6i_a31_r_pinctrl_driver = internal global %struct.platform_driver { ptr @sun6i_a31_r_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun6i_a31_r_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [20 x i8] c"sun6i-a31-r-pinctrl\00", align 1
@sun6i_a31_r_pinctrl_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-r-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Reset controller missing\0A\00", align 1
@sun6i_a31_r_pinctrl_data = internal constant %struct.sunxi_pinctrl_desc { ptr @sun6i_a31_r_pins, i32 17, i32 352, i32 2, ptr null, i8 0, i8 1, i32 0 }, align 4
@sun6i_a31_r_pins = internal constant [17 x %struct.sunxi_desc_pin] [%struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 352, ptr @.str.2, ptr null }, i32 0, ptr @.compoundliteral }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 353, ptr @.str.7, ptr null }, i32 0, ptr @.compoundliteral.8 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 354, ptr @.str.9, ptr null }, i32 0, ptr @.compoundliteral.11 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 355, ptr @.str.12, ptr null }, i32 0, ptr @.compoundliteral.13 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 356, ptr @.str.14, ptr null }, i32 0, ptr @.compoundliteral.16 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 357, ptr @.str.17, ptr null }, i32 0, ptr @.compoundliteral.20 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 358, ptr @.str.21, ptr null }, i32 0, ptr @.compoundliteral.22 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 359, ptr @.str.23, ptr null }, i32 0, ptr @.compoundliteral.24 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 360, ptr @.str.25, ptr null }, i32 0, ptr @.compoundliteral.26 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 384, ptr @.str.27, ptr null }, i32 0, ptr @.compoundliteral.28 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 385, ptr @.str.29, ptr null }, i32 0, ptr @.compoundliteral.30 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 386, ptr @.str.31, ptr null }, i32 0, ptr @.compoundliteral.33 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 387, ptr @.str.34, ptr null }, i32 0, ptr @.compoundliteral.35 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 388, ptr @.str.36, ptr null }, i32 0, ptr @.compoundliteral.37 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 389, ptr @.str.38, ptr null }, i32 0, ptr @.compoundliteral.39 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 390, ptr @.str.40, ptr null }, i32 0, ptr @.compoundliteral.41 }, %struct.sunxi_desc_pin { %struct.pinctrl_pin_desc { i32 391, ptr @.str.42, ptr null }, i32 0, ptr @.compoundliteral.44 }], align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"PL0\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"gpio_in\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"gpio_out\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"s_i2c\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"s_p2wi\00", align 1
@.compoundliteral = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"PL1\00", align 1
@.compoundliteral.8 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.5, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.6, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"PL2\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"s_uart\00", align 1
@.compoundliteral.11 = internal global [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.10, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"PL3\00", align 1
@.compoundliteral.13 = internal global [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.10, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"PL4\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"s_ir\00", align 1
@.compoundliteral.16 = internal global [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.15, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"PL5\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"s_jtag\00", align 1
@.compoundliteral.20 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.18, i8 2, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.19, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.21 = private unnamed_addr constant [4 x i8] c"PL6\00", align 1
@.compoundliteral.22 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.18, i8 2, i8 0, i8 1 }, %struct.sunxi_desc_function { i32 0, ptr @.str.19, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.23 = private unnamed_addr constant [4 x i8] c"PL7\00", align 1
@.compoundliteral.24 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.18, i8 2, i8 0, i8 2 }, %struct.sunxi_desc_function { i32 0, ptr @.str.19, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"PL8\00", align 1
@.compoundliteral.26 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.18, i8 2, i8 0, i8 3 }, %struct.sunxi_desc_function { i32 0, ptr @.str.19, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.27 = private unnamed_addr constant [4 x i8] c"PM0\00", align 1
@.compoundliteral.28 = internal global [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.18, i8 2, i8 1, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.29 = private unnamed_addr constant [4 x i8] c"PM1\00", align 1
@.compoundliteral.30 = internal global [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.18, i8 2, i8 1, i8 1 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.31 = private unnamed_addr constant [4 x i8] c"PM2\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"1wire\00", align 1
@.compoundliteral.33 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.18, i8 2, i8 1, i8 2 }, %struct.sunxi_desc_function { i32 0, ptr @.str.32, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.34 = private unnamed_addr constant [4 x i8] c"PM3\00", align 1
@.compoundliteral.35 = internal global [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.18, i8 2, i8 1, i8 3 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.36 = private unnamed_addr constant [4 x i8] c"PM4\00", align 1
@.compoundliteral.37 = internal global [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.18, i8 2, i8 1, i8 4 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.38 = private unnamed_addr constant [4 x i8] c"PM5\00", align 1
@.compoundliteral.39 = internal global [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.18, i8 2, i8 1, i8 5 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.40 = private unnamed_addr constant [4 x i8] c"PM6\00", align 1
@.compoundliteral.41 = internal global [4 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.18, i8 2, i8 1, i8 6 }, %struct.sunxi_desc_function zeroinitializer], align 4
@.str.42 = private unnamed_addr constant [4 x i8] c"PM7\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.compoundliteral.44 = internal global [5 x %struct.sunxi_desc_function] [%struct.sunxi_desc_function { i32 0, ptr @.str.3, i8 0, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.4, i8 1, i8 0, i8 0 }, %struct.sunxi_desc_function { i32 0, ptr @.str.18, i8 2, i8 1, i8 7 }, %struct.sunxi_desc_function { i32 0, ptr @.str.43, i8 3, i8 0, i8 0 }, %struct.sunxi_desc_function zeroinitializer], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_sun6i_a31_r__202_148_sun6i_a31_r_pinctrl_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun6i_a31_r_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun6i_a31_r_pinctrl_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_a31_r_pinctrl_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  %6 = ptrtoint ptr %3 to i32
  br label %15

7:                                                ; preds = %1
  %8 = tail call i32 @reset_control_deassert(ptr noundef %3) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = tail call i32 @sunxi_pinctrl_init_with_variant(ptr noundef %0, ptr noundef nonnull @sun6i_a31_r_pinctrl_data, i32 noundef 0) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @reset_control_assert(ptr noundef %3) #4
  br label %15

15:                                               ; preds = %13, %10, %7, %5
  %16 = phi i32 [ %6, %5 ], [ %8, %7 ], [ %11, %13 ], [ 0, %10 ]
  ret i32 %16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_pinctrl_init_with_variant(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

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
