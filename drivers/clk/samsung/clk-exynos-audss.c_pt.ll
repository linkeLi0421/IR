; ModuleID = '/llk/IR/drivers/clk/samsung/clk-exynos-audss.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-exynos-audss.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.exynos_audss_clk_drvdata = type { i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__initcall__kmod_clk_exynos_audss__167_301_exynos_audss_clk_driver_init6 = internal global ptr @exynos_audss_clk_driver_init, section ".initcall6.init", align 4
@exynos_audss_clk_driver = internal global %struct.platform_driver { ptr @exynos_audss_clk_probe, ptr @exynos_audss_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_audss_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_audss_clk_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_exynos_audss_clk_driver_exit = internal global ptr @exynos_audss_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author168 = internal constant [63 x i8] c"clk_exynos_audss.author=Padmavathi Venna <padma.v@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description169 = internal constant [69 x i8] c"clk_exynos_audss.description=Exynos Audio Subsystem Clock Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file170 = internal constant [59 x i8] c"clk_exynos_audss.file=drivers/clk/samsung/clk-exynos-audss\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [32 x i8] c"clk_exynos_audss.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias172 = internal constant [49 x i8] c"clk_exynos_audss.alias=platform:exynos-audss-clk\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"exynos-audss-clk\00", align 1
@exynos_audss_clk_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-audss-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-audss-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5410-audss-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5410_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-audss-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_drvdata }, %struct.of_device_id zeroinitializer], align 4
@exynos_audss_clk_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_audss_clk_suspend, ptr @exynos_audss_clk_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"fin_pll\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"fout_epll\00", align 1
@__const.exynos_audss_clk_probe.mout_audss_p = private unnamed_addr constant [2 x ptr] [ptr @.str.1, ptr @.str.2], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"mout_audss\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cdclk0\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"sclk_audio0\00", align 1
@__const.exynos_audss_clk_probe.mout_i2s_p = private unnamed_addr constant [3 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5], align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"sclk_pcm0\00", align 1
@reg_base = internal unnamed_addr global ptr null, align 4
@epll = internal unnamed_addr global ptr null, align 4
@clk_data = internal unnamed_addr global ptr null, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"pll_ref\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"pll_in\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"failed to prepare the epll clock\0A\00", align 1
@lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"cdclk\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"sclk_audio\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"mout_i2s\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"dout_srp\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"dout_aud_bus\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"dout_i2s\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"srp_clk\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"i2s_bus\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"sclk_i2s\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"pcm_bus\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"sclk_pcm\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"sclk_pcm_in\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"adma\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"failed to register clock %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"failed to add clock provider\0A\00", align 1
@exynos4210_drvdata = internal constant %struct.exynos_audss_clk_drvdata { i8 4, i32 10 }, align 4
@exynos5410_drvdata = internal constant %struct.exynos_audss_clk_drvdata { i8 2, i32 10 }, align 4
@exynos5420_drvdata = internal constant %struct.exynos_audss_clk_drvdata { i8 5, i32 11 }, align 4
@reg_save.1 = internal unnamed_addr global i32 0, align 4
@reg_save.3 = internal unnamed_addr global i32 0, align 4
@reg_save.5 = internal unnamed_addr global i32 0, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias172, ptr @__UNIQUE_ID_author168, ptr @__UNIQUE_ID_description169, ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_license171, ptr @__exitcall_exynos_audss_clk_driver_exit, ptr @__initcall__kmod_clk_exynos_audss__167_301_exynos_audss_clk_driver_init6, ptr @exynos_audss_clk_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos_audss_clk_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_audss_clk_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos_audss_clk_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_audss_clk_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_audss_clk_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x ptr], align 8
  %3 = alloca [3 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %4 = load i64, ptr @__const.exynos_audss_clk_probe.mout_audss_p, align 8
  store i64 %4, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const.exynos_audss_clk_probe.mout_i2s_p, i32 12, i1 false)
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %5) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %139, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  store ptr %9, ptr @reg_base, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  br label %139

13:                                               ; preds = %8
  store ptr inttoptr (i32 -19 to ptr), ptr @epll, align 4
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 48, i32 noundef 3520) #6
  store ptr %14, ptr @clk_data, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %139, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.exynos_audss_clk_drvdata, ptr %6, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %14, align 4
  %19 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %14, i32 0, i32 1
  %20 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.7) #6
  %21 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.8) #6
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = tail call ptr @__clk_get_name(ptr noundef %20) #6
  store ptr %24, ptr %2, align 8
  br label %25

25:                                               ; preds = %23, %16
  %26 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %42, label %27

27:                                               ; preds = %25
  %28 = tail call ptr @__clk_get_name(ptr noundef %21) #6
  %29 = getelementptr inbounds [2 x ptr], ptr %2, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = load i8, ptr %6, align 4
  %31 = and i8 %30, 4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  store ptr %21, ptr @epll, align 4
  %34 = tail call i32 @clk_prepare(ptr noundef %21) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = tail call i32 @clk_enable(ptr noundef %21) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  tail call void @clk_unprepare(ptr noundef %21) #6
  br label %40

40:                                               ; preds = %39, %33
  %41 = phi i32 [ %37, %39 ], [ %34, %33 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9) #7
  br label %139

42:                                               ; preds = %36, %27, %25
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #6, !srcloc !8
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #6, !srcloc !9
  %45 = tail call i32 @__pm_runtime_set_status(ptr noundef %5, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %5) #6
  %46 = load ptr, ptr @reg_base, align 4
  %47 = call ptr @__clk_hw_register_mux(ptr noundef %5, ptr noundef null, ptr noundef nonnull @.str.3, i8 noundef zeroext 2, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %46, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #6
  store ptr %47, ptr %19, align 4
  %48 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.10) #6
  %49 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.11) #6
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = call ptr @__clk_get_name(ptr noundef %48) #6
  %53 = getelementptr inbounds [3 x ptr], ptr %3, i32 0, i32 1
  store ptr %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %51, %42
  %55 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %59, label %56

56:                                               ; preds = %54
  %57 = call ptr @__clk_get_name(ptr noundef %49) #6
  %58 = getelementptr inbounds [3 x ptr], ptr %3, i32 0, i32 2
  store ptr %57, ptr %58, align 4
  br label %59

59:                                               ; preds = %56, %54
  %60 = load ptr, ptr @reg_base, align 4
  %61 = call ptr @__clk_hw_register_mux(ptr noundef %5, ptr noundef null, ptr noundef nonnull @.str.12, i8 noundef zeroext 3, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %60, i8 noundef zeroext 2, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #6
  %62 = getelementptr %struct.clk_hw_onecell_data, ptr %14, i32 2
  store ptr %61, ptr %62, align 4
  %63 = load ptr, ptr @reg_base, align 4
  %64 = getelementptr i8, ptr %63, i32 4
  %65 = call ptr @__clk_hw_register_divider(ptr noundef %5, ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %64, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #6
  %66 = getelementptr %struct.clk_hw_onecell_data, ptr %14, i32 3
  store ptr %65, ptr %66, align 4
  %67 = load ptr, ptr @reg_base, align 4
  %68 = getelementptr i8, ptr %67, i32 4
  %69 = call ptr @__clk_hw_register_divider(ptr noundef %5, ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %68, i8 noundef zeroext 4, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #6
  %70 = getelementptr %struct.clk_hw_onecell_data, ptr %14, i32 4
  store ptr %69, ptr %70, align 4
  %71 = load ptr, ptr @reg_base, align 4
  %72 = getelementptr i8, ptr %71, i32 4
  %73 = call ptr @__clk_hw_register_divider(ptr noundef %5, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %72, i8 noundef zeroext 8, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #6
  %74 = getelementptr %struct.clk_hw_onecell_data, ptr %14, i32 5
  store ptr %73, ptr %74, align 4
  %75 = load ptr, ptr @reg_base, align 4
  %76 = getelementptr i8, ptr %75, i32 8
  %77 = call ptr @__clk_hw_register_gate(ptr noundef %5, ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %76, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @lock) #6
  %78 = getelementptr %struct.clk_hw_onecell_data, ptr %14, i32 6
  store ptr %77, ptr %78, align 4
  %79 = load ptr, ptr @reg_base, align 4
  %80 = getelementptr i8, ptr %79, i32 8
  %81 = call ptr @__clk_hw_register_gate(ptr noundef %5, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %80, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @lock) #6
  %82 = getelementptr %struct.clk_hw_onecell_data, ptr %14, i32 7
  store ptr %81, ptr %82, align 4
  %83 = load ptr, ptr @reg_base, align 4
  %84 = getelementptr i8, ptr %83, i32 8
  %85 = call ptr @__clk_hw_register_gate(ptr noundef %5, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %84, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @lock) #6
  %86 = getelementptr %struct.clk_hw_onecell_data, ptr %14, i32 8
  store ptr %85, ptr %86, align 4
  %87 = load ptr, ptr @reg_base, align 4
  %88 = getelementptr i8, ptr %87, i32 8
  %89 = call ptr @__clk_hw_register_gate(ptr noundef %5, ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %88, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull @lock) #6
  %90 = getelementptr %struct.clk_hw_onecell_data, ptr %14, i32 9
  store ptr %89, ptr %90, align 4
  %91 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.21) #6
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %95, label %93

93:                                               ; preds = %59
  %94 = call ptr @__clk_get_name(ptr noundef %91) #6
  br label %95

95:                                               ; preds = %93, %59
  %96 = phi ptr [ @.str.6, %59 ], [ %94, %93 ]
  %97 = load ptr, ptr @reg_base, align 4
  %98 = getelementptr i8, ptr %97, i32 8
  %99 = call ptr @__clk_hw_register_gate(ptr noundef %5, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef %96, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %98, i8 noundef zeroext 5, i8 noundef zeroext 0, ptr noundef nonnull @lock) #6
  %100 = getelementptr %struct.clk_hw_onecell_data, ptr %14, i32 10
  store ptr %99, ptr %100, align 4
  %101 = load i8, ptr %6, align 4
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %95
  %105 = load ptr, ptr @reg_base, align 4
  %106 = getelementptr i8, ptr %105, i32 8
  %107 = call ptr @__clk_hw_register_gate(ptr noundef %5, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.13, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %106, i8 noundef zeroext 9, i8 noundef zeroext 0, ptr noundef nonnull @lock) #6
  %108 = getelementptr %struct.clk_hw_onecell_data, ptr %14, i32 11
  store ptr %107, ptr %108, align 4
  br label %109

109:                                              ; preds = %104, %95
  %110 = load ptr, ptr @clk_data, align 4
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %122, %109
  %114 = phi i32 [ %123, %122 ], [ 0, %109 ]
  %115 = getelementptr ptr, ptr %19, i32 %114
  %116 = load ptr, ptr %115, align 4
  %117 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = getelementptr ptr, ptr %19, i32 %114
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.23, i32 noundef %114) #7
  %120 = load ptr, ptr %119, align 4
  %121 = ptrtoint ptr %120 to i32
  br label %133

122:                                              ; preds = %113
  %123 = add nuw i32 %114, 1
  %124 = icmp eq i32 %123, %111
  br i1 %124, label %125, label %113

125:                                              ; preds = %122, %109
  %126 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %127 = load ptr, ptr %126, align 8
  %128 = call i32 @of_clk_add_hw_provider(ptr noundef %127, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %110) #6
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.24) #7
  br label %133

131:                                              ; preds = %125
  %132 = call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #6
  br label %139

133:                                              ; preds = %130, %118
  %134 = phi i32 [ %121, %118 ], [ %128, %130 ]
  call fastcc void @exynos_audss_clk_teardown()
  %135 = call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #6
  call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #6
  %136 = load ptr, ptr @epll, align 4
  %137 = icmp ugt ptr %136, inttoptr (i32 -4096 to ptr)
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  call void @clk_disable(ptr noundef %136) #6
  call void @clk_unprepare(ptr noundef %136) #6
  br label %139

139:                                              ; preds = %138, %133, %131, %40, %13, %11, %1
  %140 = phi i32 [ %12, %11 ], [ 0, %131 ], [ %41, %40 ], [ -22, %1 ], [ -12, %13 ], [ %134, %138 ], [ %134, %133 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_audss_clk_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  tail call void @of_clk_del_provider(ptr noundef %4) #6
  tail call fastcc void @exynos_audss_clk_teardown()
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #6
  %5 = load ptr, ptr @epll, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %8

8:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos_audss_clk_teardown() unnamed_addr #2 {
  %1 = load ptr, ptr @clk_data, align 4
  %2 = getelementptr %struct.clk_hw_onecell_data, ptr %1, i32 0, i32 1, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  tail call void @clk_hw_unregister_mux(ptr noundef %3) #6
  %6 = load ptr, ptr @clk_data, align 4
  br label %7

7:                                                ; preds = %5, %0
  %8 = phi ptr [ %1, %0 ], [ %6, %5 ]
  %9 = getelementptr %struct.clk_hw_onecell_data, ptr %8, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  tail call void @clk_hw_unregister_mux(ptr noundef %10) #6
  %13 = load ptr, ptr @clk_data, align 4
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ %13, %12 ], [ %8, %7 ]
  %16 = getelementptr %struct.clk_hw_onecell_data, ptr %15, i32 0, i32 1, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  tail call void @clk_hw_unregister_divider(ptr noundef %17) #6
  %20 = load ptr, ptr @clk_data, align 4
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %15, %14 ], [ %20, %19 ]
  %23 = getelementptr %struct.clk_hw_onecell_data, ptr %22, i32 0, i32 1, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  tail call void @clk_hw_unregister_divider(ptr noundef %24) #6
  %27 = load ptr, ptr @clk_data, align 4
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi ptr [ %27, %26 ], [ %22, %21 ]
  %30 = getelementptr %struct.clk_hw_onecell_data, ptr %29, i32 0, i32 1, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  tail call void @clk_hw_unregister_divider(ptr noundef %31) #6
  %34 = load ptr, ptr @clk_data, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi ptr [ %34, %33 ], [ %29, %28 ]
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, 5
  br i1 %38, label %39, label %54

39:                                               ; preds = %49, %35
  %40 = phi i32 [ %50, %49 ], [ %37, %35 ]
  %41 = phi ptr [ %51, %49 ], [ %36, %35 ]
  %42 = phi i32 [ %52, %49 ], [ 5, %35 ]
  %43 = getelementptr %struct.clk_hw_onecell_data, ptr %41, i32 0, i32 1, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  tail call void @clk_hw_unregister_gate(ptr noundef %44) #6
  %47 = load ptr, ptr @clk_data, align 4
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %39
  %50 = phi i32 [ %40, %39 ], [ %48, %46 ]
  %51 = phi ptr [ %41, %39 ], [ %47, %46 ]
  %52 = add nuw i32 %42, 1
  %53 = icmp ult i32 %52, %50
  br i1 %53, label %39, label %54

54:                                               ; preds = %49, %35
  ret void
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_mux(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_divider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_gate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_audss_clk_suspend(ptr nocapture noundef readnone %0) #2 {
  %2 = load ptr, ptr @reg_base, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  store i32 %3, ptr @reg_save.1, align 4
  %4 = load ptr, ptr @reg_base, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  store i32 %6, ptr @reg_save.3, align 4
  %7 = load ptr, ptr @reg_base, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  store i32 %9, ptr @reg_save.5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_audss_clk_resume(ptr nocapture noundef readnone %0) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %2 = load i32, ptr @reg_save.1, align 4
  %3 = load ptr, ptr @reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %2) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %4 = load i32, ptr @reg_save.3, align 4
  %5 = load ptr, ptr @reg_base, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %7 = load i32, ptr @reg_save.5, align 4
  %8 = load ptr, ptr @reg_base, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 761932, i64 2148251903, i64 2148251929, i64 2148251976, i64 2148251998, i64 2148252026, i64 2148252046}
!9 = !{i64 2148263318, i64 2148263344, i64 2148263373, i64 2148263407, i64 2148263438, i64 2148263461}
!10 = !{i64 2603164}
!11 = !{i64 2151575000}
!12 = !{i64 2151575582}
!13 = !{i64 2602746}
