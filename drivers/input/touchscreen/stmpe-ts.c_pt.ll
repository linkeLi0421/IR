; ModuleID = '/llk/IR/drivers/input/touchscreen/stmpe-ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/stmpe-ts.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.stmpe_touch = type { ptr, ptr, %struct.delayed_work, ptr, %struct.touchscreen_properties, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.stmpe = type { ptr, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, [2 x i8], [2 x i8], ptr, i8, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_stmpe_ts__247_369_stmpe_ts_driver_init6 = internal global ptr @stmpe_ts_driver_init, section ".initcall6.init", align 4
@stmpe_ts_driver = internal global %struct.platform_driver { ptr @stmpe_input_probe, ptr @stmpe_ts_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_stmpe_ts_driver_exit = internal global ptr @stmpe_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [48 x i8] c"stmpe_ts.author=Luotao Fu <l.fu@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [49 x i8] c"stmpe_ts.description=STMPEXXX touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [49 x i8] c"stmpe_ts.file=drivers/input/touchscreen/stmpe-ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [21 x i8] c"stmpe_ts.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"stmpe-ts\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"FIFO_TH\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to request IRQ %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"stmpe-ts/input0\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Could not register input device\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"st,sample-time\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"st,mod-12b\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"st,ref-sel\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"st,adc-freq\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"st,ave-ctrl\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"st,touch-det-delay\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"st,settling\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"st,fraction-z\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"st,i-drive\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"Could not enable clock for ADC and TS\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Could not config touch\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Could not set FIFO\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Could not set mode\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_stmpe_ts_driver_exit, ptr @__initcall__kmod_stmpe_ts__247_369_stmpe_ts_driver_init6, ptr @stmpe_ts_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stmpe_ts_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stmpe_ts_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stmpe_ts_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stmpe_ts_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe_input_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %158, label %10

10:                                               ; preds = %1
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 76, i32 noundef 3520) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %158, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @devm_input_allocate_device(ptr noundef %3) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %158, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %17, align 8
  store ptr %7, ptr %11, align 4
  %18 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 1
  store ptr %14, ptr %18, align 4
  %19 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 3
  store ptr %3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %21 = load ptr, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %90, label %23

23:                                               ; preds = %16
  %24 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, ptr %2, align 4
  %28 = trunc i32 %27 to i8
  %29 = load ptr, ptr %11, align 4
  %30 = getelementptr inbounds %struct.stmpe, ptr %29, i32 0, i32 16
  store i8 %28, ptr %30, align 4
  br label %31

31:                                               ; preds = %26, %23
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.6, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, ptr %2, align 4
  %36 = trunc i32 %35 to i8
  %37 = load ptr, ptr %11, align 4
  %38 = getelementptr inbounds %struct.stmpe, ptr %37, i32 0, i32 17
  store i8 %36, ptr %38, align 1
  br label %39

39:                                               ; preds = %34, %31
  %40 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.7, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, ptr %2, align 4
  %44 = trunc i32 %43 to i8
  %45 = load ptr, ptr %11, align 4
  %46 = getelementptr inbounds %struct.stmpe, ptr %45, i32 0, i32 18
  store i8 %44, ptr %46, align 2
  br label %47

47:                                               ; preds = %42, %39
  %48 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.8, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, ptr %2, align 4
  %52 = trunc i32 %51 to i8
  %53 = load ptr, ptr %11, align 4
  %54 = getelementptr inbounds %struct.stmpe, ptr %53, i32 0, i32 19
  store i8 %52, ptr %54, align 1
  br label %55

55:                                               ; preds = %50, %47
  %56 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.9, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, ptr %2, align 4
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 5
  store i8 %60, ptr %61, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.10, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, ptr %2, align 4
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 6
  store i8 %67, ptr %68, align 1
  br label %69

69:                                               ; preds = %65, %62
  %70 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.11, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, ptr %2, align 4
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 7
  store i8 %74, ptr %75, align 2
  br label %76

76:                                               ; preds = %72, %69
  %77 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.12, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, ptr %2, align 4
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 8
  store i8 %81, ptr %82, align 1
  br label %83

83:                                               ; preds = %79, %76
  %84 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.13, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %85 = icmp sgt i32 %84, -1
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, ptr %2, align 4
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 9
  store i8 %88, ptr %89, align 4
  br label %90

90:                                               ; preds = %86, %83, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %91 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 2
  store i32 -32, ptr %91, align 4
  %92 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 2, i32 0, i32 1
  store volatile ptr %92, ptr %92, align 4
  %93 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 2, i32 0, i32 1, i32 1
  store ptr %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 2, i32 0, i32 2
  store ptr @stmpe_work, ptr %94, align 4
  %95 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 2, i32 1
  call void @init_timer_key(ptr noundef %95, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #5
  %96 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %8, ptr noundef null, ptr noundef nonnull @stmpe_ts_handler, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %11) #5
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %8) #6
  br label %158

99:                                               ; preds = %90
  %100 = load ptr, ptr %11, align 4
  %101 = load ptr, ptr %19, align 4
  %102 = call i32 @stmpe_enable(ptr noundef %100, i32 noundef 12) #5
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.14) #6
  br label %158

105:                                              ; preds = %99
  %106 = call i32 @stmpe811_adc_common_init(ptr noundef %100) #5
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call i32 @stmpe_disable(ptr noundef %100, i32 noundef 12) #5
  br label %158

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 5
  %112 = load i8, ptr %111, align 4
  %113 = shl i8 %112, 6
  %114 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 6
  %115 = load i8, ptr %114, align 1
  %116 = shl i8 %115, 3
  %117 = and i8 %116, 56
  %118 = or i8 %117, %113
  %119 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 7
  %120 = load i8, ptr %119, align 2
  %121 = and i8 %120, 7
  %122 = or i8 %118, %121
  %123 = call i32 @stmpe_set_bits(ptr noundef %100, i8 noundef zeroext 65, i8 noundef zeroext -1, i8 noundef zeroext %122) #5
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %110
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.15) #6
  br label %158

126:                                              ; preds = %110
  %127 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 8
  %128 = load i8, ptr %127, align 1
  %129 = and i8 %128, 7
  %130 = call i32 @stmpe_set_bits(ptr noundef %100, i8 noundef zeroext 86, i8 noundef zeroext 7, i8 noundef zeroext %129) #5
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.15) #6
  br label %158

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 9
  %135 = load i8, ptr %134, align 4
  %136 = and i8 %135, 1
  %137 = call i32 @stmpe_set_bits(ptr noundef %100, i8 noundef zeroext 88, i8 noundef zeroext 1, i8 noundef zeroext %136) #5
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.15) #6
  br label %158

140:                                              ; preds = %133
  %141 = call i32 @stmpe_reg_write(ptr noundef %100, i8 noundef zeroext 74, i8 noundef zeroext 1) #5
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.16) #6
  br label %158

144:                                              ; preds = %140
  %145 = call i32 @stmpe_set_bits(ptr noundef %100, i8 noundef zeroext 64, i8 noundef zeroext 14, i8 noundef zeroext 0) #5
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.17) #6
  br label %158

148:                                              ; preds = %144
  store ptr @.str, ptr %14, align 8
  %149 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 1
  store ptr @.str.3, ptr %149, align 4
  %150 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 3
  store i16 24, ptr %150, align 4
  %151 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 31
  store ptr @stmpe_ts_open, ptr %151, align 4
  %152 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 32
  store ptr @stmpe_ts_close, ptr %152, align 8
  %153 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 40, i32 8
  store ptr %11, ptr %153, align 8
  call void @input_set_capability(ptr noundef nonnull %14, i32 noundef 1, i32 noundef 330) #5
  call void @input_set_abs_params(ptr noundef nonnull %14, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #5
  call void @input_set_abs_params(ptr noundef nonnull %14, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #5
  call void @input_set_abs_params(ptr noundef nonnull %14, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #5
  %154 = getelementptr inbounds %struct.stmpe_touch, ptr %11, i32 0, i32 4
  call void @touchscreen_parse_properties(ptr noundef nonnull %14, i1 noundef zeroext false, ptr noundef %154) #5
  %155 = call i32 @input_register_device(ptr noundef nonnull %14) #5
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %148
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #6
  br label %158

158:                                              ; preds = %157, %148, %147, %143, %139, %132, %125, %108, %104, %98, %13, %10, %1
  %159 = phi i32 [ %96, %98 ], [ %155, %157 ], [ %8, %1 ], [ -12, %10 ], [ -12, %13 ], [ 0, %148 ], [ %145, %147 ], [ %141, %143 ], [ %137, %139 ], [ %130, %132 ], [ %123, %125 ], [ %106, %108 ], [ %102, %104 ]
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe_ts_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @stmpe_disable(ptr noundef %4, i32 noundef 4) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmpe_work(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @stmpe_reg_read(ptr noundef %3, i8 noundef zeroext 11) #5
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %9, %7 ], [ 40, %1 ]
  %9 = add nsw i32 %8, -1
  %10 = load ptr, ptr %2, align 4
  %11 = tail call i32 @stmpe_reg_read(ptr noundef %10, i8 noundef zeroext 11) #5
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 21474800) #5
  %13 = and i32 %11, 1
  %14 = icmp ne i32 %13, 0
  %15 = icmp ne i32 %9, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %7, label %17

17:                                               ; preds = %7, %1
  %18 = load ptr, ptr %2, align 4
  %19 = tail call i32 @stmpe_set_bits(ptr noundef %18, i8 noundef zeroext 75, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 @stmpe_set_bits(ptr noundef %18, i8 noundef zeroext 75, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr i8, ptr %0, i32 -4
  %25 = load ptr, ptr %24, align 4
  tail call void @input_event(ptr noundef %25, i32 noundef 3, i32 noundef 24, i32 noundef 0) #5
  %26 = load ptr, ptr %24, align 4
  tail call void @input_event(ptr noundef %26, i32 noundef 1, i32 noundef 330, i32 noundef 0) #5
  %27 = load ptr, ptr %24, align 4
  tail call void @input_event(ptr noundef %27, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe_ts_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.stmpe_touch, ptr %1, i32 0, i32 2
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #5
  %6 = load ptr, ptr %1, align 4
  %7 = tail call i32 @stmpe_set_bits(ptr noundef %6, i8 noundef zeroext 64, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %8 = load ptr, ptr %1, align 4
  %9 = call i32 @stmpe_block_read(ptr noundef %8, i8 noundef zeroext 82, i8 noundef zeroext 4, ptr noundef nonnull %3) #5
  %10 = load i8, ptr %3, align 4
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 4
  %13 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = lshr i32 %15, 4
  %17 = or i32 %16, %12
  %18 = shl nuw nsw i32 %15, 8
  %19 = and i32 %18, 3840
  %20 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = or i32 %19, %22
  %24 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.stmpe_touch, ptr %1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.stmpe_touch, ptr %1, i32 0, i32 4
  call void @touchscreen_report_pos(ptr noundef %28, ptr noundef %29, i32 noundef %17, i32 noundef %23, i1 noundef zeroext false) #5
  %30 = load ptr, ptr %27, align 4
  call void @input_event(ptr noundef %30, i32 noundef 3, i32 noundef 24, i32 noundef %26) #5
  %31 = load ptr, ptr %27, align 4
  call void @input_event(ptr noundef %31, i32 noundef 1, i32 noundef 330, i32 noundef 1) #5
  %32 = load ptr, ptr %27, align 4
  call void @input_event(ptr noundef %32, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %33 = load ptr, ptr %1, align 4
  %34 = call i32 @stmpe_set_bits(ptr noundef %33, i8 noundef zeroext 75, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = call i32 @stmpe_set_bits(ptr noundef %33, i8 noundef zeroext 75, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %38

38:                                               ; preds = %36, %2
  %39 = load ptr, ptr %1, align 4
  %40 = call i32 @stmpe_set_bits(ptr noundef %39, i8 noundef zeroext 64, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  %41 = load ptr, ptr @system_wq, align 4
  %42 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %41, ptr noundef %4, i32 noundef 5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe_ts_open(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @stmpe_set_bits(ptr noundef %4, i8 noundef zeroext 75, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = tail call i32 @stmpe_set_bits(ptr noundef %4, i8 noundef zeroext 75, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 4
  %12 = tail call i32 @stmpe_set_bits(ptr noundef %11, i8 noundef zeroext 64, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  br label %13

13:                                               ; preds = %10, %7, %1
  %14 = phi i32 [ %12, %10 ], [ %8, %7 ], [ %5, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmpe_ts_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stmpe_touch, ptr %3, i32 0, i32 2
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #5
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 @stmpe_set_bits(ptr noundef %6, i8 noundef zeroext 64, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_reg_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_set_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_block_read(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe811_adc_common_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_reg_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
