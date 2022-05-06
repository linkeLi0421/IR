; ModuleID = '/llk/IR/drivers/power/supply/max14577_charger.c_pt.bc'
source_filename = "../drivers/power/supply/max14577_charger.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.maxim_charger_current = type { i32, i32, i32, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.max14577_charger = type { ptr, ptr, ptr, ptr }
%struct.max14577_charger_platform_data = type { i32, i32, i32, i32 }
%struct.max14577 = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32 }

@max14577_charger_id = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max14577-charger\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"max77836-charger\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], align 4
@of_max14577_charger_dt_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max14577-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77836-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author253 = internal constant [45 x i8] c"author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [45 x i8] c"description=Maxim 14577/77836 charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@max14577_charger_driver = internal global %struct.platform_driver { ptr @max14577_charger_probe, ptr @max14577_charger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_max14577_charger_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max14577_charger_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [17 x i8] c"max14577-charger\00", align 1
@dev_attr_fast_charge_timer = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420 }, ptr @show_fast_charge_timer, ptr @store_fast_charge_timer }, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed: create sysfs entry\0A\00", align 1
@max14577_charger_desc = internal constant %struct.power_supply_desc { ptr @.str, i32 1, ptr null, i32 0, ptr @max14577_charger_props, i32 7, ptr @max14577_charger_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed: power supply register\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"No charger OF node\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"maxim,constant-uvolt\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Cannot parse maxim,constant-uvolt field from DT\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"maxim,fast-charge-uamp\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Cannot parse maxim,fast-charge-uamp field from DT\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"maxim,eoc-uamp\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Cannot parse maxim,eoc-uamp field from DT\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"maxim,ovp-uvolt\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Cannot parse maxim,ovp-uvolt field from DT\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Wrong value for OVP: %u\0A\00", align 1
@maxim_charger_currents = external dso_local constant [0 x %struct.maxim_charger_current], align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"Wrong value for fast charge: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Wrong value for Fast-Charge Timer: %lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"fast_charge_timer\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@max14577_charger_props = internal global [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 73, i32 74], align 4
@model_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21], align 4
@.str.19 = private unnamed_addr constant [14 x i8] c"MAX14577-like\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"MAX14577\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"MAX77836\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Maxim Integrated\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license255], section "llvm.metadata"
@switch.table.show_fast_charge_timer = private unnamed_addr constant [6 x i32] [i32 5, i32 6, i32 7, i32 5, i32 5, i32 0], align 4
@switch.table.store_fast_charge_timer = private unnamed_addr constant [8 x i32] [i32 112, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 64], align 4
@switch.table.max14577_charger_get_property = private unnamed_addr constant [14 x i32] [i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], align 4

@__mod_platform__max14577_charger_id_device_table = dso_local alias [3 x %struct.platform_device_id], ptr @max14577_charger_id
@__mod_of__of_max14577_charger_dt_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @of_max14577_charger_dt_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max14577_charger_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max14577_charger_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max14577_charger_probe(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.power_supply_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false)
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 16, i32 noundef 3520) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %166, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %12, align 8
  store ptr %4, ptr %9, align 4
  %13 = getelementptr inbounds %struct.max14577_charger, ptr %9, i32 0, i32 1
  store ptr %8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #8
  br label %36

18:                                               ; preds = %11
  %19 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 16, i32 noundef 3520) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.4, ptr noundef nonnull %19, i32 noundef 1, i32 noundef 0) #7
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.max14577_charger_platform_data, ptr %19, i32 0, i32 1
  %26 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.6, ptr noundef %25, i32 noundef 1, i32 noundef 0) #7
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.max14577_charger_platform_data, ptr %19, i32 0, i32 2
  %30 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.8, ptr noundef %29, i32 noundef 1, i32 noundef 0) #7
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.max14577_charger_platform_data, ptr %19, i32 0, i32 3
  %34 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.10, ptr noundef %33, i32 noundef 1, i32 noundef 0) #7
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %43, label %39

36:                                               ; preds = %18, %17
  %37 = phi ptr [ inttoptr (i32 -12 to ptr), %18 ], [ inttoptr (i32 -22 to ptr), %17 ]
  %38 = getelementptr inbounds %struct.max14577_charger, ptr %9, i32 0, i32 3
  store ptr %37, ptr %38, align 4
  br label %47

39:                                               ; preds = %32, %28, %24, %21
  %40 = phi ptr [ @.str.5, %21 ], [ @.str.7, %24 ], [ @.str.9, %28 ], [ @.str.11, %32 ]
  %41 = phi i32 [ %22, %21 ], [ %26, %24 ], [ %30, %28 ], [ %34, %32 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull %40) #8
  %42 = inttoptr i32 %41 to ptr
  br label %43

43:                                               ; preds = %39, %32
  %44 = phi ptr [ %19, %32 ], [ %42, %39 ]
  %45 = getelementptr inbounds %struct.max14577_charger, ptr %9, i32 0, i32 3
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %36
  %48 = phi ptr [ %37, %36 ], [ %44, %43 ]
  %49 = ptrtoint ptr %48 to i32
  br label %166

50:                                               ; preds = %43
  %51 = load ptr, ptr %13, align 4
  %52 = getelementptr inbounds %struct.max14577, ptr %51, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 10, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %55 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 16, i32 noundef 192) #7
  %56 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 20, i32 noundef 0) #7
  %57 = load ptr, ptr %45, align 4
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, -4350001
  %60 = icmp ult i32 %59, -350001
  br i1 %60, label %166, label %61

61:                                               ; preds = %50
  switch i32 %58, label %63 [
    i32 4200000, label %71
    i32 4350000, label %62
  ]

62:                                               ; preds = %61
  br label %71

63:                                               ; preds = %61
  %64 = icmp ult i32 %58, 4280001
  br i1 %64, label %65, label %166

65:                                               ; preds = %63
  %66 = add nsw i32 %58, -4000000
  %67 = udiv i32 %66, 20000
  %68 = icmp ult i32 %58, 4180001
  %69 = zext i1 %68 to i32
  %70 = add nuw nsw i32 %67, %69
  br label %71

71:                                               ; preds = %65, %62, %61
  %72 = phi i32 [ 31, %62 ], [ %70, %65 ], [ 0, %61 ]
  %73 = load ptr, ptr %13, align 4
  %74 = getelementptr inbounds %struct.max14577, ptr %73, i32 0, i32 4
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 @regmap_write(ptr noundef %75, i32 noundef 17, i32 noundef %72) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %166

78:                                               ; preds = %71
  %79 = load ptr, ptr %45, align 4
  %80 = getelementptr inbounds %struct.max14577_charger_platform_data, ptr %79, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = load ptr, ptr %13, align 4
  %83 = getelementptr inbounds %struct.max14577, ptr %82, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %104

86:                                               ; preds = %78
  %87 = icmp ult i32 %81, 5000
  br i1 %87, label %166, label %88

88:                                               ; preds = %86
  %89 = add i32 %81, -7500
  %90 = icmp ult i32 %89, 2500
  br i1 %90, label %110, label %91

91:                                               ; preds = %88
  %92 = icmp ult i32 %81, 50001
  br i1 %92, label %93, label %97

93:                                               ; preds = %91
  %94 = trunc i32 %81 to i16
  %95 = udiv i16 %94, 5000
  %96 = zext i16 %95 to i32
  br label %110

97:                                               ; preds = %91
  %98 = tail call i32 @llvm.umin.i32(i32 %81, i32 100000) #7
  %99 = trunc i32 %98 to i16
  %100 = add i16 %99, 15536
  %101 = udiv i16 %100, 10000
  %102 = add nuw nsw i16 %101, 10
  %103 = zext i16 %102 to i32
  br label %110

104:                                              ; preds = %78
  %105 = icmp ult i32 %81, 50000
  br i1 %105, label %166, label %106

106:                                              ; preds = %104
  %107 = tail call i32 @llvm.umin.i32(i32 %81, i32 200000) #7
  %108 = add nsw i32 %107, -50000
  %109 = udiv i32 %108, 10000
  br label %110

110:                                              ; preds = %106, %97, %93, %88
  %111 = phi i32 [ %96, %93 ], [ %103, %97 ], [ %109, %106 ], [ 0, %88 ]
  %112 = getelementptr inbounds %struct.max14577, ptr %82, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  %114 = tail call i32 @regmap_update_bits_base(ptr noundef %113, i32 noundef 19, i32 noundef 15, i32 noundef %111, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %166

116:                                              ; preds = %110
  %117 = load ptr, ptr %45, align 4
  %118 = getelementptr inbounds %struct.max14577_charger_platform_data, ptr %117, i32 0, i32 1
  %119 = load i32, ptr %118, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 0, ptr %2, align 1, !annotation !8
  %120 = load ptr, ptr %13, align 4
  %121 = getelementptr inbounds %struct.max14577, ptr %120, i32 0, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr [0 x %struct.maxim_charger_current], ptr @maxim_charger_currents, i32 0, i32 %122
  %124 = call i32 @maxim_charger_calc_reg_current(ptr noundef %123, i32 noundef %119, i32 noundef %119, ptr noundef nonnull %2) #7
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %116
  %127 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.13, i32 noundef %119) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  br label %166

128:                                              ; preds = %116
  %129 = load ptr, ptr %13, align 4
  %130 = getelementptr inbounds %struct.max14577, ptr %129, i32 0, i32 4
  %131 = load ptr, ptr %130, align 4
  %132 = load i8, ptr %2, align 1
  %133 = zext i8 %132 to i32
  %134 = call i32 @regmap_update_bits_base(ptr noundef %131, i32 noundef 18, i32 noundef 31, i32 noundef %133, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %166

136:                                              ; preds = %128
  %137 = load ptr, ptr %13, align 4
  %138 = getelementptr inbounds %struct.max14577, ptr %137, i32 0, i32 4
  %139 = load ptr, ptr %138, align 4
  %140 = call i32 @regmap_update_bits_base(ptr noundef %139, i32 noundef 15, i32 noundef 112, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %166

142:                                              ; preds = %136
  %143 = load ptr, ptr %45, align 4
  %144 = getelementptr inbounds %struct.max14577_charger_platform_data, ptr %143, i32 0, i32 3
  %145 = load i32, ptr %144, align 4
  switch i32 %145, label %150 [
    i32 7500000, label %152
    i32 6000000, label %146
    i32 6500000, label %146
    i32 7000000, label %146
  ]

146:                                              ; preds = %142, %142, %142
  %147 = add nsw i32 %145, -6000000
  %148 = udiv i32 %147, 500000
  %149 = add nuw nsw i32 %148, 1
  br label %152

150:                                              ; preds = %142
  %151 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.12, i32 noundef %145) #8
  br label %166

152:                                              ; preds = %146, %142
  %153 = phi i32 [ %149, %146 ], [ 0, %142 ]
  %154 = call i32 @regmap_write(ptr noundef %53, i32 noundef 21, i32 noundef %153) #7
  %155 = call i32 @device_create_file(ptr noundef %4, ptr noundef nonnull @dev_attr_fast_charge_timer) #7
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #8
  br label %166

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.power_supply_config, ptr %3, i32 0, i32 2
  store ptr %9, ptr %159, align 4
  %160 = call ptr @power_supply_register(ptr noundef %4, ptr noundef nonnull @max14577_charger_desc, ptr noundef nonnull %3) #7
  %161 = getelementptr inbounds %struct.max14577_charger, ptr %9, i32 0, i32 2
  store ptr %160, ptr %161, align 4
  %162 = icmp ugt ptr %160, inttoptr (i32 -4096 to ptr)
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #8
  %164 = load ptr, ptr %161, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @device_remove_file(ptr noundef %4, ptr noundef nonnull @dev_attr_fast_charge_timer) #7
  br label %166

166:                                              ; preds = %163, %158, %157, %150, %136, %128, %126, %110, %104, %86, %71, %63, %50, %47, %1
  %167 = phi i32 [ %49, %47 ], [ %155, %157 ], [ %165, %163 ], [ -12, %1 ], [ 0, %158 ], [ -22, %104 ], [ -22, %86 ], [ -22, %63 ], [ -22, %50 ], [ %124, %126 ], [ %140, %136 ], [ %134, %128 ], [ %114, %110 ], [ %76, %71 ], [ -22, %150 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max14577_charger_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %4, ptr noundef nonnull @dev_attr_fast_charge_timer) #7
  %5 = getelementptr inbounds %struct.max14577_charger, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @power_supply_unregister(ptr noundef %6) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @maxim_charger_calc_reg_current(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_fast_charge_timer(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.max14577_charger, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.max14577, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 15, ptr noundef nonnull %4) #7
  %12 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = lshr i32 %12, 4
  %16 = and i32 %15, 7
  %17 = add nsw i32 %16, -2
  %18 = icmp ult i32 %17, 6
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds [6 x i32], ptr @switch.table.show_fast_charge_timer, i32 0, i32 %17
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i32 [ %21, %19 ], [ 5, %14 ]
  %24 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.16, i32 noundef %23) #7
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi i32 [ %24, %22 ], [ %11, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_fast_charge_timer(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %15, label %13

13:                                               ; preds = %15, %10
  %14 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.14, i32 noundef %11) #8
  br label %30

15:                                               ; preds = %10
  %16 = trunc i32 %11 to i8
  %17 = lshr i8 -31, %16
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %13, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds [8 x i32], ptr @switch.table.store_fast_charge_timer, i32 0, i32 %11
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.max14577_charger, ptr %7, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.max14577, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 15, i32 noundef 112, i32 noundef %22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %3, i32 %27
  br label %30

30:                                               ; preds = %20, %13, %4
  %31 = phi i32 [ %8, %4 ], [ -22, %13 ], [ %29, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max14577_charger_get_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #7
  switch i32 %1, label %125 [
    i32 0, label %12
    i32 1, label %37
    i32 2, label %58
    i32 3, label %89
    i32 4, label %90
    i32 73, label %117
    i32 74, label %124
  ]

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.max14577_charger, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.max14577, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  store i32 0, ptr %10, align 4, !annotation !8
  %17 = call i32 @regmap_read(ptr noundef %16, i32 noundef 16, ptr noundef nonnull %10) #7
  %18 = load i32, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  %19 = icmp slt i32 %17, 0
  br i1 %19, label %125, label %20

20:                                               ; preds = %12
  %21 = and i32 %18, 64
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !annotation !8
  %24 = call i32 @regmap_read(ptr noundef %16, i32 noundef 6, ptr noundef nonnull %9) #7
  %25 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  %26 = icmp slt i32 %24, 0
  br i1 %26, label %125, label %27

27:                                               ; preds = %23
  %28 = and i32 %25, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = and i32 %25, 1
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 1, i32 4
  br label %34

34:                                               ; preds = %30, %27, %20
  %35 = phi i32 [ 2, %20 ], [ %33, %30 ], [ 2, %27 ]
  %36 = phi i32 [ %17, %20 ], [ %24, %30 ], [ %24, %27 ]
  store i32 %35, ptr %2, align 4
  br label %125

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.max14577_charger, ptr %11, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.max14577, ptr %39, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4, !annotation !8
  %42 = call i32 @regmap_read(ptr noundef %41, i32 noundef 16, ptr noundef nonnull %8) #7
  %43 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  %44 = icmp slt i32 %42, 0
  br i1 %44, label %125, label %45

45:                                               ; preds = %37
  %46 = and i32 %43, 64
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !8
  %49 = call i32 @regmap_read(ptr noundef %41, i32 noundef 6, ptr noundef nonnull %7) #7
  %50 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  %51 = icmp slt i32 %49, 0
  br i1 %51, label %125, label %52

52:                                               ; preds = %48
  %53 = and i32 %50, 3
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %56, label %55

55:                                               ; preds = %52, %45
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ 1, %55 ], [ 3, %52 ]
  store i32 %57, ptr %2, align 4
  br label %125

58:                                               ; preds = %3
  %59 = getelementptr inbounds %struct.max14577_charger, ptr %11, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.max14577, ptr %60, i32 0, i32 4
  %62 = load ptr, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %63 = call i32 @regmap_read(ptr noundef %62, i32 noundef 5, ptr noundef nonnull %6) #7
  %64 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %65 = icmp slt i32 %63, 0
  br i1 %65, label %125, label %66

66:                                               ; preds = %58
  %67 = trunc i32 %64 to i8
  %68 = and i8 %67, 7
  %69 = icmp ult i8 %68, 6
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %59, align 4
  %72 = getelementptr inbounds %struct.max14577, ptr %71, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 2
  %75 = or i8 %68, 8
  %76 = select i1 %74, i8 %75, i8 %68
  %77 = icmp eq i8 %76, 7
  br i1 %77, label %86, label %78

78:                                               ; preds = %70, %66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %79 = call i32 @regmap_read(ptr noundef %62, i32 noundef 6, ptr noundef nonnull %5) #7
  %80 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %81 = icmp slt i32 %79, 0
  br i1 %81, label %125, label %82

82:                                               ; preds = %78
  %83 = and i32 %80, 4
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 1, i32 4
  br label %86

86:                                               ; preds = %82, %70
  %87 = phi i32 [ 3, %70 ], [ %85, %82 ]
  %88 = phi i32 [ %63, %70 ], [ %79, %82 ]
  store i32 %87, ptr %2, align 4
  br label %125

89:                                               ; preds = %3
  store i32 1, ptr %2, align 4
  br label %125

90:                                               ; preds = %3
  %91 = getelementptr inbounds %struct.max14577_charger, ptr %11, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.max14577, ptr %92, i32 0, i32 4
  %94 = load ptr, ptr %93, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %95 = call i32 @regmap_read(ptr noundef %94, i32 noundef 5, ptr noundef nonnull %4) #7
  %96 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %97 = icmp slt i32 %95, 0
  br i1 %97, label %125, label %98

98:                                               ; preds = %90
  %99 = trunc i32 %96 to i8
  %100 = and i8 %99, 7
  %101 = load ptr, ptr %91, align 4
  %102 = getelementptr inbounds %struct.max14577, ptr %101, i32 0, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = icmp ult i8 %100, 6
  %105 = icmp eq i32 %103, 2
  %106 = or i8 %100, 8
  %107 = select i1 %105, i8 %106, i8 %100
  %108 = select i1 %104, i8 %100, i8 %107
  %109 = zext i8 %108 to i32
  %110 = add nsw i32 %109, -1
  %111 = icmp ult i32 %110, 14
  br i1 %111, label %112, label %115

112:                                              ; preds = %98
  %113 = getelementptr inbounds [14 x i32], ptr @switch.table.max14577_charger_get_property, i32 0, i32 %110
  %114 = load i32, ptr %113, align 4
  br label %115

115:                                              ; preds = %112, %98
  %116 = phi i32 [ %114, %112 ], [ 0, %98 ]
  store i32 %116, ptr %2, align 4
  br label %125

117:                                              ; preds = %3
  %118 = getelementptr inbounds %struct.max14577_charger, ptr %11, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.max14577, ptr %119, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr [3 x ptr], ptr @model_names, i32 0, i32 %121
  %123 = load ptr, ptr %122, align 4
  store ptr %123, ptr %2, align 4
  br label %125

124:                                              ; preds = %3
  store ptr @.str.22, ptr %2, align 4
  br label %125

125:                                              ; preds = %124, %117, %115, %90, %89, %86, %78, %58, %56, %48, %37, %34, %23, %12, %3
  %126 = phi i32 [ -22, %3 ], [ 0, %124 ], [ 0, %117 ], [ 0, %89 ], [ %17, %12 ], [ %24, %23 ], [ %36, %34 ], [ 0, %56 ], [ %42, %37 ], [ %49, %48 ], [ %63, %58 ], [ %79, %78 ], [ %88, %86 ], [ 0, %115 ], [ %95, %90 ]
  ret i32 %126
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
