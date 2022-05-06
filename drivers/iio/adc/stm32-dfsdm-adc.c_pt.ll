; ModuleID = '/llk/IR/drivers/iio/adc/stm32-dfsdm-adc.c_pt.bc'
source_filename = "../drivers/iio/adc/stm32-dfsdm-adc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stm32_dfsdm_get_buff_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22stm32_dfsdm_get_buff_cb\22\09\09\09\09\09"
module asm "__kstrtabns_stm32_dfsdm_get_buff_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stm32_dfsdm_release_buff_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22stm32_dfsdm_release_buff_cb\22\09\09\09\09\09"
module asm "__kstrtabns_stm32_dfsdm_release_buff_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stm32_dfsdm_trig_info = type { ptr, i32 }
%struct.stm32_dfsdm_dev_data = type { i32, ptr, i32, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.stm32_dfsdm_str2field = type { ptr, i32 }
%struct.lock_class_key = type {}
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.stm32_dfsdm_adc = type { ptr, ptr, i32, i32, i32, i32, ptr, %struct.completion, ptr, i32, i32, ptr, ptr, ptr, i32, i32, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.stm32_dfsdm = type { ptr, i32, ptr, ptr, i32, ptr, i32, i32 }
%struct.stm32_dfsdm_filter = type { i32, [2 x %struct.stm32_dfsdm_filter_osr], i32, i32 }
%struct.stm32_dfsdm_filter_osr = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.64 = type { i8, i8, i8, i8, i8, i32 }
%struct.stm32_dfsdm_channel = type { i32, i32, i32, i32 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }

@__kstrtab_stm32_dfsdm_get_buff_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_stm32_dfsdm_get_buff_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_stm32_dfsdm_get_buff_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stm32_dfsdm_get_buff_cb to i32), ptr @__kstrtab_stm32_dfsdm_get_buff_cb, ptr @__kstrtabns_stm32_dfsdm_get_buff_cb }, section "___ksymtab_gpl+stm32_dfsdm_get_buff_cb", align 4
@__kstrtab_stm32_dfsdm_release_buff_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_stm32_dfsdm_release_buff_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_stm32_dfsdm_release_buff_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stm32_dfsdm_release_buff_cb to i32), ptr @__kstrtab_stm32_dfsdm_release_buff_cb, ptr @__kstrtabns_stm32_dfsdm_release_buff_cb }, section "___ksymtab_gpl+stm32_dfsdm_release_buff_cb", align 4
@__UNIQUE_ID_description349 = internal constant [34 x i8] c"description=STM32 sigma delta ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_author350 = internal constant [50 x i8] c"author=Arnaud Pouliquen <arnaud.pouliquen@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stm32_dfsdm_adc_driver = internal global %struct.platform_driver { ptr @stm32_dfsdm_adc_probe, ptr @stm32_dfsdm_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dfsdm_adc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dfsdm_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [16 x i8] c"stm32-dfsdm-adc\00", align 1
@stm32_dfsdm_adc_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dfsdm-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_dfsdm_adc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dfsdm-dmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_dfsdm_audio_data }, %struct.of_device_id zeroinitializer], align 4
@stm32_dfsdm_adc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_dfsdm_adc_suspend, ptr @stm32_dfsdm_adc_resume, ptr @stm32_dfsdm_adc_suspend, ptr @stm32_dfsdm_adc_resume, ptr @stm32_dfsdm_adc_suspend, ptr @stm32_dfsdm_adc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: Failed to allocate IIO\0A\00", align 1
@__func__.stm32_dfsdm_adc_probe = private unnamed_addr constant [22 x i8] c"stm32_dfsdm_adc_probe\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Missing or bad reg property\0A\00", align 1
@stm32_dfsdm_info_audio = internal constant %struct.iio_info { ptr null, ptr null, ptr @stm32_dfsdm_read_raw, ptr null, ptr null, ptr @stm32_dfsdm_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dfsdm_update_scan_mode, ptr null, ptr null, ptr @stm32_dfsdm_set_watermark, ptr null }, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"dfsdm-pdm%d\00", align 1
@stm32_dfsdm_info_adc = internal constant %struct.iio_info { ptr null, ptr null, ptr @stm32_dfsdm_read_raw, ptr null, ptr null, ptr @stm32_dfsdm_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dfsdm_validate_trigger, ptr @stm32_dfsdm_update_scan_mode, ptr null, ptr null, ptr @stm32_dfsdm_set_watermark, ptr null }, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"dfsdm-adc%d\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed to request IRQ\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"st,filter-order\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Failed to set filter order\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"st,filter0-sync\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Failed to find an audio DAI\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"%s: IIO enable failed (channel %d)\0A\00", align 1
@__func__.stm32_dfsdm_read_raw = private unnamed_addr constant [21 x i8] c"stm32_dfsdm_read_raw\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"%s: Conversion failed (channel %d)\0A\00", align 1
@stm32_dfsdm_trigs = internal unnamed_addr constant [13 x %struct.stm32_dfsdm_trig_info] [%struct.stm32_dfsdm_trig_info { ptr @.str.13, i32 0 }, %struct.stm32_dfsdm_trig_info { ptr @.str.14, i32 1 }, %struct.stm32_dfsdm_trig_info { ptr @.str.15, i32 2 }, %struct.stm32_dfsdm_trig_info { ptr @.str.16, i32 3 }, %struct.stm32_dfsdm_trig_info { ptr @.str.17, i32 4 }, %struct.stm32_dfsdm_trig_info { ptr @.str.18, i32 5 }, %struct.stm32_dfsdm_trig_info { ptr @.str.19, i32 6 }, %struct.stm32_dfsdm_trig_info { ptr @.str.20, i32 7 }, %struct.stm32_dfsdm_trig_info { ptr @.str.21, i32 8 }, %struct.stm32_dfsdm_trig_info { ptr @.str.22, i32 26 }, %struct.stm32_dfsdm_trig_info { ptr @.str.23, i32 27 }, %struct.stm32_dfsdm_trig_info { ptr @.str.24, i32 28 }, %struct.stm32_dfsdm_trig_info zeroinitializer], align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"tim1_trgo\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"tim1_trgo2\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"tim8_trgo\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"tim8_trgo2\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"tim3_trgo\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"tim4_trgo\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"tim16_oc1\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"tim6_trgo\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"tim7_trgo\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"lptim1_out\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"lptim2_out\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"lptim3_out\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"Filter parameters not found: errors %d/%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Overrun detected\0A\00", align 1
@stm32h7_dfsdm_adc_data = internal constant %struct.stm32_dfsdm_dev_data { i32 1, ptr @stm32_dfsdm_adc_init, i32 0, ptr null }, align 4
@stm32h7_dfsdm_audio_data = internal constant %struct.stm32_dfsdm_dev_data { i32 0, ptr @stm32_dfsdm_audio_init, i32 0, ptr null }, align 4
@.str.27 = private unnamed_addr constant [16 x i8] c"st,adc-channels\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"Bad st,adc-channels\0A\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"Channels init failed\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"DMA channel request failed with\0A\00", align 1
@stm32_dfsdm_buffer_setup_ops = internal constant %struct.iio_buffer_setup_ops { ptr null, ptr @stm32_dfsdm_postenable, ptr @stm32_dfsdm_predisable, ptr null, ptr null }, align 4
@.str.31 = private unnamed_addr constant [21 x i8] c"buffer setup failed\0A\00", align 1
@dfsdm_adc_audio_ext_info = internal constant [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.47, i32 1, ptr @dfsdm_adc_audio_get_spiclk, ptr @dfsdm_adc_audio_set_spiclk, i32 0 }, %struct.iio_chan_spec_ext_info zeroinitializer], align 4
@.str.32 = private unnamed_addr constant [45 x i8] c" Error parsing 'st,adc-channels' for idx %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c" Error bad channel number %d (max = %d)\0A\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"st,adc-channel-names\00", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c" Error parsing 'st,adc-channel-names' for idx %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"st,adc-channel-types\00", align 1
@stm32_dfsdm_chan_type = internal unnamed_addr constant [5 x %struct.stm32_dfsdm_str2field] [%struct.stm32_dfsdm_str2field { ptr @.str.39, i32 0 }, %struct.stm32_dfsdm_str2field { ptr @.str.40, i32 1 }, %struct.stm32_dfsdm_str2field { ptr @.str.41, i32 2 }, %struct.stm32_dfsdm_str2field { ptr @.str.42, i32 3 }, %struct.stm32_dfsdm_str2field zeroinitializer], align 4
@.str.37 = private unnamed_addr constant [23 x i8] c"st,adc-channel-clk-src\00", align 1
@stm32_dfsdm_chan_src = internal unnamed_addr constant [5 x %struct.stm32_dfsdm_str2field] [%struct.stm32_dfsdm_str2field { ptr @.str.43, i32 0 }, %struct.stm32_dfsdm_str2field { ptr @.str.44, i32 1 }, %struct.stm32_dfsdm_str2field { ptr @.str.45, i32 2 }, %struct.stm32_dfsdm_str2field { ptr @.str.46, i32 3 }, %struct.stm32_dfsdm_str2field zeroinitializer], align 4
@.str.38 = private unnamed_addr constant [19 x i8] c"st,adc-alt-channel\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"SPI_R\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"SPI_F\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"MANCH_R\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"MANCH_F\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"CLKIN\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"CLKOUT\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"CLKOUT_F\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"CLKOUT_R\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"spi_clk_freq\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"enter %s\0A\00", align 1
@__func__.dfsdm_adc_audio_set_spiclk = private unnamed_addr constant [27 x i8] c"dfsdm_adc_audio_set_spiclk\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"Can't start DMA\0A\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"Can't start conversion\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_license351, ptr @__ksymtab_stm32_dfsdm_get_buff_cb, ptr @__ksymtab_stm32_dfsdm_release_buff_cb], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @stm32_dfsdm_get_buff_cb(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %7, i32 0, i32 11
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %7, i32 0, i32 12
  store ptr %2, ptr %9, align 4
  br label %10

10:                                               ; preds = %5, %3
  %11 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @stm32_dfsdm_release_buff_cb(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %5, i32 0, i32 11
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %5, i32 0, i32 12
  store ptr null, ptr %7, align 4
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i32 [ 0, %3 ], [ -22, %1 ]
  ret i32 %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_dfsdm_adc_driver, ptr noundef nonnull @__this_module) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_dfsdm_adc_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_adc_probe(ptr noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %3) #13
  %7 = tail call ptr @devm_iio_device_alloc(ptr noundef %3, i32 noundef 84) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stm32_dfsdm_adc_probe) #14
  br label %102

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 19
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %12, align 4
  %17 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 2, i32 25
  store ptr %5, ptr %17, align 8
  store i32 1, ptr %7, align 8
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %18, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %12, i32 0, i32 2
  %21 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.2, ptr noundef %20, i32 noundef 1, i32 noundef 0) #13
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %29

23:                                               ; preds = %10
  %24 = load i32, ptr %20, align 4
  %25 = load ptr, ptr %12, align 4
  %26 = getelementptr inbounds %struct.stm32_dfsdm, ptr %25, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #14
  br label %102

30:                                               ; preds = %23
  %31 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 11, i32 noundef 3520) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %102, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %6, align 4
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 17
  %37 = select i1 %35, ptr @stm32_dfsdm_info_audio, ptr @stm32_dfsdm_info_adc
  %38 = select i1 %35, ptr @.str.4, ptr @.str.5
  store ptr %37, ptr %36, align 8
  %39 = load i32, ptr %20, align 4
  %40 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %31, i32 noundef 11, ptr noundef nonnull %38, i32 noundef %39)
  %41 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 15
  store ptr %31, ptr %41, align 8
  %42 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #13
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %102, label %44

44:                                               ; preds = %33
  %45 = load ptr, ptr %0, align 8
  %46 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %42, ptr noundef nonnull @stm32_dfsdm_irq, ptr noundef null, i32 noundef 0, ptr noundef %45, ptr noundef nonnull %7) #13
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #14
  br label %102

49:                                               ; preds = %44
  %50 = load ptr, ptr %4, align 8
  %51 = call i32 @of_property_read_variable_u32_array(ptr noundef %50, ptr noundef nonnull @.str.7, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #13
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #14
  br label %102

54:                                               ; preds = %49
  %55 = load i32, ptr %2, align 4
  %56 = load ptr, ptr %12, align 4
  %57 = getelementptr inbounds %struct.stm32_dfsdm, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = load i32, ptr %20, align 4
  %60 = getelementptr %struct.stm32_dfsdm_filter, ptr %58, i32 %59
  store i32 %55, ptr %60, align 8
  %61 = load ptr, ptr %4, align 8
  %62 = call i32 @of_property_read_variable_u32_array(ptr noundef %61, ptr noundef nonnull @.str.9, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #13
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %64, label %71

64:                                               ; preds = %54
  %65 = load i32, ptr %2, align 4
  %66 = load ptr, ptr %12, align 4
  %67 = getelementptr inbounds %struct.stm32_dfsdm, ptr %66, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = load i32, ptr %20, align 4
  %70 = getelementptr %struct.stm32_dfsdm_filter, ptr %68, i32 %69, i32 2
  store i32 %65, ptr %70, align 8
  br label %71

71:                                               ; preds = %64, %54
  %72 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %12, i32 0, i32 1
  store ptr %6, ptr %72, align 4
  %73 = getelementptr inbounds %struct.stm32_dfsdm_dev_data, ptr %6, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = call i32 %74(ptr noundef %3, ptr noundef nonnull %7) #13
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %102, label %77

77:                                               ; preds = %71
  %78 = call i32 @__iio_device_register(ptr noundef nonnull %7, ptr noundef nonnull @__this_module) #13
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %6, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = call i32 @of_platform_populate(ptr noundef %5, ptr noundef null, ptr noundef null, ptr noundef %3) #13
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #14
  call void @iio_device_unregister(ptr noundef nonnull %7) #13
  br label %87

87:                                               ; preds = %86, %77
  %88 = phi i32 [ %78, %77 ], [ %84, %86 ]
  %89 = load ptr, ptr %11, align 8
  %90 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %89, i32 0, i32 16
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %102, label %93

93:                                               ; preds = %87
  %94 = load ptr, ptr %91, align 4
  %95 = getelementptr inbounds %struct.dma_device, ptr %94, i32 0, i32 15
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %89, i32 0, i32 13
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %89, i32 0, i32 17
  %100 = load i32, ptr %99, align 4
  call void @dma_free_attrs(ptr noundef %96, i32 noundef 16384, ptr noundef %98, i32 noundef %100, i32 noundef 0) #13
  %101 = load ptr, ptr %90, align 4
  call void @dma_release_channel(ptr noundef %101) #13
  br label %102

102:                                              ; preds = %93, %87, %83, %80, %71, %53, %48, %33, %30, %29, %9
  %103 = phi i32 [ -22, %29 ], [ %46, %48 ], [ %51, %53 ], [ -12, %9 ], [ -12, %30 ], [ %42, %33 ], [ %75, %71 ], [ 0, %83 ], [ 0, %80 ], [ %88, %87 ], [ %88, %93 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_adc_remove(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @of_platform_depopulate(ptr noundef %11) #13
  br label %12

12:                                               ; preds = %10, %1
  tail call void @iio_device_unregister(ptr noundef %3) #13
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %13, i32 0, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %13, i32 0, i32 13
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %13, i32 0, i32 17
  %24 = load i32, ptr %23, align 4
  tail call void @dma_free_attrs(ptr noundef %20, i32 noundef 16384, ptr noundef %22, i32 noundef %24, i32 noundef 0) #13
  %25 = load ptr, ptr %14, align 4
  tail call void @dma_release_channel(ptr noundef %25) #13
  br label %26

26:                                               ; preds = %17, %12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_irq(i32 noundef %0, ptr noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_dfsdm, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %6, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 7
  %13 = add i32 %12, 264
  %14 = call i32 @regmap_read(ptr noundef %9, i32 noundef %13, ptr noundef nonnull %3) #13
  %15 = load i32, ptr %10, align 4
  %16 = shl i32 %15, 7
  %17 = add i32 %16, 260
  %18 = call i32 @regmap_read(ptr noundef %9, i32 noundef %17, ptr noundef nonnull %4) #13
  %19 = load i32, ptr %3, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %2
  %23 = load i32, ptr %10, align 4
  %24 = shl i32 %23, 7
  %25 = add i32 %24, 284
  %26 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %6, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 @regmap_read(ptr noundef %9, i32 noundef %25, ptr noundef %27) #13
  %29 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %6, i32 0, i32 7
  call void @complete(ptr noundef %29) #13
  %30 = load i32, ptr %3, align 4
  br label %31

31:                                               ; preds = %22, %2
  %32 = phi i32 [ %30, %22 ], [ %19, %2 ]
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %4, align 4
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.26) #14
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32, ptr %10, align 4
  %43 = shl i32 %42, 7
  %44 = add i32 %43, 268
  %45 = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %44, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %46

46:                                               ; preds = %41, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_dfsdm_dma_release(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %3, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %3, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  tail call void @dma_free_attrs(ptr noundef %10, i32 noundef 16384, ptr noundef %12, i32 noundef %14, i32 noundef 0) #13
  %15 = load ptr, ptr %4, align 4
  tail call void @dma_release_channel(ptr noundef %15) #13
  br label %16

16:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_read_raw(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4) #4 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  switch i32 %4, label %113 [
    i32 0, label %8
    i32 25, label %107
    i32 12, label %110
  ]

8:                                                ; preds = %5
  %9 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %0) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %113

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %7, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @iio_hw_consumer_enable(ptr noundef %13) #13
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %18 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.stm32_dfsdm_read_raw, i32 noundef %19) #14
  tail call void @iio_device_release_direct_mode(ptr noundef %0) #13
  br label %113

20:                                               ; preds = %11
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %21, i32 0, i32 7
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %21, i32 0, i32 8
  store ptr %2, ptr %23, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = tail call i32 @stm32_dfsdm_start_dfsdm(ptr noundef %24) #13
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load ptr, ptr %12, align 4
  tail call void @iio_hw_consumer_disable(ptr noundef %28) #13
  br label %101

29:                                               ; preds = %20
  %30 = load ptr, ptr %21, align 4
  %31 = getelementptr inbounds %struct.stm32_dfsdm, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %21, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 7
  %36 = add i32 %35, 260
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %36, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %95, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %21, i32 0, i32 3
  store i32 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = shl nuw i32 1, %42
  %44 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %21, i32 0, i32 4
  store i32 %43, ptr %44, align 4
  %45 = tail call fastcc i32 @stm32_dfsdm_start_conv(ptr noundef %0, ptr noundef null) #13
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load ptr, ptr %21, align 4
  %49 = getelementptr inbounds %struct.stm32_dfsdm, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = load i32, ptr %33, align 4
  %52 = shl i32 %51, 7
  %53 = add i32 %52, 260
  %54 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef %53, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %95

55:                                               ; preds = %39
  %56 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %22, i32 noundef 10) #13
  %57 = load ptr, ptr %21, align 4
  %58 = getelementptr inbounds %struct.stm32_dfsdm, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = load i32, ptr %33, align 4
  %61 = shl i32 %60, 7
  %62 = add i32 %61, 260
  %63 = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef %62, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %64 = icmp eq i32 %56, 0
  %65 = icmp slt i32 %56, 0
  %66 = select i1 %65, i32 %56, i32 1
  %67 = select i1 %64, i32 -110, i32 %66
  tail call fastcc void @stm32_dfsdm_stop_conv(ptr noundef %0) #13
  %68 = load i32, ptr %40, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %95, label %70

70:                                               ; preds = %55
  %71 = load ptr, ptr %21, align 4
  %72 = getelementptr inbounds %struct.stm32_dfsdm, ptr %71, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = load i32, ptr %33, align 4
  %75 = getelementptr %struct.stm32_dfsdm_filter, ptr %73, i32 %74, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr %struct.stm32_dfsdm_filter, ptr %73, i32 %74, i32 1, i32 %76, i32 6
  %78 = getelementptr %struct.stm32_dfsdm_filter, ptr %73, i32 %74, i32 1, i32 %76, i32 3
  br label %79

79:                                               ; preds = %89, %70
  %80 = phi i32 [ %68, %70 ], [ %82, %89 ]
  %81 = phi ptr [ %2, %70 ], [ %93, %89 ]
  %82 = add i32 %80, -1
  %83 = load i32, ptr %81, align 4
  %84 = and i32 %83, -256
  store i32 %84, ptr %81, align 4
  %85 = load i32, ptr %77, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = add i32 %84, -1
  store i32 %88, ptr %81, align 4
  br label %89

89:                                               ; preds = %87, %79
  %90 = phi i32 [ %88, %87 ], [ %84, %79 ]
  %91 = load i32, ptr %78, align 4
  %92 = shl i32 %90, %91
  store i32 %92, ptr %81, align 4
  %93 = getelementptr i32, ptr %81, i32 1
  %94 = icmp eq i32 %82, 0
  br i1 %94, label %95, label %79

95:                                               ; preds = %89, %55, %47, %29
  %96 = phi i32 [ %37, %29 ], [ %45, %47 ], [ %67, %55 ], [ %67, %89 ]
  %97 = load ptr, ptr %21, align 4
  %98 = tail call i32 @stm32_dfsdm_stop_dfsdm(ptr noundef %97) #13
  %99 = load ptr, ptr %12, align 4
  tail call void @iio_hw_consumer_disable(ptr noundef %99) #13
  %100 = icmp slt i32 %96, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95, %27
  %102 = phi i32 [ %25, %27 ], [ %96, %95 ]
  %103 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %104 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.stm32_dfsdm_read_raw, i32 noundef %105) #14
  tail call void @iio_device_release_direct_mode(ptr noundef %0) #13
  br label %113

106:                                              ; preds = %95
  tail call void @iio_device_release_direct_mode(ptr noundef %0) #13
  br label %113

107:                                              ; preds = %5
  %108 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %7, i32 0, i32 5
  %109 = load i32, ptr %108, align 4
  store i32 %109, ptr %2, align 4
  br label %113

110:                                              ; preds = %5
  %111 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %7, i32 0, i32 10
  %112 = load i32, ptr %111, align 4
  store i32 %112, ptr %2, align 4
  br label %113

113:                                              ; preds = %110, %107, %106, %101, %16, %8, %5
  %114 = phi i32 [ 1, %110 ], [ 1, %107 ], [ %14, %16 ], [ %102, %101 ], [ 1, %106 ], [ %9, %8 ], [ -22, %5 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_write_raw(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #4 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stm32_dfsdm, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.stm32_dfsdm_channel, ptr %10, i32 %12, i32 2
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %22 [
    i32 1, label %15
    i32 2, label %18
    i32 3, label %18
  ]

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.stm32_dfsdm, ptr %8, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  br label %25

18:                                               ; preds = %5, %5
  %19 = getelementptr inbounds %struct.stm32_dfsdm, ptr %8, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 1
  br label %25

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %7, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %18, %15
  %26 = phi i32 [ %24, %22 ], [ %21, %18 ], [ %17, %15 ]
  switch i32 %4, label %80 [
    i32 25, label %27
    i32 12, label %50
  ]

27:                                               ; preds = %25
  %28 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %0) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %80

30:                                               ; preds = %27
  %31 = load ptr, ptr %6, align 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.stm32_dfsdm, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %31, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr %struct.stm32_dfsdm_filter, ptr %34, i32 %36
  %38 = getelementptr %struct.stm32_dfsdm_filter, ptr %34, i32 %36, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(64) %38, i8 0, i64 64, i1 false) #13
  %39 = tail call fastcc i32 @stm32_dfsdm_compute_osrs(ptr noundef %37, i32 noundef 0, i32 noundef %2) #13
  %40 = tail call fastcc i32 @stm32_dfsdm_compute_osrs(ptr noundef %37, i32 noundef 1, i32 noundef %2) #13
  %41 = icmp slt i32 %39, 0
  %42 = icmp slt i32 %40, 0
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.25, i32 noundef %39, i32 noundef %40) #14
  br label %78

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %7, i32 0, i32 5
  store i32 %2, ptr %47, align 4
  %48 = udiv i32 %26, %2
  %49 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %7, i32 0, i32 10
  store i32 %48, ptr %49, align 4
  br label %78

50:                                               ; preds = %25
  %51 = icmp eq i32 %2, 0
  br i1 %51, label %80, label %52

52:                                               ; preds = %50
  %53 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %0) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %52
  %56 = load ptr, ptr %6, align 8
  %57 = lshr i32 %2, 1
  %58 = add i32 %26, %57
  %59 = udiv i32 %58, %2
  %60 = load ptr, ptr %56, align 4
  %61 = getelementptr inbounds %struct.stm32_dfsdm, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %56, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr %struct.stm32_dfsdm_filter, ptr %62, i32 %64
  %66 = getelementptr %struct.stm32_dfsdm_filter, ptr %62, i32 %64, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(64) %66, i8 0, i64 64, i1 false) #13
  %67 = tail call fastcc i32 @stm32_dfsdm_compute_osrs(ptr noundef %65, i32 noundef 0, i32 noundef %59) #13
  %68 = tail call fastcc i32 @stm32_dfsdm_compute_osrs(ptr noundef %65, i32 noundef 1, i32 noundef %59) #13
  %69 = icmp slt i32 %67, 0
  %70 = icmp slt i32 %68, 0
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %74

72:                                               ; preds = %55
  %73 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.25, i32 noundef %67, i32 noundef %68) #14
  br label %78

74:                                               ; preds = %55
  %75 = udiv i32 %26, %59
  %76 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %56, i32 0, i32 10
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %56, i32 0, i32 5
  store i32 %59, ptr %77, align 4
  br label %78

78:                                               ; preds = %74, %72, %46, %44
  %79 = phi i32 [ 0, %46 ], [ -22, %44 ], [ 0, %74 ], [ -22, %72 ]
  tail call void @iio_device_release_direct_mode(ptr noundef %0) #13
  br label %80

80:                                               ; preds = %78, %52, %50, %27, %25
  %81 = phi i32 [ %28, %27 ], [ -22, %50 ], [ %53, %52 ], [ -22, %25 ], [ %79, %78 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_update_scan_mode(ptr nocapture noundef readonly %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 @__bitmap_weight(ptr noundef %1, i32 noundef %6) #13
  %8 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 3
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr %1, align 4
  %10 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 4
  store i32 %9, ptr %10, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_dfsdm_set_watermark(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = shl i32 %1, 2
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 8192)
  %7 = shl nuw nsw i32 %6, 1
  %8 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = mul i32 %7, %9
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 16384)
  %12 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 15
  store i32 %11, ptr %12, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_hw_consumer_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_hw_consumer_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm32_dfsdm_start_dfsdm(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dfsdm_start_conv(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_dfsdm, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_dfsdm, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.stm32_dfsdm_filter, ptr %11, i32 %9, i32 1
  %13 = getelementptr %struct.stm32_dfsdm_filter, ptr %11, i32 %9, i32 3
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %15, 1
  %17 = icmp ne ptr %1, null
  %18 = or i1 %17, %16
  br i1 %18, label %32, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = getelementptr %struct.stm32_dfsdm_filter, ptr %11, i32 %9, i32 1, i32 1, i32 4
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds %struct.stm32_dfsdm_filter_osr, ptr %12, i32 0, i32 4
  %28 = load i64, ptr %27, align 8
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = getelementptr %struct.stm32_dfsdm_filter, ptr %11, i32 %9, i32 1, i32 1
  store i32 1, ptr %13, align 4
  br label %32

32:                                               ; preds = %30, %24, %19, %2
  %33 = phi ptr [ %12, %2 ], [ %31, %30 ], [ %12, %24 ], [ %12, %19 ]
  %34 = getelementptr inbounds %struct.stm32_dfsdm_filter_osr, ptr %33, i32 0, i32 4
  %35 = load i64, ptr %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %259, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 4
  %39 = tail call i32 @_find_next_bit_le(ptr noundef %38, i32 noundef 32, i32 noundef 0) #13
  %40 = icmp ult i32 %39, 32
  br i1 %40, label %41, label %62

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.stm32_dfsdm_filter_osr, ptr %33, i32 0, i32 2
  %43 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  br label %44

44:                                               ; preds = %56, %41
  %45 = phi i32 [ %39, %41 ], [ %58, %56 ]
  %46 = load i32, ptr %42, align 8
  %47 = load ptr, ptr %43, align 8
  %48 = getelementptr %struct.iio_chan_spec, ptr %47, i32 %45, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = shl i32 %49, 5
  %51 = or i32 %50, 4
  %52 = shl i32 %46, 3
  %53 = and i32 %52, 248
  %54 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %51, i32 noundef 248, i32 noundef %53, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = add nuw nsw i32 %45, 1
  %58 = tail call i32 @_find_next_bit_le(ptr noundef %38, i32 noundef 32, i32 noundef %57) #13
  %59 = icmp ult i32 %58, 32
  br i1 %59, label %44, label %62

60:                                               ; preds = %44
  %61 = icmp slt i32 %54, 0
  br i1 %61, label %259, label %62

62:                                               ; preds = %60, %56, %37
  %63 = load ptr, ptr %3, align 8
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.stm32_dfsdm, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %63, i32 0, i32 4
  %68 = tail call i32 @_find_next_bit_le(ptr noundef %67, i32 noundef 32, i32 noundef 0) #13
  %69 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  %70 = icmp ult i32 %68, 32
  br i1 %70, label %71, label %83

71:                                               ; preds = %79, %62
  %72 = phi i32 [ %81, %79 ], [ %68, %62 ]
  %73 = load ptr, ptr %69, align 8
  %74 = getelementptr %struct.iio_chan_spec, ptr %73, i32 %72, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = shl i32 %75, 5
  %77 = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef %76, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %259, label %79

79:                                               ; preds = %71
  %80 = add nuw nsw i32 %72, 1
  %81 = tail call i32 @_find_next_bit_le(ptr noundef %67, i32 noundef 32, i32 noundef %80) #13
  %82 = icmp ult i32 %81, 32
  br i1 %82, label %71, label %83

83:                                               ; preds = %79, %62
  %84 = load i32, ptr %8, align 4
  %85 = load ptr, ptr %3, align 8
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.stm32_dfsdm, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.stm32_dfsdm, ptr %86, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr %struct.stm32_dfsdm_filter, ptr %90, i32 %84
  %92 = getelementptr %struct.stm32_dfsdm_filter, ptr %90, i32 %84, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = shl i32 %84, 7
  %95 = add i32 %94, 256
  %96 = add i32 %94, 276
  %97 = getelementptr %struct.stm32_dfsdm_filter, ptr %90, i32 %84, i32 1, i32 %93
  %98 = load i32, ptr %97, align 8
  %99 = add i32 %98, 255
  %100 = and i32 %99, 255
  %101 = tail call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef %96, i32 noundef 255, i32 noundef %100, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %214

103:                                              ; preds = %83
  %104 = getelementptr %struct.stm32_dfsdm_filter, ptr %90, i32 %84, i32 1, i32 %93, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = shl i32 %105, 16
  %107 = add i32 %106, 67043328
  %108 = and i32 %107, 67043328
  %109 = tail call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef %96, i32 noundef 67043328, i32 noundef %108, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %214

111:                                              ; preds = %103
  %112 = load i32, ptr %91, align 8
  %113 = shl i32 %112, 29
  %114 = tail call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef %96, i32 noundef -536870912, i32 noundef %113, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %214

116:                                              ; preds = %111
  %117 = load ptr, ptr %3, align 8
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.stm32_dfsdm, ptr %118, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %1, null
  br i1 %121, label %145, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.iio_trigger, ptr %1, i32 0, i32 3
  br label %124

124:                                              ; preds = %134, %122
  %125 = phi ptr [ @.str.13, %122 ], [ %137, %134 ]
  %126 = phi i32 [ 0, %122 ], [ %135, %134 ]
  %127 = tail call zeroext i1 @is_stm32_timer_trigger(ptr noundef nonnull %1) #13
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = tail call zeroext i1 @is_stm32_lptim_trigger(ptr noundef nonnull %1) #13
  br i1 %129, label %130, label %134

130:                                              ; preds = %128, %124
  %131 = load ptr, ptr %123, align 4
  %132 = tail call i32 @strcmp(ptr noundef nonnull %125, ptr noundef %131) #13
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %130, %128
  %135 = add nuw nsw i32 %126, 1
  %136 = getelementptr [13 x %struct.stm32_dfsdm_trig_info], ptr @stm32_dfsdm_trigs, i32 0, i32 %135
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq i32 %135, 12
  br i1 %138, label %240, label %124

139:                                              ; preds = %130
  %140 = getelementptr [13 x %struct.stm32_dfsdm_trig_info], ptr @stm32_dfsdm_trigs, i32 0, i32 %126, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = shl i32 %141, 8
  %143 = and i32 %142, 7936
  %144 = or i32 %143, 8192
  br label %145

145:                                              ; preds = %139, %116
  %146 = phi i32 [ %144, %139 ], [ 0, %116 ]
  %147 = tail call i32 @regmap_update_bits_base(ptr noundef %120, i32 noundef %95, i32 noundef 32512, i32 noundef %146, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %148 = tail call i32 @llvm.smin.i32(i32 %147, i32 0) #13
  %149 = icmp sgt i32 %147, -1
  br i1 %149, label %150, label %214

150:                                              ; preds = %145
  %151 = load i32, ptr %92, align 4
  %152 = shl i32 %151, 29
  %153 = and i32 %152, 536870912
  %154 = tail call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef %95, i32 noundef 536870912, i32 noundef %153, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %214

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %85, i32 0, i32 3
  %158 = load i32, ptr %157, align 4
  %159 = icmp ne i32 %158, 1
  %160 = or i1 %17, %159
  %161 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %85, i32 0, i32 4
  br i1 %160, label %180, label %162

162:                                              ; preds = %156
  %163 = load i32, ptr %161, align 4
  %164 = tail call i32 @llvm.cttz.i32(i32 %163, i1 false) #13, !range !9
  %165 = load ptr, ptr %69, align 8
  %166 = getelementptr %struct.iio_chan_spec, ptr %165, i32 %164, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr %struct.stm32_dfsdm_filter, ptr %90, i32 %84, i32 2
  %169 = load i32, ptr %168, align 8
  %170 = shl i32 %167, 24
  %171 = and i32 %170, 117440512
  %172 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = shl i32 %173, 16
  %175 = and i32 %174, 262144
  %176 = shl i32 %169, 19
  %177 = and i32 %176, 524288
  %178 = or i32 %177, %171
  %179 = or i32 %178, %175
  br label %211

180:                                              ; preds = %156
  %181 = tail call i32 @_find_next_bit_le(ptr noundef %161, i32 noundef 32, i32 noundef 0) #13
  %182 = icmp ult i32 %181, 32
  br i1 %182, label %183, label %194

183:                                              ; preds = %183, %180
  %184 = phi i32 [ %192, %183 ], [ %181, %180 ]
  %185 = phi i32 [ %190, %183 ], [ 0, %180 ]
  %186 = load ptr, ptr %69, align 8
  %187 = getelementptr %struct.iio_chan_spec, ptr %186, i32 %184, i32 1
  %188 = load i32, ptr %187, align 4
  %189 = shl nuw i32 1, %188
  %190 = or i32 %189, %185
  %191 = add nuw nsw i32 %184, 1
  %192 = tail call i32 @_find_next_bit_le(ptr noundef %161, i32 noundef 32, i32 noundef %191) #13
  %193 = icmp ult i32 %192, 32
  br i1 %193, label %183, label %194

194:                                              ; preds = %183, %180
  %195 = phi i32 [ 0, %180 ], [ %190, %183 ]
  %196 = add i32 %94, 272
  %197 = tail call i32 @regmap_write(ptr noundef %88, i32 noundef %196, i32 noundef %195) #13
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %240, label %199

199:                                              ; preds = %194
  %200 = getelementptr %struct.stm32_dfsdm_filter, ptr %90, i32 %84, i32 2
  %201 = load i32, ptr %200, align 8
  %202 = icmp ne i32 %201, 0
  %203 = or i1 %17, %202
  br i1 %203, label %204, label %240

204:                                              ; preds = %199
  %205 = load i32, ptr %157, align 4
  %206 = icmp ugt i32 %205, 1
  %207 = select i1 %206, i32 16, i32 0
  %208 = shl i32 %201, 3
  %209 = and i32 %208, 8
  %210 = or i32 %209, %207
  br label %211

211:                                              ; preds = %204, %162
  %212 = phi i32 [ %210, %204 ], [ %179, %162 ]
  %213 = tail call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef %95, i32 noundef 118226968, i32 noundef %212, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %214

214:                                              ; preds = %211, %150, %145, %111, %103, %83
  %215 = phi i32 [ %213, %211 ], [ %101, %83 ], [ %109, %103 ], [ %114, %111 ], [ %148, %145 ], [ %154, %150 ]
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %240, label %217

217:                                              ; preds = %214
  %218 = load i32, ptr %8, align 4
  %219 = load ptr, ptr %4, align 4
  %220 = getelementptr inbounds %struct.stm32_dfsdm, ptr %219, i32 0, i32 2
  %221 = load ptr, ptr %220, align 4
  %222 = shl i32 %218, 7
  %223 = add i32 %222, 256
  %224 = tail call i32 @regmap_update_bits_base(ptr noundef %221, i32 noundef %223, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %234, label %226

226:                                              ; preds = %217
  %227 = load i32, ptr %14, align 4
  %228 = icmp ugt i32 %227, 1
  %229 = or i1 %17, %228
  br i1 %229, label %259, label %230

230:                                              ; preds = %226
  %231 = load ptr, ptr %220, align 4
  %232 = tail call i32 @regmap_update_bits_base(ptr noundef %231, i32 noundef %223, i32 noundef 131072, i32 noundef 131072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %259

234:                                              ; preds = %230, %217
  %235 = phi i32 [ %232, %230 ], [ %224, %217 ]
  %236 = load i32, ptr %8, align 4
  %237 = shl i32 %236, 7
  %238 = add i32 %237, 256
  %239 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %238, i32 noundef 118226968, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %240

240:                                              ; preds = %234, %214, %199, %194, %134
  %241 = phi i32 [ %215, %214 ], [ %235, %234 ], [ -22, %199 ], [ %197, %194 ], [ -22, %134 ]
  %242 = load ptr, ptr %3, align 8
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.stm32_dfsdm, ptr %243, i32 0, i32 2
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %242, i32 0, i32 4
  %247 = tail call i32 @_find_next_bit_le(ptr noundef %246, i32 noundef 32, i32 noundef 0) #13
  %248 = icmp ult i32 %247, 32
  br i1 %248, label %249, label %259

249:                                              ; preds = %249, %240
  %250 = phi i32 [ %257, %249 ], [ %247, %240 ]
  %251 = load ptr, ptr %69, align 8
  %252 = getelementptr %struct.iio_chan_spec, ptr %251, i32 %250, i32 1
  %253 = load i32, ptr %252, align 4
  %254 = shl i32 %253, 5
  %255 = tail call i32 @regmap_update_bits_base(ptr noundef %245, i32 noundef %254, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %256 = add nuw nsw i32 %250, 1
  %257 = tail call i32 @_find_next_bit_le(ptr noundef %246, i32 noundef 32, i32 noundef %256) #13
  %258 = icmp ult i32 %257, 32
  br i1 %258, label %249, label %259

259:                                              ; preds = %249, %240, %230, %226, %71, %60, %32
  %260 = phi i32 [ %54, %60 ], [ 0, %230 ], [ %241, %240 ], [ -22, %32 ], [ 0, %226 ], [ %241, %249 ], [ %77, %71 ]
  ret i32 %260
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_dfsdm_stop_conv(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_dfsdm, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 7
  %10 = add i32 %9, 256
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %10, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %12 = load i32, ptr %7, align 4
  %13 = shl i32 %12, 7
  %14 = add i32 %13, 256
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %14, i32 noundef 118226968, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %16 = load ptr, ptr %2, align 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.stm32_dfsdm, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %16, i32 0, i32 4
  %21 = tail call i32 @_find_next_bit_le(ptr noundef %20, i32 noundef 32, i32 noundef 0) #13
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %35

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i32 [ %21, %23 ], [ %33, %25 ]
  %27 = load ptr, ptr %24, align 8
  %28 = getelementptr %struct.iio_chan_spec, ptr %27, i32 %26, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %29, 5
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %30, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %32 = add nuw nsw i32 %26, 1
  %33 = tail call i32 @_find_next_bit_le(ptr noundef %20, i32 noundef 32, i32 noundef %32) #13
  %34 = icmp ult i32 %33, 32
  br i1 %34, label %25, label %35

35:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm32_dfsdm_stop_dfsdm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_stm32_timer_trigger(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_stm32_lptim_trigger(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dfsdm_compute_osrs(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #11 {
  %4 = load i32, ptr %0, align 8
  %5 = getelementptr %struct.stm32_dfsdm_filter, ptr %0, i32 0, i32 1, i32 %1
  %6 = icmp eq i32 %4, 0
  %7 = select i1 %6, i32 2, i32 1
  %8 = select i1 %6, i32 2, i32 %4
  %9 = icmp eq i32 %1, 0
  %10 = add i32 %8, -1
  %11 = zext i32 %7 to i64
  %12 = getelementptr %struct.stm32_dfsdm_filter, ptr %0, i32 0, i32 1, i32 %1, i32 4
  %13 = getelementptr %struct.stm32_dfsdm_filter, ptr %0, i32 0, i32 1, i32 %1, i32 1
  %14 = getelementptr %struct.stm32_dfsdm_filter, ptr %0, i32 0, i32 1, i32 %1, i32 2
  %15 = getelementptr %struct.stm32_dfsdm_filter, ptr %0, i32 0, i32 1, i32 %1, i32 3
  %16 = getelementptr %struct.stm32_dfsdm_filter, ptr %0, i32 0, i32 1, i32 %1, i32 6
  %17 = getelementptr %struct.stm32_dfsdm_filter, ptr %0, i32 0, i32 1, i32 %1, i32 5
  br label %18

18:                                               ; preds = %89, %3
  %19 = phi i32 [ 1, %3 ], [ %90, %89 ]
  %20 = zext i32 %19 to i64
  br label %21

21:                                               ; preds = %86, %18
  %22 = phi i32 [ 1, %18 ], [ %87, %86 ]
  br i1 %9, label %25, label %23

23:                                               ; preds = %21
  %24 = mul nuw nsw i32 %22, %19
  br label %36

25:                                               ; preds = %21
  %26 = load i32, ptr %0, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = add nuw nsw i32 %22, 3
  %30 = mul nuw nsw i32 %29, %19
  %31 = add nuw nsw i32 %30, 2
  br label %36

32:                                               ; preds = %25
  %33 = add i32 %10, %22
  %34 = mul i32 %33, %19
  %35 = add i32 %34, %8
  br label %36

36:                                               ; preds = %32, %28, %23
  %37 = phi i32 [ %24, %23 ], [ %31, %28 ], [ %35, %32 ]
  %38 = icmp ugt i32 %37, %2
  br i1 %38, label %89, label %39

39:                                               ; preds = %36
  %40 = icmp eq i32 %37, %2
  br i1 %40, label %41, label %86

41:                                               ; preds = %46, %39
  %42 = phi i64 [ %47, %46 ], [ %20, %39 ]
  %43 = phi i32 [ %44, %46 ], [ %8, %39 ]
  %44 = add i32 %43, -1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = mul i64 %42, %20
  %48 = icmp ugt i64 %47, 1073741824
  br i1 %48, label %86, label %41

49:                                               ; preds = %41
  %50 = icmp ugt i64 %42, 1073741824
  br i1 %50, label %86, label %51

51:                                               ; preds = %49
  %52 = zext i32 %22 to i64
  %53 = mul nuw nsw i64 %52, %11
  %54 = mul i64 %53, %42
  %55 = icmp ugt i64 %54, 1073741824
  br i1 %55, label %86, label %56

56:                                               ; preds = %51
  %57 = load i64, ptr %12, align 8
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %86, label %59

59:                                               ; preds = %56
  store i64 %54, ptr %12, align 8
  store i32 %19, ptr %13, align 4
  store i32 %22, ptr %5, align 8
  %60 = trunc i64 %54 to i32
  %61 = icmp eq i32 %60, 0
  %62 = tail call i32 @llvm.ctlz.i32(i32 %60, i1 false) #13, !range !9
  %63 = sub nuw nsw i32 32, %62
  %64 = select i1 %61, i32 0, i32 %63
  %65 = shl nuw nsw i64 %54, 8
  %66 = add nsw i32 %64, -1
  %67 = shl nuw i32 1, %66
  %68 = zext i32 %67 to i64
  %69 = icmp ugt i64 %54, %68
  %70 = xor i1 %69, true
  %71 = sext i1 %70 to i64
  %72 = add nsw i64 %65, %71
  %73 = zext i1 %69 to i32
  %74 = add nuw nsw i32 %64, %73
  %75 = icmp ult i32 %74, 24
  br i1 %75, label %76, label %79

76:                                               ; preds = %59
  %77 = sub nuw nsw i32 24, %74
  store i32 0, ptr %14, align 8
  store i32 %77, ptr %15, align 4
  %78 = trunc i64 %72 to i32
  br label %84

79:                                               ; preds = %59
  %80 = add nsw i32 %74, -23
  store i32 %80, ptr %14, align 8
  store i32 1, ptr %15, align 4
  %81 = zext i32 %80 to i64
  %82 = lshr i64 %72, %81
  %83 = trunc i64 %82 to i32
  br label %84

84:                                               ; preds = %79, %76
  %85 = phi i32 [ %83, %79 ], [ %78, %76 ]
  store i32 %85, ptr %16, align 4
  store i32 %74, ptr %17, align 8
  br label %86

86:                                               ; preds = %84, %56, %51, %49, %46, %39
  %87 = add nuw nsw i32 %22, 1
  %88 = icmp eq i32 %87, 257
  br i1 %88, label %89, label %21

89:                                               ; preds = %86, %36
  %90 = add nuw nsw i32 %19, 1
  %91 = icmp eq i32 %90, 1025
  br i1 %91, label %92, label %18

92:                                               ; preds = %89
  %93 = load i64, ptr %12, align 8
  %94 = icmp eq i64 %93, 0
  %95 = select i1 %94, i32 -22, i32 0
  ret i32 %95
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_validate_trigger(ptr nocapture noundef readnone %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.iio_trigger, ptr %1, i32 0, i32 3
  br label %4

4:                                                ; preds = %14, %2
  %5 = phi ptr [ @.str.13, %2 ], [ %17, %14 ]
  %6 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %7 = tail call zeroext i1 @is_stm32_timer_trigger(ptr noundef %1) #13
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call zeroext i1 @is_stm32_lptim_trigger(ptr noundef %1) #13
  br i1 %9, label %10, label %14

10:                                               ; preds = %8, %4
  %11 = load ptr, ptr %3, align 4
  %12 = tail call i32 @strcmp(ptr noundef nonnull %5, ptr noundef %11) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10, %8
  %15 = add nuw nsw i32 %6, 1
  %16 = getelementptr [13 x %struct.stm32_dfsdm_trig_info], ptr @stm32_dfsdm_trigs, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq i32 %15, 12
  br i1 %18, label %19, label %4

19:                                               ; preds = %14, %10
  %20 = phi i32 [ 0, %10 ], [ -22, %14 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_adc_init(ptr noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 5
  store i32 100, ptr %5, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_dfsdm, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %6, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.stm32_dfsdm_filter, ptr %9, i32 %11
  %13 = getelementptr %struct.stm32_dfsdm_filter, ptr %9, i32 %11, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(64) %13, i8 0, i64 64, i1 false) #13
  %14 = tail call fastcc i32 @stm32_dfsdm_compute_osrs(ptr noundef %12, i32 noundef 0, i32 noundef 100) #13
  %15 = tail call fastcc i32 @stm32_dfsdm_compute_osrs(ptr noundef %12, i32 noundef 1, i32 noundef 100) #13
  %16 = icmp slt i32 %14, 0
  %17 = icmp slt i32 %15, 0
  %18 = select i1 %16, i1 %17, i1 false
  %19 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  br i1 %18, label %20, label %21

20:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.25, i32 noundef %14, i32 noundef %15) #14
  br label %91

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @of_property_count_elems_of_size(ptr noundef %23, ptr noundef nonnull @.str.27, i32 noundef 4) #13
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.stm32_dfsdm, ptr %27, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %24, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %21
  %32 = phi i32 [ %24, %21 ], [ -22, %26 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.28) #14
  br label %91

33:                                               ; preds = %26
  %34 = tail call ptr @devm_iio_hw_consumer_alloc(ptr noundef %19) #13
  %35 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 6
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %91, label %37

37:                                               ; preds = %33
  %38 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 88) #13
  %39 = extractvalue { i32, i1 } %38, 1
  br i1 %39, label %91, label %40, !prof !10

40:                                               ; preds = %37
  %41 = extractvalue { i32, i1 } %38, 0
  %42 = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef %41, i32 noundef 3520) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %91, label %44

44:                                               ; preds = %40
  %45 = icmp eq i32 %24, 0
  br i1 %45, label %56, label %49

46:                                               ; preds = %49
  %47 = add nuw nsw i32 %50, 1
  %48 = icmp eq i32 %47, %24
  br i1 %48, label %56, label %49

49:                                               ; preds = %46, %44
  %50 = phi i32 [ %47, %46 ], [ 0, %44 ]
  %51 = getelementptr %struct.iio_chan_spec, ptr %42, i32 %50
  %52 = getelementptr %struct.iio_chan_spec, ptr %42, i32 %50, i32 4
  store i32 %50, ptr %52, align 4
  %53 = tail call fastcc i32 @stm32_dfsdm_adc_chan_init_one(ptr noundef %1, ptr noundef %51)
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %46

55:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.29) #14
  br label %91

56:                                               ; preds = %46, %44
  %57 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 14
  store i32 %24, ptr %57, align 4
  %58 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  store ptr %42, ptr %58, align 8
  %59 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 7
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %60, ptr noundef nonnull @.str.50, ptr noundef nonnull @init_completion.__key) #13
  %61 = load ptr, ptr %3, align 8
  %62 = tail call ptr @dma_request_chan(ptr noundef %0, ptr noundef nonnull @.str.51) #13
  %63 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %61, i32 0, i32 16
  store ptr %62, ptr %63, align 4
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %79, label %65

65:                                               ; preds = %56
  %66 = load ptr, ptr %62, align 4
  %67 = getelementptr inbounds %struct.dma_device, ptr %66, i32 0, i32 15
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %61, i32 0, i32 17
  %70 = tail call ptr @dma_alloc_attrs(ptr noundef %68, i32 noundef 16384, ptr noundef %69, i32 noundef 3264, i32 noundef 0) #13
  %71 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %61, i32 0, i32 13
  store ptr %70, ptr %71, align 4
  %72 = icmp eq ptr %70, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load ptr, ptr %63, align 4
  tail call void @dma_release_channel(ptr noundef %74) #13
  br label %81

75:                                               ; preds = %65
  %76 = load i32, ptr %1, align 8
  %77 = or i32 %76, 4
  store i32 %77, ptr %1, align 8
  %78 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 18
  store ptr @stm32_dfsdm_buffer_setup_ops, ptr %78, align 4
  br label %84

79:                                               ; preds = %56
  %80 = ptrtoint ptr %62 to i32
  store ptr null, ptr %63, align 4
  switch i32 %80, label %81 [
    i32 0, label %84
    i32 -19, label %91
  ]

81:                                               ; preds = %79, %73
  %82 = phi i32 [ -12, %73 ], [ %80, %79 ]
  %83 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %0, i32 noundef %82, ptr noundef nonnull @.str.30) #13
  br label %91

84:                                               ; preds = %79, %75
  %85 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef %1, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef null, i32 noundef 0, ptr noundef nonnull @stm32_dfsdm_buffer_setup_ops, ptr noundef null) #13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call fastcc void @stm32_dfsdm_dma_release(ptr noundef %1)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.31) #14
  br label %91

88:                                               ; preds = %84
  %89 = load i32, ptr %1, align 8
  %90 = or i32 %89, 32
  store i32 %90, ptr %1, align 8
  br label %91

91:                                               ; preds = %88, %87, %81, %79, %55, %40, %37, %33, %31, %20
  %92 = phi i32 [ %32, %31 ], [ %53, %55 ], [ %83, %81 ], [ %85, %87 ], [ 0, %88 ], [ -517, %33 ], [ -12, %40 ], [ 0, %79 ], [ -22, %20 ], [ -12, %37 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_hw_consumer_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dfsdm_adc_chan_init_one(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %10 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %13 = tail call i32 @of_property_read_u32_index(ptr noundef %11, ptr noundef nonnull @.str.27, i32 noundef %8, ptr noundef %12) #13
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.32, i32 noundef %8) #14
  br label %86

16:                                               ; preds = %2
  %17 = load i32, ptr %12, align 4
  %18 = getelementptr inbounds %struct.stm32_dfsdm, ptr %6, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.33, i32 noundef %17, i32 noundef %19) #14
  br label %86

22:                                               ; preds = %16
  %23 = load ptr, ptr %10, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 18
  %25 = tail call i32 @of_property_read_string_helper(ptr noundef %23, ptr noundef nonnull @.str.34, ptr noundef %24, i32 noundef 1, i32 noundef %8) #13
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.35, i32 noundef %8) #14
  br label %86

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.stm32_dfsdm, ptr %6, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %12, align 4
  %32 = getelementptr %struct.stm32_dfsdm_channel, ptr %30, i32 %31
  store i32 %31, ptr %32, align 4
  %33 = load ptr, ptr %10, align 8
  %34 = call i32 @of_property_read_string_helper(ptr noundef %33, ptr noundef nonnull @.str.36, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %8) #13
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %54

36:                                               ; preds = %28
  %37 = load ptr, ptr %3, align 4
  %38 = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.39, ptr noundef %37) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.40, ptr noundef %37) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.41, ptr noundef %37) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.42, ptr noundef %37) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %86

49:                                               ; preds = %46, %43, %40, %36
  %50 = phi ptr [ @stm32_dfsdm_chan_type, %36 ], [ getelementptr inbounds ([5 x %struct.stm32_dfsdm_str2field], ptr @stm32_dfsdm_chan_type, i32 0, i32 1), %40 ], [ getelementptr inbounds ([5 x %struct.stm32_dfsdm_str2field], ptr @stm32_dfsdm_chan_type, i32 0, i32 2), %43 ], [ getelementptr inbounds ([5 x %struct.stm32_dfsdm_str2field], ptr @stm32_dfsdm_chan_type, i32 0, i32 3), %46 ]
  %51 = getelementptr inbounds %struct.stm32_dfsdm_str2field, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %86, label %54

54:                                               ; preds = %49, %28
  %55 = phi i32 [ %52, %49 ], [ 0, %28 ]
  %56 = getelementptr %struct.stm32_dfsdm_channel, ptr %30, i32 %31, i32 1
  store i32 %55, ptr %56, align 4
  %57 = load ptr, ptr %10, align 8
  %58 = call i32 @of_property_read_string_helper(ptr noundef %57, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %8) #13
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %78

60:                                               ; preds = %54
  %61 = load ptr, ptr %3, align 4
  %62 = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.43, ptr noundef %61) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.44, ptr noundef %61) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.45, ptr noundef %61) #13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.46, ptr noundef %61) #13
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %70, %67, %64, %60
  %74 = phi ptr [ @stm32_dfsdm_chan_src, %60 ], [ getelementptr inbounds ([5 x %struct.stm32_dfsdm_str2field], ptr @stm32_dfsdm_chan_src, i32 0, i32 1), %64 ], [ getelementptr inbounds ([5 x %struct.stm32_dfsdm_str2field], ptr @stm32_dfsdm_chan_src, i32 0, i32 2), %67 ], [ getelementptr inbounds ([5 x %struct.stm32_dfsdm_str2field], ptr @stm32_dfsdm_chan_src, i32 0, i32 3), %70 ]
  %75 = getelementptr inbounds %struct.stm32_dfsdm_str2field, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73, %54
  %79 = phi i32 [ %76, %73 ], [ 0, %54 ]
  %80 = getelementptr %struct.stm32_dfsdm_channel, ptr %30, i32 %31, i32 2
  store i32 %79, ptr %80, align 4
  %81 = load ptr, ptr %10, align 8
  %82 = getelementptr %struct.stm32_dfsdm_channel, ptr %30, i32 %31, i32 3
  %83 = call i32 @of_property_read_u32_index(ptr noundef %81, ptr noundef nonnull @.str.38, i32 noundef %8, ptr noundef %82) #13
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  store i32 0, ptr %82, align 4
  br label %88

86:                                               ; preds = %73, %70, %49, %46, %27, %21, %15
  %87 = phi i32 [ -22, %46 ], [ -22, %70 ], [ %76, %73 ], [ %52, %49 ], [ %25, %27 ], [ -22, %21 ], [ %13, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %112

88:                                               ; preds = %85, %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %1, align 4
  %89 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 19
  %90 = load i8, ptr %89, align 4
  %91 = or i8 %90, 2
  store i8 %91, ptr %89, align 4
  %92 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 6
  store i32 1, ptr %92, align 4
  %93 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 12
  store i32 33558528, ptr %93, align 4
  %94 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %5, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 16
  store ptr @dfsdm_adc_audio_ext_info, ptr %99, align 4
  br label %102

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5, i32 3
  store i8 8, ptr %101, align 1
  br label %102

102:                                              ; preds = %100, %98
  %103 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5
  store i8 115, ptr %103, align 4
  %104 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5, i32 1
  store i8 24, ptr %104, align 1
  %105 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5, i32 2
  store i8 32, ptr %105, align 2
  %106 = load ptr, ptr %5, align 4
  %107 = getelementptr inbounds %struct.stm32_dfsdm, ptr %106, i32 0, i32 5
  %108 = load ptr, ptr %107, align 4
  %109 = load i32, ptr %12, align 4
  %110 = getelementptr %struct.stm32_dfsdm_channel, ptr %108, i32 %109
  %111 = call fastcc i32 @stm32_dfsdm_chan_configure(ptr noundef %106, ptr noundef %110)
  br label %112

112:                                              ; preds = %102, %86
  %113 = phi i32 [ %111, %102 ], [ %87, %86 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dfsdm_chan_configure(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.stm32_dfsdm, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %3, 5
  %7 = getelementptr inbounds %struct.stm32_dfsdm_channel, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 3
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %6, i32 noundef 3, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.stm32_dfsdm_channel, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 2
  %16 = and i32 %15, 12
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %6, i32 noundef 12, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.stm32_dfsdm_channel, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 8
  %23 = and i32 %22, 256
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %6, i32 noundef 256, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %25

25:                                               ; preds = %19, %12, %2
  %26 = phi i32 [ %24, %19 ], [ %10, %2 ], [ %17, %12 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dfsdm_adc_audio_get_spiclk(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) #12 {
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %6, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %3, i32 noundef 4096, ptr noundef nonnull @.str.48, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dfsdm_adc_audio_set_spiclk(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) #4 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_dfsdm, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.iio_chan_spec, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %8, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.dfsdm_adc_audio_set_spiclk) #14
  %17 = getelementptr %struct.stm32_dfsdm_channel, ptr %11, i32 %13, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %5
  %21 = call i32 @kstrtoint(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %6) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %20
  %24 = load i32, ptr %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %54, label %26

26:                                               ; preds = %23
  %27 = icmp eq i32 %15, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %7, align 8
  %30 = lshr i32 %15, 1
  %31 = add i32 %24, %30
  %32 = udiv i32 %31, %15
  %33 = load ptr, ptr %29, align 4
  %34 = getelementptr inbounds %struct.stm32_dfsdm, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %29, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.stm32_dfsdm_filter, ptr %35, i32 %37
  %39 = getelementptr %struct.stm32_dfsdm_filter, ptr %35, i32 %37, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(64) %39, i8 0, i64 64, i1 false) #13
  %40 = call fastcc i32 @stm32_dfsdm_compute_osrs(ptr noundef %38, i32 noundef 0, i32 noundef %32) #13
  %41 = call fastcc i32 @stm32_dfsdm_compute_osrs(ptr noundef %38, i32 noundef 1, i32 noundef %32) #13
  %42 = icmp slt i32 %40, 0
  %43 = icmp slt i32 %41, 0
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.25, i32 noundef %40, i32 noundef %41) #14
  br label %54

46:                                               ; preds = %28
  %47 = udiv i32 %24, %32
  %48 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %29, i32 0, i32 10
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %29, i32 0, i32 5
  store i32 %32, ptr %49, align 4
  %50 = load i32, ptr %6, align 4
  br label %51

51:                                               ; preds = %46, %26
  %52 = phi i32 [ %50, %46 ], [ %24, %26 ]
  %53 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %8, i32 0, i32 9
  store i32 %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %51, %45, %23, %20, %5
  %55 = phi i32 [ %4, %51 ], [ -1, %5 ], [ %21, %20 ], [ -22, %23 ], [ -22, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_postenable(ptr noundef %0) #4 {
  %2 = alloca %struct.dma_slave_config, align 4
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 14
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @iio_hw_consumer_enable(ptr noundef nonnull %7) #13
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %158, label %12

12:                                               ; preds = %9, %1
  %13 = load ptr, ptr %4, align 4
  %14 = tail call i32 @stm32_dfsdm_start_dfsdm(ptr noundef %13) #13
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %153, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #13
  %18 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %2, i8 0, i64 48, i1 false) #13
  %19 = load ptr, ptr %17, align 4
  %20 = getelementptr inbounds %struct.stm32_dfsdm, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 3
  store i32 4, ptr %22, align 4
  %23 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %17, i32 0, i32 16
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %115, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %17, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ 280, %34 ], [ 284, %30 ]
  %37 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %17, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 7
  %40 = add i32 %36, %21
  %41 = add i32 %40, %39
  store i32 %41, ptr %18, align 4
  %42 = load ptr, ptr %24, align 4
  %43 = getelementptr inbounds %struct.dma_device, ptr %42, i32 0, i32 44
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %115, label %46

46:                                               ; preds = %35
  %47 = call i32 %44(ptr noundef nonnull %24, ptr noundef nonnull %2) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %115

49:                                               ; preds = %46
  %50 = load ptr, ptr %23, align 4
  %51 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %17, i32 0, i32 17
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %17, i32 0, i32 15
  %54 = load i32, ptr %53, align 4
  %55 = lshr i32 %54, 1
  %56 = icmp eq ptr %50, null
  br i1 %56, label %115, label %57

57:                                               ; preds = %49
  %58 = load ptr, ptr %50, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %115, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.dma_device, ptr %58, i32 0, i32 40
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %115, label %64

64:                                               ; preds = %60
  %65 = call ptr %62(ptr noundef nonnull %50, i32 noundef %52, i32 noundef %54, i32 noundef %55, i32 noundef 2, i32 noundef 1) #13
  %66 = icmp eq ptr %65, null
  br i1 %66, label %115, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %65, i32 0, i32 6
  store ptr @stm32_dfsdm_dma_buffer_done, ptr %68, align 4
  %69 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %65, i32 0, i32 8
  store ptr %0, ptr %69, align 4
  %70 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %65, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  %72 = call i32 %71(ptr noundef nonnull %65) #13
  %73 = call i32 @llvm.smin.i32(i32 %72, i32 0) #13
  %74 = icmp sgt i32 %72, -1
  br i1 %74, label %75, label %106

75:                                               ; preds = %67
  %76 = load ptr, ptr %23, align 4
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.dma_device, ptr %77, i32 0, i32 50
  %79 = load ptr, ptr %78, align 4
  call void %79(ptr noundef %76) #13
  %80 = load i32, ptr %27, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %94

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 10
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load ptr, ptr %17, align 4
  %88 = getelementptr inbounds %struct.stm32_dfsdm, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = load i32, ptr %37, align 4
  %91 = shl i32 %90, 7
  %92 = add i32 %91, 256
  %93 = call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef %92, i32 noundef 2097152, i32 noundef 2097152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %102

94:                                               ; preds = %82, %75
  %95 = load ptr, ptr %17, align 4
  %96 = getelementptr inbounds %struct.stm32_dfsdm, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = load i32, ptr %37, align 4
  %99 = shl i32 %98, 7
  %100 = add i32 %99, 256
  %101 = call i32 @regmap_update_bits_base(ptr noundef %97, i32 noundef %100, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %102

102:                                              ; preds = %94, %86
  %103 = phi i32 [ %101, %94 ], [ %93, %86 ]
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #13
  br label %122

106:                                              ; preds = %102, %67
  %107 = phi i32 [ %73, %67 ], [ %103, %102 ]
  %108 = load ptr, ptr %23, align 4
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.dma_device, ptr %109, i32 0, i32 47
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %106
  %114 = call i32 %111(ptr noundef %108) #13
  br label %117

115:                                              ; preds = %64, %60, %57, %49, %46, %35, %16
  %116 = phi i32 [ -16, %49 ], [ -16, %57 ], [ -16, %60 ], [ -38, %35 ], [ -16, %64 ], [ %47, %46 ], [ -22, %16 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #13
  br label %119

117:                                              ; preds = %113, %106
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #13
  %118 = icmp eq i32 %107, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %107, %117 ]
  %121 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.52) #14
  br label %149

122:                                              ; preds = %117, %105
  %123 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 10
  %124 = load ptr, ptr %123, align 4
  %125 = call fastcc i32 @stm32_dfsdm_start_conv(ptr noundef %0, ptr noundef %124)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %158, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.53) #14
  %129 = load ptr, ptr %3, align 8
  %130 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %129, i32 0, i32 16
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %149, label %133

133:                                              ; preds = %127
  %134 = load ptr, ptr %129, align 4
  %135 = getelementptr inbounds %struct.stm32_dfsdm, ptr %134, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %129, i32 0, i32 2
  %138 = load i32, ptr %137, align 4
  %139 = shl i32 %138, 7
  %140 = add i32 %139, 256
  %141 = call i32 @regmap_update_bits_base(ptr noundef %136, i32 noundef %140, i32 noundef 2097184, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %142 = load ptr, ptr %130, align 4
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.dma_device, ptr %143, i32 0, i32 47
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %133
  %148 = call i32 %145(ptr noundef %142) #13
  br label %149

149:                                              ; preds = %147, %133, %127, %119
  %150 = phi i32 [ %120, %119 ], [ %125, %127 ], [ %125, %133 ], [ %125, %147 ]
  %151 = load ptr, ptr %4, align 4
  %152 = call i32 @stm32_dfsdm_stop_dfsdm(ptr noundef %151) #13
  br label %153

153:                                              ; preds = %149, %12
  %154 = phi i32 [ %14, %12 ], [ %150, %149 ]
  %155 = load ptr, ptr %6, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  call void @iio_hw_consumer_disable(ptr noundef nonnull %155) #13
  br label %158

158:                                              ; preds = %157, %153, %122, %9
  %159 = phi i32 [ %10, %9 ], [ 0, %122 ], [ %154, %157 ], [ %154, %153 ]
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_predisable(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @stm32_dfsdm_stop_conv(ptr noundef %0)
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.stm32_dfsdm, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 7
  %15 = add i32 %14, 256
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %15, i32 noundef 2097184, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %17 = load ptr, ptr %5, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 47
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %8
  %23 = tail call i32 %20(ptr noundef %17) #13
  br label %24

24:                                               ; preds = %22, %8, %1
  %25 = load ptr, ptr %3, align 4
  %26 = tail call i32 @stm32_dfsdm_stop_dfsdm(ptr noundef %25) #13
  %27 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %3, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void @iio_hw_consumer_disable(ptr noundef nonnull %28) #13
  br label %31

31:                                               ; preds = %30, %24
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_dfsdm_dma_buffer_done(ptr noundef %0) #4 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #13, !annotation !8
  %5 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_chan, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 49
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 %11(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %2) #13
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 14
  %16 = load i32, ptr %15, align 4
  br label %29

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 15
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %19, %21
  %23 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 14
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %22, %24
  %26 = select i1 %25, i32 %19, i32 0
  %27 = sub i32 %22, %24
  %28 = add i32 %27, %26
  br label %29

29:                                               ; preds = %17, %14
  %30 = phi i32 [ %24, %17 ], [ %16, %14 ]
  %31 = phi i32 [ %28, %17 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  %32 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 14
  %33 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %110, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 13
  %38 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 3
  %39 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 2
  %40 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 15
  %41 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 11
  %42 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 12
  %43 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 1
  br label %44

44:                                               ; preds = %108, %36
  %45 = phi i32 [ %34, %36 ], [ %106, %108 ]
  %46 = phi i32 [ %30, %36 ], [ %109, %108 ]
  %47 = phi i32 [ %30, %36 ], [ %99, %108 ]
  %48 = phi i32 [ %31, %36 ], [ %84, %108 ]
  %49 = load ptr, ptr %37, align 4
  %50 = getelementptr i8, ptr %49, i32 %46
  %51 = load i32, ptr %38, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %81, label %53

53:                                               ; preds = %44
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr inbounds %struct.stm32_dfsdm, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %39, align 4
  %58 = getelementptr %struct.stm32_dfsdm_filter, ptr %56, i32 %57, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr %struct.stm32_dfsdm_filter, ptr %56, i32 %57, i32 1, i32 %59, i32 6
  %61 = getelementptr %struct.stm32_dfsdm_filter, ptr %56, i32 %57, i32 1, i32 %59, i32 3
  br label %62

62:                                               ; preds = %72, %53
  %63 = phi i32 [ %51, %53 ], [ %65, %72 ]
  %64 = phi ptr [ %50, %53 ], [ %76, %72 ]
  %65 = add i32 %63, -1
  %66 = load i32, ptr %64, align 4
  %67 = and i32 %66, -256
  store i32 %67, ptr %64, align 4
  %68 = load i32, ptr %60, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = add i32 %67, -1
  store i32 %71, ptr %64, align 4
  br label %72

72:                                               ; preds = %70, %62
  %73 = phi i32 [ %71, %70 ], [ %67, %62 ]
  %74 = load i32, ptr %61, align 4
  %75 = shl i32 %73, %74
  store i32 %75, ptr %64, align 4
  %76 = getelementptr i32, ptr %64, i32 1
  %77 = icmp eq i32 %65, 0
  br i1 %77, label %78, label %62

78:                                               ; preds = %72
  %79 = load i32, ptr %33, align 4
  %80 = load i32, ptr %32, align 4
  br label %81

81:                                               ; preds = %78, %44
  %82 = phi i32 [ %80, %78 ], [ %46, %44 ]
  %83 = phi i32 [ %79, %78 ], [ %45, %44 ]
  %84 = sub i32 %48, %83
  %85 = add i32 %82, %83
  store i32 %85, ptr %32, align 4
  %86 = load i32, ptr %40, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %98, label %88

88:                                               ; preds = %81
  %89 = load ptr, ptr %41, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %37, align 4
  %93 = getelementptr i8, ptr %92, i32 %47
  %94 = sub i32 %86, %47
  %95 = load ptr, ptr %42, align 4
  %96 = call i32 %89(ptr noundef %93, i32 noundef %94, ptr noundef %95) #13
  br label %97

97:                                               ; preds = %91, %88
  store i32 0, ptr %32, align 4
  br label %98

98:                                               ; preds = %97, %81
  %99 = phi i32 [ 0, %97 ], [ %47, %81 ]
  %100 = load ptr, ptr %43, align 4
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 @iio_push_to_buffers(ptr noundef %0, ptr noundef %50) #13
  br label %105

105:                                              ; preds = %103, %98
  %106 = load i32, ptr %33, align 4
  %107 = icmp slt i32 %84, %106
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = load i32, ptr %32, align 4
  br label %44

110:                                              ; preds = %105, %29
  %111 = phi i32 [ %30, %29 ], [ %99, %105 ]
  %112 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 11
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %124, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 13
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %117, i32 %111
  %119 = load i32, ptr %32, align 4
  %120 = sub i32 %119, %111
  %121 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 12
  %122 = load ptr, ptr %121, align 4
  %123 = call i32 %113(ptr noundef %118, i32 noundef %120, ptr noundef %122) #13
  br label %124

124:                                              ; preds = %115, %110
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_audio_init(ptr noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 88, i32 noundef 3520) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %50, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.iio_chan_spec, ptr %6, i32 0, i32 4
  store i32 0, ptr %9, align 4
  %10 = tail call fastcc i32 @stm32_dfsdm_adc_chan_init_one(ptr noundef %1, ptr noundef nonnull %6)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.29) #14
  br label %50

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.iio_chan_spec, ptr %6, i32 0, i32 6
  store i32 4096, ptr %14, align 4
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.stm32_dfsdm, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.iio_chan_spec, ptr %6, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.stm32_dfsdm_channel, ptr %17, i32 %19, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.stm32_dfsdm, ptr %15, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %4, i32 0, i32 9
  store i32 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %23, %13
  %28 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 14
  store i32 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  store ptr %6, ptr %29, align 8
  %30 = load ptr, ptr %3, align 8
  %31 = tail call ptr @dma_request_chan(ptr noundef %0, ptr noundef nonnull @.str.51) #13
  %32 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %30, i32 0, i32 16
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = ptrtoint ptr %31 to i32
  store ptr null, ptr %32, align 4
  br label %50

36:                                               ; preds = %27
  %37 = load ptr, ptr %31, align 4
  %38 = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %30, i32 0, i32 17
  %41 = tail call ptr @dma_alloc_attrs(ptr noundef %39, i32 noundef 16384, ptr noundef %40, i32 noundef 3264, i32 noundef 0) #13
  %42 = getelementptr inbounds %struct.stm32_dfsdm_adc, ptr %30, i32 0, i32 13
  store ptr %41, ptr %42, align 4
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load ptr, ptr %32, align 4
  tail call void @dma_release_channel(ptr noundef %45) #13
  br label %50

46:                                               ; preds = %36
  %47 = load i32, ptr %1, align 8
  %48 = or i32 %47, 4
  store i32 %48, ptr %1, align 8
  %49 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 18
  store ptr @stm32_dfsdm_buffer_setup_ops, ptr %49, align 4
  br label %50

50:                                               ; preds = %46, %44, %34, %12, %2
  %51 = phi i32 [ %10, %12 ], [ -12, %2 ], [ %35, %34 ], [ 0, %46 ], [ -12, %44 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_adc_suspend(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @stm32_dfsdm_predisable(ptr noundef %3)
  br label %10

10:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_adc_resume(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 13
  br label %15

11:                                               ; preds = %15
  %12 = add nuw nsw i32 %16, 1
  %13 = load i32, ptr %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11, %9
  %16 = phi i32 [ 0, %9 ], [ %12, %11 ]
  %17 = load ptr, ptr %10, align 8
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.stm32_dfsdm, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.iio_chan_spec, ptr %17, i32 %16, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.stm32_dfsdm_channel, ptr %20, i32 %22
  %24 = tail call fastcc i32 @stm32_dfsdm_chan_configure(ptr noundef %18, ptr noundef %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %11, label %33

26:                                               ; preds = %11, %1
  %27 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = tail call i32 @stm32_dfsdm_postenable(ptr noundef %3)
  br label %33

33:                                               ; preds = %31, %26, %15
  %34 = phi i32 [ 0, %31 ], [ 0, %26 ], [ %24, %15 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }

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
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 1, i32 2000}
