; ModuleID = '/llk/IR/drivers/power/supply/act8945a_charger.c_pt.bc'
source_filename = "../drivers/power/supply/act8945a_charger.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.act8945a_charger = type { ptr, %struct.power_supply_desc, ptr, %struct.work_struct, i8, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__initcall__kmod_act8945a_charger__170_658_act8945a_charger_driver_init6 = internal global ptr @act8945a_charger_driver_init, section ".initcall6.init", align 4
@act8945a_charger_driver = internal global %struct.platform_driver { ptr @act8945a_charger_probe, ptr @act8945a_charger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_act8945a_charger_driver_exit = internal global ptr @act8945a_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [76 x i8] c"act8945a_charger.description=Active-semi ACT8945A ActivePath charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [60 x i8] c"act8945a_charger.author=Wenyou Yang <wenyou.yang@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [60 x i8] c"act8945a_charger.file=drivers/power/supply/act8945a_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [29 x i8] c"act8945a_charger.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"act8945a-charger\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Parent did not provide regmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to find IRQ number\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"act8945a_interrupt\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to request nIRQ pin IRQ\0A\00", align 1
@act8945a_charger_props = internal global [8 x i32] [i32 0, i32 1, i32 6, i32 2, i32 51, i32 16, i32 73, i32 74], align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to register power supply\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"no charger of node\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"have been suspended\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"active-semi,lbo\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"unable to claim gpio \22lbo\22: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"act8945a_lbo_detect\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"failed to request gpio \22lbo\22 IRQ\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"active-semi,chglev\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"unable to claim gpio \22chglev\22: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"active-semi,input-voltage-threshold-microvolt\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"active-semi,precondition-timeout\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"active-semi,total-timeout\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"ACT8945A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Active-semi\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_act8945a_charger_driver_exit, ptr @__initcall__kmod_act8945a_charger__170_658_act8945a_charger_driver_init6, ptr @act8945a_charger_driver_exit], section "llvm.metadata"
@switch.table.act8945a_charger_get_property = private unnamed_addr constant [3 x i32] [i32 1, i32 3, i32 2], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @act8945a_charger_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @act8945a_charger_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @act8945a_charger_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @act8945a_charger_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @act8945a_charger_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.power_supply_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false)
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 88, i32 noundef 3520) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %151, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @dev_get_regmap(ptr noundef %14, ptr noundef null) #6
  %16 = getelementptr inbounds %struct.act8945a_charger, ptr %10, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #7
  br label %151

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %21 = load ptr, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !annotation !8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6) #7
  br label %91

24:                                               ; preds = %19
  %25 = call i32 @regmap_read(ptr noundef nonnull %15, i32 noundef 113, ptr noundef nonnull %7) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %91

27:                                               ; preds = %24
  %28 = load i32, ptr %7, align 4
  %29 = and i32 %28, 128
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.7) #7
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ 128, %31 ], [ 0, %27 ]
  %34 = call ptr @devm_gpiod_get_optional(ptr noundef %9, ptr noundef nonnull @.str.8, i32 noundef 1) #6
  %35 = getelementptr inbounds %struct.act8945a_charger, ptr %10, i32 0, i32 5
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = ptrtoint ptr %34 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef %38) #7
  br label %93

39:                                               ; preds = %32
  %40 = call i32 @gpiod_to_irq(ptr noundef %34) #6
  %41 = call i32 @devm_request_threaded_irq(ptr noundef %9, i32 noundef %40, ptr noundef nonnull @act8945a_status_changed, ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.10, ptr noundef nonnull %10) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.11) #7
  br label %44

44:                                               ; preds = %43, %39
  %45 = call ptr @devm_gpiod_get_optional(ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef 1) #6
  %46 = getelementptr inbounds %struct.act8945a_charger, ptr %10, i32 0, i32 6
  store ptr %45, ptr %46, align 4
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = ptrtoint ptr %45 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef %49) #7
  br label %93

50:                                               ; preds = %44
  %51 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.14, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #6
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 6600, ptr %6, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.15, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #6
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store i32 40, ptr %5, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.16, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #6
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 3, ptr %4, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32, ptr %6, align 4
  switch i32 %63, label %70 [
    i32 8000, label %64
    i32 7500, label %66
    i32 7000, label %68
  ]

64:                                               ; preds = %62
  %65 = or i32 %33, 3
  br label %70

66:                                               ; preds = %62
  %67 = or i32 %33, 2
  br label %70

68:                                               ; preds = %62
  %69 = or i32 %33, 1
  br label %70

70:                                               ; preds = %68, %66, %64, %62
  %71 = phi i32 [ %69, %68 ], [ %67, %66 ], [ %65, %64 ], [ %33, %62 ]
  %72 = load i32, ptr %5, align 4
  switch i32 %72, label %79 [
    i32 60, label %73
    i32 80, label %75
    i32 0, label %77
  ]

73:                                               ; preds = %70
  %74 = or i32 %71, 4
  br label %79

75:                                               ; preds = %70
  %76 = or i32 %71, 8
  br label %79

77:                                               ; preds = %70
  %78 = or i32 %71, 12
  br label %79

79:                                               ; preds = %77, %75, %73, %70
  %80 = phi i32 [ %78, %77 ], [ %76, %75 ], [ %74, %73 ], [ %71, %70 ]
  %81 = load i32, ptr %4, align 4
  switch i32 %81, label %88 [
    i32 4, label %82
    i32 5, label %84
    i32 0, label %86
  ]

82:                                               ; preds = %79
  %83 = or i32 %80, 16
  br label %88

84:                                               ; preds = %79
  %85 = or i32 %80, 32
  br label %88

86:                                               ; preds = %79
  %87 = or i32 %80, 48
  br label %88

88:                                               ; preds = %86, %84, %82, %79
  %89 = phi i32 [ %87, %86 ], [ %85, %84 ], [ %83, %82 ], [ %80, %79 ]
  %90 = call i32 @regmap_write(ptr noundef nonnull %15, i32 noundef 113, i32 noundef %89) #6
  br label %93

91:                                               ; preds = %24, %23
  %92 = phi i32 [ %25, %24 ], [ -22, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %151

93:                                               ; preds = %88, %48, %37
  %94 = phi i32 [ %38, %37 ], [ %49, %48 ], [ %90, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %151

96:                                               ; preds = %93
  %97 = load ptr, ptr %20, align 8
  %98 = call i32 @of_irq_get(ptr noundef %97, i32 noundef 0) #6
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2) #7
  %101 = icmp eq i32 %98, 0
  %102 = select i1 %101, i32 -6, i32 %98
  br label %151

103:                                              ; preds = %96
  %104 = call i32 @devm_request_threaded_irq(ptr noundef %9, i32 noundef %98, ptr noundef nonnull @act8945a_status_changed, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull %10) #6
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.4) #7
  br label %151

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.act8945a_charger, ptr %10, i32 0, i32 1
  store ptr @.str, ptr %108, align 4
  %109 = getelementptr inbounds %struct.act8945a_charger, ptr %10, i32 0, i32 1, i32 6
  store ptr @act8945a_charger_get_property, ptr %109, align 4
  %110 = getelementptr inbounds %struct.act8945a_charger, ptr %10, i32 0, i32 1, i32 4
  store ptr @act8945a_charger_props, ptr %110, align 4
  %111 = getelementptr inbounds %struct.act8945a_charger, ptr %10, i32 0, i32 1, i32 5
  store i32 8, ptr %111, align 4
  %112 = getelementptr inbounds %struct.act8945a_charger, ptr %10, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %113 = load ptr, ptr %16, align 4
  %114 = call i32 @regmap_read(ptr noundef %113, i32 noundef 120, ptr noundef nonnull %2) #6
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %107
  %117 = load ptr, ptr %16, align 4
  %118 = call i32 @regmap_read(ptr noundef %117, i32 noundef 122, ptr noundef nonnull %3) #6
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116, %107
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %151

121:                                              ; preds = %116
  %122 = load i32, ptr %2, align 4
  %123 = and i32 %122, 2
  %124 = icmp eq i32 %123, 0
  %125 = load i32, ptr %3, align 4
  %126 = and i32 %125, 2
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 4, i32 3
  %129 = select i1 %124, i32 1, i32 %128
  store i32 %129, ptr %112, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %130 = load ptr, ptr %20, align 8
  store ptr %130, ptr %8, align 4
  %131 = getelementptr inbounds %struct.power_supply_config, ptr %8, i32 0, i32 2
  store ptr %10, ptr %131, align 4
  %132 = call ptr @devm_power_supply_register(ptr noundef %9, ptr noundef %108, ptr noundef nonnull %8) #6
  store ptr %132, ptr %10, align 4
  %133 = icmp ugt ptr %132, inttoptr (i32 -4096 to ptr)
  br i1 %133, label %134, label %137

134:                                              ; preds = %121
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5) #7
  %135 = load ptr, ptr %10, align 4
  %136 = ptrtoint ptr %135 to i32
  br label %151

137:                                              ; preds = %121
  %138 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %138, align 8
  %139 = getelementptr inbounds %struct.act8945a_charger, ptr %10, i32 0, i32 3
  store i32 -32, ptr %139, align 4
  %140 = getelementptr inbounds %struct.act8945a_charger, ptr %10, i32 0, i32 3, i32 1
  store volatile ptr %140, ptr %140, align 4
  %141 = getelementptr inbounds %struct.act8945a_charger, ptr %10, i32 0, i32 3, i32 1, i32 1
  store ptr %140, ptr %141, align 4
  %142 = getelementptr inbounds %struct.act8945a_charger, ptr %10, i32 0, i32 3, i32 2
  store ptr @act8945a_work, ptr %142, align 4
  %143 = load ptr, ptr %16, align 4
  %144 = call i32 @regmap_write(ptr noundef %143, i32 noundef 121, i32 noundef 255) #6
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %137
  %147 = call i32 @regmap_write(ptr noundef %143, i32 noundef 120, i32 noundef 240) #6
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.act8945a_charger, ptr %10, i32 0, i32 4
  store i8 1, ptr %150, align 4
  br label %151

151:                                              ; preds = %149, %146, %137, %134, %120, %106, %100, %93, %91, %18, %1
  %152 = phi i32 [ %102, %100 ], [ %104, %106 ], [ %136, %134 ], [ 0, %149 ], [ -22, %18 ], [ -12, %1 ], [ %94, %93 ], [ -5, %146 ], [ %92, %91 ], [ -22, %120 ], [ -5, %137 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #6
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @act8945a_charger_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.act8945a_charger, ptr %3, i32 0, i32 4
  store i8 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.act8945a_charger, ptr %3, i32 0, i32 3
  %6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @act8945a_status_changed(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.act8945a_charger, ptr %1, i32 0, i32 4
  %4 = load i8, ptr %3, align 4, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.act8945a_charger, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr @system_wq, align 4
  %9 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %8, ptr noundef %7) #6
  br label %10

10:                                               ; preds = %6, %2
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @act8945a_charger_get_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #6
  %17 = getelementptr inbounds %struct.act8945a_charger, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  switch i32 %1, label %172 [
    i32 0, label %19
    i32 1, label %43
    i32 6, label %67
    i32 2, label %68
    i32 51, label %100
    i32 16, label %139
    i32 73, label %170
    i32 74, label %171
  ]

19:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #6
  store i32 0, ptr %14, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #6
  store i32 0, ptr %15, align 4, !annotation !8
  %20 = call i32 @regmap_read(ptr noundef %18, i32 noundef 120, ptr noundef nonnull %14) #6
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %19
  %23 = call i32 @regmap_read(ptr noundef %18, i32 noundef 122, ptr noundef nonnull %15) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %15, align 4
  %27 = lshr i32 %26, 4
  %28 = and i32 %27, 3
  switch i32 %28, label %34 [
    i32 3, label %39
    i32 2, label %39
    i32 1, label %29
  ]

29:                                               ; preds = %25
  %30 = load i32, ptr %14, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 1, i32 4
  br label %39

34:                                               ; preds = %25
  %35 = load i32, ptr %14, align 4
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 2, i32 3
  br label %39

39:                                               ; preds = %34, %29, %25, %25
  %40 = phi i32 [ 1, %25 ], [ 1, %25 ], [ %33, %29 ], [ %38, %34 ]
  store i32 %40, ptr %2, align 4
  br label %41

41:                                               ; preds = %39, %22, %19
  %42 = phi i32 [ %20, %19 ], [ %23, %22 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #6
  br label %172

43:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  store i32 0, ptr %12, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #6
  store i32 0, ptr %13, align 4, !annotation !8
  %44 = call i32 @regmap_read(ptr noundef %18, i32 noundef 120, ptr noundef nonnull %12) #6
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %43
  %47 = call i32 @regmap_read(ptr noundef %18, i32 noundef 122, ptr noundef nonnull %13) #6
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %13, align 4
  %51 = lshr i32 %50, 4
  %52 = and i32 %51, 3
  %53 = add nsw i32 %52, -1
  %54 = icmp ult i32 %53, 3
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load i32, ptr %12, align 4
  %57 = lshr i32 %56, 1
  %58 = and i32 %57, 1
  %59 = xor i32 %58, 1
  br label %63

60:                                               ; preds = %49
  %61 = getelementptr inbounds [3 x i32], ptr @switch.table.act8945a_charger_get_property, i32 0, i32 %53
  %62 = load i32, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = phi i32 [ %59, %55 ], [ %62, %60 ]
  store i32 %64, ptr %2, align 4
  br label %65

65:                                               ; preds = %63, %46, %43
  %66 = phi i32 [ %44, %43 ], [ %47, %46 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  br label %172

67:                                               ; preds = %3
  store i32 2, ptr %2, align 4
  br label %172

68:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store i32 0, ptr %10, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  store i32 0, ptr %11, align 4, !annotation !8
  %69 = call i32 @regmap_read(ptr noundef %18, i32 noundef 120, ptr noundef nonnull %9) #6
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %98, label %71

71:                                               ; preds = %68
  %72 = call i32 @regmap_read(ptr noundef %18, i32 noundef 113, ptr noundef nonnull %11) #6
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %98, label %74

74:                                               ; preds = %71
  %75 = call i32 @regmap_read(ptr noundef %18, i32 noundef 122, ptr noundef nonnull %10) #6
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %10, align 4
  %79 = and i32 %78, 48
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load i32, ptr %11, align 4
  %83 = and i32 %82, 128
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load i32, ptr %9, align 4
  %87 = and i32 %86, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %85
  %90 = and i32 %86, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = and i32 %86, 8
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 4, i32 8
  br label %96

96:                                               ; preds = %92, %89, %85, %81, %77
  %97 = phi i32 [ 0, %81 ], [ 2, %89 ], [ %95, %92 ], [ 1, %85 ], [ 1, %77 ]
  store i32 %97, ptr %2, align 4
  br label %98

98:                                               ; preds = %96, %74, %71, %68
  %99 = phi i32 [ %69, %68 ], [ %72, %71 ], [ %75, %74 ], [ 0, %96 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  br label %172

100:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 0, ptr %8, align 4, !annotation !8
  %101 = getelementptr inbounds %struct.act8945a_charger, ptr %16, i32 0, i32 5
  %102 = load ptr, ptr %101, align 4
  %103 = tail call i32 @gpiod_get_value(ptr noundef %102) #6
  %104 = call i32 @regmap_read(ptr noundef %18, i32 noundef 120, ptr noundef nonnull %6) #6
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %137, label %106

106:                                              ; preds = %100
  %107 = call i32 @regmap_read(ptr noundef %18, i32 noundef 113, ptr noundef nonnull %8) #6
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %137, label %109

109:                                              ; preds = %106
  %110 = call i32 @regmap_read(ptr noundef %18, i32 noundef 122, ptr noundef nonnull %7) #6
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %137, label %112

112:                                              ; preds = %109
  %113 = load i32, ptr %7, align 4
  %114 = lshr i32 %113, 4
  %115 = and i32 %114, 3
  switch i32 %115, label %124 [
    i32 3, label %135
    i32 2, label %116
    i32 1, label %119
  ]

116:                                              ; preds = %112
  %117 = icmp eq i32 %103, 0
  %118 = select i1 %117, i32 2, i32 4
  br label %135

119:                                              ; preds = %112
  %120 = load i32, ptr %6, align 4
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, i32 3, i32 5
  br label %135

124:                                              ; preds = %112
  %125 = load i32, ptr %8, align 4
  %126 = and i32 %125, 128
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = load i32, ptr %6, align 4
  %130 = and i32 %129, 2
  %131 = icmp ne i32 %130, 0
  %132 = icmp ne i32 %103, 0
  %133 = select i1 %131, i1 true, i1 %132
  %134 = select i1 %133, i32 3, i32 1
  br label %135

135:                                              ; preds = %128, %124, %119, %116, %112
  %136 = phi i32 [ %134, %128 ], [ 2, %112 ], [ %118, %116 ], [ %123, %119 ], [ 0, %124 ]
  store i32 %136, ptr %2, align 4
  br label %137

137:                                              ; preds = %135, %109, %106, %100
  %138 = phi i32 [ %104, %100 ], [ %107, %106 ], [ %110, %109 ], [ 0, %135 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %172

139:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %140 = getelementptr inbounds %struct.act8945a_charger, ptr %16, i32 0, i32 6
  %141 = load ptr, ptr %140, align 4
  %142 = tail call i32 @gpiod_get_value(ptr noundef %141) #6
  %143 = call i32 @regmap_read(ptr noundef %18, i32 noundef 120, ptr noundef nonnull %4) #6
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %168, label %145

145:                                              ; preds = %139
  %146 = call i32 @regmap_read(ptr noundef %18, i32 noundef 122, ptr noundef nonnull %5) #6
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %168, label %148

148:                                              ; preds = %145
  %149 = load i32, ptr %5, align 4
  %150 = lshr i32 %149, 1
  %151 = and i32 %150, 1
  %152 = lshr i32 %149, 4
  %153 = and i32 %152, 3
  switch i32 %153, label %166 [
    i32 3, label %154
    i32 2, label %159
  ]

154:                                              ; preds = %148
  %155 = icmp eq i32 %151, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %154
  %157 = icmp eq i32 %142, 0
  %158 = select i1 %157, i32 11731, i32 88653
  br label %166

159:                                              ; preds = %148
  %160 = icmp eq i32 %151, 0
  %161 = icmp eq i32 %142, 0
  br i1 %160, label %164, label %162

162:                                              ; preds = %159
  %163 = select i1 %161, i32 117305, i32 886527
  br label %166

164:                                              ; preds = %159
  %165 = select i1 %161, i32 90000, i32 450000
  br label %166

166:                                              ; preds = %164, %162, %156, %154, %148
  %167 = phi i32 [ %158, %156 ], [ 45000, %154 ], [ %163, %162 ], [ %165, %164 ], [ 0, %148 ]
  store i32 %167, ptr %2, align 4
  br label %168

168:                                              ; preds = %166, %145, %139
  %169 = phi i32 [ %143, %139 ], [ %146, %145 ], [ 0, %166 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %172

170:                                              ; preds = %3
  store ptr @.str.17, ptr %2, align 4
  br label %172

171:                                              ; preds = %3
  store ptr @.str.18, ptr %2, align 4
  br label %172

172:                                              ; preds = %171, %170, %168, %137, %98, %67, %65, %41, %3
  %173 = phi i32 [ -22, %3 ], [ 0, %171 ], [ 0, %170 ], [ %169, %168 ], [ %138, %137 ], [ %99, %98 ], [ 0, %67 ], [ %66, %65 ], [ %42, %41 ]
  ret i32 %173
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @act8945a_work(ptr nocapture noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 120, ptr noundef nonnull %2) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 122, ptr noundef nonnull %3) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %2, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  %17 = load i32, ptr %3, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 4, i32 3
  %21 = select i1 %16, i32 1, i32 %20
  store i32 %21, ptr %4, align 4
  br label %22

22:                                               ; preds = %13, %9, %1
  %23 = getelementptr i8, ptr %0, i32 -60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %24 = load ptr, ptr %23, align 4
  call void @power_supply_changed(ptr noundef %24) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
