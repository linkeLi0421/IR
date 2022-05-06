; ModuleID = '/llk/IR/drivers/net/mdio/mdio-mux-meson-g12a.c_pt.bc'
source_filename = "../drivers/net/mdio/mdio-mux-meson-g12a.c"
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
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.g12a_mdio_mux = type { i8, ptr, ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.g12a_ephy_pll = type { ptr, %struct.clk_hw }

@g12a_mdio_mux_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,g12a-mdio-mux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description298 = internal constant [49 x i8] c"description=Amlogic G12a MDIO multiplexer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [44 x i8] c"author=Jerome Brunet <jbrunet@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@g12a_mdio_mux_driver = internal global %struct.platform_driver { ptr @g12a_mdio_mux_probe, ptr @g12a_mdio_mux_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @g12a_mdio_mux_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [14 x i8] c"g12a-mdio_mux\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to get peripheral clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to enable peripheral clock\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"mdio multiplexer init failed: %d\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"clkin%d\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Missing clock %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s#mux\00", align 1
@clk_mux_ro_ops = external dso_local constant %struct.clk_ops, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to register input mux\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s#pll\00", align 1
@g12a_ephy_pll_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @g12a_ephy_pll_enable, ptr @g12a_ephy_pll_disable, ptr @g12a_ephy_pll_is_enabled, ptr null, ptr null, ptr null, ptr @g12a_ephy_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @g12a_ephy_pll_init, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_license300], section "llvm.metadata"

@__mod_of__g12a_mdio_mux_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @g12a_mdio_mux_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @g12a_mdio_mux_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @g12a_mdio_mux_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @g12a_mdio_mux_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x ptr], align 8
  %3 = alloca %struct.clk_init_data, align 4
  %4 = alloca [8 x i8], align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 20, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %114, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %9, align 8
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %11 = getelementptr inbounds %struct.g12a_mdio_mux, ptr %6, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i32
  br label %114

15:                                               ; preds = %8
  %16 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.1) #7
  %17 = getelementptr inbounds %struct.g12a_mdio_mux, ptr %6, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = icmp eq ptr %16, inttoptr (i32 -517 to ptr)
  br i1 %20, label %114, label %21

21:                                               ; preds = %19
  %22 = ptrtoint ptr %16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #8
  br label %114

23:                                               ; preds = %15
  %24 = tail call i32 @clk_prepare(ptr noundef %16) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = tail call i32 @clk_enable(ptr noundef %16) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  tail call void @clk_unprepare(ptr noundef %16) #7
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi i32 [ %27, %29 ], [ %24, %23 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #8
  br label %114

32:                                               ; preds = %26
  %33 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #7
  %34 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %34, i8 0, i32 12, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !8
  %35 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 8, ptr noundef nonnull @.str.5, i32 noundef 0) #7
  %36 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull %4) #7
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %43

38:                                               ; preds = %43, %32
  %39 = phi ptr [ %36, %32 ], [ %46, %43 ]
  %40 = icmp eq ptr %39, inttoptr (i32 -517 to ptr)
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #8
  br label %42

42:                                               ; preds = %41, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %101

43:                                               ; preds = %32
  %44 = call ptr @__clk_get_name(ptr noundef %36) #7
  store ptr %44, ptr %2, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !8
  %45 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 8, ptr noundef nonnull @.str.5, i32 noundef 1) #7
  %46 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull %4) #7
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %38, label %48

48:                                               ; preds = %43
  %49 = call ptr @__clk_get_name(ptr noundef %46) #7
  %50 = getelementptr inbounds [2 x ptr], ptr %2, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  %51 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 32, i32 noundef 3520) #7
  %52 = icmp eq ptr %51, null
  br i1 %52, label %100, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load ptr, ptr %5, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi ptr [ %58, %57 ], [ %55, %53 ]
  %61 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef %60) #7
  %62 = icmp eq ptr %61, null
  br i1 %62, label %100, label %63

63:                                               ; preds = %59
  store ptr %61, ptr %3, align 4
  %64 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  store ptr @clk_mux_ro_ops, ptr %64, align 4
  %65 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr %2, ptr %66, align 4
  %67 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  store i8 2, ptr %67, align 4
  %68 = getelementptr inbounds %struct.g12a_mdio_mux, ptr %33, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 68
  %71 = getelementptr inbounds %struct.clk_mux, ptr %51, i32 0, i32 1
  store ptr %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.clk_mux, ptr %51, i32 0, i32 4
  store i8 23, ptr %72, align 4
  %73 = getelementptr inbounds %struct.clk_mux, ptr %51, i32 0, i32 3
  store i32 1, ptr %73, align 4
  %74 = getelementptr inbounds %struct.clk_hw, ptr %51, i32 0, i32 2
  store ptr %3, ptr %74, align 4
  %75 = call ptr @devm_clk_register(ptr noundef %5, ptr noundef nonnull %51) #7
  call void @kfree(ptr noundef nonnull %61) #7
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8) #8
  br label %101

78:                                               ; preds = %63
  %79 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 16, i32 noundef 3520) #7
  %80 = icmp eq ptr %79, null
  br i1 %80, label %100, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %54, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load ptr, ptr %5, align 4
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi ptr [ %85, %84 ], [ %82, %81 ]
  %88 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.9, ptr noundef %87) #7
  %89 = icmp eq ptr %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %86
  store ptr %88, ptr %3, align 4
  store ptr @g12a_ephy_pll_ops, ptr %64, align 4
  store i32 0, ptr %65, align 4
  %91 = call ptr @__clk_get_name(ptr noundef %75) #7
  store ptr %91, ptr %2, align 8
  store ptr %2, ptr %66, align 4
  store i8 1, ptr %67, align 4
  %92 = load ptr, ptr %68, align 4
  store ptr %92, ptr %79, align 4
  %93 = getelementptr inbounds %struct.g12a_ephy_pll, ptr %79, i32 0, i32 1
  %94 = getelementptr inbounds %struct.g12a_ephy_pll, ptr %79, i32 0, i32 1, i32 2
  store ptr %3, ptr %94, align 4
  %95 = call ptr @devm_clk_register(ptr noundef %5, ptr noundef %93) #7
  call void @kfree(ptr noundef nonnull %88) #7
  %96 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8) #8
  br label %101

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.g12a_mdio_mux, ptr %33, i32 0, i32 4
  store ptr %95, ptr %99, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  br label %105

100:                                              ; preds = %86, %78, %59, %48
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  br label %111

101:                                              ; preds = %97, %77, %42
  %102 = phi ptr [ %75, %77 ], [ %95, %97 ], [ %39, %42 ]
  %103 = ptrtoint ptr %102 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  %104 = icmp eq ptr %102, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %101, %98
  %106 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds %struct.g12a_mdio_mux, ptr %6, i32 0, i32 2
  %109 = call i32 @mdio_mux_init(ptr noundef %5, ptr noundef %107, ptr noundef nonnull @g12a_mdio_switch_fn, ptr noundef %108, ptr noundef %5, ptr noundef null) #7
  switch i32 %109, label %110 [
    i32 0, label %114
    i32 -517, label %111
  ]

110:                                              ; preds = %105
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %109) #8
  br label %111

111:                                              ; preds = %110, %105, %101, %100
  %112 = phi i32 [ %103, %101 ], [ %109, %110 ], [ %109, %105 ], [ -12, %100 ]
  %113 = load ptr, ptr %17, align 4
  call void @clk_disable(ptr noundef %113) #7
  call void @clk_unprepare(ptr noundef %113) #7
  br label %114

114:                                              ; preds = %111, %105, %30, %21, %19, %13, %1
  %115 = phi i32 [ %14, %13 ], [ %31, %30 ], [ %112, %111 ], [ -12, %1 ], [ %22, %21 ], [ -517, %19 ], [ %109, %105 ]
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @g12a_mdio_mux_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.g12a_mdio_mux, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @mdio_mux_uninit(ptr noundef %5) #7
  %6 = load i8, ptr %3, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.g12a_mdio_mux, ptr %3, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #7
  tail call void @clk_unprepare(ptr noundef %10) #7
  br label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.g12a_mdio_mux, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_mux_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @g12a_mdio_switch_fn(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %0, %1
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  switch i32 %1, label %37 [
    i32 0, label %8
    i32 1, label %17
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.g12a_mdio_mux, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #7, !srcloc !10
  %12 = load i8, ptr %5, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.g12a_mdio_mux, ptr %5, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #7
  tail call void @clk_unprepare(ptr noundef %16) #7
  store i8 0, ptr %5, align 4
  br label %37

17:                                               ; preds = %7
  %18 = load i8, ptr %5, align 4, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.g12a_mdio_mux, ptr %5, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @clk_prepare(ptr noundef %22) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = tail call i32 @clk_enable(ptr noundef %22) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @clk_unprepare(ptr noundef %22) #7
  br label %37

29:                                               ; preds = %25, %17
  store i8 1, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %30 = getelementptr inbounds %struct.g12a_mdio_mux, ptr %5, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 855703936) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %33 = load ptr, ptr %30, align 4
  %34 = getelementptr i8, ptr %33, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 475203) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %35 = load ptr, ptr %30, align 4
  %36 = getelementptr i8, ptr %35, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 608) #7, !srcloc !10
  br label %37

37:                                               ; preds = %29, %28, %20, %14, %8, %7, %3
  %38 = phi i32 [ 0, %3 ], [ -22, %7 ], [ 0, %8 ], [ 0, %14 ], [ 0, %29 ], [ %26, %28 ], [ %23, %20 ]
  ret i32 %38
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

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @g12a_ephy_pll_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 68
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %6 = or i32 %5, 805306368
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !10
  %9 = and i32 %6, -536870913
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #7, !srcloc !10
  %12 = tail call i64 @ktime_get() #7
  %13 = add i64 %12, 1000000000
  br label %14

14:                                               ; preds = %20, %1
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 68
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %18 = and i32 %17, 1073741824
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = tail call i64 @ktime_get() #7
  %22 = icmp sgt i64 %21, %13
  br i1 %22, label %23, label %14

23:                                               ; preds = %20
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr i8, ptr %24, i32 68
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %27 = and i32 %26, 1073741824
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 -110, i32 0
  br label %30

30:                                               ; preds = %23, %14
  %31 = phi i32 [ %29, %23 ], [ 0, %14 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @g12a_ephy_pll_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 68
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %6 = and i32 %5, -805306369
  %7 = or i32 %6, 536870912
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @g12a_ephy_pll_is_enabled(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 68
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %6 = lshr i32 %5, 30
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @g12a_ephy_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 68
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %7 = and i32 %6, 511
  %8 = lshr i32 %6, 10
  %9 = and i32 %8, 31
  %10 = mul i32 %7, %1
  %11 = udiv i32 %10, %9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @g12a_ephy_pll_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 700449802) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -1837236224) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1403041307) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 538968064) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 49154) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !31
  tail call void @arm_heavy_mb() #7
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 35) #7, !srcloc !10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_mux_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!10 = !{i64 3846542}
!11 = !{i64 2154291461}
!12 = !{i64 2154441987}
!13 = !{i64 2154487756}
!14 = !{i64 3846960}
!15 = !{i64 2154280988}
!16 = !{i64 2154281345}
!17 = !{i64 2154281746}
!18 = !{i64 2154283394}
!19 = !{i64 2154283725}
!20 = !{i64 2154285258}
!21 = !{i64 2154285615}
!22 = !{i64 2154287272}
!23 = !{i64 2154199823}
!24 = !{i64 2154288745}
!25 = !{i64 2154289083}
!26 = !{i64 2154289421}
!27 = !{i64 2154289759}
!28 = !{i64 2154290097}
!29 = !{i64 2154290435}
!30 = !{i64 2154290773}
!31 = !{i64 2154291111}
