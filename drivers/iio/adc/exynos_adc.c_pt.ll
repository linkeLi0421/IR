; ModuleID = '/llk/IR/drivers/iio/adc/exynos_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/exynos_adc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.exynos_adc_data = type { i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr }
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
%struct.lock_class_key = type {}
%struct.exynos_adc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.completion, i32, i32, i8, i8, i32, i32, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@exynos_adc_match = internal constant [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_adc_s3c24xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2416-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_adc_s3c2416_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2440-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_adc_s3c24xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2443-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_adc_s3c2443_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6410-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_adc_s3c64xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_adc_s5pv210_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4212_adc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos-adc-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_adc_v1_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos-adc-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_adc_v2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos3250_adc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7_adc_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author250 = internal constant [56 x i8] c"author=Naveen Krishna Chatradhi <ch.naveen@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [39 x i8] c"description=Samsung EXYNOS5 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@exynos_adc_s3c24xx_data = internal constant %struct.exynos_adc_data { i32 8, i8 0, i8 0, i32 0, i32 1023, ptr @exynos_adc_v1_init_hw, ptr @exynos_adc_v1_exit_hw, ptr null, ptr @exynos_adc_s3c64xx_start_conv }, align 4
@exynos_adc_s3c2416_data = internal constant %struct.exynos_adc_data { i32 8, i8 0, i8 0, i32 0, i32 4095, ptr @exynos_adc_v1_init_hw, ptr @exynos_adc_v1_exit_hw, ptr null, ptr @exynos_adc_s3c2416_start_conv }, align 4
@exynos_adc_s3c2443_data = internal constant %struct.exynos_adc_data { i32 8, i8 0, i8 0, i32 0, i32 1023, ptr @exynos_adc_v1_init_hw, ptr @exynos_adc_v1_exit_hw, ptr null, ptr @exynos_adc_s3c2443_start_conv }, align 4
@exynos_adc_s3c64xx_data = internal constant %struct.exynos_adc_data { i32 8, i8 0, i8 0, i32 0, i32 4095, ptr @exynos_adc_v1_init_hw, ptr @exynos_adc_v1_exit_hw, ptr @exynos_adc_v1_clear_irq, ptr @exynos_adc_s3c64xx_start_conv }, align 4
@exynos_adc_s5pv210_data = internal constant %struct.exynos_adc_data { i32 10, i8 0, i8 0, i32 0, i32 4095, ptr @exynos_adc_v1_init_hw, ptr @exynos_adc_v1_exit_hw, ptr @exynos_adc_v1_clear_irq, ptr @exynos_adc_v1_start_conv }, align 4
@exynos4212_adc_data = internal constant %struct.exynos_adc_data { i32 4, i8 0, i8 1, i32 1816, i32 4095, ptr @exynos_adc_v1_init_hw, ptr @exynos_adc_v1_exit_hw, ptr @exynos_adc_v1_clear_irq, ptr @exynos_adc_v1_start_conv }, align 4
@exynos_adc_v1_data = internal constant %struct.exynos_adc_data { i32 8, i8 0, i8 1, i32 1816, i32 4095, ptr @exynos_adc_v1_init_hw, ptr @exynos_adc_v1_exit_hw, ptr @exynos_adc_v1_clear_irq, ptr @exynos_adc_v1_start_conv }, align 4
@exynos_adc_v2_data = internal constant %struct.exynos_adc_data { i32 10, i8 0, i8 1, i32 1824, i32 4095, ptr @exynos_adc_v2_init_hw, ptr @exynos_adc_v2_exit_hw, ptr @exynos_adc_v2_clear_irq, ptr @exynos_adc_v2_start_conv }, align 4
@exynos3250_adc_data = internal constant %struct.exynos_adc_data { i32 2, i8 1, i8 1, i32 1816, i32 4095, ptr @exynos_adc_v2_init_hw, ptr @exynos_adc_v2_exit_hw, ptr @exynos_adc_v2_clear_irq, ptr @exynos_adc_v2_start_conv }, align 4
@exynos7_adc_data = internal constant %struct.exynos_adc_data { i32 8, i8 0, i8 0, i32 0, i32 4095, ptr @exynos_adc_exynos7_init_hw, ptr @exynos_adc_v2_exit_hw, ptr @exynos_adc_v2_clear_irq, ptr @exynos_adc_v2_start_conv }, align 4
@exynos_adc_driver = internal global %struct.platform_driver { ptr @exynos_adc_probe, ptr @exynos_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_adc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"exynos-adc\00", align 1
@exynos_adc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @exynos_adc_suspend, ptr @exynos_adc_resume, ptr @exynos_adc_suspend, ptr @exynos_adc_resume, ptr @exynos_adc_suspend, ptr @exynos_adc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed allocating iio device\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed getting exynos_adc_data\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"samsung,syscon-phandle\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"syscon regmap lookup failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed getting clock, err = %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"failed getting sclk clock, err = %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"failed getting regulator\00", align 1
@exynos_adc_iio_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @exynos_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_adc_reg_access, ptr null, ptr null, ptr null }, align 4
@exynos_adc_iio_channels = internal constant [10 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.72 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.21, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.72 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.22, i8 2 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.72 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.23, i8 2 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.72 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 2 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.72 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.25, i8 2 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.72 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.26, i8 2 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.72 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.27, i8 2 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.72 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.28, i8 2 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 0, %struct.anon.72 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.29, i8 2 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 0, %struct.anon.72 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.30, i8 2 }], align 4
@exynos_adc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"&info->lock\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"failed requesting irq, irq = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"has-touchscreen\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"failed adding child nodes\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"failed preparing adc clock: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"failed preparing sclk_adc clock: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"failed enabling adc clock: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"failed enabling sclk_adc clock: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Conversion timed out! Resetting\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"adc0\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"adc1\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"adc2\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"adc3\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"adc4\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"adc5\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"adc6\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"adc7\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"adc8\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"adc9\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"S3C24xx TouchScreen\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"touchscreen\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license252], section "llvm.metadata"

@__mod_of__exynos_adc_match_device_table = dso_local alias [12 x %struct.of_device_id], ptr @exynos_adc_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_adc_driver, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_adc_driver) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_adc_v1_init_hw(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.exynos_adc_data, ptr %2, i32 0, i32 2
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.exynos_adc_data, ptr %2, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %10, i32 noundef 1) #4
  br label %12

12:                                               ; preds = %6, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  %13 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 85056) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %15 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_adc_v1_exit_hw(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.exynos_adc_data, ptr %2, i32 0, i32 2
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.exynos_adc_data, ptr %2, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %10, i32 noundef 0) #4
  br label %12

12:                                               ; preds = %6, %1
  %13 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %17 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_adc_s3c64xx_start_conv(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !15
  %6 = and i32 %5, -58
  %7 = shl i32 %1, 3
  %8 = and i32 %7, 56
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %9 = or i32 %8, %6
  %10 = or i32 %9, 1
  %11 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #4, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_adc_s3c2416_start_conv(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %6 = or i32 %5, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %1) #4, !srcloc !10
  %10 = load ptr, ptr %3, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %12 = or i32 %11, 1
  %13 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_adc_s3c2443_start_conv(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %3 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %1) #4, !srcloc !10
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !23
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %8 = or i32 %7, 1
  %9 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_adc_v1_clear_irq(ptr nocapture noundef readonly %0) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_adc_v1_start_conv(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %3 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %1) #4, !srcloc !10
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !27
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %8 = or i32 %7, 1
  %9 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_adc_v2_init_hw(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.exynos_adc_data, ptr %2, i32 0, i32 2
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.exynos_adc_data, ptr %2, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %10, i32 noundef 1) #4
  br label %12

12:                                               ; preds = %6, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %13 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 4) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1792) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 1) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_adc_v2_exit_hw(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.exynos_adc_data, ptr %2, i32 0, i32 2
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.exynos_adc_data, ptr %2, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %10, i32 noundef 0) #4
  br label %12

12:                                               ; preds = %6, %1
  %13 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !32
  %16 = and i32 %15, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %17 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_adc_v2_clear_irq(ptr nocapture noundef readonly %0) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_adc_v2_start_conv(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !35
  %7 = and i32 %6, -16
  %8 = and i32 %1, 15
  %9 = or i32 %7, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #4, !srcloc !10
  %12 = load ptr, ptr %3, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !37
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %14 = or i32 %13, 1
  %15 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_adc_exynos7_init_hw(ptr nocapture noundef readonly %0) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 4) #4, !srcloc !10
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !40
  %7 = and i32 %6, -113
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1) #4, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_adc_probe(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @devm_iio_device_alloc(ptr noundef %2, i32 noundef 100) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  br label %183

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 19
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = tail call ptr @of_match_node(ptr noundef nonnull @exynos_adc_match, ptr noundef %13) #4
  %15 = getelementptr inbounds %struct.of_device_id, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  store ptr %16, ptr %12, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  br label %183

19:                                               ; preds = %10
  %20 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %21 = getelementptr inbounds %struct.exynos_adc, ptr %12, i32 0, i32 3
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  br label %183

25:                                               ; preds = %19
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr inbounds %struct.exynos_adc_data, ptr %26, i32 0, i32 2
  %28 = load i8, ptr %27, align 1, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 8
  %32 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %31, ptr noundef nonnull @.str.3) #4
  %33 = getelementptr inbounds %struct.exynos_adc, ptr %12, i32 0, i32 4
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  %36 = load ptr, ptr %33, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %183

38:                                               ; preds = %30, %25
  %39 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %183, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.exynos_adc, ptr %12, i32 0, i32 7
  store i32 %39, ptr %42, align 4
  %43 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #4
  %44 = icmp eq i32 %43, -517
  br i1 %44, label %183, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.exynos_adc, ptr %12, i32 0, i32 8
  store i32 %43, ptr %46, align 4
  %47 = getelementptr inbounds %struct.exynos_adc, ptr %12, i32 0, i32 1
  store ptr %2, ptr %47, align 4
  %48 = getelementptr inbounds %struct.exynos_adc, ptr %12, i32 0, i32 11
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.exynos_adc, ptr %12, i32 0, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %49, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #4
  %50 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.5) #4
  %51 = getelementptr inbounds %struct.exynos_adc, ptr %12, i32 0, i32 5
  store ptr %50, ptr %51, align 4
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = ptrtoint ptr %50 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %54) #5
  %55 = load ptr, ptr %51, align 4
  %56 = ptrtoint ptr %55 to i32
  br label %183

57:                                               ; preds = %45
  %58 = load ptr, ptr %12, align 4
  %59 = getelementptr inbounds %struct.exynos_adc_data, ptr %58, i32 0, i32 1
  %60 = load i8, ptr %59, align 4, !range !8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.7) #4
  %64 = getelementptr inbounds %struct.exynos_adc, ptr %12, i32 0, i32 6
  store ptr %63, ptr %64, align 4
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = ptrtoint ptr %63 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %67) #5
  %68 = load ptr, ptr %64, align 4
  %69 = ptrtoint ptr %68 to i32
  br label %183

70:                                               ; preds = %62, %57
  %71 = tail call ptr @devm_regulator_get(ptr noundef %2, ptr noundef nonnull @.str.9) #4
  %72 = getelementptr inbounds %struct.exynos_adc, ptr %12, i32 0, i32 10
  store ptr %71, ptr %72, align 4
  %73 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = ptrtoint ptr %71 to i32
  %76 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %75, ptr noundef nonnull @.str.10) #4
  br label %183

77:                                               ; preds = %70
  %78 = tail call i32 @regulator_enable(ptr noundef %71) #4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %183

80:                                               ; preds = %77
  %81 = load ptr, ptr %51, align 4
  %82 = tail call i32 @clk_prepare(ptr noundef %81) #4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.16, i32 noundef %82) #5
  br label %179

86:                                               ; preds = %80
  %87 = load ptr, ptr %12, align 4
  %88 = getelementptr inbounds %struct.exynos_adc_data, ptr %87, i32 0, i32 1
  %89 = load i8, ptr %88, align 4, !range !8
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.exynos_adc, ptr %12, i32 0, i32 6
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 @clk_prepare(ptr noundef %93) #4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load ptr, ptr %51, align 4
  tail call void @clk_unprepare(ptr noundef %97) #4
  %98 = load ptr, ptr %47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.17, i32 noundef %94) #5
  br label %179

99:                                               ; preds = %91, %86
  %100 = tail call fastcc i32 @exynos_adc_enable_clk(ptr noundef %12)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %177

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %103, align 8
  %104 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load ptr, ptr %2, align 4
  br label %109

109:                                              ; preds = %107, %102
  %110 = phi ptr [ %108, %107 ], [ %105, %102 ]
  %111 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 15
  store ptr %110, ptr %111, align 8
  %112 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 17
  store ptr @exynos_adc_iio_info, ptr %112, align 8
  store i32 1, ptr %7, align 8
  %113 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 13
  store ptr @exynos_adc_iio_channels, ptr %113, align 8
  %114 = load ptr, ptr %12, align 4
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 14
  store i32 %115, ptr %116, align 4
  %117 = getelementptr inbounds %struct.exynos_adc, ptr %12, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %117, ptr noundef nonnull @.str.11, ptr noundef nonnull @exynos_adc_probe.__key) #4
  %118 = load i32, ptr %42, align 4
  %119 = load ptr, ptr %104, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %109
  %122 = load ptr, ptr %2, align 4
  br label %123

123:                                              ; preds = %121, %109
  %124 = phi ptr [ %122, %121 ], [ %119, %109 ]
  %125 = tail call i32 @request_threaded_irq(i32 noundef %118, ptr noundef nonnull @exynos_adc_isr, ptr noundef null, i32 noundef 0, ptr noundef %124, ptr noundef %12) #4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %128) #5
  br label %169

129:                                              ; preds = %123
  %130 = tail call i32 @__iio_device_register(ptr noundef nonnull %7, ptr noundef nonnull @__this_module) #4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %165

132:                                              ; preds = %129
  %133 = load ptr, ptr %12, align 4
  %134 = getelementptr inbounds %struct.exynos_adc_data, ptr %133, i32 0, i32 5
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  tail call void %135(ptr noundef %12) #4
  br label %138

138:                                              ; preds = %137, %132
  %139 = load ptr, ptr %3, align 8
  %140 = tail call ptr @of_find_property(ptr noundef %139, ptr noundef nonnull @.str.13, ptr noundef null) #4
  %141 = icmp ne ptr %140, null
  %142 = icmp ne ptr %6, null
  %143 = select i1 %141, i1 true, i1 %142
  br i1 %142, label %144, label %146

144:                                              ; preds = %138
  %145 = load i32, ptr %6, align 4
  br label %146

146:                                              ; preds = %144, %138
  %147 = phi i32 [ %145, %144 ], [ 10000, %138 ]
  %148 = getelementptr inbounds %struct.exynos_adc, ptr %12, i32 0, i32 9
  store i32 %147, ptr %148, align 4
  br i1 %143, label %149, label %152

149:                                              ; preds = %146
  %150 = tail call fastcc i32 @exynos_adc_ts_init(ptr noundef %12)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %149, %146
  %153 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 2
  %154 = tail call i32 @of_platform_populate(ptr noundef %4, ptr noundef nonnull @exynos_adc_match, ptr noundef null, ptr noundef %153) #4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %183

156:                                              ; preds = %152
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.14) #5
  %157 = tail call i32 @device_for_each_child(ptr noundef %153, ptr noundef null, ptr noundef nonnull @exynos_adc_remove_devices) #4
  br i1 %143, label %158, label %163

158:                                              ; preds = %156
  %159 = getelementptr inbounds %struct.exynos_adc, ptr %12, i32 0, i32 2
  %160 = load ptr, ptr %159, align 4
  tail call void @input_unregister_device(ptr noundef %160) #4
  %161 = load i32, ptr %46, align 4
  %162 = tail call ptr @free_irq(i32 noundef %161, ptr noundef %12) #4
  br label %163

163:                                              ; preds = %158, %156, %149
  %164 = phi i32 [ %150, %149 ], [ %154, %158 ], [ %154, %156 ]
  tail call void @iio_device_unregister(ptr noundef nonnull %7) #4
  br label %165

165:                                              ; preds = %163, %129
  %166 = phi i32 [ %130, %129 ], [ %164, %163 ]
  %167 = load i32, ptr %42, align 4
  %168 = tail call ptr @free_irq(i32 noundef %167, ptr noundef %12) #4
  br label %169

169:                                              ; preds = %165, %127
  %170 = phi i32 [ %125, %127 ], [ %166, %165 ]
  %171 = load ptr, ptr %12, align 4
  %172 = getelementptr inbounds %struct.exynos_adc_data, ptr %171, i32 0, i32 6
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %169
  tail call void %173(ptr noundef %12) #4
  br label %176

176:                                              ; preds = %175, %169
  tail call fastcc void @exynos_adc_disable_clk(ptr noundef %12)
  br label %177

177:                                              ; preds = %176, %99
  %178 = phi i32 [ %100, %99 ], [ %170, %176 ]
  tail call fastcc void @exynos_adc_unprepare_clk(ptr noundef %12)
  br label %179

179:                                              ; preds = %177, %96, %84
  %180 = phi i32 [ %178, %177 ], [ %82, %84 ], [ %94, %96 ]
  %181 = load ptr, ptr %72, align 4
  %182 = tail call i32 @regulator_disable(ptr noundef %181) #4
  br label %183

183:                                              ; preds = %179, %152, %77, %74, %66, %53, %41, %38, %35, %23, %18, %9
  %184 = phi i32 [ %24, %23 ], [ %37, %35 ], [ %56, %53 ], [ %69, %66 ], [ %76, %74 ], [ %180, %179 ], [ -22, %18 ], [ -12, %9 ], [ %39, %38 ], [ -517, %41 ], [ %78, %77 ], [ 0, %152 ]
  ret i32 %184
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_adc_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %5) #4
  %13 = load ptr, ptr %6, align 4
  tail call void @input_unregister_device(ptr noundef %13) #4
  br label %14

14:                                               ; preds = %9, %1
  %15 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 2
  %16 = tail call i32 @device_for_each_child(ptr noundef %15, ptr noundef null, ptr noundef nonnull @exynos_adc_remove_devices) #4
  tail call void @iio_device_unregister(ptr noundef %3) #4
  %17 = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @free_irq(i32 noundef %18, ptr noundef %5) #4
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.exynos_adc_data, ptr %20, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %14
  tail call void %22(ptr noundef %5) #4
  %25 = load ptr, ptr %5, align 4
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi ptr [ %25, %24 ], [ %20, %14 ]
  %28 = getelementptr inbounds %struct.exynos_adc_data, ptr %27, i32 0, i32 1
  %29 = load i8, ptr %28, align 4, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  tail call void @clk_disable(ptr noundef %33) #4
  br label %34

34:                                               ; preds = %31, %26
  %35 = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  tail call void @clk_disable(ptr noundef %36) #4
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr inbounds %struct.exynos_adc_data, ptr %37, i32 0, i32 1
  %39 = load i8, ptr %38, align 4, !range !8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  tail call void @clk_unprepare(ptr noundef %43) #4
  br label %44

44:                                               ; preds = %41, %34
  %45 = load ptr, ptr %35, align 4
  tail call void @clk_unprepare(ptr noundef %45) #4
  %46 = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 10
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @regulator_disable(ptr noundef %47) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @exynos_adc_enable_clk(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_enable(ptr noundef %3) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef %4) #5
  br label %23

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.exynos_adc_data, ptr %10, i32 0, i32 1
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @clk_enable(ptr noundef %16) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %20) #4
  %21 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.19, i32 noundef %17) #5
  br label %23

23:                                               ; preds = %19, %14, %9, %6
  %24 = phi i32 [ %4, %6 ], [ %17, %19 ], [ 0, %14 ], [ 0, %9 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_adc_isr(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 15
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !43
  %11 = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 16
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !44
  %15 = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 17
  store i32 %14, ptr %15, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 467) #4, !srcloc !10
  br label %28

18:                                               ; preds = %2
  %19 = load ptr, ptr %1, align 4
  %20 = getelementptr inbounds %struct.exynos_adc_data, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 12
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !46
  %26 = and i32 %25, %21
  %27 = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 12
  store i32 %26, ptr %27, align 4
  br label %28

28:                                               ; preds = %18, %6
  %29 = load ptr, ptr %1, align 4
  %30 = getelementptr inbounds %struct.exynos_adc_data, ptr %29, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void %31(ptr noundef %1) #4
  br label %34

34:                                               ; preds = %33, %28
  %35 = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 11
  tail call void @complete(ptr noundef %35) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @exynos_adc_ts_init(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @input_allocate_device() #4
  %7 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 5
  store i32 10, ptr %10, align 8
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr %struct.input_dev, ptr %11, i32 0, i32 6, i32 10
  store i32 1024, ptr %12, align 4
  %13 = load ptr, ptr %7, align 4
  tail call void @input_set_abs_params(ptr noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #4
  %14 = load ptr, ptr %7, align 4
  tail call void @input_set_abs_params(ptr noundef %14, i32 noundef 1, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #4
  %15 = load ptr, ptr %7, align 4
  store ptr @.str.31, ptr %15, align 8
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 3
  store i16 25, ptr %17, align 4
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 31
  store ptr @exynos_adc_ts_open, ptr %19, align 4
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 32
  store ptr @exynos_adc_ts_close, ptr %21, align 8
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 40, i32 8
  store ptr %0, ptr %23, align 8
  %24 = load ptr, ptr %7, align 4
  %25 = tail call i32 @input_register_device(ptr noundef %24) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %9
  %28 = load ptr, ptr %7, align 4
  tail call void @input_free_device(ptr noundef %28) #4
  br label %35

29:                                               ; preds = %9
  %30 = load i32, ptr %2, align 4
  %31 = tail call i32 @request_threaded_irq(i32 noundef %30, ptr noundef null, ptr noundef nonnull @exynos_ts_isr, i32 noundef 532480, ptr noundef nonnull @.str.32, ptr noundef %0) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %7, align 4
  tail call void @input_unregister_device(ptr noundef %34) #4
  br label %35

35:                                               ; preds = %33, %29, %27, %5, %1
  %36 = phi i32 [ %25, %27 ], [ -19, %1 ], [ -12, %5 ], [ %31, %33 ], [ 0, %29 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_adc_remove_devices(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 -16
  tail call void @platform_device_unregister(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos_adc_disable_clk(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.exynos_adc_data, ptr %2, i32 0, i32 1
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #4
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos_adc_unprepare_clk(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.exynos_adc_data, ptr %2, i32 0, i32 1
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_unprepare(ptr noundef %8) #4
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.exynos_adc, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_unprepare(ptr noundef %11) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_read_raw(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  switch i32 %4, label %43 [
    i32 2, label %8
    i32 0, label %18
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.exynos_adc, ptr %7, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regulator_get_voltage(ptr noundef %10) #4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %8
  %14 = udiv i32 %11, 1000
  store i32 %14, ptr %2, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.exynos_adc_data, ptr %15, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %3, align 4
  br label %43

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.exynos_adc, ptr %7, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %19) #4
  %20 = getelementptr inbounds %struct.exynos_adc, ptr %7, i32 0, i32 11
  store i32 0, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr inbounds %struct.exynos_adc_data, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  tail call void %23(ptr noundef %7, i32 noundef %27) #4
  br label %28

28:                                               ; preds = %25, %18
  %29 = tail call i32 @wait_for_completion_timeout(ptr noundef %20, i32 noundef 10) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.20) #5
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr inbounds %struct.exynos_adc_data, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  tail call void %35(ptr noundef %7) #4
  br label %41

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.exynos_adc, ptr %7, i32 0, i32 12
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %41

41:                                               ; preds = %38, %37, %31
  %42 = phi i32 [ 1, %38 ], [ -110, %37 ], [ -110, %31 ]
  tail call void @mutex_unlock(ptr noundef %19) #4
  br label %43

43:                                               ; preds = %41, %13, %8, %5
  %44 = phi i32 [ 10, %13 ], [ %42, %41 ], [ %11, %8 ], [ -22, %5 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_adc_reg_access(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) #1 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.exynos_adc, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !47
  store i32 %12, ptr %3, align 4
  br label %13

13:                                               ; preds = %6, %4
  %14 = phi i32 [ 0, %6 ], [ -22, %4 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_adc_ts_open(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_adc, ptr %3, i32 0, i32 14
  store volatile i8 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.exynos_adc, ptr %3, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  tail call void @enable_irq(i32 noundef %6) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_adc_ts_close(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_adc, ptr %3, i32 0, i32 14
  store volatile i8 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.exynos_adc, ptr %3, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  tail call void @disable_irq(i32 noundef %6) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_ts_isr(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 14
  %8 = load volatile i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %53, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 19
  %12 = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 2
  br label %13

13:                                               ; preds = %45, %10
  %14 = load ptr, ptr %11, align 8
  %15 = getelementptr inbounds %struct.exynos_adc, ptr %14, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %15) #4
  %16 = getelementptr inbounds %struct.exynos_adc, ptr %14, i32 0, i32 15
  store i8 1, ptr %16, align 1
  %17 = getelementptr inbounds %struct.exynos_adc, ptr %14, i32 0, i32 11
  store i32 0, ptr %17, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %18 = getelementptr inbounds %struct.exynos_adc, ptr %14, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 220) #4, !srcloc !10
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr inbounds %struct.exynos_adc_data, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %14, i32 noundef 0) #4
  %24 = tail call i32 @wait_for_completion_timeout(ptr noundef %17, i32 noundef 10) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.20) #5
  %28 = load ptr, ptr %14, align 4
  %29 = getelementptr inbounds %struct.exynos_adc_data, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void %30(ptr noundef %14) #4
  br label %33

33:                                               ; preds = %32, %26
  store i8 0, ptr %16, align 1
  tail call void @mutex_unlock(ptr noundef %15) #4
  br label %53

34:                                               ; preds = %13
  %35 = getelementptr inbounds %struct.exynos_adc, ptr %14, i32 0, i32 16
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.exynos_adc, ptr %14, i32 0, i32 17
  %38 = load i32, ptr %37, align 4
  store i8 0, ptr %16, align 1
  tail call void @mutex_unlock(ptr noundef %15) #4
  %39 = and i32 %36, 32768
  %40 = and i32 %39, %38
  %41 = icmp eq i32 %40, 0
  %42 = load ptr, ptr %12, align 4
  br i1 %41, label %43, label %45

43:                                               ; preds = %34
  tail call void @input_event(ptr noundef %42, i32 noundef 1, i32 noundef 330, i32 noundef 0) #4
  %44 = load ptr, ptr %12, align 4
  tail call void @input_event(ptr noundef %44, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  br label %53

45:                                               ; preds = %34
  %46 = and i32 %36, 4095
  tail call void @input_event(ptr noundef %42, i32 noundef 3, i32 noundef 0, i32 noundef %46) #4
  %47 = load ptr, ptr %12, align 4
  %48 = and i32 %38, 4095
  tail call void @input_event(ptr noundef %47, i32 noundef 3, i32 noundef 1, i32 noundef %48) #4
  %49 = load ptr, ptr %12, align 4
  tail call void @input_event(ptr noundef %49, i32 noundef 1, i32 noundef 330, i32 noundef 1) #4
  %50 = load ptr, ptr %12, align 4
  tail call void @input_event(ptr noundef %50, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #4
  %51 = load volatile i8, ptr %7, align 4, !range !8
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %13

53:                                               ; preds = %45, %43, %33, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !49
  tail call void @arm_heavy_mb() #4
  %54 = getelementptr inbounds %struct.exynos_adc, ptr %1, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 0) #4, !srcloc !10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_adc_suspend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.exynos_adc_data, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  tail call void %8(ptr noundef %5) #4
  %11 = load ptr, ptr %5, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi ptr [ %11, %10 ], [ %6, %1 ]
  %14 = getelementptr inbounds %struct.exynos_adc_data, ptr %13, i32 0, i32 1
  %15 = load i8, ptr %14, align 4, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %19) #4
  br label %20

20:                                               ; preds = %17, %12
  %21 = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %22) #4
  %23 = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 10
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @regulator_disable(ptr noundef %24) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_adc_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.exynos_adc, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regulator_enable(ptr noundef %7) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @exynos_adc_enable_clk(ptr noundef %5)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.exynos_adc_data, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void %16(ptr noundef %5) #4
  br label %19

19:                                               ; preds = %18, %13, %10, %1
  %20 = phi i32 [ %8, %1 ], [ %11, %10 ], [ 0, %18 ], [ 0, %13 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!9 = !{i64 2153810306}
!10 = !{i64 3730679}
!11 = !{i64 2153810666}
!12 = !{i64 3731097}
!13 = !{i64 2153811193}
!14 = !{i64 2153811418}
!15 = !{i64 2153816451}
!16 = !{i64 2153816732}
!17 = !{i64 2153813440}
!18 = !{i64 2153813666}
!19 = !{i64 2153814019}
!20 = !{i64 2153814532}
!21 = !{i64 2153814770}
!22 = !{i64 2153815155}
!23 = !{i64 2153815668}
!24 = !{i64 2153815906}
!25 = !{i64 2153811766}
!26 = !{i64 2153812113}
!27 = !{i64 2153812626}
!28 = !{i64 2153812864}
!29 = !{i64 2153817135}
!30 = !{i64 2153817538}
!31 = !{i64 2153817888}
!32 = !{i64 2153818395}
!33 = !{i64 2153818620}
!34 = !{i64 2153818968}
!35 = !{i64 2153819475}
!36 = !{i64 2153819719}
!37 = !{i64 2153820232}
!38 = !{i64 2153820470}
!39 = !{i64 2153820888}
!40 = !{i64 2153821401}
!41 = !{i64 2153821655}
!42 = !{i64 2153822005}
!43 = !{i64 2153824906}
!44 = !{i64 2153825282}
!45 = !{i64 2153825748}
!46 = !{i64 2153826397}
!47 = !{i64 2153830066}
!48 = !{i64 2153823585}
!49 = !{i64 2153829589}
