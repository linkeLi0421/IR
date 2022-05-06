; ModuleID = '/llk/IR/drivers/iio/adc/bcm_iproc_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/bcm_iproc_adc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.5 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.iproc_adc_priv = type { ptr, ptr, %struct.mutex, i32, i32, i32, %struct.completion }

@__initcall__kmod_bcm_iproc_adc__170_623_iproc_adc_driver_init6 = internal global ptr @iproc_adc_driver_init, section ".initcall6.init", align 4
@iproc_adc_driver = internal global %struct.platform_driver { ptr @iproc_adc_probe, ptr @iproc_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @iproc_adc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_iproc_adc_driver_exit = internal global ptr @iproc_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [63 x i8] c"bcm_iproc_adc.description=Broadcom iProc ADC controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [78 x i8] c"bcm_iproc_adc.author=Raveendra Padasalagi <raveendra.padasalagi@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [49 x i8] c"bcm_iproc_adc.file=drivers/iio/adc/bcm_iproc_adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [29 x i8] c"bcm_iproc_adc.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"iproc-static-adc\00", align 1
@iproc_adc_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-static-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to allocate iio device\0A\00", align 1
@iproc_adc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"&adc_priv->mutex\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"adc-syscon\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to get handle for tsc syscon\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"tsc_clk\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"failed getting clock tsc_clk\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to write IPROC_REGCTL2 %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"iproc-adc\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"request_irq error %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"clk_prepare_enable failed %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"failed to enable adc %d\0A\00", align 1
@iproc_adc_iio_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @iproc_adc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@iproc_adc_iio_channels = internal constant [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.5 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.21, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.5 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.22, i8 2 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.5 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.23, i8 2 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.5 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 2 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.5 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.25, i8 2 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.5 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.26, i8 2 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.5 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.27, i8 2 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.5 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.28, i8 2 }], align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"iio_device_register failed:err %d\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"No data rcvd on channel %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"failed to write IPROC_ANALOG_CONTROL %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"failed to read IPROC_REGCTL2 %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"failed to write ADC_CHANNEL_INTERRUPT_MASK %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"failed to write ADC_CHANNEL_INTERRUPT_STATUS %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.19 = private unnamed_addr constant [43 x i8] c"IntMask set failed. Read will likely fail.\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Timed out waiting for ADC data!\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"adc0\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"adc1\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"adc2\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"adc3\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"adc4\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"adc5\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"adc6\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"adc7\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_iproc_adc_driver_exit, ptr @__initcall__kmod_bcm_iproc_adc__170_623_iproc_adc_driver_init6, ptr @iproc_adc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @iproc_adc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @iproc_adc_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @iproc_adc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @iproc_adc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_adc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @devm_iio_device_alloc(ptr noundef %4, i32 noundef 56) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #6
  br label %140

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 19
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %11, align 8
  %12 = getelementptr inbounds %struct.iproc_adc_priv, ptr %10, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.2, ptr noundef nonnull @iproc_adc_probe.__key) #5
  %13 = getelementptr inbounds %struct.iproc_adc_priv, ptr %10, i32 0, i32 6
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.iproc_adc_priv, ptr %10, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %14, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #5
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %16, ptr noundef nonnull @.str.3) #5
  store ptr %17, ptr %10, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #6
  %20 = load ptr, ptr %10, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %140

22:                                               ; preds = %8
  %23 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.5) #5
  %24 = getelementptr inbounds %struct.iproc_adc_priv, ptr %10, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #6
  %27 = load ptr, ptr %24, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %140

29:                                               ; preds = %22
  %30 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %31 = getelementptr inbounds %struct.iproc_adc_priv, ptr %10, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  %32 = icmp slt i32 %30, 1
  br i1 %32, label %140, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %10, align 4
  %35 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %35) #6
  br label %140

38:                                               ; preds = %33
  %39 = load i32, ptr %31, align 4
  %40 = tail call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %39, ptr noundef nonnull @iproc_adc_interrupt_handler, ptr noundef nonnull @iproc_adc_interrupt_thread, i32 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull %5) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %40) #6
  br label %140

43:                                               ; preds = %38
  %44 = load ptr, ptr %24, align 4
  %45 = tail call i32 @clk_prepare(ptr noundef %44) #5
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = tail call i32 @clk_enable(ptr noundef %44) #5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  tail call void @clk_unprepare(ptr noundef %44) #5
  br label %51

51:                                               ; preds = %50, %43
  %52 = phi i32 [ %48, %50 ], [ %45, %43 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %52) #6
  br label %140

53:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %54 = load ptr, ptr %9, align 8
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 28, i32 noundef 14336, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.15, i32 noundef %56) #6
  br label %113

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.iproc_adc_priv, ptr %54, i32 0, i32 4
  store i32 -1, ptr %61, align 4
  %62 = load ptr, ptr %54, align 4
  %63 = call i32 @regmap_read(ptr noundef %62, i32 noundef 4, ptr noundef nonnull %3) #5
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.16, i32 noundef %63) #6
  br label %113

67:                                               ; preds = %60
  %68 = load i32, ptr %3, align 4
  %69 = and i32 %68, -57
  store i32 %69, ptr %3, align 4
  %70 = load ptr, ptr %54, align 4
  %71 = call i32 @regmap_write(ptr noundef %70, i32 noundef 4, i32 noundef %69) #5
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.7, i32 noundef %71) #6
  br label %113

75:                                               ; preds = %67
  %76 = load ptr, ptr %54, align 4
  %77 = call i32 @regmap_read(ptr noundef %76, i32 noundef 4, ptr noundef nonnull %3) #5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.16, i32 noundef %77) #6
  br label %113

81:                                               ; preds = %75
  %82 = load i32, ptr %3, align 4
  %83 = or i32 %82, 131072
  store i32 %83, ptr %3, align 4
  %84 = load ptr, ptr %54, align 4
  %85 = call i32 @regmap_write(ptr noundef %84, i32 noundef 4, i32 noundef %83) #5
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 14
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %115, label %97

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.7, i32 noundef %85) #6
  br label %113

93:                                               ; preds = %106
  %94 = add nuw i32 %98, 1
  %95 = load i32, ptr %88, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %93, %87
  %98 = phi i32 [ %94, %93 ], [ 0, %87 ]
  %99 = load ptr, ptr %54, align 4
  %100 = shl i32 %98, 5
  %101 = add i32 %100, 2064
  %102 = call i32 @regmap_write(ptr noundef %99, i32 noundef %101, i32 noundef 0) #5
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.17, i32 noundef %102) #6
  br label %113

106:                                              ; preds = %97
  %107 = load ptr, ptr %54, align 4
  %108 = add i32 %100, 2060
  %109 = call i32 @regmap_write(ptr noundef %107, i32 noundef %108, i32 noundef 0) #5
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %93, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.18, i32 noundef %109) #6
  br label %113

113:                                              ; preds = %111, %104, %91, %79, %73, %65, %58
  %114 = phi i32 [ %109, %111 ], [ %102, %104 ], [ %85, %91 ], [ %77, %79 ], [ %71, %73 ], [ %63, %65 ], [ %56, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %114) #6
  br label %137

115:                                              ; preds = %93, %87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %116 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 15
  store ptr @.str, ptr %116, align 8
  %117 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 17
  store ptr @iproc_adc_iio_info, ptr %117, align 8
  store i32 1, ptr %5, align 8
  %118 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 13
  store ptr @iproc_adc_iio_channels, ptr %118, align 8
  store i32 8, ptr %88, align 4
  %119 = call i32 @__iio_device_register(ptr noundef nonnull %5, ptr noundef null) #5
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %140, label %121

121:                                              ; preds = %115
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %119) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %122 = load ptr, ptr %9, align 8
  %123 = load ptr, ptr %122, align 4
  %124 = call i32 @regmap_read(ptr noundef %123, i32 noundef 4, ptr noundef nonnull %2) #5
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.16, i32 noundef %124) #6
  br label %136

128:                                              ; preds = %121
  %129 = load i32, ptr %2, align 4
  %130 = and i32 %129, -131073
  store i32 %130, ptr %2, align 4
  %131 = load ptr, ptr %122, align 4
  %132 = call i32 @regmap_write(ptr noundef %131, i32 noundef 4, i32 noundef %130) #5
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.7, i32 noundef %132) #6
  br label %136

136:                                              ; preds = %134, %128, %126
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %137

137:                                              ; preds = %136, %113
  %138 = phi i32 [ %114, %113 ], [ %119, %136 ]
  %139 = load ptr, ptr %24, align 4
  call void @clk_disable(ptr noundef %139) #5
  call void @clk_unprepare(ptr noundef %139) #5
  br label %140

140:                                              ; preds = %137, %115, %51, %42, %37, %29, %26, %19, %7
  %141 = phi i32 [ %21, %19 ], [ %28, %26 ], [ %35, %37 ], [ %40, %42 ], [ %52, %51 ], [ %138, %137 ], [ -12, %7 ], [ -19, %29 ], [ 0, %115 ]
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_adc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  tail call void @iio_device_unregister(ptr noundef %4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 4, ptr noundef nonnull %2) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.16, i32 noundef %9) #6
  br label %21

13:                                               ; preds = %1
  %14 = load i32, ptr %2, align 4
  %15 = and i32 %14, -131073
  store i32 %15, ptr %2, align 4
  %16 = load ptr, ptr %7, align 4
  %17 = call i32 @regmap_write(ptr noundef %16, i32 noundef 4, i32 noundef %15) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.7, i32 noundef %17) #6
  br label %21

21:                                               ; preds = %19, %13, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %22 = getelementptr inbounds %struct.iproc_adc_priv, ptr %6, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  call void @clk_disable(ptr noundef %23) #5
  call void @clk_unprepare(ptr noundef %23) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_adc_interrupt_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 16, ptr noundef nonnull %3) #5
  %10 = load i32, ptr %3, align 4
  %11 = lshr i32 %10, 9
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %62, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.iproc_adc_priv, ptr %7, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 5
  %19 = add i32 %18, 2060
  %20 = call i32 @regmap_read(ptr noundef %15, i32 noundef %19, ptr noundef nonnull %5) #5
  %21 = load i32, ptr %5, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %14
  %25 = load ptr, ptr %7, align 4
  %26 = load i32, ptr %16, align 4
  %27 = shl i32 %26, 5
  %28 = add i32 %27, 2056
  %29 = call i32 @regmap_read(ptr noundef %25, i32 noundef %28, ptr noundef nonnull %4) #5
  %30 = load i32, ptr %4, align 4
  %31 = and i32 %30, 510
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %24
  %34 = load ptr, ptr %7, align 4
  %35 = load i32, ptr %16, align 4
  %36 = shl i32 %35, 5
  %37 = add i32 %36, 2068
  %38 = getelementptr inbounds %struct.iproc_adc_priv, ptr %7, i32 0, i32 4
  %39 = call i32 @regmap_read(ptr noundef %34, i32 noundef %37, ptr noundef %38) #5
  %40 = getelementptr inbounds %struct.iproc_adc_priv, ptr %7, i32 0, i32 6
  call void @complete(ptr noundef %40) #5
  br label %44

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  %43 = load i32, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.14, i32 noundef %43) #6
  br label %44

44:                                               ; preds = %41, %33
  %45 = load ptr, ptr %7, align 4
  %46 = load i32, ptr %16, align 4
  %47 = shl i32 %46, 5
  %48 = add i32 %47, 2064
  %49 = load i32, ptr %5, align 4
  %50 = and i32 %49, -2
  %51 = call i32 @regmap_write(ptr noundef %45, i32 noundef %48, i32 noundef %50) #5
  %52 = load i32, ptr %5, align 4
  br label %53

53:                                               ; preds = %44, %14
  %54 = phi i32 [ %52, %44 ], [ %21, %14 ]
  %55 = load ptr, ptr %7, align 4
  %56 = load i32, ptr %16, align 4
  %57 = shl i32 %56, 5
  %58 = add i32 %57, 2060
  %59 = call i32 @regmap_write(ptr noundef %55, i32 noundef %58, i32 noundef %54) #5
  %60 = load ptr, ptr %7, align 4
  %61 = call i32 @regmap_write(ptr noundef %60, i32 noundef 16, i32 noundef %12) #5
  br label %62

62:                                               ; preds = %53, %2
  %63 = phi i32 [ 1, %53 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_adc_interrupt_thread(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 16, ptr noundef nonnull %3) #5
  %9 = load ptr, ptr %6, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 12, ptr noundef nonnull %4) #5
  %11 = load i32, ptr %3, align 4
  %12 = load i32, ptr %4, align 4
  %13 = and i32 %12, %11
  %14 = and i32 %13, 130560
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 0, i32 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_adc_read_raw(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #2 {
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  switch i32 %4, label %106 [
    i32 0, label %18
    i32 2, label %102
  ]

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #5
  store i32 0, ptr %17, align 4, !annotation !8
  %21 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.iproc_adc_priv, ptr %22, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %23) #5
  %24 = getelementptr inbounds %struct.iproc_adc_priv, ptr %22, i32 0, i32 4
  store i32 -1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.iproc_adc_priv, ptr %22, i32 0, i32 5
  store i32 %20, ptr %25, align 4
  %26 = getelementptr inbounds %struct.iproc_adc_priv, ptr %22, i32 0, i32 6
  store i32 0, ptr %26, align 4
  %27 = load ptr, ptr %22, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 16, i32 noundef 130568, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  store i32 5, ptr %16, align 4
  %29 = load ptr, ptr %22, align 4
  %30 = shl i32 %20, 5
  %31 = add i32 %30, 2048
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %31, i32 noundef 255, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %33 = load ptr, ptr %22, align 4
  %34 = add i32 %30, 2052
  %35 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef %34, i32 noundef 63, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %36 = load ptr, ptr %22, align 4
  %37 = add i32 %30, 2064
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %37, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %39 = load ptr, ptr %22, align 4
  %40 = call i32 @regmap_read(ptr noundef %39, i32 noundef 12, ptr noundef nonnull %16) #5
  %41 = shl i32 512, %20
  %42 = load i32, ptr %16, align 4
  %43 = or i32 %42, %41
  store i32 %43, ptr %16, align 4
  %44 = load ptr, ptr %22, align 4
  %45 = call i32 @regmap_write(ptr noundef %44, i32 noundef 12, i32 noundef %43) #5
  %46 = load ptr, ptr %22, align 4
  %47 = call i32 @regmap_read(ptr noundef %46, i32 noundef 12, ptr noundef nonnull %17) #5
  %48 = load i32, ptr %17, align 4
  %49 = load i32, ptr %16, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %66, label %51

51:                                               ; preds = %54, %18
  %52 = phi i32 [ %55, %54 ], [ 0, %18 ]
  %53 = icmp eq i32 %52, 10
  br i1 %53, label %64, label %54

54:                                               ; preds = %51
  %55 = add nuw nsw i32 %52, 1
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %56(i32 noundef 2147480) #5
  %57 = load ptr, ptr %22, align 4
  %58 = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 12, i32 noundef 130560, i32 noundef %41, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %59 = load ptr, ptr %22, align 4
  %60 = call i32 @regmap_read(ptr noundef %59, i32 noundef 12, ptr noundef nonnull %17) #5
  %61 = load i32, ptr %17, align 4
  %62 = load i32, ptr %16, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %66, label %51

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.19) #6
  br label %71

66:                                               ; preds = %54, %18
  %67 = load ptr, ptr %22, align 4
  %68 = call i32 @regmap_read(ptr noundef %67, i32 noundef 12, ptr noundef nonnull %17) #5
  %69 = call i32 @wait_for_completion_timeout(ptr noundef %26, i32 noundef 200) #5
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %66, %64
  %72 = phi i32 [ -5, %64 ], [ -110, %66 ]
  %73 = load ptr, ptr %22, align 4
  %74 = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 12, i32 noundef 130560, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %75 = load ptr, ptr %22, align 4
  %76 = call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 16, i32 noundef 130560, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %77 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.20) #6
  %78 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 0, ptr %6, align 4, !annotation !8
  %79 = load ptr, ptr %78, align 4
  %80 = call i32 @regmap_read(ptr noundef %79, i32 noundef 0, ptr noundef nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 0, ptr %7, align 4, !annotation !8
  %81 = load ptr, ptr %78, align 4
  %82 = call i32 @regmap_read(ptr noundef %81, i32 noundef 4, ptr noundef nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  store i32 0, ptr %8, align 4, !annotation !8
  %83 = load ptr, ptr %78, align 4
  %84 = call i32 @regmap_read(ptr noundef %83, i32 noundef 8, ptr noundef nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #5
  store i32 0, ptr %9, align 4, !annotation !8
  %85 = load ptr, ptr %78, align 4
  %86 = call i32 @regmap_read(ptr noundef %85, i32 noundef 12, ptr noundef nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #5
  store i32 0, ptr %10, align 4, !annotation !8
  %87 = load ptr, ptr %78, align 4
  %88 = call i32 @regmap_read(ptr noundef %87, i32 noundef 16, ptr noundef nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #5
  store i32 0, ptr %11, align 4, !annotation !8
  %89 = load ptr, ptr %78, align 4
  %90 = call i32 @regmap_read(ptr noundef %89, i32 noundef 20, ptr noundef nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #5
  store i32 0, ptr %12, align 4, !annotation !8
  %91 = load ptr, ptr %78, align 4
  %92 = call i32 @regmap_read(ptr noundef %91, i32 noundef 28, ptr noundef nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #5
  store i32 0, ptr %13, align 4, !annotation !8
  %93 = load ptr, ptr %78, align 4
  %94 = call i32 @regmap_read(ptr noundef %93, i32 noundef 32, ptr noundef nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #5
  store i32 0, ptr %14, align 4, !annotation !8
  %95 = load ptr, ptr %78, align 4
  %96 = call i32 @regmap_read(ptr noundef %95, i32 noundef 56, ptr noundef nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #5
  store i32 0, ptr %15, align 4, !annotation !8
  %97 = load ptr, ptr %78, align 4
  %98 = call i32 @regmap_read(ptr noundef %97, i32 noundef 60, ptr noundef nonnull %15) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #5
  call void @mutex_unlock(ptr noundef %23) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #5
  br label %106

99:                                               ; preds = %66
  %100 = load i32, ptr %24, align 4
  call void @mutex_unlock(ptr noundef %23) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #5
  %101 = and i32 %100, 65535
  store i32 %101, ptr %2, align 4
  br label %106

102:                                              ; preds = %5
  %103 = load i32, ptr %1, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 1800, ptr %2, align 4
  store i32 10, ptr %3, align 4
  br label %106

106:                                              ; preds = %105, %102, %99, %71, %5
  %107 = phi i32 [ 11, %105 ], [ 1, %99 ], [ -22, %102 ], [ -22, %5 ], [ %72, %71 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

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
