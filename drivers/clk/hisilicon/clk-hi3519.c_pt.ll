; ModuleID = '/llk/IR/drivers/clk/hisilicon/clk-hi3519.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hi3519.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
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
%struct.hi3519_crg_data = type { ptr, ptr }

@__initcall__kmod_clk_hi3519__162_194_hi3519_clk_init1 = internal global ptr @hi3519_clk_init, section ".initcall1.init", align 4
@hi3519_clk_driver = internal global %struct.platform_driver { ptr @hi3519_clk_probe, ptr @hi3519_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3519_clk_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_hi3519_clk_exit = internal global ptr @hi3519_clk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file163 = internal constant [49 x i8] c"clk_hi3519.file=drivers/clk/hisilicon/clk-hi3519\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [26 x i8] c"clk_hi3519.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description165 = internal constant [53 x i8] c"clk_hi3519.description=HiSilicon Hi3519 Clock Driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"hi3519-clk\00", align 1
@hi3519_clk_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3519-crg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@hi3519_fixed_rate_clks = internal constant [9 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 65, ptr @.str.1, ptr null, i32 0, i32 24000000 }, %struct.hisi_fixed_rate_clock { i32 66, ptr @.str.2, ptr null, i32 0, i32 50000000 }, %struct.hisi_fixed_rate_clock { i32 67, ptr @.str.3, ptr null, i32 0, i32 75000000 }, %struct.hisi_fixed_rate_clock { i32 68, ptr @.str.4, ptr null, i32 0, i32 125000000 }, %struct.hisi_fixed_rate_clock { i32 69, ptr @.str.5, ptr null, i32 0, i32 150000000 }, %struct.hisi_fixed_rate_clock { i32 70, ptr @.str.6, ptr null, i32 0, i32 200000000 }, %struct.hisi_fixed_rate_clock { i32 71, ptr @.str.7, ptr null, i32 0, i32 250000000 }, %struct.hisi_fixed_rate_clock { i32 72, ptr @.str.8, ptr null, i32 0, i32 300000000 }, %struct.hisi_fixed_rate_clock { i32 73, ptr @.str.9, ptr null, i32 0, i32 400000000 }], align 4
@hi3519_mux_clks = internal constant [1 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 74, ptr @.str.10, ptr @fmc_mux_p, i8 8, i32 4, i32 192, i8 2, i8 3, i8 0, ptr @fmc_mux_table, ptr null }], align 4
@hi3519_gate_clks = internal constant [9 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 1, ptr @.str.11, ptr @.str.10, i32 4, i32 192, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 5, ptr @.str.12, ptr @.str.1, i32 4, i32 228, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 6, ptr @.str.13, ptr @.str.1, i32 4, i32 228, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 7, ptr @.str.14, ptr @.str.1, i32 4, i32 228, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 8, ptr @.str.15, ptr @.str.1, i32 4, i32 228, i8 23, i8 0, ptr null }, %struct.hisi_gate_clock { i32 9, ptr @.str.16, ptr @.str.1, i32 4, i32 228, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.17, ptr @.str.2, i32 4, i32 228, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.18, ptr @.str.2, i32 4, i32 228, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 4, ptr @.str.19, ptr @.str.2, i32 4, i32 228, i8 18, i8 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"24m\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"50m\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"75m\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"125m\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"150m\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"200m\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"250m\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"300m\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"400m\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"fmc_mux\00", align 1
@fmc_mux_p = internal constant [8 x ptr] [ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], align 4
@fmc_mux_table = internal global [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"clk_fmc\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"clk_uart0\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"clk_uart1\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"clk_uart2\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"clk_uart3\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"clk_uart4\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"clk_spi0\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"clk_spi1\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"clk_spi2\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description165, ptr @__UNIQUE_ID_file163, ptr @__UNIQUE_ID_license164, ptr @__exitcall_hi3519_clk_exit, ptr @__initcall__kmod_clk_hi3519__162_194_hi3519_clk_init1, ptr @hi3519_clk_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hi3519_clk_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3519_clk_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hi3519_clk_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi3519_clk_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3519_clk_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 8, i32 noundef 3264) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %94, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @hisi_reset_init(ptr noundef %0) #4
  %7 = getelementptr inbounds %struct.hi3519_crg_data, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %94, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @hisi_clk_alloc(ptr noundef %0, i32 noundef 128) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store ptr inttoptr (i32 -12 to ptr), ptr %3, align 4
  br label %89

13:                                               ; preds = %9
  %14 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3519_fixed_rate_clks, i32 noundef 9, ptr noundef nonnull %10) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = inttoptr i32 %14 to ptr
  br label %86

18:                                               ; preds = %13
  %19 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3519_mux_clks, i32 noundef 1, ptr noundef nonnull %10) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3519_gate_clks, i32 noundef 9, ptr noundef nonnull %10) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 @of_clk_add_provider(ptr noundef %26, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %10) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %86, label %37

29:                                               ; preds = %18
  tail call fastcc void @hisi_clk_unregister_fixed_rate(ptr noundef nonnull %10) #4
  br label %30

30:                                               ; preds = %29, %21
  %31 = phi i32 [ %19, %29 ], [ %22, %21 ]
  %32 = load ptr, ptr %10, align 4
  %33 = getelementptr ptr, ptr %32, i32 74
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void @clk_unregister_mux(ptr noundef nonnull %34) #4
  br label %37

37:                                               ; preds = %36, %30, %24
  %38 = phi i32 [ %27, %24 ], [ %31, %30 ], [ %31, %36 ]
  %39 = load ptr, ptr %10, align 4
  %40 = getelementptr ptr, ptr %39, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void @clk_unregister_gate(ptr noundef nonnull %41) #4
  br label %44

44:                                               ; preds = %43, %37
  %45 = getelementptr ptr, ptr %39, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @clk_unregister_gate(ptr noundef nonnull %46) #4
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr ptr, ptr %39, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @clk_unregister_gate(ptr noundef nonnull %51) #4
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr ptr, ptr %39, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @clk_unregister_gate(ptr noundef nonnull %56) #4
  br label %59

59:                                               ; preds = %58, %54
  %60 = getelementptr ptr, ptr %39, i32 8
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void @clk_unregister_gate(ptr noundef nonnull %61) #4
  br label %64

64:                                               ; preds = %63, %59
  %65 = getelementptr ptr, ptr %39, i32 9
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  tail call void @clk_unregister_gate(ptr noundef nonnull %66) #4
  br label %69

69:                                               ; preds = %68, %64
  %70 = getelementptr ptr, ptr %39, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  tail call void @clk_unregister_gate(ptr noundef nonnull %71) #4
  br label %74

74:                                               ; preds = %73, %69
  %75 = getelementptr ptr, ptr %39, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call void @clk_unregister_gate(ptr noundef nonnull %76) #4
  br label %79

79:                                               ; preds = %78, %74
  %80 = getelementptr ptr, ptr %39, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  tail call void @clk_unregister_gate(ptr noundef nonnull %81) #4
  br label %84

84:                                               ; preds = %83, %79
  %85 = inttoptr i32 %38 to ptr
  br label %86

86:                                               ; preds = %84, %24, %16
  %87 = phi ptr [ %17, %16 ], [ %85, %84 ], [ %10, %24 ]
  store ptr %87, ptr %3, align 4
  %88 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %89, label %92

89:                                               ; preds = %86, %12
  %90 = phi ptr [ inttoptr (i32 -12 to ptr), %12 ], [ %87, %86 ]
  tail call void @hisi_reset_exit(ptr noundef nonnull %6) #4
  %91 = ptrtoint ptr %90 to i32
  br label %94

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %93, align 8
  br label %94

94:                                               ; preds = %92, %89, %5, %1
  %95 = phi i32 [ %91, %89 ], [ 0, %92 ], [ -12, %1 ], [ -12, %5 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3519_clk_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hi3519_crg_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @hisi_reset_exit(ptr noundef %5) #4
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  tail call void @of_clk_del_provider(ptr noundef %8) #4
  %9 = load ptr, ptr %6, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr ptr, ptr %10, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  tail call void @clk_unregister_gate(ptr noundef nonnull %12) #4
  %15 = load ptr, ptr %6, align 4
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = phi ptr [ %16, %14 ], [ %10, %1 ]
  %19 = phi ptr [ %15, %14 ], [ %9, %1 ]
  %20 = getelementptr ptr, ptr %18, i32 74
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  tail call void @clk_unregister_mux(ptr noundef nonnull %21) #4
  %24 = load ptr, ptr %6, align 4
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi ptr [ %19, %17 ], [ %24, %23 ]
  tail call fastcc void @hisi_clk_unregister_fixed_rate(ptr noundef %26) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_reset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_reset_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_mux(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_gate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hisi_clk_unregister_fixed_rate(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr ptr, ptr %2, i32 65
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %4) #4
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr ptr, ptr %2, i32 66
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %9) #4
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr ptr, ptr %2, i32 67
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %14) #4
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr ptr, ptr %2, i32 68
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %19) #4
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr ptr, ptr %2, i32 69
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %24) #4
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr ptr, ptr %2, i32 70
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %29) #4
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr ptr, ptr %2, i32 71
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %34) #4
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr ptr, ptr %2, i32 72
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %39) #4
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr ptr, ptr %2, i32 73
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %44) #4
  br label %47

47:                                               ; preds = %46, %42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_fixed_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_mux(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_gate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
