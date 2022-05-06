; ModuleID = '/llk/IR/drivers/input/keyboard/tegra-kbc.c_pt.bc'
source_filename = "../drivers/input/keyboard/tegra-kbc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_kbc_hw_support = type { i32, i32 }
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
%struct.tegra_kbc = type { ptr, i32, i32, [24 x %struct.tegra_kbc_pin_cfg], ptr, i8, ptr, ptr, i32, %struct.spinlock, i32, i32, i32, i8, i8, i8, [256 x i16], [8 x i16], i32, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.tegra_kbc_pin_cfg = type { i32, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_tegra_kbc__214_817_tegra_kbc_driver_init6 = internal global ptr @tegra_kbc_driver_init, section ".initcall6.init", align 4
@tegra_kbc_driver = internal global %struct.platform_driver { ptr @tegra_kbc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_kbc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_kbc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_kbc_driver_exit = internal global ptr @tegra_kbc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file215 = internal constant [48 x i8] c"tegra_kbc.file=drivers/input/keyboard/tegra-kbc\00", section ".modinfo", align 1
@__UNIQUE_ID_license216 = internal constant [22 x i8] c"tegra_kbc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author217 = internal constant [48 x i8] c"tegra_kbc.author=Rakesh Iyer <riyer@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description218 = internal constant [62 x i8] c"tegra_kbc.description=Tegra matrix keyboard controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias219 = internal constant [35 x i8] c"tegra_kbc.alias=platform:tegra-kbc\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"tegra-kbc\00", align 1
@tegra_kbc_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-kbc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra11_kbc_hw_support }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-kbc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_kbc_hw_support }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-kbc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_kbc_hw_support }, %struct.of_device_id zeroinitializer], align 4
@tegra_kbc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_kbc_suspend, ptr @tegra_kbc_resume, ptr @tegra_kbc_suspend, ptr @tegra_kbc_resume, ptr @tegra_kbc_suspend, ptr @tegra_kbc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to alloc memory for kbc\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to get keyboard clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"kbc\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to get keyboard reset\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to setup keymap\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to request keyboard IRQ\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"nvidia,debounce-delay-ms\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"nvidia,repeat-delay-ms\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"nvidia,needs-ghost-filter\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"nvidia,wakeup-source\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"nvidia,kbc-row-pins\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"property nvidia,kbc-row-pins not found\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"nvidia,kbc-col-pins\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"property nvidia,kbc-col-pins not found\0A\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"Number of rows is more than supported by hardware\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"Number of cols is more than supported by hardware\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"linux,keymap\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"property linux,keymap not found\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"keypad rows/columns not properly specified\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Rows configurations are not proper\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"Cols configurations are not proper\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"pin_cfg[%d]: invalid row number %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"pin_cfg[%d]: invalid column number %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"pin_cfg[%d]: invalid entry type %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra11_kbc_hw_support = internal constant %struct.tegra_kbc_hw_support { i32 11, i32 8 }, align 4
@tegra20_kbc_hw_support = internal constant %struct.tegra_kbc_hw_support { i32 16, i32 8 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias219, ptr @__UNIQUE_ID_author217, ptr @__UNIQUE_ID_description218, ptr @__UNIQUE_ID_file215, ptr @__UNIQUE_ID_license216, ptr @__exitcall_tegra_kbc_driver_exit, ptr @__initcall__kmod_tegra_kbc__214_817_tegra_kbc_driver_init6, ptr @tegra_kbc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_kbc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_kbc_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_kbc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_kbc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_kbc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca [24 x i32], align 4
  %4 = alloca [24 x i32], align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call ptr @of_match_device(ptr noundef nonnull @tegra_kbc_of_match, ptr noundef %6) #8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 820, i32 noundef 3520) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #9
  br label %258

11:                                               ; preds = %1
  store ptr %6, ptr %8, align 4
  %12 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 23
  store ptr %13, ptr %14, align 4
  %15 = load i32, ptr %13, align 4
  %16 = getelementptr inbounds %struct.tegra_kbc_hw_support, ptr %13, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, %15
  %19 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 24
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %13, align 4
  %21 = load i32, ptr %16, align 4
  %22 = add i32 %21, %20
  %23 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 25
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 9
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %26 = load ptr, ptr %25, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %3, i8 0, i32 96, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %4, i8 0, i32 96, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %27 = call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull @.str.9, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %11
  %30 = load i32, ptr %2, align 4
  %31 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %29, %11
  %33 = call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull @.str.10, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, ptr %2, align 4
  %37 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = call ptr @of_find_property(ptr noundef %26, ptr noundef nonnull @.str.11, ptr noundef null) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 14
  store i8 1, ptr %42, align 1
  br label %43

43:                                               ; preds = %41, %38
  %44 = call ptr @of_find_property(ptr noundef %26, ptr noundef nonnull @.str.12, ptr noundef null) #8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call ptr @of_find_property(ptr noundef %26, ptr noundef nonnull @.str.13, ptr noundef null) #8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46, %43
  %50 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 5
  store i8 1, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %46
  %52 = call ptr @of_get_property(ptr noundef %26, ptr noundef nonnull @.str.14, ptr noundef nonnull %5) #8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %115, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr %5, align 4
  %56 = lshr i32 %55, 2
  %57 = call ptr @of_get_property(ptr noundef %26, ptr noundef nonnull @.str.16, ptr noundef nonnull %5) #8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %115, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr %5, align 4
  %61 = lshr i32 %60, 2
  %62 = load ptr, ptr %14, align 4
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %56, %63
  br i1 %64, label %115, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.tegra_kbc_hw_support, ptr %62, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp ugt i32 %61, %67
  br i1 %68, label %115, label %69

69:                                               ; preds = %65
  %70 = call ptr @of_get_property(ptr noundef %26, ptr noundef nonnull @.str.20, ptr noundef nonnull %5) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %115, label %72

72:                                               ; preds = %69
  %73 = icmp ult i32 %55, 4
  %74 = icmp ult i32 %60, 4
  %75 = select i1 %73, i1 true, i1 %74
  %76 = add nuw nsw i32 %61, %56
  %77 = icmp ugt i32 %76, 24
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %115, label %79

79:                                               ; preds = %72
  %80 = load i32, ptr %23, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %82, %79
  %83 = phi i32 [ %85, %82 ], [ 0, %79 ]
  %84 = getelementptr %struct.tegra_kbc, ptr %8, i32 0, i32 3, i32 %83
  store i32 0, ptr %84, align 4
  %85 = add nuw nsw i32 %83, 1
  %86 = icmp eq i32 %85, %80
  br i1 %86, label %87, label %82

87:                                               ; preds = %82, %79
  %88 = call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull @.str.14, ptr noundef nonnull %4, i32 noundef %56, i32 noundef 0) #8
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %115, label %90

90:                                               ; preds = %87
  %91 = call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull @.str.16, ptr noundef nonnull %3, i32 noundef %61, i32 noundef 0) #8
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %115, label %93

93:                                               ; preds = %90
  %94 = call i32 @llvm.umax.i32(i32 %56, i32 1) #8
  br label %97

95:                                               ; preds = %97
  %96 = call i32 @llvm.umax.i32(i32 %61, i32 1) #8
  br label %106

97:                                               ; preds = %97, %93
  %98 = phi i32 [ %104, %97 ], [ 0, %93 ]
  %99 = getelementptr [24 x i32], ptr %4, i32 0, i32 %98
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr %struct.tegra_kbc, ptr %8, i32 0, i32 3, i32 %100
  store i32 2, ptr %101, align 4
  %102 = trunc i32 %98 to i8
  %103 = getelementptr %struct.tegra_kbc, ptr %8, i32 0, i32 3, i32 %100, i32 1
  store i8 %102, ptr %103, align 4
  %104 = add nuw nsw i32 %98, 1
  %105 = icmp eq i32 %104, %94
  br i1 %105, label %95, label %97

106:                                              ; preds = %106, %95
  %107 = phi i32 [ %113, %106 ], [ 0, %95 ]
  %108 = getelementptr [24 x i32], ptr %3, i32 0, i32 %107
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr %struct.tegra_kbc, ptr %8, i32 0, i32 3, i32 %109
  store i32 1, ptr %110, align 4
  %111 = trunc i32 %107 to i8
  %112 = getelementptr %struct.tegra_kbc, ptr %8, i32 0, i32 3, i32 %109, i32 1
  store i8 %111, ptr %112, align 4
  %113 = add nuw nsw i32 %107, 1
  %114 = icmp eq i32 %113, %96
  br i1 %114, label %119, label %106

115:                                              ; preds = %90, %87, %72, %69, %65, %59, %54, %51
  %116 = phi ptr [ @.str.15, %51 ], [ @.str.17, %54 ], [ @.str.18, %59 ], [ @.str.19, %65 ], [ @.str.21, %69 ], [ @.str.22, %72 ], [ @.str.23, %87 ], [ @.str.24, %90 ]
  %117 = phi i32 [ -2, %51 ], [ -2, %54 ], [ -22, %59 ], [ -22, %65 ], [ -2, %69 ], [ -22, %72 ], [ -22, %87 ], [ -22, %90 ]
  %118 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull %116) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %258

119:                                              ; preds = %106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %120

120:                                              ; preds = %155, %119
  %121 = phi i32 [ 0, %119 ], [ %156, %155 ]
  %122 = phi i32 [ 0, %119 ], [ %157, %155 ]
  %123 = phi i1 [ true, %119 ], [ %159, %155 ]
  %124 = phi i32 [ 0, %119 ], [ %158, %155 ]
  %125 = getelementptr %struct.tegra_kbc, ptr %8, i32 0, i32 3, i32 %124
  %126 = load i32, ptr %125, align 4
  switch i32 %126, label %150 [
    i32 2, label %127
    i32 1, label %139
    i32 0, label %155
  ]

127:                                              ; preds = %120
  %128 = getelementptr %struct.tegra_kbc, ptr %8, i32 0, i32 3, i32 %124, i32 1
  %129 = load i8, ptr %128, align 4
  %130 = zext i8 %129 to i32
  %131 = load ptr, ptr %14, align 4
  %132 = load i32, ptr %131, align 4
  %133 = icmp sgt i32 %132, %130
  br i1 %133, label %137, label %134

134:                                              ; preds = %127
  %135 = zext i8 %129 to i32
  %136 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.25, i32 noundef %124, i32 noundef %135) #9
  br i1 %123, label %258, label %162

137:                                              ; preds = %127
  %138 = add i32 %122, 1
  br label %155

139:                                              ; preds = %120
  %140 = getelementptr %struct.tegra_kbc, ptr %8, i32 0, i32 3, i32 %124, i32 1
  %141 = load i8, ptr %140, align 4
  %142 = zext i8 %141 to i32
  %143 = load ptr, ptr %14, align 4
  %144 = getelementptr inbounds %struct.tegra_kbc_hw_support, ptr %143, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = icmp sgt i32 %145, %142
  br i1 %146, label %155, label %147

147:                                              ; preds = %139
  %148 = zext i8 %141 to i32
  %149 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.26, i32 noundef %124, i32 noundef %148) #9
  br i1 %123, label %258, label %162

150:                                              ; preds = %120
  %151 = load ptr, ptr %8, align 4
  %152 = getelementptr %struct.tegra_kbc, ptr %8, i32 0, i32 3, i32 %124, i32 1
  %153 = load i8, ptr %152, align 4
  %154 = zext i8 %153 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.27, i32 noundef %126, i32 noundef %154) #9
  br i1 %123, label %258, label %162

155:                                              ; preds = %139, %137, %120
  %156 = phi i32 [ %121, %120 ], [ %121, %139 ], [ %138, %137 ]
  %157 = phi i32 [ %122, %120 ], [ %122, %139 ], [ %138, %137 ]
  %158 = add nuw nsw i32 %124, 1
  %159 = icmp ult i32 %124, 23
  %160 = icmp eq i32 %158, 24
  br i1 %160, label %161, label %120

161:                                              ; preds = %155
  br i1 %159, label %258, label %162

162:                                              ; preds = %161, %150, %147, %134
  %163 = phi i32 [ %121, %150 ], [ %156, %161 ], [ %121, %147 ], [ %121, %134 ]
  %164 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %165 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 8
  store i32 %164, ptr %165, align 4
  %166 = icmp slt i32 %164, 0
  br i1 %166, label %258, label %167

167:                                              ; preds = %162
  %168 = call ptr @devm_input_allocate_device(ptr noundef %6) #8
  %169 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 7
  store ptr %168, ptr %169, align 4
  %170 = icmp eq ptr %168, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #9
  br label %258

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 20
  call void @init_timer_key(ptr noundef %173, ptr noundef nonnull @tegra_kbc_keypress_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %174 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %175 = call ptr @devm_ioremap_resource(ptr noundef %6, ptr noundef %174) #8
  %176 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 6
  store ptr %175, ptr %176, align 4
  %177 = icmp ugt ptr %175, inttoptr (i32 -4096 to ptr)
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  %179 = ptrtoint ptr %175 to i32
  br label %258

180:                                              ; preds = %172
  %181 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef null) #8
  %182 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 21
  store ptr %181, ptr %182, align 4
  %183 = icmp ugt ptr %181, inttoptr (i32 -4096 to ptr)
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3) #9
  %185 = load ptr, ptr %182, align 4
  %186 = ptrtoint ptr %185 to i32
  br label %258

187:                                              ; preds = %180
  %188 = call ptr @__devm_reset_control_get(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %189 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 22
  store ptr %188, ptr %189, align 4
  %190 = icmp ugt ptr %188, inttoptr (i32 -4096 to ptr)
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #9
  %192 = load ptr, ptr %189, align 4
  %193 = ptrtoint ptr %192 to i32
  br label %258

194:                                              ; preds = %187
  %195 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 1
  %196 = load i32, ptr %195, align 4
  %197 = call i32 @llvm.umin.i32(i32 %196, i32 1023)
  %198 = add nuw nsw i32 %197, 16
  %199 = mul i32 %198, %163
  %200 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 2
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 10
  %203 = add i32 %201, 36
  %204 = add i32 %203, %199
  %205 = lshr i32 %204, 5
  store i32 %205, ptr %202, align 4
  %206 = load ptr, ptr %0, align 8
  %207 = load ptr, ptr %169, align 4
  store ptr %206, ptr %207, align 8
  %208 = load ptr, ptr %169, align 4
  %209 = getelementptr inbounds %struct.input_dev, ptr %208, i32 0, i32 3
  store i16 25, ptr %209, align 4
  %210 = load ptr, ptr %169, align 4
  %211 = getelementptr inbounds %struct.input_dev, ptr %210, i32 0, i32 40, i32 1
  store ptr %6, ptr %211, align 4
  %212 = load ptr, ptr %169, align 4
  %213 = getelementptr inbounds %struct.input_dev, ptr %212, i32 0, i32 31
  store ptr @tegra_kbc_open, ptr %213, align 4
  %214 = load ptr, ptr %169, align 4
  %215 = getelementptr inbounds %struct.input_dev, ptr %214, i32 0, i32 32
  store ptr @tegra_kbc_close, ptr %215, align 8
  %216 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 4
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %224, label %219

219:                                              ; preds = %194
  %220 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 13
  %221 = load i8, ptr %220, align 4, !range !9
  %222 = zext i8 %221 to i32
  %223 = shl i32 %18, %222
  br label %224

224:                                              ; preds = %219, %194
  %225 = phi i32 [ %18, %194 ], [ %223, %219 ]
  %226 = load ptr, ptr %14, align 4
  %227 = getelementptr inbounds %struct.tegra_kbc_hw_support, ptr %226, i32 0, i32 1
  %228 = load i32, ptr %227, align 4
  %229 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 16
  %230 = load ptr, ptr %169, align 4
  %231 = call i32 @matrix_keypad_build_keymap(ptr noundef %217, ptr noundef null, i32 noundef %225, i32 noundef %228, ptr noundef %229, ptr noundef %230) #8
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %224
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6) #9
  br label %258

234:                                              ; preds = %224
  %235 = load ptr, ptr %169, align 4
  %236 = getelementptr inbounds %struct.input_dev, ptr %235, i32 0, i32 5
  %237 = load i32, ptr %236, align 4
  %238 = or i32 %237, 1048576
  store i32 %238, ptr %236, align 4
  %239 = load ptr, ptr %169, align 4
  call void @input_set_capability(ptr noundef %239, i32 noundef 4, i32 noundef 4) #8
  %240 = load ptr, ptr %169, align 4
  %241 = getelementptr inbounds %struct.input_dev, ptr %240, i32 0, i32 40, i32 8
  store ptr %8, ptr %241, align 8
  %242 = load i32, ptr %165, align 4
  %243 = load ptr, ptr %0, align 8
  %244 = call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %242, ptr noundef nonnull @tegra_kbc_isr, ptr noundef null, i32 noundef 524292, ptr noundef %243, ptr noundef %8) #8
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %234
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #9
  br label %258

247:                                              ; preds = %234
  %248 = load ptr, ptr %169, align 4
  %249 = call i32 @input_register_device(ptr noundef %248) #8
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %247
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8) #9
  br label %258

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %253, align 8
  %254 = getelementptr inbounds %struct.tegra_kbc, ptr %8, i32 0, i32 5
  %255 = load i8, ptr %254, align 4, !range !9
  %256 = icmp ne i8 %255, 0
  %257 = call i32 @device_init_wakeup(ptr noundef %6, i1 noundef zeroext %256) #8
  br label %258

258:                                              ; preds = %252, %251, %246, %233, %191, %184, %178, %171, %162, %161, %150, %147, %134, %115, %10
  %259 = phi i32 [ %179, %178 ], [ %186, %184 ], [ %193, %191 ], [ %231, %233 ], [ %244, %246 ], [ %249, %251 ], [ 0, %252 ], [ -12, %171 ], [ -12, %10 ], [ %117, %115 ], [ -22, %161 ], [ -6, %162 ], [ -22, %150 ], [ -22, %147 ], [ -22, %134 ]
  ret i32 %259
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_kbc_keypress_timer(ptr noundef %0) #2 {
  %2 = alloca [8 x i8], align 8
  %3 = alloca [8 x i16], align 2
  %4 = getelementptr i8, ptr %0, i32 -780
  %5 = getelementptr i8, ptr %0, i32 -556
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = getelementptr i8, ptr %0, i32 -568
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %11 = lshr i32 %10, 4
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %0, i32 -8
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %190, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %0, i32 -564
  %20 = getelementptr i8, ptr %0, i32 -24
  br label %181

21:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(16) %3, i8 0, i32 16, i1 false) #8, !annotation !8
  %22 = getelementptr i8, ptr %0, i32 -540
  br label %23

23:                                               ; preds = %53, %21
  %24 = phi i32 [ 0, %21 ], [ %56, %53 ]
  %25 = phi i32 [ 0, %21 ], [ %57, %53 ]
  %26 = phi i32 [ 0, %21 ], [ %55, %53 ]
  %27 = phi i1 [ false, %21 ], [ %54, %53 ]
  %28 = and i32 %25, 3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr i8, ptr %31, i32 48
  %33 = getelementptr i8, ptr %32, i32 %25
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  br label %35

35:                                               ; preds = %30, %23
  %36 = phi i32 [ %34, %30 ], [ %24, %23 ]
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %35
  %40 = trunc i32 %36 to i8
  %41 = and i8 %40, 127
  %42 = getelementptr [8 x i8], ptr %2, i32 0, i32 %26
  store i8 %41, ptr %42, align 1
  %43 = zext i8 %41 to i32
  %44 = getelementptr %struct.tegra_kbc, ptr %4, i32 0, i32 16, i32 %43
  %45 = load i16, ptr %44, align 2
  %46 = getelementptr [8 x i16], ptr %3, i32 0, i32 %26
  store i16 %45, ptr %46, align 2
  %47 = icmp eq i16 %45, 464
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i8, ptr %22, align 4, !range !9
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48, %39
  %52 = add i32 %26, 1
  br label %53

53:                                               ; preds = %51, %48, %35
  %54 = phi i1 [ %27, %35 ], [ %27, %51 ], [ true, %48 ]
  %55 = phi i32 [ %26, %35 ], [ %52, %51 ], [ %26, %48 ]
  %56 = lshr i32 %36, 8
  %57 = add nuw nsw i32 %25, 1
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %59, label %23

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %0, i32 -539
  %61 = load i8, ptr %60, align 1, !range !9
  %62 = icmp ne i8 %61, 0
  %63 = icmp ugt i32 %55, 2
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %69, label %97

65:                                               ; preds = %77, %69
  %66 = phi i8 [ %72, %69 ], [ %86, %77 ]
  %67 = phi i8 [ %71, %69 ], [ %88, %77 ]
  %68 = icmp eq i32 %75, %55
  br i1 %68, label %91, label %69

69:                                               ; preds = %65, %59
  %70 = phi i32 [ %75, %65 ], [ 0, %59 ]
  %71 = phi i8 [ %67, %65 ], [ 0, %59 ]
  %72 = phi i8 [ %66, %65 ], [ 0, %59 ]
  %73 = getelementptr [8 x i8], ptr %2, i32 0, i32 %70
  %74 = load i8, ptr %73, align 1
  %75 = add nuw i32 %70, 1
  %76 = icmp ult i32 %75, %55
  br i1 %76, label %77, label %65

77:                                               ; preds = %77, %69
  %78 = phi i32 [ %89, %77 ], [ %75, %69 ]
  %79 = phi i8 [ %88, %77 ], [ %71, %69 ]
  %80 = phi i8 [ %86, %77 ], [ %72, %69 ]
  %81 = getelementptr [8 x i8], ptr %2, i32 0, i32 %78
  %82 = load i8, ptr %81, align 1
  %83 = xor i8 %82, %74
  %84 = and i8 %83, 7
  %85 = icmp eq i8 %84, 0
  %86 = select i1 %85, i8 1, i8 %80
  %87 = icmp ult i8 %83, 8
  %88 = select i1 %87, i8 1, i8 %79
  %89 = add nuw i32 %78, 1
  %90 = icmp eq i32 %89, %55
  br i1 %90, label %65, label %77

91:                                               ; preds = %65
  %92 = and i8 %66, 1
  %93 = icmp ne i8 %92, 0
  %94 = and i8 %67, 1
  %95 = icmp ne i8 %94, 0
  %96 = select i1 %93, i1 %95, i1 false
  br label %97

97:                                               ; preds = %91, %59
  %98 = phi i1 [ false, %59 ], [ %96, %91 ]
  %99 = icmp ne i32 %55, 0
  %100 = select i1 %54, i1 %99, i1 false
  br i1 %100, label %101, label %116

101:                                              ; preds = %97
  %102 = getelementptr i8, ptr %0, i32 32
  %103 = load i32, ptr %102, align 4
  %104 = trunc i32 %103 to i8
  br label %105

105:                                              ; preds = %105, %101
  %106 = phi i32 [ 0, %101 ], [ %114, %105 ]
  %107 = getelementptr [8 x i8], ptr %2, i32 0, i32 %106
  %108 = load i8, ptr %107, align 1
  %109 = add i8 %108, %104
  store i8 %109, ptr %107, align 1
  %110 = zext i8 %109 to i32
  %111 = getelementptr %struct.tegra_kbc, ptr %4, i32 0, i32 16, i32 %110
  %112 = load i16, ptr %111, align 2
  %113 = getelementptr [8 x i16], ptr %3, i32 0, i32 %106
  store i16 %112, ptr %113, align 2
  %114 = add nuw i32 %106, 1
  %115 = icmp eq i32 %114, %55
  br i1 %115, label %116, label %105

116:                                              ; preds = %105, %97
  br i1 %98, label %170, label %117

117:                                              ; preds = %116
  %118 = getelementptr i8, ptr %0, i32 -564
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr i8, ptr %0, i32 -24
  %121 = getelementptr i8, ptr %0, i32 -8
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %153, label %124

124:                                              ; preds = %117
  %125 = icmp eq i32 %55, 0
  br label %126

126:                                              ; preds = %148, %124
  %127 = phi i32 [ 0, %124 ], [ %149, %148 ]
  br i1 %125, label %139, label %128

128:                                              ; preds = %126
  %129 = getelementptr i16, ptr %120, i32 %127
  %130 = load i16, ptr %129, align 2
  br label %131

131:                                              ; preds = %136, %128
  %132 = phi i32 [ 0, %128 ], [ %137, %136 ]
  %133 = getelementptr i16, ptr %3, i32 %132
  %134 = load i16, ptr %133, align 2
  %135 = icmp eq i16 %130, %134
  br i1 %135, label %139, label %136

136:                                              ; preds = %131
  %137 = add nuw i32 %132, 1
  %138 = icmp eq i32 %137, %55
  br i1 %138, label %145, label %131

139:                                              ; preds = %131, %126
  %140 = phi i32 [ 0, %126 ], [ %132, %131 ]
  %141 = icmp eq i32 %140, %55
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = getelementptr i16, ptr %120, i32 %127
  %144 = load i16, ptr %143, align 2
  br label %145

145:                                              ; preds = %142, %136
  %146 = phi i16 [ %144, %142 ], [ %130, %136 ]
  %147 = zext i16 %146 to i32
  tail call void @input_event(ptr noundef %119, i32 noundef 1, i32 noundef %147, i32 noundef 0) #8
  br label %148

148:                                              ; preds = %145, %139
  %149 = add nuw i32 %127, 1
  %150 = icmp eq i32 %149, %122
  br i1 %150, label %151, label %126

151:                                              ; preds = %148
  %152 = load ptr, ptr %118, align 4
  br label %153

153:                                              ; preds = %151, %117
  %154 = phi ptr [ %152, %151 ], [ %119, %117 ]
  %155 = icmp eq i32 %55, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %156, %153
  %157 = phi i32 [ %164, %156 ], [ 0, %153 ]
  %158 = getelementptr i8, ptr %2, i32 %157
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  tail call void @input_event(ptr noundef %154, i32 noundef 4, i32 noundef 4, i32 noundef %160) #8
  %161 = getelementptr i16, ptr %3, i32 %157
  %162 = load i16, ptr %161, align 2
  %163 = zext i16 %162 to i32
  tail call void @input_event(ptr noundef %154, i32 noundef 1, i32 noundef %163, i32 noundef 1) #8
  %164 = add nuw i32 %157, 1
  %165 = icmp eq i32 %164, %55
  br i1 %165, label %166, label %156

166:                                              ; preds = %156
  %167 = load ptr, ptr %118, align 4
  br label %168

168:                                              ; preds = %166, %153
  %169 = phi ptr [ %167, %166 ], [ %154, %153 ]
  tail call void @input_event(ptr noundef %169, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %120, ptr noundef nonnull align 2 dereferenceable(16) %3, i32 16, i1 false) #8
  store i32 %55, ptr %121, align 4
  br label %170

170:                                              ; preds = %168, %116
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  %171 = icmp eq i32 %12, 1
  br i1 %171, label %172, label %175

172:                                              ; preds = %170
  %173 = getelementptr i8, ptr %0, i32 -552
  %174 = load i32, ptr %173, align 4
  br label %175

175:                                              ; preds = %172, %170
  %176 = phi i32 [ %174, %172 ], [ 1, %170 ]
  %177 = load volatile i32, ptr @jiffies, align 64
  %178 = tail call i32 @__msecs_to_jiffies(i32 noundef %176) #8
  %179 = add i32 %178, %177
  %180 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %179) #8
  br label %197

181:                                              ; preds = %181, %18
  %182 = phi i32 [ 0, %18 ], [ %187, %181 ]
  %183 = load ptr, ptr %19, align 4
  %184 = getelementptr [8 x i16], ptr %20, i32 0, i32 %182
  %185 = load i16, ptr %184, align 2
  %186 = zext i16 %185 to i32
  tail call void @input_event(ptr noundef %183, i32 noundef 1, i32 noundef %186, i32 noundef 0) #8
  %187 = add nuw i32 %182, 1
  %188 = load i32, ptr %15, align 4
  %189 = icmp ult i32 %187, %188
  br i1 %189, label %181, label %190

190:                                              ; preds = %181, %14
  %191 = getelementptr i8, ptr %0, i32 -564
  %192 = load ptr, ptr %191, align 4
  tail call void @input_event(ptr noundef %192, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  store i32 0, ptr %15, align 4
  %193 = load ptr, ptr %7, align 4
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %195 = or i32 %194, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %196 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %195) #8, !srcloc !15
  br label %197

197:                                              ; preds = %190, %175
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_kbc_open(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @tegra_kbc_start(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_kbc_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 9
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %9 = and i32 %8, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %10 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #8, !srcloc !15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  %11 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  tail call void @disable_irq(i32 noundef %12) #8
  %13 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 20
  %14 = tail call i32 @del_timer_sync(ptr noundef %13) #8
  %15 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 21
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  tail call void @clk_unprepare(ptr noundef %16) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_kbc_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 9
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !15
  %11 = and i32 %8, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %16 = and i32 %15, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %17 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #8, !srcloc !15
  %18 = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 20
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %19
  %23 = tail call i32 @mod_timer(ptr noundef %18, i32 noundef %22) #8
  br label %29

24:                                               ; preds = %2
  %25 = and i32 %8, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 15
  store i8 1, ptr %28, align 2
  br label %29

29:                                               ; preds = %27, %24, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_kbc_start(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tegra_kbc, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %126

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %126

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tegra_kbc, ptr %0, i32 0, i32 22
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @reset_control_assert(ptr noundef %12) #8
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 21474800) #8
  %15 = load ptr, ptr %11, align 4
  %16 = tail call i32 @reset_control_deassert(ptr noundef %15) #8
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 21474800) #8
  %18 = getelementptr inbounds %struct.tegra_kbc, ptr %0, i32 0, i32 6
  br label %19

19:                                               ; preds = %63, %10
  %20 = phi i32 [ 0, %10 ], [ %70, %63 ]
  %21 = freeze i32 %20
  %22 = udiv i32 %21, 6
  %23 = mul i32 %22, 6
  %24 = sub i32 %21, %23
  %25 = mul nuw nsw i32 %24, 5
  %26 = shl i32 %20, 2
  %27 = and i32 %26, 28
  %28 = shl nuw nsw i32 31, %25
  %29 = shl nuw i32 15, %27
  %30 = shl nuw nsw i32 %22, 2
  %31 = add nuw i32 %30, 8
  %32 = lshr i32 %20, 1
  %33 = and i32 %32, 1073741820
  %34 = add nuw nsw i32 %33, 24
  %35 = load ptr, ptr %18, align 4
  %36 = getelementptr i8, ptr %35, i32 %31
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %38 = load ptr, ptr %18, align 4
  %39 = getelementptr i8, ptr %38, i32 %34
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %41 = xor i32 %28, -1
  %42 = and i32 %37, %41
  %43 = xor i32 %29, -1
  %44 = and i32 %40, %43
  %45 = getelementptr %struct.tegra_kbc, ptr %0, i32 0, i32 3, i32 %20
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %63 [
    i32 2, label %47
    i32 1, label %55
  ]

47:                                               ; preds = %19
  %48 = getelementptr %struct.tegra_kbc, ptr %0, i32 0, i32 3, i32 %20, i32 1
  %49 = load i8, ptr %48, align 4
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 1
  %52 = or i32 %51, 1
  %53 = shl i32 %52, %25
  %54 = or i32 %53, %42
  br label %63

55:                                               ; preds = %19
  %56 = getelementptr %struct.tegra_kbc, ptr %0, i32 0, i32 3, i32 %20, i32 1
  %57 = load i8, ptr %56, align 4
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 1
  %60 = or i32 %59, 1
  %61 = shl i32 %60, %27
  %62 = or i32 %61, %44
  br label %63

63:                                               ; preds = %55, %47, %19
  %64 = phi i32 [ %42, %19 ], [ %42, %55 ], [ %54, %47 ]
  %65 = phi i32 [ %44, %19 ], [ %62, %55 ], [ %44, %47 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %66 = load ptr, ptr %18, align 4
  %67 = getelementptr i8, ptr %66, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %64) #8, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %68 = load ptr, ptr %18, align 4
  %69 = getelementptr i8, ptr %68, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %65) #8, !srcloc !15
  %70 = add nuw nsw i32 %20, 1
  %71 = icmp eq i32 %70, 24
  br i1 %71, label %72, label %19

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.tegra_kbc, ptr %0, i32 0, i32 23
  %74 = load ptr, ptr %73, align 4
  %75 = load i32, ptr %74, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %77, %72
  %78 = phi i32 [ %83, %77 ], [ 0, %72 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %79 = load ptr, ptr %18, align 4
  %80 = getelementptr i8, ptr %79, i32 56
  %81 = shl i32 %78, 2
  %82 = getelementptr i8, ptr %80, i32 %81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 0) #8, !srcloc !15
  %83 = add nuw nsw i32 %78, 1
  %84 = load ptr, ptr %73, align 4
  %85 = load i32, ptr %84, align 4
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %77, label %87

87:                                               ; preds = %77, %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  %88 = getelementptr inbounds %struct.tegra_kbc, ptr %0, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %18, align 4
  %91 = getelementptr i8, ptr %90, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #8, !srcloc !15
  %92 = getelementptr inbounds %struct.tegra_kbc, ptr %0, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = tail call i32 @llvm.umin.i32(i32 %93, i32 1023)
  %95 = shl nuw nsw i32 %94, 4
  %96 = or i32 %95, 16393
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  tail call void @arm_heavy_mb() #8
  %97 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %96) #8, !srcloc !15
  %98 = load ptr, ptr %18, align 4
  %99 = getelementptr i8, ptr %98, i32 40
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  %101 = shl i32 %100, 5
  %102 = and i32 %101, 33554400
  %103 = tail call i32 @__usecs_to_jiffies(i32 noundef %102) #8
  %104 = getelementptr inbounds %struct.tegra_kbc, ptr %0, i32 0, i32 11
  store i32 %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.tegra_kbc, ptr %0, i32 0, i32 18
  store i32 0, ptr %105, align 4
  %106 = load ptr, ptr %18, align 4
  %107 = getelementptr i8, ptr %106, i32 4
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  %109 = icmp ult i32 %108, 16
  br i1 %109, label %121, label %110

110:                                              ; preds = %110, %87
  %111 = load ptr, ptr %18, align 4
  %112 = getelementptr i8, ptr %111, i32 48
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !29
  %114 = load ptr, ptr %18, align 4
  %115 = getelementptr i8, ptr %114, i32 52
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !30
  %117 = load ptr, ptr %18, align 4
  %118 = getelementptr i8, ptr %117, i32 4
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  %120 = icmp ult i32 %119, 16
  br i1 %120, label %121, label %110

121:                                              ; preds = %110, %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %122 = load ptr, ptr %18, align 4
  %123 = getelementptr i8, ptr %122, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 7) #8, !srcloc !15
  %124 = getelementptr inbounds %struct.tegra_kbc, ptr %0, i32 0, i32 8
  %125 = load i32, ptr %124, align 4
  tail call void @enable_irq(i32 noundef %125) #8
  br label %126

126:                                              ; preds = %121, %9, %1
  %127 = phi i32 [ 0, %121 ], [ %7, %9 ], [ %4, %1 ]
  ret i32 %127
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_kbc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %61, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %61, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  tail call void @disable_irq(i32 noundef %17) #8
  %18 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 20
  %19 = tail call i32 @del_timer_sync(ptr noundef %18) #8
  %20 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %23 = and i32 %22, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %24 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #8, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %25 = load ptr, ptr %20, align 4
  %26 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 7) #8, !srcloc !15
  %27 = load ptr, ptr %20, align 4
  %28 = getelementptr i8, ptr %27, i32 36
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !33
  %30 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 12
  store i32 %29, ptr %30, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !34
  tail call void @arm_heavy_mb() #8
  %31 = load ptr, ptr %20, align 4
  %32 = getelementptr i8, ptr %31, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #8, !srcloc !15
  %33 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 5
  %34 = load i8, ptr %33, align 4, !range !9
  %35 = xor i8 %34, 1
  %36 = zext i8 %35 to i32
  %37 = sub nsw i32 0, %36
  %38 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 23
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %42, %15
  %43 = phi i32 [ %48, %42 ], [ 0, %15 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %44 = load ptr, ptr %20, align 4
  %45 = getelementptr i8, ptr %44, i32 56
  %46 = shl i32 %43, 2
  %47 = getelementptr i8, ptr %45, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %37) #8, !srcloc !15
  %48 = add nuw nsw i32 %43, 1
  %49 = load ptr, ptr %38, align 4
  %50 = load i32, ptr %49, align 4
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %42, label %52

52:                                               ; preds = %42, %15
  tail call void @msleep(i32 noundef 30) #8
  %53 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 15
  store i8 0, ptr %53, align 2
  %54 = load ptr, ptr %20, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !35
  %56 = or i32 %55, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !36
  tail call void @arm_heavy_mb() #8
  %57 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %56) #8, !srcloc !15
  %58 = load i32, ptr %16, align 4
  tail call void @enable_irq(i32 noundef %58) #8
  %59 = load i32, ptr %16, align 4
  %60 = tail call i32 @irq_set_irq_wake(i32 noundef %59, i32 noundef 1) #8
  br label %78

61:                                               ; preds = %11, %1
  %62 = load ptr, ptr %4, align 4
  %63 = tail call zeroext i1 @input_device_enabled(ptr noundef %62) #8
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 9
  %66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %65) #8
  %67 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 6
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %70 = and i32 %69, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %71 = load ptr, ptr %67, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %70) #8, !srcloc !15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %65, i32 noundef %66) #8
  %72 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 8
  %73 = load i32, ptr %72, align 4
  tail call void @disable_irq(i32 noundef %73) #8
  %74 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 20
  %75 = tail call i32 @del_timer_sync(ptr noundef %74) #8
  %76 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 21
  %77 = load ptr, ptr %76, align 4
  tail call void @clk_disable(ptr noundef %77) #8
  tail call void @clk_unprepare(ptr noundef %77) #8
  br label %78

78:                                               ; preds = %64, %61, %52
  %79 = load ptr, ptr %4, align 4
  %80 = getelementptr inbounds %struct.input_dev, ptr %79, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %80) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_kbc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %62, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %62, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @irq_set_irq_wake(i32 noundef %17, i32 noundef 0) #8
  %19 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 23
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 6
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i32 [ 0, %23 ], [ %31, %25 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr i8, ptr %27, i32 56
  %29 = shl i32 %26, 2
  %30 = getelementptr i8, ptr %28, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #8, !srcloc !15
  %31 = add nuw nsw i32 %26, 1
  %32 = load ptr, ptr %19, align 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %25, label %35

35:                                               ; preds = %25, %15
  %36 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !35
  %39 = and i32 %38, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !36
  tail call void @arm_heavy_mb() #8
  %40 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %39) #8, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !37
  tail call void @arm_heavy_mb() #8
  %41 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 12
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %36, align 4
  %44 = getelementptr i8, ptr %43, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #8, !srcloc !15
  %45 = load ptr, ptr %36, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %47 = or i32 %46, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %48 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %47) #8, !srcloc !15
  %49 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 15
  %50 = load i8, ptr %49, align 2, !range !9
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %35
  %53 = getelementptr inbounds %struct.tegra_kbc, ptr %3, i32 0, i32 19
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %4, align 4
  tail call void @input_event(ptr noundef %57, i32 noundef 1, i32 noundef %54, i32 noundef 1) #8
  %58 = load ptr, ptr %4, align 4
  tail call void @input_event(ptr noundef %58, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %59 = load ptr, ptr %4, align 4
  %60 = load i32, ptr %53, align 4
  tail call void @input_event(ptr noundef %59, i32 noundef 1, i32 noundef %60, i32 noundef 0) #8
  %61 = load ptr, ptr %4, align 4
  tail call void @input_event(ptr noundef %61, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %67

62:                                               ; preds = %11, %1
  %63 = load ptr, ptr %4, align 4
  %64 = tail call zeroext i1 @input_device_enabled(ptr noundef %63) #8
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = tail call fastcc i32 @tegra_kbc_start(ptr noundef %3)
  br label %67

67:                                               ; preds = %65, %62, %56, %52, %35
  %68 = phi i32 [ 0, %56 ], [ 0, %52 ], [ 0, %35 ], [ %66, %65 ], [ 0, %62 ]
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr inbounds %struct.input_dev, ptr %69, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %70) #8
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i8 0, i8 2}
!10 = !{i64 4453965}
!11 = !{i64 2152543964}
!12 = !{i64 2152541386}
!13 = !{i64 2152541773}
!14 = !{i64 2152541978}
!15 = !{i64 4453547}
!16 = !{i64 2152552306}
!17 = !{i64 2152552493}
!18 = !{i64 2152544648}
!19 = !{i64 2152544835}
!20 = !{i64 2152545674}
!21 = !{i64 2152546011}
!22 = !{i64 2152546201}
!23 = !{i64 2152546529}
!24 = !{i64 2152545181}
!25 = !{i64 2152547964}
!26 = !{i64 2152549841}
!27 = !{i64 2152550304}
!28 = !{i64 2152550636}
!29 = !{i64 2152550972}
!30 = !{i64 2152551308}
!31 = !{i64 2152551495}
!32 = !{i64 2152568521}
!33 = !{i64 2152568984}
!34 = !{i64 2152569171}
!35 = !{i64 2152566728}
!36 = !{i64 2152566933}
!37 = !{i64 2152570774}
