; ModuleID = '/llk/IR/drivers/clk/ti/adpll.c_pt.bc'
source_filename = "../drivers/clk/ti/adpll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_adpll_platform_data = type { i8, i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.ti_adpll_data = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.spinlock, [3 x ptr], [3 x ptr], ptr, %struct.clk_onecell_data, %struct.ti_adpll_dco_data }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.ti_adpll_dco_data = type { %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ti_adpll_clock = type { ptr, ptr, ptr }
%struct.ti_adpll_clkout_data = type { ptr, %struct.clk_gate, %struct.clk_hw }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }

@__initcall__kmod_adpll__166_965_ti_adpll_init1 = internal global ptr @ti_adpll_init, section ".initcall1.init", align 4
@ti_adpll_driver = internal global %struct.platform_driver { ptr @ti_adpll_probe, ptr @ti_adpll_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_adpll_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ti_adpll_exit = internal global ptr @ti_adpll_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description167 = internal constant [48 x i8] c"adpll.description=Clock driver for dm814x ADPLL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias168 = internal constant [39 x i8] c"adpll.alias=platform:dm814-adpll-clock\00", section ".modinfo", align 1
@__UNIQUE_ID_author169 = internal constant [46 x i8] c"adpll.author=Tony LIndgren <tony@atomide.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file170 = internal constant [32 x i8] c"adpll.file=drivers/clk/ti/adpll\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [21 x i8] c"adpll.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"ti-adpll\00", align 1
@ti_adpll_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-adpll-s-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_adpll_type_s }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-adpll-lj-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_adpll_type_lj }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"could not register dco: %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"drivers/clk/ti/adpll.c\00", align 1
@ti_adpll_init_inputs.error = internal constant [24 x i8] c"need at least %i inputs\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"could not get clkinp\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"could not get clkinpulow clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"could not get clkinphif clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dco\00", align 1
@ti_adpll_ops = internal constant %struct.clk_ops { ptr @ti_adpll_prepare, ptr @ti_adpll_unprepare, ptr @ti_adpll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ti_adpll_recalc_rate, ptr null, ptr null, ptr null, ptr @ti_adpll_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"n2\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"%08lx.adpll.%s\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"pll failed to lock\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"failed to register divider %s: %li\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"clock %s con_id lookup may fail\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"pll%03lx%s\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"no con_id for clock %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"bypass\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"m2\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"div2\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"clkout\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"clkout2\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"hif\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"m3\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"failed to register mux %s: %li\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"failed to register output %s: %li\0A\00", align 1
@clk_gate_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"clkdcoldo\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"clkoutldo\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"failed to register gate %s: %li\0A\00", align 1
@ti_adpll_type_s = internal constant %struct.ti_adpll_platform_data { i8 1, i32 3, i32 4, i32 0 }, align 4
@ti_adpll_type_lj = internal constant %struct.ti_adpll_platform_data { i8 0, i32 2, i32 3, i32 -22 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias168, ptr @__UNIQUE_ID_author169, ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_license171, ptr @__exitcall_ti_adpll_exit, ptr @__initcall__kmod_adpll__166_965_ti_adpll_init1, ptr @ti_adpll_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ti_adpll_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_adpll_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ti_adpll_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_adpll_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_adpll_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.clk_init_data, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_match_device(ptr noundef nonnull @ti_adpll_match, ptr noundef %4) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %258, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 76, i32 noundef 3520) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %258, label %14

14:                                               ; preds = %9
  store ptr %4, ptr %12, align 4
  %15 = getelementptr inbounds %struct.ti_adpll_data, ptr %12, i32 0, i32 2
  store ptr %6, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ti_adpll_data, ptr %12, i32 0, i32 1
  store ptr %11, ptr %16, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %12, ptr %17, align 8
  %18 = getelementptr inbounds %struct.ti_adpll_data, ptr %12, i32 0, i32 6
  store i32 0, ptr %18, align 4
  %19 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %258, label %21

21:                                               ; preds = %14
  %22 = load i32, ptr %19, align 4
  %23 = getelementptr inbounds %struct.ti_adpll_data, ptr %12, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef nonnull %19) #10
  %25 = getelementptr inbounds %struct.ti_adpll_data, ptr %12, i32 0, i32 4
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = ptrtoint ptr %24 to i32
  br label %258

29:                                               ; preds = %21
  %30 = load ptr, ptr %16, align 4
  %31 = load i8, ptr %30, align 4, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #10, !srcloc !9
  %35 = icmp eq i32 %34, 521296740
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 517622845) #10, !srcloc !10
  br label %37

37:                                               ; preds = %36, %33, %29
  %38 = phi i32 [ 0, %29 ], [ 8, %33 ], [ 8, %36 ]
  %39 = load ptr, ptr %25, align 4
  %40 = getelementptr i8, ptr %39, i32 %38
  %41 = getelementptr inbounds %struct.ti_adpll_data, ptr %12, i32 0, i32 5
  store ptr %40, ptr %41, align 4
  %42 = load ptr, ptr %15, align 4
  %43 = tail call i32 @of_clk_get_parent_count(ptr noundef %42) #10
  %44 = load ptr, ptr %16, align 4
  %45 = getelementptr inbounds %struct.ti_adpll_platform_data, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @ti_adpll_init_inputs.error, i32 noundef %43) #11
  br label %258

50:                                               ; preds = %37
  %51 = load ptr, ptr %15, align 4
  %52 = getelementptr inbounds %struct.ti_adpll_data, ptr %12, i32 0, i32 7
  %53 = tail call i32 @of_clk_parent_fill(ptr noundef %51, ptr noundef %52, i32 noundef %43) #10
  %54 = load ptr, ptr %12, align 4
  %55 = load ptr, ptr %52, align 4
  %56 = tail call ptr @devm_clk_get(ptr noundef %54, ptr noundef %55) #10
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %78, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.ti_adpll_data, ptr %12, i32 0, i32 8
  store ptr %56, ptr %59, align 4
  %60 = load ptr, ptr %12, align 4
  %61 = getelementptr %struct.ti_adpll_data, ptr %12, i32 0, i32 7, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = tail call ptr @devm_clk_get(ptr noundef %60, ptr noundef %62) #10
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %78, label %65

65:                                               ; preds = %58
  %66 = getelementptr %struct.ti_adpll_data, ptr %12, i32 0, i32 8, i32 1
  store ptr %63, ptr %66, align 4
  %67 = load ptr, ptr %16, align 4
  %68 = load i8, ptr %67, align 4, !range !8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %12, align 4
  %72 = getelementptr %struct.ti_adpll_data, ptr %12, i32 0, i32 7, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = tail call ptr @devm_clk_get(ptr noundef %71, ptr noundef %73) #10
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = getelementptr %struct.ti_adpll_data, ptr %12, i32 0, i32 8, i32 2
  store ptr %74, ptr %77, align 4
  br label %83

78:                                               ; preds = %70, %58, %50
  %79 = phi ptr [ @.str.3, %50 ], [ @.str.4, %58 ], [ @.str.5, %70 ]
  %80 = phi ptr [ %56, %50 ], [ %63, %58 ], [ %74, %70 ]
  %81 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull %79) #11
  %82 = ptrtoint ptr %80 to i32
  br label %258

83:                                               ; preds = %76, %65
  %84 = load ptr, ptr %12, align 4
  %85 = tail call noalias ptr @devm_kmalloc(ptr noundef %84, i32 noundef 132, i32 noundef 3520) #10
  %86 = getelementptr inbounds %struct.ti_adpll_data, ptr %12, i32 0, i32 9
  store ptr %85, ptr %86, align 4
  %87 = icmp eq ptr %85, null
  br i1 %87, label %258, label %88

88:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #10
  %89 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %89, i8 0, i32 12, i1 false) #10, !annotation !11
  %90 = load ptr, ptr %12, align 4
  %91 = tail call noalias ptr @devm_kmalloc(ptr noundef %90, i32 noundef 16, i32 noundef 3520) #10
  %92 = getelementptr inbounds %struct.ti_adpll_data, ptr %12, i32 0, i32 10
  store ptr %91, ptr %92, align 4
  %93 = icmp eq ptr %91, null
  br i1 %93, label %143, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr %16, align 4
  %96 = getelementptr inbounds %struct.ti_adpll_platform_data, ptr %95, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store ptr null, ptr %2, align 4, !annotation !11
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load ptr, ptr %15, align 4
  %101 = call i32 @of_property_read_string_helper(ptr noundef %100, ptr noundef nonnull @.str.8, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %97) #10
  %102 = icmp sgt i32 %101, -1
  %103 = load ptr, ptr %2, align 4
  br i1 %102, label %109, label %104

104:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %143

105:                                              ; preds = %94
  %106 = load ptr, ptr %12, align 4
  %107 = load i32, ptr %23, align 4
  %108 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %106, i32 noundef 3264, ptr noundef nonnull @.str.9, i32 noundef %107, ptr noundef nonnull @.str.6) #10
  br label %109

109:                                              ; preds = %105, %99
  %110 = phi ptr [ %108, %105 ], [ %103, %99 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  store ptr %110, ptr %3, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %143, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr %52, ptr %113, align 4
  %114 = load ptr, ptr %16, align 4
  %115 = getelementptr inbounds %struct.ti_adpll_platform_data, ptr %114, i32 0, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  store i8 %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  store ptr @ti_adpll_ops, ptr %119, align 4
  %120 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  store i32 64, ptr %120, align 4
  %121 = getelementptr inbounds %struct.ti_adpll_data, ptr %12, i32 0, i32 11, i32 0, i32 2
  store ptr %3, ptr %121, align 4
  %122 = load i8, ptr %114, align 4, !range !8
  %123 = icmp eq i8 %122, 0
  %124 = select i1 %123, i8 4, i8 5
  %125 = load ptr, ptr %59, align 4
  %126 = load ptr, ptr %41, align 4
  %127 = getelementptr i8, ptr %126, i32 20
  %128 = call fastcc i32 @ti_adpll_init_divider(ptr noundef nonnull %12, i32 noundef 2, i32 noundef -19, ptr noundef nonnull @.str.7, ptr noundef %125, ptr noundef %127, i8 noundef zeroext 16, i8 noundef zeroext %124, i8 noundef zeroext 0) #10
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %112
  %131 = getelementptr inbounds %struct.ti_adpll_data, ptr %12, i32 0, i32 11
  %132 = load ptr, ptr %12, align 4
  %133 = call ptr @devm_clk_register(ptr noundef %132, ptr noundef %131) #10
  %134 = icmp ugt ptr %133, inttoptr (i32 -4096 to ptr)
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = ptrtoint ptr %133 to i32
  br label %145

137:                                              ; preds = %130
  %138 = load ptr, ptr %16, align 4
  %139 = getelementptr inbounds %struct.ti_adpll_platform_data, ptr %138, i32 0, i32 3
  %140 = load i32, ptr %139, align 4
  %141 = load ptr, ptr %3, align 4
  %142 = call fastcc i32 @ti_adpll_setup_clock(ptr noundef nonnull %12, ptr noundef %133, i32 noundef 0, i32 noundef %140, ptr noundef %141, ptr noundef null) #10
  br label %145

143:                                              ; preds = %112, %109, %104, %88
  %144 = phi i32 [ -22, %104 ], [ %128, %112 ], [ -22, %109 ], [ -12, %88 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #10
  br label %148

145:                                              ; preds = %137, %135
  %146 = phi i32 [ %136, %135 ], [ %142, %137 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #10
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %145, %143
  %149 = phi i32 [ %144, %143 ], [ %146, %145 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %149) #11
  br label %232

150:                                              ; preds = %145
  %151 = load ptr, ptr %16, align 4
  %152 = load i8, ptr %151, align 4, !range !8
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %225, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr %86, align 4
  %156 = getelementptr %struct.ti_adpll_clock, ptr %155, i32 2
  %157 = load ptr, ptr %156, align 4
  %158 = load ptr, ptr %66, align 4
  %159 = load ptr, ptr %41, align 4
  %160 = getelementptr i8, ptr %159, i32 4
  %161 = call fastcc i32 @ti_adpll_init_mux(ptr noundef nonnull %12, i32 noundef 5, ptr noundef nonnull @.str.15, ptr noundef %157, ptr noundef %158, ptr noundef %160, i8 noundef zeroext 18) #10
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %232

163:                                              ; preds = %154
  %164 = load ptr, ptr %86, align 4
  %165 = load ptr, ptr %164, align 4
  %166 = load ptr, ptr %41, align 4
  %167 = getelementptr i8, ptr %166, i32 16
  %168 = call fastcc i32 @ti_adpll_init_divider(ptr noundef nonnull %12, i32 noundef 3, i32 noundef -19, ptr noundef nonnull @.str.16, ptr noundef %165, ptr noundef %167, i8 noundef zeroext 16, i8 noundef zeroext 5, i8 noundef zeroext 1) #10
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %232

170:                                              ; preds = %163
  %171 = load ptr, ptr %86, align 4
  %172 = getelementptr %struct.ti_adpll_clock, ptr %171, i32 3
  %173 = load ptr, ptr %172, align 4
  %174 = load ptr, ptr %12, align 4
  %175 = load i32, ptr %23, align 4
  %176 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %174, i32 noundef 3264, ptr noundef nonnull @.str.9, i32 noundef %175, ptr noundef nonnull @.str.17) #10
  %177 = icmp eq ptr %176, null
  br i1 %177, label %232, label %178

178:                                              ; preds = %170
  %179 = call ptr @__clk_get_name(ptr noundef %173) #10
  %180 = load ptr, ptr %12, align 4
  %181 = call ptr @clk_register_fixed_factor(ptr noundef %180, ptr noundef nonnull %176, ptr noundef %179, i32 noundef 0, i32 noundef 1, i32 noundef 2) #10
  %182 = icmp ugt ptr %181, inttoptr (i32 -4096 to ptr)
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = ptrtoint ptr %181 to i32
  br label %187

185:                                              ; preds = %178
  %186 = call fastcc i32 @ti_adpll_setup_clock(ptr noundef nonnull %12, ptr noundef %181, i32 noundef 7, i32 noundef -19, ptr noundef nonnull %176, ptr noundef nonnull @clk_unregister) #10
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %232

190:                                              ; preds = %187
  %191 = load ptr, ptr %86, align 4
  %192 = getelementptr %struct.ti_adpll_clock, ptr %191, i32 7
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr %struct.ti_adpll_clock, ptr %191, i32 5
  %195 = load ptr, ptr %194, align 4
  %196 = call fastcc i32 @ti_adpll_init_clkout(ptr noundef nonnull %12, i32 noundef 8, i32 noundef 1, i32 noundef 20, ptr noundef nonnull @.str.18, ptr noundef %193, ptr noundef %195) #10
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %232

198:                                              ; preds = %190
  %199 = load ptr, ptr %86, align 4
  %200 = getelementptr %struct.ti_adpll_clock, ptr %199, i32 3
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr %struct.ti_adpll_clock, ptr %199, i32 5
  %203 = load ptr, ptr %202, align 4
  %204 = call fastcc i32 @ti_adpll_init_clkout(ptr noundef nonnull %12, i32 noundef 9, i32 noundef 2, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef %201, ptr noundef %203) #10
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %232

206:                                              ; preds = %198
  %207 = getelementptr %struct.ti_adpll_data, ptr %12, i32 0, i32 8, i32 2
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %217, label %210

210:                                              ; preds = %206
  %211 = load ptr, ptr %86, align 4
  %212 = load ptr, ptr %211, align 4
  %213 = load ptr, ptr %41, align 4
  %214 = getelementptr i8, ptr %213, i32 4
  %215 = call fastcc i32 @ti_adpll_init_mux(ptr noundef nonnull %12, i32 noundef 6, ptr noundef nonnull @.str.20, ptr noundef %212, ptr noundef nonnull %208, ptr noundef %214, i8 noundef zeroext 19) #10
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %232

217:                                              ; preds = %210, %206
  %218 = load ptr, ptr %86, align 4
  %219 = getelementptr %struct.ti_adpll_clock, ptr %218, i32 6
  %220 = load ptr, ptr %219, align 4
  %221 = load ptr, ptr %41, align 4
  %222 = getelementptr i8, ptr %221, i32 40
  %223 = call fastcc i32 @ti_adpll_init_divider(ptr noundef nonnull %12, i32 noundef 10, i32 noundef 3, ptr noundef nonnull @.str.21, ptr noundef %220, ptr noundef %222, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 1) #10
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %217, %150
  %226 = call fastcc i32 @ti_adpll_init_children_adpll_lj(ptr noundef nonnull %12)
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load ptr, ptr %15, align 4
  %230 = call i32 @of_clk_add_provider(ptr noundef %229, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %92) #10
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %258, label %232

232:                                              ; preds = %228, %225, %217, %210, %198, %190, %187, %170, %163, %154, %148
  %233 = phi i32 [ %149, %148 ], [ %223, %217 ], [ %226, %225 ], [ %230, %228 ], [ -12, %170 ], [ %215, %210 ], [ %204, %198 ], [ %196, %190 ], [ %188, %187 ], [ %168, %163 ], [ %161, %154 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 937, i32 noundef 9, ptr noundef null) #10
  br label %234

234:                                              ; preds = %255, %232
  %235 = phi i32 [ 10, %232 ], [ %256, %255 ]
  %236 = load ptr, ptr %86, align 4
  %237 = getelementptr %struct.ti_adpll_clock, ptr %236, i32 %235
  %238 = icmp eq ptr %237, null
  br i1 %238, label %255, label %239

239:                                              ; preds = %234
  %240 = load ptr, ptr %237, align 4
  %241 = icmp eq ptr %240, null
  %242 = icmp ugt ptr %240, inttoptr (i32 -4096 to ptr)
  %243 = or i1 %241, %242
  br i1 %243, label %255, label %244

244:                                              ; preds = %239
  %245 = getelementptr %struct.ti_adpll_clock, ptr %236, i32 %235, i32 1
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %249, label %248

248:                                              ; preds = %244
  call void @clkdev_drop(ptr noundef nonnull %246) #10
  br label %249

249:                                              ; preds = %248, %244
  %250 = getelementptr %struct.ti_adpll_clock, ptr %236, i32 %235, i32 2
  %251 = load ptr, ptr %250, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %255, label %253

253:                                              ; preds = %249
  %254 = load ptr, ptr %237, align 4
  call void %251(ptr noundef %254) #10
  br label %255

255:                                              ; preds = %253, %249, %239, %234
  %256 = add nsw i32 %235, -1
  %257 = icmp eq i32 %235, 0
  br i1 %257, label %258, label %234

258:                                              ; preds = %255, %228, %83, %78, %48, %27, %14, %9, %1
  %259 = phi i32 [ %28, %27 ], [ -19, %1 ], [ -12, %9 ], [ -19, %14 ], [ %82, %78 ], [ -12, %83 ], [ 0, %228 ], [ -22, %48 ], [ %233, %255 ]
  ret i32 %259
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_adpll_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ti_adpll_data, ptr %3, i32 0, i32 9
  br label %5

5:                                                ; preds = %26, %1
  %6 = phi i32 [ 10, %1 ], [ %27, %26 ]
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr %struct.ti_adpll_clock, ptr %7, i32 %6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = getelementptr %struct.ti_adpll_clock, ptr %7, i32 %6, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @clkdev_drop(ptr noundef nonnull %17) #10
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr %struct.ti_adpll_clock, ptr %7, i32 %6, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %8, align 4
  tail call void %22(ptr noundef %25) #10
  br label %26

26:                                               ; preds = %24, %20, %10, %5
  %27 = add nsw i32 %6, -1
  %28 = icmp eq i32 %6, 0
  br i1 %28, label %29, label %5

29:                                               ; preds = %26
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ti_adpll_init_children_adpll_lj(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %47

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 4
  %13 = tail call fastcc i32 @ti_adpll_init_gate(ptr noundef %0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef %9, ptr noundef %12, i8 noundef zeroext 29)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %6
  %16 = load ptr, ptr %7, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  %20 = tail call fastcc i32 @ti_adpll_init_divider(ptr noundef %0, i32 noundef 3, i32 noundef -19, ptr noundef nonnull @.str.16, ptr noundef %17, ptr noundef %19, i8 noundef zeroext 16, i8 noundef zeroext 7, i8 noundef zeroext 1)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %15
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr %struct.ti_adpll_clock, ptr %23, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr i8, ptr %26, i32 4
  %28 = tail call fastcc i32 @ti_adpll_init_gate(ptr noundef %0, i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.25, ptr noundef %25, ptr noundef %27, i8 noundef zeroext 19)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr %struct.ti_adpll_clock, ptr %31, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr %struct.ti_adpll_data, ptr %0, i32 0, i32 8, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %10, align 4
  %37 = getelementptr i8, ptr %36, i32 4
  %38 = tail call fastcc i32 @ti_adpll_init_mux(ptr noundef %0, i32 noundef 5, ptr noundef nonnull @.str.15, ptr noundef %33, ptr noundef %35, ptr noundef %37, i8 noundef zeroext 18)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load ptr, ptr %7, align 4
  %42 = getelementptr %struct.ti_adpll_clock, ptr %41, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr %struct.ti_adpll_clock, ptr %41, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = tail call fastcc i32 @ti_adpll_init_clkout(ptr noundef %0, i32 noundef 8, i32 noundef 1, i32 noundef 20, ptr noundef nonnull @.str.18, ptr noundef %43, ptr noundef %45)
  br label %47

47:                                               ; preds = %40, %30, %22, %15, %6, %1
  %48 = phi i32 [ 0, %1 ], [ %13, %6 ], [ %20, %15 ], [ %28, %22 ], [ %38, %30 ], [ %46, %40 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ti_adpll_init_divider(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8) unnamed_addr #2 {
  %10 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store ptr null, ptr %10, align 4, !annotation !11
  %11 = icmp sgt i32 %2, -1
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @of_property_read_string_helper(ptr noundef %14, ptr noundef nonnull @.str.8, ptr noundef nonnull %10, i32 noundef 1, i32 noundef %2) #10
  %16 = icmp sgt i32 %15, -1
  %17 = load ptr, ptr %10, align 4
  br i1 %16, label %24, label %18

18:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  br label %38

19:                                               ; preds = %9
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %20, i32 noundef 3264, ptr noundef nonnull @.str.9, i32 noundef %22, ptr noundef %3) #10
  br label %24

24:                                               ; preds = %19, %12
  %25 = phi ptr [ %23, %19 ], [ %17, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = call ptr @__clk_get_name(ptr noundef %4) #10
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 6
  %31 = call ptr @clk_register_divider_table(ptr noundef %29, ptr noundef nonnull %25, ptr noundef %28, i32 noundef 0, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, ptr noundef null, ptr noundef %30) #10
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load ptr, ptr %0, align 4
  %35 = ptrtoint ptr %31 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.11, ptr noundef %3, i32 noundef %35) #11
  br label %38

36:                                               ; preds = %27
  %37 = call fastcc i32 @ti_adpll_setup_clock(ptr noundef %0, ptr noundef %31, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %25, ptr noundef nonnull @clk_unregister_divider)
  br label %38

38:                                               ; preds = %36, %33, %24, %18
  %39 = phi i32 [ %35, %33 ], [ %37, %36 ], [ -22, %24 ], [ -22, %18 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ti_adpll_setup_clock(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 {
  %7 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !11
  %8 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.ti_adpll_clock, ptr %9, i32 %2
  store ptr %1, ptr %10, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr %struct.ti_adpll_clock, ptr %11, i32 %2, i32 2
  store ptr %5, ptr %12, align 4
  %13 = tail call ptr @strrchr(ptr noundef %4, i32 noundef 46)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %6
  %16 = tail call i32 @strlen(ptr noundef nonnull %13)
  %17 = icmp ugt i32 %16, 1
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = icmp ugt i32 %16, 16
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.12, ptr noundef %4) #11
  br label %22

22:                                               ; preds = %20, %18
  %23 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 4095
  %26 = getelementptr i8, ptr %13, i32 1
  %27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %25, ptr noundef %26)
  %28 = call ptr (ptr, ptr, ptr, ...) @clkdev_create(ptr noundef %1, ptr noundef nonnull %7, ptr noundef null) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %22
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr %struct.ti_adpll_clock, ptr %31, i32 %2, i32 1
  store ptr %28, ptr %32, align 4
  br label %35

33:                                               ; preds = %15, %6
  %34 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.14, ptr noundef %4) #11
  br label %35

35:                                               ; preds = %33, %30
  %36 = icmp slt i32 %3, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 10
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr ptr, ptr %39, i32 %3
  store ptr %1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 10, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %37, %35, %22
  %45 = phi i32 [ 0, %37 ], [ -12, %22 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_adpll_prepare(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 -40
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %5 = getelementptr i8, ptr %0, i32 -44
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !9
  %9 = and i32 %8, -8388609
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #10, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #10
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !9
  %15 = and i32 %14, 1536
  %16 = icmp eq i32 %15, 1536
  br i1 %16, label %49, label %17

17:                                               ; preds = %1
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #10
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !9
  %21 = and i32 %20, 1536
  %22 = icmp eq i32 %21, 1536
  br i1 %22, label %49, label %23

23:                                               ; preds = %17
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #10
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr i8, ptr %24, i32 36
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #10, !srcloc !9
  %27 = and i32 %26, 1536
  %28 = icmp eq i32 %27, 1536
  br i1 %28, label %49, label %29

29:                                               ; preds = %23
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #10
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr i8, ptr %30, i32 36
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !9
  %33 = and i32 %32, 1536
  %34 = icmp eq i32 %33, 1536
  br i1 %34, label %49, label %35

35:                                               ; preds = %29
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #10
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr i8, ptr %36, i32 36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #10, !srcloc !9
  %39 = and i32 %38, 1536
  %40 = icmp eq i32 %39, 1536
  br i1 %40, label %49, label %41

41:                                               ; preds = %35
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #10
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr i8, ptr %42, i32 36
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #10, !srcloc !9
  %45 = and i32 %44, 1536
  %46 = icmp eq i32 %45, 1536
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #10
  %48 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.10) #11
  br label %49

49:                                               ; preds = %47, %41, %35, %29, %23, %17, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ti_adpll_unprepare(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -40
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr i8, ptr %0, i32 -44
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !9
  %8 = or i32 %7, 8388608
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #10, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_adpll_is_prepared(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -44
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 36
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !9
  %6 = and i32 %5, 1536
  %7 = icmp eq i32 %6, 1536
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_adpll_recalc_rate(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !9
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %56

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 -40
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #10
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 24
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !9
  %15 = and i32 %14, 262143
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 20
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #10, !srcloc !12
  %19 = zext i16 %18 to i64
  %20 = shl nuw nsw i64 %19, 18
  %21 = zext i32 %15 to i64
  %22 = or i64 %20, %21
  %23 = zext i32 %1 to i64
  %24 = mul i64 %22, %23
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 16
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %26) #10, !srcloc !12
  %28 = zext i16 %27 to i32
  %29 = shl i32 %28, 18
  %30 = add i32 %29, 262144
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #10
  %31 = icmp ult i64 %24, 4294967296
  br i1 %31, label %32, label %36, !prof !13

32:                                               ; preds = %9
  %33 = trunc i64 %24 to i32
  %34 = udiv i32 %33, %30
  %35 = zext i32 %34 to i64
  br label %39

36:                                               ; preds = %9
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %30, i64 %24) #12, !srcloc !14
  %38 = extractvalue { i64, i64 } %37, 1
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i64 [ %35, %32 ], [ %38, %36 ]
  %41 = getelementptr i8, ptr %0, i32 -60
  %42 = load ptr, ptr %41, align 4
  %43 = load i8, ptr %42, align 4, !range !8
  %44 = icmp eq i8 %43, 0
  %45 = trunc i64 %40 to i32
  br i1 %44, label %56, label %46

46:                                               ; preds = %39
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr i8, ptr %47, i32 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #10, !srcloc !9
  %50 = and i32 %49, 1024
  %51 = icmp eq i32 %50, 0
  %52 = shl i64 %40, 2
  %53 = select i1 %51, i64 %40, i64 %52
  %54 = trunc i64 %53 to i32
  %55 = shl i32 %54, 1
  br label %56

56:                                               ; preds = %46, %39, %2
  %57 = phi i32 [ 0, %2 ], [ %45, %39 ], [ %55, %46 ]
  ret i32 %57
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ti_adpll_get_parent(ptr nocapture noundef readnone %0) #6 {
  ret i8 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_divider(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdev_create(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ti_adpll_init_mux(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #2 {
  %8 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %9, i32 noundef 3264, ptr noundef nonnull @.str.9, i32 noundef %11, ptr noundef %2) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %7
  %15 = tail call ptr @__clk_get_name(ptr noundef %3) #10
  store ptr %15, ptr %8, align 8
  %16 = tail call ptr @__clk_get_name(ptr noundef %4) #10
  %17 = getelementptr inbounds [2 x ptr], ptr %8, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 6
  %20 = call ptr @clk_register_mux_table(ptr noundef %18, ptr noundef nonnull %12, ptr noundef nonnull %8, i8 noundef zeroext 2, i32 noundef 0, ptr noundef %5, i8 noundef zeroext %6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef %19) #10
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 4
  %24 = ptrtoint ptr %20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.22, ptr noundef %2, i32 noundef %24) #11
  br label %27

25:                                               ; preds = %14
  %26 = call fastcc i32 @ti_adpll_setup_clock(ptr noundef %0, ptr noundef %20, i32 noundef %1, i32 noundef -19, ptr noundef nonnull %12, ptr noundef nonnull @clk_unregister_mux)
  br label %27

27:                                               ; preds = %25, %22, %7
  %28 = phi i32 [ %24, %22 ], [ %26, %25 ], [ -12, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ti_adpll_init_clkout(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #2 {
  %8 = alloca %struct.clk_init_data, align 4
  %9 = alloca [2 x ptr], align 8
  %10 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #10
  %11 = getelementptr inbounds i8, ptr %8, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %11, i8 0, i32 16, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store ptr null, ptr %10, align 4, !annotation !11
  %12 = load ptr, ptr %0, align 4
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 40, i32 noundef 3520) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %61, label %15

15:                                               ; preds = %7
  store ptr %0, ptr %13, align 4
  %16 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @of_property_read_string_helper(ptr noundef %17, ptr noundef nonnull @.str.8, ptr noundef nonnull %10, i32 noundef 1, i32 noundef %2) #10
  %19 = call i32 @llvm.smin.i32(i32 %18, i32 0) #10
  %20 = icmp sgt i32 %18, -1
  br i1 %20, label %21, label %61

21:                                               ; preds = %15
  %22 = load ptr, ptr %0, align 4
  %23 = call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef 100, i32 noundef 3520) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %61, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %10, align 4
  store ptr %26, ptr %8, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr %23, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ti_adpll_clkout_data, ptr %13, i32 0, i32 2
  %30 = getelementptr inbounds %struct.ti_adpll_clkout_data, ptr %13, i32 0, i32 2, i32 2
  store ptr %8, ptr %30, align 4
  %31 = call ptr @__clk_get_name(ptr noundef %5) #10
  store ptr %31, ptr %9, align 8
  %32 = call ptr @__clk_get_name(ptr noundef %6) #10
  %33 = getelementptr inbounds [2 x ptr], ptr %9, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %9, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.clk_ops, ptr %23, i32 0, i32 14
  store ptr @ti_adpll_clkout_get_parent, ptr %36, align 4
  %37 = getelementptr inbounds %struct.clk_ops, ptr %23, i32 0, i32 12
  store ptr @__clk_mux_determine_rate, ptr %37, align 4
  %38 = icmp eq i32 %3, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 6
  %41 = getelementptr inbounds %struct.ti_adpll_clkout_data, ptr %13, i32 0, i32 1, i32 4
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 4
  %45 = getelementptr inbounds %struct.ti_adpll_clkout_data, ptr %13, i32 0, i32 1, i32 1
  store ptr %44, ptr %45, align 4
  %46 = trunc i32 %3 to i8
  %47 = getelementptr inbounds %struct.ti_adpll_clkout_data, ptr %13, i32 0, i32 1, i32 2
  store i8 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.clk_ops, ptr %23, i32 0, i32 4
  store ptr @ti_adpll_clkout_enable, ptr %48, align 4
  %49 = getelementptr inbounds %struct.clk_ops, ptr %23, i32 0, i32 5
  store ptr @ti_adpll_clkout_disable, ptr %49, align 4
  %50 = getelementptr inbounds %struct.clk_ops, ptr %23, i32 0, i32 6
  store ptr @ti_adpll_clkout_is_enabled, ptr %50, align 4
  br label %51

51:                                               ; preds = %39, %25
  %52 = load ptr, ptr %0, align 4
  %53 = call ptr @devm_clk_register(ptr noundef %52, ptr noundef %29) #10
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load ptr, ptr %0, align 4
  %57 = ptrtoint ptr %53 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.23, ptr noundef %4, i32 noundef %57) #11
  br label %61

58:                                               ; preds = %51
  %59 = load ptr, ptr %10, align 4
  %60 = call fastcc i32 @ti_adpll_setup_clock(ptr noundef %0, ptr noundef %53, i32 noundef %1, i32 noundef %2, ptr noundef %59, ptr noundef null)
  br label %61

61:                                               ; preds = %58, %55, %21, %15, %7
  %62 = phi i32 [ %57, %55 ], [ %60, %58 ], [ -12, %7 ], [ %19, %15 ], [ -12, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #10
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_mux(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @ti_adpll_clkout_get_parent(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -28
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ti_adpll_data, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !9
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 1
  ret i8 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_adpll_clkout_enable(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -20
  store ptr %4, ptr %5, align 4
  %6 = load ptr, ptr %0, align 4
  store ptr %6, ptr %2, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4), align 4
  %8 = tail call i32 %7(ptr noundef %2) #10
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ti_adpll_clkout_disable(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -20
  store ptr %4, ptr %5, align 4
  %6 = load ptr, ptr %0, align 4
  store ptr %6, ptr %2, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5), align 4
  tail call void %7(ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_adpll_clkout_is_enabled(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -20
  store ptr %4, ptr %5, align 4
  %6 = load ptr, ptr %0, align 4
  store ptr %6, ptr %2, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6), align 4
  %8 = tail call i32 %7(ptr noundef %2) #10
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ti_adpll_init_gate(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #2 {
  %8 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store ptr null, ptr %8, align 4, !annotation !11
  %9 = icmp sgt i32 %2, -1
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @of_property_read_string_helper(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef nonnull %8, i32 noundef 1, i32 noundef %2) #10
  %14 = icmp sgt i32 %13, -1
  %15 = load ptr, ptr %8, align 4
  br i1 %14, label %22, label %16

16:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  br label %36

17:                                               ; preds = %7
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %18, i32 noundef 3264, ptr noundef nonnull @.str.9, i32 noundef %20, ptr noundef %3) #10
  br label %22

22:                                               ; preds = %17, %10
  %23 = phi ptr [ %21, %17 ], [ %15, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = call ptr @__clk_get_name(ptr noundef %4) #10
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr inbounds %struct.ti_adpll_data, ptr %0, i32 0, i32 6
  %29 = call ptr @clk_register_gate(ptr noundef %27, ptr noundef nonnull %23, ptr noundef %26, i32 noundef 0, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext 0, ptr noundef %28) #10
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load ptr, ptr %0, align 4
  %33 = ptrtoint ptr %29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.26, ptr noundef %3, i32 noundef %33) #11
  br label %36

34:                                               ; preds = %25
  %35 = call fastcc i32 @ti_adpll_setup_clock(ptr noundef %0, ptr noundef %29, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %23, ptr noundef nonnull @clk_unregister_gate)
  br label %36

36:                                               ; preds = %34, %31, %22, %16
  %37 = phi i32 [ %33, %31 ], [ %35, %34 ], [ -22, %22 ], [ -22, %16 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_gate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdev_drop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

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
!9 = !{i64 3569936}
!10 = !{i64 3569518}
!11 = !{!"auto-init"}
!12 = !{i64 3569098}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148378593, i64 2148378873, i64 2148379207, i64 2148379541}
