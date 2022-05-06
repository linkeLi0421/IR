; ModuleID = '/llk/IR/drivers/iio/adc/vf610_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/vf610_adc.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.72, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.72 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
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
%struct.vf610_adc = type { ptr, ptr, ptr, i32, i32, ptr, [3 x i32], %struct.vf610_adc_feature, [5 x i32], %struct.completion, %struct.anon.71 }
%struct.vf610_adc_feature = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.anon.71 = type { i16, i64 }

@vf610_adc_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [42 x i8] c"author=Fugang Duan <B38611@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [39 x i8] c"description=Freescale VF610 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@vf610_adc_driver = internal global %struct.platform_driver { ptr @vf610_adc_probe, ptr @vf610_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vf610_adc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vf610_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"vf610-adc\00", align 1
@vf610_adc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @vf610_adc_suspend, ptr @vf610_adc_resume, ptr @vf610_adc_suspend, ptr @vf610_adc_resume, ptr @vf610_adc_suspend, ptr @vf610_adc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed allocating iio device\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed requesting irq, irq = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed getting clock, err = %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"fsl,adck-max-frequency\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"min-sample-time\00", align 1
@vf610_adc_iio_info = internal constant %struct.iio_info { ptr null, ptr @vf610_attribute_group, ptr @vf610_read_raw, ptr null, ptr null, ptr @vf610_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vf610_adc_reg_access, ptr null, ptr null, ptr null }, align 4
@vf610_adc_iio_channels = internal constant [18 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 4, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 5, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 6, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 7, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 0, i32 8, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 0, i32 9, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 0, i32 10, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 0, i32 11, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 0, i32 12, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 0, i32 13, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 0, i32 14, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 0, i32 15, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @vf610_ext_info, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 9, i32 26, i32 0, i32 0, i32 26, %struct.anon.72 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 32, %struct.anon.72 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"Could not prepare or enable the clock.\0A\00", align 1
@iio_triggered_buffer_setup_ops = internal constant %struct.iio_buffer_setup_ops { ptr null, ptr @vf610_adc_buffer_postenable, ptr @vf610_adc_buffer_predisable, ptr null, ptr @iio_validate_scan_mask_onehot }, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"Couldn't initialise the buffer\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Couldn't register the device.\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@vf610_attribute_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @vf610_attributes, ptr null }, align 4
@vf610_attributes = internal global [2 x ptr] [ptr @iio_dev_attr_sampling_frequency_available, ptr null], align 4
@iio_dev_attr_sampling_frequency_available = internal global %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @vf610_show_samp_freq_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, align 8
@.str.12 = private unnamed_addr constant [29 x i8] c"sampling_frequency_available\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"error resolution mode\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"error clk divider\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"error in sample time select\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"error hardware sample average select\0A\00", align 1
@vf610_ext_info = internal constant [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.18, i32 2, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @vf610_conversion_mode to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"conversion_mode\00", align 1
@vf610_conversion_mode = internal constant %struct.iio_enum { ptr @vf610_conv_modes, i32 3, ptr @vf610_set_conversion_mode, ptr @vf610_get_conversion_mode }, align 4
@vf610_conv_modes = internal constant [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21], align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"high-speed\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"low-power\00", align 1
@vf610_lst_adder = internal unnamed_addr constant [8 x i32] [i32 3, i32 5, i32 7, i32 9, i32 13, i32 17, i32 21, i32 25], align 4
@.str.22 = private unnamed_addr constant [25 x i8] c"error voltage reference\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Timeout for adc calibration\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"ADC calibration failed\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_of__vf610_adc_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @vf610_adc_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vf610_adc_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @vf610_adc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_adc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @devm_iio_device_alloc(ptr noundef %2, i32 noundef 128) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  br label %169

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %10 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = ptrtoint ptr %9 to i32
  br label %169

14:                                               ; preds = %6
  %15 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %169, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %8, align 8
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load ptr, ptr %2, align 4
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %23, %22 ], [ %20, %17 ]
  %26 = tail call i32 @devm_request_threaded_irq(ptr noundef %18, i32 noundef %15, ptr noundef nonnull @vf610_adc_isr, ptr noundef null, i32 noundef 0, ptr noundef %25, ptr noundef nonnull %3) #6
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %15) #7
  br label %169

29:                                               ; preds = %24
  %30 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  %31 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 2
  store ptr %30, ptr %31, align 8
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = ptrtoint ptr %30 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %34) #7
  %35 = load ptr, ptr %31, align 8
  %36 = ptrtoint ptr %35 to i32
  br label %169

37:                                               ; preds = %29
  %38 = tail call ptr @devm_regulator_get(ptr noundef %2, ptr noundef nonnull @.str.5) #6
  %39 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 5
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = ptrtoint ptr %38 to i32
  br label %169

43:                                               ; preds = %37
  %44 = tail call i32 @regulator_enable(ptr noundef %38) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %169

46:                                               ; preds = %43
  %47 = load ptr, ptr %39, align 4
  %48 = tail call i32 @regulator_get_voltage(ptr noundef %47) #6
  %49 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 3
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 6
  %53 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %51, ptr noundef nonnull @.str.6, ptr noundef %52, i32 noundef 3, i32 noundef 0) #6
  %54 = load ptr, ptr %50, align 8
  %55 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 7, i32 7
  %56 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %54, ptr noundef nonnull @.str.7, ptr noundef %55, i32 noundef 1, i32 noundef 0) #6
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  store i32 1000, ptr %55, align 4
  br label %59

59:                                               ; preds = %58, %46
  %60 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %60, align 8
  %61 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 9
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %62, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #6
  %63 = load ptr, ptr %19, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load ptr, ptr %2, align 4
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi ptr [ %66, %65 ], [ %63, %59 ]
  %69 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 15
  store ptr %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 17
  store ptr @vf610_adc_iio_info, ptr %70, align 8
  store i32 1, ptr %3, align 8
  %71 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 13
  store ptr @vf610_adc_iio_channels, ptr %71, align 8
  %72 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 14
  store i32 18, ptr %72, align 4
  %73 = load ptr, ptr %31, align 8
  %74 = tail call i32 @clk_prepare(ptr noundef %73) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = tail call i32 @clk_enable(ptr noundef %73) #6
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  tail call void @clk_unprepare(ptr noundef %73) #6
  br label %80

80:                                               ; preds = %79, %67
  %81 = phi i32 [ %77, %79 ], [ %74, %67 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #7
  br label %165

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 7
  store i32 0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 7, i32 1
  store i32 0, ptr %84, align 4
  %85 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 7, i32 8
  store i8 1, ptr %85, align 4
  %86 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 7, i32 9
  store i8 1, ptr %86, align 1
  %87 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 7, i32 5
  store i32 12, ptr %87, align 4
  %88 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 7, i32 4
  store i32 1, ptr %88, align 4
  %89 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 7, i32 2
  store i32 2, ptr %89, align 4
  %90 = load ptr, ptr %31, align 8
  %91 = tail call i32 @clk_get_rate(ptr noundef %90) #6
  %92 = load i32, ptr %89, align 4
  %93 = getelementptr %struct.vf610_adc, ptr %8, i32 0, i32 6, i32 %92
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %82
  %97 = udiv i32 %91, %94
  %98 = add i32 %97, 1
  %99 = icmp eq i32 %98, 0
  %100 = tail call i32 @llvm.ctlz.i32(i32 %98, i1 false) #6, !range !8
  %101 = sub nuw nsw i32 32, %100
  %102 = shl nuw i32 1, %101
  %103 = select i1 %99, i32 1, i32 %102
  br label %104

104:                                              ; preds = %96, %82
  %105 = phi i32 [ %103, %96 ], [ 8, %82 ]
  %106 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 7, i32 3
  store i32 %105, ptr %106, align 4
  %107 = udiv i32 %91, %105
  %108 = udiv i32 1000000000, %107
  %109 = load i32, ptr %55, align 4
  %110 = udiv i32 %109, %108
  %111 = icmp ult i32 %110, 3
  br i1 %111, label %112, label %115

112:                                              ; preds = %127, %125, %123, %121, %119, %117, %115, %104
  %113 = phi i32 [ 0, %104 ], [ 1, %115 ], [ 2, %117 ], [ 3, %119 ], [ 4, %121 ], [ 5, %123 ], [ 6, %125 ], [ 7, %127 ]
  %114 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 7, i32 6
  store i32 %113, ptr %114, align 4
  br label %132

115:                                              ; preds = %104
  %116 = icmp ult i32 %110, 5
  br i1 %116, label %112, label %117

117:                                              ; preds = %115
  %118 = icmp ult i32 %110, 7
  br i1 %118, label %112, label %119

119:                                              ; preds = %117
  %120 = icmp ult i32 %110, 9
  br i1 %120, label %112, label %121

121:                                              ; preds = %119
  %122 = icmp ult i32 %110, 13
  br i1 %122, label %112, label %123

123:                                              ; preds = %121
  %124 = icmp ult i32 %110, 17
  br i1 %124, label %112, label %125

125:                                              ; preds = %123
  %126 = icmp ult i32 %110, 21
  br i1 %126, label %112, label %127

127:                                              ; preds = %125
  %128 = icmp ult i32 %110, 25
  br i1 %128, label %112, label %129

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.vf610_adc, ptr %8, i32 0, i32 7, i32 6
  %131 = load i32, ptr %130, align 4
  br label %132

132:                                              ; preds = %129, %112
  %133 = phi i32 [ %131, %129 ], [ %113, %112 ]
  %134 = getelementptr [8 x i32], ptr @vf610_lst_adder, i32 0, i32 %133
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, 31
  %137 = udiv i32 %107, %136
  %138 = getelementptr %struct.vf610_adc, ptr %8, i32 0, i32 8, i32 0
  store i32 %137, ptr %138, align 4
  %139 = shl i32 %135, 2
  %140 = add i32 %139, 106
  %141 = udiv i32 %107, %140
  %142 = getelementptr %struct.vf610_adc, ptr %8, i32 0, i32 8, i32 1
  store i32 %141, ptr %142, align 4
  %143 = shl i32 %135, 3
  %144 = add i32 %143, 206
  %145 = udiv i32 %107, %144
  %146 = getelementptr %struct.vf610_adc, ptr %8, i32 0, i32 8, i32 2
  store i32 %145, ptr %146, align 4
  %147 = shl i32 %135, 4
  %148 = add i32 %147, 406
  %149 = udiv i32 %107, %148
  %150 = getelementptr %struct.vf610_adc, ptr %8, i32 0, i32 8, i32 3
  store i32 %149, ptr %150, align 4
  %151 = shl i32 %135, 5
  %152 = add i32 %151, 806
  %153 = udiv i32 %107, %152
  %154 = getelementptr %struct.vf610_adc, ptr %8, i32 0, i32 8, i32 4
  store i32 %153, ptr %154, align 4
  tail call fastcc void @vf610_adc_hw_init(ptr noundef %8)
  %155 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %3, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef null, i32 noundef 0, ptr noundef nonnull @iio_triggered_buffer_setup_ops, ptr noundef null) #6
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %132
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #7
  br label %162

158:                                              ; preds = %132
  %159 = tail call i32 @__iio_device_register(ptr noundef nonnull %3, ptr noundef nonnull @__this_module) #6
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %158
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #7
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %3) #6
  br label %162

162:                                              ; preds = %161, %157
  %163 = phi i32 [ %155, %157 ], [ %159, %161 ]
  %164 = load ptr, ptr %31, align 8
  tail call void @clk_disable(ptr noundef %164) #6
  tail call void @clk_unprepare(ptr noundef %164) #6
  br label %165

165:                                              ; preds = %162, %80
  %166 = phi i32 [ %81, %80 ], [ %163, %162 ]
  %167 = load ptr, ptr %39, align 4
  %168 = tail call i32 @regulator_disable(ptr noundef %167) #6
  br label %169

169:                                              ; preds = %165, %158, %43, %41, %33, %28, %14, %12, %5
  %170 = phi i32 [ %13, %12 ], [ %26, %28 ], [ %36, %33 ], [ %42, %41 ], [ %166, %165 ], [ -12, %5 ], [ %15, %14 ], [ %44, %43 ], [ 0, %158 ]
  ret i32 %170
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_adc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  tail call void @iio_device_unregister(ptr noundef %3) #6
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %3) #6
  %6 = getelementptr inbounds %struct.vf610_adc, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regulator_disable(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.vf610_adc, ptr %5, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_adc_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vf610_adc, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %49, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %15 = getelementptr inbounds %struct.vf610_adc, ptr %4, i32 0, i32 7, i32 5
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %23 [
    i32 8, label %17
    i32 10, label %19
    i32 12, label %21
  ]

17:                                               ; preds = %11
  %18 = and i32 %14, 255
  br label %23

19:                                               ; preds = %11
  %20 = and i32 %14, 1023
  br label %23

21:                                               ; preds = %11
  %22 = and i32 %14, 4095
  br label %23

23:                                               ; preds = %21, %19, %17, %11
  %24 = phi i32 [ %14, %11 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ]
  %25 = getelementptr inbounds %struct.vf610_adc, ptr %4, i32 0, i32 4
  store i32 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %23
  %31 = trunc i32 %24 to i16
  %32 = getelementptr inbounds %struct.vf610_adc, ptr %4, i32 0, i32 10
  store i16 %31, ptr %32, align 8
  %33 = tail call i64 @iio_get_time_ns(ptr noundef %1) #6
  %34 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %35 = load i8, ptr %34, align 8, !range !12
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 3
  %41 = add nsw i32 %40, -1
  %42 = getelementptr i64, ptr %32, i32 %41
  store i64 %33, ptr %42, align 8
  br label %43

43:                                               ; preds = %37, %30
  %44 = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %32) #6
  %45 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %46 = load ptr, ptr %45, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %46) #6
  br label %49

47:                                               ; preds = %23
  %48 = getelementptr inbounds %struct.vf610_adc, ptr %4, i32 0, i32 9
  tail call void @complete(ptr noundef %48) #6
  br label %49

49:                                               ; preds = %47, %43, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vf610_adc_hw_init(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.vf610_adc, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  %5 = select i1 %4, i32 1155, i32 1152
  %6 = icmp eq i32 %3, 1
  %7 = select i1 %6, i32 1154, i32 %5
  %8 = getelementptr inbounds %struct.vf610_adc, ptr %0, i32 0, i32 7, i32 1
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %14 [
    i32 0, label %16
    i32 1, label %10
    i32 2, label %12
  ]

10:                                               ; preds = %1
  %11 = or i32 %7, 2048
  br label %16

12:                                               ; preds = %1
  %13 = or i32 %7, 4096
  br label %16

14:                                               ; preds = %1
  %15 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.22) #7
  br label %16

16:                                               ; preds = %14, %12, %10, %1
  %17 = phi i32 [ %7, %14 ], [ %13, %12 ], [ %11, %10 ], [ %7, %1 ]
  %18 = getelementptr inbounds %struct.vf610_adc, ptr %0, i32 0, i32 7, i32 9
  %19 = load i8, ptr %18, align 1, !range !12
  %20 = icmp eq i8 %19, 0
  %21 = or i32 %17, 65536
  %22 = select i1 %20, i32 %17, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %23 = getelementptr inbounds %struct.vf610_adc, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #6, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr i8, ptr %26, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #6, !srcloc !14
  tail call fastcc void @vf610_adc_sample_set(ptr noundef %0)
  %28 = getelementptr inbounds %struct.vf610_adc, ptr %0, i32 0, i32 7, i32 8
  %29 = load i8, ptr %28, align 4, !range !12
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %32 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 159) #6, !srcloc !14
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr i8, ptr %33, i32 24
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %36 = or i32 %35, 128
  %37 = load ptr, ptr %23, align 4
  %38 = getelementptr i8, ptr %37, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #6, !srcloc !14
  %39 = getelementptr inbounds %struct.vf610_adc, ptr %0, i32 0, i32 9
  %40 = tail call i32 @wait_for_completion_timeout(ptr noundef %39, i32 noundef 10) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.23) #7
  br label %44

44:                                               ; preds = %42, %31
  %45 = load ptr, ptr %23, align 4
  %46 = getelementptr i8, ptr %45, i32 28
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.24) #7
  br label %52

52:                                               ; preds = %50, %44
  store i8 0, ptr %28, align 4
  br label %53

53:                                               ; preds = %52, %16
  %54 = load ptr, ptr %23, align 4
  %55 = getelementptr i8, ptr %54, i32 20
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %57 = and i32 %56, -1153
  %58 = getelementptr inbounds %struct.vf610_adc, ptr %0, i32 0, i32 7, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 2
  %61 = select i1 %60, i32 128, i32 0
  %62 = or i32 %61, %57
  %63 = icmp eq i32 %59, 1
  %64 = select i1 %63, i32 1024, i32 0
  %65 = or i32 %62, %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %66 = load ptr, ptr %23, align 4
  %67 = getelementptr i8, ptr %66, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #6, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_read_raw(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  switch i32 %4, label %55 [
    i32 0, label %8
    i32 1, label %8
    i32 2, label %44
    i32 12, label %50
  ]

8:                                                ; preds = %5, %5
  %9 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %9) #6
  %10 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void @mutex_unlock(ptr noundef %9) #6
  br label %55

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.vf610_adc, ptr %7, i32 0, i32 9
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 31
  %20 = or i32 %19, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %21 = getelementptr inbounds %struct.vf610_adc, ptr %7, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #6, !srcloc !14
  %23 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %16, i32 noundef 10) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  tail call void @mutex_unlock(ptr noundef %9) #6
  br label %55

26:                                               ; preds = %15
  %27 = icmp slt i32 %23, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  tail call void @mutex_unlock(ptr noundef %9) #6
  br label %55

29:                                               ; preds = %26
  %30 = load i32, ptr %1, align 4
  switch i32 %30, label %41 [
    i32 0, label %31
    i32 9, label %34
  ]

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.vf610_adc, ptr %7, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  br label %42

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.vf610_adc, ptr %7, i32 0, i32 4
  %36 = load i32, ptr %35, align 8
  %37 = mul i32 %36, 1000000
  %38 = add i32 %37, -867000000
  %39 = sdiv i32 %38, -1840
  %40 = add nsw i32 %39, 25000
  br label %42

41:                                               ; preds = %29
  tail call void @mutex_unlock(ptr noundef %9) #6
  br label %55

42:                                               ; preds = %34, %31
  %43 = phi i32 [ %40, %34 ], [ %33, %31 ]
  store i32 %43, ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef %9) #6
  br label %55

44:                                               ; preds = %5
  %45 = getelementptr inbounds %struct.vf610_adc, ptr %7, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = udiv i32 %46, 1000
  store i32 %47, ptr %2, align 4
  %48 = getelementptr inbounds %struct.vf610_adc, ptr %7, i32 0, i32 7, i32 5
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %3, align 4
  br label %55

50:                                               ; preds = %5
  %51 = getelementptr inbounds %struct.vf610_adc, ptr %7, i32 0, i32 7, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr %struct.vf610_adc, ptr %7, i32 0, i32 8, i32 %52
  %54 = load i32, ptr %53, align 4
  store i32 %54, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %55

55:                                               ; preds = %50, %44, %42, %41, %28, %25, %14, %5
  %56 = phi i32 [ 1, %50 ], [ 11, %44 ], [ -16, %14 ], [ -110, %25 ], [ %23, %28 ], [ -22, %41 ], [ 1, %42 ], [ -22, %5 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_write_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq i32 %4, 12
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = getelementptr %struct.vf610_adc, ptr %7, i32 0, i32 8, i32 0
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %16

13:                                               ; preds = %28, %24, %20, %16, %9
  %14 = phi i32 [ 0, %9 ], [ 1, %16 ], [ 2, %20 ], [ 3, %24 ], [ 4, %28 ]
  %15 = getelementptr inbounds %struct.vf610_adc, ptr %7, i32 0, i32 7, i32 4
  store i32 %14, ptr %15, align 4
  tail call fastcc void @vf610_adc_sample_set(ptr noundef %7)
  br label %32

16:                                               ; preds = %9
  %17 = getelementptr %struct.vf610_adc, ptr %7, i32 0, i32 8, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %13, label %20

20:                                               ; preds = %16
  %21 = getelementptr %struct.vf610_adc, ptr %7, i32 0, i32 8, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %13, label %24

24:                                               ; preds = %20
  %25 = getelementptr %struct.vf610_adc, ptr %7, i32 0, i32 8, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %2
  br i1 %27, label %13, label %28

28:                                               ; preds = %24
  %29 = getelementptr %struct.vf610_adc, ptr %7, i32 0, i32 8, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %13, label %32

32:                                               ; preds = %28, %13, %5
  %33 = phi i32 [ 0, %13 ], [ -22, %5 ], [ -22, %28 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_adc_reg_access(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %3, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = and i32 %1, 3
  %10 = icmp ne i32 %9, 0
  %11 = icmp ugt i32 %1, 48
  %12 = or i1 %11, %10
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.vf610_adc, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  store i32 %17, ptr %3, align 4
  br label %18

18:                                               ; preds = %13, %8, %4
  %19 = phi i32 [ 0, %13 ], [ -22, %8 ], [ -22, %4 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_show_samp_freq_avail(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 552
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.vf610_adc, ptr %5, i32 0, i32 8, i32 0
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.13, i32 noundef %7) #6
  %9 = getelementptr i8, ptr %2, i32 %8
  %10 = sub i32 4096, %8
  %11 = getelementptr %struct.vf610_adc, ptr %5, i32 0, i32 8, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %9, i32 noundef %10, ptr noundef nonnull @.str.13, i32 noundef %12) #6
  %14 = add i32 %13, %8
  %15 = getelementptr i8, ptr %2, i32 %14
  %16 = sub i32 4096, %14
  %17 = getelementptr %struct.vf610_adc, ptr %5, i32 0, i32 8, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %15, i32 noundef %16, ptr noundef nonnull @.str.13, i32 noundef %18) #6
  %20 = add i32 %19, %14
  %21 = getelementptr i8, ptr %2, i32 %20
  %22 = sub i32 4096, %20
  %23 = getelementptr %struct.vf610_adc, ptr %5, i32 0, i32 8, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %21, i32 noundef %22, ptr noundef nonnull @.str.13, i32 noundef %24) #6
  %26 = add i32 %25, %20
  %27 = getelementptr i8, ptr %2, i32 %26
  %28 = sub i32 4096, %26
  %29 = getelementptr %struct.vf610_adc, ptr %5, i32 0, i32 8, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %27, i32 noundef %28, ptr noundef nonnull @.str.13, i32 noundef %30) #6
  %32 = add i32 %31, %26
  %33 = add i32 %32, -1
  %34 = getelementptr i8, ptr %2, i32 %33
  store i8 10, ptr %34, align 1
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vf610_adc_sample_set(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.vf610_adc, ptr %0, i32 0, i32 7
  %3 = getelementptr inbounds %struct.vf610_adc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !24
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !25
  %10 = and i32 %6, -13
  %11 = getelementptr inbounds %struct.vf610_adc, ptr %0, i32 0, i32 7, i32 5
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %17 [
    i32 8, label %19
    i32 10, label %13
    i32 12, label %15
  ]

13:                                               ; preds = %1
  %14 = or i32 %10, 4
  br label %19

15:                                               ; preds = %1
  %16 = or i32 %10, 8
  br label %19

17:                                               ; preds = %1
  %18 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.14) #7
  br label %19

19:                                               ; preds = %17, %15, %13, %1
  %20 = phi i32 [ %10, %17 ], [ %16, %15 ], [ %14, %13 ], [ %10, %1 ]
  %21 = and i32 %20, -100
  %22 = getelementptr inbounds %struct.vf610_adc, ptr %0, i32 0, i32 7, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -2
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 31)
  switch i32 %25, label %39 [
    i32 7, label %32
    i32 0, label %26
    i32 1, label %28
    i32 3, label %30
  ]

26:                                               ; preds = %19
  %27 = or i32 %21, 32
  br label %39

28:                                               ; preds = %19
  %29 = or i32 %21, 64
  br label %39

30:                                               ; preds = %19
  %31 = or i32 %21, 96
  br label %39

32:                                               ; preds = %19
  %33 = load i32, ptr %2, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = or i32 %21, 97
  br label %39

37:                                               ; preds = %32
  %38 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.15) #7
  br label %39

39:                                               ; preds = %37, %35, %30, %28, %26, %19
  %40 = phi i32 [ %21, %19 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %36, %35 ], [ %21, %37 ]
  %41 = getelementptr inbounds %struct.vf610_adc, ptr %0, i32 0, i32 7, i32 6
  %42 = load i32, ptr %41, align 4
  switch i32 %42, label %57 [
    i32 0, label %59
    i32 1, label %43
    i32 2, label %45
    i32 3, label %47
    i32 4, label %49
    i32 5, label %51
    i32 6, label %53
    i32 7, label %55
  ]

43:                                               ; preds = %39
  %44 = or i32 %40, 256
  br label %59

45:                                               ; preds = %39
  %46 = or i32 %40, 512
  br label %59

47:                                               ; preds = %39
  %48 = or i32 %40, 768
  br label %59

49:                                               ; preds = %39
  %50 = or i32 %40, 16
  br label %59

51:                                               ; preds = %39
  %52 = or i32 %40, 272
  br label %59

53:                                               ; preds = %39
  %54 = or i32 %40, 528
  br label %59

55:                                               ; preds = %39
  %56 = or i32 %40, 528
  br label %59

57:                                               ; preds = %39
  %58 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.16) #7
  br label %59

59:                                               ; preds = %57, %55, %53, %51, %49, %47, %45, %43, %39
  %60 = phi i32 [ %40, %57 ], [ %56, %55 ], [ %54, %53 ], [ %52, %51 ], [ %50, %49 ], [ %48, %47 ], [ %46, %45 ], [ %44, %43 ], [ %40, %39 ]
  %61 = and i32 %60, -49153
  %62 = and i32 %9, -33
  %63 = getelementptr inbounds %struct.vf610_adc, ptr %0, i32 0, i32 7, i32 4
  %64 = load i32, ptr %63, align 4
  switch i32 %64, label %76 [
    i32 0, label %78
    i32 1, label %65
    i32 2, label %67
    i32 3, label %70
    i32 4, label %73
  ]

65:                                               ; preds = %59
  %66 = or i32 %9, 32
  br label %78

67:                                               ; preds = %59
  %68 = or i32 %9, 32
  %69 = or i32 %61, 16384
  br label %78

70:                                               ; preds = %59
  %71 = or i32 %9, 32
  %72 = or i32 %61, 32768
  br label %78

73:                                               ; preds = %59
  %74 = or i32 %9, 32
  %75 = or i32 %60, 49152
  br label %78

76:                                               ; preds = %59
  %77 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.17) #7
  br label %78

78:                                               ; preds = %76, %73, %70, %67, %65, %59
  %79 = phi i32 [ %62, %76 ], [ %74, %73 ], [ %71, %70 ], [ %68, %67 ], [ %66, %65 ], [ %62, %59 ]
  %80 = phi i32 [ %61, %76 ], [ %75, %73 ], [ %72, %70 ], [ %69, %67 ], [ %61, %65 ], [ %61, %59 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %81 = load ptr, ptr %3, align 4
  %82 = getelementptr i8, ptr %81, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #6, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %83 = load ptr, ptr %3, align 4
  %84 = getelementptr i8, ptr %83, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %79) #6, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_set_conversion_mode(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.vf610_adc, ptr %5, i32 0, i32 7, i32 2
  store i32 %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vf610_adc, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @clk_get_rate(ptr noundef %9) #6
  %11 = load i32, ptr %7, align 4
  %12 = getelementptr %struct.vf610_adc, ptr %5, i32 0, i32 6, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = udiv i32 %10, %13
  %17 = add i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = tail call i32 @llvm.ctlz.i32(i32 %17, i1 false) #6, !range !8
  %20 = sub nuw nsw i32 32, %19
  %21 = shl nuw i32 1, %20
  %22 = select i1 %18, i32 1, i32 %21
  br label %23

23:                                               ; preds = %15, %3
  %24 = phi i32 [ %22, %15 ], [ 8, %3 ]
  %25 = getelementptr inbounds %struct.vf610_adc, ptr %5, i32 0, i32 7, i32 3
  store i32 %24, ptr %25, align 4
  %26 = udiv i32 %10, %24
  %27 = udiv i32 1000000000, %26
  %28 = getelementptr inbounds %struct.vf610_adc, ptr %5, i32 0, i32 7, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = udiv i32 %29, %27
  %31 = icmp ult i32 %30, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %47, %45, %43, %41, %39, %37, %35, %23
  %33 = phi i32 [ 0, %23 ], [ 1, %35 ], [ 2, %37 ], [ 3, %39 ], [ 4, %41 ], [ 5, %43 ], [ 6, %45 ], [ 7, %47 ]
  %34 = getelementptr inbounds %struct.vf610_adc, ptr %5, i32 0, i32 7, i32 6
  store i32 %33, ptr %34, align 4
  br label %52

35:                                               ; preds = %23
  %36 = icmp ult i32 %30, 5
  br i1 %36, label %32, label %37

37:                                               ; preds = %35
  %38 = icmp ult i32 %30, 7
  br i1 %38, label %32, label %39

39:                                               ; preds = %37
  %40 = icmp ult i32 %30, 9
  br i1 %40, label %32, label %41

41:                                               ; preds = %39
  %42 = icmp ult i32 %30, 13
  br i1 %42, label %32, label %43

43:                                               ; preds = %41
  %44 = icmp ult i32 %30, 17
  br i1 %44, label %32, label %45

45:                                               ; preds = %43
  %46 = icmp ult i32 %30, 21
  br i1 %46, label %32, label %47

47:                                               ; preds = %45
  %48 = icmp ult i32 %30, 25
  br i1 %48, label %32, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.vf610_adc, ptr %5, i32 0, i32 7, i32 6
  %51 = load i32, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %32
  %53 = phi i32 [ %51, %49 ], [ %33, %32 ]
  %54 = getelementptr [8 x i32], ptr @vf610_lst_adder, i32 0, i32 %53
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 31
  %57 = udiv i32 %26, %56
  %58 = getelementptr %struct.vf610_adc, ptr %5, i32 0, i32 8, i32 0
  store i32 %57, ptr %58, align 4
  %59 = shl i32 %55, 2
  %60 = add i32 %59, 106
  %61 = udiv i32 %26, %60
  %62 = getelementptr %struct.vf610_adc, ptr %5, i32 0, i32 8, i32 1
  store i32 %61, ptr %62, align 4
  %63 = shl i32 %55, 3
  %64 = add i32 %63, 206
  %65 = udiv i32 %26, %64
  %66 = getelementptr %struct.vf610_adc, ptr %5, i32 0, i32 8, i32 2
  store i32 %65, ptr %66, align 4
  %67 = shl i32 %55, 4
  %68 = add i32 %67, 406
  %69 = udiv i32 %26, %68
  %70 = getelementptr %struct.vf610_adc, ptr %5, i32 0, i32 8, i32 3
  store i32 %69, ptr %70, align 4
  %71 = shl i32 %55, 5
  %72 = add i32 %71, 806
  %73 = udiv i32 %26, %72
  %74 = getelementptr %struct.vf610_adc, ptr %5, i32 0, i32 8, i32 4
  store i32 %73, ptr %74, align 4
  tail call fastcc void @vf610_adc_hw_init(ptr noundef %5)
  tail call void @mutex_unlock(ptr noundef %6) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @vf610_get_conversion_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #4 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vf610_adc, ptr %4, i32 0, i32 7, i32 2
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_adc_buffer_postenable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vf610_adc, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %8 = or i32 %7, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #6, !srcloc !14
  %11 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @_find_first_bit_le(ptr noundef %12, i32 noundef %14) #6
  %16 = and i32 %15, 31
  %17 = or i32 %16, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %18 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #6, !srcloc !14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_adc_buffer_predisable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vf610_adc, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !31
  %8 = and i32 %7, -65
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #6, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %11 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 31) #6, !srcloc !14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iio_validate_scan_mask_onehot(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_adc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.vf610_adc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %9 = or i32 %8, 31
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %10 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #6, !srcloc !14
  %11 = getelementptr inbounds %struct.vf610_adc, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  tail call void @clk_disable(ptr noundef %12) #6
  tail call void @clk_unprepare(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.vf610_adc, ptr %5, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @regulator_disable(ptr noundef %14) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_adc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.vf610_adc, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regulator_enable(ptr noundef %7) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.vf610_adc, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = tail call i32 @clk_enable(ptr noundef %12) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %12) #6
  br label %20

19:                                               ; preds = %15
  tail call fastcc void @vf610_adc_hw_init(ptr noundef %5)
  br label %24

20:                                               ; preds = %18, %10
  %21 = phi i32 [ %16, %18 ], [ %13, %10 ]
  %22 = load ptr, ptr %6, align 4
  %23 = tail call i32 @regulator_disable(ptr noundef %22) #6
  br label %24

24:                                               ; preds = %20, %19, %1
  %25 = phi i32 [ %21, %20 ], [ 0, %19 ], [ %8, %1 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i32 0, i32 33}
!9 = !{i64 3729324}
!10 = !{i64 2153688132}
!11 = !{i64 2153687793}
!12 = !{i8 0, i8 2}
!13 = !{i64 2153667797}
!14 = !{i64 3728906}
!15 = !{i64 2153668130}
!16 = !{i64 2153668476}
!17 = !{i64 2153668950}
!18 = !{i64 2153669155}
!19 = !{i64 2153670241}
!20 = !{i64 2153671130}
!21 = !{i64 2153671347}
!22 = !{i64 2153691213}
!23 = !{i64 2153694331}
!24 = !{i64 2153671825}
!25 = !{i64 2153672164}
!26 = !{i64 2153674785}
!27 = !{i64 2153675118}
!28 = !{i64 2153692223}
!29 = !{i64 2153692418}
!30 = !{i64 2153692844}
!31 = !{i64 2153693312}
!32 = !{i64 2153693507}
!33 = !{i64 2153693845}
!34 = !{i64 2153699379}
!35 = !{i64 2153699577}
