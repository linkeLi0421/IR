; ModuleID = '/llk/IR/drivers/pwm/pwm-sun4i.c_pt.bc'
source_filename = "../drivers/pwm/pwm-sun4i.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sun4i_pwm_data = type { i8, i8, i32 }
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
%struct.sun4i_pwm_chip = type { %struct.pwm_chip, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, [2 x i32] }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_sun4i__166_504_sun4i_pwm_driver_init6 = internal global ptr @sun4i_pwm_driver_init, section ".initcall6.init", align 4
@sun4i_pwm_driver = internal global %struct.platform_driver { ptr @sun4i_pwm_probe, ptr @sun4i_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun4i_pwm_driver_exit = internal global ptr @sun4i_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias167 = internal constant [35 x i8] c"pwm_sun4i.alias=platform:sun4i-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_author168 = internal constant [74 x i8] c"pwm_sun4i.author=Alexandre Belloni <alexandre.belloni@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description169 = internal constant [49 x i8] c"pwm_sun4i.description=Allwinner sun4i PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file170 = internal constant [37 x i8] c"pwm_sun4i.file=drivers/pwm/pwm-sun4i\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [25 x i8] c"pwm_sun4i.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"sun4i-pwm\00", align 1
@sun4i_pwm_dt_ids = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_pwm_dual_nobypass }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a10s-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_pwm_dual_bypass }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_pwm_single_bypass }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_pwm_dual_bypass }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_pwm_single_bypass }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_pwm_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"get mod clock failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"get unnamed clock failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"get bus clock failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"get reset failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"cannot deassert reset control: %pe\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"cannot prepare and enable bus_clk %pe\0A\00", align 1
@sun4i_pwm_ops = internal constant %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @sun4i_pwm_apply, ptr @sun4i_pwm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to add PWM chip: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"failed to enable PWM clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"period exceeds the maximum value\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@prescaler_table = internal unnamed_addr constant [16 x i32] [i32 120, i32 180, i32 240, i32 360, i32 480, i32 0, i32 0, i32 0, i32 12000, i32 24000, i32 36000, i32 48000, i32 72000, i32 0, i32 0, i32 0], align 4
@sun4i_pwm_dual_nobypass = internal constant %struct.sun4i_pwm_data { i8 0, i8 0, i32 2 }, align 4
@sun4i_pwm_dual_bypass = internal constant %struct.sun4i_pwm_data { i8 1, i8 0, i32 2 }, align 4
@sun4i_pwm_single_bypass = internal constant %struct.sun4i_pwm_data { i8 1, i8 0, i32 1 }, align 4
@sun50i_a64_pwm_data = internal constant %struct.sun4i_pwm_data { i8 1, i8 1, i32 1 }, align 4
@sun50i_h6_pwm_data = internal constant %struct.sun4i_pwm_data { i8 1, i8 1, i32 2 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias167, ptr @__UNIQUE_ID_author168, ptr @__UNIQUE_ID_description169, ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_license171, ptr @__exitcall_sun4i_pwm_driver_exit, ptr @__initcall__kmod_pwm_sun4i__166_504_sun4i_pwm_driver_init6, ptr @sun4i_pwm_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun4i_pwm_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_pwm_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_pwm_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_pwm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_pwm_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 68, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %71, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %7 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %3, i32 0, i32 6
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %71, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %11 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %3, i32 0, i32 4
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = ptrtoint ptr %10 to i32
  br label %71

15:                                               ; preds = %9
  %16 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  %17 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %3, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = ptrtoint ptr %16 to i32
  %21 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %20, ptr noundef nonnull @.str.2) #5
  br label %71

22:                                               ; preds = %15
  %23 = icmp eq ptr %16, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #5
  store ptr %25, ptr %17, align 4
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = ptrtoint ptr %25 to i32
  %29 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %28, ptr noundef nonnull @.str.3) #5
  br label %71

30:                                               ; preds = %24, %22
  %31 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  %32 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %3, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = ptrtoint ptr %31 to i32
  %36 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %35, ptr noundef nonnull @.str.5) #5
  br label %71

37:                                               ; preds = %30
  %38 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #5
  %39 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %3, i32 0, i32 3
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = ptrtoint ptr %38 to i32
  %43 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %42, ptr noundef nonnull @.str.6) #5
  br label %71

44:                                               ; preds = %37
  %45 = tail call i32 @reset_control_deassert(ptr noundef %38) #5
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = inttoptr i32 %45 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull %48) #6
  br label %71

49:                                               ; preds = %44
  %50 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %31)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = inttoptr i32 %50 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %53) #6
  br label %67

54:                                               ; preds = %49
  store ptr %2, ptr %3, align 4
  %55 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 1
  store ptr @sun4i_pwm_ops, ptr %55, align 4
  %56 = getelementptr inbounds %struct.sun4i_pwm_data, ptr %6, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 3
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %3, i32 0, i32 5
  store i32 0, ptr %59, align 4
  %60 = tail call i32 @pwmchip_add(ptr noundef nonnull %3) #5
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %60) #6
  %63 = load ptr, ptr %32, align 4
  tail call void @clk_disable(ptr noundef %63) #5
  tail call void @clk_unprepare(ptr noundef %63) #5
  %64 = load ptr, ptr %39, align 4
  br label %67

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %66, align 8
  br label %71

67:                                               ; preds = %62, %52
  %68 = phi ptr [ %38, %52 ], [ %64, %62 ]
  %69 = phi i32 [ %50, %52 ], [ %60, %62 ]
  %70 = tail call i32 @reset_control_assert(ptr noundef %68) #5
  br label %71

71:                                               ; preds = %67, %65, %47, %41, %34, %27, %19, %13, %5, %1
  %72 = phi i32 [ %14, %13 ], [ %21, %19 ], [ %36, %34 ], [ %43, %41 ], [ %45, %47 ], [ %69, %67 ], [ 0, %65 ], [ %29, %27 ], [ -12, %1 ], [ -19, %5 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_pwm_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @pwmchip_remove(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @reset_control_assert(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #5
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_pwm_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_prepare(ptr noundef %11) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = tail call i32 @clk_enable(ptr noundef %11) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  tail call void @clk_unprepare(ptr noundef %11) #5
  br label %18

18:                                               ; preds = %17, %9
  %19 = phi i32 [ %15, %17 ], [ %12, %9 ]
  %20 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.10) #6
  br label %229

21:                                               ; preds = %14, %3
  %22 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @clk_get_rate(ptr noundef %23) #5
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %0, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sun4i_pwm_data, ptr %27, i32 0, i32 1
  %29 = load i8, ptr %28, align 1, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %33 = load i8, ptr %32, align 4, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = load i64, ptr %2, align 8
  %37 = mul i64 %36, %25
  %38 = add i64 %37, -1000000000
  %39 = icmp ult i64 %38, 1000000000
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = shl nuw nsw i64 %25, 1
  %44 = mul i64 %43, %42
  %45 = icmp ugt i64 %44, 999999999
  br i1 %45, label %117, label %46

46:                                               ; preds = %40, %35, %31, %21
  %47 = load i8, ptr %27, align 4, !range !8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = load i64, ptr %2, align 8
  %51 = mul i64 %50, %25
  %52 = add i64 %51, 500000000
  %53 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %52, i32 0) #7, !srcloc !9
  %54 = extractvalue { i64, i32 } %53, 0
  %55 = extractvalue { i64, i32 } %53, 1
  %56 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %52, i64 %54, i32 %55) #7, !srcloc !10
  %57 = extractvalue { i64, i32 } %56, 0
  %58 = lshr i64 %57, 29
  %59 = add nsw i64 %58, -65537
  %60 = icmp ult i64 %59, -65536
  %61 = trunc i64 %50 to i32
  br i1 %60, label %62, label %97

62:                                               ; preds = %49, %46
  %63 = phi i64 [ 0, %46 ], [ %58, %49 ]
  br label %64

64:                                               ; preds = %85, %62
  %65 = phi i32 [ %87, %85 ], [ 0, %62 ]
  %66 = phi i64 [ %86, %85 ], [ %63, %62 ]
  %67 = lshr i32 57568, %65
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = getelementptr [16 x i32], ptr @prescaler_table, i32 0, i32 %65
  %72 = load i32, ptr %71, align 4
  %73 = udiv i32 %24, %72
  %74 = zext i32 %73 to i64
  %75 = load i64, ptr %2, align 8
  %76 = mul i64 %75, %74
  %77 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %76, i32 0) #7, !srcloc !9
  %78 = extractvalue { i64, i32 } %77, 0
  %79 = extractvalue { i64, i32 } %77, 1
  %80 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %76, i64 %78, i32 %79) #7, !srcloc !10
  %81 = extractvalue { i64, i32 } %80, 0
  %82 = lshr i64 %81, 29
  %83 = add nsw i64 %82, -1
  %84 = icmp ult i64 %83, 65536
  br i1 %84, label %89, label %85

85:                                               ; preds = %70, %64
  %86 = phi i64 [ %82, %70 ], [ %66, %64 ]
  %87 = add nuw nsw i32 %65, 1
  %88 = icmp eq i32 %87, 15
  br i1 %88, label %89, label %64

89:                                               ; preds = %85, %70
  %90 = phi i32 [ %65, %70 ], [ 15, %85 ]
  %91 = phi i64 [ %82, %70 ], [ %86, %85 ]
  %92 = add i64 %91, -65537
  %93 = icmp ult i64 %92, -65536
  br i1 %93, label %113, label %94

94:                                               ; preds = %89
  %95 = load i64, ptr %2, align 8
  %96 = trunc i64 %95 to i32
  br label %97

97:                                               ; preds = %94, %49
  %98 = phi i32 [ %96, %94 ], [ %61, %49 ]
  %99 = phi i64 [ %91, %94 ], [ %58, %49 ]
  %100 = phi i32 [ %90, %94 ], [ 15, %49 ]
  %101 = trunc i64 %99 to i32
  %102 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %103 = load i64, ptr %102, align 8
  %104 = mul i64 %103, %99
  %105 = icmp ult i64 %104, 4294967296
  br i1 %105, label %106, label %109, !prof !11

106:                                              ; preds = %97
  %107 = trunc i64 %104 to i32
  %108 = udiv i32 %107, %98
  br label %117

109:                                              ; preds = %97
  %110 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %98, i64 %104) #7, !srcloc !12
  %111 = extractvalue { i64, i64 } %110, 1
  %112 = trunc i64 %111 to i32
  br label %117

113:                                              ; preds = %89
  %114 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.11) #6
  br i1 %8, label %115, label %229

115:                                              ; preds = %113
  %116 = load ptr, ptr %22, align 4
  tail call void @clk_disable(ptr noundef %116) #5
  tail call void @clk_unprepare(ptr noundef %116) #5
  br label %229

117:                                              ; preds = %109, %106, %40
  %118 = phi i32 [ %112, %109 ], [ %108, %106 ], [ 0, %40 ]
  %119 = phi i32 [ %101, %109 ], [ %101, %106 ], [ 0, %40 ]
  %120 = phi i32 [ %100, %109 ], [ %100, %106 ], [ 0, %40 ]
  %121 = phi i1 [ true, %109 ], [ true, %106 ], [ false, %40 ]
  %122 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %122) #5
  %123 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %0, i32 0, i32 4
  %124 = load ptr, ptr %123, align 4
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #5, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %126 = load ptr, ptr %26, align 4
  %127 = getelementptr inbounds %struct.sun4i_pwm_data, ptr %126, i32 0, i32 1
  %128 = load i8, ptr %127, align 1, !range !8
  %129 = icmp eq i8 %128, 0
  %130 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %131 = load i32, ptr %130, align 8
  %132 = mul i32 %131, 15
  br i1 %129, label %143, label %133

133:                                              ; preds = %117
  %134 = shl i32 512, %132
  br i1 %121, label %140, label %135

135:                                              ; preds = %133
  %136 = or i32 %134, %125
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %137 = load ptr, ptr %123, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %136) #5, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  %138 = load i16, ptr %122, align 4
  %139 = add i16 %138, 1
  store i16 %139, ptr %122, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !20
  br label %229

140:                                              ; preds = %133
  %141 = xor i32 %134, -1
  %142 = and i32 %125, %141
  br label %143

143:                                              ; preds = %140, %117
  %144 = phi i32 [ %142, %140 ], [ %125, %117 ]
  %145 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %146 = lshr i32 %144, %132
  %147 = and i32 %146, 15
  %148 = icmp eq i32 %147, %120
  br i1 %148, label %161, label %149

149:                                              ; preds = %143
  %150 = shl i32 64, %132
  %151 = xor i32 %150, -1
  %152 = and i32 %144, %151
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %153 = load ptr, ptr %123, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %152) #5, !srcloc !16
  %154 = load i32, ptr %145, align 8
  %155 = mul i32 %154, 15
  %156 = shl i32 15, %155
  %157 = xor i32 %156, -1
  %158 = and i32 %152, %157
  %159 = shl i32 %120, %155
  %160 = or i32 %158, %159
  br label %161

161:                                              ; preds = %149, %143
  %162 = phi i32 [ %154, %149 ], [ %131, %143 ]
  %163 = phi i32 [ %160, %149 ], [ %144, %143 ]
  %164 = and i32 %118, 65535
  %165 = shl i32 %119, 16
  %166 = add i32 %165, -65536
  %167 = or i32 %166, %164
  %168 = shl i32 %162, 2
  %169 = add i32 %168, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %170 = load ptr, ptr %123, align 4
  %171 = getelementptr i8, ptr %170, i32 %169
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %167) #5, !srcloc !16
  %172 = load volatile i32, ptr @jiffies, align 64
  %173 = add i64 %5, 1000
  %174 = tail call i32 @nsecs_to_jiffies(i64 noundef %173) #5
  %175 = add i32 %174, %172
  %176 = load i32, ptr %145, align 8
  %177 = getelementptr %struct.sun4i_pwm_chip, ptr %0, i32 0, i32 7, i32 %176
  store i32 %175, ptr %177, align 4
  %178 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %179 = load i32, ptr %178, align 8
  %180 = icmp eq i32 %179, 0
  %181 = load i32, ptr %145, align 8
  %182 = mul i32 %181, 15
  %183 = shl i32 32, %182
  %184 = or i32 %183, %163
  %185 = xor i32 %183, -1
  %186 = and i32 %163, %185
  %187 = select i1 %180, i32 %184, i32 %186
  %188 = shl i32 64, %182
  %189 = or i32 %188, %187
  %190 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %191 = load i8, ptr %190, align 4, !range !8
  %192 = icmp eq i8 %191, 0
  %193 = shl i32 16, %182
  %194 = select i1 %192, i32 0, i32 %193
  %195 = or i32 %189, %194
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %196 = load ptr, ptr %123, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %195) #5, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  %197 = load i16, ptr %122, align 4
  %198 = add i16 %197, 1
  store i16 %198, ptr %122, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !20
  %199 = load i8, ptr %190, align 4, !range !8
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %229

201:                                              ; preds = %161
  %202 = load volatile i32, ptr @jiffies, align 64
  %203 = load i32, ptr %145, align 8
  %204 = getelementptr %struct.sun4i_pwm_chip, ptr %0, i32 0, i32 7, i32 %203
  %205 = load i32, ptr %204, align 4
  %206 = sub i32 %202, %205
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %201
  %209 = sub i32 %205, %202
  %210 = tail call i32 @jiffies_to_usecs(i32 noundef %209) #5
  %211 = icmp ugt i32 %210, 1499
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = udiv i32 %210, 1000
  %214 = add nuw nsw i32 %213, 1
  tail call void @msleep(i32 noundef %214) #5
  br label %217

215:                                              ; preds = %208
  %216 = shl nuw nsw i32 %210, 1
  tail call void @usleep_range_state(i32 noundef %210, i32 noundef %216, i32 noundef 2) #5
  br label %217

217:                                              ; preds = %215, %212, %201
  tail call void @_raw_spin_lock(ptr noundef %122) #5
  %218 = load ptr, ptr %123, align 4
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #5, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %220 = load i32, ptr %145, align 8
  %221 = mul i32 %220, 15
  %222 = shl i32 80, %221
  %223 = xor i32 %222, -1
  %224 = and i32 %219, %223
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %225 = load ptr, ptr %123, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %224) #5, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  %226 = load i16, ptr %122, align 4
  %227 = add i16 %226, 1
  store i16 %227, ptr %122, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !20
  %228 = load ptr, ptr %22, align 4
  tail call void @clk_disable(ptr noundef %228) #5
  tail call void @clk_unprepare(ptr noundef %228) #5
  br label %229

229:                                              ; preds = %217, %161, %135, %115, %113, %18
  %230 = phi i32 [ 0, %135 ], [ 0, %217 ], [ %19, %18 ], [ -22, %115 ], [ -22, %113 ], [ 0, %161 ]
  ret i32 %230
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_pwm_get_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_get_rate(ptr noundef %5) #5
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %11 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = mul i32 %12, 15
  %14 = shl i32 512, %13
  %15 = and i32 %14, %10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.sun4i_pwm_data, ptr %19, i32 0, i32 1
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %17
  %24 = add nuw nsw i64 %7, 999999999
  %25 = icmp ult i32 %6, -999999999
  br i1 %25, label %26, label %30, !prof !11

26:                                               ; preds = %23
  %27 = trunc i64 %24 to i32
  %28 = udiv i32 %27, %6
  %29 = zext i32 %28 to i64
  br label %33

30:                                               ; preds = %23
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %24) #7, !srcloc !12
  %32 = extractvalue { i64, i64 } %31, 1
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i64 [ %29, %26 ], [ %32, %30 ]
  store i64 %34, ptr %2, align 8
  %35 = add i64 %34, 1
  %36 = lshr i64 %35, 1
  %37 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  store i64 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %38, align 8
  %39 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  store i8 1, ptr %39, align 4
  br label %108

40:                                               ; preds = %17, %3
  %41 = lshr i32 %10, %13
  %42 = and i32 %41, 15
  %43 = icmp eq i32 %42, 15
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.sun4i_pwm_chip, ptr %0, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = load i8, ptr %46, align 4, !range !8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44, %40
  %50 = getelementptr [16 x i32], ptr @prescaler_table, i32 0, i32 %42
  %51 = load i32, ptr %50, align 4
  %52 = lshr i32 57568, %42
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %108

55:                                               ; preds = %49, %44
  %56 = phi i32 [ %51, %49 ], [ 1, %44 ]
  %57 = shl i32 32, %13
  %58 = and i32 %57, %10
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  store i32 %60, ptr %61, align 8
  %62 = load i32, ptr %11, align 8
  %63 = mul i32 %62, 15
  %64 = shl i32 80, %63
  %65 = and i32 %64, %10
  %66 = icmp eq i32 %65, %64
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  store i8 %67, ptr %68, align 4
  %69 = load i32, ptr %11, align 8
  %70 = shl i32 %69, 2
  %71 = add i32 %70, 4
  %72 = load ptr, ptr %8, align 4
  %73 = getelementptr i8, ptr %72, i32 %71
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #5, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %75 = zext i32 %56 to i64
  %76 = mul nuw nsw i64 %75, 1000000000
  %77 = and i32 %74, 65535
  %78 = zext i32 %77 to i64
  %79 = mul i64 %76, %78
  %80 = lshr i64 %7, 1
  %81 = add i64 %79, %80
  %82 = icmp ult i64 %81, 4294967296
  br i1 %82, label %83, label %87, !prof !11

83:                                               ; preds = %55
  %84 = trunc i64 %81 to i32
  %85 = udiv i32 %84, %6
  %86 = zext i32 %85 to i64
  br label %90

87:                                               ; preds = %55
  %88 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %81) #7, !srcloc !12
  %89 = extractvalue { i64, i64 } %88, 1
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi i64 [ %86, %83 ], [ %89, %87 ]
  %92 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  store i64 %91, ptr %92, align 8
  %93 = lshr i32 %74, 16
  %94 = add nuw nsw i32 %93, 1
  %95 = zext i32 %94 to i64
  %96 = mul i64 %76, %95
  %97 = add i64 %96, %80
  %98 = icmp ult i64 %97, 4294967296
  br i1 %98, label %99, label %103, !prof !11

99:                                               ; preds = %90
  %100 = trunc i64 %97 to i32
  %101 = udiv i32 %100, %6
  %102 = zext i32 %101 to i64
  br label %106

103:                                              ; preds = %90
  %104 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %97) #7, !srcloc !12
  %105 = extractvalue { i64, i64 } %104, 1
  br label %106

106:                                              ; preds = %103, %99
  %107 = phi i64 [ %102, %99 ], [ %105, %103 ]
  store i64 %107, ptr %2, align 8
  br label %108

108:                                              ; preds = %106, %49, %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

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
!9 = !{i64 881665, i64 881692, i64 881714, i64 881742}
!10 = !{i64 882073, i64 882100, i64 882133, i64 882154, i64 882181, i64 882207}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148367209, i64 2148367489, i64 2148367823, i64 2148368157}
!13 = !{i64 2488179}
!14 = !{i64 2151566595}
!15 = !{i64 2151566951}
!16 = !{i64 2487761}
!17 = !{i64 2148890398}
!18 = !{i64 2148886222}
!19 = !{i64 2148886297, i64 2148886324, i64 2148886371, i64 2148886393, i64 2148886421, i64 2148886441}
!20 = !{i64 2148913401}
