; ModuleID = '/llk/IR/drivers/iio/adc/ab8500-gpadc.c_pt.bc'
source_filename = "../drivers/iio/adc/ab8500-gpadc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ab8500_gpadc = type { ptr, ptr, ptr, i32, %struct.completion, ptr, i32, i32, [4 x %struct.ab8500_adc_cal_data] }
%struct.ab8500_adc_cal_data = type { i64, i64, i16, i16 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.ab8500_gpadc_chan_info = type { ptr, i8, i8, i8, i8, i8 }
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_ab8500_gpadc__248_1218_ab8500_gpadc_driver_init6 = internal global ptr @ab8500_gpadc_driver_init, section ".initcall6.init", align 4
@ab8500_gpadc_driver = internal global %struct.platform_driver { ptr @ab8500_gpadc_probe, ptr @ab8500_gpadc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_gpadc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"ab8500-gpadc\00", align 1
@ab8500_gpadc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_gpadc_runtime_suspend, ptr @ab8500_gpadc_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"SW_CONV_END\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to get platform sw_conv_end irq\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"HW_CONV_END\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"failed to get platform hw_conv_end irq\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"ab8500-gpadc-sw\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"failed to request sw conversion irq %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"ab8500-gpadc-hw\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Failed to request hw conversion irq: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"vddadc\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"failed to get vddadc\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"failed to enable vddadc: %d\0A\00", align 1
@ab8500_gpadc_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @ab8500_gpadc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_gpadc_of_xlate, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"no channel children\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"found %d ADC channels\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"invalid channel number %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"%s channel number out of range %d\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"%s: read otp reg 0x%02x failed\0A\00", align 1
@__func__.ab8500_gpadc_read_calibration_data = private unnamed_addr constant [35 x i8] c"ab8500_gpadc_read_calibration_data\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"%s: read otp4 reg 0x%02x failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"no such channel %lu\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"gpadc_conversion: GPADC busy\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"gpadc_conversion: set avg samples failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"gpadc_conversion: set Control register failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"gpadc_conversion: trig timer failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"gpadc_conversion: start s/w conv failed\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"timeout didn't receive GPADC conv interrupt\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"gpadc_conversion: read low data failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"gpadc_conversion: read high data failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [55 x i8] c"gpadc_conversion: only SW double conversion supported\0A\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"gpadc_conversion: read sw low data 2 failed\0A\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"gpadc_conversion: read sw high data 2 failed\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"gpadc_conversion: ibat not stored\0A\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"gpadc_conversion: disable gpadc failed\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"gpadc_conversion: Failed to AD convert channel %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [49 x i8] c"unknown channel ID: %d, not possible to convert\0A\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"Failed to enable vddadc: %d\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_ab8500_gpadc__248_1218_ab8500_gpadc_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ab8500_gpadc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_gpadc_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_gpadc_probe(ptr noundef %0) #2 {
  %2 = alloca [7 x i32], align 4
  %3 = alloca [7 x i8], align 1
  %4 = alloca [3 x i8], align 1
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @devm_iio_device_alloc(ptr noundef %6, i32 noundef 144) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %408, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %12, align 8
  %13 = getelementptr inbounds %struct.iio_dev, ptr %9, i32 0, i32 19
  %14 = load ptr, ptr %13, align 8
  store ptr %6, ptr %14, align 8
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = tail call ptr @of_get_next_available_child(ptr noundef %8, ptr noundef null) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %22, %11
  %23 = phi i32 [ %25, %22 ], [ 0, %11 ]
  %24 = phi ptr [ %26, %22 ], [ %20, %11 ]
  %25 = add i32 %23, 1
  %26 = tail call ptr @of_get_next_available_child(ptr noundef %8, ptr noundef nonnull %24) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %22

28:                                               ; preds = %22
  %29 = icmp eq i32 %25, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %28, %11
  %31 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.12) #9
  br label %408

32:                                               ; preds = %28
  %33 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.13, i32 noundef %25) #9
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 88) #8
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %408, label %36, !prof !8

36:                                               ; preds = %32
  %37 = load ptr, ptr %14, align 8
  %38 = extractvalue { i32, i1 } %34, 0
  %39 = tail call noalias ptr @devm_kmalloc(ptr noundef %37, i32 noundef %38, i32 noundef 3520) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %408, label %41

41:                                               ; preds = %36
  %42 = mul nuw nsw i32 %25, 12
  %43 = load ptr, ptr %14, align 8
  %44 = tail call noalias ptr @devm_kmalloc(ptr noundef %43, i32 noundef %42, i32 noundef 3520) #8
  %45 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 2
  store ptr %44, ptr %45, align 8
  %46 = icmp eq ptr %44, null
  br i1 %46, label %408, label %47

47:                                               ; preds = %41
  %48 = tail call ptr @of_get_next_available_child(ptr noundef %8, ptr noundef null) #8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %86, label %50

50:                                               ; preds = %66, %47
  %51 = phi i32 [ %83, %66 ], [ 0, %47 ]
  %52 = phi ptr [ %84, %66 ], [ %48, %47 ]
  %53 = load ptr, ptr %45, align 8
  %54 = getelementptr %struct.iio_chan_spec, ptr %39, i32 %51
  %55 = load ptr, ptr %14, align 8
  %56 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %57 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %52, ptr noundef nonnull @.str.14, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #8
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.15, ptr noundef %56) #9
  br label %64

60:                                               ; preds = %50
  %61 = load i32, ptr %5, align 4
  %62 = icmp ugt i32 %61, 31
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.16, ptr noundef %56, i32 noundef %61) #9
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i32 [ -22, %63 ], [ %57, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @of_node_put(ptr noundef nonnull %52) #8
  br label %408

66:                                               ; preds = %60
  %67 = getelementptr %struct.iio_chan_spec, ptr %39, i32 %51, i32 1
  store i32 %61, ptr %67, align 4
  %68 = getelementptr %struct.iio_chan_spec, ptr %39, i32 %51, i32 18
  store ptr %56, ptr %68, align 4
  %69 = getelementptr %struct.iio_chan_spec, ptr %39, i32 %51, i32 19
  %70 = load i8, ptr %69, align 4
  %71 = or i8 %70, 2
  store i8 %71, ptr %69, align 4
  %72 = getelementptr %struct.iio_chan_spec, ptr %39, i32 %51, i32 3
  store i32 %61, ptr %72, align 4
  %73 = getelementptr %struct.iio_chan_spec, ptr %39, i32 %51, i32 6
  store i32 3, ptr %73, align 4
  %74 = and i32 %61, -2
  %75 = icmp eq i32 %74, 10
  %76 = zext i1 %75 to i32
  store i32 %76, ptr %54, align 4
  %77 = trunc i32 %61 to i8
  %78 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %53, i32 %51, i32 1
  store i8 %77, ptr %78, align 4
  %79 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %53, i32 %51, i32 4
  store i8 16, ptr %79, align 1
  %80 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %53, i32 %51, i32 2
  store i8 0, ptr %80, align 1
  %81 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %53, i32 %51, i32 3
  store i8 0, ptr %81, align 2
  %82 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %53, i32 %51, i32 5
  store i8 0, ptr %82, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %83 = add i32 %51, 1
  %84 = call ptr @of_get_next_available_child(ptr noundef %8, ptr noundef nonnull %52) #8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %50

86:                                               ; preds = %66, %47
  %87 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 3
  store i32 %25, ptr %87, align 4
  %88 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.1) #8
  %89 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 6
  store i32 %88, ptr %89, align 4
  %90 = icmp slt i32 %88, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %6, i32 noundef %88, ptr noundef nonnull @.str.2) #8
  br label %408

93:                                               ; preds = %86
  %94 = load ptr, ptr %19, align 4
  %95 = getelementptr inbounds %struct.ab8500, ptr %94, i32 0, i32 6
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.3) #8
  %100 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 7
  store i32 %99, ptr %100, align 8
  %101 = icmp slt i32 %99, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %6, i32 noundef %99, ptr noundef nonnull @.str.4) #8
  br label %408

104:                                              ; preds = %93
  %105 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 7
  store i32 0, ptr %105, align 8
  br label %106

106:                                              ; preds = %104, %98
  %107 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 4
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 4, i32 1
  call void @__init_swait_queue_head(ptr noundef %108, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #8
  %109 = load i32, ptr %89, align 4
  %110 = call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %109, ptr noundef null, ptr noundef nonnull @ab8500_bm_gpadcconvend_handler, i32 noundef 24576, ptr noundef nonnull @.str.5, ptr noundef %14) #8
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, ptr %89, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef %113) #9
  br label %408

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 7
  %116 = load i32, ptr %115, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %116, ptr noundef null, ptr noundef nonnull @ab8500_bm_gpadcconvend_handler, i32 noundef 24576, ptr noundef nonnull @.str.7, ptr noundef %14) #8
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, ptr %115, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8, i32 noundef %122) #9
  br label %408

123:                                              ; preds = %118, %114
  %124 = call ptr @devm_regulator_get(ptr noundef %6, ptr noundef nonnull @.str.9) #8
  %125 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 5
  store ptr %124, ptr %125, align 8
  %126 = icmp ugt ptr %124, inttoptr (i32 -4096 to ptr)
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = ptrtoint ptr %124 to i32
  %129 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %6, i32 noundef %128, ptr noundef nonnull @.str.10) #8
  br label %408

130:                                              ; preds = %123
  %131 = call i32 @regulator_enable(ptr noundef %124) #8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11, i32 noundef %131) #9
  br label %408

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %135) #8, !srcloc !10
  %136 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %135, ptr %135, i32 1, ptr elementtype(i32) %135) #8, !srcloc !11
  %137 = call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %6) #8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %6, i32 noundef 1) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %6, i1 noundef zeroext true) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #8
  %138 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %138, i8 0, i32 24, i1 false) #8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i32 7, i1 false) #8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false) #8, !annotation !9
  %139 = load ptr, ptr %14, align 8
  %140 = call i32 @abx500_get_register_interruptible(ptr noundef %139, i8 noundef zeroext 21, i8 noundef zeroext 15, ptr noundef nonnull %3) #8
  store i32 %140, ptr %2, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %134
  %143 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.ab8500_gpadc_read_calibration_data, i32 noundef 15) #9
  br label %145

144:                                              ; preds = %134
  call void @add_device_randomness(ptr noundef nonnull %2, i32 noundef 4) #8
  br label %145

145:                                              ; preds = %144, %142
  %146 = load ptr, ptr %14, align 8
  %147 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 1
  %148 = call i32 @abx500_get_register_interruptible(ptr noundef %146, i8 noundef zeroext 21, i8 noundef zeroext 16, ptr noundef %147) #8
  store i32 %148, ptr %138, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  call void @add_device_randomness(ptr noundef %138, i32 noundef 4) #8
  br label %153

151:                                              ; preds = %145
  %152 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.ab8500_gpadc_read_calibration_data, i32 noundef 16) #9
  br label %153

153:                                              ; preds = %151, %150
  %154 = load ptr, ptr %14, align 8
  %155 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 2
  %156 = call i32 @abx500_get_register_interruptible(ptr noundef %154, i8 noundef zeroext 21, i8 noundef zeroext 17, ptr noundef %155) #8
  %157 = getelementptr inbounds [7 x i32], ptr %2, i32 0, i32 2
  store i32 %156, ptr %157, align 4
  %158 = icmp slt i32 %156, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %153
  call void @add_device_randomness(ptr noundef %157, i32 noundef 4) #8
  br label %162

160:                                              ; preds = %153
  %161 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.ab8500_gpadc_read_calibration_data, i32 noundef 17) #9
  br label %162

162:                                              ; preds = %160, %159
  %163 = load ptr, ptr %14, align 8
  %164 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 3
  %165 = call i32 @abx500_get_register_interruptible(ptr noundef %163, i8 noundef zeroext 21, i8 noundef zeroext 18, ptr noundef %164) #8
  %166 = getelementptr inbounds [7 x i32], ptr %2, i32 0, i32 3
  store i32 %165, ptr %166, align 4
  %167 = icmp slt i32 %165, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %162
  call void @add_device_randomness(ptr noundef %166, i32 noundef 4) #8
  br label %171

169:                                              ; preds = %162
  %170 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.ab8500_gpadc_read_calibration_data, i32 noundef 18) #9
  br label %171

171:                                              ; preds = %169, %168
  %172 = load ptr, ptr %14, align 8
  %173 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 4
  %174 = call i32 @abx500_get_register_interruptible(ptr noundef %172, i8 noundef zeroext 21, i8 noundef zeroext 19, ptr noundef %173) #8
  %175 = getelementptr inbounds [7 x i32], ptr %2, i32 0, i32 4
  store i32 %174, ptr %175, align 4
  %176 = icmp slt i32 %174, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %171
  call void @add_device_randomness(ptr noundef %175, i32 noundef 4) #8
  br label %180

178:                                              ; preds = %171
  %179 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %179, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.ab8500_gpadc_read_calibration_data, i32 noundef 19) #9
  br label %180

180:                                              ; preds = %178, %177
  %181 = load ptr, ptr %14, align 8
  %182 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 5
  %183 = call i32 @abx500_get_register_interruptible(ptr noundef %181, i8 noundef zeroext 21, i8 noundef zeroext 20, ptr noundef %182) #8
  %184 = getelementptr inbounds [7 x i32], ptr %2, i32 0, i32 5
  store i32 %183, ptr %184, align 4
  %185 = icmp slt i32 %183, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %180
  call void @add_device_randomness(ptr noundef %184, i32 noundef 4) #8
  br label %189

187:                                              ; preds = %180
  %188 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.ab8500_gpadc_read_calibration_data, i32 noundef 20) #9
  br label %189

189:                                              ; preds = %187, %186
  %190 = load ptr, ptr %14, align 8
  %191 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 6
  %192 = call i32 @abx500_get_register_interruptible(ptr noundef %190, i8 noundef zeroext 21, i8 noundef zeroext 21, ptr noundef %191) #8
  %193 = getelementptr inbounds [7 x i32], ptr %2, i32 0, i32 6
  store i32 %192, ptr %193, align 4
  %194 = icmp slt i32 %192, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %189
  call void @add_device_randomness(ptr noundef %193, i32 noundef 4) #8
  br label %198

196:                                              ; preds = %189
  %197 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %197, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.ab8500_gpadc_read_calibration_data, i32 noundef 21) #9
  br label %198

198:                                              ; preds = %196, %195
  %199 = load ptr, ptr %19, align 4
  %200 = getelementptr inbounds %struct.ab8500, ptr %199, i32 0, i32 6
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %201, 4
  br i1 %202, label %203, label %285

203:                                              ; preds = %198
  %204 = load i32, ptr %138, align 4
  %205 = icmp slt i32 %204, 0
  %206 = load i32, ptr %157, align 4
  %207 = icmp slt i32 %206, 0
  %208 = select i1 %205, i1 true, i1 %207
  br i1 %208, label %230, label %209

209:                                              ; preds = %203
  %210 = load i8, ptr %147, align 1
  %211 = zext i8 %210 to i32
  %212 = shl nuw nsw i32 %211, 2
  %213 = load i8, ptr %155, align 1
  %214 = zext i8 %213 to i32
  %215 = lshr i32 %214, 6
  %216 = or i32 %215, %212
  %217 = lshr i32 %214, 1
  %218 = and i32 %217, 31
  %219 = trunc i32 %216 to i16
  %220 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 0, i32 2
  store i16 %219, ptr %220, align 8
  %221 = trunc i32 %218 to i16
  %222 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 0, i32 3
  store i16 %221, ptr %222, align 2
  %223 = sub nsw i32 %216, %218
  %224 = sdiv i32 19185000, %223
  %225 = sext i32 %224 to i64
  %226 = mul i32 %224, %216
  %227 = sub i32 19500000, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 0, i32 1
  store i64 %228, ptr %229, align 8
  br label %230

230:                                              ; preds = %209, %203
  %231 = phi i64 [ %225, %209 ], [ 0, %203 ]
  %232 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 8
  store i64 %231, ptr %232, align 8
  %233 = load ptr, ptr %14, align 8
  %234 = call i32 @abx500_get_register_interruptible(ptr noundef %233, i8 noundef zeroext 21, i8 noundef zeroext 56, ptr noundef nonnull %4) #8
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %230
  %237 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %237, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.ab8500_gpadc_read_calibration_data, i32 noundef 56) #9
  br label %238

238:                                              ; preds = %236, %230
  %239 = load ptr, ptr %14, align 8
  %240 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  %241 = call i32 @abx500_get_register_interruptible(ptr noundef %239, i8 noundef zeroext 21, i8 noundef zeroext 57, ptr noundef %240) #8
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %244, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.ab8500_gpadc_read_calibration_data, i32 noundef 57) #9
  br label %245

245:                                              ; preds = %243, %238
  %246 = load ptr, ptr %14, align 8
  %247 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  %248 = call i32 @abx500_get_register_interruptible(ptr noundef %246, i8 noundef zeroext 21, i8 noundef zeroext 58, ptr noundef %247) #8
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %251, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.ab8500_gpadc_read_calibration_data, i32 noundef 58) #9
  br label %283

252:                                              ; preds = %245
  %253 = select i1 %235, i1 true, i1 %242
  br i1 %253, label %283, label %254

254:                                              ; preds = %252
  %255 = load i8, ptr %4, align 1
  %256 = and i8 %255, 7
  %257 = zext i8 %256 to i32
  %258 = shl nuw nsw i32 %257, 7
  %259 = load i8, ptr %240, align 1
  %260 = zext i8 %259 to i32
  %261 = lshr i32 %260, 1
  %262 = or i32 %258, %261
  %263 = shl nuw nsw i32 %260, 5
  %264 = and i32 %263, 32
  %265 = load i8, ptr %247, align 1
  %266 = lshr i8 %265, 3
  %267 = zext i8 %266 to i32
  %268 = or i32 %264, %267
  %269 = trunc i32 %262 to i16
  %270 = getelementptr %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 3
  %271 = getelementptr %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 3, i32 2
  store i16 %269, ptr %271, align 8
  %272 = trunc i32 %268 to i16
  %273 = getelementptr %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 3, i32 3
  store i16 %272, ptr %273, align 2
  %274 = sub nsw i32 %262, %268
  %275 = sdiv i32 117440512, %274
  %276 = sext i32 %275 to i64
  %277 = mul i32 %275, %262
  %278 = sub i32 58720256, %277
  %279 = sext i32 %278 to i64
  %280 = mul nsw i64 %276, 100
  store i64 %280, ptr %270, align 8
  %281 = mul nsw i64 %279, 100
  %282 = getelementptr %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 3, i32 1
  store i64 %281, ptr %282, align 8
  br label %323

283:                                              ; preds = %252, %250
  %284 = getelementptr %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 3
  store i64 0, ptr %284, align 8
  br label %323

285:                                              ; preds = %198
  %286 = load i32, ptr %2, align 4
  %287 = icmp slt i32 %286, 0
  %288 = load i32, ptr %138, align 4
  %289 = icmp slt i32 %288, 0
  %290 = select i1 %287, i1 true, i1 %289
  %291 = load i32, ptr %157, align 4
  %292 = icmp slt i32 %291, 0
  %293 = select i1 %290, i1 true, i1 %292
  br i1 %293, label %321, label %294

294:                                              ; preds = %285
  %295 = load i8, ptr %3, align 1
  %296 = and i8 %295, 3
  %297 = zext i8 %296 to i32
  %298 = shl nuw nsw i32 %297, 8
  %299 = load i8, ptr %147, align 1
  %300 = shl i8 %299, 2
  %301 = zext i8 %300 to i32
  %302 = or i32 %298, %301
  %303 = load i8, ptr %155, align 1
  %304 = zext i8 %303 to i32
  %305 = lshr i32 %304, 6
  %306 = or i32 %302, %305
  %307 = lshr i32 %304, 1
  %308 = and i32 %307, 31
  %309 = trunc i32 %306 to i16
  %310 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 8
  %311 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 0, i32 2
  store i16 %309, ptr %311, align 8
  %312 = trunc i32 %308 to i16
  %313 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 0, i32 3
  store i16 %312, ptr %313, align 2
  %314 = sub nsw i32 %306, %308
  %315 = sdiv i32 19185000, %314
  %316 = sext i32 %315 to i64
  store i64 %316, ptr %310, align 8
  %317 = mul i32 %315, %306
  %318 = sub i32 19500000, %317
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 0, i32 1
  store i64 %319, ptr %320, align 8
  br label %323

321:                                              ; preds = %285
  %322 = getelementptr inbounds %struct.ab8500_gpadc, ptr %14, i32 0, i32 8
  store i64 0, ptr %322, align 8
  br label %323

323:                                              ; preds = %321, %294, %283, %254
  %324 = load i32, ptr %157, align 4
  %325 = icmp slt i32 %324, 0
  %326 = load i32, ptr %166, align 4
  %327 = icmp slt i32 %326, 0
  %328 = select i1 %325, i1 true, i1 %327
  %329 = load i32, ptr %175, align 4
  %330 = icmp slt i32 %329, 0
  %331 = select i1 %328, i1 true, i1 %330
  br i1 %331, label %358, label %332

332:                                              ; preds = %323
  %333 = load i8, ptr %155, align 1
  %334 = and i8 %333, 1
  %335 = zext i8 %334 to i32
  %336 = shl nuw nsw i32 %335, 9
  %337 = load i8, ptr %164, align 1
  %338 = zext i8 %337 to i32
  %339 = shl nuw nsw i32 %338, 1
  %340 = or i32 %336, %339
  %341 = load i8, ptr %173, align 1
  %342 = zext i8 %341 to i32
  %343 = lshr i32 %342, 7
  %344 = or i32 %340, %343
  %345 = lshr i32 %342, 2
  %346 = and i32 %345, 31
  %347 = trunc i32 %344 to i16
  %348 = getelementptr %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 1, i32 2
  store i16 %347, ptr %348, align 8
  %349 = trunc i32 %346 to i16
  %350 = getelementptr %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 1, i32 3
  store i16 %349, ptr %350, align 2
  %351 = sub nsw i32 %344, %346
  %352 = sdiv i32 1279000, %351
  %353 = sext i32 %352 to i64
  %354 = mul i32 %352, %344
  %355 = sub i32 1300000, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 1, i32 1
  store i64 %356, ptr %357, align 8
  br label %358

358:                                              ; preds = %332, %323
  %359 = phi i64 [ %353, %332 ], [ 0, %323 ]
  %360 = getelementptr %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 1
  store i64 %359, ptr %360, align 8
  %361 = load i32, ptr %184, align 4
  %362 = icmp slt i32 %361, 0
  %363 = select i1 %330, i1 true, i1 %362
  %364 = load i32, ptr %193, align 4
  %365 = icmp slt i32 %364, 0
  %366 = select i1 %363, i1 true, i1 %365
  br i1 %366, label %389, label %367

367:                                              ; preds = %358
  %368 = load i8, ptr %173, align 1
  %369 = and i8 %368, 3
  %370 = zext i8 %369 to i32
  %371 = shl nuw nsw i32 %370, 8
  %372 = load i8, ptr %182, align 1
  %373 = zext i8 %372 to i32
  %374 = or i32 %371, %373
  %375 = load i8, ptr %191, align 1
  %376 = lshr i8 %375, 2
  %377 = zext i8 %376 to i32
  %378 = trunc i32 %374 to i16
  %379 = getelementptr %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 2, i32 2
  store i16 %378, ptr %379, align 8
  %380 = zext i8 %376 to i16
  %381 = getelementptr %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 2, i32 3
  store i16 %380, ptr %381, align 2
  %382 = sub nsw i32 %374, %377
  %383 = sdiv i32 2320000, %382
  %384 = sext i32 %383 to i64
  %385 = mul i32 %383, %374
  %386 = sub i32 4700000, %385
  %387 = sext i32 %386 to i64
  %388 = getelementptr %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 2, i32 1
  store i64 %387, ptr %388, align 8
  br label %389

389:                                              ; preds = %367, %358
  %390 = phi i64 [ %384, %367 ], [ 0, %358 ]
  %391 = getelementptr %struct.ab8500_gpadc, ptr %14, i32 0, i32 8, i32 2
  store i64 %390, ptr %391, align 8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #8
  %392 = call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 5) #8
  %393 = getelementptr inbounds %struct.iio_dev, ptr %9, i32 0, i32 15
  store ptr @.str, ptr %393, align 8
  store i32 1, ptr %9, align 8
  %394 = getelementptr inbounds %struct.iio_dev, ptr %9, i32 0, i32 17
  store ptr @ab8500_gpadc_info, ptr %394, align 8
  %395 = getelementptr inbounds %struct.iio_dev, ptr %9, i32 0, i32 13
  store ptr %39, ptr %395, align 8
  %396 = getelementptr inbounds %struct.iio_dev, ptr %9, i32 0, i32 14
  store i32 %25, ptr %396, align 4
  %397 = call i32 @__devm_iio_device_register(ptr noundef %6, ptr noundef nonnull %9, ptr noundef null) #8
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %408, label %399

399:                                              ; preds = %389
  %400 = call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %135) #8, !srcloc !10
  %401 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %135, ptr %135, i32 0, i32 -1, ptr elementtype(i32) %135) #8, !srcloc !13
  %402 = extractvalue { i32, i32, i32 } %401, 0
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %405, label %404

404:                                              ; preds = %399
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  br label %405

405:                                              ; preds = %404, %399
  call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #8
  %406 = load ptr, ptr %125, align 8
  %407 = call i32 @regulator_disable(ptr noundef %406) #8
  br label %408

408:                                              ; preds = %405, %389, %133, %127, %121, %112, %102, %91, %64, %41, %36, %32, %30, %1
  %409 = phi i32 [ %92, %91 ], [ %103, %102 ], [ %110, %112 ], [ %119, %121 ], [ %129, %127 ], [ %131, %133 ], [ %397, %405 ], [ -12, %1 ], [ 0, %389 ], [ -12, %32 ], [ -12, %41 ], [ -12, %36 ], [ -19, %30 ], [ %65, %64 ]
  ret i32 %409
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_gpadc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #8
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #8, !srcloc !10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 -1, ptr elementtype(i32) %9) #8, !srcloc !13
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  br label %14

14:                                               ; preds = %13, %1
  %15 = load ptr, ptr %5, align 8
  tail call void @__pm_runtime_disable(ptr noundef %15, i1 noundef zeroext true) #8
  %16 = getelementptr inbounds %struct.ab8500_gpadc, ptr %5, i32 0, i32 5
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @regulator_disable(ptr noundef %17) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_bm_gpadcconvend_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ab8500_gpadc, ptr %1, i32 0, i32 4
  tail call void @complete(ptr noundef %3) #8
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_gpadc_read_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3, i32 noundef %4) #2 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds %struct.ab8500_gpadc, ptr %12, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.ab8500_gpadc, ptr %12, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  br label %22

22:                                               ; preds = %27, %19
  %23 = phi i32 [ 0, %19 ], [ %28, %27 ]
  %24 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %21, i32 %23, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, %15
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = add nuw i32 %23, 1
  %29 = icmp eq i32 %28, %17
  br i1 %29, label %35, label %22

30:                                               ; preds = %22
  %31 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %21, i32 %23
  %32 = icmp eq i32 %23, %17
  %33 = icmp eq ptr %31, null
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %27, %5
  %36 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.20, i32 noundef %14) #9
  br label %315

37:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 0, ptr %8, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  store i8 0, ptr %9, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  store i8 0, ptr %10, align 1, !annotation !9
  %38 = icmp eq ptr %12, null
  br i1 %38, label %214, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.ab8500_gpadc, ptr %12, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %21, i32 %23, i32 2
  %45 = load i8, ptr %44, align 1, !range !15
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %214, label %47

47:                                               ; preds = %43, %39
  %48 = getelementptr inbounds %struct.ab8500_gpadc, ptr %12, i32 0, i32 7
  %49 = load i32, ptr %48, align 8
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %21, i32 %23, i32 2
  %53 = load i8, ptr %52, align 1, !range !15
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %214

55:                                               ; preds = %51, %47
  %56 = load ptr, ptr %12, align 8
  %57 = tail call i32 @__pm_runtime_resume(ptr noundef %56, i32 noundef 4) #8
  br label %58

58:                                               ; preds = %67, %55
  %59 = phi i32 [ 0, %55 ], [ %68, %67 ]
  %60 = load ptr, ptr %12, align 8
  %61 = call i32 @abx500_get_register_interruptible(ptr noundef %60, i8 noundef zeroext 10, i8 noundef zeroext 4, ptr noundef nonnull %6) #8
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %204, label %63

63:                                               ; preds = %58
  %64 = load i8, ptr %6, align 1
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  call void @msleep(i32 noundef 20) #8
  %68 = add nuw nsw i32 %59, 1
  %69 = icmp eq i32 %68, 10
  br i1 %69, label %70, label %58

70:                                               ; preds = %67
  %71 = load i8, ptr %6, align 1
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.21) #9
  br label %204

76:                                               ; preds = %70, %63
  %77 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %21, i32 %23, i32 4
  %78 = load i8, ptr %77, align 1
  switch i8 %78, label %90 [
    i8 1, label %79
    i8 4, label %82
    i8 8, label %86
  ]

79:                                               ; preds = %76
  %80 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %21, i32 %23, i32 1
  %81 = load i8, ptr %80, align 4
  br label %94

82:                                               ; preds = %76
  %83 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %21, i32 %23, i32 1
  %84 = load i8, ptr %83, align 4
  %85 = or i8 %84, 32
  br label %94

86:                                               ; preds = %76
  %87 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %21, i32 %23, i32 1
  %88 = load i8, ptr %87, align 4
  %89 = or i8 %88, 64
  br label %94

90:                                               ; preds = %76
  %91 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %21, i32 %23, i32 1
  %92 = load i8, ptr %91, align 4
  %93 = or i8 %92, 96
  br label %94

94:                                               ; preds = %90, %86, %82, %79
  %95 = phi i8 [ %93, %90 ], [ %89, %86 ], [ %85, %82 ], [ %81, %79 ]
  %96 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %21, i32 %23, i32 2
  %97 = load i8, ptr %96, align 1, !range !15
  %98 = icmp eq i8 %97, 0
  %99 = load ptr, ptr %12, align 8
  br i1 %98, label %106, label %100

100:                                              ; preds = %94
  %101 = call i32 @abx500_set_register_interruptible(ptr noundef %99, i8 noundef zeroext 10, i8 noundef zeroext 2, i8 noundef zeroext %95) #8
  %102 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %21, i32 %23, i32 3
  %103 = load i8, ptr %102, align 2, !range !15
  %104 = icmp eq i8 %103, 0
  %105 = select i1 %104, i8 3, i8 19
  br label %108

106:                                              ; preds = %94
  %107 = call i32 @abx500_set_register_interruptible(ptr noundef %99, i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext %95) #8
  br label %108

108:                                              ; preds = %106, %100
  %109 = phi i32 [ %107, %106 ], [ %101, %100 ]
  %110 = phi i8 [ 1, %106 ], [ %105, %100 ]
  %111 = icmp slt i32 %109, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.22) #9
  br label %204

114:                                              ; preds = %108
  %115 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %21, i32 %23, i32 1
  %116 = load i8, ptr %115, align 4
  switch i8 %116, label %127 [
    i8 10, label %128
    i8 11, label %128
    i8 2, label %117
  ]

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.ab8500_gpadc, ptr %12, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.ab8500, ptr %119, i32 0, i32 6
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.ab8500, ptr %119, i32 0, i32 7
  %125 = load i8, ptr %124, align 4
  %126 = icmp ugt i8 %125, 32
  br i1 %126, label %134, label %127

127:                                              ; preds = %123, %114
  br label %128

128:                                              ; preds = %127, %114, %114
  %129 = phi i8 [ 64, %127 ], [ -64, %114 ], [ -64, %114 ]
  %130 = or i8 %129, %110
  %131 = load ptr, ptr %12, align 8
  %132 = call i32 @abx500_set_register_interruptible(ptr noundef %131, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext %130) #8
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %139, label %143

134:                                              ; preds = %123, %117
  %135 = or i8 %110, 72
  %136 = load ptr, ptr %12, align 8
  %137 = call i32 @abx500_set_register_interruptible(ptr noundef %136, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext %135) #8
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134, %128
  %140 = phi i32 [ %137, %134 ], [ %132, %128 ]
  %141 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.23) #9
  br label %204

142:                                              ; preds = %134
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #8
  br label %143

143:                                              ; preds = %142, %128
  %144 = load i8, ptr %96, align 1, !range !15
  %145 = icmp eq i8 %144, 0
  %146 = load ptr, ptr %12, align 8
  br i1 %145, label %154, label %147

147:                                              ; preds = %143
  %148 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %21, i32 %23, i32 5
  %149 = load i8, ptr %148, align 4
  %150 = call i32 @abx500_set_register_interruptible(ptr noundef %146, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext %149) #8
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %147
  %153 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.24) #9
  br label %204

154:                                              ; preds = %143
  %155 = call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %146, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 4) #8
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.25) #9
  br label %204

159:                                              ; preds = %154, %147
  %160 = phi i32 [ 200, %147 ], [ 50, %154 ]
  %161 = phi i8 [ 7, %147 ], [ 5, %154 ]
  %162 = phi i8 [ 8, %147 ], [ 6, %154 ]
  %163 = getelementptr inbounds %struct.ab8500_gpadc, ptr %12, i32 0, i32 4
  %164 = call i32 @wait_for_completion_timeout(ptr noundef %163, i32 noundef %160) #8
  %165 = icmp eq i32 %164, 0
  %166 = load ptr, ptr %12, align 8
  br i1 %165, label %167, label %168

167:                                              ; preds = %159
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.26) #9
  br label %204

168:                                              ; preds = %159
  %169 = call i32 @abx500_get_register_interruptible(ptr noundef %166, i8 noundef zeroext 10, i8 noundef zeroext %161, ptr noundef nonnull %7) #8
  %170 = icmp slt i32 %169, 0
  %171 = load ptr, ptr %12, align 8
  br i1 %170, label %172, label %173

172:                                              ; preds = %168
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %171, ptr noundef nonnull @.str.27) #9
  br label %204

173:                                              ; preds = %168
  %174 = call i32 @abx500_get_register_interruptible(ptr noundef %171, i8 noundef zeroext 10, i8 noundef zeroext %162, ptr noundef nonnull %8) #8
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.28) #9
  br label %204

178:                                              ; preds = %173
  %179 = load i8, ptr %115, align 4
  %180 = and i8 %179, -4
  %181 = icmp eq i8 %180, 28
  br i1 %181, label %182, label %198

182:                                              ; preds = %178
  %183 = load i8, ptr %96, align 1, !range !15
  %184 = icmp eq i8 %183, 0
  %185 = load ptr, ptr %12, align 8
  br i1 %184, label %187, label %186

186:                                              ; preds = %182
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %185, ptr noundef nonnull @.str.29) #9
  br label %204

187:                                              ; preds = %182
  %188 = call i32 @abx500_get_register_interruptible(ptr noundef %185, i8 noundef zeroext 10, i8 noundef zeroext 9, ptr noundef nonnull %9) #8
  %189 = icmp slt i32 %188, 0
  %190 = load ptr, ptr %12, align 8
  br i1 %189, label %191, label %192

191:                                              ; preds = %187
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.30) #9
  br label %204

192:                                              ; preds = %187
  %193 = call i32 @abx500_get_register_interruptible(ptr noundef %190, i8 noundef zeroext 10, i8 noundef zeroext 10, ptr noundef nonnull %10) #8
  %194 = icmp slt i32 %193, 0
  %195 = load ptr, ptr %12, align 8
  br i1 %194, label %196, label %197

196:                                              ; preds = %192
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %195, ptr noundef nonnull @.str.31) #9
  br label %204

197:                                              ; preds = %192
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %195, ptr noundef nonnull @.str.32) #9
  br label %198

198:                                              ; preds = %197, %178
  %199 = load ptr, ptr %12, align 8
  %200 = call i32 @abx500_set_register_interruptible(ptr noundef %199, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %201 = icmp slt i32 %200, 0
  %202 = load ptr, ptr %12, align 8
  br i1 %201, label %203, label %216

203:                                              ; preds = %198
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %202, ptr noundef nonnull @.str.33) #9
  br label %204

204:                                              ; preds = %203, %196, %191, %186, %176, %172, %167, %157, %152, %139, %112, %74, %58
  %205 = phi i32 [ -22, %74 ], [ %109, %112 ], [ %140, %139 ], [ %150, %152 ], [ %169, %172 ], [ %174, %176 ], [ -524, %186 ], [ %188, %191 ], [ %193, %196 ], [ %200, %203 ], [ -22, %167 ], [ %155, %157 ], [ %61, %58 ]
  %206 = load ptr, ptr %12, align 8
  %207 = call i32 @abx500_set_register_interruptible(ptr noundef %206, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %208 = load ptr, ptr %12, align 8
  %209 = call i32 @__pm_runtime_idle(ptr noundef %208, i32 noundef 5) #8
  %210 = load ptr, ptr %12, align 8
  %211 = getelementptr %struct.ab8500_gpadc_chan_info, ptr %21, i32 %23, i32 1
  %212 = load i8, ptr %211, align 4
  %213 = zext i8 %212 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %210, ptr noundef nonnull @.str.34, i32 noundef %213) #9
  br label %214

214:                                              ; preds = %204, %51, %43, %37
  %215 = phi i32 [ -524, %51 ], [ -524, %43 ], [ -19, %37 ], [ %205, %204 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  br label %315

216:                                              ; preds = %198
  %217 = call i64 @ktime_get_mono_fast_ns() #8
  %218 = getelementptr inbounds %struct.device, ptr %202, i32 0, i32 11, i32 22
  store volatile i64 %217, ptr %218, align 8
  %219 = load ptr, ptr %12, align 8
  %220 = call i32 @__pm_runtime_suspend(ptr noundef %219, i32 noundef 13) #8
  %221 = load i8, ptr %8, align 1
  %222 = zext i8 %221 to i32
  %223 = shl nuw nsw i32 %222, 8
  %224 = load i8, ptr %7, align 1
  %225 = zext i8 %224 to i32
  %226 = or i32 %223, %225
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  switch i32 %4, label %315 [
    i32 0, label %227
    i32 1, label %228
  ]

227:                                              ; preds = %216
  store i32 %226, ptr %2, align 4
  br label %315

228:                                              ; preds = %216
  %229 = load i8, ptr %115, align 4
  switch i8 %229, label %307 [
    i8 3, label %230
    i8 1, label %245
    i8 2, label %245
    i8 4, label %245
    i8 6, label %245
    i8 7, label %245
    i8 18, label %245
    i8 8, label %260
    i8 19, label %260
    i8 13, label %276
    i8 5, label %279
    i8 9, label %282
    i8 10, label %285
    i8 11, label %285
    i8 12, label %288
    i8 -1, label %291
  ]

230:                                              ; preds = %228
  %231 = getelementptr inbounds %struct.ab8500_gpadc, ptr %12, i32 0, i32 8
  %232 = load i64, ptr %231, align 8
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = mul nuw nsw i32 %226, 20030
  %236 = lshr i32 %235, 10
  br label %313

237:                                              ; preds = %230
  %238 = zext i32 %226 to i64
  %239 = mul i64 %232, %238
  %240 = getelementptr inbounds %struct.ab8500_gpadc, ptr %12, i32 0, i32 8, i32 0, i32 1
  %241 = load i64, ptr %240, align 8
  %242 = add i64 %241, %239
  %243 = trunc i64 %242 to i32
  %244 = sdiv i32 %243, 1000
  br label %310

245:                                              ; preds = %228, %228, %228, %228, %228, %228
  %246 = getelementptr %struct.ab8500_gpadc, ptr %12, i32 0, i32 8, i32 1
  %247 = load i64, ptr %246, align 8
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = mul nuw nsw i32 %226, 1350
  %251 = lshr i32 %250, 10
  br label %313

252:                                              ; preds = %245
  %253 = zext i32 %226 to i64
  %254 = mul i64 %247, %253
  %255 = getelementptr %struct.ab8500_gpadc, ptr %12, i32 0, i32 8, i32 1, i32 1
  %256 = load i64, ptr %255, align 8
  %257 = add i64 %256, %254
  %258 = trunc i64 %257 to i32
  %259 = sdiv i32 %258, 1000
  br label %310

260:                                              ; preds = %228, %228
  %261 = getelementptr %struct.ab8500_gpadc, ptr %12, i32 0, i32 8, i32 2
  %262 = load i64, ptr %261, align 8
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %260
  %265 = mul nuw nsw i32 %226, 2500
  %266 = lshr i32 %265, 10
  %267 = add nuw nsw i32 %266, 2300
  br label %313

268:                                              ; preds = %260
  %269 = zext i32 %226 to i64
  %270 = mul i64 %262, %269
  %271 = getelementptr %struct.ab8500_gpadc, ptr %12, i32 0, i32 8, i32 2, i32 1
  %272 = load i64, ptr %271, align 8
  %273 = add i64 %272, %270
  %274 = trunc i64 %273 to i32
  %275 = sdiv i32 %274, 1000
  br label %310

276:                                              ; preds = %228
  %277 = mul nuw nsw i32 %226, 1350
  %278 = lshr i32 %277, 10
  br label %313

279:                                              ; preds = %228
  %280 = mul nuw nsw i32 %226, 2500
  %281 = lshr i32 %280, 10
  br label %313

282:                                              ; preds = %228
  %283 = mul nuw nsw i32 %226, 20030
  %284 = lshr i32 %283, 10
  br label %313

285:                                              ; preds = %228, %228
  %286 = mul nuw nsw i32 %226, 1500
  %287 = lshr i32 %286, 10
  br label %313

288:                                              ; preds = %228
  %289 = mul nuw nsw i32 %226, 3200
  %290 = lshr i32 %289, 10
  br label %313

291:                                              ; preds = %228
  %292 = getelementptr %struct.ab8500_gpadc, ptr %12, i32 0, i32 8, i32 3
  %293 = load i64, ptr %292, align 8
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %291
  %296 = mul nuw nsw i32 %226, 12000
  %297 = lshr i32 %296, 10
  %298 = add nsw i32 %297, -6000
  br label %310

299:                                              ; preds = %291
  %300 = zext i32 %226 to i64
  %301 = mul i64 %293, %300
  %302 = getelementptr %struct.ab8500_gpadc, ptr %12, i32 0, i32 8, i32 3, i32 1
  %303 = load i64, ptr %302, align 8
  %304 = add i64 %303, %301
  %305 = trunc i64 %304 to i32
  %306 = ashr i32 %305, 20
  br label %310

307:                                              ; preds = %228
  %308 = zext i8 %229 to i32
  %309 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %309, ptr noundef nonnull @.str.35, i32 noundef %308) #9
  br label %315

310:                                              ; preds = %299, %295, %268, %252, %237
  %311 = phi i32 [ %306, %299 ], [ %298, %295 ], [ %275, %268 ], [ %259, %252 ], [ %244, %237 ]
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %315, label %313

313:                                              ; preds = %310, %288, %285, %282, %279, %276, %264, %249, %234
  %314 = phi i32 [ %311, %310 ], [ %236, %234 ], [ %251, %249 ], [ %267, %264 ], [ %278, %276 ], [ %281, %279 ], [ %284, %282 ], [ %287, %285 ], [ %290, %288 ]
  store i32 %314, ptr %2, align 4
  br label %315

315:                                              ; preds = %313, %310, %307, %227, %216, %214, %35
  %316 = phi i32 [ 1, %227 ], [ 1, %313 ], [ -22, %35 ], [ %311, %310 ], [ -22, %216 ], [ %215, %214 ], [ -22, %307 ]
  ret i32 %316
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @ab8500_gpadc_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %16, %6
  %12 = phi i32 [ 0, %6 ], [ %17, %16 ]
  %13 = getelementptr %struct.iio_chan_spec, ptr %8, i32 %12, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, %4
  br i1 %18, label %19, label %11

19:                                               ; preds = %16, %11, %2
  %20 = phi i32 [ -22, %2 ], [ -22, %16 ], [ %12, %11 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_gpadc_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ab8500_gpadc, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @regulator_disable(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_gpadc_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ab8500_gpadc, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @regulator_enable(ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %8) #9
  br label %11

11:                                               ; preds = %10, %1
  ret i32 %8
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 646834, i64 2148148400, i64 2148148426, i64 2148148473, i64 2148148495, i64 2148148523, i64 2148148543}
!11 = !{i64 2148211662, i64 2148211688, i64 2148211717, i64 2148211751, i64 2148211782, i64 2148211805}
!12 = !{i64 2148211169}
!13 = !{i64 633403, i64 633428, i64 633450, i64 633466, i64 633478, i64 633498, i64 633522, i64 633538, i64 633550}
!14 = !{i64 2148211295}
!15 = !{i8 0, i8 2}
