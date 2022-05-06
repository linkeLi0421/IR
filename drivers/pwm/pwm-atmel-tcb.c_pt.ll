; ModuleID = '/llk/IR/drivers/pwm/pwm-atmel-tcb.c_pt.bc'
source_filename = "../drivers/pwm/pwm-atmel-tcb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atmel_tcb_config = type { i32, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.atmel_tcb_pwm_chip = type { %struct.pwm_chip, %struct.spinlock, i8, i8, ptr, ptr, ptr, ptr, [2 x ptr], %struct.atmel_tcb_channel }
%struct.atmel_tcb_channel = type { i32, i32, i32, i32, i32 }
%struct.atmel_tcb_pwm_device = type { i32, i32, i32, i32 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@atmel_tcb_divisors = dso_local local_unnamed_addr constant [5 x i8] c"\02\08 \80\00", align 1
@atmel_tcb_pwm_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,tcb-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author170 = internal constant [49 x i8] c"author=Boris BREZILLON <b.brezillon@overkiz.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [62 x i8] c"description=Atmel Timer Counter Pulse Width Modulation Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@atmel_tcb_pwm_driver = internal global %struct.platform_driver { ptr @atmel_tcb_pwm_probe, ptr @atmel_tcb_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_tcb_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_tcb_pwm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [14 x i8] c"atmel-tcb-pwm\00", align 1
@atmel_tcb_pwm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @atmel_tcb_pwm_suspend, ptr @atmel_tcb_pwm_resume, ptr @atmel_tcb_pwm_suspend, ptr @atmel_tcb_pwm_resume, ptr @atmel_tcb_pwm_suspend, ptr @atmel_tcb_pwm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"failed to get Timer Counter Block channel from device tree (error: %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"slow_clk\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"t0_clk\00", align 1
@atmel_tcb_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-tcb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_rm9200_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-tcb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_sam9x5_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-tcb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_sama5d2_config }, %struct.of_device_id zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"gclk\00", align 1
@atmel_tcb_pwm_ops = internal constant %struct.pwm_ops { ptr @atmel_tcb_pwm_request, ptr @atmel_tcb_pwm_free, ptr null, ptr @atmel_tcb_pwm_apply, ptr null, ptr @__this_module, ptr null, ptr null, ptr null, ptr null }, align 4
@tcb_rm9200_config = internal global %struct.atmel_tcb_config { i32 16, i8 0, i8 0 }, align 4
@tcb_sam9x5_config = internal global %struct.atmel_tcb_config { i32 32, i8 0, i8 0 }, align 4
@tcb_sama5d2_config = internal global %struct.atmel_tcb_config { i32 32, i8 1, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [84 x i8] c"failed to configure period_ns: PWM group already configured with a different value\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_license172], section "llvm.metadata"

@__mod_of__atmel_tcb_pwm_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @atmel_tcb_pwm_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_tcb_pwm_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_tcb_pwm_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tcb_pwm_probe(ptr noundef %0) #2 {
  %2 = alloca [7 x i8], align 1
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i32 7, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %7) #9
  br label %88

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = call ptr @syscon_node_to_regmap(ptr noundef %12) #8
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = ptrtoint ptr %13 to i32
  br label %88

17:                                               ; preds = %10
  %18 = load ptr, ptr %11, align 4
  %19 = call ptr @of_clk_get_by_name(ptr noundef %18, ptr noundef nonnull @.str.3) #8
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = ptrtoint ptr %19 to i32
  br label %88

23:                                               ; preds = %17
  %24 = load i32, ptr %3, align 4
  %25 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 1
  %26 = trunc i32 %24 to i8
  %27 = add i8 %26, 48
  store i8 %27, ptr %25, align 1
  %28 = load ptr, ptr %11, align 4
  %29 = call ptr @of_clk_get_by_name(ptr noundef %28, ptr noundef nonnull %2) #8
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load ptr, ptr %11, align 4
  %33 = call ptr @of_clk_get_by_name(ptr noundef %32, ptr noundef nonnull @.str.4) #8
  br label %34

34:                                               ; preds = %31, %23
  %35 = phi ptr [ %33, %31 ], [ %29, %23 ]
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = ptrtoint ptr %35 to i32
  br label %88

39:                                               ; preds = %34
  %40 = load ptr, ptr %11, align 4
  %41 = call ptr @of_match_node(ptr noundef nonnull @atmel_tcb_of_match, ptr noundef %40) #8
  %42 = getelementptr inbounds %struct.of_device_id, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.atmel_tcb_config, ptr %43, i32 0, i32 1
  %45 = load i8, ptr %44, align 4, !range !9
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr %11, align 4
  %49 = call ptr @of_clk_get_by_name(ptr noundef %48, ptr noundef nonnull @.str.5) #8
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = ptrtoint ptr %49 to i32
  br label %88

53:                                               ; preds = %47, %39
  %54 = phi ptr [ %49, %47 ], [ null, %39 ]
  %55 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 88, i32 noundef 3520) #8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %86, label %57

57:                                               ; preds = %53
  store ptr %4, ptr %55, align 4
  %58 = getelementptr inbounds %struct.pwm_chip, ptr %55, i32 0, i32 1
  store ptr @atmel_tcb_pwm_ops, ptr %58, align 4
  %59 = getelementptr inbounds %struct.pwm_chip, ptr %55, i32 0, i32 3
  store i32 2, ptr %59, align 4
  %60 = load i32, ptr %3, align 4
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %55, i32 0, i32 2
  store i8 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %55, i32 0, i32 4
  store ptr %13, ptr %63, align 4
  %64 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %55, i32 0, i32 5
  store ptr %35, ptr %64, align 4
  %65 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %55, i32 0, i32 6
  store ptr %54, ptr %65, align 4
  %66 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %55, i32 0, i32 7
  store ptr %19, ptr %66, align 4
  %67 = load i32, ptr %43, align 4
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %55, i32 0, i32 3
  store i8 %68, ptr %69, align 1
  %70 = call i32 @clk_prepare(ptr noundef %19) #8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %57
  %73 = call i32 @clk_enable(ptr noundef %19) #8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %55, i32 0, i32 1
  store i32 0, ptr %76, align 4
  %77 = call i32 @pwmchip_add(ptr noundef nonnull %55) #8
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %55, ptr %80, align 8
  br label %88

81:                                               ; preds = %75
  %82 = load ptr, ptr %66, align 4
  call void @clk_disable(ptr noundef %82) #8
  br label %83

83:                                               ; preds = %81, %72
  %84 = phi ptr [ %82, %81 ], [ %19, %72 ]
  %85 = phi i32 [ %77, %81 ], [ %73, %72 ]
  call void @clk_unprepare(ptr noundef %84) #8
  br label %86

86:                                               ; preds = %83, %57, %53
  %87 = phi i32 [ -12, %53 ], [ %70, %57 ], [ %85, %83 ]
  call void @clk_put(ptr noundef %19) #8
  br label %88

88:                                               ; preds = %86, %79, %51, %37, %21, %15, %9
  %89 = phi i32 [ %7, %9 ], [ %16, %15 ], [ %22, %21 ], [ %38, %37 ], [ %52, %51 ], [ %87, %86 ], [ 0, %79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #8
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tcb_pwm_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @pwmchip_remove(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %6 = load ptr, ptr %4, align 4
  tail call void @clk_put(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %3, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_put(ptr noundef %8) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tcb_pwm_request(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = load ptr, ptr %0, align 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 16, i32 noundef 3520) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = tail call i32 @clk_enable(ptr noundef %9) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %16

16:                                               ; preds = %15, %7
  %17 = phi i32 [ %13, %15 ], [ %10, %7 ]
  %18 = load ptr, ptr %0, align 4
  tail call void @devm_kfree(ptr noundef %18, ptr noundef nonnull %5) #8
  br label %71

19:                                               ; preds = %12
  %20 = tail call i32 @pwm_set_chip_data(ptr noundef %1, ptr noundef nonnull %5) #8
  %21 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @_raw_spin_lock(ptr noundef %21) #8
  %22 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 2
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 6
  %28 = or i32 %27, 4
  %29 = call i32 @regmap_read(ptr noundef %23, i32 noundef %28, ptr noundef nonnull %3) #8
  %30 = load i32, ptr %3, align 4
  %31 = and i32 %30, 32768
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %5, i32 0, i32 1
  %35 = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %5, i32 0, i32 3
  %36 = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %5, i32 0, i32 2
  %37 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 0
  %40 = load ptr, ptr %22, align 4
  %41 = load i8, ptr %24, align 4
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 6
  %44 = select i1 %39, i32 20, i32 24
  %45 = or i32 %43, %44
  %46 = call i32 @regmap_read(ptr noundef %40, i32 noundef %45, ptr noundef %36) #8
  %47 = load i32, ptr %3, align 4
  %48 = and i32 %47, 7
  store i32 %48, ptr %34, align 4
  %49 = load ptr, ptr %22, align 4
  %50 = load i8, ptr %24, align 4
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 6
  %53 = or i32 %52, 28
  %54 = call i32 @regmap_read(ptr noundef %49, i32 noundef %53, ptr noundef %35) #8
  %55 = load i32, ptr %3, align 4
  %56 = and i32 %55, -65529
  %57 = or i32 %56, 50176
  br label %58

58:                                               ; preds = %33, %19
  %59 = phi i32 [ %57, %33 ], [ 50176, %19 ]
  store i32 %59, ptr %3, align 4
  %60 = load ptr, ptr %22, align 4
  %61 = load i8, ptr %24, align 4
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 6
  %64 = or i32 %63, 4
  %65 = call i32 @regmap_write(ptr noundef %60, i32 noundef %64, i32 noundef %59) #8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %66 = load i16, ptr %21, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %21, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %68 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = getelementptr %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 8, i32 %69
  store ptr %5, ptr %70, align 4
  br label %71

71:                                               ; preds = %58, %16, %2
  %72 = phi i32 [ %17, %16 ], [ 0, %58 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_tcb_pwm_free(ptr nocapture noundef %0, ptr noundef %1) #2 {
  %3 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #8
  %4 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 8, i32 %7
  store ptr null, ptr %8, align 4
  %9 = load ptr, ptr %0, align 4
  tail call void @devm_kfree(ptr noundef %9, ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tcb_pwm_apply(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #8
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %69

12:                                               ; preds = %3
  %13 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %13, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i32 %14, 0
  %19 = zext i1 %18 to i32
  %20 = select i1 %17, i32 %19, i32 %14
  %21 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %21) #8
  %22 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 2
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 6
  %28 = or i32 %27, 4
  %29 = call i32 @regmap_read(ptr noundef %23, i32 noundef %28, ptr noundef nonnull %5) #8
  %30 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  %33 = load i32, ptr %5, align 4
  br i1 %32, label %34, label %41

34:                                               ; preds = %12
  %35 = and i32 %33, -16711681
  %36 = icmp eq i32 %20, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = or i32 %35, 8388608
  store i32 %38, ptr %5, align 4
  br label %48

39:                                               ; preds = %34
  %40 = or i32 %35, 4194304
  store i32 %40, ptr %5, align 4
  br label %48

41:                                               ; preds = %12
  %42 = and i32 %33, 16777215
  %43 = icmp eq i32 %20, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = or i32 %42, -2147483648
  store i32 %45, ptr %5, align 4
  br label %48

46:                                               ; preds = %41
  %47 = or i32 %42, 1073741824
  store i32 %47, ptr %5, align 4
  br label %48

48:                                               ; preds = %46, %44, %39, %37
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ], [ %38, %37 ], [ %40, %39 ]
  %50 = load ptr, ptr %22, align 4
  %51 = load i8, ptr %24, align 4
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 6
  %54 = or i32 %53, 4
  %55 = call i32 @regmap_write(ptr noundef %50, i32 noundef %54, i32 noundef %49) #8
  %56 = load i32, ptr %5, align 4
  %57 = and i32 %56, 202113024
  %58 = icmp eq i32 %57, 0
  %59 = load ptr, ptr %22, align 4
  %60 = load i8, ptr %24, align 4
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 6
  %63 = select i1 %58, i32 6, i32 4
  %64 = zext i1 %58 to i32
  %65 = call i32 @regmap_write(ptr noundef %59, i32 noundef %62, i32 noundef %63) #8
  %66 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 9
  store i32 %64, ptr %66, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %67 = load i16, ptr %21, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %21, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %306

69:                                               ; preds = %3
  %70 = load i64, ptr %2, align 8
  %71 = tail call i64 @llvm.umin.i64(i64 %70, i64 2147483647)
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %74 = load i64, ptr %73, align 8
  %75 = tail call i64 @llvm.umin.i64(i64 %74, i64 2147483647)
  %76 = trunc i64 %75 to i32
  %77 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #8
  %78 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 5
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @clk_get_rate(ptr noundef %79) #8
  %81 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 6
  %82 = load ptr, ptr %81, align 4
  %83 = icmp ne ptr %82, null
  %84 = zext i1 %83 to i32
  %85 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 3
  %86 = getelementptr [5 x i8], ptr @atmel_tcb_divisors, i32 0, i32 %84
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i64
  %89 = mul nuw nsw i64 %88, 1000000000
  %90 = icmp ult i64 %89, 4294967296
  br i1 %90, label %91, label %95, !prof !14

91:                                               ; preds = %69
  %92 = trunc i64 %89 to i32
  %93 = udiv i32 %92, %80
  %94 = zext i32 %93 to i64
  br label %98

95:                                               ; preds = %69
  %96 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %80, i64 %89) #10, !srcloc !15
  %97 = extractvalue { i64, i64 } %96, 1
  br label %98

98:                                               ; preds = %95, %91
  %99 = phi i64 [ %94, %91 ], [ %97, %95 ]
  %100 = load i8, ptr %85, align 1
  %101 = zext i8 %100 to i64
  %102 = shl i64 %99, %101
  %103 = icmp ult i64 %102, %71
  %104 = trunc i64 %99 to i32
  br i1 %103, label %105, label %182

105:                                              ; preds = %98
  %106 = select i1 %83, i32 2, i32 1
  %107 = getelementptr [5 x i8], ptr @atmel_tcb_divisors, i32 0, i32 %106
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i64
  %110 = mul nuw nsw i64 %109, 1000000000
  %111 = icmp ult i64 %110, 4294967296
  br i1 %111, label %115, label %112, !prof !14

112:                                              ; preds = %105
  %113 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %80, i64 %110) #10, !srcloc !15
  %114 = extractvalue { i64, i64 } %113, 1
  br label %119

115:                                              ; preds = %105
  %116 = trunc i64 %110 to i32
  %117 = udiv i32 %116, %80
  %118 = zext i32 %117 to i64
  br label %119

119:                                              ; preds = %115, %112
  %120 = phi i64 [ %118, %115 ], [ %114, %112 ]
  %121 = load i8, ptr %85, align 1
  %122 = zext i8 %121 to i64
  %123 = shl i64 %120, %122
  %124 = icmp ult i64 %123, %71
  %125 = trunc i64 %120 to i32
  br i1 %124, label %126, label %182

126:                                              ; preds = %119
  %127 = add nuw nsw i32 %106, 1
  %128 = icmp eq i32 %127, 4
  br i1 %128, label %172, label %129

129:                                              ; preds = %126
  %130 = getelementptr [5 x i8], ptr @atmel_tcb_divisors, i32 0, i32 %127
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i64
  %133 = mul nuw nsw i64 %132, 1000000000
  %134 = icmp ult i64 %133, 4294967296
  br i1 %134, label %138, label %135, !prof !14

135:                                              ; preds = %129
  %136 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %80, i64 %133) #10, !srcloc !15
  %137 = extractvalue { i64, i64 } %136, 1
  br label %142

138:                                              ; preds = %129
  %139 = trunc i64 %133 to i32
  %140 = udiv i32 %139, %80
  %141 = zext i32 %140 to i64
  br label %142

142:                                              ; preds = %138, %135
  %143 = phi i64 [ %141, %138 ], [ %137, %135 ]
  %144 = load i8, ptr %85, align 1
  %145 = zext i8 %144 to i64
  %146 = shl i64 %143, %145
  %147 = icmp ult i64 %146, %71
  %148 = trunc i64 %143 to i32
  br i1 %147, label %149, label %182

149:                                              ; preds = %142
  %150 = add nuw nsw i32 %106, 2
  %151 = icmp eq i32 %150, 4
  br i1 %151, label %172, label %152

152:                                              ; preds = %149
  %153 = getelementptr [5 x i8], ptr @atmel_tcb_divisors, i32 0, i32 %150
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i64
  %156 = mul nuw nsw i64 %155, 1000000000
  %157 = icmp ult i64 %156, 4294967296
  br i1 %157, label %161, label %158, !prof !14

158:                                              ; preds = %152
  %159 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %80, i64 %156) #10, !srcloc !15
  %160 = extractvalue { i64, i64 } %159, 1
  br label %165

161:                                              ; preds = %152
  %162 = trunc i64 %156 to i32
  %163 = udiv i32 %162, %80
  %164 = zext i32 %163 to i64
  br label %165

165:                                              ; preds = %161, %158
  %166 = phi i64 [ %164, %161 ], [ %160, %158 ]
  %167 = load i8, ptr %85, align 1
  %168 = zext i8 %167 to i64
  %169 = shl i64 %166, %168
  %170 = icmp ult i64 %169, %71
  %171 = trunc i64 %166 to i32
  br i1 %170, label %172, label %182

172:                                              ; preds = %165, %149, %126
  %173 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 7
  %174 = load ptr, ptr %173, align 4
  %175 = tail call i32 @clk_get_rate(ptr noundef %174) #8
  %176 = udiv i32 1000000000, %175
  %177 = zext i32 %176 to i64
  %178 = load i8, ptr %85, align 1
  %179 = zext i8 %178 to i64
  %180 = shl i64 %177, %179
  %181 = icmp ult i64 %180, %71
  br i1 %181, label %306, label %182

182:                                              ; preds = %172, %165, %142, %119, %98
  %183 = phi i32 [ 4, %172 ], [ %84, %98 ], [ %106, %119 ], [ %127, %142 ], [ %150, %165 ]
  %184 = phi i32 [ %176, %172 ], [ %104, %98 ], [ %125, %119 ], [ %148, %142 ], [ %171, %165 ]
  %185 = udiv i32 %76, %184
  %186 = udiv i32 %72, %184
  %187 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %188 = load i32, ptr %187, align 8
  %189 = icmp eq i32 %188, 0
  %190 = getelementptr %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 8, i32 1
  %191 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 8
  %192 = select i1 %189, ptr %190, ptr %191
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %211, label %195

195:                                              ; preds = %182
  %196 = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %193, i32 0, i32 2
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %211, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %193, i32 0, i32 3
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %197, %201
  br i1 %202, label %211, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %193, i32 0, i32 1
  %205 = load i32, ptr %204, align 4
  %206 = icmp eq i32 %205, %183
  %207 = icmp eq i32 %201, %186
  %208 = select i1 %206, i1 %207, i1 false
  br i1 %208, label %211, label %209

209:                                              ; preds = %203
  %210 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %210, ptr noundef nonnull @.str.6) #9
  br label %306

211:                                              ; preds = %203, %199, %195, %182
  %212 = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %77, i32 0, i32 3
  store i32 %186, ptr %212, align 4
  %213 = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %77, i32 0, i32 1
  store i32 %183, ptr %213, align 4
  %214 = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %77, i32 0, i32 2
  store i32 %185, ptr %214, align 4
  %215 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %216 = load i32, ptr %215, align 4
  %217 = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %215, i32 0, i32 2
  %218 = load i32, ptr %217, align 4
  %219 = icmp eq i32 %218, 0
  %220 = icmp eq i32 %216, 0
  %221 = zext i1 %220 to i32
  %222 = select i1 %219, i32 %221, i32 %216
  %223 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %223) #8
  %224 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 4
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 2
  %227 = load i8, ptr %226, align 4
  %228 = zext i8 %227 to i32
  %229 = shl nuw nsw i32 %228, 6
  %230 = or i32 %229, 4
  %231 = call i32 @regmap_read(ptr noundef %225, i32 noundef %230, ptr noundef nonnull %4) #8
  %232 = load i32, ptr %4, align 4
  %233 = load i32, ptr %187, align 8
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %211
  %236 = and i32 %232, -16711688
  %237 = icmp eq i32 %222, 1
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = or i32 %236, 8388608
  br label %249

240:                                              ; preds = %235
  %241 = or i32 %236, 4194304
  br label %249

242:                                              ; preds = %211
  %243 = and i32 %232, 16777208
  %244 = icmp eq i32 %222, 1
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = or i32 %243, -2147483648
  br label %249

247:                                              ; preds = %242
  %248 = or i32 %243, 1073741824
  br label %249

249:                                              ; preds = %247, %245, %240, %238
  %250 = phi i32 [ %246, %245 ], [ %248, %247 ], [ %239, %238 ], [ %241, %240 ]
  %251 = load i32, ptr %217, align 4
  %252 = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %215, i32 0, i32 3
  %253 = load i32, ptr %252, align 4
  %254 = icmp eq i32 %251, %253
  %255 = icmp eq i32 %251, 0
  %256 = or i1 %255, %254
  br i1 %256, label %269, label %257

257:                                              ; preds = %249
  %258 = icmp eq i32 %222, 1
  br i1 %234, label %259, label %264

259:                                              ; preds = %257
  br i1 %258, label %260, label %262

260:                                              ; preds = %259
  %261 = or i32 %250, 589824
  br label %269

262:                                              ; preds = %259
  %263 = or i32 %250, 393216
  br label %269

264:                                              ; preds = %257
  br i1 %258, label %265, label %267

265:                                              ; preds = %264
  %266 = or i32 %250, 150994944
  br label %269

267:                                              ; preds = %264
  %268 = or i32 %250, 100663296
  br label %269

269:                                              ; preds = %267, %265, %262, %260, %249
  %270 = phi i32 [ %263, %262 ], [ %261, %260 ], [ %268, %267 ], [ %266, %265 ], [ %250, %249 ]
  %271 = getelementptr inbounds %struct.atmel_tcb_pwm_device, ptr %215, i32 0, i32 1
  %272 = load i32, ptr %271, align 4
  %273 = and i32 %272, 7
  %274 = or i32 %273, %270
  store i32 %274, ptr %4, align 4
  %275 = load ptr, ptr %224, align 4
  %276 = load i8, ptr %226, align 4
  %277 = zext i8 %276 to i32
  %278 = shl nuw nsw i32 %277, 6
  %279 = or i32 %278, 4
  %280 = call i32 @regmap_write(ptr noundef %275, i32 noundef %279, i32 noundef %274) #8
  %281 = load i32, ptr %187, align 8
  %282 = icmp eq i32 %281, 0
  %283 = load ptr, ptr %224, align 4
  %284 = load i8, ptr %226, align 4
  %285 = zext i8 %284 to i32
  %286 = shl nuw nsw i32 %285, 6
  %287 = select i1 %282, i32 20, i32 24
  %288 = or i32 %286, %287
  %289 = load i32, ptr %217, align 4
  %290 = call i32 @regmap_write(ptr noundef %283, i32 noundef %288, i32 noundef %289) #8
  %291 = load ptr, ptr %224, align 4
  %292 = load i8, ptr %226, align 4
  %293 = zext i8 %292 to i32
  %294 = shl nuw nsw i32 %293, 6
  %295 = or i32 %294, 28
  %296 = load i32, ptr %252, align 4
  %297 = call i32 @regmap_write(ptr noundef %291, i32 noundef %295, i32 noundef %296) #8
  %298 = load ptr, ptr %224, align 4
  %299 = load i8, ptr %226, align 4
  %300 = zext i8 %299 to i32
  %301 = shl nuw nsw i32 %300, 6
  %302 = call i32 @regmap_write(ptr noundef %298, i32 noundef %301, i32 noundef 5) #8
  %303 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %0, i32 0, i32 9
  store i32 1, ptr %303, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %304 = load i16, ptr %223, align 4
  %305 = add i16 %304, 1
  store i16 %305, ptr %223, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %306

306:                                              ; preds = %269, %209, %172, %48
  %307 = phi i32 [ 0, %269 ], [ 0, %48 ], [ -34, %172 ], [ -22, %209 ]
  ret i32 %307
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_set_chip_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get_chip_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tcb_pwm_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %3, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = shl nuw nsw i32 %6, 6
  %10 = or i32 %9, 4
  %11 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %3, i32 0, i32 9, i32 1
  %12 = tail call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef %11) #8
  %13 = load ptr, ptr %7, align 4
  %14 = or i32 %9, 20
  %15 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %3, i32 0, i32 9, i32 2
  %16 = tail call i32 @regmap_read(ptr noundef %13, i32 noundef %14, ptr noundef %15) #8
  %17 = load ptr, ptr %7, align 4
  %18 = or i32 %9, 24
  %19 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %3, i32 0, i32 9, i32 3
  %20 = tail call i32 @regmap_read(ptr noundef %17, i32 noundef %18, ptr noundef %19) #8
  %21 = load ptr, ptr %7, align 4
  %22 = or i32 %9, 28
  %23 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %3, i32 0, i32 9, i32 4
  %24 = tail call i32 @regmap_read(ptr noundef %21, i32 noundef %22, ptr noundef %23) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tcb_pwm_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %3, i32 0, i32 9
  %5 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %3, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %3, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = shl nuw nsw i32 %7, 6
  %11 = or i32 %10, 4
  %12 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %3, i32 0, i32 9, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %11, i32 noundef %13) #8
  %15 = load ptr, ptr %8, align 4
  %16 = or i32 %10, 20
  %17 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %3, i32 0, i32 9, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %16, i32 noundef %18) #8
  %20 = load ptr, ptr %8, align 4
  %21 = or i32 %10, 24
  %22 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %3, i32 0, i32 9, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef %21, i32 noundef %23) #8
  %25 = load ptr, ptr %8, align 4
  %26 = or i32 %10, 28
  %27 = getelementptr inbounds %struct.atmel_tcb_pwm_chip, ptr %3, i32 0, i32 9, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef %26, i32 noundef %28) #8
  %30 = load i32, ptr %4, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load ptr, ptr %8, align 4
  %34 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 5, i32 noundef %10) #8
  br label %35

35:                                               ; preds = %32, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 2148939009}
!11 = !{i64 2148934833}
!12 = !{i64 2148934908, i64 2148934935, i64 2148934982, i64 2148935004, i64 2148935032, i64 2148935052}
!13 = !{i64 2148962012}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2147903270, i64 2147903550, i64 2147903884, i64 2147904218}
