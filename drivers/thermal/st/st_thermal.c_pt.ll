; ModuleID = '/llk/IR/drivers/thermal/st/st_thermal.c_pt.bc'
source_filename = "../drivers/thermal/st/st_thermal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_thermal_register:\09\09\09\09\09"
module asm "\09.asciz \09\22st_thermal_register\22\09\09\09\09\09"
module asm "__kstrtabns_st_thermal_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_thermal_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22st_thermal_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_st_thermal_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_thermal_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22st_thermal_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_st_thermal_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.st_thermal_sensor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.st_thermal_compat_data = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.st_thermal_sensor_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@.str = private unnamed_addr constant [28 x i8] c"device tree node not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"thermal\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to fetch clock\0A\00", align 1
@st_tz_ops = internal global %struct.thermal_zone_device_ops { ptr null, ptr null, ptr @st_thermal_get_temp, ptr null, ptr null, ptr @st_thermal_get_trip_type, ptr @st_thermal_get_trip_temp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to register thermal zone device\0A\00", align 1
@__kstrtab_st_thermal_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_thermal_register = external dso_local constant [0 x i8], align 1
@__ksymtab_st_thermal_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_thermal_register to i32), ptr @__kstrtab_st_thermal_register, ptr @__kstrtabns_st_thermal_register }, section "___ksymtab_gpl+st_thermal_register", align 4
@__kstrtab_st_thermal_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_thermal_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_st_thermal_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_thermal_unregister to i32), ptr @__kstrtab_st_thermal_unregister, ptr @__kstrtabns_st_thermal_unregister }, section "___ksymtab_gpl+st_thermal_unregister", align 4
@st_thermal_pm_ops = dso_local constant %struct.dev_pm_ops { ptr null, ptr null, ptr @st_thermal_suspend, ptr @st_thermal_resume, ptr @st_thermal_suspend, ptr @st_thermal_resume, ptr @st_thermal_suspend, ptr @st_thermal_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_st_thermal_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_thermal_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_st_thermal_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_thermal_pm_ops to i32), ptr @__kstrtab_st_thermal_pm_ops, ptr @__kstrtabns_st_thermal_pm_ops }, section "___ksymtab_gpl+st_thermal_pm_ops", align 4
@__UNIQUE_ID_author170 = internal constant [74 x i8] c"st_thermal.author=STMicroelectronics (R&D) Limited <ajitpal.singh@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [72 x i8] c"st_thermal.description=STMicroelectronics STi SoC Thermal Sensor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [46 x i8] c"st_thermal.file=drivers/thermal/st/st_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [26 x i8] c"st_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to allocate common regfields\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"failed to enable clk\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to power on sensor\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to read calibration data\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to set calibration data\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"invalid trip point\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Invalid trip point\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__ksymtab_st_thermal_pm_ops, ptr @__ksymtab_st_thermal_register, ptr @__ksymtab_st_thermal_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @st_thermal_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #4
  br label %151

8:                                                ; preds = %2
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 56, i32 noundef 3520) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %151, label %11

11:                                               ; preds = %8
  store ptr %3, ptr %9, align 4
  %12 = tail call ptr @of_match_device(ptr noundef %1, ptr noundef %3) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %151, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.of_device_id, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %151, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.st_thermal_sensor, ptr %9, i32 0, i32 3
  store ptr %16, ptr %19, align 4
  %20 = getelementptr inbounds %struct.st_thermal_compat_data, ptr %16, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %151, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.st_thermal_sensor, ptr %9, i32 0, i32 2
  store ptr %21, ptr %24, align 4
  %25 = getelementptr inbounds %struct.st_thermal_sensor_ops, ptr %21, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef nonnull %9) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %151

29:                                               ; preds = %23
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr inbounds %struct.st_thermal_sensor, ptr %9, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %19, align 4
  %34 = getelementptr inbounds %struct.st_thermal_compat_data, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr %struct.reg_field, ptr %35, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = insertvalue [5 x i32] undef, i32 %37, 0
  %39 = getelementptr %struct.reg_field, ptr %35, i32 1, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = insertvalue [5 x i32] %38, i32 %40, 1
  %42 = getelementptr %struct.reg_field, ptr %35, i32 1, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = insertvalue [5 x i32] %41, i32 %43, 2
  %45 = getelementptr %struct.reg_field, ptr %35, i32 1, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = insertvalue [5 x i32] %44, i32 %46, 3
  %48 = getelementptr %struct.reg_field, ptr %35, i32 1, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = insertvalue [5 x i32] %47, i32 %49, 4
  %51 = tail call ptr @devm_regmap_field_alloc(ptr noundef %30, ptr noundef %32, [5 x i32] %50) #5
  %52 = getelementptr inbounds %struct.st_thermal_sensor, ptr %9, i32 0, i32 7
  store ptr %51, ptr %52, align 4
  %53 = getelementptr %struct.reg_field, ptr %35, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = insertvalue [5 x i32] undef, i32 %54, 0
  %56 = getelementptr %struct.reg_field, ptr %35, i32 2, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = insertvalue [5 x i32] %55, i32 %57, 1
  %59 = getelementptr %struct.reg_field, ptr %35, i32 2, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = insertvalue [5 x i32] %58, i32 %60, 2
  %62 = getelementptr %struct.reg_field, ptr %35, i32 2, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = insertvalue [5 x i32] %61, i32 %63, 3
  %65 = getelementptr %struct.reg_field, ptr %35, i32 2, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = insertvalue [5 x i32] %64, i32 %66, 4
  %68 = tail call ptr @devm_regmap_field_alloc(ptr noundef %30, ptr noundef %32, [5 x i32] %67) #5
  %69 = getelementptr inbounds %struct.st_thermal_sensor, ptr %9, i32 0, i32 8
  store ptr %68, ptr %69, align 4
  %70 = getelementptr %struct.reg_field, ptr %35, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = insertvalue [5 x i32] undef, i32 %71, 0
  %73 = getelementptr %struct.reg_field, ptr %35, i32 3, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = insertvalue [5 x i32] %72, i32 %74, 1
  %76 = getelementptr %struct.reg_field, ptr %35, i32 3, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = insertvalue [5 x i32] %75, i32 %77, 2
  %79 = getelementptr %struct.reg_field, ptr %35, i32 3, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = insertvalue [5 x i32] %78, i32 %80, 3
  %82 = getelementptr %struct.reg_field, ptr %35, i32 3, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = insertvalue [5 x i32] %81, i32 %83, 4
  %85 = tail call ptr @devm_regmap_field_alloc(ptr noundef %30, ptr noundef %32, [5 x i32] %84) #5
  %86 = getelementptr inbounds %struct.st_thermal_sensor, ptr %9, i32 0, i32 9
  store ptr %85, ptr %86, align 4
  %87 = load ptr, ptr %52, align 4
  %88 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %94, label %89

89:                                               ; preds = %29
  %90 = load ptr, ptr %69, align 4
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  %92 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  %93 = select i1 %91, i1 true, i1 %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89, %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.4) #4
  br label %151

95:                                               ; preds = %89
  %96 = load ptr, ptr %24, align 4
  %97 = getelementptr inbounds %struct.st_thermal_sensor_ops, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = tail call i32 %98(ptr noundef nonnull %9) #5
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %151

101:                                              ; preds = %95
  %102 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.1) #5
  %103 = getelementptr inbounds %struct.st_thermal_sensor, ptr %9, i32 0, i32 4
  store ptr %102, ptr %103, align 4
  %104 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #4
  %106 = load ptr, ptr %103, align 4
  %107 = ptrtoint ptr %106 to i32
  br label %151

108:                                              ; preds = %101
  %109 = load ptr, ptr %24, align 4
  %110 = getelementptr inbounds %struct.st_thermal_sensor_ops, ptr %109, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = tail call i32 %111(ptr noundef nonnull %9) #5
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %151

116:                                              ; preds = %113, %108
  %117 = tail call fastcc i32 @st_thermal_sensor_on(ptr noundef nonnull %9)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %151

119:                                              ; preds = %116
  %120 = tail call fastcc i32 @st_thermal_calibration(ptr noundef nonnull %9)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %119
  %123 = load ptr, ptr %24, align 4
  %124 = getelementptr inbounds %struct.st_thermal_sensor_ops, ptr %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  %127 = select i1 %126, i32 1000, i32 0
  %128 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %122
  %132 = load ptr, ptr %3, align 4
  br label %133

133:                                              ; preds = %131, %122
  %134 = phi ptr [ %132, %131 ], [ %129, %122 ]
  %135 = tail call ptr @thermal_zone_device_register(ptr noundef %134, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %9, ptr noundef nonnull @st_tz_ops, ptr noundef null, i32 noundef 0, i32 noundef %127) #5
  %136 = getelementptr inbounds %struct.st_thermal_sensor, ptr %9, i32 0, i32 1
  store ptr %135, ptr %136, align 4
  %137 = icmp ugt ptr %135, inttoptr (i32 -4096 to ptr)
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #4
  %139 = load ptr, ptr %136, align 4
  %140 = ptrtoint ptr %139 to i32
  br label %148

141:                                              ; preds = %133
  %142 = tail call i32 @thermal_zone_device_enable(ptr noundef %135) #5
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %145, align 8
  br label %151

146:                                              ; preds = %141
  %147 = load ptr, ptr %136, align 4
  tail call void @thermal_zone_device_unregister(ptr noundef %147) #5
  br label %148

148:                                              ; preds = %146, %138, %119
  %149 = phi i32 [ %120, %119 ], [ %140, %138 ], [ %142, %146 ]
  %150 = tail call fastcc i32 @st_thermal_sensor_off(ptr noundef nonnull %9)
  br label %151

151:                                              ; preds = %148, %144, %116, %113, %105, %95, %94, %23, %18, %14, %11, %8, %7
  %152 = phi i32 [ %107, %105 ], [ %149, %148 ], [ 0, %144 ], [ -22, %7 ], [ -12, %8 ], [ -22, %14 ], [ -22, %11 ], [ -22, %18 ], [ %27, %23 ], [ %99, %95 ], [ %114, %113 ], [ %117, %116 ], [ -22, %94 ]
  ret i32 %152
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @st_thermal_sensor_on(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = tail call i32 @clk_enable(ptr noundef %4) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %4) #5
  br label %11

11:                                               ; preds = %10, %1
  %12 = phi i32 [ %8, %10 ], [ %5, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #4
  br label %21

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0, i32 noundef 1) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #4
  %20 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %20) #5
  tail call void @clk_unprepare(ptr noundef %20) #5
  br label %21

21:                                               ; preds = %19, %13, %11
  %22 = phi i32 [ %12, %11 ], [ %17, %19 ], [ 0, %13 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @st_thermal_calibration(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_field_read(ptr noundef %5, ptr noundef nonnull %2) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.st_thermal_compat_data, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = call i32 @regmap_field_update_bits_base(ptr noundef %12, i32 noundef -1, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %11, %1
  %20 = phi ptr [ @.str.7, %1 ], [ @.str.8, %11 ]
  %21 = phi i32 [ %6, %1 ], [ %17, %11 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %20) #4
  br label %22

22:                                               ; preds = %19, %11, %8
  %23 = phi i32 [ 0, %8 ], [ 0, %11 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_device_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @st_thermal_sensor_off(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0, i32 noundef 0) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  br label %10

10:                                               ; preds = %7, %1
  ret i32 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @st_thermal_unregister(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.st_thermal_sensor, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %3, i32 noundef 0) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.st_thermal_sensor, ptr %3, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.st_thermal_sensor, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @thermal_zone_device_unregister(ptr noundef %14) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_thermal_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.st_thermal_sensor, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %3, i32 noundef 0) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.st_thermal_sensor, ptr %3, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  br label %12

12:                                               ; preds = %9, %1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_thermal_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc i32 @st_thermal_sensor_on(ptr noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.st_thermal_sensor, ptr %4, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_field_read(ptr noundef %10, ptr noundef nonnull %2) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %7
  %14 = load i32, ptr %2, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr inbounds %struct.st_thermal_sensor, ptr %4, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.st_thermal_compat_data, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = call i32 @regmap_field_update_bits_base(ptr noundef %17, i32 noundef -1, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16, %7
  %25 = phi ptr [ @.str.7, %7 ], [ @.str.8, %16 ]
  %26 = phi i32 [ %11, %7 ], [ %22, %16 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull %25) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %37

27:                                               ; preds = %16, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %28 = getelementptr inbounds %struct.st_thermal_sensor, ptr %4, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.st_thermal_sensor_ops, ptr %29, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = call i32 %31(ptr noundef %4) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %27
  br label %37

37:                                               ; preds = %36, %33, %24, %1
  %38 = phi i32 [ 0, %36 ], [ %5, %1 ], [ %26, %24 ], [ %34, %33 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_thermal_get_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.st_thermal_sensor, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_field_read(ptr noundef %8, ptr noundef nonnull %4) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.st_thermal_sensor, ptr %6, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @regmap_field_read(ptr noundef %16, ptr noundef nonnull %3) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.st_thermal_sensor, ptr %6, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.st_thermal_compat_data, ptr %21, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %3, align 4
  %25 = add i32 %24, %23
  %26 = mul i32 %25, 1000
  store i32 %26, ptr %1, align 4
  br label %27

27:                                               ; preds = %19, %14, %11, %2
  %28 = phi i32 [ 0, %19 ], [ %9, %2 ], [ -5, %11 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_thermal_get_trip_type(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  store i32 3, ptr %2, align 4
  br label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.9) #4
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi i32 [ 0, %5 ], [ -22, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_thermal_get_trip_temp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.st_thermal_sensor, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.st_thermal_compat_data, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, 1000
  store i32 %12, ptr %2, align 4
  br label %15

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.10) #4
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i32 [ 0, %7 ], [ -22, %13 ]
  ret i32 %16
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind }

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
