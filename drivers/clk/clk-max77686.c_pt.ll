; ModuleID = '/llk/IR/drivers/clk/clk-max77686.c_pt.bc'
source_filename = "../drivers/clk/clk-max77686.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.max77686_hw_clk_info = type { ptr, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.max77686_clk_driver_data = type { i32, ptr, i32 }
%struct.max77686_clk_init_data = type { ptr, %struct.clk_hw, %struct.clk_init_data, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_clk_max77686__247_288_max77686_clk_driver_init6 = internal global ptr @max77686_clk_driver_init, section ".initcall6.init", align 4
@max77686_clk_driver = internal global %struct.platform_driver { ptr @max77686_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max77686_clk_id, i8 0 }, align 4
@__exitcall_max77686_clk_driver_exit = internal global ptr @max77686_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [50 x i8] c"clk_max77686.description=MAXIM 77686 Clock Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [59 x i8] c"clk_max77686.author=Jonghwa Lee <jonghwa3.lee@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [43 x i8] c"clk_max77686.file=drivers/clk/clk-max77686\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [25 x i8] c"clk_max77686.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"max77686-clk\00", align 1
@max77686_clk_id = internal constant [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77686-clk\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"max77802-clk\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"max77620-clock\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to get rtc regmap\0A\00", align 1
@max77686_hw_clks_info = internal constant [3 x %struct.max77686_hw_clk_info] [%struct.max77686_hw_clk_info { ptr @.str.8, i32 127, i32 1, i32 0 }, %struct.max77686_hw_clk_info { ptr @.str.9, i32 127, i32 2, i32 0 }, %struct.max77686_hw_clk_info { ptr @.str.10, i32 127, i32 4, i32 0 }], align 4
@max77802_hw_clks_info = internal constant [2 x %struct.max77686_hw_clk_info] [%struct.max77686_hw_clk_info { ptr @.str.8, i32 181, i32 1, i32 0 }, %struct.max77686_hw_clk_info { ptr @.str.9, i32 181, i32 2, i32 0 }], align 4
@max77620_hw_clks_info = internal constant [1 x %struct.max77686_hw_clk_info] [%struct.max77686_hw_clk_info { ptr @.str.11, i32 3, i32 4, i32 0 }], align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Unknown Chip ID\0A\00", align 1
@max77686_clk_ops = internal constant %struct.clk_ops { ptr @max77686_clk_prepare, ptr @max77686_clk_unprepare, ptr @max77686_clk_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to clock register: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to clkdev register: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Failed to register OF clock provider: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed to config low-jitter: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"32khz_ap\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"32khz_cp\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"32khz_pmic\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"32khz_out0\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"\013%s: invalid index %u\0A\00", align 1
@__func__.of_clk_max77686_get = private unnamed_addr constant [20 x i8] c"of_clk_max77686_get\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_max77686_clk_driver_exit, ptr @__initcall__kmod_clk_max77686__247_288_max77686_clk_driver_init6, ptr @max77686_clk_driver_exit], section "llvm.metadata"
@switch.table.max77686_clk_probe = private unnamed_addr constant [3 x ptr] [ptr @max77686_hw_clks_info, ptr @max77802_hw_clks_info, ptr @max77620_hw_clks_info], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @max77686_clk_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77686_clk_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @max77686_clk_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77686_clk_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_clk_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %133, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @dev_get_regmap(ptr noundef %5, ptr noundef null) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  br label %133

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.platform_device_id, ptr %7, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %8, align 4
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  br label %133

19:                                               ; preds = %14
  %20 = getelementptr inbounds [3 x ptr], ptr @switch.table.max77686_clk_probe, i32 0, i32 %16
  %21 = load ptr, ptr %20, align 4
  %22 = sub i32 3, %16
  %23 = getelementptr inbounds %struct.max77686_clk_driver_data, ptr %8, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = mul nuw nsw i32 %22, 48
  %25 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %24, i32 noundef 3520) #7
  %26 = getelementptr inbounds %struct.max77686_clk_driver_data, ptr %8, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %133, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  store ptr %11, ptr %25, align 4
  %30 = getelementptr %struct.max77686_clk_init_data, ptr %25, i32 0, i32 3
  store ptr %21, ptr %30, align 4
  %31 = getelementptr %struct.max77686_hw_clk_info, ptr %21, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.max77686_clk_init_data, ptr %25, i32 0, i32 2
  %34 = getelementptr %struct.max77686_clk_init_data, ptr %25, i32 0, i32 2, i32 6
  store i32 %32, ptr %34, align 4
  %35 = getelementptr %struct.max77686_clk_init_data, ptr %25, i32 0, i32 2, i32 1
  store ptr @max77686_clk_ops, ptr %35, align 4
  %36 = load ptr, ptr %29, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = call i32 @of_property_read_string_helper(ptr noundef nonnull %36, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %28
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi ptr [ %21, %41 ], [ %2, %38 ]
  %44 = load ptr, ptr %43, align 4
  store ptr %44, ptr %33, align 4
  %45 = getelementptr %struct.max77686_clk_init_data, ptr %25, i32 0, i32 1
  %46 = getelementptr %struct.max77686_clk_init_data, ptr %25, i32 0, i32 1, i32 2
  store ptr %33, ptr %46, align 4
  %47 = call i32 @devm_clk_hw_register(ptr noundef %3, ptr noundef %45) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %106, %77, %42
  %50 = phi i32 [ %47, %42 ], [ %82, %77 ], [ %111, %106 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %50) #8
  br label %57

51:                                               ; preds = %42
  %52 = load ptr, ptr %33, align 4
  %53 = call i32 @devm_clk_hw_register_clkdev(ptr noundef %3, ptr noundef %45, ptr noundef %52, ptr noundef null) #7
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %113, %84, %51
  %56 = phi i32 [ %53, %51 ], [ %86, %84 ], [ %115, %113 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %56) #8
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi i32 [ %56, %55 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %133

59:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %60 = icmp eq i32 %16, 2
  br i1 %60, label %119, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  %63 = getelementptr %struct.max77686_clk_init_data, ptr %62, i32 1
  store ptr %11, ptr %63, align 4
  %64 = getelementptr %struct.max77686_hw_clk_info, ptr %21, i32 1
  %65 = getelementptr %struct.max77686_clk_init_data, ptr %62, i32 1, i32 3
  store ptr %64, ptr %65, align 4
  %66 = getelementptr %struct.max77686_hw_clk_info, ptr %21, i32 1, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr %struct.max77686_clk_init_data, ptr %62, i32 1, i32 2
  %69 = getelementptr %struct.max77686_clk_init_data, ptr %62, i32 1, i32 2, i32 6
  store i32 %67, ptr %69, align 4
  %70 = getelementptr %struct.max77686_clk_init_data, ptr %62, i32 1, i32 2, i32 1
  store ptr @max77686_clk_ops, ptr %70, align 4
  %71 = load ptr, ptr %29, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %61
  %74 = call i32 @of_property_read_string_helper(ptr noundef nonnull %71, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1) #7
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %77, label %76

76:                                               ; preds = %73, %61
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi ptr [ %64, %76 ], [ %2, %73 ]
  %79 = load ptr, ptr %78, align 4
  store ptr %79, ptr %68, align 4
  %80 = getelementptr %struct.max77686_clk_init_data, ptr %62, i32 1, i32 1
  %81 = getelementptr %struct.max77686_clk_init_data, ptr %62, i32 1, i32 1, i32 2
  store ptr %68, ptr %81, align 4
  %82 = call i32 @devm_clk_hw_register(ptr noundef %3, ptr noundef %80) #7
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %49

84:                                               ; preds = %77
  %85 = load ptr, ptr %68, align 4
  %86 = call i32 @devm_clk_hw_register_clkdev(ptr noundef %3, ptr noundef %80, ptr noundef %85, ptr noundef null) #7
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %55, label %88

88:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %89 = icmp eq i32 %16, 1
  br i1 %89, label %119, label %90

90:                                               ; preds = %88
  %91 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  %92 = getelementptr %struct.max77686_clk_init_data, ptr %91, i32 2
  store ptr %11, ptr %92, align 4
  %93 = getelementptr %struct.max77686_hw_clk_info, ptr %21, i32 2
  %94 = getelementptr %struct.max77686_clk_init_data, ptr %91, i32 2, i32 3
  store ptr %93, ptr %94, align 4
  %95 = getelementptr %struct.max77686_hw_clk_info, ptr %21, i32 2, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr %struct.max77686_clk_init_data, ptr %91, i32 2, i32 2
  %98 = getelementptr %struct.max77686_clk_init_data, ptr %91, i32 2, i32 2, i32 6
  store i32 %96, ptr %98, align 4
  %99 = getelementptr %struct.max77686_clk_init_data, ptr %91, i32 2, i32 2, i32 1
  store ptr @max77686_clk_ops, ptr %99, align 4
  %100 = load ptr, ptr %29, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %90
  %103 = call i32 @of_property_read_string_helper(ptr noundef nonnull %100, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 2) #7
  %104 = icmp sgt i32 %103, -1
  br i1 %104, label %106, label %105

105:                                              ; preds = %102, %90
  br label %106

106:                                              ; preds = %105, %102
  %107 = phi ptr [ %93, %105 ], [ %2, %102 ]
  %108 = load ptr, ptr %107, align 4
  store ptr %108, ptr %97, align 4
  %109 = getelementptr %struct.max77686_clk_init_data, ptr %91, i32 2, i32 1
  %110 = getelementptr %struct.max77686_clk_init_data, ptr %91, i32 2, i32 1, i32 2
  store ptr %97, ptr %110, align 4
  %111 = call i32 @devm_clk_hw_register(ptr noundef %3, ptr noundef %109) #7
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %49

113:                                              ; preds = %106
  %114 = load ptr, ptr %97, align 4
  %115 = call i32 @devm_clk_hw_register_clkdev(ptr noundef %3, ptr noundef %109, ptr noundef %114, ptr noundef null) #7
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %55, label %117

117:                                              ; preds = %113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %118 = icmp eq i32 %16, 0
  call void @llvm.assume(i1 %118)
  br label %119

119:                                              ; preds = %117, %88, %59
  %120 = load ptr, ptr %29, align 8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %3, ptr noundef nonnull @of_clk_max77686_get, ptr noundef nonnull %8) #7
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %123) #8
  br label %133

126:                                              ; preds = %122, %119
  %127 = load i32, ptr %8, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = call i32 @regmap_update_bits_base(ptr noundef nonnull %11, i32 noundef 181, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %130) #8
  br label %133

133:                                              ; preds = %132, %129, %126, %125, %57, %19, %18, %13, %1
  %134 = phi i32 [ -22, %18 ], [ %123, %125 ], [ %130, %132 ], [ -19, %13 ], [ -12, %1 ], [ -12, %19 ], [ 0, %129 ], [ 0, %126 ], [ %58, %57 ]
  ret i32 %134
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @of_clk_max77686_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.max77686_clk_driver_data, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.of_clk_max77686_get, i32 noundef %4) #8
  br label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.max77686_clk_driver_data, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.max77686_clk_init_data, ptr %12, i32 %4, i32 1
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi ptr [ inttoptr (i32 -22 to ptr), %8 ], [ %13, %10 ]
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_clk_prepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 40
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.max77686_hw_clk_info, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.max77686_hw_clk_info, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %7, i32 noundef %9, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max77686_clk_unprepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 40
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.max77686_hw_clk_info, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.max77686_hw_clk_info, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %9, -1
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %7, i32 noundef %9, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_clk_is_prepared(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 40
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.max77686_hw_clk_info, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %2) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load i32, ptr %2, align 4
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.max77686_hw_clk_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %12
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i32 [ %16, %11 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @max77686_recalc_rate(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  ret i32 32768
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
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
