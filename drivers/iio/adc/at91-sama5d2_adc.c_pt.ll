; ModuleID = '/llk/IR/drivers/iio/adc/at91-sama5d2_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/at91-sama5d2_adc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.at91_adc_platform = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.at91_adc_reg_layout = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon = type { i8, i8, i8, i8, i8, i32 }
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
%struct.at91_adc_trigger = type { ptr, i32, i32, i8 }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
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
%struct.at91_adc_state = type { ptr, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i32, i32, %struct.at91_adc_soc_info, %struct.wait_queue_head, %struct.at91_adc_dma, %struct.at91_adc_touch, ptr, [36 x i16], %struct.mutex }
%struct.at91_adc_soc_info = type { i32, i32, i32, ptr }
%struct.at91_adc_dma = type { ptr, ptr, i32, i32, i32, i32, i32, i64 }
%struct.at91_adc_touch = type { i16, i8, i16, i32, %struct.work_struct }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@at91_adc_dt_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d2_platform }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama7g5_platform }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author251 = internal constant [59 x i8] c"author=Ludovic Desroches <ludovic.desroches@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [50 x i8] c"author=Eugen Hristev <eugen.hristev@microchip.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [35 x i8] c"description=Atmel AT91 SAMA5D2 ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@sama5d2_platform = internal constant %struct.at91_adc_platform { ptr @sama5d2_layout, ptr @at91_sama5d2_adc_channels, i32 18, i32 24, i32 25, i32 26, i32 22, i32 26, i32 3 }, align 4
@sama7g5_platform = internal constant %struct.at91_adc_platform { ptr @sama7g5_layout, ptr @at91_sama7g5_adc_channels, i32 24, i32 0, i32 0, i32 0, i32 25, i32 24, i32 3 }, align 4
@sama5d2_layout = internal constant %struct.at91_adc_reg_layout { i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 32, i16 36, i16 40, i16 44, i16 48, i16 0, i16 0, i16 0, i16 0, i16 52, i16 56, i16 60, i16 64, i16 68, i16 72, i16 76, i16 16, i16 148, i16 176, i16 180, i16 184, i16 188, i16 192, i16 208, i16 212, i16 216, i16 228, i16 232, i16 252 }, align 2
@at91_sama5d2_adc_channels = internal constant [22 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 80, i32 0, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 84, i32 1, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.1, i8 2 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 88, i32 2, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.2, i8 2 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 92, i32 3, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.3, i8 2 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 96, i32 4, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.4, i8 2 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 100, i32 5, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.5, i8 2 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 104, i32 6, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.6, i8 2 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 108, i32 7, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.7, i8 2 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 112, i32 8, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.8, i8 2 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 116, i32 9, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 2 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 120, i32 10, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 2 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 124, i32 11, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.11, i8 2 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 80, i32 12, %struct.anon { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.12, i8 10 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 88, i32 14, %struct.anon { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 10 }, %struct.iio_chan_spec { i32 0, i32 4, i32 5, i32 96, i32 16, %struct.anon { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 10 }, %struct.iio_chan_spec { i32 0, i32 6, i32 7, i32 104, i32 18, %struct.anon { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.15, i8 10 }, %struct.iio_chan_spec { i32 0, i32 8, i32 9, i32 112, i32 20, %struct.anon { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.16, i8 10 }, %struct.iio_chan_spec { i32 0, i32 10, i32 11, i32 120, i32 22, %struct.anon { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.17, i8 10 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 23, %struct.anon { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 32, i32 24, i32 1, i32 0, i32 24, %struct.anon { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.18, i8 1 }, %struct.iio_chan_spec { i32 32, i32 25, i32 2, i32 0, i32 25, %struct.anon { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.19, i8 1 }, %struct.iio_chan_spec { i32 17, i32 26, i32 0, i32 0, i32 26, %struct.anon { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.20, i8 0 }], align 4
@.str = private unnamed_addr constant [4 x i8] c"CH0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CH1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CH2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CH3\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"CH4\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"CH5\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"CH6\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"CH7\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"CH8\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"CH9\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"CH10\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"CH11\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"CH0-CH1\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"CH2-CH3\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"CH4-CH5\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"CH6-CH7\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"CH8-CH9\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"CH10-CH11\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@sama7g5_layout = internal constant %struct.at91_adc_reg_layout { i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 32, i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64, i16 0, i16 0, i16 76, i16 80, i16 84, i16 0, i16 92, i16 0, i16 224, i16 0, i16 0, i16 0, i16 0, i16 256, i16 260, i16 264, i16 268, i16 280, i16 284, i16 304 }, align 2
@at91_sama7g5_adc_channels = internal constant [25 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 96, i32 0, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 100, i32 1, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.1, i8 2 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 104, i32 2, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.2, i8 2 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 108, i32 3, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.3, i8 2 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 112, i32 4, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.4, i8 2 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 116, i32 5, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.5, i8 2 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 120, i32 6, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.6, i8 2 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 124, i32 7, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.7, i8 2 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 128, i32 8, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.8, i8 2 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 132, i32 9, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 2 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 136, i32 10, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 2 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 140, i32 11, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.11, i8 2 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 144, i32 12, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.21, i8 2 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 148, i32 13, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.22, i8 2 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 152, i32 14, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.23, i8 2 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 156, i32 15, %struct.anon { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 2 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 96, i32 16, %struct.anon { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.12, i8 10 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 104, i32 17, %struct.anon { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 10 }, %struct.iio_chan_spec { i32 0, i32 4, i32 5, i32 112, i32 18, %struct.anon { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 10 }, %struct.iio_chan_spec { i32 0, i32 6, i32 7, i32 120, i32 19, %struct.anon { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.15, i8 10 }, %struct.iio_chan_spec { i32 0, i32 8, i32 9, i32 128, i32 20, %struct.anon { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.16, i8 10 }, %struct.iio_chan_spec { i32 0, i32 10, i32 11, i32 136, i32 21, %struct.anon { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.17, i8 10 }, %struct.iio_chan_spec { i32 0, i32 12, i32 13, i32 144, i32 22, %struct.anon { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.25, i8 10 }, %struct.iio_chan_spec { i32 0, i32 14, i32 15, i32 152, i32 23, %struct.anon { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33558528, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.26, i8 10 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 24, %struct.anon { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"CH12\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"CH13\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"CH14\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"CH15\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"CH12-CH13\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"CH14-CH15\00", align 1
@at91_adc_driver = internal global %struct.platform_driver { ptr @at91_adc_probe, ptr @at91_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.27, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_adc_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.27 = private unnamed_addr constant [17 x i8] c"at91-sama5d2_adc\00", align 1
@at91_adc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @at91_adc_suspend, ptr @at91_adc_resume, ptr @at91_adc_suspend, ptr @at91_adc_resume, ptr @at91_adc_suspend, ptr @at91_adc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@at91_adc_info = internal constant %struct.iio_info { ptr null, ptr @at91_adc_attribute_group, ptr @at91_adc_read_raw, ptr null, ptr null, ptr @at91_adc_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91_adc_update_scan_mode, ptr null, ptr @at91_adc_of_xlate, ptr @at91_adc_set_watermark, ptr null }, align 4
@.str.28 = private unnamed_addr constant [25 x i8] c"atmel,min-sample-rate-hz\00", align 1
@.str.29 = private unnamed_addr constant [55 x i8] c"invalid or missing value for atmel,min-sample-rate-hz\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"atmel,max-sample-rate-hz\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"invalid or missing value for atmel,max-sample-rate-hz\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"atmel,startup-time-ms\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"invalid or missing value for atmel,startup-time-ms\0A\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"atmel,trigger-edge-type\00", align 1
@at91_adc_trigger_list = internal constant [4 x %struct.at91_adc_trigger] [%struct.at91_adc_trigger { ptr @.str.57, i32 1, i32 1, i8 1 }, %struct.at91_adc_trigger { ptr @.str.58, i32 2, i32 2, i8 1 }, %struct.at91_adc_trigger { ptr @.str.59, i32 3, i32 3, i8 1 }, %struct.at91_adc_trigger { ptr @.str.60, i32 0, i32 0, i8 0 }], align 4
@.str.35 = private unnamed_addr constant [37 x i8] c"invalid external trigger edge value\0A\00", align 1
@at91_adc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"&st->wq_data_available\00", align 1
@at91_adc_probe.__key.37 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"&st->lock\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"adc_clk\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"vddana\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"cannot set DMA mask to 32-bit\0A\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"setting up trigger as %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"version: %x\0A\00", align 1
@at91_adc_attribute_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @at91_adc_attributes, ptr null }, align 4
@at91_adc_attributes = internal global [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_oversampling_ratio_available, i64 4), ptr null], align 4
@iio_const_attr_oversampling_ratio_available = internal global %struct.iio_const_attr { ptr @.str.45, %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292 }, ptr @iio_read_const_attr, ptr null } }, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"1 4 16\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"oversampling_ratio_available\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"scale is 0\0A\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"can't get DMA channel\0A\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"can't allocate coherent DMA area\0A\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"can't configure DMA slave\0A\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"using %s for rx DMA transfers\0A\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"continuing without DMA support\0A\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"buffer prepare failed\0A\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"cannot prepare DMA cyclic\0A\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"cannot submit DMA cyclic\0A\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"external_rising\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"external_falling\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"external_any\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"software\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"drivers/iio/adc/at91-sama5d2_adc.c\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"Unexpected irq occurred\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@at91_adc_fifo_attributes = internal global [5 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_hwfifo_watermark_min, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_hwfifo_watermark_max, i64 4), ptr @iio_dev_attr_hwfifo_watermark, ptr @iio_dev_attr_hwfifo_enabled, ptr null], align 4
@at91_buffer_setup_ops = internal constant %struct.iio_buffer_setup_ops { ptr null, ptr null, ptr null, ptr @at91_adc_buffer_postdisable, ptr null }, align 4
@.str.63 = private unnamed_addr constant [33 x i8] c"couldn't initialize the buffer.\0A\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"could not allocate trigger\0A\00", align 1
@iio_const_attr_hwfifo_watermark_min = internal global %struct.iio_const_attr { ptr @.str.65, %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292 }, ptr @iio_read_const_attr, ptr null } }, align 4
@iio_const_attr_hwfifo_watermark_max = internal global %struct.iio_const_attr { ptr @.str.67, %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292 }, ptr @iio_read_const_attr, ptr null } }, align 4
@iio_dev_attr_hwfifo_watermark = internal global %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292 }, ptr @at91_adc_get_watermark, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, align 8
@iio_dev_attr_hwfifo_enabled = internal global %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292 }, ptr @at91_adc_get_fifo_state, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, align 8
@.str.65 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"hwfifo_watermark_min\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"128\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"hwfifo_watermark_max\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"hwfifo_watermark\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"hwfifo_enabled\00", align 1
@at91_adc_trigger_handler_dma._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.at91_adc_trigger_handler_dma = private unnamed_addr constant [29 x i8] c"at91_adc_trigger_handler_dma\00", align 1
@.str.72 = private unnamed_addr constant [35 x i8] c"\016%s: conversion overrun detected\0A\00", align 1
@.str.73 = private unnamed_addr constant [48 x i8] c"This trigger cannot handle this type of channel\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"%s-dev%d-%s\00", align 1
@at91_adc_trigger_ops = internal constant %struct.iio_trigger_ops { ptr @at91_adc_configure_trigger, ptr @at91_adc_reenable_trigger, ptr @iio_trigger_validate_own_device }, align 4
@.str.75 = private unnamed_addr constant [18 x i8] c"failed to resume\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license254], section "llvm.metadata"

@__mod_of__at91_adc_dt_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @at91_adc_dt_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @at91_adc_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_adc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @devm_iio_device_alloc(ptr noundef %4, i32 noundef 248) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %200, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 19
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 17
  store ptr %5, ptr %10, align 4
  %11 = tail call ptr @of_device_get_match_data(ptr noundef %4) #9
  %12 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 13
  %13 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 13, i32 3
  store ptr %11, ptr %13, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  %18 = load ptr, ptr %4, align 4
  br label %19

19:                                               ; preds = %17, %7
  %20 = phi ptr [ %18, %17 ], [ %15, %7 ]
  %21 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 15
  store ptr %20, ptr %21, align 8
  store i32 5, ptr %5, align 8
  %22 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 17
  store ptr @at91_adc_info, ptr %22, align 8
  %23 = load ptr, ptr %13, align 4
  %24 = getelementptr inbounds %struct.at91_adc_platform, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 13
  store ptr %25, ptr %26, align 8
  %27 = load ptr, ptr %13, align 4
  %28 = getelementptr inbounds %struct.at91_adc_platform, ptr %27, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 14
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 16, i32 3
  %32 = load ptr, ptr %13, align 4
  %33 = getelementptr inbounds %struct.at91_adc_platform, ptr %32, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 31
  %36 = shl nuw i32 1, %35
  %37 = lshr i32 %34, 5
  %38 = getelementptr i32, ptr %31, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %36, %39
  store i32 %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct.at91_adc_platform, ptr %32, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 31
  %44 = shl nuw i32 1, %43
  %45 = lshr i32 %42, 5
  %46 = getelementptr i32, ptr %31, i32 %45
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %44, %47
  store i32 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.at91_adc_platform, ptr %32, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 31
  %52 = shl nuw i32 1, %51
  %53 = lshr i32 %50, 5
  %54 = getelementptr i32, ptr %31, i32 %53
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %52, %55
  store i32 %56, ptr %54, align 4
  %57 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 12
  store i32 1, ptr %57, align 8
  %58 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 13, i32 1
  %61 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %59, ptr noundef nonnull @.str.28, ptr noundef %60, i32 noundef 1, i32 noundef 0) #9
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %64, label %63

63:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.29) #10
  br label %200

64:                                               ; preds = %19
  %65 = load ptr, ptr %58, align 8
  %66 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 13, i32 2
  %67 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %65, ptr noundef nonnull @.str.30, ptr noundef %66, i32 noundef 1, i32 noundef 0) #9
  %68 = icmp sgt i32 %67, -1
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.31) #10
  br label %200

70:                                               ; preds = %64
  %71 = load ptr, ptr %58, align 8
  %72 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %71, ptr noundef nonnull @.str.32, ptr noundef %12, i32 noundef 1, i32 noundef 0) #9
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.33) #10
  br label %200

75:                                               ; preds = %70
  %76 = load ptr, ptr %58, align 8
  %77 = call i32 @of_property_read_variable_u32_array(ptr noundef %76, ptr noundef nonnull @.str.34, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %78 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 8
  store ptr null, ptr %78, align 8
  %79 = load ptr, ptr %13, align 4
  %80 = getelementptr inbounds %struct.at91_adc_platform, ptr %79, i32 0, i32 8
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %96, label %83

83:                                               ; preds = %75
  %84 = load i32, ptr %3, align 4
  br label %85

85:                                               ; preds = %90, %83
  %86 = phi i32 [ 0, %83 ], [ %91, %90 ]
  %87 = getelementptr [4 x %struct.at91_adc_trigger], ptr @at91_adc_trigger_list, i32 0, i32 %86, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, %84
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = add nuw i32 %86, 1
  %92 = icmp eq i32 %86, %81
  br i1 %92, label %96, label %85

93:                                               ; preds = %85
  %94 = getelementptr [4 x %struct.at91_adc_trigger], ptr @at91_adc_trigger_list, i32 0, i32 %86
  store ptr %94, ptr %78, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %90, %75
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.35) #10
  br label %200

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 14
  call void @__init_waitqueue_head(ptr noundef %98, ptr noundef nonnull @.str.36, ptr noundef nonnull @at91_adc_probe.__key) #9
  %99 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 19
  call void @__mutex_init(ptr noundef %99, ptr noundef nonnull @.str.38, ptr noundef nonnull @at91_adc_probe.__key.37) #9
  %100 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 16, i32 4
  store i32 -32, ptr %100, align 4
  %101 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 16, i32 4, i32 1
  store volatile ptr %101, ptr %101, align 4
  %102 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 16, i32 4, i32 1, i32 1
  store ptr %101, ptr %102, align 4
  %103 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 16, i32 4, i32 2
  store ptr @at91_adc_workq_handler, ptr %103, align 4
  %104 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #9
  store ptr %104, ptr %9, align 8
  %105 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = ptrtoint ptr %104 to i32
  br label %200

108:                                              ; preds = %97
  %109 = load ptr, ptr %2, align 4
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 15, i32 3
  store i32 %110, ptr %111, align 4
  %112 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %113 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 1
  store i32 %112, ptr %113, align 4
  %114 = icmp slt i32 %112, 1
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = icmp eq i32 %112, 0
  br i1 %116, label %117, label %200

117:                                              ; preds = %115
  store i32 -6, ptr %113, align 4
  br label %200

118:                                              ; preds = %108
  %119 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.39) #9
  %120 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 2
  store ptr %119, ptr %120, align 8
  %121 = icmp ugt ptr %119, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = ptrtoint ptr %119 to i32
  br label %200

124:                                              ; preds = %118
  %125 = call ptr @devm_regulator_get(ptr noundef %4, ptr noundef nonnull @.str.40) #9
  %126 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 3
  store ptr %125, ptr %126, align 4
  %127 = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = ptrtoint ptr %125 to i32
  br label %200

130:                                              ; preds = %124
  %131 = call ptr @devm_regulator_get(ptr noundef %4, ptr noundef nonnull @.str.41) #9
  %132 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 4
  store ptr %131, ptr %132, align 8
  %133 = icmp ugt ptr %131, inttoptr (i32 -4096 to ptr)
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = ptrtoint ptr %131 to i32
  br label %200

136:                                              ; preds = %130
  %137 = load i32, ptr %113, align 4
  %138 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 6
  %139 = load ptr, ptr %138, align 8
  %140 = load ptr, ptr %139, align 4
  %141 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %137, ptr noundef nonnull @at91_adc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %140, ptr noundef nonnull %5) #9
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %200

143:                                              ; preds = %136
  %144 = load ptr, ptr %126, align 4
  %145 = call i32 @regulator_enable(ptr noundef %144) #9
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %200

147:                                              ; preds = %143
  %148 = load ptr, ptr %132, align 8
  %149 = call i32 @regulator_enable(ptr noundef %148) #9
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %196

151:                                              ; preds = %147
  %152 = load ptr, ptr %132, align 8
  %153 = call i32 @regulator_get_voltage(ptr noundef %152) #9
  %154 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 5
  store i32 %153, ptr %154, align 4
  %155 = icmp slt i32 %153, 1
  br i1 %155, label %192, label %156

156:                                              ; preds = %151
  %157 = load ptr, ptr %120, align 8
  %158 = call fastcc i32 @clk_prepare_enable(ptr noundef %157)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %192

160:                                              ; preds = %156
  call fastcc void @at91_adc_hw_init(ptr noundef nonnull %5)
  %161 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %161, align 8
  %162 = call fastcc i32 @at91_adc_buffer_and_trigger_init(ptr noundef %4, ptr noundef nonnull %5)
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %189, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 2
  %166 = call fastcc i32 @dma_coerce_mask_and_coherent(ptr noundef %165)
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %164
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.42) #10
  br label %169

169:                                              ; preds = %168, %164
  %170 = call i32 @__iio_device_register(ptr noundef nonnull %5, ptr noundef nonnull @__this_module) #9
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %188, label %172

172:                                              ; preds = %169
  %173 = load ptr, ptr %78, align 8
  %174 = getelementptr inbounds %struct.at91_adc_trigger, ptr %173, i32 0, i32 3
  %175 = load i8, ptr %174, align 4, !range !9
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %172
  %178 = load ptr, ptr %173, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.43, ptr noundef %178) #10
  br label %179

179:                                              ; preds = %177, %172
  %180 = load ptr, ptr %9, align 8
  %181 = load ptr, ptr %13, align 4
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %182, i32 0, i32 35
  %184 = load i16, ptr %183, align 2
  %185 = zext i16 %184 to i32
  %186 = getelementptr i8, ptr %180, i32 %185
  %187 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %186) #9, !srcloc !10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.44, i32 noundef %187) #10
  br label %200

188:                                              ; preds = %169
  call fastcc void @at91_adc_dma_disable(ptr noundef %9)
  br label %189

189:                                              ; preds = %188, %160
  %190 = phi i32 [ %162, %160 ], [ %170, %188 ]
  %191 = load ptr, ptr %120, align 8
  call void @clk_disable(ptr noundef %191) #9
  call void @clk_unprepare(ptr noundef %191) #9
  br label %192

192:                                              ; preds = %189, %156, %151
  %193 = phi i32 [ %158, %156 ], [ %190, %189 ], [ -22, %151 ]
  %194 = load ptr, ptr %132, align 8
  %195 = call i32 @regulator_disable(ptr noundef %194) #9
  br label %196

196:                                              ; preds = %192, %147
  %197 = phi i32 [ %149, %147 ], [ %193, %192 ]
  %198 = load ptr, ptr %126, align 4
  %199 = call i32 @regulator_disable(ptr noundef %198) #9
  br label %200

200:                                              ; preds = %196, %179, %143, %136, %134, %128, %122, %117, %115, %106, %96, %74, %69, %63, %1
  %201 = phi i32 [ %61, %63 ], [ %67, %69 ], [ %72, %74 ], [ %107, %106 ], [ %123, %122 ], [ %129, %128 ], [ %135, %134 ], [ %197, %196 ], [ 0, %179 ], [ -22, %96 ], [ -12, %1 ], [ %141, %136 ], [ %145, %143 ], [ -6, %117 ], [ %112, %115 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %201
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  tail call void @iio_device_unregister(ptr noundef %3) #9
  tail call fastcc void @at91_adc_dma_disable(ptr noundef %5)
  %6 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @regulator_disable(ptr noundef %9) #9
  %11 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regulator_disable(ptr noundef %12) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_adc_workq_handler(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 20
  %5 = tail call i32 @iio_push_to_buffers(ptr noundef %3, ptr noundef %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 13, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %8, i32 0, i32 11
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %5, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !10
  %14 = load ptr, ptr %6, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %15, i32 0, i32 15
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load ptr, ptr %4, align 8
  %21 = zext i16 %17 to i32
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !10
  %24 = load ptr, ptr %6, align 4
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %19, %2
  %27 = phi ptr [ %25, %19 ], [ %15, %2 ]
  %28 = phi i32 [ %23, %19 ], [ %13, %2 ]
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %27, i32 0, i32 10
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = getelementptr i8, ptr %29, i32 %32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !10
  %35 = load ptr, ptr %6, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %36, i32 0, i32 14
  %38 = load i16, ptr %37, align 2
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %26
  %41 = load ptr, ptr %4, align 8
  %42 = zext i16 %38 to i32
  %43 = getelementptr i8, ptr %41, i32 %42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !10
  br label %45

45:                                               ; preds = %40, %26
  %46 = phi i32 [ %44, %40 ], [ %34, %26 ]
  %47 = and i32 %34, %13
  %48 = icmp eq i32 %47, 0
  %49 = and i32 %46, %28
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %169, label %52

52:                                               ; preds = %45
  %53 = and i32 %13, 536870912
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %83, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %4, align 8
  %57 = load ptr, ptr %6, align 4
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %58, i32 0, i32 9
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = getelementptr i8, ptr %56, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 536870912) #9, !srcloc !11
  %63 = load ptr, ptr %4, align 8
  %64 = load ptr, ptr %6, align 4
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %65, i32 0, i32 8
  %67 = load i16, ptr %66, align 2
  %68 = zext i16 %67 to i32
  %69 = getelementptr i8, ptr %63, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 1081081856) #9, !srcloc !11
  %70 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 16
  %71 = load i16, ptr %70, align 8
  %72 = zext i16 %71 to i32
  %73 = shl nuw i32 %72, 16
  %74 = or i32 %73, 5
  %75 = load ptr, ptr %4, align 8
  %76 = load ptr, ptr %6, align 4
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %77, i32 0, i32 29
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = getelementptr i8, ptr %75, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %74) #9, !srcloc !11
  %82 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 16, i32 1
  store i8 1, ptr %82, align 2
  br label %169

83:                                               ; preds = %52
  %84 = and i32 %13, 1073741824
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %111, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %3, align 8
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.at91_adc_state, ptr %87, i32 0, i32 13, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %91, i32 0, i32 29
  %93 = load i16, ptr %92, align 2
  %94 = zext i16 %93 to i32
  %95 = getelementptr i8, ptr %88, i32 %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 0) #9, !srcloc !11
  %96 = load ptr, ptr %87, align 8
  %97 = load ptr, ptr %89, align 4
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %98, i32 0, i32 9
  %100 = load i16, ptr %99, align 2
  %101 = zext i16 %100 to i32
  %102 = getelementptr i8, ptr %96, i32 %101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 1081081856) #9, !srcloc !11
  %103 = getelementptr inbounds %struct.at91_adc_state, ptr %87, i32 0, i32 16, i32 1
  store i8 0, ptr %103, align 2
  tail call fastcc void @at91_adc_touch_data_handler(ptr noundef %1) #9
  %104 = load ptr, ptr %87, align 8
  %105 = load ptr, ptr %89, align 4
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %106, i32 0, i32 8
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i32
  %110 = getelementptr i8, ptr %104, i32 %109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 536870912) #9, !srcloc !11
  br label %169

111:                                              ; preds = %83
  %112 = and i32 %13, -2140143616
  %113 = icmp eq i32 %112, -2140143616
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  tail call fastcc void @at91_adc_touch_data_handler(ptr noundef %1)
  br label %169

115:                                              ; preds = %111
  %116 = icmp sgt i32 %13, -1
  br i1 %116, label %142, label %117

117:                                              ; preds = %115
  %118 = load ptr, ptr %4, align 8
  %119 = load ptr, ptr %6, align 4
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %120, i32 0, i32 26
  %122 = load i16, ptr %121, align 2
  %123 = zext i16 %122 to i32
  %124 = getelementptr i8, ptr %118, i32 %123
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #9, !srcloc !10
  %126 = load ptr, ptr %4, align 8
  %127 = load ptr, ptr %6, align 4
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %128, i32 0, i32 27
  %130 = load i16, ptr %129, align 2
  %131 = zext i16 %130 to i32
  %132 = getelementptr i8, ptr %126, i32 %131
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #9, !srcloc !10
  %134 = load ptr, ptr %4, align 8
  %135 = load ptr, ptr %6, align 4
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %136, i32 0, i32 28
  %138 = load i16, ptr %137, align 2
  %139 = zext i16 %138 to i32
  %140 = getelementptr i8, ptr %134, i32 %139
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #9, !srcloc !10
  br label %169

142:                                              ; preds = %115
  %143 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, 14
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %158, label %147

147:                                              ; preds = %142
  %148 = and i32 %13, 16777216
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %147
  tail call void @disable_irq_nosync(i32 noundef %0) #9
  %151 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %152 = load ptr, ptr %151, align 4
  tail call void @iio_trigger_poll(ptr noundef %152) #9
  br label %169

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 15
  %155 = load ptr, ptr %154, align 8
  %156 = icmp eq ptr %155, null
  br i1 %156, label %169, label %157

157:                                              ; preds = %153
  tail call void @disable_irq_nosync(i32 noundef %0) #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 1515, i32 noundef 9, ptr noundef nonnull @.str.62) #9
  br label %169

158:                                              ; preds = %142
  %159 = load ptr, ptr %4, align 8
  %160 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 9
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.iio_chan_spec, ptr %161, i32 0, i32 3
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr i8, ptr %159, i32 %163
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #9, !srcloc !10
  %166 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 11
  store i32 %165, ptr %166, align 4
  %167 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 10
  store i8 1, ptr %167, align 8
  %168 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %168, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %169

169:                                              ; preds = %158, %157, %153, %150, %117, %114, %86, %55, %45
  %170 = phi i32 [ 1, %86 ], [ 1, %117 ], [ 1, %157 ], [ 1, %158 ], [ 1, %150 ], [ 1, %114 ], [ 1, %55 ], [ 1, %153 ], [ 0, %45 ]
  ret i32 %170
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #9
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at91_adc_hw_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 13, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %4, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 1) #9, !srcloc !11
  %11 = load ptr, ptr %5, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %12, i32 0, i32 13
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load ptr, ptr %3, align 8
  %18 = zext i16 %14 to i32
  %19 = getelementptr i8, ptr %17, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 -1) #9, !srcloc !11
  %20 = load ptr, ptr %5, align 4
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %16, %1
  %23 = phi ptr [ %21, %16 ], [ %12, %1 ]
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %23, i32 0, i32 9
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %24, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 -1) #9, !srcloc !11
  %29 = load ptr, ptr %3, align 8
  %30 = load ptr, ptr %5, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %31, i32 0, i32 1
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = getelementptr i8, ptr %29, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 545259520) #9, !srcloc !11
  %36 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 13, i32 1
  %37 = load i32, ptr %36, align 4
  tail call fastcc void @at91_adc_setup_samp_freq(ptr noundef %0, i32 noundef %37)
  %38 = load ptr, ptr %3, align 8
  %39 = load ptr, ptr %5, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %40, i32 0, i32 19
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr i8, ptr %38, i32 %43
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !10
  %46 = and i32 %45, -1245185
  %47 = or i32 %46, 1048576
  %48 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 12
  %49 = load i32, ptr %48, align 8
  switch i32 %49, label %54 [
    i32 16, label %52
    i32 4, label %50
  ]

50:                                               ; preds = %22
  %51 = or i32 %46, 1114112
  br label %54

52:                                               ; preds = %22
  %53 = or i32 %46, 1179648
  br label %54

54:                                               ; preds = %52, %50, %22
  %55 = phi i32 [ %53, %52 ], [ %51, %50 ], [ %47, %22 ]
  %56 = load ptr, ptr %3, align 8
  %57 = load ptr, ptr %5, align 4
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %58, i32 0, i32 19
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = getelementptr i8, ptr %56, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %55) #9, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @at91_adc_buffer_and_trigger_init(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.at91_adc_trigger, ptr %6, i32 0, i32 3
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr null, ptr @at91_adc_fifo_attributes
  %11 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  %12 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %11, ptr noundef %1, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @at91_adc_trigger_handler, i32 noundef 0, ptr noundef nonnull @at91_buffer_setup_ops, ptr noundef %10) #9
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.63) #10
  br label %45

15:                                               ; preds = %2
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.at91_adc_trigger, ptr %16, i32 0, i32 3
  %18 = load i8, ptr %17, align 4, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 15
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @iio_device_id(ptr noundef %1) #9
  %25 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %11, ptr noundef nonnull @.str.74, ptr noundef %23, i32 noundef %24, ptr noundef %21) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %28, align 4
  br label %43

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.iio_trigger, ptr %25, i32 0, i32 4, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.iio_trigger, ptr %25, i32 0, i32 4, i32 8
  store ptr %1, ptr %33, align 8
  store ptr @at91_adc_trigger_ops, ptr %25, align 8
  %34 = tail call i32 @__devm_iio_trigger_register(ptr noundef %11, ptr noundef nonnull %25, ptr noundef nonnull @__this_module) #9
  %35 = icmp eq i32 %34, 0
  %36 = inttoptr i32 %34 to ptr
  %37 = select i1 %35, ptr %25, ptr %36
  %38 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 7
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.64) #10
  %41 = load ptr, ptr %38, align 4
  %42 = ptrtoint ptr %41 to i32
  br label %45

43:                                               ; preds = %29, %27
  %44 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 15, i32 6
  store i32 1, ptr %44, align 8
  br label %45

45:                                               ; preds = %43, %40, %15, %14
  %46 = phi i32 [ %12, %14 ], [ %42, %40 ], [ 0, %43 ], [ 0, %15 ]
  ret i32 %46
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dma_coerce_mask_and_coherent(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16
  store ptr %2, ptr %3, align 4
  %4 = tail call i32 @dma_set_mask(ptr noundef %0, i64 noundef 4294967295) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 @dma_set_coherent_mask(ptr noundef %0, i64 noundef 4294967295) #9
  br label %8

8:                                                ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at91_adc_dma_disable(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.at91_adc_state, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.at91_adc_state, ptr %0, i32 0, i32 13, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.at91_adc_platform, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 9
  %11 = add i32 %10, 4095
  %12 = and i32 %11, -4096
  %13 = getelementptr inbounds %struct.at91_adc_state, ptr %0, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.iio_dev, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 47
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %5
  %21 = tail call i32 %18(ptr noundef nonnull %3) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 48
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void %26(ptr noundef nonnull %3) #9
  br label %29

29:                                               ; preds = %28, %23, %20, %5
  %30 = load ptr, ptr %2, align 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 15
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.at91_adc_state, ptr %0, i32 0, i32 15, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.at91_adc_state, ptr %0, i32 0, i32 15, i32 2
  %37 = load i32, ptr %36, align 8
  tail call void @dma_free_attrs(ptr noundef %33, i32 noundef %12, ptr noundef %35, i32 noundef %37, i32 noundef 0) #9
  %38 = load ptr, ptr %2, align 8
  tail call void @dma_release_channel(ptr noundef %38) #9
  store ptr null, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.53) #10
  br label %39

39:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_read_raw(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #2 {
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  switch i32 %4, label %323 [
    i32 0, label %9
    i32 2, label %303
    i32 12, label %317
    i32 25, label %320
  ]

9:                                                ; preds = %5
  %10 = load i32, ptr %1, align 4
  switch i32 %10, label %134 [
    i32 32, label %11
    i32 17, label %84
  ]

11:                                               ; preds = %9
  %12 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %0) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %323

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %15) #9
  %16 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 16, i32 1
  %19 = load i8, ptr %18, align 2, !range !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %74, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 13, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.at91_adc_platform, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %17
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load ptr, ptr %23, align 4
  %29 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %28, i32 0, i32 26
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = load ptr, ptr %8, align 8
  %33 = getelementptr i8, ptr %32, i32 %31
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !10
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 4095
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 17
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.iio_dev, ptr %40, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.47) #10
  br label %47

42:                                               ; preds = %27
  %43 = and i32 %34, 4095
  %44 = mul nuw nsw i32 %43, 4095
  %45 = udiv i32 %44, %36
  %46 = trunc i32 %45 to i16
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i16 [ 0, %38 ], [ %46, %42 ]
  %49 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 16, i32 2
  store i16 %48, ptr %49, align 4
  br label %74

50:                                               ; preds = %21
  %51 = getelementptr inbounds %struct.at91_adc_platform, ptr %23, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, %17
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load ptr, ptr %23, align 4
  %56 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %55, i32 0, i32 27
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = load ptr, ptr %8, align 8
  %60 = getelementptr i8, ptr %59, i32 %58
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #9
  %62 = lshr i32 %61, 16
  %63 = and i32 %62, 4095
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 17
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.iio_dev, ptr %67, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.47) #10
  br label %74

69:                                               ; preds = %54
  %70 = and i32 %61, 4095
  %71 = mul nuw nsw i32 %70, 4095
  %72 = udiv i32 %71, %63
  %73 = trunc i32 %72 to i16
  br label %74

74:                                               ; preds = %69, %65, %50, %47, %14
  %75 = phi i16 [ 0, %14 ], [ 0, %50 ], [ %48, %47 ], [ 0, %65 ], [ %73, %69 ]
  %76 = zext i16 %75 to i32
  store i32 %76, ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef %15) #9
  tail call void @iio_device_release_direct_mode(ptr noundef %0) #9
  %77 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 12
  %78 = load i32, ptr %77, align 8
  switch i32 %78, label %323 [
    i32 1, label %80
    i32 4, label %79
  ]

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %74
  %81 = phi i32 [ 1, %79 ], [ 2, %74 ]
  %82 = load i32, ptr %2, align 4
  %83 = shl i32 %82, %81
  store i32 %83, ptr %2, align 4
  br label %323

84:                                               ; preds = %9
  %85 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %0) #9
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %323

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %88) #9
  %89 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 16, i32 1
  %90 = load i8, ptr %89, align 2, !range !9
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %125, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 13, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.at91_adc_platform, ptr %96, i32 0, i32 5
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, %94
  br i1 %99, label %100, label %125

100:                                              ; preds = %92
  %101 = load ptr, ptr %8, align 8
  %102 = load ptr, ptr %96, align 4
  %103 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %102, i32 0, i32 28
  %104 = load i16, ptr %103, align 2
  %105 = zext i16 %104 to i32
  %106 = getelementptr i8, ptr %101, i32 %105
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #9, !srcloc !10
  %108 = and i32 %107, 4095
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %125, label %110

110:                                              ; preds = %100
  %111 = lshr i32 %107, 16
  %112 = and i32 %111, 4095
  %113 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 16, i32 2
  %114 = load i16, ptr %113, align 4
  %115 = zext i16 %114 to i32
  %116 = mul nuw nsw i32 %115, 1000
  %117 = lshr i32 %116, 10
  %118 = mul nuw nsw i32 %112, 1000
  %119 = udiv i32 %118, %108
  %120 = add nsw i32 %119, -1000
  %121 = mul i32 %117, %120
  %122 = udiv i32 %121, 1000
  %123 = and i32 %122, 65535
  %124 = xor i32 %123, 65535
  br label %125

125:                                              ; preds = %110, %100, %92, %87
  %126 = phi i32 [ 0, %87 ], [ 0, %92 ], [ %124, %110 ], [ 0, %100 ]
  store i32 %126, ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef %88) #9
  tail call void @iio_device_release_direct_mode(ptr noundef %0) #9
  %127 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 12
  %128 = load i32, ptr %127, align 8
  switch i32 %128, label %323 [
    i32 1, label %130
    i32 4, label %129
  ]

129:                                              ; preds = %125
  br label %130

130:                                              ; preds = %129, %125
  %131 = phi i32 [ 1, %129 ], [ 2, %125 ]
  %132 = load i32, ptr %2, align 4
  %133 = shl i32 %132, %131
  store i32 %133, ptr %2, align 4
  br label %323

134:                                              ; preds = %9
  %135 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %0) #9
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %323

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %138) #9
  %139 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 9
  store ptr %1, ptr %139, align 4
  %140 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = shl nuw i32 1, %141
  %143 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 2
  %144 = load i32, ptr %143, align 4
  %145 = shl nuw i32 1, %144
  %146 = or i32 %145, %142
  %147 = load ptr, ptr %8, align 8
  %148 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 13, i32 3
  %149 = load ptr, ptr %148, align 4
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %150, i32 0, i32 22
  %152 = load i16, ptr %151, align 2
  %153 = zext i16 %152 to i32
  %154 = getelementptr i8, ptr %147, i32 %153
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #9, !srcloc !10
  %156 = load ptr, ptr %148, align 4
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %157, i32 0, i32 23
  %159 = load i16, ptr %158, align 2
  %160 = zext i16 %159 to i32
  %161 = shl i32 %146, %160
  %162 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 19
  %163 = load i8, ptr %162, align 4
  %164 = and i8 %163, 8
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %137
  %167 = or i32 %161, %155
  %168 = load ptr, ptr %8, align 8
  %169 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %157, i32 0, i32 22
  %170 = load i16, ptr %169, align 2
  %171 = zext i16 %170 to i32
  %172 = getelementptr i8, ptr %168, i32 %171
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %167) #9, !srcloc !11
  br label %181

173:                                              ; preds = %137
  %174 = xor i32 %161, -1
  %175 = and i32 %155, %174
  %176 = load ptr, ptr %8, align 8
  %177 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %157, i32 0, i32 22
  %178 = load i16, ptr %177, align 2
  %179 = zext i16 %178 to i32
  %180 = getelementptr i8, ptr %176, i32 %179
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %175) #9, !srcloc !11
  br label %181

181:                                              ; preds = %173, %166
  %182 = load i32, ptr %140, align 4
  %183 = shl nuw i32 1, %182
  %184 = load ptr, ptr %8, align 8
  %185 = load ptr, ptr %148, align 4
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %186, i32 0, i32 4
  %188 = load i16, ptr %187, align 2
  %189 = zext i16 %188 to i32
  %190 = getelementptr i8, ptr %184, i32 %189
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %183) #9, !srcloc !11
  %191 = load i32, ptr %140, align 4
  %192 = load ptr, ptr %148, align 4
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %193, i32 0, i32 13
  %195 = load i16, ptr %194, align 2
  %196 = icmp eq i16 %195, 0
  %197 = shl nuw i32 1, %191
  %198 = load ptr, ptr %8, align 8
  br i1 %196, label %199, label %204

199:                                              ; preds = %181
  %200 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %193, i32 0, i32 8
  %201 = load i16, ptr %200, align 2
  %202 = zext i16 %201 to i32
  %203 = getelementptr i8, ptr %198, i32 %202
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %197) #9, !srcloc !11
  br label %209

204:                                              ; preds = %181
  %205 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %193, i32 0, i32 12
  %206 = load i16, ptr %205, align 2
  %207 = zext i16 %206 to i32
  %208 = getelementptr i8, ptr %198, i32 %207
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 %197) #9, !srcloc !11
  br label %209

209:                                              ; preds = %204, %199
  %210 = load ptr, ptr %8, align 8
  %211 = load ptr, ptr %148, align 4
  %212 = load ptr, ptr %211, align 4
  %213 = load i16, ptr %212, align 2
  %214 = zext i16 %213 to i32
  %215 = getelementptr i8, ptr %210, i32 %214
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 2) #9, !srcloc !11
  %216 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 10
  %217 = load i8, ptr %216, align 8, !range !9
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %245

219:                                              ; preds = %209
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #9, !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #9
  %220 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 14
  %221 = call i32 @prepare_to_wait_event(ptr noundef %220, ptr noundef nonnull %6, i32 noundef 1) #9
  %222 = load i8, ptr %216, align 8, !range !9
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %219
  call void @finish_wait(ptr noundef %220, ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #9
  br label %245

225:                                              ; preds = %230, %219
  %226 = phi i32 [ %238, %230 ], [ 100, %219 ]
  %227 = phi i32 [ %232, %230 ], [ %221, %219 ]
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #9
  br label %242

230:                                              ; preds = %225
  %231 = call i32 @schedule_timeout(i32 noundef %226) #9
  %232 = call i32 @prepare_to_wait_event(ptr noundef %220, ptr noundef nonnull %6, i32 noundef 1) #9
  %233 = load i8, ptr %216, align 8, !range !9
  %234 = icmp ne i8 %233, 0
  %235 = xor i1 %234, true
  %236 = icmp ne i32 %231, 0
  %237 = select i1 %235, i1 true, i1 %236
  %238 = select i1 %237, i32 %231, i32 1
  %239 = icmp eq i32 %238, 0
  %240 = select i1 %234, i1 true, i1 %239
  br i1 %240, label %241, label %225

241:                                              ; preds = %230
  call void @finish_wait(ptr noundef %220, ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #9
  br i1 %239, label %267, label %242

242:                                              ; preds = %241, %229
  %243 = phi i32 [ %238, %241 ], [ %227, %229 ]
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %267

245:                                              ; preds = %242, %224, %209
  %246 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 11
  %247 = load i32, ptr %246, align 4
  store i32 %247, ptr %2, align 4
  %248 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 12
  %249 = load i32, ptr %248, align 8
  switch i32 %249, label %254 [
    i32 1, label %251
    i32 4, label %250
  ]

250:                                              ; preds = %245
  br label %251

251:                                              ; preds = %250, %245
  %252 = phi i32 [ 1, %250 ], [ 2, %245 ]
  %253 = shl i32 %247, %252
  store i32 %253, ptr %2, align 4
  br label %254

254:                                              ; preds = %251, %245
  %255 = phi i32 [ %247, %245 ], [ %253, %251 ]
  %256 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5
  %257 = load i8, ptr %256, align 4
  %258 = icmp eq i8 %257, 115
  br i1 %258, label %259, label %266

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5, i32 1
  %261 = load i8, ptr %260, align 1
  %262 = sub i8 32, %261
  %263 = zext i8 %262 to i32
  %264 = shl i32 %255, %263
  %265 = ashr i32 %264, %263
  store i32 %265, ptr %2, align 4
  br label %266

266:                                              ; preds = %259, %254
  store i8 0, ptr %216, align 8
  br label %267

267:                                              ; preds = %266, %242, %241
  %268 = phi i32 [ 1, %266 ], [ %243, %242 ], [ -110, %241 ]
  %269 = load ptr, ptr %148, align 4
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %270, i32 0, i32 13
  %272 = load i16, ptr %271, align 2
  %273 = icmp eq i16 %272, 0
  br i1 %273, label %274, label %286

274:                                              ; preds = %267
  %275 = load ptr, ptr %139, align 4
  %276 = getelementptr inbounds %struct.iio_chan_spec, ptr %275, i32 0, i32 1
  %277 = load i32, ptr %276, align 4
  %278 = shl nuw i32 1, %277
  %279 = load ptr, ptr %8, align 8
  %280 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %270, i32 0, i32 9
  %281 = load i16, ptr %280, align 2
  %282 = zext i16 %281 to i32
  %283 = getelementptr i8, ptr %279, i32 %282
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %283, i32 %278) #9, !srcloc !11
  %284 = load ptr, ptr %148, align 4
  %285 = load ptr, ptr %284, align 4
  br label %286

286:                                              ; preds = %274, %267
  %287 = phi ptr [ %270, %267 ], [ %285, %274 ]
  %288 = load i32, ptr %140, align 4
  %289 = shl nuw i32 1, %288
  %290 = load ptr, ptr %8, align 8
  %291 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %287, i32 0, i32 5
  %292 = load i16, ptr %291, align 2
  %293 = zext i16 %292 to i32
  %294 = getelementptr i8, ptr %290, i32 %293
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %294, i32 %289) #9, !srcloc !11
  %295 = load ptr, ptr %8, align 8
  %296 = load ptr, ptr %148, align 4
  %297 = load ptr, ptr %296, align 4
  %298 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %297, i32 0, i32 7
  %299 = load i16, ptr %298, align 2
  %300 = zext i16 %299 to i32
  %301 = getelementptr i8, ptr %295, i32 %300
  %302 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %301) #9, !srcloc !10
  call void @mutex_unlock(ptr noundef %138) #9
  call void @iio_device_release_direct_mode(ptr noundef %0) #9
  br label %323

303:                                              ; preds = %5
  %304 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 5
  %305 = load i32, ptr %304, align 4
  %306 = sdiv i32 %305, 1000
  store i32 %306, ptr %2, align 4
  %307 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 19
  %308 = load i8, ptr %307, align 4
  %309 = and i8 %308, 8
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %303
  %312 = shl nsw i32 %306, 1
  store i32 %312, ptr %2, align 4
  br label %313

313:                                              ; preds = %311, %303
  %314 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5, i32 1
  %315 = load i8, ptr %314, align 1
  %316 = zext i8 %315 to i32
  store i32 %316, ptr %3, align 4
  br label %323

317:                                              ; preds = %5
  %318 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 6
  %319 = load i32, ptr %318, align 8
  store i32 %319, ptr %2, align 4
  br label %323

320:                                              ; preds = %5
  %321 = getelementptr inbounds %struct.at91_adc_state, ptr %8, i32 0, i32 12
  %322 = load i32, ptr %321, align 8
  store i32 %322, ptr %2, align 4
  br label %323

323:                                              ; preds = %320, %317, %313, %286, %134, %130, %125, %84, %80, %74, %11, %5
  %324 = phi i32 [ 1, %320 ], [ 1, %317 ], [ 11, %313 ], [ -22, %5 ], [ %268, %286 ], [ %12, %11 ], [ %85, %84 ], [ %135, %134 ], [ 1, %74 ], [ 1, %80 ], [ 1, %125 ], [ 1, %130 ]
  ret i32 %324
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_write_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  switch i32 %4, label %48 [
    i32 25, label %8
    i32 12, label %39
  ]

8:                                                ; preds = %5
  switch i32 %2, label %48 [
    i32 16, label %9
    i32 4, label %9
    i32 1, label %9
  ]

9:                                                ; preds = %8, %8, %8
  %10 = getelementptr inbounds %struct.at91_adc_state, ptr %7, i32 0, i32 12
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %48, label %13

13:                                               ; preds = %9
  store i32 %2, ptr %10, align 8
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds %struct.at91_adc_state, ptr %7, i32 0, i32 13, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %17, i32 0, i32 19
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %14, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !10
  %23 = and i32 %22, -1245185
  %24 = or i32 %23, 1048576
  %25 = load i32, ptr %10, align 8
  switch i32 %25, label %30 [
    i32 16, label %28
    i32 4, label %26
  ]

26:                                               ; preds = %13
  %27 = or i32 %23, 1114112
  br label %30

28:                                               ; preds = %13
  %29 = or i32 %23, 1179648
  br label %30

30:                                               ; preds = %28, %26, %13
  %31 = phi i32 [ %29, %28 ], [ %27, %26 ], [ %24, %13 ]
  %32 = load ptr, ptr %7, align 8
  %33 = load ptr, ptr %15, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %34, i32 0, i32 19
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = getelementptr i8, ptr %32, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %31) #9, !srcloc !11
  br label %48

39:                                               ; preds = %5
  %40 = getelementptr inbounds %struct.at91_adc_state, ptr %7, i32 0, i32 13, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %41, %2
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.at91_adc_state, ptr %7, i32 0, i32 13, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = icmp ult i32 %45, %2
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call fastcc void @at91_adc_setup_samp_freq(ptr noundef %0, i32 noundef %2)
  br label %48

48:                                               ; preds = %47, %43, %39, %30, %9, %8, %5
  %49 = phi i32 [ 0, %47 ], [ 0, %30 ], [ -22, %8 ], [ 0, %9 ], [ -22, %43 ], [ -22, %39 ], [ -22, %5 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_update_scan_mode(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 16, i32 3
  %6 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 13, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.at91_adc_platform, ptr %7, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  %11 = tail call i32 @__bitmap_subset(ptr noundef %1, ptr noundef %5, i32 noundef %10) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.at91_adc_platform, ptr %14, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  %18 = tail call i32 @__bitmap_intersects(ptr noundef %5, ptr noundef %1, i32 noundef %17) #9
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 0, i32 -22
  br label %21

21:                                               ; preds = %13, %2
  %22 = phi i32 [ 0, %2 ], [ %20, %13 ]
  ret i32 %22
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @at91_adc_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %16, %8
  %12 = phi i32 [ 0, %8 ], [ %17, %16 ]
  %13 = getelementptr %struct.iio_chan_spec, ptr %10, i32 %12, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %4
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, %6
  br i1 %18, label %19, label %11

19:                                               ; preds = %16, %11, %2
  %20 = phi i32 [ -22, %2 ], [ %12, %11 ], [ -22, %16 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_set_watermark(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.dma_slave_config, align 4
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ugt i32 %1, 128
  br i1 %6, label %364, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.at91_adc_trigger, ptr %9, i32 0, i32 3
  %11 = load i8, ptr %10, align 4, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %364, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 15, i32 6
  store i32 %1, ptr %14, align 8
  switch i32 %1, label %16 [
    i32 1, label %15
    i32 0, label %87
  ]

15:                                               ; preds = %13
  tail call fastcc void @at91_adc_dma_disable(ptr noundef %5)
  br label %87

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.iio_dev, ptr %18, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false) #9
  %20 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 13, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.at91_adc_platform, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %23, 9
  %25 = add i32 %24, 4095
  %26 = and i32 %25, -4096
  %27 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 15
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %86

30:                                               ; preds = %16
  %31 = tail call ptr @dma_request_chan(ptr noundef %19, ptr noundef nonnull @.str.48) #9
  store ptr %31, ptr %27, align 8
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.49) #10
  br label %85

34:                                               ; preds = %30
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 15, i32 2
  %39 = tail call ptr @dma_alloc_attrs(ptr noundef %37, i32 noundef %26, ptr noundef %38, i32 noundef 3264, i32 noundef 0) #9
  %40 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 15, i32 1
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.50) #10
  br label %83

43:                                               ; preds = %34
  store i32 2, ptr %3, align 4
  %44 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 15, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %20, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %47, i32 0, i32 7
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = add i32 %45, %50
  %52 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 1
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  store i32 2, ptr %53, align 4
  %54 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 5
  store i32 1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 6
  store i32 1, ptr %55, align 4
  %56 = load ptr, ptr %27, align 8
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 44
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %43
  %62 = call i32 %59(ptr noundef %56, ptr noundef nonnull %3) #9
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61, %43
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.51) #10
  %65 = load ptr, ptr %27, align 8
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dma_device, ptr %66, i32 0, i32 15
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %40, align 4
  %70 = load i32, ptr %38, align 8
  call void @dma_free_attrs(ptr noundef %68, i32 noundef %26, ptr noundef %69, i32 noundef %70, i32 noundef 0) #9
  br label %83

71:                                               ; preds = %61
  %72 = load ptr, ptr %27, align 8
  %73 = getelementptr inbounds %struct.dma_chan, ptr %72, i32 0, i32 5
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.dma_chan_dev, ptr %74, i32 0, i32 1, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.dma_chan_dev, ptr %74, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  br label %81

81:                                               ; preds = %78, %71
  %82 = phi ptr [ %80, %78 ], [ %76, %71 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.52, ptr noundef %82) #10
  br label %86

83:                                               ; preds = %64, %42
  %84 = load ptr, ptr %27, align 8
  call void @dma_release_channel(ptr noundef %84) #9
  br label %85

85:                                               ; preds = %83, %33
  store ptr null, ptr %27, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.53) #10
  br label %86

86:                                               ; preds = %85, %81, %16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  br label %87

87:                                               ; preds = %86, %15, %13
  %88 = load ptr, ptr %4, align 8
  %89 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 8
  %90 = getelementptr inbounds %struct.at91_adc_state, ptr %88, i32 0, i32 13, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.at91_adc_platform, ptr %91, i32 0, i32 7
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, 1
  %95 = getelementptr inbounds %struct.at91_adc_state, ptr %88, i32 0, i32 16, i32 3
  %96 = load ptr, ptr %89, align 4
  %97 = call i32 @__bitmap_subset(ptr noundef %96, ptr noundef %95, i32 noundef %94) #9
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %144, label %99

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.at91_adc_state, ptr %88, i32 0, i32 6
  %101 = load i32, ptr %100, align 8
  %102 = udiv i32 %101, 1000
  %103 = udiv i32 %101, 5000
  %104 = and i32 %103, 65535
  %105 = call i32 @llvm.ctlz.i32(i32 %104, i1 false) #9, !range !12
  %106 = mul i32 %105, -268435456
  %107 = add i32 %106, 289407522
  %108 = load ptr, ptr %88, align 8
  %109 = load ptr, ptr %90, align 4
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %110, i32 0, i32 25
  %112 = load i16, ptr %111, align 2
  %113 = zext i16 %112 to i32
  %114 = getelementptr i8, ptr %108, i32 %113
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %107) #9, !srcloc !11
  %115 = load ptr, ptr %88, align 8
  %116 = load ptr, ptr %90, align 4
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %117, i32 0, i32 24
  %119 = load i16, ptr %118, align 2
  %120 = zext i16 %119 to i32
  %121 = getelementptr i8, ptr %115, i32 %120
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #9, !srcloc !10
  %123 = and i32 %122, -4
  %124 = or i32 %123, 2
  %125 = load ptr, ptr %88, align 8
  %126 = load ptr, ptr %90, align 4
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %127, i32 0, i32 24
  %129 = load i16, ptr %128, align 2
  %130 = zext i16 %129 to i32
  %131 = getelementptr i8, ptr %125, i32 %130
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %124) #9, !srcloc !11
  %132 = mul i32 %102, 2000
  %133 = udiv i32 %132, 1000
  %134 = trunc i32 %133 to i16
  %135 = add i16 %134, -1
  %136 = getelementptr inbounds %struct.at91_adc_state, ptr %88, i32 0, i32 16
  store i16 %135, ptr %136, align 8
  %137 = load ptr, ptr %88, align 8
  %138 = load ptr, ptr %90, align 4
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %139, i32 0, i32 8
  %141 = load i16, ptr %140, align 2
  %142 = zext i16 %141 to i32
  %143 = getelementptr i8, ptr %137, i32 %142
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 536870912) #9, !srcloc !11
  br label %364

144:                                              ; preds = %87
  %145 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, 50
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %362, label %149

149:                                              ; preds = %144
  %150 = load ptr, ptr %4, align 8
  %151 = getelementptr inbounds %struct.at91_adc_state, ptr %150, i32 0, i32 15
  %152 = load ptr, ptr %151, align 8
  %153 = icmp eq ptr %152, null
  br i1 %153, label %253, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.at91_adc_state, ptr %150, i32 0, i32 15, i32 4
  store i32 0, ptr %155, align 8
  %156 = getelementptr inbounds %struct.at91_adc_state, ptr %150, i32 0, i32 15, i32 5
  store i32 0, ptr %156, align 4
  %157 = load ptr, ptr %89, align 4
  %158 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 14
  %159 = load i32, ptr %158, align 4
  %160 = call i32 @_find_next_bit_le(ptr noundef %157, i32 noundef %159, i32 noundef 0) #9
  %161 = and i32 %160, 255
  %162 = load i32, ptr %158, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %199

164:                                              ; preds = %154
  %165 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  br label %166

166:                                              ; preds = %191, %164
  %167 = phi i32 [ %162, %164 ], [ %197, %191 ]
  %168 = phi i32 [ %161, %164 ], [ %196, %191 ]
  %169 = icmp sgt i32 %167, 0
  br i1 %169, label %170, label %191

170:                                              ; preds = %166
  %171 = load ptr, ptr %165, align 8
  br label %172

172:                                              ; preds = %177, %170
  %173 = phi i32 [ 0, %170 ], [ %178, %177 ]
  %174 = getelementptr %struct.iio_chan_spec, ptr %171, i32 %173, i32 4
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, %168
  br i1 %176, label %180, label %177

177:                                              ; preds = %172
  %178 = add nuw nsw i32 %173, 1
  %179 = icmp eq i32 %178, %167
  br i1 %179, label %191, label %172

180:                                              ; preds = %172
  %181 = getelementptr %struct.iio_chan_spec, ptr %171, i32 %173
  %182 = icmp eq ptr %181, null
  br i1 %182, label %191, label %183

183:                                              ; preds = %180
  %184 = getelementptr %struct.iio_chan_spec, ptr %171, i32 %173, i32 5, i32 2
  %185 = load i8, ptr %184, align 2
  %186 = lshr i8 %185, 3
  %187 = zext i8 %186 to i32
  %188 = load i32, ptr %156, align 4
  %189 = add i32 %188, %187
  store i32 %189, ptr %156, align 4
  %190 = load i32, ptr %158, align 4
  br label %191

191:                                              ; preds = %183, %180, %177, %166
  %192 = phi i32 [ %167, %166 ], [ %167, %180 ], [ %190, %183 ], [ %167, %177 ]
  %193 = load ptr, ptr %89, align 4
  %194 = add nuw nsw i32 %168, 1
  %195 = call i32 @_find_next_bit_le(ptr noundef %193, i32 noundef %192, i32 noundef %194) #9
  %196 = and i32 %195, 255
  %197 = load i32, ptr %158, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %166, label %199

199:                                              ; preds = %191, %154
  %200 = getelementptr inbounds %struct.at91_adc_state, ptr %150, i32 0, i32 15, i32 6
  %201 = load i32, ptr %200, align 8
  %202 = load i32, ptr %156, align 4
  %203 = mul i32 %202, %201
  store i32 %203, ptr %156, align 4
  %204 = load ptr, ptr %151, align 8
  %205 = getelementptr inbounds %struct.at91_adc_state, ptr %150, i32 0, i32 15, i32 2
  %206 = load i32, ptr %205, align 8
  %207 = sdiv i32 %203, 2
  %208 = icmp eq ptr %204, null
  br i1 %208, label %219, label %209

209:                                              ; preds = %199
  %210 = load ptr, ptr %204, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %219, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.dma_device, ptr %210, i32 0, i32 40
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %212
  %217 = call ptr %214(ptr noundef nonnull %204, i32 noundef %206, i32 noundef %203, i32 noundef %207, i32 noundef 2, i32 noundef 1) #9
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %221

219:                                              ; preds = %216, %212, %209, %199
  %220 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %220, ptr noundef nonnull @.str.55) #10
  br label %359

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %217, i32 0, i32 6
  store ptr @at91_dma_buffer_done, ptr %222, align 4
  %223 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %217, i32 0, i32 8
  store ptr %0, ptr %223, align 4
  %224 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %217, i32 0, i32 4
  %225 = load ptr, ptr %224, align 4
  %226 = call i32 %225(ptr noundef nonnull %217) #9
  %227 = call i32 @llvm.smin.i32(i32 %226, i32 0) #9
  %228 = icmp sgt i32 %226, -1
  br i1 %228, label %238, label %229

229:                                              ; preds = %221
  %230 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %230, ptr noundef nonnull @.str.56) #10
  %231 = load ptr, ptr %151, align 8
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.dma_device, ptr %232, i32 0, i32 47
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %359, label %236

236:                                              ; preds = %229
  %237 = call i32 %234(ptr noundef %231) #9
  br label %359

238:                                              ; preds = %221
  %239 = load ptr, ptr %150, align 8
  %240 = getelementptr inbounds %struct.at91_adc_state, ptr %150, i32 0, i32 13, i32 3
  %241 = load ptr, ptr %240, align 4
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %242, i32 0, i32 8
  %244 = load i16, ptr %243, align 2
  %245 = zext i16 %244 to i32
  %246 = getelementptr i8, ptr %239, i32 %245
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 33554432) #9, !srcloc !11
  %247 = load ptr, ptr %151, align 8
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr inbounds %struct.dma_device, ptr %248, i32 0, i32 50
  %250 = load ptr, ptr %249, align 4
  call void %250(ptr noundef %247) #9
  %251 = call i64 @iio_get_time_ns(ptr noundef %0) #9
  %252 = getelementptr inbounds %struct.at91_adc_state, ptr %150, i32 0, i32 15, i32 7
  store i64 %251, ptr %252, align 8
  br label %253

253:                                              ; preds = %238, %149
  %254 = load ptr, ptr %89, align 4
  %255 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 14
  %256 = load i32, ptr %255, align 4
  %257 = call i32 @_find_next_bit_le(ptr noundef %254, i32 noundef %256, i32 noundef 0) #9
  %258 = and i32 %257, 255
  %259 = load i32, ptr %255, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %342

261:                                              ; preds = %253
  %262 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  br label %263

263:                                              ; preds = %334, %261
  %264 = phi i32 [ %259, %261 ], [ %340, %334 ]
  %265 = phi i32 [ %258, %261 ], [ %339, %334 ]
  %266 = icmp sgt i32 %264, 0
  br i1 %266, label %267, label %334

267:                                              ; preds = %263
  %268 = load ptr, ptr %262, align 8
  br label %269

269:                                              ; preds = %274, %267
  %270 = phi i32 [ 0, %267 ], [ %275, %274 ]
  %271 = getelementptr %struct.iio_chan_spec, ptr %268, i32 %270, i32 4
  %272 = load i32, ptr %271, align 4
  %273 = icmp eq i32 %272, %265
  br i1 %273, label %277, label %274

274:                                              ; preds = %269
  %275 = add nuw nsw i32 %270, 1
  %276 = icmp eq i32 %275, %264
  br i1 %276, label %334, label %269

277:                                              ; preds = %269
  %278 = getelementptr %struct.iio_chan_spec, ptr %268, i32 %270
  %279 = icmp eq ptr %278, null
  br i1 %279, label %334, label %280

280:                                              ; preds = %277
  %281 = load i32, ptr %278, align 4
  switch i32 %281, label %282 [
    i32 32, label %334
    i32 17, label %334
  ]

282:                                              ; preds = %280
  %283 = getelementptr %struct.iio_chan_spec, ptr %268, i32 %270, i32 1
  %284 = load i32, ptr %283, align 4
  %285 = shl nuw i32 1, %284
  %286 = getelementptr %struct.iio_chan_spec, ptr %268, i32 %270, i32 2
  %287 = load i32, ptr %286, align 4
  %288 = shl nuw i32 1, %287
  %289 = or i32 %288, %285
  %290 = load ptr, ptr %88, align 8
  %291 = load ptr, ptr %90, align 4
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %292, i32 0, i32 22
  %294 = load i16, ptr %293, align 2
  %295 = zext i16 %294 to i32
  %296 = getelementptr i8, ptr %290, i32 %295
  %297 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %296) #9, !srcloc !10
  %298 = load ptr, ptr %90, align 4
  %299 = load ptr, ptr %298, align 4
  %300 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %299, i32 0, i32 23
  %301 = load i16, ptr %300, align 2
  %302 = zext i16 %301 to i32
  %303 = shl i32 %289, %302
  %304 = getelementptr %struct.iio_chan_spec, ptr %268, i32 %270, i32 19
  %305 = load i8, ptr %304, align 4
  %306 = and i8 %305, 8
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %315, label %308

308:                                              ; preds = %282
  %309 = or i32 %303, %297
  %310 = load ptr, ptr %88, align 8
  %311 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %299, i32 0, i32 22
  %312 = load i16, ptr %311, align 2
  %313 = zext i16 %312 to i32
  %314 = getelementptr i8, ptr %310, i32 %313
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %314, i32 %309) #9, !srcloc !11
  br label %323

315:                                              ; preds = %282
  %316 = xor i32 %303, -1
  %317 = and i32 %297, %316
  %318 = load ptr, ptr %88, align 8
  %319 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %299, i32 0, i32 22
  %320 = load i16, ptr %319, align 2
  %321 = zext i16 %320 to i32
  %322 = getelementptr i8, ptr %318, i32 %321
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %322, i32 %317) #9, !srcloc !11
  br label %323

323:                                              ; preds = %315, %308
  %324 = load i32, ptr %283, align 4
  %325 = shl nuw i32 1, %324
  %326 = load ptr, ptr %88, align 8
  %327 = load ptr, ptr %90, align 4
  %328 = load ptr, ptr %327, align 4
  %329 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %328, i32 0, i32 4
  %330 = load i16, ptr %329, align 2
  %331 = zext i16 %330 to i32
  %332 = getelementptr i8, ptr %326, i32 %331
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %332, i32 %325) #9, !srcloc !11
  %333 = load i32, ptr %255, align 4
  br label %334

334:                                              ; preds = %323, %280, %280, %277, %274, %263
  %335 = phi i32 [ %264, %263 ], [ %264, %280 ], [ %264, %280 ], [ %264, %277 ], [ %333, %323 ], [ %264, %274 ]
  %336 = load ptr, ptr %89, align 4
  %337 = add nuw nsw i32 %265, 1
  %338 = call i32 @_find_next_bit_le(ptr noundef %336, i32 noundef %335, i32 noundef %337) #9
  %339 = and i32 %338, 255
  %340 = load i32, ptr %255, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %263, label %342

342:                                              ; preds = %334, %253
  %343 = getelementptr inbounds %struct.at91_adc_state, ptr %88, i32 0, i32 15
  %344 = load ptr, ptr %343, align 8
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %364

346:                                              ; preds = %342
  %347 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 10
  %348 = load ptr, ptr %347, align 4
  %349 = call i32 @iio_trigger_validate_own_device(ptr noundef %348, ptr noundef %0) #9
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %364

351:                                              ; preds = %346
  %352 = load ptr, ptr %88, align 8
  %353 = load ptr, ptr %90, align 4
  %354 = load ptr, ptr %353, align 4
  %355 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %354, i32 0, i32 8
  %356 = load i16, ptr %355, align 2
  %357 = zext i16 %356 to i32
  %358 = getelementptr i8, ptr %352, i32 %357
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %358, i32 16777216) #9, !srcloc !11
  br label %364

359:                                              ; preds = %236, %229, %219
  %360 = phi ptr [ %220, %219 ], [ %230, %229 ], [ %230, %236 ]
  %361 = phi i32 [ -16, %219 ], [ %227, %229 ], [ %227, %236 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %360, ptr noundef nonnull @.str.54) #10
  br label %362

362:                                              ; preds = %359, %144
  %363 = phi i32 [ -22, %144 ], [ %361, %359 ]
  call fastcc void @at91_adc_dma_disable(ptr noundef %5)
  br label %364

364:                                              ; preds = %362, %351, %346, %342, %99, %7, %2
  %365 = phi i32 [ -22, %2 ], [ 0, %7 ], [ %363, %362 ], [ 0, %99 ], [ 0, %351 ], [ 0, %346 ], [ 0, %342 ]
  ret i32 %365
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at91_adc_setup_samp_freq(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @clk_get_rate(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = udiv i32 %1, 1000
  %11 = mul i32 %9, %10
  %12 = icmp ult i32 %11, 8000
  br i1 %12, label %42, label %13

13:                                               ; preds = %2
  %14 = icmp ult i32 %11, 16000
  br i1 %14, label %42, label %15

15:                                               ; preds = %13
  %16 = icmp ult i32 %11, 24000
  br i1 %16, label %42, label %17

17:                                               ; preds = %15
  %18 = icmp ult i32 %11, 64000
  br i1 %18, label %42, label %19

19:                                               ; preds = %17
  %20 = icmp ult i32 %11, 80000
  br i1 %20, label %42, label %21

21:                                               ; preds = %19
  %22 = icmp ult i32 %11, 96000
  br i1 %22, label %42, label %23

23:                                               ; preds = %21
  %24 = icmp ult i32 %11, 112000
  br i1 %24, label %42, label %25

25:                                               ; preds = %23
  %26 = icmp ult i32 %11, 512000
  br i1 %26, label %42, label %27

27:                                               ; preds = %25
  %28 = icmp ult i32 %11, 576000
  br i1 %28, label %42, label %29

29:                                               ; preds = %27
  %30 = icmp ult i32 %11, 640000
  br i1 %30, label %42, label %31

31:                                               ; preds = %29
  %32 = icmp ult i32 %11, 704000
  br i1 %32, label %42, label %33

33:                                               ; preds = %31
  %34 = icmp ult i32 %11, 768000
  br i1 %34, label %42, label %35

35:                                               ; preds = %33
  %36 = icmp ult i32 %11, 832000
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = icmp ult i32 %11, 896000
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = icmp ult i32 %11, 960000
  %41 = select i1 %40, i32 983040, i32 1048576
  br label %42

42:                                               ; preds = %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %2
  %43 = phi i32 [ 65536, %2 ], [ 131072, %13 ], [ 196608, %15 ], [ 262144, %17 ], [ 327680, %19 ], [ 393216, %21 ], [ 458752, %23 ], [ 524288, %25 ], [ 589824, %27 ], [ 655360, %29 ], [ 720896, %31 ], [ 786432, %33 ], [ 851968, %35 ], [ 917504, %37 ], [ %41, %39 ]
  %44 = shl i32 %1, 1
  %45 = udiv i32 %7, %44
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 13, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %49, i32 0, i32 1
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = getelementptr i8, ptr %46, i32 %52
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #9, !srcloc !10
  %55 = and i32 %54, -1048321
  %56 = shl i32 %45, 8
  %57 = add i32 %56, -256
  %58 = or i32 %57, %43
  %59 = or i32 %58, %55
  %60 = load ptr, ptr %4, align 8
  %61 = load ptr, ptr %47, align 4
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %62, i32 0, i32 1
  %64 = load i16, ptr %63, align 2
  %65 = zext i16 %64 to i32
  %66 = getelementptr i8, ptr %60, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %59) #9, !srcloc !11
  %67 = getelementptr inbounds %struct.at91_adc_state, ptr %4, i32 0, i32 6
  store i32 %1, ptr %67, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_dma_buffer_done(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  tail call void @iio_trigger_poll_chained(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll_chained(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_validate_own_device(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at91_adc_touch_data_handler(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 13, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.at91_adc_platform, ptr %7, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  %11 = tail call i32 @_find_next_bit_le(ptr noundef %5, i32 noundef %10, i32 noundef 0) #9
  %12 = and i32 %11, 255
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.at91_adc_platform, ptr %13, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %151

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 14
  %20 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  %21 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 16, i32 1
  %22 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 16, i32 2
  %23 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 17
  br label %24

24:                                               ; preds = %136, %18
  %25 = phi ptr [ %13, %18 ], [ %146, %136 ]
  %26 = phi i32 [ %12, %18 ], [ %145, %136 ]
  %27 = phi i32 [ 0, %18 ], [ %138, %136 ]
  %28 = load i32, ptr %19, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load ptr, ptr %20, align 8
  br label %32

32:                                               ; preds = %37, %30
  %33 = phi i32 [ 0, %30 ], [ %38, %37 ]
  %34 = getelementptr %struct.iio_chan_spec, ptr %31, i32 %33, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, %26
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = add nuw nsw i32 %33, 1
  %39 = icmp eq i32 %38, %28
  br i1 %39, label %42, label %32

40:                                               ; preds = %32
  %41 = getelementptr %struct.iio_chan_spec, ptr %31, i32 %33
  br label %42

42:                                               ; preds = %40, %37, %24
  %43 = phi ptr [ %41, %40 ], [ null, %24 ], [ null, %37 ]
  %44 = load i32, ptr %43, align 4
  switch i32 %44, label %136 [
    i32 32, label %45
    i32 17, label %98
  ]

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.iio_chan_spec, ptr %43, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = load i8, ptr %21, align 2, !range !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %131, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.at91_adc_platform, ptr %25, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, %47
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load ptr, ptr %25, align 4
  %56 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %55, i32 0, i32 26
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = load ptr, ptr %3, align 8
  %60 = getelementptr i8, ptr %59, i32 %58
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #9, !srcloc !10
  %62 = lshr i32 %61, 16
  %63 = and i32 %62, 4095
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load ptr, ptr %23, align 4
  %67 = getelementptr inbounds %struct.iio_dev, ptr %66, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.47) #10
  br label %73

68:                                               ; preds = %54
  %69 = and i32 %61, 4095
  %70 = mul nuw nsw i32 %69, 4095
  %71 = udiv i32 %70, %63
  %72 = trunc i32 %71 to i16
  br label %73

73:                                               ; preds = %68, %65
  %74 = phi i16 [ 0, %65 ], [ %72, %68 ]
  store i16 %74, ptr %22, align 4
  br label %131

75:                                               ; preds = %50
  %76 = getelementptr inbounds %struct.at91_adc_platform, ptr %25, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, %47
  br i1 %78, label %79, label %131

79:                                               ; preds = %75
  %80 = load ptr, ptr %25, align 4
  %81 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %80, i32 0, i32 27
  %82 = load i16, ptr %81, align 2
  %83 = zext i16 %82 to i32
  %84 = load ptr, ptr %3, align 8
  %85 = getelementptr i8, ptr %84, i32 %83
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #9
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 4095
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load ptr, ptr %23, align 4
  %92 = getelementptr inbounds %struct.iio_dev, ptr %91, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.47) #10
  br label %131

93:                                               ; preds = %79
  %94 = and i32 %86, 4095
  %95 = mul nuw nsw i32 %94, 4095
  %96 = udiv i32 %95, %88
  %97 = trunc i32 %96 to i16
  br label %131

98:                                               ; preds = %42
  %99 = load i8, ptr %21, align 2, !range !9
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %131, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.iio_chan_spec, ptr %43, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.at91_adc_platform, ptr %25, i32 0, i32 5
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, %103
  br i1 %106, label %107, label %131

107:                                              ; preds = %101
  %108 = load ptr, ptr %3, align 8
  %109 = load ptr, ptr %25, align 4
  %110 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %109, i32 0, i32 28
  %111 = load i16, ptr %110, align 2
  %112 = zext i16 %111 to i32
  %113 = getelementptr i8, ptr %108, i32 %112
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #9, !srcloc !10
  %115 = and i32 %114, 4095
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %131, label %117

117:                                              ; preds = %107
  %118 = lshr i32 %114, 16
  %119 = and i32 %118, 4095
  %120 = load i16, ptr %22, align 4
  %121 = zext i16 %120 to i32
  %122 = mul nuw nsw i32 %121, 1000
  %123 = lshr i32 %122, 10
  %124 = mul nuw nsw i32 %119, 1000
  %125 = udiv i32 %124, %115
  %126 = add nsw i32 %125, -1000
  %127 = mul i32 %123, %126
  %128 = udiv i32 %127, 1000
  %129 = trunc i32 %128 to i16
  %130 = xor i16 %129, -1
  br label %131

131:                                              ; preds = %117, %107, %101, %98, %93, %90, %75, %73, %45
  %132 = phi i16 [ 0, %45 ], [ 0, %75 ], [ %74, %73 ], [ 0, %90 ], [ %97, %93 ], [ 0, %98 ], [ 0, %101 ], [ %130, %117 ], [ 0, %107 ]
  %133 = getelementptr %struct.at91_adc_state, ptr %3, i32 0, i32 18, i32 %27
  store i16 %132, ptr %133, align 2
  %134 = add i32 %27, 1
  %135 = load ptr, ptr %6, align 4
  br label %136

136:                                              ; preds = %131, %42
  %137 = phi ptr [ %135, %131 ], [ %25, %42 ]
  %138 = phi i32 [ %134, %131 ], [ %27, %42 ]
  %139 = load ptr, ptr %4, align 4
  %140 = getelementptr inbounds %struct.at91_adc_platform, ptr %137, i32 0, i32 7
  %141 = load i32, ptr %140, align 4
  %142 = add i32 %141, 1
  %143 = add nuw nsw i32 %26, 1
  %144 = tail call i32 @_find_next_bit_le(ptr noundef %139, i32 noundef %142, i32 noundef %143) #9
  %145 = and i32 %144, 255
  %146 = load ptr, ptr %6, align 4
  %147 = getelementptr inbounds %struct.at91_adc_platform, ptr %146, i32 0, i32 7
  %148 = load i32, ptr %147, align 4
  %149 = add i32 %148, 1
  %150 = icmp ult i32 %145, %149
  br i1 %150, label %24, label %151

151:                                              ; preds = %136, %1
  %152 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 16, i32 4
  %153 = load ptr, ptr @system_wq, align 4
  %154 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %153, ptr noundef %152) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_trigger_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_tx_state, align 4
  %7 = load ptr, ptr %1, align 8
  %8 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 19
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @iio_trigger_validate_own_device(ptr noundef %11, ptr noundef %7) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %9, align 8
  %16 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 13, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %15, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 2) #9, !srcloc !11
  br label %22

22:                                               ; preds = %14, %2
  %23 = getelementptr inbounds %struct.at91_adc_state, ptr %9, i32 0, i32 15
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  %26 = load ptr, ptr %8, align 8
  br i1 %25, label %144, label %27

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #9, !annotation !8
  %28 = getelementptr inbounds %struct.at91_adc_state, ptr %26, i32 0, i32 15
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.dma_chan, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 49
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %34(ptr noundef %29, i32 noundef %31, ptr noundef nonnull %6) #9
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %49

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.at91_adc_state, ptr %26, i32 0, i32 15, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dma_tx_state, ptr %6, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = sub i32 %39, %41
  %43 = getelementptr inbounds %struct.at91_adc_state, ptr %26, i32 0, i32 15, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = icmp slt i32 %42, %44
  %46 = select i1 %45, i32 %39, i32 0
  %47 = sub i32 %42, %44
  %48 = add i32 %47, %46
  br label %49

49:                                               ; preds = %37, %27
  %50 = phi i32 [ %48, %37 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  %51 = call i64 @iio_get_time_ns(ptr noundef %7) #9
  %52 = load ptr, ptr %26, align 8
  %53 = getelementptr inbounds %struct.at91_adc_state, ptr %26, i32 0, i32 13, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %55, i32 0, i32 11
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = getelementptr i8, ptr %52, i32 %58
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #9, !srcloc !10
  %61 = and i32 %60, 33554432
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %49
  %64 = call i32 @___ratelimit(ptr noundef nonnull @at91_adc_trigger_handler_dma._rs, ptr noundef nonnull @__func__.at91_adc_trigger_handler_dma) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 15
  %68 = load ptr, ptr %67, align 8
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %68) #10
  br label %70

70:                                               ; preds = %66, %63, %49
  %71 = getelementptr inbounds %struct.at91_adc_state, ptr %26, i32 0, i32 15, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.at91_adc_state, ptr %26, i32 0, i32 15, i32 6
  %75 = load i32, ptr %74, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %76 = call i64 @div_s64_rem(i64 noundef %73, i32 noundef %75, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %77 = trunc i64 %76 to i32
  %78 = sext i32 %50 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %79 = call i64 @div_s64_rem(i64 noundef %78, i32 noundef %77, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %80 = trunc i64 %79 to i32
  %81 = getelementptr inbounds %struct.at91_adc_state, ptr %26, i32 0, i32 15, i32 7
  %82 = load i64, ptr %81, align 8
  %83 = sub i64 %51, %82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %84 = call i64 @div_s64_rem(i64 noundef %83, i32 noundef %80, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %85 = icmp slt i32 %50, %77
  br i1 %85, label %142, label %86

86:                                               ; preds = %70
  %87 = getelementptr inbounds %struct.at91_adc_state, ptr %26, i32 0, i32 15, i32 1
  %88 = getelementptr inbounds %struct.at91_adc_state, ptr %26, i32 0, i32 15, i32 4
  %89 = sdiv i32 %77, 2
  %90 = icmp sgt i32 %77, 1
  %91 = getelementptr inbounds %struct.at91_adc_state, ptr %26, i32 0, i32 12
  %92 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 9
  %93 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 4
  %94 = load i32, ptr %88, align 8
  br label %95

95:                                               ; preds = %132, %86
  %96 = phi i32 [ %94, %86 ], [ %139, %132 ]
  %97 = phi i32 [ %50, %86 ], [ %134, %132 ]
  %98 = phi i32 [ 0, %86 ], [ %140, %132 ]
  %99 = load ptr, ptr %87, align 4
  %100 = getelementptr i8, ptr %99, i32 %96
  br i1 %90, label %101, label %117

101:                                              ; preds = %110, %95
  %102 = phi i32 [ %112, %110 ], [ 0, %95 ]
  %103 = getelementptr i16, ptr %100, i32 %102
  %104 = load i16, ptr %103, align 2
  %105 = load i32, ptr %91, align 8
  switch i32 %105, label %110 [
    i32 1, label %107
    i32 4, label %106
  ]

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106, %101
  %108 = phi i16 [ 1, %106 ], [ 2, %101 ]
  %109 = shl i16 %104, %108
  br label %110

110:                                              ; preds = %107, %101
  %111 = phi i16 [ %104, %101 ], [ %109, %107 ]
  store i16 %111, ptr %103, align 2
  %112 = add nuw nsw i32 %102, 1
  %113 = icmp eq i32 %112, %89
  br i1 %113, label %114, label %101

114:                                              ; preds = %110
  %115 = load ptr, ptr %87, align 4
  %116 = load i32, ptr %88, align 8
  br label %117

117:                                              ; preds = %114, %95
  %118 = phi i32 [ %116, %114 ], [ %96, %95 ]
  %119 = phi ptr [ %115, %114 ], [ %99, %95 ]
  %120 = getelementptr i8, ptr %119, i32 %118
  %121 = load i8, ptr %92, align 8, !range !9
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %117
  %124 = load i64, ptr %81, align 8
  %125 = sext i32 %98 to i64
  %126 = mul i64 %84, %125
  %127 = add i64 %124, %126
  %128 = load i32, ptr %93, align 4
  %129 = lshr i32 %128, 3
  %130 = add nsw i32 %129, -1
  %131 = getelementptr i64, ptr %120, i32 %130
  store i64 %127, ptr %131, align 8
  br label %132

132:                                              ; preds = %123, %117
  %133 = call i32 @iio_push_to_buffers(ptr noundef %7, ptr noundef %120) #9
  %134 = sub i32 %97, %77
  %135 = load i32, ptr %88, align 8
  %136 = add i32 %135, %77
  %137 = load i32, ptr %71, align 4
  %138 = icmp slt i32 %136, %137
  %139 = select i1 %138, i32 %136, i32 0
  store i32 %139, ptr %88, align 8
  %140 = add i32 %98, 1
  %141 = icmp slt i32 %134, %77
  br i1 %141, label %142, label %95

142:                                              ; preds = %132, %70
  %143 = call i64 @iio_get_time_ns(ptr noundef %7) #9
  store i64 %143, ptr %81, align 8
  br label %322

144:                                              ; preds = %22
  %145 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 8
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 14
  %148 = load i32, ptr %147, align 4
  %149 = tail call i32 @_find_next_bit_le(ptr noundef %146, i32 noundef %148, i32 noundef 0) #9
  %150 = and i32 %149, 255
  %151 = load i32, ptr %147, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %184

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 13
  br label %155

155:                                              ; preds = %172, %153
  %156 = phi i32 [ %151, %153 ], [ %182, %172 ]
  %157 = phi i32 [ %150, %153 ], [ %181, %172 ]
  %158 = phi i32 [ 0, %153 ], [ %177, %172 ]
  %159 = icmp sgt i32 %156, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = load ptr, ptr %154, align 8
  br label %162

162:                                              ; preds = %167, %160
  %163 = phi i32 [ 0, %160 ], [ %168, %167 ]
  %164 = getelementptr %struct.iio_chan_spec, ptr %161, i32 %163, i32 4
  %165 = load i32, ptr %164, align 4
  %166 = icmp eq i32 %165, %157
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = add nuw nsw i32 %163, 1
  %169 = icmp eq i32 %168, %156
  br i1 %169, label %172, label %162

170:                                              ; preds = %162
  %171 = getelementptr %struct.iio_chan_spec, ptr %161, i32 %163
  br label %172

172:                                              ; preds = %170, %167, %155
  %173 = phi ptr [ %171, %170 ], [ null, %155 ], [ null, %167 ]
  %174 = getelementptr inbounds %struct.iio_chan_spec, ptr %173, i32 0, i32 1
  %175 = load i32, ptr %174, align 4
  %176 = shl nuw i32 1, %175
  %177 = or i32 %176, %158
  %178 = load ptr, ptr %145, align 4
  %179 = add nuw nsw i32 %157, 1
  %180 = tail call i32 @_find_next_bit_le(ptr noundef %178, i32 noundef %156, i32 noundef %179) #9
  %181 = and i32 %180, 255
  %182 = load i32, ptr %147, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %155, label %184

184:                                              ; preds = %172, %144
  %185 = phi i32 [ %151, %144 ], [ %182, %172 ]
  %186 = phi i32 [ 0, %144 ], [ %177, %172 ]
  %187 = getelementptr inbounds %struct.at91_adc_state, ptr %26, i32 0, i32 13, i32 3
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.at91_adc_platform, ptr %188, i32 0, i32 2
  %190 = load i32, ptr %189, align 4
  %191 = sub i32 31, %190
  %192 = lshr i32 -1, %191
  %193 = and i32 %192, %186
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %247, label %195

195:                                              ; preds = %242, %184
  %196 = phi ptr [ %243, %242 ], [ %188, %184 ]
  %197 = phi i32 [ %237, %242 ], [ 50, %184 ]
  %198 = load ptr, ptr %26, align 8
  %199 = load ptr, ptr %196, align 4
  %200 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %199, i32 0, i32 11
  %201 = load i16, ptr %200, align 2
  %202 = zext i16 %201 to i32
  %203 = getelementptr i8, ptr %198, i32 %202
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #9, !srcloc !10
  %205 = load ptr, ptr %187, align 4
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %206, i32 0, i32 15
  %208 = load i16, ptr %207, align 2
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %217, label %210

210:                                              ; preds = %195
  %211 = load ptr, ptr %26, align 8
  %212 = zext i16 %208 to i32
  %213 = getelementptr i8, ptr %211, i32 %212
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %213) #9, !srcloc !10
  %215 = load ptr, ptr %187, align 4
  %216 = load ptr, ptr %215, align 4
  br label %217

217:                                              ; preds = %210, %195
  %218 = phi ptr [ %216, %210 ], [ %206, %195 ]
  %219 = phi i32 [ %214, %210 ], [ %204, %195 ]
  %220 = load ptr, ptr %26, align 8
  %221 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %218, i32 0, i32 10
  %222 = load i16, ptr %221, align 2
  %223 = zext i16 %222 to i32
  %224 = getelementptr i8, ptr %220, i32 %223
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #9, !srcloc !10
  %226 = load ptr, ptr %187, align 4
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %227, i32 0, i32 14
  %229 = load i16, ptr %228, align 2
  %230 = icmp eq i16 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %217
  %232 = load ptr, ptr %26, align 8
  %233 = zext i16 %229 to i32
  %234 = getelementptr i8, ptr %232, i32 %233
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #9, !srcloc !10
  br label %236

236:                                              ; preds = %231, %217
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #9
  %237 = add nsw i32 %197, -1
  %238 = and i32 %219, %193
  %239 = icmp ne i32 %238, %193
  %240 = icmp ne i32 %237, 0
  %241 = select i1 %239, i1 %240, i1 false
  br i1 %241, label %242, label %244

242:                                              ; preds = %236
  %243 = load ptr, ptr %187, align 4
  br label %195

244:                                              ; preds = %236
  br i1 %240, label %245, label %322

245:                                              ; preds = %244
  %246 = load i32, ptr %147, align 4
  br label %247

247:                                              ; preds = %245, %184
  %248 = phi i32 [ %246, %245 ], [ %185, %184 ]
  %249 = load ptr, ptr %145, align 4
  %250 = tail call i32 @_find_next_bit_le(ptr noundef %249, i32 noundef %248, i32 noundef 0) #9
  %251 = and i32 %250, 255
  %252 = load i32, ptr %147, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %307

254:                                              ; preds = %247
  %255 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 13
  %256 = getelementptr inbounds %struct.at91_adc_state, ptr %26, i32 0, i32 12
  br label %257

257:                                              ; preds = %298, %254
  %258 = phi i32 [ %252, %254 ], [ %305, %298 ]
  %259 = phi i32 [ %251, %254 ], [ %304, %298 ]
  %260 = phi i32 [ 0, %254 ], [ %300, %298 ]
  %261 = icmp sgt i32 %258, 0
  br i1 %261, label %262, label %298

262:                                              ; preds = %257
  %263 = load ptr, ptr %255, align 8
  br label %264

264:                                              ; preds = %269, %262
  %265 = phi i32 [ 0, %262 ], [ %270, %269 ]
  %266 = getelementptr %struct.iio_chan_spec, ptr %263, i32 %265, i32 4
  %267 = load i32, ptr %266, align 4
  %268 = icmp eq i32 %267, %259
  br i1 %268, label %272, label %269

269:                                              ; preds = %264
  %270 = add nuw nsw i32 %265, 1
  %271 = icmp eq i32 %270, %258
  br i1 %271, label %298, label %264

272:                                              ; preds = %264
  %273 = getelementptr %struct.iio_chan_spec, ptr %263, i32 %265
  %274 = icmp eq ptr %273, null
  br i1 %274, label %298, label %275

275:                                              ; preds = %272
  %276 = load i32, ptr %273, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %293

278:                                              ; preds = %275
  %279 = load ptr, ptr %26, align 8
  %280 = getelementptr %struct.iio_chan_spec, ptr %263, i32 %265, i32 3
  %281 = load i32, ptr %280, align 4
  %282 = getelementptr i8, ptr %279, i32 %281
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %282) #9, !srcloc !10
  %284 = load i32, ptr %256, align 8
  switch i32 %284, label %289 [
    i32 1, label %286
    i32 4, label %285
  ]

285:                                              ; preds = %278
  br label %286

286:                                              ; preds = %285, %278
  %287 = phi i32 [ 1, %285 ], [ 2, %278 ]
  %288 = shl i32 %283, %287
  br label %289

289:                                              ; preds = %286, %278
  %290 = phi i32 [ %283, %278 ], [ %288, %286 ]
  %291 = trunc i32 %290 to i16
  %292 = getelementptr %struct.at91_adc_state, ptr %26, i32 0, i32 18, i32 %260
  store i16 %291, ptr %292, align 2
  br label %295

293:                                              ; preds = %275
  %294 = getelementptr %struct.at91_adc_state, ptr %26, i32 0, i32 18, i32 %260
  store i16 0, ptr %294, align 2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 1276, i32 noundef 9, ptr noundef nonnull @.str.73) #9
  br label %295

295:                                              ; preds = %293, %289
  %296 = add i32 %260, 1
  %297 = load i32, ptr %147, align 4
  br label %298

298:                                              ; preds = %295, %272, %269, %257
  %299 = phi i32 [ %297, %295 ], [ %258, %272 ], [ %258, %257 ], [ %258, %269 ]
  %300 = phi i32 [ %296, %295 ], [ %260, %272 ], [ %260, %257 ], [ %260, %269 ]
  %301 = load ptr, ptr %145, align 4
  %302 = add nuw nsw i32 %259, 1
  %303 = tail call i32 @_find_next_bit_le(ptr noundef %301, i32 noundef %299, i32 noundef %302) #9
  %304 = and i32 %303, 255
  %305 = load i32, ptr %147, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %257, label %307

307:                                              ; preds = %298, %247
  %308 = getelementptr inbounds %struct.at91_adc_state, ptr %26, i32 0, i32 18
  %309 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 9
  %310 = load i8, ptr %309, align 8, !range !9
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %320, label %312

312:                                              ; preds = %307
  %313 = getelementptr inbounds %struct.iio_poll_func, ptr %1, i32 0, i32 6
  %314 = load i64, ptr %313, align 8
  %315 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 4
  %316 = load i32, ptr %315, align 4
  %317 = lshr i32 %316, 3
  %318 = add nsw i32 %317, -1
  %319 = getelementptr i64, ptr %308, i32 %318
  store i64 %314, ptr %319, align 8
  br label %320

320:                                              ; preds = %312, %307
  %321 = tail call i32 @iio_push_to_buffers(ptr noundef %7, ptr noundef %308) #9
  br label %322

322:                                              ; preds = %320, %244, %142
  %323 = load ptr, ptr %10, align 4
  call void @iio_trigger_notify_done(ptr noundef %323) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_get_watermark(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 552
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 15, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.70, i32 noundef %7) #9
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_get_fifo_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 552
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i32
  %10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.70, i32 noundef %9) #9
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_buffer_postdisable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 13, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.at91_adc_platform, ptr %6, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 16, i32 3
  %11 = load ptr, ptr %4, align 4
  %12 = tail call i32 @__bitmap_subset(ptr noundef %11, ptr noundef %10, i32 noundef %9) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 8
  %16 = load ptr, ptr %5, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %17, i32 0, i32 9
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %15, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 1610612736) #9, !srcloc !11
  %22 = load ptr, ptr %3, align 8
  %23 = load ptr, ptr %5, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %24, i32 0, i32 25
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %22, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #9, !srcloc !11
  br label %133

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 50
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %133, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 14
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @_find_next_bit_le(ptr noundef %35, i32 noundef %37, i32 noundef 0) #9
  %39 = and i32 %38, 255
  %40 = load i32, ptr %36, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %91

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  %44 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 15
  br label %45

45:                                               ; preds = %83, %42
  %46 = phi i32 [ %40, %42 ], [ %89, %83 ]
  %47 = phi i32 [ %39, %42 ], [ %88, %83 ]
  %48 = icmp sgt i32 %46, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %45
  %50 = load ptr, ptr %43, align 8
  br label %51

51:                                               ; preds = %56, %49
  %52 = phi i32 [ 0, %49 ], [ %57, %56 ]
  %53 = getelementptr %struct.iio_chan_spec, ptr %50, i32 %52, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, %47
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = add nuw nsw i32 %52, 1
  %58 = icmp eq i32 %57, %46
  br i1 %58, label %83, label %51

59:                                               ; preds = %51
  %60 = getelementptr %struct.iio_chan_spec, ptr %50, i32 %52
  %61 = icmp eq ptr %60, null
  br i1 %61, label %83, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %60, align 4
  switch i32 %63, label %64 [
    i32 32, label %83
    i32 17, label %83
  ]

64:                                               ; preds = %62
  %65 = getelementptr %struct.iio_chan_spec, ptr %50, i32 %52, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = shl nuw i32 1, %66
  %68 = load ptr, ptr %3, align 8
  %69 = load ptr, ptr %5, align 4
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %70, i32 0, i32 5
  %72 = load i16, ptr %71, align 2
  %73 = zext i16 %72 to i32
  %74 = getelementptr i8, ptr %68, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %67) #9, !srcloc !11
  %75 = load ptr, ptr %44, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %64
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr %struct.iio_chan_spec, ptr %50, i32 %52, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %78, i32 %80
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #9, !srcloc !10
  br label %83

83:                                               ; preds = %77, %64, %62, %62, %59, %56, %45
  %84 = load ptr, ptr %4, align 4
  %85 = load i32, ptr %36, align 4
  %86 = add nuw nsw i32 %47, 1
  %87 = tail call i32 @_find_next_bit_le(ptr noundef %84, i32 noundef %85, i32 noundef %86) #9
  %88 = and i32 %87, 255
  %89 = load i32, ptr %36, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %45, label %91

91:                                               ; preds = %83, %34
  %92 = getelementptr inbounds %struct.at91_adc_state, ptr %3, i32 0, i32 15
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 10
  %97 = load ptr, ptr %96, align 4
  %98 = tail call i32 @iio_trigger_validate_own_device(ptr noundef %97, ptr noundef %0) #9
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load ptr, ptr %3, align 8
  %102 = load ptr, ptr %5, align 4
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %103, i32 0, i32 9
  %105 = load i16, ptr %104, align 2
  %106 = zext i16 %105 to i32
  %107 = getelementptr i8, ptr %101, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 16777216) #9, !srcloc !11
  br label %108

108:                                              ; preds = %100, %95, %91
  %109 = load ptr, ptr %3, align 8
  %110 = load ptr, ptr %5, align 4
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %111, i32 0, i32 18
  %113 = load i16, ptr %112, align 2
  %114 = zext i16 %113 to i32
  %115 = getelementptr i8, ptr %109, i32 %114
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #9, !srcloc !10
  %117 = load ptr, ptr %92, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %133, label %119

119:                                              ; preds = %108
  %120 = load ptr, ptr %117, align 4
  %121 = getelementptr inbounds %struct.dma_device, ptr %120, i32 0, i32 47
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %133, label %124

124:                                              ; preds = %119
  %125 = tail call i32 %122(ptr noundef nonnull %117) #9
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load ptr, ptr %117, align 4
  %129 = getelementptr inbounds %struct.dma_device, ptr %128, i32 0, i32 48
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  tail call void %130(ptr noundef nonnull %117) #9
  br label %133

133:                                              ; preds = %132, %127, %124, %119, %108, %29, %14
  %134 = phi i32 [ 0, %14 ], [ -22, %29 ], [ 0, %108 ], [ 0, %119 ], [ 0, %124 ], [ 0, %127 ], [ 0, %132 ]
  ret i32 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_configure_trigger(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.iio_trigger, ptr %0, i32 0, i32 4, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.at91_adc_state, ptr %6, i32 0, i32 13, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %10, i32 0, i32 29
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %7, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !10
  %16 = and i32 %15, -8
  br i1 %1, label %17, label %23

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.at91_adc_state, ptr %6, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.at91_adc_trigger, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, %16
  br label %23

23:                                               ; preds = %17, %2
  %24 = phi i32 [ %22, %17 ], [ %16, %2 ]
  %25 = load ptr, ptr %6, align 8
  %26 = load ptr, ptr %8, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %27, i32 0, i32 29
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr i8, ptr %25, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %24) #9, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_adc_reenable_trigger(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.iio_trigger, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void @enable_irq(i32 noundef %11) #9
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 13, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %15, i32 0, i32 7
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %12, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !10
  br label %21

21:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 13, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %6, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #9, !srcloc !11
  %13 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  tail call void @clk_disable(ptr noundef %14) #9
  tail call void @clk_unprepare(ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @regulator_disable(ptr noundef %16) #9
  %18 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @regulator_disable(ptr noundef %19) #9
  %21 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #9
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_adc_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %127

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regulator_enable(ptr noundef %10) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %127

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @regulator_enable(ptr noundef %15) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %123

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %119

23:                                               ; preds = %18
  %24 = tail call i32 @clk_enable(ptr noundef %20) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #9
  br label %119

27:                                               ; preds = %23
  tail call fastcc void @at91_adc_hw_init(ptr noundef %3)
  %28 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %130, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.at91_adc_state, ptr %33, i32 0, i32 13, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.at91_adc_platform, ptr %35, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  %39 = getelementptr inbounds %struct.at91_adc_state, ptr %33, i32 0, i32 16, i32 3
  %40 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @__bitmap_subset(ptr noundef %41, ptr noundef %39, i32 noundef %38) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %90, label %44

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 6
  %46 = load i32, ptr %45, align 8
  %47 = udiv i32 %46, 1000
  %48 = udiv i32 %46, 5000
  %49 = and i32 %48, 65535
  %50 = tail call i32 @llvm.ctlz.i32(i32 %49, i1 false) #9, !range !12
  %51 = mul i32 %50, -268435456
  %52 = add i32 %51, 289407522
  %53 = load ptr, ptr %5, align 8
  %54 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 13, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %56, i32 0, i32 25
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr i8, ptr %53, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %52) #9, !srcloc !11
  %61 = load ptr, ptr %5, align 8
  %62 = load ptr, ptr %54, align 4
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %63, i32 0, i32 24
  %65 = load i16, ptr %64, align 2
  %66 = zext i16 %65 to i32
  %67 = getelementptr i8, ptr %61, i32 %66
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #9, !srcloc !10
  %69 = and i32 %68, -4
  %70 = or i32 %69, 2
  %71 = load ptr, ptr %5, align 8
  %72 = load ptr, ptr %54, align 4
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %73, i32 0, i32 24
  %75 = load i16, ptr %74, align 2
  %76 = zext i16 %75 to i32
  %77 = getelementptr i8, ptr %71, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %70) #9, !srcloc !11
  %78 = mul i32 %47, 2000
  %79 = udiv i32 %78, 1000
  %80 = trunc i32 %79 to i16
  %81 = add i16 %80, -1
  %82 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 16
  store i16 %81, ptr %82, align 8
  %83 = load ptr, ptr %5, align 8
  %84 = load ptr, ptr %54, align 4
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %85, i32 0, i32 8
  %87 = load i16, ptr %86, align 2
  %88 = zext i16 %87 to i32
  %89 = getelementptr i8, ptr %83, i32 %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 536870912) #9, !srcloc !11
  br label %130

90:                                               ; preds = %32
  %91 = getelementptr inbounds %struct.at91_adc_state, ptr %5, i32 0, i32 7
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.iio_trigger, ptr %92, i32 0, i32 4, i32 8
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds %struct.iio_dev, ptr %94, i32 0, i32 19
  %96 = load ptr, ptr %95, align 8
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.at91_adc_state, ptr %96, i32 0, i32 13, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %100, i32 0, i32 29
  %102 = load i16, ptr %101, align 2
  %103 = zext i16 %102 to i32
  %104 = getelementptr i8, ptr %97, i32 %103
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #9, !srcloc !10
  %106 = and i32 %105, -8
  %107 = getelementptr inbounds %struct.at91_adc_state, ptr %96, i32 0, i32 8
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.at91_adc_trigger, ptr %108, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = or i32 %110, %106
  %112 = load ptr, ptr %96, align 8
  %113 = load ptr, ptr %98, align 4
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.at91_adc_reg_layout, ptr %114, i32 0, i32 29
  %116 = load i16, ptr %115, align 2
  %117 = zext i16 %116 to i32
  %118 = getelementptr i8, ptr %112, i32 %117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %111) #9, !srcloc !11
  br label %130

119:                                              ; preds = %26, %18
  %120 = phi i32 [ %24, %26 ], [ %21, %18 ]
  %121 = load ptr, ptr %14, align 8
  %122 = tail call i32 @regulator_disable(ptr noundef %121) #9
  br label %123

123:                                              ; preds = %119, %13
  %124 = phi i32 [ %16, %13 ], [ %120, %119 ]
  %125 = load ptr, ptr %9, align 4
  %126 = tail call i32 @regulator_disable(ptr noundef %125) #9
  br label %127

127:                                              ; preds = %123, %8, %1
  %128 = phi i32 [ %6, %1 ], [ %11, %8 ], [ %124, %123 ]
  %129 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.75) #10
  br label %130

130:                                              ; preds = %127, %90, %44, %27
  %131 = phi i32 [ %128, %127 ], [ 0, %44 ], [ 0, %90 ], [ 0, %27 ]
  ret i32 %131
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!10 = !{i64 5052735}
!11 = !{i64 5052317}
!12 = !{i32 16, i32 33}
