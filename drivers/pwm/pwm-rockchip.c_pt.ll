; ModuleID = '/llk/IR/drivers/pwm/pwm-rockchip.c_pt.bc'
source_filename = "../drivers/pwm/pwm-rockchip.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rockchip_pwm_data = type { %struct.rockchip_pwm_regs, i32, i8, i8, i32 }
%struct.rockchip_pwm_regs = type { i32, i32, i32, i32 }
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
%struct.rockchip_pwm_chip = type { %struct.pwm_chip, ptr, ptr, ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@rockchip_pwm_dt_ids = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk2928-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_data_v1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_data_v2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,vop-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_data_vop }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_data_v3 }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author162 = internal constant [47 x i8] c"author=Beniamino Galvani <b.galvani@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description163 = internal constant [36 x i8] c"description=Rockchip SoC PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@pwm_data_v1 = internal constant %struct.rockchip_pwm_data { %struct.rockchip_pwm_regs { i32 4, i32 8, i32 0, i32 12 }, i32 2, i8 0, i8 0, i32 9 }, align 4
@pwm_data_v2 = internal constant %struct.rockchip_pwm_data { %struct.rockchip_pwm_regs { i32 8, i32 4, i32 0, i32 12 }, i32 1, i8 1, i8 0, i32 3 }, align 4
@pwm_data_vop = internal constant %struct.rockchip_pwm_data { %struct.rockchip_pwm_regs { i32 8, i32 4, i32 12, i32 0 }, i32 1, i8 1, i8 0, i32 3 }, align 4
@pwm_data_v3 = internal constant %struct.rockchip_pwm_data { %struct.rockchip_pwm_regs { i32 8, i32 4, i32 0, i32 12 }, i32 1, i8 1, i8 1, i32 3 }, align 4
@rockchip_pwm_driver = internal global %struct.platform_driver { ptr @rockchip_pwm_probe, ptr @rockchip_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"rockchip-pwm\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Can't get PWM clk\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Can't get APB clk: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Can't prepare enable PWM clk: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Can't prepare enable APB clk: %d\0A\00", align 1
@rockchip_pwm_ops = internal constant %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @rockchip_pwm_apply, ptr @rockchip_pwm_get_state, ptr @__this_module, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"pwmchip_add() failed: %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author162, ptr @__UNIQUE_ID_description163, ptr @__UNIQUE_ID_license164], section "llvm.metadata"

@__mod_of__rockchip_pwm_dt_ids_device_table = dso_local alias [5 x %struct.of_device_id], ptr @rockchip_pwm_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_pwm_driver, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_pwm_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_pwm_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @rockchip_pwm_dt_ids, ptr noundef %2) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %86, label %5

5:                                                ; preds = %1
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 52, i32 noundef 3520) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %86, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %10 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %6, i32 0, i32 4
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = ptrtoint ptr %9 to i32
  br label %86

14:                                               ; preds = %8
  %15 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #4
  %16 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %6, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #4
  store ptr %19, ptr %16, align 4
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = ptrtoint ptr %19 to i32
  %23 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %22, ptr noundef nonnull @.str.2) #4
  br label %86

24:                                               ; preds = %18, %14
  %25 = phi ptr [ %19, %18 ], [ %15, %14 ]
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @of_count_phandle_with_args(ptr noundef %27, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.5) #4
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi ptr [ %31, %30 ], [ %25, %24 ]
  %34 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %6, i32 0, i32 2
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = icmp eq ptr %33, inttoptr (i32 -517 to ptr)
  br i1 %37, label %86, label %38

38:                                               ; preds = %36
  %39 = ptrtoint ptr %33 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %39) #5
  br label %86

40:                                               ; preds = %32
  %41 = tail call i32 @clk_prepare(ptr noundef %25) #4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = tail call i32 @clk_enable(ptr noundef %25) #4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  tail call void @clk_unprepare(ptr noundef %25) #4
  br label %47

47:                                               ; preds = %46, %40
  %48 = phi i32 [ %44, %46 ], [ %41, %40 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %48) #5
  br label %86

49:                                               ; preds = %43
  %50 = tail call i32 @clk_prepare(ptr noundef %33) #4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = tail call i32 @clk_enable(ptr noundef %33) #4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  tail call void @clk_unprepare(ptr noundef %33) #4
  br label %56

56:                                               ; preds = %55, %49
  %57 = phi i32 [ %53, %55 ], [ %50, %49 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %57) #5
  br label %83

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %59, align 8
  %60 = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %6, i32 0, i32 3
  store ptr %61, ptr %62, align 4
  store ptr %2, ptr %6, align 4
  %63 = getelementptr inbounds %struct.pwm_chip, ptr %6, i32 0, i32 1
  store ptr @rockchip_pwm_ops, ptr %63, align 4
  %64 = getelementptr inbounds %struct.pwm_chip, ptr %6, i32 0, i32 3
  store i32 1, ptr %64, align 4
  %65 = getelementptr inbounds %struct.rockchip_pwm_data, ptr %61, i32 0, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %61, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr i8, ptr %9, i32 %68
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #4, !srcloc !8
  %71 = tail call i32 @pwmchip_add(ptr noundef nonnull %6) #4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %71) #5
  %74 = load ptr, ptr %34, align 4
  tail call void @clk_disable(ptr noundef %74) #4
  tail call void @clk_unprepare(ptr noundef %74) #4
  %75 = load ptr, ptr %16, align 4
  br label %83

76:                                               ; preds = %58
  %77 = and i32 %70, %66
  %78 = icmp eq i32 %77, %66
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %80) #4
  br label %81

81:                                               ; preds = %79, %76
  %82 = load ptr, ptr %34, align 4
  tail call void @clk_disable(ptr noundef %82) #4
  br label %86

83:                                               ; preds = %73, %56
  %84 = phi ptr [ %25, %56 ], [ %75, %73 ]
  %85 = phi i32 [ %57, %56 ], [ %71, %73 ]
  tail call void @clk_disable(ptr noundef %84) #4
  tail call void @clk_unprepare(ptr noundef %84) #4
  br label %86

86:                                               ; preds = %83, %81, %47, %38, %36, %21, %12, %5, %1
  %87 = phi i32 [ %13, %12 ], [ %23, %21 ], [ %48, %47 ], [ %85, %83 ], [ 0, %81 ], [ -22, %1 ], [ -12, %5 ], [ %39, %38 ], [ -517, %36 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_pwm_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @pwmchip_remove(ptr noundef %3) #4
  %4 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_unprepare(ptr noundef %5) #4
  %6 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_unprepare(ptr noundef %7) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_pwm_apply(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %160

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_enable(ptr noundef %10) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %160

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 3
  %17 = load i8, ptr %16, align 4
  %18 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, %15
  %21 = icmp ne i8 %17, 0
  %22 = icmp eq i8 %17, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.rockchip_pwm_data, ptr %26, i32 0, i32 3
  %28 = load i8, ptr %27, align 1, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = tail call fastcc i32 @rockchip_pwm_enable(ptr noundef %0, i1 noundef zeroext false)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %156

33:                                               ; preds = %30, %24, %13
  %34 = phi i1 [ true, %24 ], [ %21, %13 ], [ false, %30 ]
  %35 = load ptr, ptr %9, align 4
  %36 = tail call i32 @clk_get_rate(ptr noundef %35) #4
  %37 = zext i32 %36 to i64
  %38 = load i64, ptr %2, align 8
  %39 = mul i64 %38, %37
  %40 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.rockchip_pwm_data, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = mul i32 %43, 1000000000
  %45 = lshr exact i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = add i64 %39, %46
  %48 = icmp ult i64 %47, 4294967296
  br i1 %48, label %49, label %52, !prof !10

49:                                               ; preds = %33
  %50 = trunc i64 %47 to i32
  %51 = udiv i32 %50, %44
  br label %56

52:                                               ; preds = %33
  %53 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %44, i64 %47) #6, !srcloc !11
  %54 = extractvalue { i64, i64 } %53, 1
  %55 = trunc i64 %54 to i32
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i32 [ %51, %49 ], [ %55, %52 ]
  %58 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %59 = load i64, ptr %58, align 8
  %60 = mul i64 %59, %37
  %61 = add i64 %60, %46
  %62 = icmp ult i64 %61, 4294967296
  br i1 %62, label %63, label %66, !prof !10

63:                                               ; preds = %56
  %64 = trunc i64 %61 to i32
  %65 = udiv i32 %64, %44
  br label %70

66:                                               ; preds = %56
  %67 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %44, i64 %61) #6, !srcloc !11
  %68 = extractvalue { i64, i64 } %67, 1
  %69 = trunc i64 %68 to i32
  br label %70

70:                                               ; preds = %66, %63
  %71 = phi i32 [ %65, %63 ], [ %69, %66 ]
  %72 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %0, i32 0, i32 4
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %41, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i8, ptr %73, i32 %75
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #4, !srcloc !8
  %78 = load ptr, ptr %40, align 4
  %79 = getelementptr inbounds %struct.rockchip_pwm_data, ptr %78, i32 0, i32 3
  %80 = load i8, ptr %79, align 1, !range !9
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %70
  %83 = or i32 %77, 64
  %84 = load ptr, ptr %72, align 4
  %85 = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %78, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr i8, ptr %84, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %83) #4, !srcloc !12
  br label %88

88:                                               ; preds = %82, %70
  %89 = phi i32 [ %83, %82 ], [ %77, %70 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %90 = load ptr, ptr %72, align 4
  %91 = load ptr, ptr %40, align 4
  %92 = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %91, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr i8, ptr %90, i32 %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %57) #4, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %95 = load ptr, ptr %72, align 4
  %96 = load ptr, ptr %40, align 4
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr i8, ptr %95, i32 %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %71) #4, !srcloc !12
  %99 = load ptr, ptr %40, align 4
  %100 = getelementptr inbounds %struct.rockchip_pwm_data, ptr %99, i32 0, i32 2
  %101 = load i8, ptr %100, align 4, !range !9
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %88
  %104 = and i32 %89, -25
  %105 = load i32, ptr %18, align 8
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = or i32 %104, 16
  br label %111

109:                                              ; preds = %103
  %110 = or i32 %104, 8
  br label %111

111:                                              ; preds = %109, %107, %88
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ], [ %89, %88 ]
  %113 = getelementptr inbounds %struct.rockchip_pwm_data, ptr %99, i32 0, i32 3
  %114 = load i8, ptr %113, align 1, !range !9
  %115 = icmp eq i8 %114, 0
  %116 = and i32 %112, -65
  %117 = select i1 %115, i32 %112, i32 %116
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %118 = load ptr, ptr %72, align 4
  %119 = load ptr, ptr %40, align 4
  %120 = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %119, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr i8, ptr %118, i32 %121
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %117) #4, !srcloc !12
  %123 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %124 = load i8, ptr %123, align 4, !range !9
  %125 = zext i1 %34 to i8
  %126 = icmp eq i8 %124, %125
  br i1 %126, label %156, label %127

127:                                              ; preds = %111
  %128 = icmp eq i8 %124, 0
  %129 = load ptr, ptr %40, align 4
  %130 = getelementptr inbounds %struct.rockchip_pwm_data, ptr %129, i32 0, i32 4
  %131 = load i32, ptr %130, align 4
  br i1 %128, label %138, label %132

132:                                              ; preds = %127
  %133 = load ptr, ptr %9, align 4
  %134 = tail call i32 @clk_enable(ptr noundef %133) #4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %132
  %137 = load ptr, ptr %40, align 4
  br label %138

138:                                              ; preds = %136, %127
  %139 = phi ptr [ %137, %136 ], [ %129, %127 ]
  %140 = load ptr, ptr %72, align 4
  %141 = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %139, i32 0, i32 3
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr i8, ptr %140, i32 %142
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #4, !srcloc !8
  %145 = or i32 %144, %131
  %146 = xor i32 %131, -1
  %147 = and i32 %144, %146
  %148 = select i1 %128, i32 %147, i32 %145
  %149 = load ptr, ptr %72, align 4
  %150 = load ptr, ptr %40, align 4
  %151 = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %150, i32 0, i32 3
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr i8, ptr %149, i32 %152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %148) #4, !srcloc !12
  br i1 %128, label %154, label %156

154:                                              ; preds = %138
  %155 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %155) #4
  br label %156

156:                                              ; preds = %154, %138, %132, %111, %30
  %157 = phi i32 [ 0, %111 ], [ %31, %30 ], [ %134, %132 ], [ 0, %154 ], [ 0, %138 ]
  %158 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %158) #4
  %159 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %159) #4
  br label %160

160:                                              ; preds = %156, %8, %3
  %161 = phi i32 [ %157, %156 ], [ %6, %3 ], [ %11, %8 ]
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_pwm_get_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_pwm_data, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_enable(ptr noundef %9) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %92

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_enable(ptr noundef %14) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %92

17:                                               ; preds = %12
  %18 = load ptr, ptr %13, align 4
  %19 = tail call i32 @clk_get_rate(ptr noundef %18) #4
  %20 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %21, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !8
  %27 = zext i32 %26 to i64
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds %struct.rockchip_pwm_data, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = mul i32 %30, 1000000000
  %32 = zext i32 %31 to i64
  %33 = mul nuw i64 %32, %27
  %34 = lshr i32 %19, 1
  %35 = zext i32 %34 to i64
  %36 = add nuw i64 %33, %35
  %37 = icmp ult i64 %36, 4294967296
  br i1 %37, label %38, label %42, !prof !10

38:                                               ; preds = %17
  %39 = trunc i64 %36 to i32
  %40 = udiv i32 %39, %19
  %41 = zext i32 %40 to i64
  br label %45

42:                                               ; preds = %17
  %43 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %36) #6, !srcloc !11
  %44 = extractvalue { i64, i64 } %43, 1
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i64 [ %41, %38 ], [ %44, %42 ]
  store i64 %46, ptr %2, align 8
  %47 = load ptr, ptr %20, align 4
  %48 = load ptr, ptr %4, align 4
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i8, ptr %47, i32 %49
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #4, !srcloc !8
  %52 = zext i32 %51 to i64
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr inbounds %struct.rockchip_pwm_data, ptr %53, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = mul i32 %55, 1000000000
  %57 = zext i32 %56 to i64
  %58 = mul nuw i64 %57, %52
  %59 = add nuw i64 %58, %35
  %60 = icmp ult i64 %59, 4294967296
  br i1 %60, label %61, label %65, !prof !10

61:                                               ; preds = %45
  %62 = trunc i64 %59 to i32
  %63 = udiv i32 %62, %19
  %64 = zext i32 %63 to i64
  br label %68

65:                                               ; preds = %45
  %66 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %59) #6, !srcloc !11
  %67 = extractvalue { i64, i64 } %66, 1
  br label %68

68:                                               ; preds = %65, %61
  %69 = phi i64 [ %64, %61 ], [ %67, %65 ]
  %70 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  store i64 %69, ptr %70, align 8
  %71 = load ptr, ptr %20, align 4
  %72 = load ptr, ptr %4, align 4
  %73 = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %72, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr i8, ptr %71, i32 %74
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #4, !srcloc !8
  %77 = and i32 %76, %7
  %78 = icmp eq i32 %77, %7
  %79 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %80 = zext i1 %78 to i8
  store i8 %80, ptr %79, align 4
  %81 = load ptr, ptr %4, align 4
  %82 = getelementptr inbounds %struct.rockchip_pwm_data, ptr %81, i32 0, i32 2
  %83 = load i8, ptr %82, align 4, !range !9
  %84 = icmp ne i8 %83, 0
  %85 = and i32 %76, 8
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %84, i1 %86, i1 false
  %88 = zext i1 %87 to i32
  %89 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  store i32 %88, ptr %89, align 8
  %90 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %90) #4
  %91 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %91) #4
  br label %92

92:                                               ; preds = %68, %12, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pwm_enable(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rockchip_pwm_data, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  br i1 %1, label %7, label %14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_enable(ptr noundef %9) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %13, %12 ], [ %4, %2 ]
  %16 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %15, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  %22 = or i32 %21, %6
  %23 = xor i32 %6, -1
  %24 = and i32 %21, %23
  %25 = select i1 %1, i32 %22, i32 %24
  %26 = load ptr, ptr %16, align 4
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %26, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %25) #4, !srcloc !12
  br i1 %1, label %34, label %31

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void @clk_disable(ptr noundef %33) #4
  br label %34

34:                                               ; preds = %31, %14, %7
  %35 = phi i32 [ %10, %7 ], [ 0, %31 ], [ 0, %14 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{i64 1726708}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148363660, i64 2148363940, i64 2148364274, i64 2148364608}
!12 = !{i64 1726290}
!13 = !{i64 2151423394}
!14 = !{i64 2151423743}
!15 = !{i64 2151424193}
