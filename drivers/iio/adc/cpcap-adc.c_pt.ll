; ModuleID = '/llk/IR/drivers/iio/adc/cpcap-adc.c_pt.bc'
source_filename = "../drivers/iio/adc/cpcap-adc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpcap_adc_ato = type { i16, i16, i16, i16, i16, i16, i16, i16 }
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
%struct.lock_class_key = type {}
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.5 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpcap_adc_phasing_tbl = type { i16, i16, i16, i16, i16 }
%struct.cpcap_adc_conversion_tbl = type { i32, i32, i32, i32, i32, i32 }
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
%struct.cpcap_adc = type { ptr, ptr, i16, i32, %struct.mutex, ptr, %struct.wait_queue_head, i8 }
%struct.cpcap_adc_request = type { i32, ptr, ptr, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@cpcap_adc_id_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,cpcap-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,mapphone-cpcap-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mapphone_adc }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias170 = internal constant [25 x i8] c"alias=platform:cpcap_adc\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [29 x i8] c"description=CPCAP ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [39 x i8] c"author=Tony Lindgren <tony@atomide.com\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@mapphone_adc = internal constant %struct.cpcap_adc_ato { i16 1152, i16 0, i16 512, i16 0, i16 0, i16 0, i16 0, i16 0 }, align 2
@cpcap_adc_driver = internal global %struct.platform_driver { ptr @cpcap_adc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpcap_adc_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"cpcap_adc\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to allocate iio device\0A\00", align 1
@cpcap_adc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"&ddata->lock\00", align 1
@cpcap_adc_probe.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"&ddata->wq_data_avail\00", align 1
@cpcap_adc_channels = internal constant [18 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 3080, i32 0, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 3084, i32 1, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 2 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 3088, i32 2, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.11, i8 2 }, %struct.iio_chan_spec { i32 9, i32 3, i32 0, i32 3092, i32 3, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.12, i8 2 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 3096, i32 4, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 2 }, %struct.iio_chan_spec { i32 1, i32 5, i32 0, i32 3100, i32 5, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 2 }, %struct.iio_chan_spec { i32 1, i32 6, i32 0, i32 3104, i32 6, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.15, i8 2 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 3108, i32 7, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.16, i8 2 }, %struct.iio_chan_spec { i32 1, i32 8, i32 0, i32 3080, i32 8, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.17, i8 2 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 3084, i32 9, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.18, i8 2 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 3088, i32 10, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.19, i8 2 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 3092, i32 11, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.20, i8 2 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 3096, i32 12, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.21, i8 2 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 3100, i32 13, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.22, i8 2 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 3104, i32 14, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.23, i8 2 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 3108, i32 15, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 2 }, %struct.iio_chan_spec { i32 0, i32 16, i32 0, i32 3080, i32 16, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.25, i8 2 }, %struct.iio_chan_spec { i32 1, i32 17, i32 0, i32 3084, i32 17, %struct.anon.5 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.26, i8 2 }], align 4
@cpcap_adc_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @cpcap_adc_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"adcdone\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"cpcap-adc\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"could not get irq: %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"CPCAP ADC device probed\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"battdetb\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"battp\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ad3\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ad4\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"chg_isense\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"batti\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"usb_id\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"ad8\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ad9\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"licell\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"hv_battp\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"tsx1_ad12\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"tsx2_ad13\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"tsy1_ad14\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"tsy2_ad15\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"chg_vsense\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"batti2\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"error reading ADC: %i\0A\00", align 1
@bank_phasing = internal constant [16 x %struct.cpcap_adc_phasing_tbl] [%struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 -512, i16 511 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 -512, i16 511 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }], align 2
@bank_conversion = internal global [16 x %struct.cpcap_adc_conversion_tbl] [%struct.cpcap_adc_conversion_tbl { i32 1, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 1, i32 0, i32 2400, i32 0, i32 2300, i32 1023 }, %struct.cpcap_adc_conversion_tbl { i32 1, i32 0, i32 0, i32 0, i32 10000, i32 1023 }, %struct.cpcap_adc_conversion_tbl { i32 1, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 1, i32 0, i32 2400, i32 0, i32 2300, i32 1023 }, %struct.cpcap_adc_conversion_tbl { i32 1, i32 -512, i32 2, i32 0, i32 5000, i32 1023 }, %struct.cpcap_adc_conversion_tbl { i32 1, i32 -512, i32 2, i32 0, i32 5000, i32 1023 }, %struct.cpcap_adc_conversion_tbl { i32 0, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 0, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 0, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 1, i32 0, i32 0, i32 0, i32 3400, i32 1023 }, %struct.cpcap_adc_conversion_tbl { i32 0, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 0, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 0, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 0, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 0, i32 0, i32 0, i32 0, i32 1, i32 1 }], align 4
@temp_map = internal unnamed_addr constant [27 x [2 x i32]] [[2 x i32] [i32 1023, i32 -40000], [2 x i32] [i32 1023, i32 -35000], [2 x i32] [i32 1007, i32 -30000], [2 x i32] [i32 946, i32 -25000], [2 x i32] [i32 876, i32 -20000], [2 x i32] [i32 800, i32 -15000], [2 x i32] [i32 720, i32 -10000], [2 x i32] [i32 639, i32 -5000], [2 x i32] [i32 559, i32 0], [2 x i32] [i32 484, i32 5000], [2 x i32] [i32 415, i32 10000], [2 x i32] [i32 353, i32 15000], [2 x i32] [i32 299, i32 20000], [2 x i32] [i32 252, i32 25000], [2 x i32] [i32 212, i32 30000], [2 x i32] [i32 178, i32 35000], [2 x i32] [i32 149, i32 40000], [2 x i32] [i32 125, i32 45000], [2 x i32] [i32 105, i32 50000], [2 x i32] [i32 89, i32 55000], [2 x i32] [i32 75, i32 60000], [2 x i32] [i32 63, i32 65000], [2 x i32] [i32 54, i32 70000], [2 x i32] [i32 46, i32 75000], [2 x i32] [i32 39, i32 80000], [2 x i32] [i32 34, i32 85000], [2 x i32] [i32 29, i32 90000]], align 4
@.str.28 = private unnamed_addr constant [23 x i8] c"Could not read vendor\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.29 = private unnamed_addr constant [45 x i8] c"Timeout waiting for calibration to complete\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias170, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_license173], section "llvm.metadata"
@switch.table.cpcap_adc_read = private unnamed_addr constant [18 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 1, i32 6], align 4

@__mod_of__cpcap_adc_id_table_device_table = dso_local alias [3 x %struct.of_device_id], ptr @cpcap_adc_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpcap_adc_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpcap_adc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_adc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @devm_iio_device_alloc(ptr noundef %3, i32 noundef 56) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %59

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 19
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @device_get_match_data(ptr noundef %3) #6
  %11 = getelementptr inbounds %struct.cpcap_adc, ptr %9, i32 0, i32 5
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %59, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.cpcap_adc, ptr %9, i32 0, i32 1
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.cpcap_adc, ptr %9, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.2, ptr noundef nonnull @cpcap_adc_probe.__key) #6
  %16 = getelementptr inbounds %struct.cpcap_adc, ptr %9, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %16, ptr noundef nonnull @.str.4, ptr noundef nonnull @cpcap_adc_probe.__key.3) #6
  store i32 5, ptr %4, align 8
  %17 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 13
  store ptr @cpcap_adc_channels, ptr %17, align 8
  %18 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 14
  store i32 18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load ptr, ptr %3, align 4
  br label %24

24:                                               ; preds = %22, %13
  %25 = phi ptr [ %23, %22 ], [ %20, %13 ]
  %26 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 15
  store ptr %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 17
  store ptr @cpcap_adc_info, ptr %27, align 8
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call ptr @dev_get_regmap(ptr noundef %29, ptr noundef null) #6
  store ptr %30, ptr %9, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %59, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %34 = call i32 @regmap_read(ptr noundef nonnull %30, i32 noundef 72, ptr noundef nonnull %2) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.28) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %59

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.cpcap_adc, ptr %9, i32 0, i32 2
  %39 = load i32, ptr %2, align 4
  %40 = trunc i32 %39 to i16
  %41 = lshr i16 %40, 6
  %42 = and i16 %41, 7
  store i16 %42, ptr %38, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %43, align 8
  %44 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.5) #6
  %45 = getelementptr inbounds %struct.cpcap_adc, ptr %9, i32 0, i32 3
  store i32 %44, ptr %45, align 4
  %46 = icmp slt i32 %44, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %37
  %48 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %44, ptr noundef null, ptr noundef nonnull @cpcap_adc_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %48) #7
  br label %59

51:                                               ; preds = %47
  %52 = call fastcc i32 @cpcap_adc_calibrate_one(ptr noundef %9, i32 noundef 5, i16 noundef zeroext 3112) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = call fastcc i32 @cpcap_adc_calibrate_one(ptr noundef %9, i32 noundef 6, i16 noundef zeroext 3116) #6
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.8) #7
  %58 = call i32 @__devm_iio_device_register(ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull @__this_module) #6
  br label %59

59:                                               ; preds = %57, %54, %51, %50, %37, %36, %24, %7, %6
  %60 = phi i32 [ %48, %50 ], [ %58, %57 ], [ -12, %6 ], [ -19, %7 ], [ -19, %24 ], [ %34, %36 ], [ -19, %37 ], [ %55, %54 ], [ %52, %51 ]
  ret i32 %60
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_adc_irq_thread(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 3076, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cpcap_adc, ptr %4, i32 0, i32 7
  store i8 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.cpcap_adc, ptr %4, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %10, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ 1, %8 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_adc_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpcap_adc_request, align 4
  %8 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  %10 = getelementptr inbounds i8, ptr %7, i32 16
  store i64 0, ptr %10, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %7, align 4
  %13 = getelementptr inbounds %struct.cpcap_adc_request, ptr %7, i32 0, i32 1
  store ptr @bank_phasing, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cpcap_adc_request, ptr %7, i32 0, i32 2
  store ptr @bank_conversion, ptr %14, align 4
  %15 = icmp ult i32 %12, 18
  br i1 %15, label %16, label %235

16:                                               ; preds = %5
  %17 = getelementptr inbounds [18 x i32], ptr @switch.table.cpcap_adc_read, i32 0, i32 %12
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cpcap_adc_request, ptr %7, i32 0, i32 3
  store i32 %18, ptr %19, align 4
  switch i32 %4, label %235 [
    i32 0, label %20
    i32 1, label %39
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cpcap_adc, ptr %9, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %21) #6
  %22 = call fastcc i32 @cpcap_adc_start_bank(ptr noundef %9, ptr noundef nonnull %7)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %230

24:                                               ; preds = %20
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @regmap_read(ptr noundef %25, i32 noundef %27, ptr noundef %2) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %230

30:                                               ; preds = %24
  %31 = load ptr, ptr %9, align 4
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 3072, i32 noundef 65535, i32 noundef 36868, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %230

34:                                               ; preds = %30
  %35 = load ptr, ptr %9, align 4
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 3076, i32 noundef 65535, i32 noundef 310, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %230

38:                                               ; preds = %34
  tail call void @mutex_unlock(ptr noundef %21) #6
  br label %235

39:                                               ; preds = %16
  %40 = getelementptr inbounds %struct.cpcap_adc, ptr %9, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %40) #6
  %41 = call fastcc i32 @cpcap_adc_start_bank(ptr noundef %9, ptr noundef nonnull %7)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %230

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.cpcap_adc, ptr %9, i32 0, i32 2
  %45 = load i16, ptr %44, align 4
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load i32, ptr %11, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !8
  br label %81

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.cpcap_adc_request, ptr %7, i32 0, i32 5
  %55 = load ptr, ptr %9, align 4
  %56 = call i32 @regmap_read(ptr noundef %55, i32 noundef %53, ptr noundef %54) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %230

58:                                               ; preds = %51
  %59 = load i32, ptr %54, align 4
  %60 = mul i32 %59, 114
  %61 = add i32 %60, -7148
  store i32 %61, ptr %54, align 4
  br label %219

62:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !8
  %63 = icmp eq i16 %45, 1
  br i1 %63, label %64, label %81

64:                                               ; preds = %62
  %65 = load ptr, ptr %9, align 4
  %66 = call i32 @regmap_read(ptr noundef %65, i32 noundef 3112, ptr noundef nonnull %6) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %217

68:                                               ; preds = %64
  %69 = load i32, ptr %6, align 4
  %70 = shl i32 %69, 16
  %71 = ashr exact i32 %70, 16
  %72 = sub nsw i32 512, %71
  store i32 %72, ptr getelementptr inbounds ([16 x %struct.cpcap_adc_conversion_tbl], ptr @bank_conversion, i32 0, i32 5, i32 3), align 4
  %73 = load ptr, ptr %9, align 4
  %74 = call i32 @regmap_read(ptr noundef %73, i32 noundef 3116, ptr noundef nonnull %6) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %217

76:                                               ; preds = %68
  %77 = load i32, ptr %6, align 4
  %78 = shl i32 %77, 16
  %79 = ashr exact i32 %78, 16
  %80 = sub nsw i32 512, %79
  store i32 %80, ptr getelementptr inbounds ([16 x %struct.cpcap_adc_conversion_tbl], ptr @bank_conversion, i32 0, i32 6, i32 3), align 4
  br label %81

81:                                               ; preds = %76, %62, %50
  %82 = load i32, ptr %19, align 4
  %83 = shl i32 %82, 2
  %84 = add i32 %83, 3080
  %85 = load ptr, ptr %9, align 4
  %86 = getelementptr inbounds %struct.cpcap_adc_request, ptr %7, i32 0, i32 5
  %87 = call i32 @regmap_read(ptr noundef %85, i32 noundef %84, ptr noundef %86) #6
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %217

89:                                               ; preds = %81
  %90 = load i32, ptr %86, align 4
  %91 = and i32 %90, 1023
  store i32 %91, ptr %86, align 4
  %92 = load ptr, ptr %14, align 4
  %93 = load ptr, ptr %13, align 4
  %94 = load i32, ptr %7, align 4
  switch i32 %94, label %115 [
    i32 1, label %95
    i32 16, label %95
    i32 17, label %113
  ]

95:                                               ; preds = %89, %89
  %96 = load i32, ptr %19, align 4
  %97 = getelementptr %struct.cpcap_adc_phasing_tbl, ptr %93, i32 %96
  %98 = load i16, ptr %97, align 2
  %99 = sext i16 %98 to i32
  %100 = sub nsw i32 %91, %99
  %101 = add nsw i32 %100, -801
  store i32 %101, ptr %86, align 4
  %102 = getelementptr %struct.cpcap_adc_phasing_tbl, ptr %93, i32 %96, i32 1
  %103 = load i16, ptr %102, align 2
  %104 = zext i16 %103 to i32
  %105 = mul i32 %101, %104
  store i32 %105, ptr %86, align 4
  %106 = getelementptr %struct.cpcap_adc_phasing_tbl, ptr %93, i32 %96, i32 2
  %107 = load i16, ptr %106, align 2
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %151, label %109

109:                                              ; preds = %95
  %110 = zext i16 %107 to i32
  %111 = sdiv i32 %105, %110
  %112 = add i32 %111, 801
  br label %137

113:                                              ; preds = %89
  %114 = load i32, ptr %19, align 4
  br label %115

115:                                              ; preds = %113, %89
  %116 = phi i32 [ %94, %89 ], [ %114, %113 ]
  %117 = getelementptr %struct.cpcap_adc_conversion_tbl, ptr %92, i32 %116, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, %91
  store i32 %119, ptr %86, align 4
  %120 = getelementptr %struct.cpcap_adc_conversion_tbl, ptr %92, i32 %116, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, %119
  store i32 %122, ptr %86, align 4
  %123 = getelementptr %struct.cpcap_adc_phasing_tbl, ptr %93, i32 %116, i32 1
  %124 = load i16, ptr %123, align 2
  %125 = zext i16 %124 to i32
  %126 = mul i32 %122, %125
  store i32 %126, ptr %86, align 4
  %127 = getelementptr %struct.cpcap_adc_phasing_tbl, ptr %93, i32 %116, i32 2
  %128 = load i16, ptr %127, align 2
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %151, label %130

130:                                              ; preds = %115
  %131 = zext i16 %128 to i32
  %132 = getelementptr %struct.cpcap_adc_phasing_tbl, ptr %93, i32 %116
  %133 = sdiv i32 %126, %131
  store i32 %133, ptr %86, align 4
  %134 = load i16, ptr %132, align 2
  %135 = sext i16 %134 to i32
  %136 = add i32 %133, %135
  br label %137

137:                                              ; preds = %130, %109
  %138 = phi i32 [ %136, %130 ], [ %112, %109 ]
  %139 = phi i32 [ %116, %130 ], [ %96, %109 ]
  store i32 %138, ptr %86, align 4
  %140 = getelementptr %struct.cpcap_adc_phasing_tbl, ptr %93, i32 %139, i32 3
  %141 = load i16, ptr %140, align 2
  %142 = sext i16 %141 to i32
  %143 = icmp slt i32 %138, %142
  br i1 %143, label %149, label %144

144:                                              ; preds = %137
  %145 = getelementptr %struct.cpcap_adc_phasing_tbl, ptr %93, i32 %139, i32 4
  %146 = load i16, ptr %145, align 2
  %147 = sext i16 %146 to i32
  %148 = icmp sgt i32 %138, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %144, %137
  %150 = phi i32 [ %142, %137 ], [ %147, %144 ]
  store i32 %150, ptr %86, align 4
  br label %151

151:                                              ; preds = %149, %144, %115, %95
  %152 = phi i32 [ %105, %95 ], [ %126, %115 ], [ %138, %144 ], [ %150, %149 ]
  switch i32 %94, label %155 [
    i32 16, label %153
    i32 17, label %154
  ]

153:                                              ; preds = %151
  br label %155

154:                                              ; preds = %151
  br label %155

155:                                              ; preds = %154, %153, %151
  %156 = phi i32 [ %94, %151 ], [ 6, %154 ], [ 1, %153 ]
  %157 = getelementptr %struct.cpcap_adc_conversion_tbl, ptr %92, i32 %156
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %216, label %160

160:                                              ; preds = %155
  switch i32 %94, label %202 [
    i32 0, label %161
    i32 3, label %161
  ]

161:                                              ; preds = %160, %160
  %162 = trunc i32 %152 to i16
  %163 = and i32 %152, 65535
  %164 = icmp ult i16 %162, 30
  br i1 %164, label %214, label %165

165:                                              ; preds = %161
  %166 = icmp ugt i16 %162, 1022
  br i1 %166, label %214, label %167

167:                                              ; preds = %200, %165
  %168 = phi i32 [ %172, %200 ], [ 0, %165 ]
  %169 = getelementptr [27 x [2 x i32]], ptr @temp_map, i32 0, i32 %168
  %170 = load i32, ptr %169, align 4
  %171 = icmp sgt i32 %163, %170
  %172 = add nuw nsw i32 %168, 1
  br i1 %171, label %200, label %173

173:                                              ; preds = %167
  %174 = getelementptr [27 x [2 x i32]], ptr @temp_map, i32 0, i32 %172
  %175 = load i32, ptr %174, align 4
  %176 = icmp sgt i32 %175, %163
  br i1 %176, label %200, label %177

177:                                              ; preds = %173
  %178 = icmp eq i32 %163, %170
  br i1 %178, label %179, label %182

179:                                              ; preds = %177
  %180 = getelementptr [27 x [2 x i32]], ptr @temp_map, i32 0, i32 %168, i32 1
  %181 = load i32, ptr %180, align 4
  br label %214

182:                                              ; preds = %177
  %183 = icmp eq i32 %175, %163
  br i1 %183, label %184, label %187

184:                                              ; preds = %182
  %185 = getelementptr [27 x [2 x i32]], ptr @temp_map, i32 0, i32 %172, i32 1
  %186 = load i32, ptr %185, align 4
  br label %214

187:                                              ; preds = %182
  %188 = sub i32 %163, %170
  %189 = mul i32 %188, 1000
  %190 = sub i32 %175, %170
  %191 = sdiv i32 %189, %190
  %192 = getelementptr [27 x [2 x i32]], ptr @temp_map, i32 0, i32 %168, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr [27 x [2 x i32]], ptr @temp_map, i32 0, i32 %172, i32 1
  %195 = load i32, ptr %194, align 4
  %196 = sub i32 %195, %193
  %197 = mul i32 %196, %191
  %198 = sdiv i32 %197, 1000
  %199 = add i32 %198, %193
  br label %214

200:                                              ; preds = %173, %167
  %201 = icmp eq i32 %172, 26
  br i1 %201, label %214, label %167

202:                                              ; preds = %160
  %203 = getelementptr %struct.cpcap_adc_conversion_tbl, ptr %92, i32 %156, i32 4
  %204 = load i32, ptr %203, align 4
  %205 = mul i32 %204, %152
  store i32 %205, ptr %86, align 4
  %206 = getelementptr %struct.cpcap_adc_conversion_tbl, ptr %92, i32 %156, i32 5
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %216, label %209

209:                                              ; preds = %202
  %210 = sdiv i32 %205, %207
  store i32 %210, ptr %86, align 4
  %211 = getelementptr %struct.cpcap_adc_conversion_tbl, ptr %92, i32 %156, i32 2
  %212 = load i32, ptr %211, align 4
  %213 = add i32 %212, %210
  br label %214

214:                                              ; preds = %209, %200, %187, %184, %179, %165, %161
  %215 = phi i32 [ %213, %209 ], [ 90000, %161 ], [ -40000, %165 ], [ %181, %179 ], [ %186, %184 ], [ %199, %187 ], [ 0, %200 ]
  store i32 %215, ptr %86, align 4
  br label %216

216:                                              ; preds = %214, %202, %155
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %219

217:                                              ; preds = %81, %68, %64
  %218 = phi i32 [ %66, %64 ], [ %74, %68 ], [ %87, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %230

219:                                              ; preds = %216, %58
  %220 = load ptr, ptr %9, align 4
  %221 = call i32 @regmap_update_bits_base(ptr noundef %220, i32 noundef 3072, i32 noundef 65535, i32 noundef 36868, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %219
  %224 = load ptr, ptr %9, align 4
  %225 = call i32 @regmap_update_bits_base(ptr noundef %224, i32 noundef 3076, i32 noundef 65535, i32 noundef 310, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  call void @mutex_unlock(ptr noundef %40) #6
  %228 = getelementptr inbounds %struct.cpcap_adc_request, ptr %7, i32 0, i32 5
  %229 = load i32, ptr %228, align 4
  store i32 %229, ptr %2, align 4
  br label %235

230:                                              ; preds = %223, %219, %217, %51, %39, %34, %30, %24, %20
  %231 = phi i32 [ %41, %39 ], [ %225, %223 ], [ %218, %217 ], [ %22, %20 ], [ %28, %24 ], [ %36, %34 ], [ %56, %51 ], [ %32, %30 ], [ %221, %219 ]
  %232 = getelementptr inbounds %struct.cpcap_adc, ptr %9, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %232) #6
  %233 = getelementptr inbounds %struct.cpcap_adc, ptr %9, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.27, i32 noundef %231) #7
  br label %235

235:                                              ; preds = %230, %227, %38, %16, %5
  %236 = phi i32 [ %231, %230 ], [ -22, %16 ], [ 1, %227 ], [ 1, %38 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  ret i32 %236
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_adc_start_bank(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.cpcap_adc_request, ptr %1, i32 0, i32 4
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.cpcap_adc, ptr %0, i32 0, i32 7
  store i8 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.cpcap_adc, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds %struct.cpcap_adc, ptr %0, i32 0, i32 6
  br label %11

8:                                                ; preds = %108
  %9 = add nuw nsw i32 %12, 1
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %110, label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ 0, %2 ], [ %9, %8 ]
  %13 = load ptr, ptr %6, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %81, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %1, align 4
  switch i32 %16, label %24 [
    i32 0, label %17
    i32 8, label %22
    i32 9, label %22
    i32 10, label %22
    i32 11, label %22
    i32 12, label %22
    i32 13, label %22
    i32 14, label %22
    i32 15, label %22
    i32 16, label %23
    i32 17, label %23
  ]

17:                                               ; preds = %15
  %18 = load ptr, ptr %0, align 4
  %19 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 3076, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %81

21:                                               ; preds = %17
  call void @usleep_range_state(i32 noundef 800, i32 noundef 1000, i32 noundef 2) #6
  br label %24

22:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15
  br label %24

23:                                               ; preds = %15, %15
  br label %24

24:                                               ; preds = %23, %22, %21, %15
  %25 = phi i16 [ 0, %15 ], [ 4, %23 ], [ 8, %22 ], [ 0, %21 ]
  %26 = phi i16 [ 0, %15 ], [ 0, %23 ], [ 0, %22 ], [ 64, %21 ]
  %27 = load i32, ptr %4, align 4
  switch i32 %27, label %53 [
    i32 1, label %28
    i32 2, label %36
  ]

28:                                               ; preds = %24
  %29 = load i16, ptr %13, align 2
  %30 = or i16 %29, %25
  %31 = getelementptr inbounds %struct.cpcap_adc_ato, ptr %13, i32 0, i32 1
  %32 = load i16, ptr %31, align 2
  %33 = or i16 %30, %32
  %34 = getelementptr inbounds %struct.cpcap_adc_ato, ptr %13, i32 0, i32 2
  %35 = getelementptr inbounds %struct.cpcap_adc_ato, ptr %13, i32 0, i32 3
  br label %45

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.cpcap_adc_ato, ptr %13, i32 0, i32 4
  %38 = load i16, ptr %37, align 2
  %39 = or i16 %38, %25
  %40 = getelementptr inbounds %struct.cpcap_adc_ato, ptr %13, i32 0, i32 5
  %41 = load i16, ptr %40, align 2
  %42 = or i16 %39, %41
  %43 = getelementptr inbounds %struct.cpcap_adc_ato, ptr %13, i32 0, i32 6
  %44 = getelementptr inbounds %struct.cpcap_adc_ato, ptr %13, i32 0, i32 7
  br label %45

45:                                               ; preds = %36, %28
  %46 = phi ptr [ %44, %36 ], [ %35, %28 ]
  %47 = phi ptr [ %43, %36 ], [ %34, %28 ]
  %48 = phi i16 [ %42, %36 ], [ %33, %28 ]
  %49 = load i16, ptr %47, align 2
  %50 = or i16 %49, %26
  %51 = load i16, ptr %46, align 2
  %52 = or i16 %50, %51
  br label %53

53:                                               ; preds = %45, %24
  %54 = phi i16 [ %25, %24 ], [ %48, %45 ]
  %55 = phi i16 [ %26, %24 ], [ %52, %45 ]
  %56 = load ptr, ptr %0, align 4
  %57 = zext i16 %54 to i32
  %58 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 3072, i32 noundef 20478, i32 noundef %57, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %53
  %61 = load ptr, ptr %0, align 4
  %62 = zext i16 %55 to i32
  %63 = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 3076, i32 noundef 3648, i32 noundef %62, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = load i32, ptr %4, align 4
  %67 = icmp eq i32 %66, 0
  %68 = load ptr, ptr %0, align 4
  br i1 %67, label %69, label %75

69:                                               ; preds = %65
  %70 = call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 3076, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load ptr, ptr %0, align 4
  %74 = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 3076, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %81

75:                                               ; preds = %65
  %76 = call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 3076, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load ptr, ptr %0, align 4
  %80 = call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 3076, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %81

81:                                               ; preds = %78, %75, %72, %69, %60, %53, %17, %11
  %82 = load i8, ptr %5, align 4, !range !9
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #6
  %85 = call i32 @prepare_to_wait_event(ptr noundef %7, ptr noundef nonnull %3, i32 noundef 1) #6
  %86 = load i8, ptr %5, align 4, !range !9
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %92, %84
  %89 = phi i32 [ %100, %92 ], [ 5, %84 ]
  %90 = phi i32 [ %94, %92 ], [ %85, %84 ]
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = call i32 @schedule_timeout(i32 noundef %89) #6
  %94 = call i32 @prepare_to_wait_event(ptr noundef %7, ptr noundef nonnull %3, i32 noundef 1) #6
  %95 = load i8, ptr %5, align 4, !range !9
  %96 = icmp ne i8 %95, 0
  %97 = xor i1 %96, true
  %98 = icmp ne i32 %93, 0
  %99 = select i1 %97, i1 true, i1 %98
  %100 = select i1 %99, i32 %93, i32 1
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %96, i1 true, i1 %101
  br i1 %102, label %103, label %88

103:                                              ; preds = %92, %84
  %104 = phi i32 [ 5, %84 ], [ %100, %92 ]
  call void @finish_wait(ptr noundef %7, ptr noundef nonnull %3) #6
  br label %105

105:                                              ; preds = %103, %88
  %106 = phi i32 [ %104, %103 ], [ %90, %88 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = icmp eq i32 %106, 0
  br i1 %109, label %8, label %110

110:                                              ; preds = %108, %105, %81, %8
  %111 = phi i32 [ 0, %105 ], [ %106, %108 ], [ -110, %8 ], [ 0, %81 ]
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_adc_calibrate_one(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %6 = zext i16 %2 to i32
  %7 = getelementptr inbounds %struct.cpcap_adc, ptr %0, i32 0, i32 2
  br label %8

8:                                                ; preds = %38, %3
  %9 = phi i32 [ 0, %3 ], [ %39, %38 ]
  store i32 0, ptr %4, align 8
  store i32 0, ptr %5, align 4
  call fastcc void @cpcap_adc_setup_calibrate(ptr noundef %0, i32 noundef %1)
  %10 = load ptr, ptr %0, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef %6, ptr noundef nonnull %4) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %8
  call fastcc void @cpcap_adc_setup_calibrate(ptr noundef %0, i32 noundef %1)
  %14 = load ptr, ptr %0, align 4
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef %6, ptr noundef %5) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = load i32, ptr %5, align 4
  %19 = icmp ugt i32 %18, 493
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, ptr %4, align 8
  %22 = icmp ugt i32 %21, %18
  %23 = sub i32 %21, %18
  %24 = sub i32 %18, %21
  %25 = select i1 %22, i32 %23, i32 %24
  %26 = icmp ult i32 %18, 531
  %27 = and i32 %25, 65532
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %33, label %30

30:                                               ; preds = %20, %17
  %31 = load i16, ptr %7, align 4
  %32 = icmp eq i16 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %30, %20
  %34 = shl i32 %18, 16
  %35 = ashr exact i32 %34, 16
  %36 = sub nsw i32 512, %35
  %37 = getelementptr [16 x %struct.cpcap_adc_conversion_tbl], ptr @bank_conversion, i32 0, i32 %1, i32 3
  store i32 %36, ptr %37, align 4
  br label %41

38:                                               ; preds = %30
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #6
  %39 = add nuw nsw i32 %9, 1
  %40 = icmp eq i32 %39, 5
  br i1 %40, label %41, label %8

41:                                               ; preds = %38, %33, %13, %8
  %42 = phi i32 [ 0, %33 ], [ 0, %38 ], [ %15, %13 ], [ %11, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpcap_adc_setup_calibrate(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = add i32 %1, -7
  %6 = icmp ult i32 %5, -2
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = shl nuw nsw i32 %1, 4
  %9 = and i32 %8, 112
  %10 = or i32 %9, 16386
  store i32 %10, ptr %3, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 3072, i32 noundef 20478, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %7
  %15 = load ptr, ptr %0, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 3076, i32 noundef 3584, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 4
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 3076, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 4
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 3076, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = sub i32 -300, %4
  br label %28

28:                                               ; preds = %37, %26
  %29 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  %30 = load ptr, ptr %0, align 4
  %31 = call i32 @regmap_read(ptr noundef %30, i32 noundef 3076, ptr noundef nonnull %3) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i32, ptr %3, align 4
  %35 = and i32 %34, 4096
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = add i32 %27, %38
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %28, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.cpcap_adc, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.29) #7
  br label %44

44:                                               ; preds = %41, %33
  %45 = load ptr, ptr %0, align 4
  %46 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 3072, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %47

47:                                               ; preds = %44, %28, %22, %18, %14, %7, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{i8 0, i8 2}
