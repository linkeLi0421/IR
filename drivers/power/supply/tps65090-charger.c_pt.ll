; ModuleID = '/llk/IR/drivers/power/supply/tps65090-charger.c_pt.bc'
source_filename = "../drivers/power/supply/tps65090-charger.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.tps65090_platform_data = type { i32, ptr, i32, i32, [12 x ptr] }
%struct.tps65090_charger = type { ptr, i32, i32, i32, ptr, i8, ptr, ptr }
%struct.tps65090 = type { ptr, ptr, ptr }

@__initcall__kmod_tps65090_charger__170_356_tps65090_charger_driver_init6 = internal global ptr @tps65090_charger_driver_init, section ".initcall6.init", align 4
@tps65090_charger_driver = internal global %struct.platform_driver { ptr @tps65090_charger_probe, ptr @tps65090_charger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_tps65090_charger_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tps65090_charger_driver_exit = internal global ptr @tps65090_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [60 x i8] c"tps65090_charger.file=drivers/power/supply/tps65090-charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [32 x i8] c"tps65090_charger.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [63 x i8] c"tps65090_charger.author=Syed Rafiuddin <srafiuddin@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [61 x i8] c"tps65090_charger.description=tps65090 battery charger driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"tps65090-charger\00", align 1
@of_tps65090_charger_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65090-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s():no platform data available\0A\00", align 1
@__func__.tps65090_charger_probe = private unnamed_addr constant [23 x i8] c"tps65090_charger_probe\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to allocate memory status\0A\00", align 1
@tps65090_charger_desc = internal constant %struct.power_supply_desc { ptr @.str.12, i32 3, ptr null, i32 0, ptr @tps65090_ac_props, i32 1, ptr @tps65090_ac_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed: power supply register\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"charger config failed, err %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s(): Error in reading reg 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"error enabling charger\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Unable to register irq %d err %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ktps65090charger\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Unable to run kthread err %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Memory alloc for tps65090_pdata failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"ti,enable-low-current-chrg\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"tps65090-ac\00", align 1
@tps65090_ac_props = internal global [1 x i32] [i32 4], align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"error configuring low charge current\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"%s(): error reading in register 0x%x\0A\00", align 1
@__func__.tps65090_config_charger = private unnamed_addr constant [24 x i8] c"tps65090_config_charger\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"%s(): error writing in register 0x%x\0A\00", align 1
@__func__.tps65090_low_chrg_current = private unnamed_addr constant [26 x i8] c"tps65090_low_chrg_current\00", align 1
@__func__.tps65090_enable_charging = private unnamed_addr constant [25 x i8] c"tps65090_enable_charging\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"%s(): Error in reading reg 0x%x\0A\00", align 1
@__func__.tps65090_charger_isr = private unnamed_addr constant [21 x i8] c"tps65090_charger_isr\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"%s(): Error in writing reg 0x%x\0A\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_tps65090_charger_driver_exit, ptr @__initcall__kmod_tps65090_charger__170_356_tps65090_charger_driver_init6, ptr @tps65090_charger_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tps65090_charger_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps65090_charger_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tps65090_charger_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps65090_charger_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65090_charger_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 12, i1 false)
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 64, i32 noundef 3520) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10) #8
  br label %26

21:                                               ; preds = %17
  %22 = tail call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.11, ptr noundef null) #7
  %23 = icmp ne ptr %22, null
  %24 = zext i1 %23 to i32
  %25 = getelementptr inbounds %struct.tps65090_platform_data, ptr %18, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  store i32 -1, ptr %18, align 4
  br label %27

26:                                               ; preds = %20, %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tps65090_charger_probe) #8
  br label %185

27:                                               ; preds = %21, %1
  %28 = phi ptr [ %11, %1 ], [ %18, %21 ]
  %29 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 32, i32 noundef 3520) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #8
  br label %185

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %29, ptr %33, align 8
  store ptr %7, ptr %29, align 4
  %34 = getelementptr inbounds %struct.tps65090_charger, ptr %29, i32 0, i32 7
  store ptr %28, ptr %34, align 4
  %35 = getelementptr inbounds %struct.tps65090_platform_data, ptr %28, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.power_supply_config, ptr %5, i32 0, i32 4
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.tps65090_platform_data, ptr %28, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.power_supply_config, ptr %5, i32 0, i32 5
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %42 = load ptr, ptr %41, align 8
  store ptr %42, ptr %5, align 4
  %43 = getelementptr inbounds %struct.power_supply_config, ptr %5, i32 0, i32 2
  store ptr %29, ptr %43, align 4
  %44 = call ptr @power_supply_register(ptr noundef %7, ptr noundef nonnull @tps65090_charger_desc, ptr noundef nonnull %5) #7
  %45 = getelementptr inbounds %struct.tps65090_charger, ptr %29, i32 0, i32 6
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3) #8
  %48 = load ptr, ptr %45, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %185

50:                                               ; preds = %32
  %51 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %52 = icmp slt i32 %51, 0
  %53 = select i1 %52, i32 -6, i32 %51
  %54 = getelementptr inbounds %struct.tps65090_charger, ptr %29, i32 0, i32 3
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.tps65090_charger, ptr %29, i32 0, i32 5
  %56 = load i8, ptr %55, align 4, !range !8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %109

58:                                               ; preds = %50
  %59 = load ptr, ptr %34, align 4
  %60 = getelementptr inbounds %struct.tps65090_platform_data, ptr %59, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr %29, align 4
  %65 = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 8
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.tps65090, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 @regmap_write(ptr noundef %70, i32 noundef 9, i32 noundef 32) #7
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tps65090_low_chrg_current, i32 noundef 9) #8
  %75 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.13) #8
  br label %107

76:                                               ; preds = %63, %58
  %77 = load ptr, ptr %29, align 4
  %78 = getelementptr inbounds %struct.device, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 8
  %81 = load ptr, ptr %80, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  %82 = getelementptr inbounds %struct.tps65090, ptr %81, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = call i32 @regmap_read(ptr noundef %83, i32 noundef 2, ptr noundef nonnull %4) #7
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %88 = and i32 %87, 253
  %89 = or i32 %88, 2
  br label %94

90:                                               ; preds = %76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %91 = icmp slt i32 %84, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %90
  %93 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tps65090_config_charger, i32 noundef 2) #8
  br label %107

94:                                               ; preds = %90, %86
  %95 = phi i32 [ %89, %86 ], [ 2, %90 ]
  %96 = load ptr, ptr %29, align 4
  %97 = getelementptr inbounds %struct.device, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.device, ptr %98, i32 0, i32 8
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.tps65090, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = call i32 @regmap_write(ptr noundef %102, i32 noundef 2, i32 noundef %95) #7
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %94
  %106 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.tps65090_config_charger, i32 noundef 4) #8
  br label %107

107:                                              ; preds = %105, %92, %73
  %108 = phi i32 [ %103, %105 ], [ %84, %92 ], [ %71, %73 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef %108) #8
  br label %182

109:                                              ; preds = %94, %50
  %110 = load ptr, ptr %29, align 4
  %111 = getelementptr inbounds %struct.device, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.device, ptr %112, i32 0, i32 8
  %114 = load ptr, ptr %113, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %115 = getelementptr inbounds %struct.tps65090, ptr %114, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = call i32 @regmap_read(ptr noundef %116, i32 noundef 10, ptr noundef nonnull %3) #7
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %109
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %120 = icmp slt i32 %117, 0
  br i1 %120, label %121, label %165

121:                                              ; preds = %119
  %122 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.tps65090_charger_probe, i32 noundef 10) #8
  br label %182

123:                                              ; preds = %109
  %124 = load i32, ptr %3, align 4
  %125 = trunc i32 %124 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %165, label %127

127:                                              ; preds = %123
  %128 = load i8, ptr %55, align 4, !range !8
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %162

130:                                              ; preds = %127
  %131 = load ptr, ptr %29, align 4
  %132 = getelementptr inbounds %struct.device, ptr %131, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.device, ptr %133, i32 0, i32 8
  %135 = load ptr, ptr %134, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  %136 = getelementptr inbounds %struct.tps65090, ptr %135, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = call i32 @regmap_read(ptr noundef %137, i32 noundef 4, ptr noundef nonnull %2) #7
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %130
  %141 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %142 = and i32 %141, 254
  %143 = or i32 %142, 1
  br label %146

144:                                              ; preds = %130
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %145 = icmp slt i32 %138, 0
  br i1 %145, label %157, label %146

146:                                              ; preds = %144, %140
  %147 = phi i32 [ %143, %140 ], [ 1, %144 ]
  %148 = load ptr, ptr %29, align 4
  %149 = getelementptr inbounds %struct.device, ptr %148, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.device, ptr %150, i32 0, i32 8
  %152 = load ptr, ptr %151, align 8
  %153 = getelementptr inbounds %struct.tps65090, ptr %152, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = call i32 @regmap_write(ptr noundef %154, i32 noundef 4, i32 noundef %147) #7
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %146, %144
  %158 = phi ptr [ @.str.14, %144 ], [ @.str.15, %146 ]
  %159 = phi i32 [ %138, %144 ], [ %155, %146 ]
  %160 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull %158, ptr noundef nonnull @__func__.tps65090_enable_charging, i32 noundef 4) #8
  %161 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.6) #8
  br label %182

162:                                              ; preds = %146, %127
  %163 = getelementptr inbounds %struct.tps65090_charger, ptr %29, i32 0, i32 1
  store i32 1, ptr %163, align 4
  %164 = load ptr, ptr %45, align 4
  call void @power_supply_changed(ptr noundef %164) #7
  br label %165

165:                                              ; preds = %162, %123, %119
  %166 = icmp eq i32 %53, -6
  br i1 %166, label %172, label %167

167:                                              ; preds = %165
  %168 = call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %53, ptr noundef null, ptr noundef nonnull @tps65090_charger_isr, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %29) #7
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %185, label %170

170:                                              ; preds = %167
  %171 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %171, ptr noundef nonnull @.str.7, i32 noundef %53, i32 noundef %168) #8
  br label %182

172:                                              ; preds = %165
  %173 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @tps65090_charger_poll_task, ptr noundef nonnull %29, i32 noundef -1, ptr noundef nonnull @.str.8) #7
  %174 = icmp ugt ptr %173, inttoptr (i32 -4096 to ptr)
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = call i32 @wake_up_process(ptr noundef %173) #7
  %177 = getelementptr inbounds %struct.tps65090_charger, ptr %29, i32 0, i32 4
  store ptr %173, ptr %177, align 4
  store i8 1, ptr %55, align 4
  br label %185

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.tps65090_charger, ptr %29, i32 0, i32 4
  store ptr %173, ptr %179, align 4
  store i8 1, ptr %55, align 4
  %180 = ptrtoint ptr %173 to i32
  %181 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.9, i32 noundef %180) #8
  br label %182

182:                                              ; preds = %178, %170, %157, %121, %107
  %183 = phi i32 [ %108, %107 ], [ %117, %121 ], [ %159, %157 ], [ %168, %170 ], [ %180, %178 ]
  %184 = load ptr, ptr %45, align 4
  call void @power_supply_unregister(ptr noundef %184) #7
  br label %185

185:                                              ; preds = %182, %175, %167, %47, %31, %26
  %186 = phi i32 [ %49, %47 ], [ %183, %182 ], [ -12, %31 ], [ -19, %26 ], [ 0, %175 ], [ 0, %167 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  ret i32 %186
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65090_charger_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tps65090_charger, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -6
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tps65090_charger, ptr %3, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @kthread_stop(ptr noundef %9) #7
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.tps65090_charger, ptr %3, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  tail call void @power_supply_unregister(ptr noundef %13) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65090_charger_isr(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %11 = getelementptr inbounds %struct.tps65090, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 10, ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tps65090_charger_isr, i32 noundef 10) #8
  br label %96

17:                                               ; preds = %2
  call void @msleep(i32 noundef 75) #7
  %18 = load ptr, ptr %1, align 4
  %19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 8
  %22 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  %23 = getelementptr inbounds %struct.tps65090, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @regmap_read(ptr noundef %24, i32 noundef 0, ptr noundef nonnull %4) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %28 = icmp slt i32 %25, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %27
  %30 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tps65090_charger_isr, i32 noundef 0) #8
  br label %96

31:                                               ; preds = %17
  %32 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %69, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tps65090_charger, ptr %1, i32 0, i32 5
  %37 = load i8, ptr %36, align 4, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %35
  %40 = load ptr, ptr %1, align 4
  %41 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 8
  %44 = load ptr, ptr %43, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %45 = getelementptr inbounds %struct.tps65090, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 @regmap_read(ptr noundef %46, i32 noundef 4, ptr noundef nonnull %3) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %51 = and i32 %50, 254
  %52 = or i32 %51, 1
  br label %55

53:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %54 = icmp slt i32 %47, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %53, %49
  %56 = phi i32 [ %52, %49 ], [ 1, %53 ]
  %57 = load ptr, ptr %1, align 4
  %58 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 8
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.tps65090, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = call i32 @regmap_write(ptr noundef %63, i32 noundef 4, i32 noundef %56) #7
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %55, %53
  %67 = phi ptr [ @.str.14, %53 ], [ @.str.15, %55 ]
  %68 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull %67, ptr noundef nonnull @__func__.tps65090_enable_charging, i32 noundef 4) #8
  br label %96

69:                                               ; preds = %55, %35, %31, %27
  %70 = phi i32 [ 1, %35 ], [ 1, %55 ], [ 0, %27 ], [ 0, %31 ]
  %71 = getelementptr inbounds %struct.tps65090_charger, ptr %1, i32 0, i32 1
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.tps65090_charger, ptr %1, i32 0, i32 5
  %73 = load i8, ptr %72, align 4, !range !8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load ptr, ptr %1, align 4
  %77 = getelementptr inbounds %struct.device, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.device, ptr %78, i32 0, i32 8
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.tps65090, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = call i32 @regmap_write(ptr noundef %82, i32 noundef 0, i32 noundef 0) #7
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tps65090_charger_isr, i32 noundef 0) #8
  br label %87

87:                                               ; preds = %85, %75, %69
  %88 = getelementptr inbounds %struct.tps65090_charger, ptr %1, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.tps65090_charger, ptr %1, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.tps65090_charger, ptr %1, i32 0, i32 6
  %95 = load ptr, ptr %94, align 4
  call void @power_supply_changed(ptr noundef %95) #7
  br label %96

96:                                               ; preds = %93, %87, %66, %29, %15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65090_charger_poll_task(ptr nocapture noundef %0) #2 {
  %2 = tail call zeroext i1 @set_freezable() #7
  %3 = tail call zeroext i1 @kthread_should_stop() #7
  br i1 %3, label %16, label %4

4:                                                ; preds = %13, %1
  %5 = tail call i32 @schedule_timeout_interruptible(i32 noundef 200) #7
  %6 = load volatile i32, ptr @system_freezing_cnt, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %4
  %9 = tail call ptr @llvm.thread.pointer() #7
  %10 = tail call zeroext i1 @freezing_slow_path(ptr noundef %9) #7
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #7
  br label %13

13:                                               ; preds = %11, %8, %4
  %14 = tail call i32 @tps65090_charger_isr(i32 noundef -1, ptr noundef %0)
  %15 = tail call zeroext i1 @kthread_should_stop() #7
  br i1 %15, label %16, label %4

16:                                               ; preds = %13, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65090_ac_get_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #7
  %5 = icmp eq i32 %1, 4
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tps65090_charger, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %2, align 4
  %9 = load i32, ptr %7, align 4
  %10 = getelementptr inbounds %struct.tps65090_charger, ptr %4, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
