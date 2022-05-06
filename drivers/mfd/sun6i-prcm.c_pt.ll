; ModuleID = '/llk/IR/drivers/mfd/sun6i-prcm.c_pt.bc'
source_filename = "../drivers/mfd/sun6i-prcm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.prcm_data = type { i32, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
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

@__initcall__kmod_sun6i_prcm__162_164_sun6i_prcm_driver_init6 = internal global ptr @sun6i_prcm_driver_init, section ".initcall6.init", align 4
@sun6i_prcm_driver = internal global %struct.platform_driver { ptr @sun6i_prcm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun6i_prcm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"sun6i-prcm\00", align 1
@sun6i_prcm_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_prcm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a23_prcm_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"no prcm memory region provided\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to add subdevices\0A\00", align 1
@sun6i_a31_prcm_data = internal constant %struct.prcm_data { i32 5, ptr @sun6i_a31_prcm_subdevs }, align 4
@sun8i_a23_prcm_data = internal constant %struct.prcm_data { i32 4, ptr @sun8i_a23_prcm_subdevs }, align 4
@sun6i_a31_prcm_subdevs = internal constant [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.3, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.4, i64 0, i8 0, ptr null, i32 1, ptr @sun6i_a31_ar100_clk_res, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.5, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.6, i64 0, i8 0, ptr null, i32 1, ptr @sun6i_a31_apb0_clk_res, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.7, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.8, i64 0, i8 0, ptr null, i32 1, ptr @sun6i_a31_apb0_gates_clk_res, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.9, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.10, i64 0, i8 0, ptr null, i32 1, ptr @sun6i_a31_ir_clk_res, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.11, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.12, i64 0, i8 0, ptr null, i32 1, ptr @sun6i_a31_apb0_rstc_res, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"sun6i-a31-ar100-clk\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"allwinner,sun6i-a31-ar100-clk\00", align 1
@sun6i_a31_ar100_clk_res = internal constant [1 x %struct.resource] [%struct.resource { i32 0, i32 3, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"sun6i-a31-apb0-clk\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"allwinner,sun6i-a31-apb0-clk\00", align 1
@sun6i_a31_apb0_clk_res = internal constant [1 x %struct.resource] [%struct.resource { i32 12, i32 15, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"sun6i-a31-apb0-gates-clk\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"allwinner,sun6i-a31-apb0-gates-clk\00", align 1
@sun6i_a31_apb0_gates_clk_res = internal constant [1 x %struct.resource] [%struct.resource { i32 40, i32 43, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"sun6i-a31-ir-clk\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"allwinner,sun4i-a10-mod0-clk\00", align 1
@sun6i_a31_ir_clk_res = internal constant [1 x %struct.resource] [%struct.resource { i32 84, i32 87, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"sun6i-a31-apb0-clock-reset\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"allwinner,sun6i-a31-clock-reset\00", align 1
@sun6i_a31_apb0_rstc_res = internal constant [1 x %struct.resource] [%struct.resource { i32 176, i32 179, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], align 4
@sun8i_a23_prcm_subdevs = internal constant [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.13, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.14, i64 0, i8 0, ptr null, i32 1, ptr @sun6i_a31_apb0_clk_res, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.7, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.15, i64 0, i8 0, ptr null, i32 1, ptr @sun6i_a31_apb0_gates_clk_res, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.11, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.12, i64 0, i8 0, ptr null, i32 1, ptr @sun6i_a31_apb0_rstc_res, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.16, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.17, i64 0, i8 0, ptr null, i32 1, ptr @sun8i_codec_analog_res, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.13 = private unnamed_addr constant [19 x i8] c"sun8i-a23-apb0-clk\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"allwinner,sun8i-a23-apb0-clk\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"allwinner,sun8i-a23-apb0-gates-clk\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"sun8i-codec-analog\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"allwinner,sun8i-a23-codec-analog\00", align 1
@sun8i_codec_analog_res = internal constant [1 x %struct.resource] [%struct.resource { i32 448, i32 451, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_sun6i_prcm__162_164_sun6i_prcm_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun6i_prcm_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun6i_prcm_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_prcm_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_match_node(ptr noundef nonnull @sun6i_prcm_dt_ids, ptr noundef %4) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.prcm_data, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %9, align 4
  %16 = tail call i32 @mfd_add_devices(ptr noundef %2, i32 noundef 0, ptr noundef %14, i32 noundef %15, ptr noundef nonnull %10, i32 noundef -1, ptr noundef null) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12, %7
  %19 = phi ptr [ @.str.1, %7 ], [ @.str.2, %12 ]
  %20 = phi i32 [ -2, %7 ], [ %16, %12 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull %19) #5
  br label %21

21:                                               ; preds = %18, %12, %1
  %22 = phi i32 [ -22, %1 ], [ 0, %12 ], [ %20, %18 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
