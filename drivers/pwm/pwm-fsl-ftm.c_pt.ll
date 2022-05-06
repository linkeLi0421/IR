; ModuleID = '/llk/IR/drivers/pwm/pwm-fsl-ftm.c_pt.bc'
source_filename = "../drivers/pwm/pwm-fsl-ftm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fsl_ftm_soc = type { i8 }
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
%struct.lock_class_key = type {}
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.fsl_pwm_chip = type { %struct.pwm_chip, %struct.mutex, ptr, %struct.fsl_pwm_periodcfg, ptr, [4 x ptr], ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.fsl_pwm_periodcfg = type { i32, i32, i32 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@fsl_pwm_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-ftm-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vf610_ftm_pwm }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-ftm-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8qm_ftm_pwm }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description166 = internal constant [50 x i8] c"description=Freescale FlexTimer Module PWM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author167 = internal constant [41 x i8] c"author=Xiubo Li <Li.Xiubo@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias168 = internal constant [27 x i8] c"alias=platform:fsl-ftm-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_license169 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@vf610_ftm_pwm = internal constant %struct.fsl_ftm_soc zeroinitializer, align 1
@imx8qm_ftm_pwm = internal constant %struct.fsl_ftm_soc { i8 1 }, align 1
@fsl_pwm_driver = internal global %struct.platform_driver { ptr @fsl_pwm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_pwm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"fsl-ftm-pwm\00", align 1
@fsl_pwm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @fsl_pwm_suspend, ptr @fsl_pwm_resume, ptr @fsl_pwm_suspend, ptr @fsl_pwm_resume, ptr @fsl_pwm_suspend, ptr @fsl_pwm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fsl_pwm_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&fpc->lock\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ftm_sys\00", align 1
@fsl_pwm_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr @fsl_pwm_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 152, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"regmap init failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to get \22ftm_sys\22 clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ftm_fix\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ftm_ext\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ftm_cnt_clk_en\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@fsl_pwm_ops = internal constant %struct.pwm_ops { ptr @fsl_pwm_request, ptr @fsl_pwm_free, ptr null, ptr @fsl_pwm_apply, ptr null, ptr @__this_module, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to add PWM chip: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"failed to calculate new period\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"Cannot change period for PWM %u, disable other PWMs first\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias168, ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description166, ptr @__UNIQUE_ID_license169], section "llvm.metadata"

@__mod_of__fsl_pwm_dt_ids_device_table = dso_local alias [3 x %struct.of_device_id], ptr @fsl_pwm_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_pwm_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_pwm_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 96, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %78, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %3, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @fsl_pwm_probe.__key) #6
  %7 = tail call ptr @of_device_get_match_data(ptr noundef %2) #6
  %8 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %3, i32 0, i32 6
  store ptr %7, ptr %8, align 4
  store ptr %2, ptr %3, align 4
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = ptrtoint ptr %9 to i32
  br label %78

13:                                               ; preds = %5
  %14 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef %9, ptr noundef nonnull @fsl_pwm_regmap_config, ptr noundef null, ptr noundef null) #6
  %15 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %3, i32 0, i32 2
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  %18 = load ptr, ptr %15, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %78

20:                                               ; preds = %13
  %21 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  %22 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %3, i32 0, i32 5
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #7
  %25 = load ptr, ptr %22, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %78

27:                                               ; preds = %20
  %28 = load ptr, ptr %3, align 4
  %29 = tail call ptr @devm_clk_get(ptr noundef %28, ptr noundef nonnull @.str.5) #6
  %30 = getelementptr %struct.fsl_pwm_chip, ptr %3, i32 0, i32 5, i32 1
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = ptrtoint ptr %29 to i32
  br label %78

34:                                               ; preds = %27
  %35 = load ptr, ptr %3, align 4
  %36 = tail call ptr @devm_clk_get(ptr noundef %35, ptr noundef nonnull @.str.6) #6
  %37 = getelementptr %struct.fsl_pwm_chip, ptr %3, i32 0, i32 5, i32 2
  store ptr %36, ptr %37, align 4
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = ptrtoint ptr %36 to i32
  br label %78

41:                                               ; preds = %34
  %42 = load ptr, ptr %3, align 4
  %43 = tail call ptr @devm_clk_get(ptr noundef %42, ptr noundef nonnull @.str.7) #6
  %44 = getelementptr %struct.fsl_pwm_chip, ptr %3, i32 0, i32 5, i32 3
  store ptr %43, ptr %44, align 4
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = ptrtoint ptr %43 to i32
  br label %78

48:                                               ; preds = %41
  %49 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.8) #6
  %50 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %3, i32 0, i32 4
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load ptr, ptr %22, align 4
  store ptr %53, ptr %50, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 1
  store ptr @fsl_pwm_ops, ptr %55, align 4
  %56 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 3
  store i32 8, ptr %56, align 4
  %57 = tail call i32 @devm_pwmchip_add(ptr noundef %2, ptr noundef nonnull %3) #6
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %57) #7
  br label %78

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %61, align 8
  %62 = load ptr, ptr %50, align 4
  %63 = tail call i32 @clk_prepare(ptr noundef %62) #6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = tail call i32 @clk_enable(ptr noundef %62) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load ptr, ptr %15, align 4
  %70 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 76, i32 noundef 0) #6
  %71 = load ptr, ptr %15, align 4
  %72 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 92, i32 noundef 0) #6
  %73 = load ptr, ptr %15, align 4
  %74 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 96, i32 noundef 255) #6
  %75 = load ptr, ptr %50, align 4
  tail call void @clk_disable(ptr noundef %75) #6
  br label %76

76:                                               ; preds = %68, %65
  %77 = phi ptr [ %75, %68 ], [ %62, %65 ]
  tail call void @clk_unprepare(ptr noundef %77) #6
  br label %78

78:                                               ; preds = %76, %60, %59, %46, %39, %32, %24, %17, %11, %1
  %79 = phi i32 [ %12, %11 ], [ %19, %17 ], [ %26, %24 ], [ %33, %32 ], [ %40, %39 ], [ %47, %46 ], [ %57, %59 ], [ -12, %1 ], [ %63, %60 ], [ %66, %76 ]
  ret i32 %79
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_pwm_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  switch i32 %1, label %3 [
    i32 116, label %4
    i32 84, label %4
    i32 4, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_pwm_request(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = tail call i32 @clk_enable(ptr noundef %4) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %4) #6
  br label %25

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %17) #6
  %18 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, 16
  %23 = shl nuw i32 1, %22
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 0, i32 noundef %23, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @mutex_unlock(ptr noundef %17) #6
  br label %25

25:                                               ; preds = %16, %11, %10, %2
  %26 = phi i32 [ 0, %16 ], [ 0, %11 ], [ %8, %10 ], [ %5, %2 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsl_pwm_free(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #6
  %9 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, 16
  %14 = shl nuw i32 1, %13
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef %14, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @mutex_unlock(ptr noundef %8) #6
  br label %16

16:                                               ; preds = %7, %2
  %17 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #6
  tail call void @clk_unprepare(ptr noundef %18) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_pwm_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #6
  %9 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 3
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %347, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = shl nuw i32 1, %20
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 96, i32 noundef %21, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %23 = getelementptr %struct.fsl_pwm_chip, ptr %0, i32 0, i32 5, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %24) #6
  tail call void @clk_unprepare(ptr noundef %24) #6
  %25 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.fsl_pwm_chip, ptr %0, i32 0, i32 5, i32 %26
  %28 = load ptr, ptr %27, align 4
  tail call void @clk_disable(ptr noundef %28) #6
  tail call void @clk_unprepare(ptr noundef %28) #6
  br label %347

29:                                               ; preds = %3
  %30 = load i64, ptr %2, align 8
  %31 = getelementptr %struct.fsl_pwm_chip, ptr %0, i32 0, i32 5, i32 0
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @clk_get_rate(ptr noundef %32) #6
  %34 = zext i32 %33 to i64
  %35 = and i64 %30, 4294967295
  %36 = mul nuw i64 %35, %34
  %37 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %36, i32 0) #8, !srcloc !9
  %38 = extractvalue { i64, i32 } %37, 0
  %39 = extractvalue { i64, i32 } %37, 1
  %40 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %36, i64 %38, i32 %39) #8, !srcloc !10
  %41 = extractvalue { i64, i32 } %40, 0
  %42 = icmp ult i64 %41, 536870912
  br i1 %42, label %75, label %43

43:                                               ; preds = %29
  %44 = lshr i64 %41, 29
  %45 = icmp ult i64 %41, 35184908959744
  %46 = trunc i64 %44 to i32
  br i1 %45, label %174, label %47

47:                                               ; preds = %43
  %48 = lshr i64 %41, 30
  %49 = icmp ult i64 %41, 70369817919488
  %50 = trunc i64 %48 to i32
  br i1 %49, label %174, label %51

51:                                               ; preds = %47
  %52 = lshr i64 %41, 31
  %53 = icmp ult i64 %41, 140739635838976
  %54 = trunc i64 %52 to i32
  br i1 %53, label %174, label %55

55:                                               ; preds = %51
  %56 = lshr i64 %41, 32
  %57 = icmp ult i64 %41, 281479271677952
  %58 = trunc i64 %56 to i32
  br i1 %57, label %174, label %59

59:                                               ; preds = %55
  %60 = lshr i64 %41, 33
  %61 = icmp ult i64 %41, 562958543355904
  %62 = trunc i64 %60 to i32
  br i1 %61, label %174, label %63

63:                                               ; preds = %59
  %64 = lshr i64 %41, 34
  %65 = icmp ult i64 %41, 1125917086711808
  %66 = trunc i64 %64 to i32
  br i1 %65, label %174, label %67

67:                                               ; preds = %63
  %68 = lshr i64 %41, 35
  %69 = icmp ult i64 %41, 2251834173423616
  %70 = trunc i64 %68 to i32
  br i1 %69, label %174, label %71

71:                                               ; preds = %67
  %72 = lshr i64 %41, 36
  %73 = icmp ult i64 %41, 4503668346847232
  %74 = trunc i64 %72 to i32
  br i1 %73, label %174, label %75

75:                                               ; preds = %71, %29
  %76 = getelementptr %struct.fsl_pwm_chip, ptr %0, i32 0, i32 5, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 @clk_get_rate(ptr noundef %77) #6
  %79 = getelementptr %struct.fsl_pwm_chip, ptr %0, i32 0, i32 5, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @clk_get_rate(ptr noundef %80) #6
  %82 = icmp ugt i32 %78, %81
  %83 = select i1 %82, i32 1, i32 2
  %84 = select i1 %82, i32 2, i32 1
  %85 = getelementptr %struct.fsl_pwm_chip, ptr %0, i32 0, i32 5, i32 %83
  %86 = load ptr, ptr %85, align 4
  %87 = tail call i32 @clk_get_rate(ptr noundef %86) #6
  %88 = zext i32 %87 to i64
  %89 = mul nuw i64 %35, %88
  %90 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %89, i32 0) #8, !srcloc !9
  %91 = extractvalue { i64, i32 } %90, 0
  %92 = extractvalue { i64, i32 } %90, 1
  %93 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %89, i64 %91, i32 %92) #8, !srcloc !10
  %94 = extractvalue { i64, i32 } %93, 0
  %95 = icmp ult i64 %94, 536870912
  br i1 %95, label %128, label %96

96:                                               ; preds = %75
  %97 = lshr i64 %94, 29
  %98 = icmp ult i64 %94, 35184908959744
  %99 = trunc i64 %97 to i32
  br i1 %98, label %174, label %100

100:                                              ; preds = %96
  %101 = lshr i64 %94, 30
  %102 = icmp ult i64 %94, 70369817919488
  %103 = trunc i64 %101 to i32
  br i1 %102, label %174, label %104

104:                                              ; preds = %100
  %105 = lshr i64 %94, 31
  %106 = icmp ult i64 %94, 140739635838976
  %107 = trunc i64 %105 to i32
  br i1 %106, label %174, label %108

108:                                              ; preds = %104
  %109 = lshr i64 %94, 32
  %110 = icmp ult i64 %94, 281479271677952
  %111 = trunc i64 %109 to i32
  br i1 %110, label %174, label %112

112:                                              ; preds = %108
  %113 = lshr i64 %94, 33
  %114 = icmp ult i64 %94, 562958543355904
  %115 = trunc i64 %113 to i32
  br i1 %114, label %174, label %116

116:                                              ; preds = %112
  %117 = lshr i64 %94, 34
  %118 = icmp ult i64 %94, 1125917086711808
  %119 = trunc i64 %117 to i32
  br i1 %118, label %174, label %120

120:                                              ; preds = %116
  %121 = lshr i64 %94, 35
  %122 = icmp ult i64 %94, 2251834173423616
  %123 = trunc i64 %121 to i32
  br i1 %122, label %174, label %124

124:                                              ; preds = %120
  %125 = lshr i64 %94, 36
  %126 = icmp ult i64 %94, 4503668346847232
  %127 = trunc i64 %125 to i32
  br i1 %126, label %174, label %128

128:                                              ; preds = %124, %75
  %129 = getelementptr %struct.fsl_pwm_chip, ptr %0, i32 0, i32 5, i32 %84
  %130 = load ptr, ptr %129, align 4
  %131 = tail call i32 @clk_get_rate(ptr noundef %130) #6
  %132 = zext i32 %131 to i64
  %133 = mul nuw i64 %35, %132
  %134 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %133, i32 0) #8, !srcloc !9
  %135 = extractvalue { i64, i32 } %134, 0
  %136 = extractvalue { i64, i32 } %134, 1
  %137 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %133, i64 %135, i32 %136) #8, !srcloc !10
  %138 = extractvalue { i64, i32 } %137, 0
  %139 = icmp ult i64 %138, 536870912
  br i1 %139, label %172, label %140

140:                                              ; preds = %128
  %141 = lshr i64 %138, 29
  %142 = icmp ult i64 %138, 35184908959744
  %143 = trunc i64 %141 to i32
  br i1 %142, label %174, label %144

144:                                              ; preds = %140
  %145 = lshr i64 %138, 30
  %146 = icmp ult i64 %138, 70369817919488
  %147 = trunc i64 %145 to i32
  br i1 %146, label %174, label %148

148:                                              ; preds = %144
  %149 = lshr i64 %138, 31
  %150 = icmp ult i64 %138, 140739635838976
  %151 = trunc i64 %149 to i32
  br i1 %150, label %174, label %152

152:                                              ; preds = %148
  %153 = lshr i64 %138, 32
  %154 = icmp ult i64 %138, 281479271677952
  %155 = trunc i64 %153 to i32
  br i1 %154, label %174, label %156

156:                                              ; preds = %152
  %157 = lshr i64 %138, 33
  %158 = icmp ult i64 %138, 562958543355904
  %159 = trunc i64 %157 to i32
  br i1 %158, label %174, label %160

160:                                              ; preds = %156
  %161 = lshr i64 %138, 34
  %162 = icmp ult i64 %138, 1125917086711808
  %163 = trunc i64 %161 to i32
  br i1 %162, label %174, label %164

164:                                              ; preds = %160
  %165 = lshr i64 %138, 35
  %166 = icmp ult i64 %138, 2251834173423616
  %167 = trunc i64 %165 to i32
  br i1 %166, label %174, label %168

168:                                              ; preds = %164
  %169 = lshr i64 %138, 36
  %170 = icmp ult i64 %138, 4503668346847232
  %171 = trunc i64 %169 to i32
  br i1 %170, label %174, label %172

172:                                              ; preds = %168, %128
  %173 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.10) #7
  br label %347

174:                                              ; preds = %168, %164, %160, %156, %152, %148, %144, %140, %124, %120, %116, %112, %108, %104, %100, %96, %71, %67, %63, %59, %55, %51, %47, %43
  %175 = phi i32 [ 0, %43 ], [ 0, %47 ], [ 0, %51 ], [ 0, %55 ], [ 0, %59 ], [ 0, %63 ], [ 0, %67 ], [ 0, %71 ], [ %83, %96 ], [ %83, %100 ], [ %83, %104 ], [ %83, %108 ], [ %83, %112 ], [ %83, %116 ], [ %83, %120 ], [ %83, %124 ], [ %84, %168 ], [ %84, %164 ], [ %84, %160 ], [ %84, %156 ], [ %84, %152 ], [ %84, %148 ], [ %84, %144 ], [ %84, %140 ]
  %176 = phi i32 [ 0, %43 ], [ 1, %47 ], [ 2, %51 ], [ 3, %55 ], [ 4, %59 ], [ 5, %63 ], [ 6, %67 ], [ 7, %71 ], [ 0, %96 ], [ 1, %100 ], [ 2, %104 ], [ 3, %108 ], [ 4, %112 ], [ 5, %116 ], [ 6, %120 ], [ 7, %124 ], [ 7, %168 ], [ 6, %164 ], [ 5, %160 ], [ 4, %156 ], [ 3, %152 ], [ 2, %148 ], [ 1, %144 ], [ 0, %140 ]
  %177 = phi i32 [ %46, %43 ], [ %50, %47 ], [ %54, %51 ], [ %58, %55 ], [ %62, %59 ], [ %66, %63 ], [ %70, %67 ], [ %74, %71 ], [ %99, %96 ], [ %103, %100 ], [ %107, %104 ], [ %111, %108 ], [ %115, %112 ], [ %119, %116 ], [ %123, %120 ], [ %127, %124 ], [ %171, %168 ], [ %167, %164 ], [ %163, %160 ], [ %159, %156 ], [ %155, %152 ], [ %151, %148 ], [ %147, %144 ], [ %143, %140 ]
  %178 = add nsw i32 %177, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !annotation !11
  %179 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 2
  %180 = load ptr, ptr %179, align 4
  %181 = call i32 @regmap_read(ptr noundef %180, i32 noundef 96, ptr noundef nonnull %7) #6
  %182 = load i32, ptr %7, align 4
  %183 = and i32 %182, 255
  %184 = icmp eq i32 %183, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  br i1 %184, label %224, label %185

185:                                              ; preds = %174
  %186 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 3
  %187 = load i32, ptr %186, align 4
  %188 = icmp eq i32 %187, %175
  br i1 %188, label %189, label %197

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 3, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, %176
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 3, i32 2
  %195 = load i32, ptr %194, align 4
  %196 = icmp eq i32 %195, %178
  br i1 %196, label %245, label %197

197:                                              ; preds = %193, %189, %185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !11
  %198 = load ptr, ptr %179, align 4
  %199 = call i32 @regmap_read(ptr noundef %198, i32 noundef 96, ptr noundef nonnull %6) #6
  %200 = load i32, ptr %6, align 4
  %201 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %202 = load i32, ptr %201, align 8
  %203 = shl nuw i32 1, %202
  %204 = or i32 %203, %200
  %205 = and i32 %204, 255
  %206 = icmp eq i32 %205, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br i1 %206, label %209, label %207

207:                                              ; preds = %197
  %208 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.11, i32 noundef %202) #7
  br label %347

209:                                              ; preds = %197
  %210 = load i32, ptr %186, align 4
  %211 = icmp eq i32 %210, %175
  br i1 %211, label %224, label %212

212:                                              ; preds = %209
  %213 = getelementptr %struct.fsl_pwm_chip, ptr %0, i32 0, i32 5, i32 %175
  %214 = load ptr, ptr %213, align 4
  %215 = call i32 @clk_prepare(ptr noundef %214) #6
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %347

217:                                              ; preds = %212
  %218 = call i32 @clk_enable(ptr noundef %214) #6
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %217
  call void @clk_unprepare(ptr noundef %214) #6
  br label %347

221:                                              ; preds = %217
  %222 = getelementptr %struct.fsl_pwm_chip, ptr %0, i32 0, i32 5, i32 %210
  %223 = load ptr, ptr %222, align 4
  call void @clk_disable(ptr noundef %223) #6
  call void @clk_unprepare(ptr noundef %223) #6
  br label %224

224:                                              ; preds = %221, %209, %174
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !11
  %225 = load ptr, ptr %179, align 4
  %226 = call i32 @regmap_read(ptr noundef %225, i32 noundef 116, ptr noundef nonnull %5) #6
  %227 = load i32, ptr %5, align 4
  %228 = and i32 %227, 64
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %224
  %231 = load ptr, ptr %179, align 4
  %232 = call i32 @regmap_update_bits_base(ptr noundef %231, i32 noundef 84, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %233

233:                                              ; preds = %230, %224
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  %234 = load ptr, ptr %179, align 4
  %235 = shl nuw nsw i32 %175, 3
  %236 = add nuw nsw i32 %235, 8
  %237 = call i32 @regmap_update_bits_base(ptr noundef %234, i32 noundef 0, i32 noundef 24, i32 noundef %236, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %238 = load ptr, ptr %179, align 4
  %239 = call i32 @regmap_update_bits_base(ptr noundef %238, i32 noundef 0, i32 noundef 7, i32 noundef %176, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %240 = load ptr, ptr %179, align 4
  %241 = call i32 @regmap_write(ptr noundef %240, i32 noundef 8, i32 noundef %178) #6
  %242 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 3
  store i32 %175, ptr %242, align 4
  %243 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 3, i32 1
  store i32 %176, ptr %243, align 4
  %244 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 3, i32 2
  store i32 %178, ptr %244, align 4
  br label %257

245:                                              ; preds = %193
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !11
  %246 = load ptr, ptr %179, align 4
  %247 = call i32 @regmap_read(ptr noundef %246, i32 noundef 116, ptr noundef nonnull %4) #6
  %248 = load i32, ptr %4, align 4
  %249 = and i32 %248, 64
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %245
  %252 = load ptr, ptr %179, align 4
  %253 = call i32 @regmap_update_bits_base(ptr noundef %252, i32 noundef 84, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %254

254:                                              ; preds = %251, %245
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %255 = load i32, ptr %194, align 4
  %256 = load i32, ptr %186, align 4
  br label %257

257:                                              ; preds = %254, %233
  %258 = phi i32 [ %256, %254 ], [ %175, %233 ]
  %259 = phi i32 [ %255, %254 ], [ %178, %233 ]
  %260 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %261 = load i64, ptr %260, align 8
  %262 = add i32 %259, 1
  %263 = getelementptr %struct.fsl_pwm_chip, ptr %0, i32 0, i32 5, i32 %258
  %264 = load ptr, ptr %263, align 4
  %265 = call i32 @clk_get_rate(ptr noundef %264) #6
  %266 = zext i32 %262 to i64
  %267 = mul nuw nsw i64 %266, 1000000000
  %268 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 3, i32 1
  %269 = load i32, ptr %268, align 4
  %270 = lshr i32 %265, %269
  %271 = icmp ult i64 %267, 4294967296
  br i1 %271, label %272, label %275, !prof !12

272:                                              ; preds = %257
  %273 = trunc i64 %267 to i32
  %274 = udiv i32 %273, %270
  br label %279

275:                                              ; preds = %257
  %276 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %270, i64 %267) #8, !srcloc !13
  %277 = extractvalue { i64, i64 } %276, 1
  %278 = trunc i64 %277 to i32
  br label %279

279:                                              ; preds = %275, %272
  %280 = phi i32 [ %274, %272 ], [ %278, %275 ]
  %281 = and i64 %261, 4294967295
  %282 = mul nuw i64 %281, %266
  %283 = icmp ult i64 %282, 4294967296
  br i1 %283, label %284, label %287, !prof !12

284:                                              ; preds = %279
  %285 = trunc i64 %282 to i32
  %286 = udiv i32 %285, %280
  br label %291

287:                                              ; preds = %279
  %288 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %280, i64 %282) #8, !srcloc !13
  %289 = extractvalue { i64, i64 } %288, 1
  %290 = trunc i64 %289 to i32
  br label %291

291:                                              ; preds = %287, %284
  %292 = phi i32 [ %286, %284 ], [ %290, %287 ]
  %293 = load ptr, ptr %179, align 4
  %294 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %295 = load i32, ptr %294, align 8
  %296 = shl i32 %295, 3
  %297 = add i32 %296, 12
  %298 = call i32 @regmap_write(ptr noundef %293, i32 noundef %297, i32 noundef 40) #6
  %299 = load ptr, ptr %179, align 4
  %300 = load i32, ptr %294, align 8
  %301 = shl i32 %300, 3
  %302 = add i32 %301, 16
  %303 = call i32 @regmap_write(ptr noundef %299, i32 noundef %302, i32 noundef %292) #6
  %304 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %305 = load i32, ptr %304, align 8
  %306 = icmp eq i32 %305, 1
  %307 = load i32, ptr %294, align 8
  %308 = shl nuw i32 1, %307
  %309 = select i1 %306, i32 %308, i32 0
  %310 = load ptr, ptr %179, align 4
  %311 = call i32 @regmap_update_bits_base(ptr noundef %310, i32 noundef 112, i32 noundef %308, i32 noundef %309, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %312 = load ptr, ptr %179, align 4
  %313 = call i32 @regmap_update_bits_base(ptr noundef %312, i32 noundef 116, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %314 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 3
  %315 = load i8, ptr %314, align 4, !range !8
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %317, label %347

317:                                              ; preds = %291
  %318 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %0, i32 0, i32 3
  %319 = load i32, ptr %318, align 4
  %320 = getelementptr %struct.fsl_pwm_chip, ptr %0, i32 0, i32 5, i32 %319
  %321 = load ptr, ptr %320, align 4
  %322 = call i32 @clk_prepare(ptr noundef %321) #6
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %347

324:                                              ; preds = %317
  %325 = call i32 @clk_enable(ptr noundef %321) #6
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %324
  call void @clk_unprepare(ptr noundef %321) #6
  br label %347

328:                                              ; preds = %324
  %329 = getelementptr %struct.fsl_pwm_chip, ptr %0, i32 0, i32 5, i32 3
  %330 = load ptr, ptr %329, align 4
  %331 = call i32 @clk_prepare(ptr noundef %330) #6
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %328
  %334 = call i32 @clk_enable(ptr noundef %330) #6
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %342, label %336

336:                                              ; preds = %333
  call void @clk_unprepare(ptr noundef %330) #6
  br label %337

337:                                              ; preds = %336, %328
  %338 = phi i32 [ %334, %336 ], [ %331, %328 ]
  %339 = load i32, ptr %318, align 4
  %340 = getelementptr %struct.fsl_pwm_chip, ptr %0, i32 0, i32 5, i32 %339
  %341 = load ptr, ptr %340, align 4
  call void @clk_disable(ptr noundef %341) #6
  call void @clk_unprepare(ptr noundef %341) #6
  br label %347

342:                                              ; preds = %333
  %343 = load ptr, ptr %179, align 4
  %344 = load i32, ptr %294, align 8
  %345 = shl nuw i32 1, %344
  %346 = call i32 @regmap_update_bits_base(ptr noundef %343, i32 noundef 96, i32 noundef %345, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %347

347:                                              ; preds = %342, %337, %327, %317, %291, %220, %212, %207, %172, %16, %12
  %348 = phi i32 [ 0, %291 ], [ %338, %337 ], [ 0, %342 ], [ 0, %16 ], [ 0, %12 ], [ %215, %212 ], [ %218, %220 ], [ -22, %172 ], [ -16, %207 ], [ %325, %327 ], [ %322, %317 ]
  call void @mutex_unlock(ptr noundef %8) #6
  ret i32 %348
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_pwm_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #6
  %6 = load ptr, ptr %4, align 4
  tail call void @regcache_mark_dirty(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 7
  %12 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %3, i32 0, i32 4
  %13 = getelementptr %struct.fsl_pwm_chip, ptr %3, i32 0, i32 5, i32 3
  %14 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %3, i32 0, i32 3
  br label %15

15:                                               ; preds = %32, %10
  %16 = phi i32 [ 0, %10 ], [ %33, %32 ]
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr %struct.pwm_device, ptr %17, i32 %16, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %23) #6
  tail call void @clk_unprepare(ptr noundef %23) #6
  %24 = getelementptr %struct.pwm_device, ptr %17, i32 %16, i32 7, i32 3
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %28) #6
  tail call void @clk_unprepare(ptr noundef %28) #6
  %29 = load i32, ptr %14, align 4
  %30 = getelementptr %struct.fsl_pwm_chip, ptr %3, i32 0, i32 5, i32 %29
  %31 = load ptr, ptr %30, align 4
  tail call void @clk_disable(ptr noundef %31) #6
  tail call void @clk_unprepare(ptr noundef %31) #6
  br label %32

32:                                               ; preds = %27, %22, %15
  %33 = add nuw i32 %16, 1
  %34 = load i32, ptr %7, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %15, label %36

36:                                               ; preds = %32, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_pwm_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %53, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 7
  %9 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %3, i32 0, i32 4
  %10 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %3, i32 0, i32 3
  %11 = getelementptr %struct.fsl_pwm_chip, ptr %3, i32 0, i32 5, i32 3
  br label %12

12:                                               ; preds = %49, %7
  %13 = phi i32 [ 0, %7 ], [ %50, %49 ]
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr %struct.pwm_device, ptr %14, i32 %13, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %49, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %9, align 4
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = tail call i32 @clk_enable(ptr noundef %20) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #6
  br label %27

27:                                               ; preds = %26, %23, %19
  %28 = getelementptr %struct.pwm_device, ptr %14, i32 %13, i32 7, i32 3
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %10, align 4
  %33 = getelementptr %struct.fsl_pwm_chip, ptr %3, i32 0, i32 5, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @clk_prepare(ptr noundef %34) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = tail call i32 @clk_enable(ptr noundef %34) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @clk_unprepare(ptr noundef %34) #6
  br label %41

41:                                               ; preds = %40, %37, %31
  %42 = load ptr, ptr %11, align 4
  %43 = tail call i32 @clk_prepare(ptr noundef %42) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = tail call i32 @clk_enable(ptr noundef %42) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @clk_unprepare(ptr noundef %42) #6
  br label %49

49:                                               ; preds = %48, %45, %41, %27, %12
  %50 = add nuw i32 %13, 1
  %51 = load i32, ptr %4, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %12, label %53

53:                                               ; preds = %49, %1
  %54 = getelementptr inbounds %struct.fsl_pwm_chip, ptr %3, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  tail call void @regcache_cache_only(ptr noundef %55, i1 noundef zeroext false) #6
  %56 = load ptr, ptr %54, align 4
  %57 = tail call i32 @regcache_sync(ptr noundef %56) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

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
!9 = !{i64 881531, i64 881558, i64 881580, i64 881608}
!10 = !{i64 881939, i64 881966, i64 881999, i64 882020, i64 882047, i64 882073}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148367075, i64 2148367355, i64 2148367689, i64 2148368023}
