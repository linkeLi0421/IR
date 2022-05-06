; ModuleID = '/llk/IR/drivers/clk/samsung/clk-exynos-clkout.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-exynos-clkout.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.exynos_clkout_variant = type { i32 }
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
%struct.exynos_clkout = type { %struct.clk_gate, %struct.clk_mux, %struct.spinlock, ptr, ptr, i32, %struct.clk_hw_onecell_data }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__initcall__kmod_clk_exynos_clkout__166_240_exynos_clkout_driver_init6 = internal global ptr @exynos_clkout_driver_init, section ".initcall6.init", align 4
@exynos_clkout_driver = internal global %struct.platform_driver { ptr @exynos_clkout_probe, ptr @exynos_clkout_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_clkout_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_clkout_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_exynos_clkout_driver_exit = internal global ptr @exynos_clkout_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [63 x i8] c"clk_exynos_clkout.author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author168 = internal constant [61 x i8] c"clk_exynos_clkout.author=Tomasz Figa <tomasz.figa@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description169 = internal constant [65 x i8] c"clk_exynos_clkout.description=Samsung Exynos clock output driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file170 = internal constant [61 x i8] c"clk_exynos_clkout.file=drivers/clk/samsung/clk-exynos-clkout\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [30 x i8] c"clk_exynos_clkout.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"exynos-clkout\00", align 1
@exynos_clkout_ids = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_clkout_exynos4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_clkout_exynos4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4412-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_clkout_exynos4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_clkout_exynos5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5410-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_clkout_exynos5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_clkout_exynos5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_clkout_exynos5 }, %struct.of_device_id zeroinitializer], align 4
@exynos_clkout_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @exynos_clkout_suspend, ptr @exynos_clkout_resume, ptr @exynos_clkout_suspend, ptr @exynos_clkout_resume, ptr @exynos_clkout_suspend, ptr @exynos_clkout_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__const.exynos_clkout_probe.name = private unnamed_addr constant [9 x i8] c"clkoutXX\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"clkout%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"clkout\00", align 1
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to register clkout clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"not instantiated from MFD\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"cannot match parent device\0A\00", align 1
@exynos_clkout_exynos4 = internal constant %struct.exynos_clkout_variant { i32 15 }, align 4
@exynos_clkout_exynos5 = internal constant %struct.exynos_clkout_variant { i32 31 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_author168, ptr @__UNIQUE_ID_description169, ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_license171, ptr @__exitcall_exynos_clkout_driver_exit, ptr @__initcall__kmod_clk_exynos_clkout__166_240_exynos_clkout_driver_init6, ptr @exynos_clkout_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos_clkout_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_clkout_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos_clkout_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_clkout_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_clkout_probe(ptr noundef %0) #2 {
  %2 = alloca [32 x ptr], align 4
  %3 = alloca [32 x ptr], align 4
  %4 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %2, i8 0, i32 128, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 80, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %96, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #9
  br label %96

13:                                               ; preds = %8
  %14 = tail call ptr @of_match_device(ptr noundef nonnull @exynos_clkout_ids, ptr noundef nonnull %10) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6) #9
  br label %96

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.of_device_id, ptr %14, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.exynos_clkout, ptr %6, i32 0, i32 4
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 25
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %23, align 4
  br label %29

29:                                               ; preds = %25, %17
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %30, align 8
  %31 = getelementptr inbounds %struct.exynos_clkout, ptr %6, i32 0, i32 2
  store i32 0, ptr %31, align 4
  br label %32

32:                                               ; preds = %45, %29
  %33 = phi i32 [ 0, %29 ], [ %46, %45 ]
  %34 = phi i32 [ 0, %29 ], [ %48, %45 ]
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 1 dereferenceable(9) @__const.exynos_clkout_probe.name, i32 9, i1 false)
  %35 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %33)
  %36 = load ptr, ptr %23, align 4
  %37 = call ptr @of_clk_get_by_name(ptr noundef %36, ptr noundef nonnull %4) #8
  %38 = getelementptr [32 x ptr], ptr %3, i32 0, i32 %33
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = add nuw nsw i32 %33, 1
  br label %45

42:                                               ; preds = %32
  %43 = call ptr @__clk_get_name(ptr noundef %37) #8
  %44 = add nuw nsw i32 %33, 1
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i32 [ %44, %42 ], [ %41, %40 ]
  %47 = phi ptr [ %43, %42 ], [ @.str.2, %40 ]
  %48 = phi i32 [ %44, %42 ], [ %34, %40 ]
  %49 = getelementptr [32 x ptr], ptr %2, i32 0, i32 %33
  store ptr %47, ptr %49, align 4
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #8
  %50 = icmp eq i32 %46, 32
  br i1 %50, label %51, label %32

51:                                               ; preds = %45
  %52 = icmp eq i32 %48, 0
  br i1 %52, label %96, label %53

53:                                               ; preds = %51
  %54 = load ptr, ptr %23, align 4
  %55 = call ptr @of_iomap(ptr noundef %54, i32 noundef 0) #8
  %56 = getelementptr inbounds %struct.exynos_clkout, ptr %6, i32 0, i32 3
  store ptr %55, ptr %56, align 4
  %57 = icmp eq ptr %55, null
  br i1 %57, label %84, label %58

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %55, i32 2560
  %60 = getelementptr inbounds %struct.clk_gate, ptr %6, i32 0, i32 1
  store ptr %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.clk_gate, ptr %6, i32 0, i32 2
  store i8 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.clk_gate, ptr %6, i32 0, i32 3
  store i8 1, ptr %62, align 1
  %63 = getelementptr inbounds %struct.clk_gate, ptr %6, i32 0, i32 4
  store ptr %31, ptr %63, align 4
  %64 = getelementptr inbounds %struct.exynos_clkout, ptr %6, i32 0, i32 1
  %65 = getelementptr inbounds %struct.exynos_clkout, ptr %6, i32 0, i32 1, i32 1
  store ptr %59, ptr %65, align 4
  %66 = getelementptr inbounds %struct.exynos_clkout, ptr %6, i32 0, i32 1, i32 3
  store i32 %20, ptr %66, align 4
  %67 = getelementptr inbounds %struct.exynos_clkout, ptr %6, i32 0, i32 1, i32 4
  store i8 8, ptr %67, align 4
  %68 = getelementptr inbounds %struct.exynos_clkout, ptr %6, i32 0, i32 1, i32 6
  store ptr %31, ptr %68, align 4
  %69 = call ptr @clk_hw_register_composite(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, i32 noundef %48, ptr noundef %64, ptr noundef nonnull @clk_mux_ops, ptr noundef null, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull @clk_gate_ops, i32 noundef 132) #8
  %70 = getelementptr inbounds %struct.exynos_clkout, ptr %6, i32 1
  store ptr %69, ptr %70, align 4
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = ptrtoint ptr %69 to i32
  br label %81

74:                                               ; preds = %58
  %75 = getelementptr inbounds %struct.exynos_clkout, ptr %6, i32 0, i32 6
  store i32 1, ptr %75, align 4
  %76 = load ptr, ptr %23, align 4
  %77 = call i32 @of_clk_add_hw_provider(ptr noundef %76, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %75) #8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr %70, align 4
  call void @clk_hw_unregister(ptr noundef %80) #8
  br label %81

81:                                               ; preds = %79, %72
  %82 = phi i32 [ %73, %72 ], [ %77, %79 ]
  %83 = load ptr, ptr %56, align 4
  call void @iounmap(ptr noundef %83) #8
  br label %84

84:                                               ; preds = %81, %53
  %85 = phi i32 [ %82, %81 ], [ -19, %53 ]
  br label %86

86:                                               ; preds = %92, %84
  %87 = phi i32 [ 0, %84 ], [ %93, %92 ]
  %88 = getelementptr [32 x ptr], ptr %3, i32 0, i32 %87
  %89 = load ptr, ptr %88, align 4
  %90 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  call void @clk_put(ptr noundef %89) #8
  br label %92

92:                                               ; preds = %91, %86
  %93 = add nuw nsw i32 %87, 1
  %94 = icmp eq i32 %93, 32
  br i1 %94, label %95, label %86

95:                                               ; preds = %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #9
  br label %96

96:                                               ; preds = %95, %74, %51, %16, %12, %1
  %97 = phi i32 [ %85, %95 ], [ -12, %1 ], [ -22, %51 ], [ 0, %74 ], [ -22, %16 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #8
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_clkout_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_clkout, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @of_clk_del_provider(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.exynos_clkout, ptr %3, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_hw_unregister(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.exynos_clkout, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @iounmap(ptr noundef %9) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_clkout_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_clkout, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 2560
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %8 = getelementptr inbounds %struct.exynos_clkout, ptr %3, i32 0, i32 5
  store i32 %7, ptr %8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_clkout_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %4 = getelementptr inbounds %struct.exynos_clkout, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.exynos_clkout, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %5) #8, !srcloc !12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i64 3211944}
!10 = !{i64 2151546800}
!11 = !{i64 2151547040}
!12 = !{i64 3211526}
