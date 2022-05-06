; ModuleID = '/llk/IR/drivers/pwm/pwm-atmel-hlcdc.c_pt.bc'
source_filename = "../drivers/pwm/pwm-atmel-hlcdc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atmel_hlcdc_pwm_errata = type { i8, i8 }
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
%struct.atmel_hlcdc = type { ptr, ptr, ptr, ptr, i32 }
%struct.atmel_hlcdc_pwm = type { %struct.pwm_chip, ptr, ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }

@atmel_hlcdc_dt_ids = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9n12-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_pwm_at91sam9x5_errata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_pwm_at91sam9x5_errata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_pwm_sama5d3_errata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_pwm_sama5d3_errata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias162 = internal constant [31 x i8] c"alias=platform:atmel-hlcdc-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_author163 = internal constant [60 x i8] c"author=Boris Brezillon <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [35 x i8] c"description=Atmel HLCDC PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@atmel_hlcdc_pwm_at91sam9x5_errata = internal constant %struct.atmel_hlcdc_pwm_errata { i8 1, i8 0 }, align 1
@atmel_hlcdc_pwm_sama5d3_errata = internal constant %struct.atmel_hlcdc_pwm_errata { i8 0, i8 1 }, align 1
@atmel_hlcdc_pwm_driver = internal global %struct.platform_driver { ptr @atmel_hlcdc_pwm_probe, ptr @atmel_hlcdc_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_hlcdc_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_hlcdc_pwm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [16 x i8] c"atmel-hlcdc-pwm\00", align 1
@atmel_hlcdc_pwm_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,hlcdc-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@atmel_hlcdc_pwm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @atmel_hlcdc_pwm_suspend, ptr @atmel_hlcdc_pwm_resume, ptr @atmel_hlcdc_pwm_suspend, ptr @atmel_hlcdc_pwm_resume, ptr @atmel_hlcdc_pwm_suspend, ptr @atmel_hlcdc_pwm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@atmel_hlcdc_pwm_ops = internal constant %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @atmel_hlcdc_pwm_apply, ptr null, ptr @__this_module, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias162, ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_license165], section "llvm.metadata"

@__mod_of__atmel_hlcdc_dt_ids_device_table = dso_local alias [7 x %struct.of_device_id], ptr @atmel_hlcdc_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_hlcdc_pwm_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_hlcdc_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_pwm_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 48, i32 noundef 3520) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.atmel_hlcdc, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_prepare(ptr noundef %11) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %9
  %15 = tail call i32 @clk_enable(ptr noundef %11) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %38

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 25
  %21 = load ptr, ptr %20, align 8
  %22 = tail call ptr @of_match_node(ptr noundef nonnull @atmel_hlcdc_dt_ids, ptr noundef %21) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.of_device_id, ptr %22, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %7, i32 0, i32 3
  store ptr %26, ptr %27, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %7, i32 0, i32 1
  store ptr %6, ptr %29, align 4
  %30 = getelementptr inbounds %struct.pwm_chip, ptr %7, i32 0, i32 1
  store ptr @atmel_hlcdc_pwm_ops, ptr %30, align 4
  store ptr %2, ptr %7, align 4
  %31 = getelementptr inbounds %struct.pwm_chip, ptr %7, i32 0, i32 3
  store i32 1, ptr %31, align 4
  %32 = tail call i32 @pwmchip_add(ptr noundef nonnull %7) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %35) #6
  tail call void @clk_unprepare(ptr noundef %35) #6
  br label %38

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %37, align 8
  br label %38

38:                                               ; preds = %36, %34, %17, %9, %1
  %39 = phi i32 [ %32, %34 ], [ 0, %36 ], [ -12, %1 ], [ %15, %17 ], [ %12, %9 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_pwm_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @pwmchip_remove(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.atmel_hlcdc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_pwm_apply(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %163, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.atmel_hlcdc, ptr %6, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = shl i64 %14, 8
  %16 = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %10
  %20 = load i8, ptr %17, align 1, !range !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %19, %10
  %23 = tail call i32 @clk_get_rate(ptr noundef %12) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %194, label %25

25:                                               ; preds = %22
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 256000000000) #7, !srcloc !10
  %27 = extractvalue { i64, i64 } %26, 1
  %28 = load ptr, ptr %16, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i8, ptr %28, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %25
  %34 = load i64, ptr %2, align 8
  %35 = icmp ugt i64 %27, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %33, %30, %19
  %37 = getelementptr inbounds %struct.atmel_hlcdc, ptr %6, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @clk_get_rate(ptr noundef %38) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %194, label %41

41:                                               ; preds = %36
  %42 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %39, i64 256000000000) #7, !srcloc !10
  %43 = extractvalue { i64, i64 } %42, 1
  br label %44

44:                                               ; preds = %41, %33
  %45 = phi i64 [ %43, %41 ], [ %27, %33 ]
  %46 = phi ptr [ %38, %41 ], [ %12, %33 ]
  %47 = load ptr, ptr %16, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.atmel_hlcdc_pwm_errata, ptr %47, i32 0, i32 1
  %51 = load i8, ptr %50, align 1, !range !9
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49, %44
  %54 = load i64, ptr %2, align 8
  %55 = icmp ult i64 %45, %54
  %56 = trunc i64 %54 to i32
  br i1 %55, label %57, label %87

57:                                               ; preds = %53, %49
  %58 = shl i64 %45, 1
  %59 = load i64, ptr %2, align 8
  %60 = icmp ult i64 %58, %59
  %61 = trunc i64 %59 to i32
  br i1 %60, label %62, label %87

62:                                               ; preds = %57
  %63 = shl i64 %45, 2
  %64 = load i64, ptr %2, align 8
  %65 = icmp ult i64 %63, %64
  %66 = trunc i64 %64 to i32
  br i1 %65, label %67, label %87

67:                                               ; preds = %62
  %68 = shl i64 %45, 3
  %69 = load i64, ptr %2, align 8
  %70 = icmp ult i64 %68, %69
  %71 = trunc i64 %69 to i32
  br i1 %70, label %72, label %87

72:                                               ; preds = %67
  %73 = shl i64 %45, 4
  %74 = load i64, ptr %2, align 8
  %75 = icmp ult i64 %73, %74
  %76 = trunc i64 %74 to i32
  br i1 %75, label %77, label %87

77:                                               ; preds = %72
  %78 = shl i64 %45, 5
  %79 = load i64, ptr %2, align 8
  %80 = icmp ult i64 %78, %79
  %81 = trunc i64 %79 to i32
  br i1 %80, label %82, label %87

82:                                               ; preds = %77
  %83 = shl i64 %45, 6
  %84 = load i64, ptr %2, align 8
  %85 = icmp ult i64 %83, %84
  %86 = trunc i64 %84 to i32
  br i1 %85, label %194, label %87

87:                                               ; preds = %82, %77, %72, %67, %62, %57, %53
  %88 = phi i32 [ %56, %53 ], [ %61, %57 ], [ %66, %62 ], [ %71, %67 ], [ %76, %72 ], [ %81, %77 ], [ %86, %82 ]
  %89 = phi i32 [ 0, %53 ], [ 1, %57 ], [ 2, %62 ], [ 3, %67 ], [ 4, %72 ], [ 5, %77 ], [ 6, %82 ]
  %90 = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %0, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %46, %91
  br i1 %92, label %112, label %93

93:                                               ; preds = %87
  %94 = tail call i32 @clk_prepare(ptr noundef %46) #6
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %194

96:                                               ; preds = %93
  %97 = tail call i32 @clk_enable(ptr noundef %46) #6
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  tail call void @clk_unprepare(ptr noundef %46) #6
  br label %194

100:                                              ; preds = %96
  %101 = load ptr, ptr %90, align 4
  tail call void @clk_disable(ptr noundef %101) #6
  tail call void @clk_unprepare(ptr noundef %101) #6
  store ptr %46, ptr %90, align 4
  %102 = getelementptr inbounds %struct.atmel_hlcdc, ptr %6, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %46, %103
  %105 = select i1 %104, i32 8, i32 0
  %106 = load ptr, ptr %6, align 4
  %107 = tail call i32 @regmap_update_bits_base(ptr noundef %106, i32 noundef 0, i32 noundef 8, i32 noundef %105, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %194

109:                                              ; preds = %100
  %110 = load i64, ptr %2, align 8
  %111 = trunc i64 %110 to i32
  br label %112

112:                                              ; preds = %109, %87
  %113 = phi i32 [ %111, %109 ], [ %88, %87 ]
  %114 = icmp ult i64 %15, 4294967296
  br i1 %114, label %115, label %119, !prof !11

115:                                              ; preds = %112
  %116 = trunc i64 %15 to i32
  %117 = udiv i32 %116, %113
  %118 = zext i32 %117 to i64
  br label %122

119:                                              ; preds = %112
  %120 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %113, i64 %15) #7, !srcloc !10
  %121 = extractvalue { i64, i64 } %120, 1
  br label %122

122:                                              ; preds = %119, %115
  %123 = phi i64 [ %118, %115 ], [ %121, %119 ]
  %124 = tail call i64 @llvm.umin.i64(i64 %123, i64 255)
  %125 = trunc i64 %124 to i32
  %126 = shl nuw nsw i32 %125, 8
  %127 = or i32 %126, %89
  %128 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %129 = load i32, ptr %128, align 8
  %130 = icmp eq i32 %129, 0
  %131 = or i32 %127, 16
  %132 = select i1 %130, i32 %131, i32 %127
  %133 = load ptr, ptr %6, align 4
  %134 = tail call i32 @regmap_update_bits_base(ptr noundef %133, i32 noundef 24, i32 noundef 65303, i32 noundef %132, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %194

136:                                              ; preds = %122
  %137 = load ptr, ptr %6, align 4
  %138 = tail call i32 @regmap_write(ptr noundef %137, i32 noundef 32, i32 noundef 8) #6
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %194

140:                                              ; preds = %136
  %141 = tail call i64 @ktime_get() #6
  %142 = load ptr, ptr %6, align 4
  %143 = call i32 @regmap_read(ptr noundef %142, i32 noundef 40, ptr noundef nonnull %4) #6
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %149, %140
  %146 = load i32, ptr %4, align 4
  %147 = and i32 %146, 8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %150 = load ptr, ptr %6, align 4
  %151 = call i32 @regmap_read(ptr noundef %150, i32 noundef 40, ptr noundef nonnull %4) #6
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %145, label %153

153:                                              ; preds = %149, %145, %140
  %154 = phi i32 [ %143, %140 ], [ 0, %145 ], [ %151, %149 ]
  %155 = icmp ne i32 %154, 0
  %156 = load i32, ptr %4, align 4
  %157 = and i32 %156, 8
  %158 = icmp ne i32 %157, 0
  %159 = select i1 %155, i1 true, i1 %158
  %160 = select i1 %159, i32 0, i32 -110
  %161 = select i1 %155, i32 %154, i32 %160
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %193, label %194

163:                                              ; preds = %3
  %164 = load ptr, ptr %6, align 4
  %165 = tail call i32 @regmap_write(ptr noundef %164, i32 noundef 36, i32 noundef 8) #6
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %194

167:                                              ; preds = %163
  %168 = tail call i64 @ktime_get() #6
  %169 = load ptr, ptr %6, align 4
  %170 = call i32 @regmap_read(ptr noundef %169, i32 noundef 40, ptr noundef nonnull %4) #6
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %176, %167
  %173 = load i32, ptr %4, align 4
  %174 = and i32 %173, 8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %177 = load ptr, ptr %6, align 4
  %178 = call i32 @regmap_read(ptr noundef %177, i32 noundef 40, ptr noundef nonnull %4) #6
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %172, label %180

180:                                              ; preds = %176, %172, %167
  %181 = phi i32 [ %170, %167 ], [ %178, %176 ], [ 0, %172 ]
  %182 = icmp ne i32 %181, 0
  %183 = load i32, ptr %4, align 4
  %184 = and i32 %183, 8
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %182, i1 true, i1 %185
  %187 = select i1 %186, i32 0, i32 -110
  %188 = select i1 %182, i32 %181, i32 %187
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %180
  %191 = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %0, i32 0, i32 2
  %192 = load ptr, ptr %191, align 4
  call void @clk_disable(ptr noundef %192) #6
  call void @clk_unprepare(ptr noundef %192) #6
  store ptr null, ptr %191, align 4
  br label %193

193:                                              ; preds = %190, %153
  br label %194

194:                                              ; preds = %193, %180, %163, %153, %136, %122, %100, %99, %93, %82, %36, %22
  %195 = phi i32 [ 0, %193 ], [ %161, %153 ], [ %165, %163 ], [ %188, %180 ], [ %138, %136 ], [ %134, %122 ], [ -22, %36 ], [ -22, %22 ], [ %107, %100 ], [ %97, %99 ], [ %94, %93 ], [ -22, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %195
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_pwm_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pwm_chip, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pwm_device, ptr %5, i32 0, i32 7, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.atmel_hlcdc, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %14

14:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_pwm_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  %5 = getelementptr inbounds %struct.pwm_chip, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pwm_device, ptr %6, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %7, i32 24, i1 false) #6
  %8 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.atmel_hlcdc, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = tail call i32 @clk_enable(ptr noundef %15) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load ptr, ptr %5, align 4
  br label %24

23:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %27

24:                                               ; preds = %21, %1
  %25 = phi ptr [ %22, %21 ], [ %6, %1 ]
  %26 = call i32 @atmel_hlcdc_pwm_apply(ptr noundef %4, ptr noundef %25, ptr noundef nonnull %2)
  br label %27

27:                                               ; preds = %24, %23, %11
  %28 = phi i32 [ %26, %24 ], [ %19, %23 ], [ %16, %11 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %28
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 2148361559, i64 2148361839, i64 2148362173, i64 2148362507}
!11 = !{!"branch_weights", i32 2000, i32 1}
