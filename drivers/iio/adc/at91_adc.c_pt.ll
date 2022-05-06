; ModuleID = '/llk/IR/drivers/iio/adc/at91_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/at91_adc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.at91_adc_caps = type { i8, i8, i8, i8, ptr, i8, i8, i8, i32, ptr, %struct.at91_adc_reg_desc }
%struct.at91_adc_reg_desc = type { i8, i32, i8, i8, i32, i32 }
%struct.at91_adc_trigger = type { ptr, i8, i8 }
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
%struct.lock_class_key = type {}
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
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
%struct.at91_adc_state = type { ptr, ptr, i32, ptr, i8, i32, i16, i32, %struct.mutex, i8, ptr, ptr, i32, i8, i8, ptr, i8, i32, i32, %struct.wait_queue_head, ptr, i32, ptr, i16, i32, i16, i8, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.62, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.62 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@at91_adc_dt_ids = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9260_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9rl_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g45_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9x5_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3_caps }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license210 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description211 = internal constant [34 x i8] c"description=Atmel AT91 ADC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [56 x i8] c"author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@at91sam9260_caps = internal global %struct.at91_adc_caps { i8 0, i8 0, i8 0, i8 0, ptr @calc_startup_ticks_9260, i8 4, i8 8, i8 10, i32 4, ptr @at91sam9260_triggers, %struct.at91_adc_reg_desc { i8 48, i32 65536, i8 28, i8 4, i32 16128, i32 2031616 } }, align 4
@at91sam9rl_caps = internal global %struct.at91_adc_caps { i8 1, i8 0, i8 0, i8 0, ptr @calc_startup_ticks_9260, i8 6, i8 8, i8 10, i32 4, ptr @at91sam9x5_triggers, %struct.at91_adc_reg_desc { i8 48, i32 65536, i8 28, i8 8, i32 16128, i32 8323072 } }, align 4
@at91sam9g45_caps = internal global %struct.at91_adc_caps { i8 1, i8 0, i8 0, i8 0, ptr @calc_startup_ticks_9260, i8 8, i8 8, i8 10, i32 4, ptr @at91sam9x5_triggers, %struct.at91_adc_reg_desc { i8 48, i32 65536, i8 28, i8 8, i32 65280, i32 8323072 } }, align 4
@at91sam9x5_caps = internal global %struct.at91_adc_caps { i8 1, i8 1, i8 3, i8 2, ptr @calc_startup_ticks_9x5, i8 12, i8 8, i8 10, i32 4, ptr @at91sam9x5_triggers, %struct.at91_adc_reg_desc { i8 80, i32 16777216, i8 48, i8 -64, i32 65280, i32 983040 } }, align 4
@sama5d3_caps = internal global %struct.at91_adc_caps { i8 1, i8 1, i8 3, i8 2, ptr @calc_startup_ticks_9x5, i8 12, i8 0, i8 12, i32 4, ptr @at91sam9x5_triggers, %struct.at91_adc_reg_desc { i8 80, i32 16777216, i8 48, i8 -64, i32 65280, i32 983040 } }, align 4
@at91sam9260_triggers = internal constant [4 x %struct.at91_adc_trigger] [%struct.at91_adc_trigger { ptr @.str, i8 1, i8 0 }, %struct.at91_adc_trigger { ptr @.str.1, i8 3, i8 0 }, %struct.at91_adc_trigger { ptr @.str.2, i8 5, i8 0 }, %struct.at91_adc_trigger { ptr @.str.3, i8 13, i8 1 }], align 4
@.str = private unnamed_addr constant [16 x i8] c"timer-counter-0\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"timer-counter-1\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"timer-counter-2\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@at91sam9x5_triggers = internal constant [4 x %struct.at91_adc_trigger] [%struct.at91_adc_trigger { ptr @.str.4, i8 1, i8 1 }, %struct.at91_adc_trigger { ptr @.str.5, i8 2, i8 1 }, %struct.at91_adc_trigger { ptr @.str.6, i8 3, i8 1 }, %struct.at91_adc_trigger { ptr @.str.7, i8 6, i8 0 }], align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"external-rising\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"external-falling\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"external-any\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"continuous\00", align 1
@at91_adc_driver = internal global %struct.platform_driver { ptr @at91_adc_probe, ptr @at91_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_adc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.8 = private unnamed_addr constant [9 x i8] c"at91_adc\00", align 1
@at91_adc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @at91_adc_suspend, ptr @at91_adc_resume, ptr @at91_adc_suspend, ptr @at91_adc_resume, ptr @at91_adc_suspend, ptr @at91_adc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"atmel,adc-use-external-triggers\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"atmel,adc-channels-used\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Missing adc-channels-used property in the DT.\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"atmel,adc-sleep-mode\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"atmel,adc-startup-time\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"Missing adc-startup-time property in the DT.\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"atmel,adc-sample-hold-time\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"atmel,adc-vref\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Missing adc-vref property in the DT.\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"atmel,adc-use-res\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"lowres\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Resolution used: %u bits\0A\00", align 1
@at91_adc_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @at91_adc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.21 = private unnamed_addr constant [25 x i8] c"Failed to allocate IRQ.\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"adc_clk\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Failed to get the clock.\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"Could not prepare or enable the clock.\0A\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"adc_op_clk\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Failed to get the ADC clock.\0A\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"Could not prepare or enable the ADC clock.\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"No startup time available.\0A\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Couldn't initialize the channels.\0A\00", align 1
@at91_adc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"&st->wq_data_avail\00", align 1
@at91_adc_probe.__key.31 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"&st->lock\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"Couldn't initialize the buffer.\0A\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"Couldn't setup the triggers.\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"Couldn't register the device.\0A\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"atmel,adc-ts-wires\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"ADC Touch screen is disabled.\0A\00", align 1
@.str.38 = private unnamed_addr constant [65 x i8] c"Unsupported number of touchscreen wires (%d). Should be 4 or 5.\0A\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"atmel,adc-ts-pressure-threshold\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c"Invalid pressure threshold for the touchscreen\0A\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"ADC Channel %d timeout.\0A\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"Error: xscale == 0!\0A\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"Error: yscale == 0!\0A\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"Could not allocate trigger %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"%s-dev%d-%s\00", align 1
@at91_adc_trigger_ops = internal constant %struct.iio_trigger_ops { ptr @at91_adc_configure_trigger, ptr null, ptr null }, align 4
@.str.46 = private unnamed_addr constant [31 x i8] c"Failed to allocate TS device!\0A\00", align 1
@.str.47 = private unnamed_addr constant [50 x i8] c"This touchscreen controller only support 4 wires\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_license210], section "llvm.metadata"

@__mod_of__at91_adc_dt_ids_device_table = dso_local alias [6 x %struct.of_device_id], ptr @at91_adc_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @at91_adc_driver, ptr noundef nonnull @__this_module) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_adc_driver) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @calc_startup_ticks_9260(i32 noundef %0, i32 noundef %1) #1 {
  %3 = mul i32 %1, %0
  %4 = udiv i32 %3, 1000
  %5 = add nsw i32 %4, -2
  %6 = or i32 %5, 7
  %7 = add nsw i32 %6, 1
  %8 = lshr exact i32 %7, 3
  ret i32 %8
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define internal i32 @calc_startup_ticks_9x5(i32 noundef %0, i32 noundef %1) #2 {
  %3 = mul i32 %1, %0
  %4 = icmp ult i32 %3, 8000
  br i1 %4, label %32, label %5

5:                                                ; preds = %2
  %6 = icmp ult i32 %3, 16000
  br i1 %6, label %32, label %7

7:                                                ; preds = %5
  %8 = icmp ult i32 %3, 24000
  br i1 %8, label %32, label %9

9:                                                ; preds = %7
  %10 = icmp ult i32 %3, 64000
  br i1 %10, label %32, label %11

11:                                               ; preds = %9
  %12 = icmp ult i32 %3, 80000
  br i1 %12, label %32, label %13

13:                                               ; preds = %11
  %14 = icmp ult i32 %3, 96000
  br i1 %14, label %32, label %15

15:                                               ; preds = %13
  %16 = icmp ult i32 %3, 112000
  br i1 %16, label %32, label %17

17:                                               ; preds = %15
  %18 = icmp ult i32 %3, 512000
  br i1 %18, label %32, label %19

19:                                               ; preds = %17
  %20 = icmp ult i32 %3, 576000
  br i1 %20, label %32, label %21

21:                                               ; preds = %19
  %22 = icmp ult i32 %3, 640000
  br i1 %22, label %32, label %23

23:                                               ; preds = %21
  %24 = icmp ult i32 %3, 704000
  br i1 %24, label %32, label %25

25:                                               ; preds = %23
  %26 = icmp ult i32 %3, 768000
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = icmp ult i32 %3, 832000
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = icmp ult i32 %3, 896000
  %31 = select i1 %30, i32 14, i32 15
  br label %32

32:                                               ; preds = %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5, %2
  %33 = phi i32 [ 13, %27 ], [ 12, %25 ], [ 11, %23 ], [ 10, %21 ], [ 9, %19 ], [ 8, %17 ], [ 7, %15 ], [ 6, %13 ], [ 5, %11 ], [ 4, %9 ], [ 3, %7 ], [ 2, %5 ], [ 1, %2 ], [ %31, %29 ]
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_probe(ptr noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store ptr null, ptr %3, align 4, !annotation !8
  %7 = tail call ptr @devm_iio_device_alloc(ptr noundef %4, i32 noundef 132) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %229, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 19
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @of_device_get_match_data(ptr noundef %4) #12
  %13 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 20
  store ptr %12, ptr %13, align 4
  %14 = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef null) #12
  %15 = icmp ne ptr %14, null
  %16 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 16
  %17 = zext i1 %15 to i8
  store i8 %17, ptr %16, align 4
  %18 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #12
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.11) #13
  br label %229

22:                                               ; preds = %9
  %23 = load i32, ptr %2, align 4
  %24 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.12, ptr noundef null) #12
  %26 = icmp ne ptr %25, null
  %27 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 14
  %28 = zext i1 %26 to i8
  store i8 %28, ptr %27, align 1
  %29 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.13, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #12
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.14) #13
  br label %229

33:                                               ; preds = %22
  %34 = load i32, ptr %2, align 4
  %35 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 12
  store i32 %34, ptr %35, align 4
  store i32 0, ptr %2, align 4
  %36 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.15, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #12
  %37 = load i32, ptr %2, align 4
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 13
  store i8 %38, ptr %39, align 4
  %40 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.16, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #12
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.17) #13
  br label %229

44:                                               ; preds = %33
  %45 = load i32, ptr %2, align 4
  %46 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 17
  store i32 %45, ptr %46, align 4
  %47 = load ptr, ptr %13, align 4
  %48 = getelementptr inbounds %struct.at91_adc_caps, ptr %47, i32 0, i32 7
  %49 = load i8, ptr %48, align 2
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 18
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.at91_adc_caps, ptr %47, i32 0, i32 6
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %44
  %56 = call i32 @of_property_read_string(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef nonnull %3) #12
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load ptr, ptr %3, align 4
  %60 = call i32 @strcmp(ptr noundef %59, ptr noundef nonnull dereferenceable(7) @.str.19)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load ptr, ptr %13, align 4
  %64 = getelementptr inbounds %struct.at91_adc_caps, ptr %63, i32 0, i32 6
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  store i32 %66, ptr %51, align 4
  br label %67

67:                                               ; preds = %62, %58, %55, %44
  %68 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 2
  %69 = load i32, ptr %51, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.20, i32 noundef %69) #13
  %70 = load ptr, ptr %13, align 4
  %71 = getelementptr inbounds %struct.at91_adc_caps, ptr %70, i32 0, i32 10
  %72 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 11
  store ptr %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.at91_adc_caps, ptr %70, i32 0, i32 5
  %74 = load i8, ptr %73, align 4
  %75 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 9
  store i8 %74, ptr %75, align 4
  %76 = load i8, ptr %70, align 4, !range !9
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %67
  %79 = call fastcc i32 @at91_adc_probe_dt_ts(ptr noundef %6, ptr noundef %11, ptr noundef %68)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %229

81:                                               ; preds = %78, %67
  %82 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %82, align 8
  %83 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load ptr, ptr %4, align 4
  br label %88

88:                                               ; preds = %86, %81
  %89 = phi ptr [ %87, %86 ], [ %84, %81 ]
  %90 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 15
  store ptr %89, ptr %90, align 8
  store i32 1, ptr %7, align 8
  %91 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 17
  store ptr @at91_adc_info, ptr %91, align 8
  %92 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #12
  %93 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 5
  store i32 %92, ptr %93, align 4
  %94 = icmp slt i32 %92, 0
  br i1 %94, label %229, label %95

95:                                               ; preds = %88
  %96 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #12
  %97 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 10
  store ptr %96, ptr %97, align 4
  %98 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = ptrtoint ptr %96 to i32
  br label %229

101:                                              ; preds = %95
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 1) #12, !srcloc !10
  %102 = load ptr, ptr %97, align 4
  %103 = getelementptr i8, ptr %102, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 -1) #12, !srcloc !10
  %104 = load ptr, ptr %13, align 4
  %105 = getelementptr inbounds %struct.at91_adc_caps, ptr %104, i32 0, i32 1
  %106 = load i8, ptr %105, align 1, !range !9
  %107 = icmp eq i8 %106, 0
  %108 = load i32, ptr %93, align 4
  %109 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 6
  %110 = load ptr, ptr %109, align 8
  %111 = load ptr, ptr %110, align 4
  %112 = select i1 %107, ptr @at91_adc_rl_interrupt, ptr @at91_adc_9x5_interrupt
  %113 = call i32 @request_threaded_irq(i32 noundef %108, ptr noundef nonnull %112, ptr noundef null, i32 noundef 0, ptr noundef %111, ptr noundef nonnull %7) #12
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.21) #13
  br label %229

116:                                              ; preds = %101
  %117 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.22) #12
  %118 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 3
  store ptr %117, ptr %118, align 4
  %119 = icmp ugt ptr %117, inttoptr (i32 -4096 to ptr)
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.23) #13
  %121 = load ptr, ptr %118, align 4
  %122 = ptrtoint ptr %121 to i32
  br label %225

123:                                              ; preds = %116
  %124 = call fastcc i32 @clk_prepare_enable(ptr noundef %117)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.24) #13
  br label %225

127:                                              ; preds = %123
  %128 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.25) #12
  store ptr %128, ptr %11, align 4
  %129 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.26) #13
  %131 = load ptr, ptr %11, align 4
  %132 = ptrtoint ptr %131 to i32
  br label %222

133:                                              ; preds = %127
  %134 = call fastcc i32 @clk_prepare_enable(ptr noundef %128)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.27) #13
  br label %222

137:                                              ; preds = %133
  %138 = load ptr, ptr %118, align 4
  %139 = call i32 @clk_get_rate(ptr noundef %138) #12
  %140 = load ptr, ptr %11, align 4
  %141 = call i32 @clk_get_rate(ptr noundef %140) #12
  %142 = udiv i32 %141, 1000
  %143 = load i32, ptr %35, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.28) #13
  br label %219

146:                                              ; preds = %137
  %147 = shl i32 %141, 1
  %148 = udiv i32 %139, %147
  %149 = load ptr, ptr %13, align 4
  %150 = getelementptr inbounds %struct.at91_adc_caps, ptr %149, i32 0, i32 4
  %151 = load ptr, ptr %150, align 4
  %152 = call i32 %151(i32 noundef %143, i32 noundef %142) #12
  %153 = load i8, ptr %39, align 4
  %154 = icmp eq i8 %153, 0
  %155 = zext i8 %153 to i32
  %156 = mul nuw nsw i32 %142, %155
  %157 = udiv i32 %156, 1000
  %158 = shl i32 %157, 24
  %159 = add i32 %158, 251658240
  %160 = and i32 %159, 251658240
  %161 = select i1 %154, i32 0, i32 %160
  %162 = shl i32 %148, 8
  %163 = add i32 %162, -256
  %164 = load ptr, ptr %72, align 4
  %165 = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %164, i32 0, i32 4
  %166 = load i32, ptr %165, align 4
  %167 = and i32 %166, %163
  %168 = shl i32 %152, 16
  %169 = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %164, i32 0, i32 5
  %170 = load i32, ptr %169, align 4
  %171 = and i32 %170, %168
  %172 = or i32 %171, %167
  %173 = load i32, ptr %51, align 4
  %174 = load ptr, ptr %13, align 4
  %175 = getelementptr inbounds %struct.at91_adc_caps, ptr %174, i32 0, i32 6
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp eq i32 %173, %177
  %179 = or i32 %172, 16
  %180 = select i1 %178, i32 %179, i32 %172
  %181 = load i8, ptr %27, align 1, !range !9
  %182 = icmp eq i8 %181, 0
  %183 = or i32 %180, 32
  %184 = select i1 %182, i32 %180, i32 %183
  %185 = or i32 %184, %161
  %186 = load ptr, ptr %97, align 4
  %187 = getelementptr i8, ptr %186, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %185) #12, !srcloc !10
  %188 = call fastcc i32 @at91_adc_channel_init(ptr noundef nonnull %7)
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %146
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.29) #13
  br label %219

191:                                              ; preds = %146
  %192 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 19
  call void @__init_waitqueue_head(ptr noundef %192, ptr noundef nonnull @.str.30, ptr noundef nonnull @at91_adc_probe.__key) #12
  %193 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 8
  call void @__mutex_init(ptr noundef %193, ptr noundef nonnull @.str.32, ptr noundef nonnull @at91_adc_probe.__key.31) #12
  %194 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 21
  %195 = load i32, ptr %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %191
  %198 = call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %7, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @at91_adc_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.33) #13
  br label %219

201:                                              ; preds = %197
  %202 = call fastcc i32 @at91_adc_trigger_init(ptr noundef nonnull %7)
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.34) #13
  call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %7) #12
  br label %219

205:                                              ; preds = %191
  %206 = call fastcc i32 @at91_ts_register(ptr noundef nonnull %7, ptr noundef %0)
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %205
  call fastcc void @at91_ts_hw_init(ptr noundef nonnull %7, i32 noundef %142)
  br label %209

209:                                              ; preds = %208, %201
  %210 = call i32 @__iio_device_register(ptr noundef nonnull %7, ptr noundef nonnull @__this_module) #12
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %229

212:                                              ; preds = %209
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.35) #13
  %213 = load i32, ptr %194, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  call fastcc void @at91_adc_trigger_remove(ptr noundef nonnull %7)
  call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %7) #12
  br label %219

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.at91_adc_state, ptr %11, i32 0, i32 22
  %218 = load ptr, ptr %217, align 4
  call void @input_unregister_device(ptr noundef %218) #12
  br label %219

219:                                              ; preds = %216, %215, %205, %204, %200, %190, %145
  %220 = phi i32 [ %188, %190 ], [ %206, %205 ], [ %210, %216 ], [ %210, %215 ], [ %198, %200 ], [ %202, %204 ], [ -22, %145 ]
  %221 = load ptr, ptr %11, align 4
  call void @clk_disable(ptr noundef %221) #12
  call void @clk_unprepare(ptr noundef %221) #12
  br label %222

222:                                              ; preds = %219, %136, %130
  %223 = phi i32 [ %132, %130 ], [ %134, %136 ], [ %220, %219 ]
  %224 = load ptr, ptr %118, align 4
  call void @clk_disable(ptr noundef %224) #12
  call void @clk_unprepare(ptr noundef %224) #12
  br label %225

225:                                              ; preds = %222, %126, %120
  %226 = phi i32 [ %122, %120 ], [ %124, %126 ], [ %223, %222 ]
  %227 = load i32, ptr %93, align 4
  %228 = call ptr @free_irq(i32 noundef %227, ptr noundef nonnull %7) #12
  br label %229

229:                                              ; preds = %225, %209, %115, %99, %88, %78, %42, %31, %20, %1
  %230 = phi i32 [ -22, %20 ], [ -22, %31 ], [ -22, %42 ], [ %100, %99 ], [ %113, %115 ], [ %226, %225 ], [ -12, %1 ], [ %79, %78 ], [ -19, %88 ], [ 0, %209 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %230
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_remove(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  tail call void @iio_device_unregister(ptr noundef %3) #12
  %6 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 21
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.at91_adc_state, ptr %10, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.at91_adc_caps, ptr %12, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.at91_adc_state, ptr %10, i32 0, i32 15
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ 0, %16 ], [ %26, %18 ]
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr ptr, ptr %20, i32 %19
  %22 = load ptr, ptr %21, align 4
  tail call void @iio_trigger_unregister(ptr noundef %22) #12
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr ptr, ptr %23, i32 %19
  %25 = load ptr, ptr %24, align 4
  tail call void @iio_trigger_free(ptr noundef %25) #12
  %26 = add nuw i32 %19, 1
  %27 = load ptr, ptr %11, align 4
  %28 = getelementptr inbounds %struct.at91_adc_caps, ptr %27, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %18, label %31

31:                                               ; preds = %18, %9
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %3) #12
  br label %35

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 22
  %34 = load ptr, ptr %33, align 4
  tail call void @input_unregister_device(ptr noundef %34) #12
  br label %35

35:                                               ; preds = %32, %31
  %36 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %36) #12
  tail call void @clk_unprepare(ptr noundef %36) #12
  %37 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  tail call void @clk_disable(ptr noundef %38) #12
  tail call void @clk_unprepare(ptr noundef %38) #12
  %39 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = tail call ptr @free_irq(i32 noundef %40, ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @at91_adc_probe_dt_ts(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #5 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #12
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.37) #13
  br label %26

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  %10 = and i32 %9, -2
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 21
  store i32 %9, ptr %13, align 4
  %14 = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 20
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.at91_adc_caps, ptr %15, i32 0, i32 1
  %17 = load i8, ptr %16, align 1, !range !9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %20

19:                                               ; preds = %8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.38, i32 noundef %9) #13
  br label %26

20:                                               ; preds = %12
  store i32 0, ptr %4, align 4
  %21 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #12
  %22 = load i32, ptr %4, align 4
  %23 = getelementptr inbounds %struct.at91_adc_state, ptr %1, i32 0, i32 24
  store i32 %22, ptr %23, align 4
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.40) #13
  br label %26

26:                                               ; preds = %25, %20, %19, %12, %7
  %27 = phi i32 [ 0, %7 ], [ -22, %19 ], [ -22, %25 ], [ 0, %12 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_9x5_interrupt(i32 noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %8, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #12, !srcloc !11
  %14 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 9
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = sub nsw i32 32, %16
  %18 = lshr i32 -1, %17
  %19 = and i32 %18, %13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  tail call void @disable_irq_nosync(i32 noundef %0) #12
  %27 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  tail call void @iio_trigger_poll(ptr noundef %28) #12
  br label %50

29:                                               ; preds = %21
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct.at91_adc_state, ptr %30, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.at91_adc_state, ptr %30, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds %struct.at91_adc_state, ptr %30, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 2
  %40 = add i32 %39, %36
  %41 = getelementptr i8, ptr %32, i32 %40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #12, !srcloc !11
  %43 = trunc i32 %42 to i16
  %44 = getelementptr inbounds %struct.at91_adc_state, ptr %30, i32 0, i32 6
  store i16 %43, ptr %44, align 4
  %45 = load ptr, ptr %31, align 4
  %46 = getelementptr i8, ptr %45, i32 32
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #12, !srcloc !11
  %48 = getelementptr inbounds %struct.at91_adc_state, ptr %30, i32 0, i32 4
  store i8 1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.at91_adc_state, ptr %30, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %49, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %50

50:                                               ; preds = %29, %26, %2
  %51 = and i32 %13, 536870912
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr i8, ptr %54, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 536870912) #12, !srcloc !10
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr i8, ptr %56, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 1081081856) #12, !srcloc !10
  %58 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 23
  %59 = load i16, ptr %58, align 4
  %60 = zext i16 %59 to i32
  %61 = shl nuw i32 %60, 16
  %62 = or i32 %61, 5
  %63 = load ptr, ptr %5, align 4
  %64 = load ptr, ptr %7, align 4
  %65 = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %64, i32 0, i32 3
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr i8, ptr %63, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %62) #12, !srcloc !10
  br label %157

69:                                               ; preds = %50
  %70 = and i32 %13, 1073741824
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %5, align 4
  %74 = load ptr, ptr %7, align 4
  %75 = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %74, i32 0, i32 3
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = getelementptr i8, ptr %73, i32 %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 0) #12, !srcloc !10
  %79 = load ptr, ptr %5, align 4
  %80 = getelementptr i8, ptr %79, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 1081081856) #12, !srcloc !10
  %81 = load ptr, ptr %5, align 4
  %82 = getelementptr i8, ptr %81, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 536870912) #12, !srcloc !10
  %83 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 22
  %84 = load ptr, ptr %83, align 4
  tail call void @input_event(ptr noundef %84, i32 noundef 1, i32 noundef 330, i32 noundef 0) #12
  %85 = load ptr, ptr %83, align 4
  tail call void @input_event(ptr noundef %85, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %157

86:                                               ; preds = %69
  %87 = and i32 %13, 7340032
  %88 = icmp eq i32 %87, 7340032
  br i1 %88, label %89, label %157

89:                                               ; preds = %86
  %90 = icmp sgt i32 %13, -1
  br i1 %90, label %147, label %91

91:                                               ; preds = %89
  %92 = load ptr, ptr %3, align 8
  %93 = getelementptr inbounds %struct.at91_adc_state, ptr %92, i32 0, i32 18
  %94 = load i32, ptr %93, align 4
  %95 = shl nsw i32 -1, %94
  %96 = xor i32 %95, -1
  %97 = getelementptr inbounds %struct.at91_adc_state, ptr %92, i32 0, i32 10
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr i8, ptr %98, i32 180
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #12, !srcloc !11
  %101 = lshr i32 %100, 16
  %102 = and i32 %101, %96
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %91
  %105 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.42) #13
  br label %157

106:                                              ; preds = %91
  %107 = and i32 %100, %96
  %108 = mul i32 %107, 4095
  %109 = udiv i32 %108, %102
  %110 = load ptr, ptr %97, align 4
  %111 = getelementptr i8, ptr %110, i32 184
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #12, !srcloc !11
  %113 = lshr i32 %112, 16
  %114 = and i32 %113, %96
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.43) #13
  br label %157

118:                                              ; preds = %106
  %119 = and i32 %112, %96
  %120 = mul i32 %119, 4095
  %121 = udiv i32 %120, %114
  %122 = load ptr, ptr %97, align 4
  %123 = getelementptr i8, ptr %122, i32 188
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #12, !srcloc !11
  %125 = and i32 %124, %96
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %157, label %127

127:                                              ; preds = %118
  %128 = lshr i32 %124, 16
  %129 = and i32 %128, %96
  %130 = mul i32 %109, 1000
  %131 = lshr i32 %130, 10
  %132 = mul nuw nsw i32 %129, 1000
  %133 = udiv i32 %132, %125
  %134 = add nsw i32 %133, -1000
  %135 = mul i32 %134, %131
  %136 = udiv i32 %135, 1000
  %137 = getelementptr inbounds %struct.at91_adc_state, ptr %92, i32 0, i32 24
  %138 = load i32, ptr %137, align 4
  %139 = icmp ult i32 %136, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %127
  %141 = getelementptr inbounds %struct.at91_adc_state, ptr %92, i32 0, i32 22
  %142 = load ptr, ptr %141, align 4
  tail call void @input_event(ptr noundef %142, i32 noundef 3, i32 noundef 0, i32 noundef %109) #12
  %143 = load ptr, ptr %141, align 4
  tail call void @input_event(ptr noundef %143, i32 noundef 3, i32 noundef 1, i32 noundef %121) #12
  %144 = load ptr, ptr %141, align 4
  tail call void @input_event(ptr noundef %144, i32 noundef 3, i32 noundef 24, i32 noundef %136) #12
  %145 = load ptr, ptr %141, align 4
  tail call void @input_event(ptr noundef %145, i32 noundef 1, i32 noundef 330, i32 noundef 1) #12
  %146 = load ptr, ptr %141, align 4
  tail call void @input_event(ptr noundef %146, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %157

147:                                              ; preds = %89
  %148 = load ptr, ptr %5, align 4
  %149 = getelementptr i8, ptr %148, i32 180
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #12, !srcloc !11
  %151 = load ptr, ptr %5, align 4
  %152 = getelementptr i8, ptr %151, i32 184
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #12, !srcloc !11
  %154 = load ptr, ptr %5, align 4
  %155 = getelementptr i8, ptr %154, i32 188
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #12, !srcloc !11
  br label %157

157:                                              ; preds = %147, %140, %127, %118, %116, %104, %86, %72, %53
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_rl_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %8, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #12, !srcloc !11
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 44
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #12, !srcloc !11
  %17 = and i32 %16, %13
  %18 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 9
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = sub nsw i32 32, %20
  %22 = lshr i32 -1, %21
  %23 = and i32 %22, %17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %54, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  tail call void @disable_irq_nosync(i32 noundef %0) #12
  %31 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  tail call void @iio_trigger_poll(ptr noundef %32) #12
  br label %54

33:                                               ; preds = %25
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.at91_adc_state, ptr %34, i32 0, i32 10
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.at91_adc_state, ptr %34, i32 0, i32 11
  %38 = load ptr, ptr %37, align 4
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds %struct.at91_adc_state, ptr %34, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 2
  %44 = add i32 %43, %40
  %45 = getelementptr i8, ptr %36, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #12, !srcloc !11
  %47 = trunc i32 %46 to i16
  %48 = getelementptr inbounds %struct.at91_adc_state, ptr %34, i32 0, i32 6
  store i16 %47, ptr %48, align 4
  %49 = load ptr, ptr %35, align 4
  %50 = getelementptr i8, ptr %49, i32 32
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #12, !srcloc !11
  %52 = getelementptr inbounds %struct.at91_adc_state, ptr %34, i32 0, i32 4
  store i8 1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.at91_adc_state, ptr %34, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %53, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %54

54:                                               ; preds = %33, %30, %2
  %55 = and i32 %17, 1048576
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %5, align 4
  %59 = getelementptr i8, ptr %58, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #12, !srcloc !11
  %61 = and i32 %60, 268435455
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #12, !srcloc !10
  %64 = load ptr, ptr %5, align 4
  %65 = getelementptr i8, ptr %64, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 1048576) #12, !srcloc !10
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr i8, ptr %66, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 2097160) #12, !srcloc !10
  %68 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 23
  %69 = load i16, ptr %68, align 4
  %70 = zext i16 %69 to i32
  %71 = shl nuw i32 %70, 16
  %72 = or i32 %71, 5
  %73 = load ptr, ptr %5, align 4
  %74 = load ptr, ptr %7, align 4
  %75 = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %74, i32 0, i32 3
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = getelementptr i8, ptr %73, i32 %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %72) #12, !srcloc !10
  br label %163

79:                                               ; preds = %54
  %80 = and i32 %17, 2097152
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %107, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %5, align 4
  %84 = getelementptr i8, ptr %83, i32 4
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #12, !srcloc !11
  %86 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 25
  %87 = load i16, ptr %86, align 4
  %88 = zext i16 %87 to i32
  %89 = shl i32 %88, 28
  %90 = or i32 %89, %85
  %91 = load ptr, ptr %5, align 4
  %92 = getelementptr i8, ptr %91, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #12, !srcloc !10
  %93 = load ptr, ptr %5, align 4
  %94 = load ptr, ptr %7, align 4
  %95 = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %94, i32 0, i32 3
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = getelementptr i8, ptr %93, i32 %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 0) #12, !srcloc !10
  %99 = load ptr, ptr %5, align 4
  %100 = getelementptr i8, ptr %99, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 2097160) #12, !srcloc !10
  %101 = load ptr, ptr %5, align 4
  %102 = getelementptr i8, ptr %101, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 1048576) #12, !srcloc !10
  %103 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 26
  store i8 0, ptr %103, align 2
  %104 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 22
  %105 = load ptr, ptr %104, align 4
  tail call void @input_event(ptr noundef %105, i32 noundef 1, i32 noundef 330, i32 noundef 0) #12
  %106 = load ptr, ptr %104, align 4
  tail call void @input_event(ptr noundef %106, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %163

107:                                              ; preds = %79
  %108 = and i32 %17, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %163, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 22
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %163, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 26
  %116 = load i8, ptr %115, align 2, !range !9
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 27
  %120 = load i32, ptr %119, align 4
  tail call void @input_event(ptr noundef nonnull %112, i32 noundef 3, i32 noundef 0, i32 noundef %120) #12
  %121 = load ptr, ptr %111, align 4
  %122 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 28
  %123 = load i32, ptr %122, align 4
  tail call void @input_event(ptr noundef %121, i32 noundef 3, i32 noundef 1, i32 noundef %123) #12
  %124 = load ptr, ptr %111, align 4
  tail call void @input_event(ptr noundef %124, i32 noundef 1, i32 noundef 330, i32 noundef 1) #12
  %125 = load ptr, ptr %111, align 4
  tail call void @input_event(ptr noundef %125, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %127

126:                                              ; preds = %114
  store i8 1, ptr %115, align 2
  br label %127

127:                                              ; preds = %126, %118
  %128 = load ptr, ptr %5, align 4
  %129 = load ptr, ptr %7, align 4
  %130 = load i8, ptr %129, align 4
  %131 = zext i8 %130 to i32
  %132 = add nuw nsw i32 %131, 12
  %133 = getelementptr i8, ptr %128, i32 %132
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #12, !srcloc !11
  %135 = shl i32 %134, 10
  %136 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 27
  store i32 %135, ptr %136, align 4
  %137 = load ptr, ptr %5, align 4
  %138 = load ptr, ptr %7, align 4
  %139 = load i8, ptr %138, align 4
  %140 = zext i8 %139 to i32
  %141 = add nuw nsw i32 %140, 8
  %142 = getelementptr i8, ptr %137, i32 %141
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #12, !srcloc !11
  %144 = load i32, ptr %136, align 4
  %145 = udiv i32 %144, %143
  store i32 %145, ptr %136, align 4
  %146 = load ptr, ptr %5, align 4
  %147 = load ptr, ptr %7, align 4
  %148 = load i8, ptr %147, align 4
  %149 = zext i8 %148 to i32
  %150 = add nuw nsw i32 %149, 4
  %151 = getelementptr i8, ptr %146, i32 %150
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #12, !srcloc !11
  %153 = shl i32 %152, 10
  %154 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 28
  store i32 %153, ptr %154, align 4
  %155 = load ptr, ptr %5, align 4
  %156 = load ptr, ptr %7, align 4
  %157 = load i8, ptr %156, align 4
  %158 = zext i8 %157 to i32
  %159 = getelementptr i8, ptr %155, i32 %158
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #12, !srcloc !11
  %161 = load i32, ptr %154, align 4
  %162 = udiv i32 %161, %160
  store i32 %162, ptr %154, align 4
  br label %163

163:                                              ; preds = %127, %110, %107, %82, %57
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #8 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #12
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @at91_adc_channel_init(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 21
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 5
  %7 = select i1 %6, i32 -32, i32 -1
  %8 = icmp eq i32 %5, 4
  %9 = select i1 %8, i32 -16, i32 %7
  %10 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %9, %11
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 9
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = tail call i32 @__bitmap_weight(ptr noundef %10, i32 noundef %15) #12
  %17 = add i32 %16, 1
  %18 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 14
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %20 = mul i32 %16, 88
  %21 = add i32 %20, 176
  %22 = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef %21, i32 noundef 3520) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %67, label %24

24:                                               ; preds = %1
  %25 = load i8, ptr %13, align 4
  %26 = zext i8 %25 to i32
  %27 = tail call i32 @_find_next_bit_le(ptr noundef %10, i32 noundef %26, i32 noundef 0) #12
  %28 = load i8, ptr %13, align 4
  %29 = zext i8 %28 to i32
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 18
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i32 [ 0, %31 ], [ %49, %33 ]
  %35 = phi i32 [ %27, %31 ], [ %53, %33 ]
  %36 = getelementptr %struct.iio_chan_spec, ptr %22, i32 %34
  store i32 0, ptr %36, align 4
  %37 = getelementptr %struct.iio_chan_spec, ptr %22, i32 %34, i32 19
  %38 = load i8, ptr %37, align 4
  %39 = or i8 %38, 2
  store i8 %39, ptr %37, align 4
  %40 = getelementptr %struct.iio_chan_spec, ptr %22, i32 %34, i32 1
  store i32 %35, ptr %40, align 4
  %41 = getelementptr %struct.iio_chan_spec, ptr %22, i32 %34, i32 4
  store i32 %34, ptr %41, align 4
  %42 = getelementptr %struct.iio_chan_spec, ptr %22, i32 %34, i32 5
  store i8 117, ptr %42, align 4
  %43 = load i32, ptr %32, align 4
  %44 = trunc i32 %43 to i8
  %45 = getelementptr %struct.iio_chan_spec, ptr %22, i32 %34, i32 5, i32 1
  store i8 %44, ptr %45, align 1
  %46 = getelementptr %struct.iio_chan_spec, ptr %22, i32 %34, i32 5, i32 2
  store i8 16, ptr %46, align 2
  %47 = getelementptr %struct.iio_chan_spec, ptr %22, i32 %34, i32 8
  store i32 4, ptr %47, align 4
  %48 = getelementptr %struct.iio_chan_spec, ptr %22, i32 %34, i32 6
  store i32 1, ptr %48, align 4
  %49 = add i32 %34, 1
  %50 = load i8, ptr %13, align 4
  %51 = zext i8 %50 to i32
  %52 = add nsw i32 %35, 1
  %53 = tail call i32 @_find_next_bit_le(ptr noundef %10, i32 noundef %51, i32 noundef %52) #12
  %54 = load i8, ptr %13, align 4
  %55 = zext i8 %54 to i32
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %33, label %57

57:                                               ; preds = %33, %24
  %58 = phi i32 [ 0, %24 ], [ %49, %33 ]
  %59 = getelementptr %struct.iio_chan_spec, ptr %22, i32 %58
  store i32 13, ptr %59, align 4
  %60 = getelementptr %struct.iio_chan_spec, ptr %22, i32 %58, i32 1
  store i32 -1, ptr %60, align 4
  %61 = getelementptr %struct.iio_chan_spec, ptr %22, i32 %58, i32 4
  store i32 %58, ptr %61, align 4
  %62 = getelementptr %struct.iio_chan_spec, ptr %22, i32 %58, i32 5
  store i8 115, ptr %62, align 4
  %63 = getelementptr %struct.iio_chan_spec, ptr %22, i32 %58, i32 5, i32 1
  store i8 64, ptr %63, align 1
  %64 = getelementptr %struct.iio_chan_spec, ptr %22, i32 %58, i32 5, i32 2
  store i8 64, ptr %64, align 2
  %65 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  store ptr %22, ptr %65, align 8
  %66 = load i32, ptr %18, align 4
  br label %67

67:                                               ; preds = %57, %1
  %68 = phi i32 [ %66, %57 ], [ -12, %1 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @at91_adc_trigger_init(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.at91_adc_caps, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #12
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %11, label %13, !prof !12

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 15
  store ptr null, ptr %12, align 4
  br label %80

13:                                               ; preds = %1
  %14 = extractvalue { i32, i1 } %9, 0
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %14, i32 noundef 3520) #12
  %16 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 15
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %80, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.at91_adc_caps, ptr %19, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %80, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 16
  %25 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %26 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 15
  br label %27

27:                                               ; preds = %64, %23
  %28 = phi ptr [ %19, %23 ], [ %65, %64 ]
  %29 = phi i32 [ 0, %23 ], [ %66, %64 ]
  %30 = getelementptr inbounds %struct.at91_adc_caps, ptr %28, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr %struct.at91_adc_trigger, ptr %31, i32 %29, i32 2
  %33 = load i8, ptr %32, align 1, !range !9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i8, ptr %24, align 4, !range !9
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %64, label %38

38:                                               ; preds = %35, %27
  %39 = getelementptr %struct.at91_adc_trigger, ptr %31, i32 %29
  %40 = load ptr, ptr %25, align 4
  %41 = load ptr, ptr %26, align 8
  %42 = tail call i32 @iio_device_id(ptr noundef %0) #12
  %43 = load ptr, ptr %39, align 4
  %44 = tail call ptr (ptr, ptr, ...) @iio_trigger_alloc(ptr noundef %40, ptr noundef nonnull @.str.45, ptr noundef %41, i32 noundef %42, ptr noundef %43) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.iio_trigger, ptr %44, i32 0, i32 4, i32 8
  store ptr %0, ptr %47, align 8
  store ptr @at91_adc_trigger_ops, ptr %44, align 8
  %48 = tail call i32 @__iio_trigger_register(ptr noundef nonnull %44, ptr noundef nonnull @__this_module) #12
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, ptr %44, ptr null
  br label %51

51:                                               ; preds = %46, %38
  %52 = phi ptr [ null, %38 ], [ %50, %46 ]
  %53 = load ptr, ptr %16, align 4
  %54 = getelementptr ptr, ptr %53, i32 %29
  store ptr %52, ptr %54, align 4
  %55 = load ptr, ptr %16, align 4
  %56 = getelementptr ptr, ptr %55, i32 %29
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %51
  %60 = load ptr, ptr %5, align 4
  br label %64

61:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.44, i32 noundef %29) #13
  %62 = add i32 %29, -1
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %70, label %80

64:                                               ; preds = %59, %35
  %65 = phi ptr [ %60, %59 ], [ %28, %35 ]
  %66 = add nuw i32 %29, 1
  %67 = getelementptr inbounds %struct.at91_adc_caps, ptr %65, i32 0, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %27, label %80

70:                                               ; preds = %70, %61
  %71 = phi i32 [ %78, %70 ], [ %62, %61 ]
  %72 = load ptr, ptr %16, align 4
  %73 = getelementptr ptr, ptr %72, i32 %71
  %74 = load ptr, ptr %73, align 4
  tail call void @iio_trigger_unregister(ptr noundef %74) #12
  %75 = load ptr, ptr %16, align 4
  %76 = getelementptr ptr, ptr %75, i32 %71
  %77 = load ptr, ptr %76, align 4
  tail call void @iio_trigger_free(ptr noundef %77) #12
  %78 = add nsw i32 %71, -1
  %79 = icmp sgt i32 %71, 0
  br i1 %79, label %70, label %80

80:                                               ; preds = %70, %64, %61, %18, %13, %11
  %81 = phi i32 [ -12, %13 ], [ -12, %11 ], [ -12, %61 ], [ 0, %18 ], [ -12, %70 ], [ 0, %64 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @at91_ts_register(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @input_allocate_device() #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.46) #13
  br label %42

9:                                                ; preds = %2
  store ptr @.str.8, ptr %5, align 8
  %10 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 3
  store i16 25, ptr %10, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %12 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 31
  store ptr @atmel_ts_open, ptr %13, align 4
  %14 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 32
  store ptr @atmel_ts_close, ptr %14, align 8
  %15 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 10
  store i32 %17, ptr %15, align 4
  %18 = getelementptr %struct.input_dev, ptr %5, i32 0, i32 6, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, 1024
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 20
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.at91_adc_caps, ptr %22, i32 0, i32 1
  %24 = load i8, ptr %23, align 1, !range !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %9
  tail call void @input_set_abs_params(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #12
  tail call void @input_set_abs_params(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #12
  tail call void @input_set_abs_params(ptr noundef nonnull %5, i32 noundef 24, i32 noundef 0, i32 noundef 16777215, i32 noundef 0, i32 noundef 0) #12
  br label %33

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 21
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.47) #13
  br label %38

32:                                               ; preds = %27
  tail call void @input_set_abs_params(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #12
  tail call void @input_set_abs_params(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #12
  br label %33

33:                                               ; preds = %32, %26
  %34 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 22
  store ptr %5, ptr %34, align 4
  %35 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40, i32 8
  store ptr %4, ptr %35, align 8
  %36 = tail call i32 @input_register_device(ptr noundef nonnull %5) #12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33, %31
  %39 = phi i32 [ %36, %33 ], [ -22, %31 ]
  %40 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 22
  %41 = load ptr, ptr %40, align 4
  tail call void @input_free_device(ptr noundef %41) #12
  br label %42

42:                                               ; preds = %38, %33, %7
  %43 = phi i32 [ %39, %38 ], [ -12, %7 ], [ 0, %33 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at91_ts_hw_init(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = mul i32 %1, 200
  %6 = udiv i32 %5, 1000
  %7 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 25
  %8 = and i32 %6, 65535
  br label %9

9:                                                ; preds = %9, %2
  %10 = phi i32 [ 0, %2 ], [ %11, %9 ]
  %11 = add i32 %10, 1
  %12 = lshr i32 %8, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %9

14:                                               ; preds = %9
  %15 = shl nsw i32 -1, %11
  %16 = add nsw i32 %15, %8
  %17 = tail call i32 @llvm.abs.i32(i32 %16, i1 false)
  %18 = shl nsw i32 -1, %10
  %19 = add nsw i32 %18, %8
  %20 = tail call i32 @llvm.abs.i32(i32 %19, i1 false)
  %21 = icmp slt i32 %17, %20
  %22 = select i1 %21, i32 %11, i32 %10
  %23 = trunc i32 %22 to i16
  store i16 %23, ptr %7, align 4
  %24 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 20
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.at91_adc_caps, ptr %25, i32 0, i32 1
  %27 = load i8, ptr %26, align 1, !range !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #12, !srcloc !11
  %34 = load i16, ptr %7, align 4
  %35 = zext i16 %34 to i32
  %36 = shl i32 %35, 28
  %37 = or i32 %33, %36
  %38 = or i32 %37, 65
  %39 = load ptr, ptr %30, align 4
  %40 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #12, !srcloc !10
  %41 = load ptr, ptr %30, align 4
  %42 = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 167772160) #12, !srcloc !10
  br label %73

43:                                               ; preds = %14
  %44 = mul i32 %1, 10
  %45 = udiv i32 %44, 1000
  %46 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 21
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 4
  %49 = select i1 %48, i32 2, i32 3
  %50 = shl i32 %45, 14
  %51 = add i32 %50, 49152
  %52 = and i32 %51, 983040
  %53 = getelementptr inbounds %struct.at91_adc_caps, ptr %25, i32 0, i32 2
  %54 = load i8, ptr %53, align 2
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 4
  %57 = and i32 %56, 48
  %58 = shl i32 %22, 28
  %59 = or i32 %52, %58
  %60 = or i32 %59, %49
  %61 = or i32 %60, %57
  %62 = or i32 %61, 20972288
  %63 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 10
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %62) #12, !srcloc !10
  %66 = load ptr, ptr %24, align 4
  %67 = getelementptr inbounds %struct.at91_adc_caps, ptr %66, i32 0, i32 3
  %68 = load i8, ptr %67, align 1
  %69 = and i8 %68, 3
  %70 = zext i8 %69 to i32
  %71 = load ptr, ptr %63, align 4
  %72 = getelementptr i8, ptr %71, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #12, !srcloc !10
  br label %73

73:                                               ; preds = %43, %29
  %74 = phi i32 [ 2000, %43 ], [ 10000, %29 ]
  %75 = mul i32 %74, %1
  %76 = udiv i32 %75, 1000
  %77 = trunc i32 %76 to i16
  %78 = add i16 %77, -1
  %79 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 23
  store i16 %78, ptr %79, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at91_adc_trigger_remove(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.at91_adc_caps, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 15
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ 0, %9 ], [ %19, %11 ]
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr ptr, ptr %13, i32 %12
  %15 = load ptr, ptr %14, align 4
  tail call void @iio_trigger_unregister(ptr noundef %15) #12
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr ptr, ptr %16, i32 %12
  %18 = load ptr, ptr %17, align 4
  tail call void @iio_trigger_free(ptr noundef %18) #12
  %19 = add nuw i32 %12, 1
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds %struct.at91_adc_caps, ptr %20, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %11, label %24

24:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_read_raw(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #5 {
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  switch i32 %4, label %79 [
    i32 0, label %9
    i32 2, label %73
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 7
  store i32 %12, ptr %13, align 4
  %14 = load i32, ptr %11, align 4
  %15 = shl nuw i32 1, %14
  %16 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #12, !srcloc !10
  %19 = load i32, ptr %11, align 4
  %20 = shl nuw i32 1, %19
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #12, !srcloc !10
  %23 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 2) #12, !srcloc !10
  %24 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 4
  %25 = load i8, ptr %24, align 4, !range !9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #12
  %28 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 19
  %29 = call i32 @prepare_to_wait_event(ptr noundef %28, ptr noundef nonnull %6, i32 noundef 1) #12
  %30 = load i8, ptr %24, align 4, !range !9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %36, %27
  %33 = phi i32 [ %44, %36 ], [ 100, %27 ]
  %34 = phi i32 [ %38, %36 ], [ %29, %27 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = call i32 @schedule_timeout(i32 noundef %33) #12
  %38 = call i32 @prepare_to_wait_event(ptr noundef %28, ptr noundef nonnull %6, i32 noundef 1) #12
  %39 = load i8, ptr %24, align 4, !range !9
  %40 = icmp ne i8 %39, 0
  %41 = xor i1 %40, true
  %42 = icmp ne i32 %37, 0
  %43 = select i1 %41, i1 true, i1 %42
  %44 = select i1 %43, i32 %37, i32 1
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %40, i1 true, i1 %45
  br i1 %46, label %47, label %32

47:                                               ; preds = %36, %27
  %48 = phi i32 [ 100, %27 ], [ %44, %36 ]
  call void @finish_wait(ptr noundef %28, ptr noundef nonnull %6) #12
  br label %49

49:                                               ; preds = %47, %32
  %50 = phi i32 [ %48, %47 ], [ %34, %32 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #12
  br label %51

51:                                               ; preds = %49, %9
  %52 = phi i32 [ 100, %9 ], [ %50, %49 ]
  %53 = load i32, ptr %11, align 4
  %54 = shl nuw i32 1, %53
  %55 = load ptr, ptr %16, align 4
  %56 = getelementptr i8, ptr %55, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #12, !srcloc !10
  %57 = load i32, ptr %11, align 4
  %58 = shl nuw i32 1, %57
  %59 = load ptr, ptr %16, align 4
  %60 = getelementptr i8, ptr %59, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #12, !srcloc !10
  %61 = icmp sgt i32 %52, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 6
  %64 = load i16, ptr %63, align 4
  %65 = zext i16 %64 to i32
  store i32 %65, ptr %2, align 4
  store i16 0, ptr %63, align 4
  store i8 0, ptr %24, align 4
  br label %71

66:                                               ; preds = %51
  %67 = icmp eq i32 %52, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %70 = load i32, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.41, i32 noundef %70) #13
  br label %71

71:                                               ; preds = %68, %66, %62
  %72 = phi i32 [ 1, %62 ], [ -110, %68 ], [ %52, %66 ]
  call void @mutex_unlock(ptr noundef %10) #12
  br label %79

73:                                               ; preds = %5
  %74 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 17
  %75 = load i32, ptr %74, align 4
  store i32 %75, ptr %2, align 4
  %76 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5, i32 1
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  store i32 %78, ptr %3, align 4
  br label %79

79:                                               ; preds = %73, %71, %5
  %80 = phi i32 [ 11, %73 ], [ %72, %71 ], [ -22, %5 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_trigger_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %49, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 8
  %11 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 13
  %12 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 10
  %13 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 11
  %14 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 1
  br label %15

15:                                               ; preds = %44, %9
  %16 = phi i32 [ %7, %9 ], [ %45, %44 ]
  %17 = phi i32 [ 0, %9 ], [ %46, %44 ]
  %18 = phi i32 [ 0, %9 ], [ %47, %44 ]
  %19 = load ptr, ptr %10, align 4
  %20 = lshr i32 %18, 5
  %21 = getelementptr i32, ptr %19, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %18, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %15
  %28 = load ptr, ptr %11, align 8
  %29 = load ptr, ptr %12, align 4
  %30 = load ptr, ptr %13, align 4
  %31 = load i8, ptr %30, align 4
  %32 = zext i8 %31 to i32
  %33 = getelementptr %struct.iio_chan_spec, ptr %28, i32 %18, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 2
  %36 = add i32 %35, %32
  %37 = getelementptr i8, ptr %29, i32 %36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #12, !srcloc !11
  %39 = trunc i32 %38 to i16
  %40 = load ptr, ptr %14, align 4
  %41 = getelementptr i16, ptr %40, i32 %17
  store i16 %39, ptr %41, align 2
  %42 = add i32 %17, 1
  %43 = load i32, ptr %6, align 8
  br label %44

44:                                               ; preds = %27, %15
  %45 = phi i32 [ %43, %27 ], [ %16, %15 ]
  %46 = phi i32 [ %42, %27 ], [ %17, %15 ]
  %47 = add nuw i32 %18, 1
  %48 = icmp ult i32 %47, %45
  br i1 %48, label %15, label %49

49:                                               ; preds = %44, %2
  %50 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 9
  %53 = load i8, ptr %52, align 8, !range !9
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.iio_poll_func, ptr %1, i32 0, i32 6
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = lshr i32 %59, 3
  %61 = add nsw i32 %60, -1
  %62 = getelementptr i64, ptr %51, i32 %61
  store i64 %57, ptr %62, align 8
  br label %63

63:                                               ; preds = %55, %49
  %64 = tail call i32 @iio_push_to_buffers(ptr noundef %3, ptr noundef %51) #12
  %65 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 10
  %66 = load ptr, ptr %65, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %66) #12
  %67 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 32
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #12, !srcloc !11
  %71 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  tail call void @enable_irq(i32 noundef %72) #12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_configure_trigger(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #5 {
  %3 = getelementptr inbounds %struct.iio_trigger, ptr %0, i32 0, i32 4, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.at91_adc_state, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.at91_adc_state, ptr %6, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %8, i32 0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #12, !srcloc !11
  %16 = getelementptr inbounds %struct.at91_adc_state, ptr %6, i32 0, i32 20
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.at91_adc_caps, ptr %17, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.iio_trigger, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.at91_adc_state, ptr %24, i32 0, i32 20
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.at91_adc_caps, ptr %26, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %144, label %30

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 15
  br label %32

32:                                               ; preds = %48, %30
  %33 = phi i32 [ 0, %30 ], [ %49, %48 ]
  %34 = load ptr, ptr %31, align 8
  %35 = tail call i32 @iio_device_id(ptr noundef %4) #12
  %36 = getelementptr %struct.at91_adc_trigger, ptr %19, i32 %33
  %37 = load ptr, ptr %36, align 4
  %38 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.45, ptr noundef %34, i32 noundef %35, ptr noundef %37) #12
  %39 = icmp eq ptr %38, null
  br i1 %39, label %144, label %40

40:                                               ; preds = %32
  %41 = tail call i32 @strcmp(ptr noundef %23, ptr noundef nonnull %38) #12
  %42 = icmp eq i32 %41, 0
  tail call void @kfree(ptr noundef nonnull %38) #12
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = getelementptr %struct.at91_adc_trigger, ptr %19, i32 %33, i32 1
  %45 = load i8, ptr %44, align 4
  %46 = icmp eq i8 %45, 0
  %47 = zext i8 %45 to i32
  br i1 %46, label %144, label %54

48:                                               ; preds = %40
  %49 = add nuw i32 %33, 1
  %50 = load ptr, ptr %25, align 4
  %51 = getelementptr inbounds %struct.at91_adc_caps, ptr %50, i32 0, i32 8
  %52 = load i32, ptr %51, align 4
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %32, label %144

54:                                               ; preds = %43
  br i1 %1, label %55, label %101

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %57, i32 noundef 3264) #14
  %59 = getelementptr inbounds %struct.at91_adc_state, ptr %6, i32 0, i32 1
  store ptr %58, ptr %59, align 4
  %60 = icmp eq ptr %58, null
  br i1 %60, label %144, label %61

61:                                               ; preds = %55
  %62 = or i32 %15, %47
  %63 = load ptr, ptr %9, align 4
  %64 = load i8, ptr %11, align 1
  %65 = zext i8 %64 to i32
  %66 = getelementptr i8, ptr %63, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %62) #12, !srcloc !10
  %67 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 8
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.at91_adc_state, ptr %6, i32 0, i32 9
  %70 = load i8, ptr %69, align 4
  %71 = zext i8 %70 to i32
  %72 = tail call i32 @_find_next_bit_le(ptr noundef %68, i32 noundef %71, i32 noundef 0) #12
  %73 = and i32 %72, 255
  %74 = load i8, ptr %69, align 4
  %75 = zext i8 %74 to i32
  %76 = icmp ult i32 %73, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %61
  %78 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 13
  br label %79

79:                                               ; preds = %79, %77
  %80 = phi i32 [ %73, %77 ], [ %92, %79 ]
  %81 = load ptr, ptr %78, align 8
  %82 = getelementptr %struct.iio_chan_spec, ptr %81, i32 %80, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = shl nuw i32 1, %83
  %85 = load ptr, ptr %9, align 4
  %86 = getelementptr i8, ptr %85, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #12, !srcloc !10
  %87 = load ptr, ptr %67, align 4
  %88 = load i8, ptr %69, align 4
  %89 = zext i8 %88 to i32
  %90 = add nuw nsw i32 %80, 1
  %91 = tail call i32 @_find_next_bit_le(ptr noundef %87, i32 noundef %89, i32 noundef %90) #12
  %92 = and i32 %91, 255
  %93 = load i8, ptr %69, align 4
  %94 = zext i8 %93 to i32
  %95 = icmp ult i32 %92, %94
  br i1 %95, label %79, label %96

96:                                               ; preds = %79, %61
  %97 = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %8, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %9, align 4
  %100 = getelementptr i8, ptr %99, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #12, !srcloc !10
  br label %144

101:                                              ; preds = %54
  %102 = getelementptr inbounds %struct.at91_adc_reg_desc, ptr %8, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = load ptr, ptr %9, align 4
  %105 = getelementptr i8, ptr %104, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #12, !srcloc !10
  %106 = xor i32 %47, -1
  %107 = and i32 %15, %106
  %108 = load ptr, ptr %9, align 4
  %109 = load i8, ptr %11, align 1
  %110 = zext i8 %109 to i32
  %111 = getelementptr i8, ptr %108, i32 %110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %107) #12, !srcloc !10
  %112 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 8
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.at91_adc_state, ptr %6, i32 0, i32 9
  %115 = load i8, ptr %114, align 4
  %116 = zext i8 %115 to i32
  %117 = tail call i32 @_find_next_bit_le(ptr noundef %113, i32 noundef %116, i32 noundef 0) #12
  %118 = and i32 %117, 255
  %119 = load i8, ptr %114, align 4
  %120 = zext i8 %119 to i32
  %121 = icmp ult i32 %118, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %101
  %123 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 13
  br label %124

124:                                              ; preds = %124, %122
  %125 = phi i32 [ %118, %122 ], [ %137, %124 ]
  %126 = load ptr, ptr %123, align 8
  %127 = getelementptr %struct.iio_chan_spec, ptr %126, i32 %125, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = shl nuw i32 1, %128
  %130 = load ptr, ptr %9, align 4
  %131 = getelementptr i8, ptr %130, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #12, !srcloc !10
  %132 = load ptr, ptr %112, align 4
  %133 = load i8, ptr %114, align 4
  %134 = zext i8 %133 to i32
  %135 = add nuw nsw i32 %125, 1
  %136 = tail call i32 @_find_next_bit_le(ptr noundef %132, i32 noundef %134, i32 noundef %135) #12
  %137 = and i32 %136, 255
  %138 = load i8, ptr %114, align 4
  %139 = zext i8 %138 to i32
  %140 = icmp ult i32 %137, %139
  br i1 %140, label %124, label %141

141:                                              ; preds = %124, %101
  %142 = getelementptr inbounds %struct.at91_adc_state, ptr %6, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  tail call void @kfree(ptr noundef %143) #12
  br label %144

144:                                              ; preds = %141, %96, %55, %48, %43, %32, %2
  %145 = phi i32 [ -12, %55 ], [ 0, %141 ], [ 0, %96 ], [ -22, %2 ], [ -22, %43 ], [ -22, %48 ], [ -12, %32 ]
  ret i32 %145
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_ts_open(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.at91_adc_caps, ptr %5, i32 0, i32 1
  %7 = load i8, ptr %6, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 36
  br i1 %8, label %13, label %12

12:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 536870912) #12, !srcloc !10
  br label %14

13:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1048576) #12, !srcloc !10
  br label %14

14:                                               ; preds = %13, %12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_ts_close(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.at91_adc_caps, ptr %5, i32 0, i32 1
  %7 = load i8, ptr %6, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 40
  br i1 %8, label %13, label %12

12:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 536870912) #12, !srcloc !10
  br label %14

13:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1048576) #12, !srcloc !10
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_suspend(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #12
  tail call void @clk_unprepare(ptr noundef %8) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_resume(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #12
  br label %14

14:                                               ; preds = %13, %10, %1
  %15 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!10 = !{i64 1756383}
!11 = !{i64 1756801}
!12 = !{!"branch_weights", i32 1, i32 2000}
