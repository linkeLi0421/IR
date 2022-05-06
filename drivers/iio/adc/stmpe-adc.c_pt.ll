; ModuleID = '/llk/IR/drivers/iio/adc/stmpe-adc.c_pt.bc'
source_filename = "../drivers/iio/adc/stmpe-adc.c"
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.stmpe_adc = type { ptr, ptr, ptr, %struct.mutex, [9 x %struct.iio_chan_spec], %struct.completion, i8, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.5 = type { i8, i8, i8, i8, i8, i32 }
%struct.stmpe = type { ptr, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, [2 x i8], [2 x i8], ptr, i8, i8, i8, i8 }

@__mod_of__stmpe_adc_ids_device_table = dso_local local_unnamed_addr constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stmpe-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author170 = internal constant [47 x i8] c"author=Stefan Agner <stefan.agner@toradex.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [32 x i8] c"description=STMPEXXX ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias173 = internal constant [25 x i8] c"alias=platform:stmpe-adc\00", section ".modinfo", align 1
@stmpe_adc_driver = internal global %struct.platform_driver { ptr @stmpe_adc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmpe_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"stmpe-adc\00", align 1
@stmpe_adc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @stmpe_adc_resume, ptr null, ptr @stmpe_adc_resume, ptr null, ptr @stmpe_adc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"STMPE_ADC\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed allocating iio device\0A\00", align 1
@stmpe_adc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"&info->lock\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed requesting irq, irq = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"STMPE_TEMP_SENS\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"failed requesting irq for temp sensor, irq = %d\0A\00", align 1
@stmpe_adc_iio_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @stmpe_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"no device tree node found\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"st,norequest-mask\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Could not enable clock for ADC\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias173, ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_license172], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stmpe_adc_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stmpe_adc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe_adc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %4 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.1) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %92, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = tail call ptr @devm_iio_device_alloc(ptr noundef %7, i32 noundef 848) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #7
  br label %92

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 19
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.stmpe_adc, ptr %13, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef nonnull @stmpe_adc_probe.__key) #6
  %15 = getelementptr inbounds %struct.stmpe_adc, ptr %13, i32 0, i32 5
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.stmpe_adc, ptr %13, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %16, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #6
  %17 = tail call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %4, ptr noundef null, ptr noundef nonnull @stmpe_adc_isr, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef %13) #6
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef %4) #7
  br label %92

20:                                               ; preds = %11
  %21 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.5) #6
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = tail call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %21, ptr noundef null, ptr noundef nonnull @stmpe_adc_isr, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef %13) #6
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef %21) #7
  br label %27

27:                                               ; preds = %26, %23, %20
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %28, align 8
  %29 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load ptr, ptr %7, align 4
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi ptr [ %33, %32 ], [ %30, %27 ]
  %36 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 15
  store ptr %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 17
  store ptr @stmpe_adc_iio_info, ptr %37, align 8
  store i32 1, ptr %8, align 8
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 8
  %41 = load ptr, ptr %40, align 8
  store ptr %41, ptr %13, align 4
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.7) #7
  br label %46

46:                                               ; preds = %45, %34
  %47 = call i32 @of_property_read_variable_u32_array(ptr noundef %43, ptr noundef nonnull @.str.8, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %48 = load i32, ptr %2, align 4
  store i32 %48, ptr %3, align 4
  %49 = call i32 @_find_next_zero_bit_le(ptr noundef nonnull %3, i32 noundef 8, i32 noundef 0) #6
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %65

51:                                               ; preds = %51, %46
  %52 = phi i32 [ %63, %51 ], [ %49, %46 ]
  %53 = phi i32 [ %61, %51 ], [ 0, %46 ]
  %54 = getelementptr %struct.stmpe_adc, ptr %13, i32 0, i32 4, i32 %53
  store i32 0, ptr %54, align 4
  %55 = getelementptr %struct.stmpe_adc, ptr %13, i32 0, i32 4, i32 %53, i32 6
  store i32 1, ptr %55, align 4
  %56 = getelementptr %struct.stmpe_adc, ptr %13, i32 0, i32 4, i32 %53, i32 8
  store i32 4, ptr %56, align 4
  %57 = getelementptr %struct.stmpe_adc, ptr %13, i32 0, i32 4, i32 %53, i32 19
  %58 = load i8, ptr %57, align 4
  %59 = or i8 %58, 2
  store i8 %59, ptr %57, align 4
  %60 = getelementptr %struct.stmpe_adc, ptr %13, i32 0, i32 4, i32 %53, i32 1
  store i32 %52, ptr %60, align 4
  %61 = add i32 %53, 1
  %62 = add nsw i32 %52, 1
  %63 = call i32 @_find_next_zero_bit_le(ptr noundef nonnull %3, i32 noundef 8, i32 noundef %62) #6
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %51, label %65

65:                                               ; preds = %51, %46
  %66 = phi i32 [ 0, %46 ], [ %61, %51 ]
  %67 = phi i32 [ %49, %46 ], [ %63, %51 ]
  %68 = getelementptr inbounds %struct.stmpe_adc, ptr %13, i32 0, i32 4
  %69 = getelementptr %struct.stmpe_adc, ptr %13, i32 0, i32 4, i32 %66
  store i32 9, ptr %69, align 4
  %70 = getelementptr %struct.stmpe_adc, ptr %13, i32 0, i32 4, i32 %66, i32 6
  store i32 2, ptr %70, align 4
  %71 = getelementptr %struct.stmpe_adc, ptr %13, i32 0, i32 4, i32 %66, i32 19
  %72 = load i8, ptr %71, align 4
  %73 = or i8 %72, 2
  store i8 %73, ptr %71, align 4
  %74 = getelementptr %struct.stmpe_adc, ptr %13, i32 0, i32 4, i32 %66, i32 1
  store i32 %67, ptr %74, align 4
  %75 = add i32 %66, 1
  %76 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 13
  store ptr %68, ptr %76, align 8
  %77 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 14
  store i32 %75, ptr %77, align 4
  %78 = call fastcc i32 @stmpe_adc_init_hw(ptr noundef %13)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %65
  %81 = load ptr, ptr %13, align 4
  %82 = load i32, ptr %2, align 4
  %83 = trunc i32 %82 to i8
  %84 = xor i8 %83, -1
  %85 = call i32 @stmpe_reg_write(ptr noundef %81, i8 noundef zeroext 14, i8 noundef zeroext %84) #6
  %86 = load ptr, ptr %13, align 4
  %87 = load i32, ptr %2, align 4
  %88 = trunc i32 %87 to i8
  %89 = xor i8 %88, -1
  %90 = call i32 @stmpe_reg_write(ptr noundef %86, i8 noundef zeroext 15, i8 noundef zeroext %89) #6
  %91 = call i32 @__devm_iio_device_register(ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull @__this_module) #6
  br label %92

92:                                               ; preds = %80, %65, %19, %10, %1
  %93 = phi i32 [ %17, %19 ], [ %91, %80 ], [ -12, %10 ], [ %4, %1 ], [ %78, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %93
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe_adc_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = getelementptr inbounds %struct.stmpe_adc, ptr %1, i32 0, i32 6
  %5 = load i8, ptr %4, align 4
  %6 = icmp ult i8 %5, 8
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = tail call i32 @stmpe_reg_read(ptr noundef %8, i8 noundef zeroext 15) #6
  %10 = load i8, ptr %4, align 4
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 1, %11
  %13 = and i32 %9, 255
  %14 = and i32 %13, %12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr %1, align 4
  %18 = shl i8 %10, 1
  %19 = add i8 %18, 48
  %20 = call i32 @stmpe_block_read(ptr noundef %17, i8 noundef zeroext %19, i8 noundef zeroext 2, ptr noundef nonnull %3) #6
  %21 = load ptr, ptr %1, align 4
  %22 = trunc i32 %9 to i8
  %23 = call i32 @stmpe_reg_write(ptr noundef %21, i8 noundef zeroext 15, i8 noundef zeroext %22) #6
  br label %29

24:                                               ; preds = %2
  %25 = icmp eq i8 %5, 8
  br i1 %25, label %26, label %35

26:                                               ; preds = %24
  %27 = load ptr, ptr %1, align 4
  %28 = call i32 @stmpe_block_read(ptr noundef %27, i8 noundef zeroext 97, i8 noundef zeroext 2, ptr noundef nonnull %3) #6
  br label %29

29:                                               ; preds = %26, %16
  %30 = load i16, ptr %3, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.stmpe_adc, ptr %1, i32 0, i32 7
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.stmpe_adc, ptr %1, i32 0, i32 5
  call void @complete(ptr noundef %34) #6
  br label %35

35:                                               ; preds = %29, %24, %7
  %36 = phi i32 [ 1, %29 ], [ 0, %24 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  ret i32 %36
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stmpe_adc_init_hw(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 @stmpe_enable(ptr noundef %2, i32 noundef 8) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stmpe, ptr %2, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10) #7
  br label %16

8:                                                ; preds = %1
  %9 = tail call i32 @stmpe811_adc_common_init(ptr noundef %2) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @stmpe_disable(ptr noundef %2, i32 noundef 8) #6
  br label %16

13:                                               ; preds = %8
  %14 = tail call i32 @stmpe_reg_write(ptr noundef %2, i8 noundef zeroext 99, i8 noundef zeroext 0) #6
  %15 = tail call i32 @stmpe_reg_write(ptr noundef %2, i8 noundef zeroext 100, i8 noundef zeroext 0) #6
  br label %16

16:                                               ; preds = %13, %11, %5
  %17 = phi i32 [ %3, %5 ], [ %9, %11 ], [ 0, %13 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_reg_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_reg_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_block_read(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe_read_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  switch i32 %4, label %65 [
    i32 0, label %8
    i32 1, label %8
    i32 2, label %59
  ]

8:                                                ; preds = %5, %5
  %9 = load i32, ptr %1, align 4
  switch i32 %9, label %65 [
    i32 0, label %10
    i32 9, label %36
  ]

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.stmpe_adc, ptr %7, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %11) #6
  %12 = getelementptr inbounds %struct.stmpe_adc, ptr %7, i32 0, i32 5
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds %struct.stmpe_adc, ptr %7, i32 0, i32 6
  store i8 %15, ptr %16, align 4
  %17 = and i32 %14, 255
  %18 = icmp ugt i32 %17, 7
  br i1 %18, label %56, label %19

19:                                               ; preds = %10
  %20 = load ptr, ptr %7, align 4
  %21 = shl nuw nsw i32 1, %17
  %22 = trunc i32 %21 to i8
  %23 = tail call i32 @stmpe_reg_write(ptr noundef %20, i8 noundef zeroext 34, i8 noundef zeroext %22) #6
  %24 = tail call i32 @wait_for_completion_timeout(ptr noundef %12, i32 noundef 100) #6
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load ptr, ptr %7, align 4
  %28 = load i8, ptr %16, align 4
  %29 = zext i8 %28 to i32
  %30 = shl nuw i32 1, %29
  %31 = trunc i32 %30 to i8
  %32 = tail call i32 @stmpe_reg_write(ptr noundef %27, i8 noundef zeroext 15, i8 noundef zeroext %31) #6
  br label %56

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.stmpe_adc, ptr %7, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %2, align 4
  br label %56

36:                                               ; preds = %8
  %37 = getelementptr inbounds %struct.stmpe_adc, ptr %7, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %37) #6
  %38 = getelementptr inbounds %struct.stmpe_adc, ptr %7, i32 0, i32 5
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.stmpe_adc, ptr %7, i32 0, i32 6
  store i8 %41, ptr %42, align 4
  %43 = and i32 %40, 255
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load ptr, ptr %7, align 4
  %47 = tail call i32 @stmpe_reg_write(ptr noundef %46, i8 noundef zeroext 96, i8 noundef zeroext 11) #6
  %48 = tail call i32 @wait_for_completion_timeout(ptr noundef %38, i32 noundef 100) #6
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.stmpe_adc, ptr %7, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = mul i32 %52, 449960
  %54 = lshr i32 %53, 10
  %55 = add nsw i32 %54, -273150
  store i32 %55, ptr %2, align 4
  br label %56

56:                                               ; preds = %50, %45, %36, %33, %26, %10
  %57 = phi ptr [ %11, %10 ], [ %11, %26 ], [ %11, %33 ], [ %37, %36 ], [ %37, %45 ], [ %37, %50 ]
  %58 = phi i32 [ -22, %10 ], [ -110, %26 ], [ 1, %33 ], [ -22, %36 ], [ -110, %45 ], [ 1, %50 ]
  tail call void @mutex_unlock(ptr noundef %57) #6
  br label %65

59:                                               ; preds = %5
  store i32 3300, ptr %2, align 4
  %60 = load ptr, ptr %7, align 4
  %61 = getelementptr inbounds %struct.stmpe, ptr %60, i32 0, i32 17
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %63, i32 10, i32 12
  store i32 %64, ptr %3, align 4
  br label %65

65:                                               ; preds = %59, %56, %8, %5
  %66 = phi i32 [ 11, %59 ], [ -22, %8 ], [ %58, %56 ], [ -22, %5 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe811_adc_common_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe_adc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = tail call fastcc i32 @stmpe_adc_init_hw(ptr noundef %5)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
