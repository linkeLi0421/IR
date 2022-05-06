; ModuleID = '/llk/IR/drivers/pwm/pwm-atmel.c_pt.bc'
source_filename = "../drivers/pwm/pwm-atmel.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atmel_pwm_data = type { %struct.atmel_pwm_registers, %struct.atmel_pwm_config }
%struct.atmel_pwm_registers = type { i8, i8, i8, i8 }
%struct.atmel_pwm_config = type { i32 }
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
%struct.atmel_pwm_chip = type { %struct.pwm_chip, ptr, ptr, ptr, i32, %struct.spinlock }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@atmel_pwm_dt_ids = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sam9rl_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sama5_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sama5_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mchp_sam9x60_pwm_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias166 = internal constant [25 x i8] c"alias=platform:atmel-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_author167 = internal constant [38 x i8] c"author=Bo Shen <voice.shen@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description168 = internal constant [29 x i8] c"description=Atmel PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license169 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@atmel_sam9rl_pwm_data = internal constant %struct.atmel_pwm_data { %struct.atmel_pwm_registers { i8 8, i8 16, i8 4, i8 16 }, %struct.atmel_pwm_config { i32 16 } }, align 4
@atmel_sama5_pwm_data = internal constant %struct.atmel_pwm_data { %struct.atmel_pwm_registers { i8 12, i8 16, i8 4, i8 8 }, %struct.atmel_pwm_config { i32 16 } }, align 4
@mchp_sam9x60_pwm_data = internal constant %struct.atmel_pwm_data { %struct.atmel_pwm_registers { i8 8, i8 16, i8 4, i8 16 }, %struct.atmel_pwm_config { i32 32 } }, align 4
@atmel_pwm_driver = internal global %struct.platform_driver { ptr @atmel_pwm_probe, ptr @atmel_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"atmel-pwm\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to prepare PWM clock\0A\00", align 1
@atmel_pwm_ops = internal constant %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @atmel_pwm_apply, ptr @atmel_pwm_get_state, ptr @__this_module, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to add PWM chip %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to calculate cprd and prescaler\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"pres exceeds the maximum value\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias166, ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_license169], section "llvm.metadata"

@__mod_of__atmel_pwm_dt_ids_device_table = dso_local alias [5 x %struct.of_device_id], ptr @atmel_pwm_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_pwm_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_pwm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pwm_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 56, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %7 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %3, i32 0, i32 3
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %3, i32 0, i32 4
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %3, i32 0, i32 5
  store i32 0, ptr %9, align 4
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %11 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %3, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = ptrtoint ptr %10 to i32
  br label %34

15:                                               ; preds = %5
  %16 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #5
  %17 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %3, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = ptrtoint ptr %16 to i32
  br label %34

21:                                               ; preds = %15
  %22 = tail call i32 @clk_prepare(ptr noundef %16) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %34

25:                                               ; preds = %21
  store ptr %2, ptr %3, align 4
  %26 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 1
  store ptr @atmel_pwm_ops, ptr %26, align 4
  %27 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 3
  store i32 4, ptr %27, align 4
  %28 = tail call i32 @pwmchip_add(ptr noundef nonnull %3) #5
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %28) #6
  %31 = load ptr, ptr %17, align 4
  tail call void @clk_unprepare(ptr noundef %31) #5
  br label %34

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %33, align 8
  br label %34

34:                                               ; preds = %32, %30, %24, %19, %13, %1
  %35 = phi i32 [ %14, %13 ], [ %20, %19 ], [ %22, %24 ], [ %28, %30 ], [ %28, %32 ], [ -12, %1 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pwm_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @pwmchip_remove(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pwm_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 3
  %9 = load i8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %200, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_get_rate(ptr noundef %15) #5
  %17 = icmp eq i8 %9, 0
  br i1 %17, label %104, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %7, %20
  br i1 %21, label %22, label %104

22:                                               ; preds = %18
  %23 = load i64, ptr %2, align 8
  %24 = icmp eq i64 %5, %23
  br i1 %24, label %25, label %104

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = shl i32 %27, 5
  %29 = add i32 %28, 512
  %30 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 %29
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !9
  %34 = load i32, ptr %26, align 8
  %35 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i32
  %39 = shl i32 %34, 5
  %40 = add i32 %39, 512
  %41 = add i32 %40, %38
  %42 = load ptr, ptr %30, align 4
  %43 = getelementptr i8, ptr %42, i32 %41
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !9
  %45 = and i32 %33, 15
  %46 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = zext i32 %16 to i64
  %49 = mul i64 %47, %48
  %50 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %49, i32 0) #7, !srcloc !10
  %51 = extractvalue { i64, i32 } %50, 0
  %52 = extractvalue { i64, i32 } %50, 1
  %53 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %49, i64 %51, i32 %52) #7, !srcloc !11
  %54 = extractvalue { i64, i32 } %53, 0
  %55 = lshr i64 %54, 29
  %56 = zext i32 %45 to i64
  %57 = lshr i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = sub i32 %44, %58
  %60 = load ptr, ptr %35, align 4
  %61 = getelementptr inbounds %struct.atmel_pwm_registers, ptr %60, i32 0, i32 3
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr inbounds %struct.atmel_pwm_registers, ptr %60, i32 0, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %62, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %25
  %67 = load i32, ptr %26, align 8
  %68 = shl i32 %67, 5
  %69 = add i32 %68, 512
  %70 = load ptr, ptr %30, align 4
  %71 = getelementptr i8, ptr %70, i32 %69
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #5, !srcloc !9
  %73 = and i32 %72, -1025
  %74 = load i32, ptr %26, align 8
  %75 = shl i32 %74, 5
  %76 = add i32 %75, 512
  %77 = load ptr, ptr %30, align 4
  %78 = getelementptr i8, ptr %77, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %73) #5, !srcloc !12
  %79 = load ptr, ptr %35, align 4
  %80 = getelementptr inbounds %struct.atmel_pwm_registers, ptr %79, i32 0, i32 3
  %81 = load i8, ptr %80, align 1
  br label %82

82:                                               ; preds = %66, %25
  %83 = phi i8 [ %81, %66 ], [ %62, %25 ]
  %84 = load i32, ptr %26, align 8
  %85 = zext i8 %83 to i32
  %86 = shl i32 %84, 5
  %87 = or i32 %85, 512
  %88 = add i32 %87, %86
  %89 = load ptr, ptr %30, align 4
  %90 = getelementptr i8, ptr %89, i32 %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %59) #5, !srcloc !12
  %91 = load i32, ptr %26, align 8
  %92 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %92) #5
  %93 = load ptr, ptr %30, align 4
  %94 = getelementptr i8, ptr %93, i32 28
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #5, !srcloc !9
  %96 = xor i32 %95, -1
  %97 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %0, i32 0, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, %96
  %100 = shl nuw i32 1, %91
  %101 = or i32 %99, %100
  store i32 %101, ptr %97, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %102 = load i16, ptr %92, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %92, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  br label %203

104:                                              ; preds = %22, %18, %13
  %105 = load i64, ptr %2, align 8
  %106 = zext i32 %16 to i64
  %107 = mul i64 %105, %106
  %108 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %107, i32 0) #7, !srcloc !10
  %109 = extractvalue { i64, i32 } %108, 0
  %110 = extractvalue { i64, i32 } %108, 1
  %111 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %107, i64 %109, i32 %110) #7, !srcloc !11
  %112 = extractvalue { i64, i32 } %111, 0
  %113 = lshr i64 %112, 29
  %114 = trunc i64 %113 to i32
  %115 = icmp eq i32 %114, 0
  %116 = tail call i32 @llvm.ctlz.i32(i32 %114, i1 false) #5, !range !17
  %117 = sub nuw nsw i32 32, %116
  %118 = select i1 %115, i32 0, i32 %117
  %119 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %0, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.atmel_pwm_data, ptr %120, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = sub i32 %118, %122
  %124 = icmp sgt i32 %123, 10
  br i1 %124, label %145, label %125

125:                                              ; preds = %104
  %126 = icmp sgt i32 %123, 0
  %127 = zext i32 %123 to i64
  %128 = lshr i64 %113, %127
  %129 = trunc i64 %128 to i32
  %130 = select i1 %126, i32 %129, i32 %114
  %131 = tail call i32 @llvm.smax.i32(i32 %123, i32 0)
  %132 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %133 = load i64, ptr %132, align 8
  %134 = mul i64 %133, %106
  %135 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %134, i32 0) #7, !srcloc !10
  %136 = extractvalue { i64, i32 } %135, 0
  %137 = extractvalue { i64, i32 } %135, 1
  %138 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %134, i64 %136, i32 %137) #7, !srcloc !11
  %139 = extractvalue { i64, i32 } %138, 0
  %140 = lshr i64 %139, 29
  %141 = zext i32 %131 to i64
  %142 = lshr i64 %140, %141
  %143 = trunc i64 %142 to i32
  %144 = sub i32 %130, %143
  br i1 %17, label %149, label %148

145:                                              ; preds = %104
  %146 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.5) #6
  %147 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.3) #6
  br label %203

148:                                              ; preds = %125
  tail call fastcc void @atmel_pwm_disable(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  br label %155

149:                                              ; preds = %125
  %150 = load ptr, ptr %14, align 4
  %151 = tail call i32 @clk_enable(ptr noundef %150) #5
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.4) #6
  br label %203

155:                                              ; preds = %149, %148
  %156 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %157 = load i32, ptr %156, align 8
  %158 = shl i32 %157, 5
  %159 = add i32 %158, 512
  %160 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %0, i32 0, i32 2
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr i8, ptr %161, i32 %159
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #5, !srcloc !9
  %164 = and i32 %163, -528
  %165 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %166 = load i32, ptr %165, align 8
  %167 = icmp eq i32 %166, 0
  %168 = and i32 %131, 2147483135
  %169 = or i32 %164, %168
  %170 = select i1 %167, i32 0, i32 512
  %171 = or i32 %169, %170
  %172 = load i32, ptr %156, align 8
  %173 = shl i32 %172, 5
  %174 = add i32 %173, 512
  %175 = load ptr, ptr %160, align 4
  %176 = getelementptr i8, ptr %175, i32 %174
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %171) #5, !srcloc !12
  %177 = load i32, ptr %156, align 8
  %178 = load ptr, ptr %119, align 4
  %179 = getelementptr inbounds %struct.atmel_pwm_registers, ptr %178, i32 0, i32 2
  %180 = load i8, ptr %179, align 2
  %181 = zext i8 %180 to i32
  %182 = shl i32 %177, 5
  %183 = add i32 %182, 512
  %184 = add i32 %183, %181
  %185 = load ptr, ptr %160, align 4
  %186 = getelementptr i8, ptr %185, i32 %184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %144) #5, !srcloc !12
  %187 = load i32, ptr %156, align 8
  %188 = load ptr, ptr %119, align 4
  %189 = load i8, ptr %188, align 4
  %190 = zext i8 %189 to i32
  %191 = shl i32 %187, 5
  %192 = add i32 %191, 512
  %193 = add i32 %192, %190
  %194 = load ptr, ptr %160, align 4
  %195 = getelementptr i8, ptr %194, i32 %193
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %130) #5, !srcloc !12
  %196 = load i32, ptr %156, align 8
  %197 = shl nuw i32 1, %196
  %198 = load ptr, ptr %160, align 4
  %199 = getelementptr i8, ptr %198, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %197) #5, !srcloc !12
  br label %203

200:                                              ; preds = %3
  %201 = icmp eq i8 %9, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %200
  tail call fastcc void @atmel_pwm_disable(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  br label %203

203:                                              ; preds = %202, %200, %155, %153, %145, %82
  %204 = phi i32 [ 0, %155 ], [ 0, %200 ], [ 0, %202 ], [ %151, %153 ], [ -22, %145 ], [ 0, %82 ]
  ret i32 %204
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_pwm_get_state(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !9
  %8 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = shl i32 %9, 5
  %11 = add i32 %10, 512
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 %11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !9
  %15 = load i32, ptr %8, align 8
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %91, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @clk_get_rate(ptr noundef %21) #5
  %23 = and i32 %14, 15
  %24 = load i32, ptr %8, align 8
  %25 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = shl i32 %24, 5
  %30 = add i32 %29, 512
  %31 = add i32 %30, %28
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !9
  %35 = zext i32 %34 to i64
  %36 = mul nuw nsw i64 %35, 1000000000
  %37 = zext i32 %23 to i64
  %38 = shl i64 %36, %37
  %39 = zext i32 %22 to i64
  %40 = add nsw i64 %39, -1
  %41 = add i64 %40, %38
  %42 = tail call i64 @div64_u64(i64 noundef %41, i64 noundef %39) #5
  store i64 %42, ptr %2, align 8
  %43 = load i32, ptr %8, align 8
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %0, i32 0, i32 5
  %46 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %0, i32 0, i32 4
  %47 = shl nuw i32 1, %43
  %48 = sub i32 -200, %44
  br label %49

49:                                               ; preds = %71, %19
  tail call void @_raw_spin_lock(ptr noundef %45) #5
  %50 = load i32, ptr %46, align 4
  %51 = and i32 %50, %47
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr i8, ptr %54, i32 28
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #5, !srcloc !9
  %57 = xor i32 %56, -1
  %58 = load i32, ptr %46, align 4
  %59 = and i32 %58, %57
  store i32 %59, ptr %46, align 4
  %60 = lshr i32 %59, %43
  %61 = and i32 %60, 1
  br label %62

62:                                               ; preds = %53, %49
  %63 = phi i32 [ 0, %49 ], [ %61, %53 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %64 = load i16, ptr %45, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %66 = icmp eq i32 %63, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load volatile i32, ptr @jiffies, align 64
  %69 = add i32 %48, %68
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  br label %49

72:                                               ; preds = %67, %62
  %73 = load i32, ptr %8, align 8
  %74 = load ptr, ptr %25, align 4
  %75 = getelementptr inbounds %struct.atmel_pwm_registers, ptr %74, i32 0, i32 2
  %76 = load i8, ptr %75, align 2
  %77 = zext i8 %76 to i32
  %78 = shl i32 %73, 5
  %79 = add i32 %78, 512
  %80 = add i32 %79, %77
  %81 = load ptr, ptr %4, align 4
  %82 = getelementptr i8, ptr %81, i32 %80
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #5, !srcloc !9
  %84 = sub i32 %34, %83
  %85 = zext i32 %84 to i64
  %86 = mul nuw nsw i64 %85, 1000000000
  %87 = shl i64 %86, %37
  %88 = add i64 %40, %87
  %89 = tail call i64 @div64_u64(i64 noundef %88, i64 noundef %39) #5
  %90 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  store i64 %89, ptr %90, align 8
  br label %91

91:                                               ; preds = %72, %3
  %92 = phi i8 [ 1, %72 ], [ 0, %3 ]
  %93 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  store i8 %92, ptr %93, align 4
  %94 = lshr i32 %14, 9
  %95 = and i32 %94, 1
  %96 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  store i32 %95, ptr %96, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_pwm_disable(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %0, i32 0, i32 4
  %10 = shl nuw i32 1, %6
  %11 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %0, i32 0, i32 2
  %12 = sub i32 -200, %7
  br label %13

13:                                               ; preds = %35, %3
  tail call void @_raw_spin_lock(ptr noundef %8) #5
  %14 = load i32, ptr %9, align 4
  %15 = and i32 %14, %10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 28
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !9
  %21 = xor i32 %20, -1
  %22 = load i32, ptr %9, align 4
  %23 = and i32 %22, %21
  store i32 %23, ptr %9, align 4
  %24 = lshr i32 %23, %6
  %25 = and i32 %24, 1
  br label %26

26:                                               ; preds = %17, %13
  %27 = phi i32 [ 0, %13 ], [ %25, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %28 = load i16, ptr %8, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = add i32 %12, %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  br label %13

36:                                               ; preds = %31, %26
  %37 = load i32, ptr %5, align 8
  %38 = shl nuw i32 1, %37
  %39 = load ptr, ptr %11, align 4
  %40 = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #5, !srcloc !12
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = load ptr, ptr %11, align 4
  %43 = getelementptr i8, ptr %42, i32 12
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !9
  %45 = load i32, ptr %5, align 8
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %36
  %50 = sub i32 -200, %41
  br label %51

51:                                               ; preds = %55, %49
  %52 = load volatile i32, ptr @jiffies, align 64
  %53 = add i32 %50, %52
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %56 = load ptr, ptr %11, align 4
  %57 = getelementptr i8, ptr %56, i32 12
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #5, !srcloc !9
  %59 = load i32, ptr %5, align 8
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %51

63:                                               ; preds = %55, %51, %36
  br i1 %2, label %64, label %67

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  tail call void @clk_disable(ptr noundef %66) #5
  br label %67

67:                                               ; preds = %64, %63
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i64 2488083}
!10 = !{i64 881953, i64 881980, i64 882002, i64 882030}
!11 = !{i64 882361, i64 882388, i64 882421, i64 882442, i64 882469, i64 882495}
!12 = !{i64 2487665}
!13 = !{i64 2148890302}
!14 = !{i64 2148886126}
!15 = !{i64 2148886201, i64 2148886228, i64 2148886275, i64 2148886297, i64 2148886325, i64 2148886345}
!16 = !{i64 2148913305}
!17 = !{i32 0, i32 33}
