; ModuleID = '/llk/IR/drivers/iio/adc/stm32-adc.c_pt.bc'
source_filename = "../drivers/iio/adc/stm32-adc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.stm32_adc_cfg = type { ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.stm32_adc_regspec = type { i32, %struct.stm32_adc_regs, %struct.stm32_adc_regs, %struct.stm32_adc_regs, %struct.stm32_adc_regs, ptr, %struct.stm32_adc_regs, %struct.stm32_adc_regs, %struct.stm32_adc_regs, [2 x i32], ptr, %struct.stm32_adc_regs, %struct.stm32_adc_regs, %struct.stm32_adc_regs }
%struct.stm32_adc_regs = type { i32, i32, i32 }
%struct.stm32_adc_info = type { i32, ptr, i32 }
%struct.stm32_adc_trig_info = type { ptr, i32 }
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
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
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
%struct.stm32_adc = type { ptr, i32, ptr, %struct.completion, [4 x i8], [20 x i16], ptr, i32, %struct.spinlock, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, [2 x i32], %struct.stm32_adc_calib, %struct.stm32_adc_vrefint, [20 x [16 x i8]], i32, [3 x i32] }
%struct.stm32_adc_calib = type { i32, i32, [6 x i32], i8 }
%struct.stm32_adc_vrefint = type { i32, i32 }
%struct.stm32_adc_common = type { ptr, i32, i32, i32, %struct.spinlock }
%struct.stm32_adc_diff_channel = type { i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.64 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }

@stm32_adc_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f4-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32f4_adc_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_adc_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_adc_cfg }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author235 = internal constant [48 x i8] c"author=Fabrice Gasnier <fabrice.gasnier@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [52 x i8] c"description=STMicroelectronics STM32 ADC IIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias238 = internal constant [25 x i8] c"alias=platform:stm32-adc\00", section ".modinfo", align 1
@stm32f4_adc_cfg = internal constant %struct.stm32_adc_cfg { ptr @stm32f4_adc_regspec, ptr @stm32f4_adc_info, ptr @stm32f4_adc_trigs, i8 1, i8 0, ptr null, ptr @stm32f4_adc_start_conv, ptr @stm32f4_adc_stop_conv, ptr null, ptr @stm32f4_adc_irq_clear, ptr @stm32f4_adc_smp_cycles, i32 0 }, align 4
@stm32h7_adc_cfg = internal constant %struct.stm32_adc_cfg { ptr @stm32h7_adc_regspec, ptr @stm32h7_adc_info, ptr @stm32h7_adc_trigs, i8 0, i8 0, ptr @stm32h7_adc_prepare, ptr @stm32h7_adc_start_conv, ptr @stm32h7_adc_stop_conv, ptr @stm32h7_adc_unprepare, ptr @stm32h7_adc_irq_clear, ptr @stm32h7_adc_smp_cycles, i32 0 }, align 4
@stm32mp1_adc_cfg = internal constant %struct.stm32_adc_cfg { ptr @stm32mp1_adc_regspec, ptr @stm32h7_adc_info, ptr @stm32h7_adc_trigs, i8 0, i8 1, ptr @stm32h7_adc_prepare, ptr @stm32h7_adc_start_conv, ptr @stm32h7_adc_stop_conv, ptr @stm32h7_adc_unprepare, ptr @stm32h7_adc_irq_clear, ptr @stm32h7_adc_smp_cycles, i32 4300 }, align 4
@stm32f4_adc_regspec = internal constant %struct.stm32_adc_regspec { i32 76, %struct.stm32_adc_regs { i32 4, i32 32, i32 0 }, %struct.stm32_adc_regs { i32 4, i32 67108864, i32 0 }, %struct.stm32_adc_regs { i32 0, i32 2, i32 0 }, %struct.stm32_adc_regs { i32 0, i32 32, i32 0 }, ptr @stm32f4_sq, %struct.stm32_adc_regs { i32 8, i32 805306368, i32 28 }, %struct.stm32_adc_regs { i32 8, i32 251658240, i32 24 }, %struct.stm32_adc_regs { i32 4, i32 50331648, i32 24 }, [2 x i32] [i32 12, i32 16], ptr @stm32f4_smp_bits, %struct.stm32_adc_regs zeroinitializer, %struct.stm32_adc_regs zeroinitializer, %struct.stm32_adc_regs zeroinitializer }, align 4
@stm32f4_adc_info = internal constant %struct.stm32_adc_info { i32 16, ptr @stm32f4_adc_resolutions, i32 4 }, align 4
@stm32f4_adc_trigs = internal global [16 x %struct.stm32_adc_trig_info] [%struct.stm32_adc_trig_info { ptr @.str, i32 0 }, %struct.stm32_adc_trig_info { ptr @.str.1, i32 1 }, %struct.stm32_adc_trig_info { ptr @.str.2, i32 2 }, %struct.stm32_adc_trig_info { ptr @.str.3, i32 3 }, %struct.stm32_adc_trig_info { ptr @.str.4, i32 4 }, %struct.stm32_adc_trig_info { ptr @.str.5, i32 5 }, %struct.stm32_adc_trig_info { ptr @.str.6, i32 6 }, %struct.stm32_adc_trig_info { ptr @.str.7, i32 7 }, %struct.stm32_adc_trig_info { ptr @.str.8, i32 8 }, %struct.stm32_adc_trig_info { ptr @.str.9, i32 9 }, %struct.stm32_adc_trig_info { ptr @.str.10, i32 10 }, %struct.stm32_adc_trig_info { ptr @.str.11, i32 11 }, %struct.stm32_adc_trig_info { ptr @.str.12, i32 12 }, %struct.stm32_adc_trig_info { ptr @.str.13, i32 13 }, %struct.stm32_adc_trig_info { ptr @.str.14, i32 14 }, %struct.stm32_adc_trig_info zeroinitializer], align 4
@stm32f4_adc_smp_cycles = internal constant [8 x i32] [i32 3, i32 15, i32 28, i32 56, i32 84, i32 112, i32 144, i32 480], align 4
@stm32f4_sq = internal constant [17 x %struct.stm32_adc_regs] [%struct.stm32_adc_regs { i32 44, i32 15728640, i32 20 }, %struct.stm32_adc_regs { i32 52, i32 31, i32 0 }, %struct.stm32_adc_regs { i32 52, i32 992, i32 5 }, %struct.stm32_adc_regs { i32 52, i32 31744, i32 10 }, %struct.stm32_adc_regs { i32 52, i32 1015808, i32 15 }, %struct.stm32_adc_regs { i32 52, i32 32505856, i32 20 }, %struct.stm32_adc_regs { i32 52, i32 1040187392, i32 25 }, %struct.stm32_adc_regs { i32 48, i32 31, i32 0 }, %struct.stm32_adc_regs { i32 48, i32 992, i32 5 }, %struct.stm32_adc_regs { i32 48, i32 31744, i32 10 }, %struct.stm32_adc_regs { i32 48, i32 1015808, i32 15 }, %struct.stm32_adc_regs { i32 48, i32 32505856, i32 20 }, %struct.stm32_adc_regs { i32 48, i32 1040187392, i32 25 }, %struct.stm32_adc_regs { i32 44, i32 31, i32 0 }, %struct.stm32_adc_regs { i32 44, i32 992, i32 5 }, %struct.stm32_adc_regs { i32 44, i32 31744, i32 10 }, %struct.stm32_adc_regs { i32 44, i32 1015808, i32 15 }], align 4
@stm32f4_smp_bits = internal constant [19 x %struct.stm32_adc_regs] [%struct.stm32_adc_regs { i32 1, i32 7, i32 0 }, %struct.stm32_adc_regs { i32 1, i32 56, i32 3 }, %struct.stm32_adc_regs { i32 1, i32 448, i32 6 }, %struct.stm32_adc_regs { i32 1, i32 3584, i32 9 }, %struct.stm32_adc_regs { i32 1, i32 28672, i32 12 }, %struct.stm32_adc_regs { i32 1, i32 229376, i32 15 }, %struct.stm32_adc_regs { i32 1, i32 1835008, i32 18 }, %struct.stm32_adc_regs { i32 1, i32 14680064, i32 21 }, %struct.stm32_adc_regs { i32 1, i32 117440512, i32 24 }, %struct.stm32_adc_regs { i32 1, i32 939524096, i32 27 }, %struct.stm32_adc_regs { i32 0, i32 7, i32 0 }, %struct.stm32_adc_regs { i32 0, i32 56, i32 3 }, %struct.stm32_adc_regs { i32 0, i32 448, i32 6 }, %struct.stm32_adc_regs { i32 0, i32 3584, i32 9 }, %struct.stm32_adc_regs { i32 0, i32 28672, i32 12 }, %struct.stm32_adc_regs { i32 0, i32 229376, i32 15 }, %struct.stm32_adc_regs { i32 0, i32 1835008, i32 18 }, %struct.stm32_adc_regs { i32 0, i32 14680064, i32 21 }, %struct.stm32_adc_regs { i32 0, i32 117440512, i32 24 }], align 4
@stm32f4_adc_resolutions = internal constant [4 x i32] [i32 12, i32 10, i32 8, i32 6], align 4
@.str = private unnamed_addr constant [9 x i8] c"tim1_ch1\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tim1_ch2\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"tim1_ch3\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"tim2_ch2\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"tim2_ch3\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"tim2_ch4\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"tim2_trgo\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"tim3_ch1\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"tim3_trgo\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"tim4_ch4\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"tim5_ch1\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"tim5_ch2\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"tim5_ch3\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"tim8_ch1\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"tim8_trgo\00", align 1
@stm32h7_adc_regspec = internal constant %struct.stm32_adc_regspec { i32 64, %struct.stm32_adc_regs { i32 4, i32 4, i32 0 }, %struct.stm32_adc_regs { i32 4, i32 16, i32 0 }, %struct.stm32_adc_regs { i32 0, i32 4, i32 0 }, %struct.stm32_adc_regs { i32 0, i32 16, i32 0 }, ptr @stm32h7_sq, %struct.stm32_adc_regs { i32 12, i32 3072, i32 10 }, %struct.stm32_adc_regs { i32 12, i32 992, i32 5 }, %struct.stm32_adc_regs { i32 12, i32 28, i32 2 }, [2 x i32] [i32 20, i32 24], ptr @stm32h7_smp_bits, %struct.stm32_adc_regs zeroinitializer, %struct.stm32_adc_regs zeroinitializer, %struct.stm32_adc_regs zeroinitializer }, align 4
@stm32h7_adc_info = internal constant %struct.stm32_adc_info { i32 20, ptr @stm32h7_adc_resolutions, i32 5 }, align 4
@stm32h7_adc_trigs = internal global [19 x %struct.stm32_adc_trig_info] [%struct.stm32_adc_trig_info { ptr @.str, i32 0 }, %struct.stm32_adc_trig_info { ptr @.str.1, i32 1 }, %struct.stm32_adc_trig_info { ptr @.str.2, i32 2 }, %struct.stm32_adc_trig_info { ptr @.str.3, i32 3 }, %struct.stm32_adc_trig_info { ptr @.str.8, i32 4 }, %struct.stm32_adc_trig_info { ptr @.str.9, i32 5 }, %struct.stm32_adc_trig_info { ptr @.str.14, i32 7 }, %struct.stm32_adc_trig_info { ptr @.str.15, i32 8 }, %struct.stm32_adc_trig_info { ptr @.str.16, i32 9 }, %struct.stm32_adc_trig_info { ptr @.str.17, i32 10 }, %struct.stm32_adc_trig_info { ptr @.str.6, i32 11 }, %struct.stm32_adc_trig_info { ptr @.str.18, i32 12 }, %struct.stm32_adc_trig_info { ptr @.str.19, i32 13 }, %struct.stm32_adc_trig_info { ptr @.str.20, i32 14 }, %struct.stm32_adc_trig_info { ptr @.str.21, i32 15 }, %struct.stm32_adc_trig_info { ptr @.str.22, i32 18 }, %struct.stm32_adc_trig_info { ptr @.str.23, i32 19 }, %struct.stm32_adc_trig_info { ptr @.str.24, i32 20 }, %struct.stm32_adc_trig_info zeroinitializer], align 4
@stm32h7_adc_smp_cycles = internal constant [8 x i32] [i32 1, i32 2, i32 8, i32 16, i32 32, i32 64, i32 387, i32 810], align 4
@stm32h7_sq = internal constant [17 x %struct.stm32_adc_regs] [%struct.stm32_adc_regs { i32 48, i32 15, i32 0 }, %struct.stm32_adc_regs { i32 48, i32 1984, i32 6 }, %struct.stm32_adc_regs { i32 48, i32 126976, i32 12 }, %struct.stm32_adc_regs { i32 48, i32 8126464, i32 18 }, %struct.stm32_adc_regs { i32 48, i32 520093696, i32 24 }, %struct.stm32_adc_regs { i32 52, i32 31, i32 0 }, %struct.stm32_adc_regs { i32 52, i32 1984, i32 6 }, %struct.stm32_adc_regs { i32 52, i32 126976, i32 12 }, %struct.stm32_adc_regs { i32 52, i32 8126464, i32 18 }, %struct.stm32_adc_regs { i32 52, i32 520093696, i32 24 }, %struct.stm32_adc_regs { i32 56, i32 31, i32 0 }, %struct.stm32_adc_regs { i32 56, i32 1984, i32 6 }, %struct.stm32_adc_regs { i32 56, i32 126976, i32 12 }, %struct.stm32_adc_regs { i32 56, i32 8126464, i32 18 }, %struct.stm32_adc_regs { i32 56, i32 520093696, i32 24 }, %struct.stm32_adc_regs { i32 60, i32 31, i32 0 }, %struct.stm32_adc_regs { i32 60, i32 1984, i32 6 }], align 4
@stm32h7_smp_bits = internal constant [20 x %struct.stm32_adc_regs] [%struct.stm32_adc_regs { i32 0, i32 7, i32 0 }, %struct.stm32_adc_regs { i32 0, i32 56, i32 3 }, %struct.stm32_adc_regs { i32 0, i32 448, i32 6 }, %struct.stm32_adc_regs { i32 0, i32 3584, i32 9 }, %struct.stm32_adc_regs { i32 0, i32 28672, i32 12 }, %struct.stm32_adc_regs { i32 0, i32 229376, i32 15 }, %struct.stm32_adc_regs { i32 0, i32 1835008, i32 18 }, %struct.stm32_adc_regs { i32 0, i32 14680064, i32 21 }, %struct.stm32_adc_regs { i32 0, i32 117440512, i32 24 }, %struct.stm32_adc_regs { i32 0, i32 939524096, i32 27 }, %struct.stm32_adc_regs { i32 1, i32 7, i32 0 }, %struct.stm32_adc_regs { i32 1, i32 56, i32 3 }, %struct.stm32_adc_regs { i32 1, i32 448, i32 6 }, %struct.stm32_adc_regs { i32 1, i32 3584, i32 9 }, %struct.stm32_adc_regs { i32 1, i32 28672, i32 12 }, %struct.stm32_adc_regs { i32 1, i32 229376, i32 15 }, %struct.stm32_adc_regs { i32 1, i32 1835008, i32 18 }, %struct.stm32_adc_regs { i32 1, i32 14680064, i32 21 }, %struct.stm32_adc_regs { i32 1, i32 117440512, i32 24 }, %struct.stm32_adc_regs { i32 1, i32 939524096, i32 27 }], align 4
@stm32h7_adc_resolutions = internal constant [5 x i32] [i32 16, i32 14, i32 12, i32 10, i32 8], align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"tim8_trgo2\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"tim1_trgo\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"tim1_trgo2\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"tim4_trgo\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"tim6_trgo\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"tim15_trgo\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"tim3_ch4\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"lptim1_out\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"lptim2_out\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"lptim3_out\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Failed to exit power down\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"calibration failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"Failed to enable ADC\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"Failed to write calfact\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Failed to read calfact\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"calfact not consistent\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"Failed to disable\0A\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"stop failed\0A\00", align 1
@stm32mp1_adc_regspec = internal constant %struct.stm32_adc_regspec { i32 64, %struct.stm32_adc_regs { i32 4, i32 4, i32 0 }, %struct.stm32_adc_regs { i32 4, i32 16, i32 0 }, %struct.stm32_adc_regs { i32 0, i32 4, i32 0 }, %struct.stm32_adc_regs { i32 0, i32 16, i32 0 }, ptr @stm32h7_sq, %struct.stm32_adc_regs { i32 12, i32 3072, i32 10 }, %struct.stm32_adc_regs { i32 12, i32 992, i32 5 }, %struct.stm32_adc_regs { i32 12, i32 28, i32 2 }, [2 x i32] [i32 20, i32 24], ptr @stm32h7_smp_bits, %struct.stm32_adc_regs { i32 208, i32 1, i32 0 }, %struct.stm32_adc_regs { i32 776, i32 16777216, i32 0 }, %struct.stm32_adc_regs { i32 776, i32 4194304, i32 0 } }, align 4
@stm32_adc_driver = internal global %struct.platform_driver { ptr @stm32_adc_probe, ptr @stm32_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.33, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_adc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.33 = private unnamed_addr constant [10 x i8] c"stm32-adc\00", align 1
@stm32_adc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_adc_suspend, ptr @stm32_adc_resume, ptr @stm32_adc_suspend, ptr @stm32_adc_resume, ptr @stm32_adc_suspend, ptr @stm32_adc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adc_runtime_suspend, ptr @stm32_adc_runtime_resume, ptr null }, align 4
@stm32_adc_iio_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @stm32_adc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adc_validate_trigger, ptr @stm32_adc_update_scan_mode, ptr @stm32_adc_debugfs_reg_access, ptr @stm32_adc_of_xlate, ptr @stm32_adc_set_watermark, ptr null }, align 4
@.str.34 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"missing reg property\0A\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"Can't get clock\0A\00", align 1
@stm32_adc_buffer_setup_ops = internal constant %struct.iio_buffer_setup_ops { ptr null, ptr @stm32_adc_buffer_postenable, ptr @stm32_adc_buffer_predisable, ptr null, ptr null }, align 4
@.str.38 = private unnamed_addr constant [21 x i8] c"buffer setup failed\0A\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"iio dev register failed\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"Overrun, stopping: restart needed\0A\00", align 1
@stm32_adc_threaded_isr._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.stm32_adc_threaded_isr = private unnamed_addr constant [23 x i8] c"stm32_adc_threaded_isr\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"Unexpected IRQ: IER=0x%08x, ISR=0x%08x\0A\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"assigned-resolution-bits\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"Bad resolution: %u bits\0A\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"DMA channel request failed with\0A\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"No channel found\0A\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"Channel number [%d] exceeds %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"st,adc-channels\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"Bad st,adc-channels?\0A\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"st,adc-diff-channels\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"Bad st,adc-diff-channels?\0A\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"st,min-sample-time-nsecs\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"Invalid st,min-sample-time-nsecs\0A\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"Failed to get diff channels %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"Invalid channel in%d-in%d\0A\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"Invalid channel %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"channel %d misconfigured\0A\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"in%d-in%d\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"in%d\00", align 1
@stm32_adc_ext_info = internal constant [3 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.61, i32 3, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @stm32_adc_trig_pol to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.62, i32 3, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @stm32_adc_trig_pol to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], align 4
@.str.61 = private unnamed_addr constant [17 x i8] c"trigger_polarity\00", align 1
@stm32_adc_trig_pol = internal constant %struct.iio_enum { ptr @stm32_trig_pol_items, i32 3, ptr @stm32_adc_set_trig_pol, ptr @stm32_adc_get_trig_pol }, align 4
@.str.62 = private unnamed_addr constant [27 x i8] c"trigger_polarity_available\00", align 1
@stm32_trig_pol_items = internal constant [3 x ptr] [ptr @.str.63, ptr @.str.64, ptr @.str.65], align 4
@.str.63 = private unnamed_addr constant [12 x i8] c"rising-edge\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"falling-edge\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"both-edges\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"Missing channel index %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"Label %s exceeds %d characters\0A\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"Invalid label %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"diff-channels\00", align 1
@.str.71 = private unnamed_addr constant [35 x i8] c"Invalid diff-channels property %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"st,min-sample-time-ns\00", align 1
@.str.73 = private unnamed_addr constant [43 x i8] c"Invalid st,min-sample-time-ns property %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"vrefint\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"nvmem access error\0A\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"vddcore\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"vbat\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"Can't set trigger\0A\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"Can't start dma\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias238, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_license237], section "llvm.metadata"

@__mod_of__stm32_adc_of_match_device_table = dso_local alias [4 x %struct.of_device_id], ptr @stm32_adc_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_adc_driver, ptr noundef nonnull @__this_module) #15
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_adc_driver) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32f4_adc_start_conv(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 8
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #15
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = getelementptr i8, ptr %11, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #15, !srcloc !8
  %14 = or i32 %13, 256
  %15 = load ptr, ptr %4, align 8
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %9, align 4
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %14) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #15
  br i1 %1, label %20, label %34

20:                                               ; preds = %2
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #15
  %22 = load ptr, ptr %4, align 8
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %9, align 4
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = getelementptr i8, ptr %25, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #15, !srcloc !8
  %28 = or i32 %27, 768
  %29 = load ptr, ptr %4, align 8
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %9, align 4
  %32 = getelementptr i8, ptr %30, i32 %31
  %33 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %28) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %21) #15
  br label %34

34:                                               ; preds = %20, %2
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #15
  %36 = load ptr, ptr %4, align 8
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %9, align 4
  %39 = getelementptr i8, ptr %37, i32 %38
  %40 = getelementptr i8, ptr %39, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #15, !srcloc !8
  %42 = or i32 %41, 1025
  %43 = load ptr, ptr %4, align 8
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %9, align 4
  %46 = getelementptr i8, ptr %44, i32 %45
  %47 = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %42) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %35) #15
  tail call void @usleep_range_state(i32 noundef 2, i32 noundef 3, i32 noundef 2) #15
  %48 = load ptr, ptr %4, align 8
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %9, align 4
  %51 = getelementptr i8, ptr %49, i32 %50
  %52 = getelementptr i8, ptr %51, i32 8
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #15, !srcloc !8
  %54 = and i32 %53, 805306368
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %34
  %57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #15
  %58 = load ptr, ptr %4, align 8
  %59 = load ptr, ptr %58, align 4
  %60 = load i32, ptr %9, align 4
  %61 = getelementptr i8, ptr %59, i32 %60
  %62 = getelementptr i8, ptr %61, i32 8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #15, !srcloc !8
  %64 = or i32 %63, 1073741824
  %65 = load ptr, ptr %4, align 8
  %66 = load ptr, ptr %65, align 4
  %67 = load i32, ptr %9, align 4
  %68 = getelementptr i8, ptr %66, i32 %67
  %69 = getelementptr i8, ptr %68, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %64) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %57) #15
  br label %70

70:                                               ; preds = %56, %34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32f4_adc_stop_conv(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #15, !srcloc !8
  %13 = and i32 %12, -805306369
  %14 = load ptr, ptr %3, align 8
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %8, align 4
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %13) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %20 = load ptr, ptr %3, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %8, align 4
  %23 = getelementptr i8, ptr %21, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #15, !srcloc !8
  %25 = and i32 %24, -17
  %26 = load ptr, ptr %3, align 8
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %8, align 4
  %29 = getelementptr i8, ptr %27, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %25) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %19) #15
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %31 = load ptr, ptr %3, align 8
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %8, align 4
  %34 = getelementptr i8, ptr %32, i32 %33
  %35 = getelementptr i8, ptr %34, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #15, !srcloc !8
  %37 = and i32 %36, -257
  %38 = load ptr, ptr %3, align 8
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr %8, align 4
  %41 = getelementptr i8, ptr %39, i32 %40
  %42 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %37) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %30) #15
  %43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %44 = load ptr, ptr %3, align 8
  %45 = load ptr, ptr %44, align 4
  %46 = load i32, ptr %8, align 4
  %47 = getelementptr i8, ptr %45, i32 %46
  %48 = getelementptr i8, ptr %47, i32 8
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #15, !srcloc !8
  %50 = and i32 %49, -770
  %51 = load ptr, ptr %3, align 8
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %8, align 4
  %54 = getelementptr i8, ptr %52, i32 %53
  %55 = getelementptr i8, ptr %54, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %50) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %43) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32f4_adc_irq_clear(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 8
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #15
  %12 = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = getelementptr i8, ptr %16, i32 %9
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #15, !srcloc !8
  %19 = xor i32 %1, -1
  %20 = and i32 %18, %19
  %21 = load ptr, ptr %4, align 8
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %14, align 4
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = getelementptr i8, ptr %24, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %20) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32h7_adc_prepare(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #15, !srcloc !8
  %13 = and i32 %12, -536870913
  %14 = load ptr, ptr %3, align 8
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %8, align 4
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %13) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %20 = load ptr, ptr %3, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %8, align 4
  %23 = getelementptr i8, ptr %21, i32 %22
  %24 = getelementptr i8, ptr %23, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #15, !srcloc !8
  %26 = or i32 %25, 268435456
  %27 = load ptr, ptr %3, align 8
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %8, align 4
  %30 = getelementptr i8, ptr %28, i32 %29
  %31 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %26) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %19) #15
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.stm32_adc_common, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %34, 20000000
  br i1 %35, label %36, label %50

36:                                               ; preds = %1
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %38 = load ptr, ptr %3, align 8
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr %8, align 4
  %41 = getelementptr i8, ptr %39, i32 %40
  %42 = getelementptr i8, ptr %41, i32 8
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #15, !srcloc !8
  %44 = or i32 %43, 256
  %45 = load ptr, ptr %3, align 8
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %8, align 4
  %48 = getelementptr i8, ptr %46, i32 %47
  %49 = getelementptr i8, ptr %48, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %44) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %37) #15
  br label %50

50:                                               ; preds = %36, %1
  %51 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %52, i32 0, i32 4
  %54 = load i8, ptr %53, align 1, !range !10
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #15
  br label %103

57:                                               ; preds = %50
  %58 = tail call i64 @ktime_get() #15
  %59 = add i64 %58, 100000000
  %60 = load ptr, ptr %3, align 8
  %61 = load ptr, ptr %60, align 4
  %62 = load i32, ptr %8, align 4
  %63 = getelementptr i8, ptr %61, i32 %62
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #15, !srcloc !8
  %65 = and i32 %64, 4096
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %76, %57
  %68 = tail call i64 @ktime_get() #15
  %69 = icmp sgt i64 %68, %59
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load ptr, ptr %3, align 8
  %72 = load ptr, ptr %71, align 4
  %73 = load i32, ptr %8, align 4
  %74 = getelementptr i8, ptr %72, i32 %73
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #15, !srcloc !8
  br label %84

76:                                               ; preds = %67
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #15
  %77 = load ptr, ptr %3, align 8
  %78 = load ptr, ptr %77, align 4
  %79 = load i32, ptr %8, align 4
  %80 = getelementptr i8, ptr %78, i32 %79
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #15, !srcloc !8
  %82 = and i32 %81, 4096
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %67, label %84

84:                                               ; preds = %76, %70, %57
  %85 = phi i32 [ %75, %70 ], [ %64, %57 ], [ %81, %76 ]
  %86 = and i32 %85, 4096
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %90 = load ptr, ptr %3, align 8
  %91 = load ptr, ptr %90, align 4
  %92 = load i32, ptr %8, align 4
  %93 = getelementptr i8, ptr %91, i32 %92
  %94 = getelementptr i8, ptr %93, i32 8
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #15, !srcloc !8
  %96 = or i32 %95, 536870912
  %97 = load ptr, ptr %3, align 8
  %98 = load ptr, ptr %97, align 4
  %99 = load i32, ptr %8, align 4
  %100 = getelementptr i8, ptr %98, i32 %99
  %101 = getelementptr i8, ptr %100, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %96) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %89) #15
  %102 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.25) #16
  br label %655

103:                                              ; preds = %84, %56
  %104 = load ptr, ptr %2, align 8
  %105 = getelementptr inbounds %struct.stm32_adc, ptr %104, i32 0, i32 20, i32 3
  %106 = load i8, ptr %105, align 4, !range !10
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %253

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.stm32_adc, ptr %104, i32 0, i32 8
  %110 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %109) #15
  %111 = load ptr, ptr %104, align 8
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.stm32_adc, ptr %104, i32 0, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr i8, ptr %112, i32 %114
  %116 = getelementptr i8, ptr %115, i32 8
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #15, !srcloc !8
  %118 = and i32 %117, -1073741825
  %119 = load ptr, ptr %104, align 8
  %120 = load ptr, ptr %119, align 4
  %121 = load i32, ptr %113, align 4
  %122 = getelementptr i8, ptr %120, i32 %121
  %123 = getelementptr i8, ptr %122, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %118) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %109, i32 noundef %110) #15
  %124 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %109) #15
  %125 = load ptr, ptr %104, align 8
  %126 = load ptr, ptr %125, align 4
  %127 = load i32, ptr %113, align 4
  %128 = getelementptr i8, ptr %126, i32 %127
  %129 = getelementptr i8, ptr %128, i32 8
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #15, !srcloc !8
  %131 = and i32 %130, -65537
  %132 = load ptr, ptr %104, align 8
  %133 = load ptr, ptr %132, align 4
  %134 = load i32, ptr %113, align 4
  %135 = getelementptr i8, ptr %133, i32 %134
  %136 = getelementptr i8, ptr %135, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %131) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %109, i32 noundef %124) #15
  %137 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %109) #15
  %138 = load ptr, ptr %104, align 8
  %139 = load ptr, ptr %138, align 4
  %140 = load i32, ptr %113, align 4
  %141 = getelementptr i8, ptr %139, i32 %140
  %142 = getelementptr i8, ptr %141, i32 8
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #15, !srcloc !8
  %144 = or i32 %143, -2147483648
  %145 = load ptr, ptr %104, align 8
  %146 = load ptr, ptr %145, align 4
  %147 = load i32, ptr %113, align 4
  %148 = getelementptr i8, ptr %146, i32 %147
  %149 = getelementptr i8, ptr %148, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %144) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %109, i32 noundef %137) #15
  %150 = tail call i64 @ktime_get() #15
  %151 = add i64 %150, 100000000
  %152 = load ptr, ptr %104, align 8
  %153 = load ptr, ptr %152, align 4
  %154 = load i32, ptr %113, align 4
  %155 = getelementptr i8, ptr %153, i32 %154
  %156 = getelementptr i8, ptr %155, i32 8
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #15, !srcloc !8
  %158 = icmp sgt i32 %157, -1
  br i1 %158, label %178, label %159

159:                                              ; preds = %162, %108
  %160 = tail call i64 @ktime_get() #15
  %161 = icmp sgt i64 %160, %151
  br i1 %161, label %170, label %162

162:                                              ; preds = %159
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #15
  %163 = load ptr, ptr %104, align 8
  %164 = load ptr, ptr %163, align 4
  %165 = load i32, ptr %113, align 4
  %166 = getelementptr i8, ptr %164, i32 8
  %167 = getelementptr i8, ptr %166, i32 %165
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #15, !srcloc !8
  %169 = icmp sgt i32 %168, -1
  br i1 %169, label %178, label %159

170:                                              ; preds = %159
  %171 = load ptr, ptr %104, align 8
  %172 = load ptr, ptr %171, align 4
  %173 = load i32, ptr %113, align 4
  %174 = getelementptr i8, ptr %172, i32 %173
  %175 = getelementptr i8, ptr %174, i32 8
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %175) #15, !srcloc !8
  %177 = icmp sgt i32 %176, -1
  br i1 %177, label %178, label %233

178:                                              ; preds = %170, %162, %108
  %179 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %109) #15
  %180 = load ptr, ptr %104, align 8
  %181 = load ptr, ptr %180, align 4
  %182 = load i32, ptr %113, align 4
  %183 = getelementptr i8, ptr %181, i32 %182
  %184 = getelementptr i8, ptr %183, i32 8
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %184) #15, !srcloc !8
  %186 = or i32 %185, 1073807360
  %187 = load ptr, ptr %104, align 8
  %188 = load ptr, ptr %187, align 4
  %189 = load i32, ptr %113, align 4
  %190 = getelementptr i8, ptr %188, i32 %189
  %191 = getelementptr i8, ptr %190, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 %186) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %109, i32 noundef %179) #15
  %192 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %109) #15
  %193 = load ptr, ptr %104, align 8
  %194 = load ptr, ptr %193, align 4
  %195 = load i32, ptr %113, align 4
  %196 = getelementptr i8, ptr %194, i32 %195
  %197 = getelementptr i8, ptr %196, i32 8
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %197) #15, !srcloc !8
  %199 = or i32 %198, -2147483648
  %200 = load ptr, ptr %104, align 8
  %201 = load ptr, ptr %200, align 4
  %202 = load i32, ptr %113, align 4
  %203 = getelementptr i8, ptr %201, i32 %202
  %204 = getelementptr i8, ptr %203, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %199) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %109, i32 noundef %192) #15
  %205 = tail call i64 @ktime_get() #15
  %206 = add i64 %205, 100000000
  %207 = load ptr, ptr %104, align 8
  %208 = load ptr, ptr %207, align 4
  %209 = load i32, ptr %113, align 4
  %210 = getelementptr i8, ptr %208, i32 %209
  %211 = getelementptr i8, ptr %210, i32 8
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #15, !srcloc !8
  %213 = icmp sgt i32 %212, -1
  br i1 %213, label %235, label %214

214:                                              ; preds = %217, %178
  %215 = tail call i64 @ktime_get() #15
  %216 = icmp sgt i64 %215, %206
  br i1 %216, label %225, label %217

217:                                              ; preds = %214
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #15
  %218 = load ptr, ptr %104, align 8
  %219 = load ptr, ptr %218, align 4
  %220 = load i32, ptr %113, align 4
  %221 = getelementptr i8, ptr %219, i32 8
  %222 = getelementptr i8, ptr %221, i32 %220
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %222) #15, !srcloc !8
  %224 = icmp sgt i32 %223, -1
  br i1 %224, label %235, label %214

225:                                              ; preds = %214
  %226 = load ptr, ptr %104, align 8
  %227 = load ptr, ptr %226, align 4
  %228 = load i32, ptr %113, align 4
  %229 = getelementptr i8, ptr %227, i32 %228
  %230 = getelementptr i8, ptr %229, i32 8
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %230) #15, !srcloc !8
  %232 = icmp sgt i32 %231, -1
  br i1 %232, label %235, label %233

233:                                              ; preds = %225, %170
  %234 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.26) #16
  br label %235

235:                                              ; preds = %233, %225, %217, %178
  %236 = phi i1 [ false, %178 ], [ false, %225 ], [ true, %233 ], [ false, %217 ]
  %237 = phi i32 [ 0, %178 ], [ 0, %225 ], [ -110, %233 ], [ 0, %217 ]
  %238 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %109) #15
  %239 = load ptr, ptr %104, align 8
  %240 = load ptr, ptr %239, align 4
  %241 = load i32, ptr %113, align 4
  %242 = getelementptr i8, ptr %240, i32 %241
  %243 = getelementptr i8, ptr %242, i32 8
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %243) #15, !srcloc !8
  %245 = and i32 %244, -1073807361
  %246 = load ptr, ptr %104, align 8
  %247 = load ptr, ptr %246, align 4
  %248 = load i32, ptr %113, align 4
  %249 = getelementptr i8, ptr %247, i32 %248
  %250 = getelementptr i8, ptr %249, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %245) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %109, i32 noundef %238) #15
  br i1 %236, label %627, label %251

251:                                              ; preds = %235
  %252 = load ptr, ptr %2, align 8
  br label %253

253:                                              ; preds = %251, %103
  %254 = phi ptr [ %252, %251 ], [ %104, %103 ]
  %255 = getelementptr inbounds %struct.stm32_adc, ptr %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.stm32_adc, ptr %254, i32 0, i32 8
  %257 = getelementptr inbounds %struct.stm32_adc, ptr %254, i32 0, i32 1
  br label %258

258:                                              ; preds = %326, %253
  %259 = phi i32 [ 0, %253 ], [ %327, %326 ]
  %260 = getelementptr %struct.stm32_adc, ptr %254, i32 0, i32 24, i32 %259
  %261 = load i32, ptr %260, align 4
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %326, label %263

263:                                              ; preds = %258
  switch i32 %259, label %326 [
    i32 0, label %264
    i32 1, label %284
    i32 2, label %305
  ]

264:                                              ; preds = %263
  %265 = load ptr, ptr %255, align 8
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %266, i32 0, i32 11
  %268 = load i32, ptr %267, align 4
  %269 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %266, i32 0, i32 11, i32 1
  %270 = load i32, ptr %269, align 4
  %271 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %256) #15
  %272 = load ptr, ptr %254, align 8
  %273 = load ptr, ptr %272, align 4
  %274 = load i32, ptr %257, align 4
  %275 = getelementptr i8, ptr %273, i32 %274
  %276 = getelementptr i8, ptr %275, i32 %268
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %276) #15, !srcloc !8
  %278 = or i32 %277, %270
  %279 = load ptr, ptr %254, align 8
  %280 = load ptr, ptr %279, align 4
  %281 = load i32, ptr %257, align 4
  %282 = getelementptr i8, ptr %280, i32 %281
  %283 = getelementptr i8, ptr %282, i32 %268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %283, i32 %278) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %256, i32 noundef %271) #15
  br label %326

284:                                              ; preds = %263
  %285 = load ptr, ptr %255, align 8
  %286 = load ptr, ptr %285, align 4
  %287 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %286, i32 0, i32 13
  %288 = load i32, ptr %287, align 4
  %289 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %286, i32 0, i32 13, i32 1
  %290 = load i32, ptr %289, align 4
  %291 = load ptr, ptr %254, align 8
  %292 = getelementptr inbounds %struct.stm32_adc_common, ptr %291, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %292) #15
  %293 = load ptr, ptr %254, align 8
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr i8, ptr %294, i32 %288
  %296 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %295) #15, !srcloc !8
  %297 = or i32 %296, %290
  %298 = load ptr, ptr %254, align 8
  %299 = load ptr, ptr %298, align 4
  %300 = getelementptr i8, ptr %299, i32 %288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %300, i32 %297) #15, !srcloc !9
  %301 = load ptr, ptr %254, align 8
  %302 = getelementptr inbounds %struct.stm32_adc_common, ptr %301, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !11
  %303 = load i16, ptr %302, align 4
  %304 = add i16 %303, 1
  store i16 %304, ptr %302, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  br label %326

305:                                              ; preds = %263
  %306 = load ptr, ptr %255, align 8
  %307 = load ptr, ptr %306, align 4
  %308 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %307, i32 0, i32 12
  %309 = load i32, ptr %308, align 4
  %310 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %307, i32 0, i32 12, i32 1
  %311 = load i32, ptr %310, align 4
  %312 = load ptr, ptr %254, align 8
  %313 = getelementptr inbounds %struct.stm32_adc_common, ptr %312, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %313) #15
  %314 = load ptr, ptr %254, align 8
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr i8, ptr %315, i32 %309
  %317 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %316) #15, !srcloc !8
  %318 = or i32 %317, %311
  %319 = load ptr, ptr %254, align 8
  %320 = load ptr, ptr %319, align 4
  %321 = getelementptr i8, ptr %320, i32 %309
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %321, i32 %318) #15, !srcloc !9
  %322 = load ptr, ptr %254, align 8
  %323 = getelementptr inbounds %struct.stm32_adc_common, ptr %322, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !11
  %324 = load i16, ptr %323, align 4
  %325 = add i16 %324, 1
  store i16 %325, ptr %323, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  br label %329

326:                                              ; preds = %284, %264, %263, %258
  %327 = add nuw nsw i32 %259, 1
  %328 = icmp eq i32 %327, 3
  br i1 %328, label %329, label %258

329:                                              ; preds = %326, %305
  %330 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 17
  %331 = load i32, ptr %330, align 4
  %332 = load ptr, ptr %3, align 8
  %333 = load ptr, ptr %332, align 4
  %334 = load i32, ptr %8, align 4
  %335 = getelementptr i8, ptr %333, i32 %334
  %336 = getelementptr i8, ptr %335, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %336, i32 %331) #15, !srcloc !9
  %337 = load ptr, ptr %2, align 8
  %338 = getelementptr inbounds %struct.stm32_adc, ptr %337, i32 0, i32 8
  %339 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %338) #15
  %340 = load ptr, ptr %337, align 8
  %341 = load ptr, ptr %340, align 4
  %342 = getelementptr inbounds %struct.stm32_adc, ptr %337, i32 0, i32 1
  %343 = load i32, ptr %342, align 4
  %344 = getelementptr i8, ptr %341, i32 %343
  %345 = getelementptr i8, ptr %344, i32 8
  %346 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %345) #15, !srcloc !8
  %347 = or i32 %346, 1
  %348 = load ptr, ptr %337, align 8
  %349 = load ptr, ptr %348, align 4
  %350 = load i32, ptr %342, align 4
  %351 = getelementptr i8, ptr %349, i32 %350
  %352 = getelementptr i8, ptr %351, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %352, i32 %347) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %338, i32 noundef %339) #15
  %353 = tail call i64 @ktime_get() #15
  %354 = add i64 %353, 100000000
  %355 = load ptr, ptr %337, align 8
  %356 = load ptr, ptr %355, align 4
  %357 = load i32, ptr %342, align 4
  %358 = getelementptr i8, ptr %356, i32 %357
  %359 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %358) #15, !srcloc !8
  %360 = and i32 %359, 1
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %379

362:                                              ; preds = %371, %329
  %363 = tail call i64 @ktime_get() #15
  %364 = icmp sgt i64 %363, %354
  br i1 %364, label %365, label %371

365:                                              ; preds = %362
  %366 = load ptr, ptr %337, align 8
  %367 = load ptr, ptr %366, align 4
  %368 = load i32, ptr %342, align 4
  %369 = getelementptr i8, ptr %367, i32 %368
  %370 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %369) #15, !srcloc !8
  br label %379

371:                                              ; preds = %362
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #15
  %372 = load ptr, ptr %337, align 8
  %373 = load ptr, ptr %372, align 4
  %374 = load i32, ptr %342, align 4
  %375 = getelementptr i8, ptr %373, i32 %374
  %376 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %375) #15, !srcloc !8
  %377 = and i32 %376, 1
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %362, label %379

379:                                              ; preds = %371, %365, %329
  %380 = phi i32 [ %370, %365 ], [ %359, %329 ], [ %376, %371 ]
  %381 = and i32 %380, 1
  %382 = icmp eq i32 %381, 0
  %383 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %338) #15
  %384 = load ptr, ptr %337, align 8
  %385 = load ptr, ptr %384, align 4
  %386 = load i32, ptr %342, align 4
  %387 = getelementptr i8, ptr %385, i32 %386
  br i1 %382, label %388, label %398

388:                                              ; preds = %379
  %389 = getelementptr i8, ptr %387, i32 8
  %390 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %389) #15, !srcloc !8
  %391 = or i32 %390, 2
  %392 = load ptr, ptr %337, align 8
  %393 = load ptr, ptr %392, align 4
  %394 = load i32, ptr %342, align 4
  %395 = getelementptr i8, ptr %393, i32 %394
  %396 = getelementptr i8, ptr %395, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %396, i32 %391) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %338, i32 noundef %383) #15
  %397 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %397, ptr noundef nonnull @.str.27) #16
  br label %625

398:                                              ; preds = %379
  %399 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %387) #15, !srcloc !8
  %400 = or i32 %399, 1
  %401 = load ptr, ptr %337, align 8
  %402 = load ptr, ptr %401, align 4
  %403 = load i32, ptr %342, align 4
  %404 = getelementptr i8, ptr %402, i32 %403
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %404, i32 %400) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %338, i32 noundef %383) #15
  %405 = load ptr, ptr %2, align 8
  br i1 %107, label %535, label %406

406:                                              ; preds = %398
  %407 = getelementptr inbounds %struct.stm32_adc, ptr %405, i32 0, i32 20
  %408 = load i32, ptr %407, align 4
  %409 = getelementptr inbounds %struct.stm32_adc, ptr %405, i32 0, i32 20, i32 1
  %410 = load i32, ptr %409, align 4
  %411 = shl i32 %410, 16
  %412 = or i32 %411, %408
  %413 = load ptr, ptr %405, align 8
  %414 = load ptr, ptr %413, align 4
  %415 = getelementptr inbounds %struct.stm32_adc, ptr %405, i32 0, i32 1
  %416 = load i32, ptr %415, align 4
  %417 = getelementptr i8, ptr %414, i32 %416
  %418 = getelementptr i8, ptr %417, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %418, i32 %412) #15, !srcloc !9
  %419 = getelementptr inbounds %struct.stm32_adc, ptr %405, i32 0, i32 8
  br label %420

420:                                              ; preds = %531, %406
  %421 = phi i32 [ 134217728, %406 ], [ %532, %531 ]
  %422 = phi i32 [ 5, %406 ], [ %533, %531 ]
  %423 = getelementptr %struct.stm32_adc, ptr %405, i32 0, i32 20, i32 2, i32 %422
  %424 = load i32, ptr %423, align 4
  %425 = load ptr, ptr %405, align 8
  %426 = load ptr, ptr %425, align 4
  %427 = load i32, ptr %415, align 4
  %428 = getelementptr i8, ptr %426, i32 200
  %429 = getelementptr i8, ptr %428, i32 %427
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %429, i32 %424) #15, !srcloc !9
  %430 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %419) #15
  %431 = load ptr, ptr %405, align 8
  %432 = load ptr, ptr %431, align 4
  %433 = load i32, ptr %415, align 4
  %434 = getelementptr i8, ptr %432, i32 8
  %435 = getelementptr i8, ptr %434, i32 %433
  %436 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %435) #15, !srcloc !8
  %437 = or i32 %436, %421
  %438 = load ptr, ptr %405, align 8
  %439 = load ptr, ptr %438, align 4
  %440 = load i32, ptr %415, align 4
  %441 = getelementptr i8, ptr %439, i32 8
  %442 = getelementptr i8, ptr %441, i32 %440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %442, i32 %437) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %419, i32 noundef %430) #15
  %443 = tail call i64 @ktime_get() #15
  %444 = add i64 %443, 100000000
  %445 = load ptr, ptr %405, align 8
  %446 = load ptr, ptr %445, align 4
  %447 = load i32, ptr %415, align 4
  %448 = getelementptr i8, ptr %446, i32 8
  %449 = getelementptr i8, ptr %448, i32 %447
  %450 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %449) #15, !srcloc !8
  %451 = and i32 %450, %421
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %474

453:                                              ; preds = %456, %420
  %454 = tail call i64 @ktime_get() #15
  %455 = icmp sgt i64 %454, %444
  br i1 %455, label %465, label %456

456:                                              ; preds = %453
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #15
  %457 = load ptr, ptr %405, align 8
  %458 = load ptr, ptr %457, align 4
  %459 = load i32, ptr %415, align 4
  %460 = getelementptr i8, ptr %458, i32 8
  %461 = getelementptr i8, ptr %460, i32 %459
  %462 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %461) #15, !srcloc !8
  %463 = and i32 %462, %421
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %453, label %474

465:                                              ; preds = %453
  %466 = load ptr, ptr %405, align 8
  %467 = load ptr, ptr %466, align 4
  %468 = load i32, ptr %415, align 4
  %469 = getelementptr i8, ptr %467, i32 8
  %470 = getelementptr i8, ptr %469, i32 %468
  %471 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %470) #15, !srcloc !8
  %472 = and i32 %471, %421
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %621, label %474

474:                                              ; preds = %465, %456, %420
  %475 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %419) #15
  %476 = load ptr, ptr %405, align 8
  %477 = load ptr, ptr %476, align 4
  %478 = load i32, ptr %415, align 4
  %479 = getelementptr i8, ptr %477, i32 8
  %480 = getelementptr i8, ptr %479, i32 %478
  %481 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %480) #15, !srcloc !8
  %482 = xor i32 %421, -1
  %483 = and i32 %481, %482
  %484 = load ptr, ptr %405, align 8
  %485 = load ptr, ptr %484, align 4
  %486 = load i32, ptr %415, align 4
  %487 = getelementptr i8, ptr %485, i32 8
  %488 = getelementptr i8, ptr %487, i32 %486
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %488, i32 %483) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %419, i32 noundef %475) #15
  %489 = tail call i64 @ktime_get() #15
  %490 = add i64 %489, 100000000
  %491 = load ptr, ptr %405, align 8
  %492 = load ptr, ptr %491, align 4
  %493 = load i32, ptr %415, align 4
  %494 = getelementptr i8, ptr %492, i32 8
  %495 = getelementptr i8, ptr %494, i32 %493
  %496 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %495) #15, !srcloc !8
  %497 = and i32 %496, %421
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %518, label %499

499:                                              ; preds = %509, %474
  %500 = tail call i64 @ktime_get() #15
  %501 = icmp sgt i64 %500, %490
  br i1 %501, label %502, label %509

502:                                              ; preds = %499
  %503 = load ptr, ptr %405, align 8
  %504 = load ptr, ptr %503, align 4
  %505 = load i32, ptr %415, align 4
  %506 = getelementptr i8, ptr %504, i32 8
  %507 = getelementptr i8, ptr %506, i32 %505
  %508 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %507) #15, !srcloc !8
  br label %518

509:                                              ; preds = %499
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #15
  %510 = load ptr, ptr %405, align 8
  %511 = load ptr, ptr %510, align 4
  %512 = load i32, ptr %415, align 4
  %513 = getelementptr i8, ptr %511, i32 8
  %514 = getelementptr i8, ptr %513, i32 %512
  %515 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %514) #15, !srcloc !8
  %516 = and i32 %515, %421
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %499

518:                                              ; preds = %509, %502, %474
  %519 = phi i32 [ %508, %502 ], [ %496, %474 ], [ %515, %509 ]
  %520 = and i32 %519, %421
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %621

522:                                              ; preds = %518
  %523 = load ptr, ptr %405, align 8
  %524 = load ptr, ptr %523, align 4
  %525 = load i32, ptr %415, align 4
  %526 = getelementptr i8, ptr %524, i32 200
  %527 = getelementptr i8, ptr %526, i32 %525
  %528 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %527) #15, !srcloc !8
  %529 = load i32, ptr %423, align 4
  %530 = icmp eq i32 %528, %529
  br i1 %530, label %531, label %621

531:                                              ; preds = %522
  %532 = lshr i32 %421, 1
  %533 = add nsw i32 %422, -1
  %534 = icmp eq i32 %422, 0
  br i1 %534, label %613, label %420

535:                                              ; preds = %398
  %536 = getelementptr inbounds %struct.stm32_adc, ptr %405, i32 0, i32 8
  %537 = getelementptr inbounds %struct.stm32_adc, ptr %405, i32 0, i32 1
  br label %538

538:                                              ; preds = %588, %535
  %539 = phi i32 [ 134217728, %535 ], [ %597, %588 ]
  %540 = phi i32 [ 5, %535 ], [ %598, %588 ]
  %541 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %536) #15
  %542 = load ptr, ptr %405, align 8
  %543 = load ptr, ptr %542, align 4
  %544 = load i32, ptr %537, align 4
  %545 = getelementptr i8, ptr %543, i32 8
  %546 = getelementptr i8, ptr %545, i32 %544
  %547 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %546) #15, !srcloc !8
  %548 = xor i32 %539, -1
  %549 = and i32 %547, %548
  %550 = load ptr, ptr %405, align 8
  %551 = load ptr, ptr %550, align 4
  %552 = load i32, ptr %537, align 4
  %553 = getelementptr i8, ptr %551, i32 8
  %554 = getelementptr i8, ptr %553, i32 %552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %554, i32 %549) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %536, i32 noundef %541) #15
  %555 = tail call i64 @ktime_get() #15
  %556 = add i64 %555, 100000000
  %557 = load ptr, ptr %405, align 8
  %558 = load ptr, ptr %557, align 4
  %559 = load i32, ptr %537, align 4
  %560 = getelementptr i8, ptr %558, i32 8
  %561 = getelementptr i8, ptr %560, i32 %559
  %562 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %561) #15, !srcloc !8
  %563 = and i32 %562, %539
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %584, label %565

565:                                              ; preds = %575, %538
  %566 = tail call i64 @ktime_get() #15
  %567 = icmp sgt i64 %566, %556
  br i1 %567, label %568, label %575

568:                                              ; preds = %565
  %569 = load ptr, ptr %405, align 8
  %570 = load ptr, ptr %569, align 4
  %571 = load i32, ptr %537, align 4
  %572 = getelementptr i8, ptr %570, i32 8
  %573 = getelementptr i8, ptr %572, i32 %571
  %574 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %573) #15, !srcloc !8
  br label %584

575:                                              ; preds = %565
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #15
  %576 = load ptr, ptr %405, align 8
  %577 = load ptr, ptr %576, align 4
  %578 = load i32, ptr %537, align 4
  %579 = getelementptr i8, ptr %577, i32 8
  %580 = getelementptr i8, ptr %579, i32 %578
  %581 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %580) #15, !srcloc !8
  %582 = and i32 %581, %539
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %565

584:                                              ; preds = %575, %568, %538
  %585 = phi i32 [ %574, %568 ], [ %562, %538 ], [ %581, %575 ]
  %586 = and i32 %585, %539
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %588, label %621

588:                                              ; preds = %584
  %589 = load ptr, ptr %405, align 8
  %590 = load ptr, ptr %589, align 4
  %591 = load i32, ptr %537, align 4
  %592 = getelementptr i8, ptr %590, i32 200
  %593 = getelementptr i8, ptr %592, i32 %591
  %594 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %593) #15, !srcloc !8
  %595 = and i32 %594, 1073741823
  %596 = getelementptr %struct.stm32_adc, ptr %405, i32 0, i32 20, i32 2, i32 %540
  store i32 %595, ptr %596, align 4
  %597 = lshr i32 %539, 1
  %598 = add nsw i32 %540, -1
  %599 = icmp eq i32 %540, 0
  br i1 %599, label %600, label %538

600:                                              ; preds = %588
  %601 = load ptr, ptr %405, align 8
  %602 = load ptr, ptr %601, align 4
  %603 = load i32, ptr %537, align 4
  %604 = getelementptr i8, ptr %602, i32 %603
  %605 = getelementptr i8, ptr %604, i32 196
  %606 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %605) #15, !srcloc !8
  %607 = and i32 %606, 2047
  %608 = getelementptr inbounds %struct.stm32_adc, ptr %405, i32 0, i32 20
  store i32 %607, ptr %608, align 4
  %609 = getelementptr inbounds %struct.stm32_adc, ptr %405, i32 0, i32 20, i32 1
  %610 = lshr i32 %606, 16
  %611 = and i32 %610, 2047
  store i32 %611, ptr %609, align 4
  %612 = getelementptr inbounds %struct.stm32_adc, ptr %405, i32 0, i32 20, i32 3
  store i8 1, ptr %612, align 4
  br label %613

613:                                              ; preds = %600, %531
  %614 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 18
  %615 = load i32, ptr %614, align 8
  %616 = load ptr, ptr %3, align 8
  %617 = load ptr, ptr %616, align 4
  %618 = load i32, ptr %8, align 4
  %619 = getelementptr i8, ptr %617, i32 %618
  %620 = getelementptr i8, ptr %619, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %620, i32 %615) #15, !srcloc !9
  br label %655

621:                                              ; preds = %584, %522, %518, %465
  %622 = phi ptr [ @.str.29, %584 ], [ @.str.28, %465 ], [ @.str.29, %518 ], [ @.str.30, %522 ]
  %623 = phi i32 [ -110, %584 ], [ -110, %465 ], [ -110, %518 ], [ -5, %522 ]
  %624 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %624, ptr noundef nonnull %622) #16
  tail call fastcc void @stm32h7_adc_disable(ptr noundef %0)
  br label %625

625:                                              ; preds = %621, %388
  %626 = phi i32 [ -110, %388 ], [ %623, %621 ]
  tail call fastcc void @stm32_adc_int_ch_disable(ptr noundef %3)
  br label %627

627:                                              ; preds = %625, %235
  %628 = phi i32 [ %237, %235 ], [ %626, %625 ]
  %629 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %630 = load ptr, ptr %3, align 8
  %631 = load ptr, ptr %630, align 4
  %632 = load i32, ptr %8, align 4
  %633 = getelementptr i8, ptr %631, i32 %632
  %634 = getelementptr i8, ptr %633, i32 8
  %635 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %634) #15, !srcloc !8
  %636 = and i32 %635, -257
  %637 = load ptr, ptr %3, align 8
  %638 = load ptr, ptr %637, align 4
  %639 = load i32, ptr %8, align 4
  %640 = getelementptr i8, ptr %638, i32 %639
  %641 = getelementptr i8, ptr %640, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %641, i32 %636) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %629) #15
  %642 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %643 = load ptr, ptr %3, align 8
  %644 = load ptr, ptr %643, align 4
  %645 = load i32, ptr %8, align 4
  %646 = getelementptr i8, ptr %644, i32 %645
  %647 = getelementptr i8, ptr %646, i32 8
  %648 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %647) #15, !srcloc !8
  %649 = or i32 %648, 536870912
  %650 = load ptr, ptr %3, align 8
  %651 = load ptr, ptr %650, align 4
  %652 = load i32, ptr %8, align 4
  %653 = getelementptr i8, ptr %651, i32 %652
  %654 = getelementptr i8, ptr %653, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %654, i32 %649) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %642) #15
  br label %655

655:                                              ; preds = %627, %613, %88
  %656 = phi i32 [ %628, %627 ], [ 0, %613 ], [ -110, %88 ]
  ret i32 %656
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32h7_adc_start_conv(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = select i1 %1, i32 3, i32 0
  %6 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 8
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #15
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = getelementptr i8, ptr %12, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #15, !srcloc !8
  %15 = and i32 %14, -4
  %16 = or i32 %15, %5
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %10, align 4
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %16) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #15
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #15
  %23 = load ptr, ptr %4, align 8
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %10, align 4
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = getelementptr i8, ptr %26, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #15, !srcloc !8
  %29 = or i32 %28, 4
  %30 = load ptr, ptr %4, align 8
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %10, align 4
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %29) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %22) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32h7_adc_stop_conv(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #15, !srcloc !8
  %13 = or i32 %12, 16
  %14 = load ptr, ptr %3, align 8
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %8, align 4
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %13) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  %19 = tail call i64 @ktime_get() #15
  %20 = add i64 %19, 100000000
  %21 = load ptr, ptr %3, align 8
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %8, align 4
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = getelementptr i8, ptr %24, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #15, !srcloc !8
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %32, %1
  %30 = tail call i64 @ktime_get() #15
  %31 = icmp sgt i64 %30, %20
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #15
  %33 = load ptr, ptr %3, align 8
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %8, align 4
  %36 = getelementptr i8, ptr %34, i32 8
  %37 = getelementptr i8, ptr %36, i32 %35
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #15, !srcloc !8
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %29

41:                                               ; preds = %29
  %42 = load ptr, ptr %3, align 8
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %8, align 4
  %45 = getelementptr i8, ptr %43, i32 %44
  %46 = getelementptr i8, ptr %45, i32 8
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #15, !srcloc !8
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.32) #16
  br label %52

52:                                               ; preds = %50, %41, %32, %1
  %53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %54 = load ptr, ptr %3, align 8
  %55 = load ptr, ptr %54, align 4
  %56 = load i32, ptr %8, align 4
  %57 = getelementptr i8, ptr %55, i32 %56
  %58 = getelementptr i8, ptr %57, i32 12
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #15, !srcloc !8
  %60 = and i32 %59, -4
  %61 = load ptr, ptr %3, align 8
  %62 = load ptr, ptr %61, align 4
  %63 = load i32, ptr %8, align 4
  %64 = getelementptr i8, ptr %62, i32 %63
  %65 = getelementptr i8, ptr %64, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %60) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %53) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32h7_adc_unprepare(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #15, !srcloc !9
  tail call fastcc void @stm32h7_adc_disable(ptr noundef %0)
  tail call fastcc void @stm32_adc_int_ch_disable(ptr noundef %3)
  %10 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 8
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #15
  %12 = load ptr, ptr %3, align 8
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %6, align 4
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = getelementptr i8, ptr %15, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #15, !srcloc !8
  %18 = and i32 %17, -257
  %19 = load ptr, ptr %3, align 8
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %6, align 4
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %18) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #15
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #15
  %25 = load ptr, ptr %3, align 8
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %6, align 4
  %28 = getelementptr i8, ptr %26, i32 %27
  %29 = getelementptr i8, ptr %28, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #15, !srcloc !8
  %31 = or i32 %30, 536870912
  %32 = load ptr, ptr %3, align 8
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %6, align 4
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %31) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %24) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32h7_adc_irq_clear(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 8
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #15
  %12 = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = getelementptr i8, ptr %16, i32 %9
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #15, !srcloc !8
  %19 = or i32 %18, %1
  %20 = load ptr, ptr %4, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %14, align 4
  %23 = getelementptr i8, ptr %21, i32 %22
  %24 = getelementptr i8, ptr %23, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %19) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32h7_adc_disable(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #15, !srcloc !8
  %13 = or i32 %12, 2
  %14 = load ptr, ptr %3, align 8
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %8, align 4
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %13) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  %19 = tail call i64 @ktime_get() #15
  %20 = add i64 %19, 100000000
  %21 = load ptr, ptr %3, align 8
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %8, align 4
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = getelementptr i8, ptr %24, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #15, !srcloc !8
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %32, %1
  %30 = tail call i64 @ktime_get() #15
  %31 = icmp sgt i64 %30, %20
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #15
  %33 = load ptr, ptr %3, align 8
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %8, align 4
  %36 = getelementptr i8, ptr %34, i32 8
  %37 = getelementptr i8, ptr %36, i32 %35
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #15, !srcloc !8
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %29

41:                                               ; preds = %29
  %42 = load ptr, ptr %3, align 8
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %8, align 4
  %45 = getelementptr i8, ptr %43, i32 %44
  %46 = getelementptr i8, ptr %45, i32 8
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #15, !srcloc !8
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.31) #16
  br label %52

52:                                               ; preds = %50, %41, %32, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_adc_int_ch_disable(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.stm32_adc, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.stm32_adc, ptr %0, i32 0, i32 8
  %4 = getelementptr inbounds %struct.stm32_adc, ptr %0, i32 0, i32 1
  br label %5

5:                                                ; preds = %76, %1
  %6 = phi i32 [ 0, %1 ], [ %77, %76 ]
  %7 = getelementptr %struct.stm32_adc, ptr %0, i32 0, i32 24, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %76, label %10

10:                                               ; preds = %5
  switch i32 %6, label %76 [
    i32 0, label %11
    i32 1, label %32
    i32 2, label %54
  ]

11:                                               ; preds = %10
  %12 = load ptr, ptr %2, align 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %13, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %13, i32 0, i32 11, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #15
  %19 = load ptr, ptr %0, align 8
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %4, align 4
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = getelementptr i8, ptr %22, i32 %15
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #15, !srcloc !8
  %25 = xor i32 %17, -1
  %26 = and i32 %24, %25
  %27 = load ptr, ptr %0, align 8
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %4, align 4
  %30 = getelementptr i8, ptr %28, i32 %29
  %31 = getelementptr i8, ptr %30, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %26) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %18) #15
  br label %76

32:                                               ; preds = %10
  %33 = load ptr, ptr %2, align 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %34, i32 0, i32 13
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %34, i32 0, i32 13, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %0, align 8
  %40 = getelementptr inbounds %struct.stm32_adc_common, ptr %39, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %40) #15
  %41 = load ptr, ptr %0, align 8
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 %36
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #15, !srcloc !8
  %45 = xor i32 %38, -1
  %46 = and i32 %44, %45
  %47 = load ptr, ptr %0, align 8
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %46) #15, !srcloc !9
  %50 = load ptr, ptr %0, align 8
  %51 = getelementptr inbounds %struct.stm32_adc_common, ptr %50, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !11
  %52 = load i16, ptr %51, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  br label %76

54:                                               ; preds = %10
  %55 = load ptr, ptr %2, align 8
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %56, i32 0, i32 12
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %56, i32 0, i32 12, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %0, align 8
  %62 = getelementptr inbounds %struct.stm32_adc_common, ptr %61, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %62) #15
  %63 = load ptr, ptr %0, align 8
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 %58
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #15, !srcloc !8
  %67 = xor i32 %60, -1
  %68 = and i32 %66, %67
  %69 = load ptr, ptr %0, align 8
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %68) #15, !srcloc !9
  %72 = load ptr, ptr %0, align 8
  %73 = getelementptr inbounds %struct.stm32_adc_common, ptr %72, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !11
  %74 = load i16, ptr %73, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr %73, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  br label %79

76:                                               ; preds = %32, %11, %10, %5
  %77 = add nuw nsw i32 %6, 1
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %79, label %5

79:                                               ; preds = %76, %54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_probe(ptr noundef %0) #1 {
  %2 = alloca i16, align 2
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 8
  %6 = alloca [20 x %struct.stm32_adc_diff_channel], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_slave_config, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %592, label %15

15:                                               ; preds = %1
  %16 = tail call ptr @devm_iio_device_alloc(ptr noundef %11, i32 noundef 512) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %592, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.iio_dev, ptr %16, i32 0, i32 19
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 8
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr %20, align 8
  %25 = getelementptr inbounds %struct.stm32_adc, ptr %20, i32 0, i32 8
  store i32 0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.stm32_adc, ptr %20, i32 0, i32 3
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.stm32_adc, ptr %20, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %27, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #15
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 6
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.device_driver, ptr %29, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = tail call ptr @of_match_device(ptr noundef %31, ptr noundef %11) #15
  %33 = getelementptr inbounds %struct.of_device_id, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.stm32_adc, ptr %20, i32 0, i32 2
  store ptr %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %18
  %40 = load ptr, ptr %11, align 4
  br label %41

41:                                               ; preds = %39, %18
  %42 = phi ptr [ %40, %39 ], [ %37, %18 ]
  %43 = getelementptr inbounds %struct.iio_dev, ptr %16, i32 0, i32 15
  store ptr %42, ptr %43, align 8
  %44 = load ptr, ptr %12, align 8
  %45 = getelementptr inbounds %struct.iio_dev, ptr %16, i32 0, i32 2, i32 25
  store ptr %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.iio_dev, ptr %16, i32 0, i32 17
  store ptr @stm32_adc_iio_info, ptr %46, align 8
  store i32 33, ptr %16, align 8
  %47 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %16, ptr %47, align 8
  %48 = load ptr, ptr %12, align 8
  %49 = getelementptr inbounds %struct.stm32_adc, ptr %20, i32 0, i32 1
  %50 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %48, ptr noundef nonnull @.str.34, ptr noundef %49, i32 noundef 1, i32 noundef 0) #15
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.35) #16
  br label %592

53:                                               ; preds = %41
  %54 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #15
  %55 = getelementptr inbounds %struct.stm32_adc, ptr %20, i32 0, i32 7
  store i32 %54, ptr %55, align 4
  %56 = icmp slt i32 %54, 0
  br i1 %56, label %592, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %0, align 8
  %59 = tail call i32 @devm_request_threaded_irq(ptr noundef %11, i32 noundef %54, ptr noundef nonnull @stm32_adc_isr, ptr noundef nonnull @stm32_adc_threaded_isr, i32 noundef 0, ptr noundef %58, ptr noundef nonnull %16) #15
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.36) #16
  br label %592

62:                                               ; preds = %57
  %63 = tail call ptr @devm_clk_get(ptr noundef %11, ptr noundef null) #15
  %64 = getelementptr inbounds %struct.stm32_adc, ptr %20, i32 0, i32 6
  store ptr %63, ptr %64, align 8
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = ptrtoint ptr %63 to i32
  %68 = icmp eq ptr %63, inttoptr (i32 -2 to ptr)
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load ptr, ptr %35, align 8
  %71 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %70, i32 0, i32 3
  %72 = load i8, ptr %71, align 4, !range !10
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store ptr null, ptr %64, align 8
  br label %76

75:                                               ; preds = %69, %66
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.37) #16
  br label %592

76:                                               ; preds = %74, %62
  %77 = getelementptr inbounds %struct.iio_dev, ptr %16, i32 0, i32 2
  %78 = load ptr, ptr %45, align 8
  %79 = load ptr, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  store i32 0, ptr %10, align 4, !annotation !15
  %80 = call i32 @of_property_read_variable_u32_array(ptr noundef %78, ptr noundef nonnull @.str.43, ptr noundef nonnull %10, i32 noundef 1, i32 noundef 0) #15
  %81 = icmp sgt i32 %80, -1
  %82 = getelementptr inbounds %struct.stm32_adc, ptr %79, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  br i1 %81, label %86, label %88

86:                                               ; preds = %76
  %87 = load i32, ptr %10, align 4
  br label %92

88:                                               ; preds = %76
  %89 = getelementptr inbounds %struct.stm32_adc_info, ptr %85, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = load i32, ptr %90, align 4
  store i32 %91, ptr %10, align 4
  br label %92

92:                                               ; preds = %88, %86
  %93 = phi i32 [ %87, %86 ], [ %91, %88 ]
  %94 = getelementptr inbounds %struct.stm32_adc_info, ptr %85, i32 0, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.stm32_adc_info, ptr %85, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  br label %100

100:                                              ; preds = %105, %97
  %101 = phi i32 [ 0, %97 ], [ %106, %105 ]
  %102 = getelementptr i32, ptr %99, i32 %101
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %93, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = add nuw i32 %101, 1
  %107 = icmp eq i32 %106, %95
  br i1 %107, label %108, label %100

108:                                              ; preds = %105, %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.44, i32 noundef %93) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  br label %592

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.stm32_adc, ptr %79, i32 0, i32 11
  store i32 %101, ptr %110, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  %111 = load ptr, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %9, i8 0, i32 48, i1 false) #15, !annotation !15
  %112 = call ptr @dma_request_chan(ptr noundef %11, ptr noundef nonnull @.str.45) #15
  %113 = getelementptr inbounds %struct.stm32_adc, ptr %111, i32 0, i32 13
  store ptr %112, ptr %113, align 4
  %114 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = icmp eq ptr %112, inttoptr (i32 -19 to ptr)
  br i1 %116, label %120, label %117

117:                                              ; preds = %115
  %118 = ptrtoint ptr %112 to i32
  %119 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %11, i32 noundef %118, ptr noundef nonnull @.str.46) #15
  br label %166

120:                                              ; preds = %115
  store ptr null, ptr %113, align 4
  br label %165

121:                                              ; preds = %109
  %122 = load ptr, ptr %112, align 4
  %123 = getelementptr inbounds %struct.dma_device, ptr %122, i32 0, i32 15
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.stm32_adc, ptr %111, i32 0, i32 15
  %126 = call ptr @dma_alloc_attrs(ptr noundef %124, i32 noundef 4096, ptr noundef %125, i32 noundef 3264, i32 noundef 0) #15
  %127 = getelementptr inbounds %struct.stm32_adc, ptr %111, i32 0, i32 14
  store ptr %126, ptr %127, align 8
  %128 = icmp eq ptr %126, null
  br i1 %128, label %162, label %129

129:                                              ; preds = %121
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %9, i8 0, i32 48, i1 false) #15
  %130 = load ptr, ptr %111, align 8
  %131 = getelementptr inbounds %struct.stm32_adc_common, ptr %130, i32 0, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.dma_slave_config, ptr %9, i32 0, i32 1
  %134 = getelementptr inbounds %struct.stm32_adc, ptr %111, i32 0, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.stm32_adc, ptr %111, i32 0, i32 2
  %137 = load ptr, ptr %136, align 8
  %138 = load ptr, ptr %137, align 4
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %135, %132
  %141 = add i32 %140, %139
  store i32 %141, ptr %133, align 4
  %142 = getelementptr inbounds %struct.dma_slave_config, ptr %9, i32 0, i32 3
  store i32 2, ptr %142, align 4
  %143 = load ptr, ptr %113, align 4
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.dma_device, ptr %144, i32 0, i32 44
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %155, label %148

148:                                              ; preds = %129
  %149 = call i32 %146(ptr noundef %143, ptr noundef nonnull %9) #15
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %165, label %151

151:                                              ; preds = %148
  %152 = load ptr, ptr %113, align 4
  %153 = load ptr, ptr %152, align 4
  %154 = load ptr, ptr %127, align 8
  br label %155

155:                                              ; preds = %151, %129
  %156 = phi ptr [ %154, %151 ], [ %126, %129 ]
  %157 = phi ptr [ %153, %151 ], [ %144, %129 ]
  %158 = phi i32 [ %149, %151 ], [ -38, %129 ]
  %159 = getelementptr inbounds %struct.dma_device, ptr %157, i32 0, i32 15
  %160 = load ptr, ptr %159, align 4
  %161 = load i32, ptr %125, align 4
  call void @dma_free_attrs(ptr noundef %160, i32 noundef 4096, ptr noundef %156, i32 noundef %161, i32 noundef 0) #15
  br label %162

162:                                              ; preds = %155, %121
  %163 = phi i32 [ %158, %155 ], [ -12, %121 ]
  %164 = load ptr, ptr %113, align 4
  call void @dma_release_channel(ptr noundef %164) #15
  br label %166

165:                                              ; preds = %148, %120
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #15
  br label %169

166:                                              ; preds = %162, %117
  %167 = phi i32 [ %119, %117 ], [ %163, %162 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #15
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %592, label %169

169:                                              ; preds = %166, %165
  %170 = getelementptr inbounds %struct.stm32_adc, ptr %20, i32 0, i32 13
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  %173 = select i1 %172, ptr @stm32_adc_trigger_handler, ptr null
  %174 = load ptr, ptr %45, align 8
  %175 = load ptr, ptr %19, align 8
  %176 = getelementptr inbounds %struct.stm32_adc, ptr %175, i32 0, i32 2
  %177 = load ptr, ptr %176, align 8
  %178 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %177, i32 0, i32 1
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr i8, ptr %175, i32 500
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %180, i8 -1, i32 12, i1 false) #15
  %181 = call ptr @of_get_next_available_child(ptr noundef %174, ptr noundef null) #15
  %182 = icmp eq ptr %181, null
  br i1 %182, label %191, label %183

183:                                              ; preds = %183, %169
  %184 = phi i32 [ %186, %183 ], [ 0, %169 ]
  %185 = phi ptr [ %187, %183 ], [ %181, %169 ]
  %186 = add i32 %184, 1
  %187 = call ptr @of_get_next_available_child(ptr noundef %174, ptr noundef nonnull %185) #15
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %183

189:                                              ; preds = %183
  %190 = icmp eq i32 %186, 0
  br i1 %190, label %191, label %224

191:                                              ; preds = %189, %169
  %192 = load ptr, ptr %45, align 8
  %193 = load ptr, ptr %176, align 8
  %194 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %193, i32 0, i32 1
  %195 = load ptr, ptr %194, align 4
  %196 = call i32 @of_property_count_elems_of_size(ptr noundef %192, ptr noundef nonnull @.str.49, i32 noundef 4) #15
  %197 = load i32, ptr %195, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %215, label %199

199:                                              ; preds = %191
  %200 = call i32 @llvm.smax.i32(i32 %196, i32 0) #15
  %201 = call i32 @of_property_count_elems_of_size(ptr noundef %192, ptr noundef nonnull @.str.51, i32 noundef 8) #15
  %202 = load i32, ptr %195, align 4
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %215, label %204

204:                                              ; preds = %199
  %205 = icmp sgt i32 %201, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %204
  %207 = getelementptr inbounds %struct.stm32_adc, ptr %175, i32 0, i32 23
  store i32 %201, ptr %207, align 8
  %208 = add nuw i32 %201, %200
  br label %209

209:                                              ; preds = %206, %204
  %210 = phi i32 [ %208, %206 ], [ %200, %204 ]
  %211 = call i32 @of_property_count_elems_of_size(ptr noundef %192, ptr noundef nonnull @.str.53, i32 noundef 4) #15
  %212 = icmp slt i32 %211, 2
  %213 = icmp eq i32 %211, %210
  %214 = select i1 %212, i1 true, i1 %213
  br i1 %214, label %217, label %215

215:                                              ; preds = %209, %199, %191
  %216 = phi ptr [ @.str.50, %191 ], [ @.str.52, %199 ], [ @.str.54, %209 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull %216) #16
  br label %579

217:                                              ; preds = %209
  %218 = icmp eq i32 %210, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %217
  %220 = getelementptr inbounds %struct.iio_dev, ptr %16, i32 0, i32 2, i32 1
  %221 = load ptr, ptr %220, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %221, ptr noundef nonnull @.str.47) #16
  br label %579

222:                                              ; preds = %217
  %223 = icmp slt i32 %210, 0
  br i1 %223, label %579, label %224

224:                                              ; preds = %222, %189
  %225 = phi i1 [ false, %189 ], [ true, %222 ]
  %226 = phi i32 [ %186, %189 ], [ %210, %222 ]
  %227 = load i32, ptr %179, align 4
  %228 = icmp sgt i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.48, i32 noundef %226, i32 noundef %227) #16
  br label %579

230:                                              ; preds = %224
  %231 = zext i1 %172 to i32
  %232 = add i32 %226, %231
  %233 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %232, i32 88) #15
  %234 = extractvalue { i32, i1 } %233, 1
  br i1 %234, label %579, label %235, !prof !16

235:                                              ; preds = %230
  %236 = extractvalue { i32, i1 } %233, 0
  %237 = call noalias ptr @devm_kmalloc(ptr noundef %77, i32 noundef %236, i32 noundef 3520) #15
  %238 = icmp eq ptr %237, null
  br i1 %238, label %579, label %239

239:                                              ; preds = %235
  %240 = load ptr, ptr %45, align 8
  %241 = load ptr, ptr %176, align 8
  %242 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %241, i32 0, i32 1
  %243 = load ptr, ptr %242, align 4
  br i1 %225, label %244, label %389

244:                                              ; preds = %239
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %6, i8 0, i32 160, i1 false) #15, !annotation !15
  %245 = getelementptr inbounds %struct.stm32_adc, ptr %175, i32 0, i32 23
  %246 = load i32, ptr %245, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %315, label %248

248:                                              ; preds = %244
  %249 = shl i32 %246, 1
  %250 = and i32 %249, 1073741822
  %251 = call i32 @of_property_read_variable_u32_array(ptr noundef %240, ptr noundef nonnull @.str.51, ptr noundef nonnull %6, i32 noundef %250, i32 noundef 0) #15
  %252 = icmp sgt i32 %251, -1
  br i1 %252, label %254, label %253

253:                                              ; preds = %248
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.55, i32 noundef %251) #16
  br label %387

254:                                              ; preds = %265, %248
  %255 = phi i32 [ %313, %265 ], [ 0, %248 ]
  %256 = getelementptr [20 x %struct.stm32_adc_diff_channel], ptr %6, i32 0, i32 %255
  %257 = load i32, ptr %256, align 4
  %258 = load i32, ptr %243, align 4
  %259 = icmp ult i32 %257, %258
  %260 = getelementptr [20 x %struct.stm32_adc_diff_channel], ptr %6, i32 0, i32 %255, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = icmp ult i32 %261, %258
  %263 = select i1 %259, i1 %262, i1 false
  br i1 %263, label %265, label %264

264:                                              ; preds = %254
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.56, i32 noundef %257, i32 noundef %261) #16
  br label %387

265:                                              ; preds = %254
  %266 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %255
  %267 = load ptr, ptr %19, align 8
  %268 = getelementptr %struct.stm32_adc, ptr %267, i32 0, i32 22, i32 %257
  store i32 0, ptr %266, align 4
  %269 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %255, i32 1
  store i32 %257, ptr %269, align 4
  %270 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %255, i32 19
  %271 = load i8, ptr %270, align 4
  %272 = or i8 %271, 8
  store i8 %272, ptr %270, align 4
  %273 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %255, i32 2
  store i32 %261, ptr %273, align 4
  %274 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %268, i32 noundef 16, ptr noundef nonnull @.str.59, i32 noundef %257, i32 noundef %261) #15
  %275 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %255, i32 18
  store ptr %268, ptr %275, align 4
  %276 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %255, i32 4
  store i32 %255, ptr %276, align 4
  %277 = load i8, ptr %270, align 4
  %278 = or i8 %277, 2
  store i8 %278, ptr %270, align 4
  %279 = load i32, ptr %269, align 4
  %280 = getelementptr %struct.stm32_adc, ptr %267, i32 0, i32 24, i32 1
  %281 = load i32, ptr %280, align 4
  %282 = icmp eq i32 %279, %281
  %283 = select i1 %282, i32 2, i32 1
  %284 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %255, i32 6
  store i32 %283, ptr %284, align 4
  %285 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %255, i32 8
  store i32 12, ptr %285, align 4
  %286 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %255, i32 5
  store i8 117, ptr %286, align 4
  %287 = getelementptr inbounds %struct.stm32_adc, ptr %267, i32 0, i32 2
  %288 = load ptr, ptr %287, align 8
  %289 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %288, i32 0, i32 1
  %290 = load ptr, ptr %289, align 4
  %291 = getelementptr inbounds %struct.stm32_adc_info, ptr %290, i32 0, i32 1
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr inbounds %struct.stm32_adc, ptr %267, i32 0, i32 11
  %294 = load i32, ptr %293, align 4
  %295 = getelementptr i32, ptr %292, i32 %294
  %296 = load i32, ptr %295, align 4
  %297 = trunc i32 %296 to i8
  %298 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %255, i32 5, i32 1
  store i8 %297, ptr %298, align 1
  %299 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %255, i32 5, i32 2
  store i8 16, ptr %299, align 2
  %300 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %255, i32 16
  store ptr @stm32_adc_ext_info, ptr %300, align 4
  %301 = shl nuw i32 1, %279
  %302 = getelementptr inbounds %struct.stm32_adc, ptr %267, i32 0, i32 18
  %303 = load i32, ptr %302, align 8
  %304 = or i32 %303, %301
  store i32 %304, ptr %302, align 8
  %305 = load i32, ptr %269, align 4
  %306 = shl nuw i32 1, %305
  %307 = getelementptr inbounds %struct.stm32_adc, ptr %267, i32 0, i32 17
  %308 = load i32, ptr %307, align 4
  %309 = or i32 %308, %306
  store i32 %309, ptr %307, align 4
  %310 = load i32, ptr %273, align 4
  %311 = shl nuw i32 1, %310
  %312 = or i32 %311, %304
  store i32 %312, ptr %302, align 8
  %313 = add nuw i32 %255, 1
  %314 = icmp eq i32 %313, %246
  br i1 %314, label %315, label %254

315:                                              ; preds = %265, %244
  %316 = call ptr @of_find_property(ptr noundef %240, ptr noundef nonnull @.str.49, ptr noundef null) #15
  %317 = call ptr @of_prop_next_u32(ptr noundef %316, ptr noundef null, ptr noundef nonnull %7) #15
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %322

319:                                              ; preds = %339, %315
  %320 = phi i32 [ %246, %315 ], [ %376, %339 ]
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %379, label %387

322:                                              ; preds = %339, %315
  %323 = phi ptr [ %377, %339 ], [ %317, %315 ]
  %324 = phi i32 [ %376, %339 ], [ %246, %315 ]
  %325 = load i32, ptr %7, align 4
  %326 = load i32, ptr %243, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %328, label %329

328:                                              ; preds = %322
  br i1 %247, label %339, label %333

329:                                              ; preds = %322
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.57, i32 noundef %325) #16
  br label %387

330:                                              ; preds = %333
  %331 = add nuw i32 %334, 1
  %332 = icmp eq i32 %331, %246
  br i1 %332, label %339, label %333

333:                                              ; preds = %330, %328
  %334 = phi i32 [ %331, %330 ], [ 0, %328 ]
  %335 = getelementptr [20 x %struct.stm32_adc_diff_channel], ptr %6, i32 0, i32 %334
  %336 = load i32, ptr %335, align 4
  %337 = icmp eq i32 %325, %336
  br i1 %337, label %338, label %330

338:                                              ; preds = %333
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.58, i32 noundef %325) #16
  br label %387

339:                                              ; preds = %330, %328
  %340 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %324
  %341 = load ptr, ptr %19, align 8
  %342 = getelementptr %struct.stm32_adc, ptr %341, i32 0, i32 22, i32 %325
  store i32 0, ptr %340, align 4
  %343 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %324, i32 1
  store i32 %325, ptr %343, align 4
  %344 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %342, i32 noundef 16, ptr noundef nonnull @.str.60, i32 noundef %325) #15
  %345 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %324, i32 18
  store ptr %342, ptr %345, align 4
  %346 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %324, i32 4
  store i32 %324, ptr %346, align 4
  %347 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %324, i32 19
  %348 = load i8, ptr %347, align 4
  %349 = or i8 %348, 2
  store i8 %349, ptr %347, align 4
  %350 = load i32, ptr %343, align 4
  %351 = getelementptr %struct.stm32_adc, ptr %341, i32 0, i32 24, i32 1
  %352 = load i32, ptr %351, align 4
  %353 = icmp eq i32 %350, %352
  %354 = select i1 %353, i32 2, i32 1
  %355 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %324, i32 6
  store i32 %354, ptr %355, align 4
  %356 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %324, i32 8
  store i32 12, ptr %356, align 4
  %357 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %324, i32 5
  store i8 117, ptr %357, align 4
  %358 = getelementptr inbounds %struct.stm32_adc, ptr %341, i32 0, i32 2
  %359 = load ptr, ptr %358, align 8
  %360 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %359, i32 0, i32 1
  %361 = load ptr, ptr %360, align 4
  %362 = getelementptr inbounds %struct.stm32_adc_info, ptr %361, i32 0, i32 1
  %363 = load ptr, ptr %362, align 4
  %364 = getelementptr inbounds %struct.stm32_adc, ptr %341, i32 0, i32 11
  %365 = load i32, ptr %364, align 4
  %366 = getelementptr i32, ptr %363, i32 %365
  %367 = load i32, ptr %366, align 4
  %368 = trunc i32 %367 to i8
  %369 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %324, i32 5, i32 1
  store i8 %368, ptr %369, align 1
  %370 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %324, i32 5, i32 2
  store i8 16, ptr %370, align 2
  %371 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %324, i32 16
  store ptr @stm32_adc_ext_info, ptr %371, align 4
  %372 = shl nuw i32 1, %350
  %373 = getelementptr inbounds %struct.stm32_adc, ptr %341, i32 0, i32 18
  %374 = load i32, ptr %373, align 8
  %375 = or i32 %374, %372
  store i32 %375, ptr %373, align 8
  %376 = add i32 %324, 1
  %377 = call ptr @of_prop_next_u32(ptr noundef %316, ptr noundef nonnull %323, ptr noundef nonnull %7) #15
  %378 = icmp eq ptr %377, null
  br i1 %378, label %319, label %322

379:                                              ; preds = %379, %319
  %380 = phi i32 [ %385, %379 ], [ 0, %319 ]
  %381 = call i32 @of_property_read_u32_index(ptr noundef %240, ptr noundef nonnull @.str.53, i32 noundef %380, ptr noundef nonnull %8) #15
  %382 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %380, i32 1
  %383 = load i32, ptr %382, align 4
  %384 = load i32, ptr %8, align 4
  call fastcc void @stm32_adc_smpr_init(ptr noundef %175, i32 noundef %383, i32 noundef %384) #15
  %385 = add nuw nsw i32 %380, 1
  %386 = icmp eq i32 %385, %320
  br i1 %386, label %387, label %379

387:                                              ; preds = %379, %338, %329, %319, %264, %253
  %388 = phi i32 [ %251, %253 ], [ -22, %264 ], [ -22, %329 ], [ -22, %338 ], [ %320, %319 ], [ %320, %379 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %6) #15
  br label %538

389:                                              ; preds = %239
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store ptr null, ptr %3, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store i64 0, ptr %5, align 8, !annotation !15
  %390 = call ptr @of_get_next_available_child(ptr noundef %240, ptr noundef null) #15
  %391 = icmp eq ptr %390, null
  br i1 %391, label %536, label %392

392:                                              ; preds = %389
  %393 = getelementptr inbounds %struct.iio_dev, ptr %16, i32 0, i32 2, i32 1
  %394 = getelementptr inbounds [2 x i32], ptr %5, i32 0, i32 1
  br label %395

395:                                              ; preds = %530, %392
  %396 = phi i32 [ 0, %392 ], [ %531, %530 ]
  %397 = phi ptr [ %390, %392 ], [ %532, %530 ]
  %398 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %397, ptr noundef nonnull @.str.34, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #15
  %399 = icmp sgt i32 %398, -1
  br i1 %399, label %401, label %400

400:                                              ; preds = %395
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.66, i32 noundef %398) #16
  br label %534

401:                                              ; preds = %395
  %402 = call i32 @of_property_read_string(ptr noundef nonnull %397, ptr noundef nonnull @.str.67, ptr noundef nonnull %3) #15
  switch i32 %402, label %437 [
    i32 0, label %403
    i32 -22, label %438
  ]

403:                                              ; preds = %401
  %404 = load ptr, ptr %3, align 4
  %405 = call i32 @strlen(ptr noundef %404) #15
  %406 = icmp ugt i32 %405, 15
  br i1 %406, label %407, label %408

407:                                              ; preds = %403
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.68, ptr noundef %404, i32 noundef 16) #16
  br label %534

408:                                              ; preds = %403
  %409 = load i32, ptr %4, align 4
  %410 = getelementptr %struct.stm32_adc, ptr %175, i32 0, i32 22, i32 %409
  %411 = call ptr @strncpy(ptr noundef %410, ptr noundef %404, i32 noundef 16) #15
  %412 = load ptr, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #15
  store i16 0, ptr %2, align 2, !annotation !15
  %413 = getelementptr inbounds %struct.stm32_adc, ptr %412, i32 0, i32 21
  %414 = call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.76, ptr noundef %404, i32 noundef 16) #15
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %418

416:                                              ; preds = %408
  %417 = getelementptr %struct.stm32_adc, ptr %412, i32 0, i32 24, i32 0
  store i32 %409, ptr %417, align 4
  br label %418

418:                                              ; preds = %416, %408
  %419 = call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.74, ptr noundef %404, i32 noundef 16) #15
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %427

421:                                              ; preds = %418
  %422 = getelementptr %struct.stm32_adc, ptr %412, i32 0, i32 24, i32 1
  store i32 %409, ptr %422, align 4
  %423 = call i32 @nvmem_cell_read_u16(ptr noundef %77, ptr noundef nonnull @.str.74, ptr noundef nonnull %2) #15
  switch i32 %423, label %433 [
    i32 -2, label %427
    i32 0, label %424
  ]

424:                                              ; preds = %421
  %425 = load i16, ptr %2, align 2
  %426 = zext i16 %425 to i32
  store i32 %426, ptr %413, align 8
  br label %427

427:                                              ; preds = %424, %421, %418
  %428 = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.77, ptr noundef %404, i32 noundef 16) #15
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %432

430:                                              ; preds = %427
  %431 = getelementptr %struct.stm32_adc, ptr %412, i32 0, i32 24, i32 2
  store i32 %409, ptr %431, align 4
  br label %432

432:                                              ; preds = %430, %427
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #15
  br label %438

433:                                              ; preds = %421
  %434 = load ptr, ptr %393, align 4
  %435 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %434, i32 noundef %423, ptr noundef nonnull @.str.75) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #15
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %438, label %534

437:                                              ; preds = %401
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.69, i32 noundef %402) #16
  br label %534

438:                                              ; preds = %433, %432, %401
  %439 = load i32, ptr %4, align 4
  %440 = load i32, ptr %243, align 4
  %441 = icmp slt i32 %439, %440
  br i1 %441, label %443, label %442

442:                                              ; preds = %438
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.57, i32 noundef %439) #16
  br label %534

443:                                              ; preds = %438
  %444 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %397, ptr noundef nonnull @.str.70, ptr noundef nonnull %5, i32 noundef 2, i32 noundef 0) #15
  %445 = icmp sgt i32 %444, -1
  br i1 %445, label %446, label %455

446:                                              ; preds = %443
  %447 = load i32, ptr %5, align 8
  %448 = load i32, ptr %4, align 4
  %449 = icmp eq i32 %447, %448
  %450 = load i32, ptr %394, align 4
  br i1 %449, label %451, label %454

451:                                              ; preds = %446
  %452 = load i32, ptr %243, align 4
  %453 = icmp ult i32 %450, %452
  br i1 %453, label %458, label %454

454:                                              ; preds = %451, %446
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.56, i32 noundef %447, i32 noundef %450) #16
  br label %534

455:                                              ; preds = %443
  %456 = icmp eq i32 %444, -22
  br i1 %456, label %468, label %457

457:                                              ; preds = %455
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.71, i32 noundef %444) #16
  br label %534

458:                                              ; preds = %451
  %459 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %396
  %460 = load ptr, ptr %19, align 8
  %461 = getelementptr %struct.stm32_adc, ptr %460, i32 0, i32 22, i32 %447
  store i32 0, ptr %459, align 4
  %462 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %396, i32 1
  store i32 %447, ptr %462, align 4
  %463 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %396, i32 19
  %464 = load i8, ptr %463, align 4
  %465 = or i8 %464, 8
  store i8 %465, ptr %463, align 4
  %466 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %396, i32 2
  store i32 %450, ptr %466, align 4
  %467 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %461, i32 noundef 16, ptr noundef nonnull @.str.59, i32 noundef %447, i32 noundef %450) #15
  br label %475

468:                                              ; preds = %455
  %469 = load i32, ptr %4, align 4
  %470 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %396
  %471 = load ptr, ptr %19, align 8
  %472 = getelementptr %struct.stm32_adc, ptr %471, i32 0, i32 22, i32 %469
  store i32 0, ptr %470, align 4
  %473 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %396, i32 1
  store i32 %469, ptr %473, align 4
  %474 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %472, i32 noundef 16, ptr noundef nonnull @.str.60, i32 noundef %469) #15
  br label %475

475:                                              ; preds = %468, %458
  %476 = phi ptr [ %473, %468 ], [ %462, %458 ]
  %477 = phi ptr [ %472, %468 ], [ %461, %458 ]
  %478 = phi ptr [ %471, %468 ], [ %460, %458 ]
  %479 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %396, i32 18
  store ptr %477, ptr %479, align 4
  %480 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %396, i32 4
  store i32 %396, ptr %480, align 4
  %481 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %396, i32 19
  %482 = load i8, ptr %481, align 4
  %483 = or i8 %482, 2
  store i8 %483, ptr %481, align 4
  %484 = load i32, ptr %476, align 4
  %485 = getelementptr %struct.stm32_adc, ptr %478, i32 0, i32 24, i32 1
  %486 = load i32, ptr %485, align 4
  %487 = icmp eq i32 %484, %486
  %488 = select i1 %487, i32 2, i32 1
  %489 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %396, i32 6
  store i32 %488, ptr %489, align 4
  %490 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %396, i32 8
  store i32 12, ptr %490, align 4
  %491 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %396, i32 5
  store i8 117, ptr %491, align 4
  %492 = getelementptr inbounds %struct.stm32_adc, ptr %478, i32 0, i32 2
  %493 = load ptr, ptr %492, align 8
  %494 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %493, i32 0, i32 1
  %495 = load ptr, ptr %494, align 4
  %496 = getelementptr inbounds %struct.stm32_adc_info, ptr %495, i32 0, i32 1
  %497 = load ptr, ptr %496, align 4
  %498 = getelementptr inbounds %struct.stm32_adc, ptr %478, i32 0, i32 11
  %499 = load i32, ptr %498, align 4
  %500 = getelementptr i32, ptr %497, i32 %499
  %501 = load i32, ptr %500, align 4
  %502 = trunc i32 %501 to i8
  %503 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %396, i32 5, i32 1
  store i8 %502, ptr %503, align 1
  %504 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %396, i32 5, i32 2
  store i8 16, ptr %504, align 2
  %505 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %396, i32 16
  store ptr @stm32_adc_ext_info, ptr %505, align 4
  %506 = shl nuw i32 1, %484
  %507 = getelementptr inbounds %struct.stm32_adc, ptr %478, i32 0, i32 18
  %508 = load i32, ptr %507, align 8
  %509 = or i32 %508, %506
  store i32 %509, ptr %507, align 8
  br i1 %445, label %510, label %520

510:                                              ; preds = %475
  %511 = load i32, ptr %476, align 4
  %512 = shl nuw i32 1, %511
  %513 = getelementptr inbounds %struct.stm32_adc, ptr %478, i32 0, i32 17
  %514 = load i32, ptr %513, align 4
  %515 = or i32 %514, %512
  store i32 %515, ptr %513, align 4
  %516 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %396, i32 2
  %517 = load i32, ptr %516, align 4
  %518 = shl nuw i32 1, %517
  %519 = or i32 %518, %509
  store i32 %519, ptr %507, align 8
  br label %520

520:                                              ; preds = %510, %475
  %521 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %397, ptr noundef nonnull @.str.72, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #15
  %522 = call i32 @llvm.smin.i32(i32 %521, i32 0) #15
  switch i32 %522, label %529 [
    i32 0, label %523
    i32 -22, label %530
  ]

523:                                              ; preds = %520
  %524 = load i32, ptr %476, align 4
  %525 = load i32, ptr %4, align 4
  call fastcc void @stm32_adc_smpr_init(ptr noundef %175, i32 noundef %524, i32 noundef %525) #15
  br i1 %445, label %526, label %530

526:                                              ; preds = %523
  %527 = load i32, ptr %394, align 4
  %528 = load i32, ptr %4, align 4
  call fastcc void @stm32_adc_smpr_init(ptr noundef %175, i32 noundef %527, i32 noundef %528) #15
  br label %530

529:                                              ; preds = %520
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.73, i32 noundef %522) #16
  br label %534

530:                                              ; preds = %526, %523, %520
  %531 = add i32 %396, 1
  %532 = call ptr @of_get_next_available_child(ptr noundef %240, ptr noundef nonnull %397) #15
  %533 = icmp eq ptr %532, null
  br i1 %533, label %536, label %395

534:                                              ; preds = %529, %457, %454, %442, %437, %433, %407, %400
  %535 = phi i32 [ %398, %400 ], [ %402, %437 ], [ -22, %442 ], [ %444, %457 ], [ %522, %529 ], [ 0, %454 ], [ -22, %407 ], [ %435, %433 ]
  call void @of_node_put(ptr noundef nonnull %397) #15
  br label %536

536:                                              ; preds = %534, %530, %389
  %537 = phi i32 [ %535, %534 ], [ 0, %389 ], [ %531, %530 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %538

538:                                              ; preds = %536, %387
  %539 = phi i32 [ %388, %387 ], [ %537, %536 ]
  %540 = icmp slt i32 %539, 0
  br i1 %540, label %579, label %541

541:                                              ; preds = %538
  br i1 %172, label %542, label %550

542:                                              ; preds = %541
  %543 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %539
  store i32 13, ptr %543, align 4
  %544 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %539, i32 1
  store i32 -1, ptr %544, align 4
  %545 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %539, i32 4
  store i32 %539, ptr %545, align 4
  %546 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %539, i32 5
  store i8 115, ptr %546, align 4
  %547 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %539, i32 5, i32 1
  store i8 64, ptr %547, align 1
  %548 = getelementptr %struct.iio_chan_spec, ptr %237, i32 %539, i32 5, i32 2
  store i8 64, ptr %548, align 2
  %549 = add nuw i32 %539, 1
  br label %550

550:                                              ; preds = %542, %541
  %551 = phi i32 [ %549, %542 ], [ %539, %541 ]
  %552 = getelementptr inbounds %struct.iio_dev, ptr %16, i32 0, i32 14
  store i32 %551, ptr %552, align 4
  %553 = getelementptr inbounds %struct.iio_dev, ptr %16, i32 0, i32 13
  store ptr %237, ptr %553, align 8
  %554 = call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %16, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef %173, i32 noundef 0, ptr noundef nonnull @stm32_adc_buffer_setup_ops, ptr noundef null) #15
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %557, label %556

556:                                              ; preds = %550
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.38) #16
  br label %579

557:                                              ; preds = %550
  %558 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %558) #15, !srcloc !17
  %559 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %558, ptr %558, i32 1, ptr elementtype(i32) %558) #15, !srcloc !18
  %560 = call i32 @__pm_runtime_set_status(ptr noundef %11, i32 noundef 0) #15
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %11, i32 noundef 100) #15
  call void @__pm_runtime_use_autosuspend(ptr noundef %11, i1 noundef zeroext true) #15
  call void @pm_runtime_enable(ptr noundef %11) #15
  %561 = call fastcc i32 @stm32_adc_hw_start(ptr noundef %11)
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %563, label %571

563:                                              ; preds = %557
  %564 = call i32 @__iio_device_register(ptr noundef nonnull %16, ptr noundef nonnull @__this_module) #15
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %567, label %566

566:                                              ; preds = %563
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.39) #16
  call fastcc void @stm32_adc_hw_stop(ptr noundef %11)
  br label %571

567:                                              ; preds = %563
  %568 = call i64 @ktime_get_mono_fast_ns() #15
  %569 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %568, ptr %569, align 8
  %570 = call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #15
  br label %592

571:                                              ; preds = %566, %557
  %572 = phi i32 [ %561, %557 ], [ %564, %566 ]
  call void @__pm_runtime_disable(ptr noundef %11, i1 noundef zeroext true) #15
  %573 = call i32 @__pm_runtime_set_status(ptr noundef %11, i32 noundef 2) #15
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %558) #15, !srcloc !17
  %574 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %558, ptr %558, i32 0, i32 -1, ptr elementtype(i32) %558) #15, !srcloc !20
  %575 = extractvalue { i32, i32, i32 } %574, 0
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %578, label %577

577:                                              ; preds = %571
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  br label %578

578:                                              ; preds = %577, %571
  call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %16) #15
  br label %579

579:                                              ; preds = %578, %556, %538, %235, %230, %229, %222, %219, %215
  %580 = phi i32 [ %554, %556 ], [ %572, %578 ], [ -12, %230 ], [ -22, %215 ], [ %539, %538 ], [ -12, %235 ], [ %210, %222 ], [ -61, %219 ], [ -22, %229 ]
  %581 = load ptr, ptr %170, align 4
  %582 = icmp eq ptr %581, null
  br i1 %582, label %592, label %583

583:                                              ; preds = %579
  %584 = load ptr, ptr %581, align 4
  %585 = getelementptr inbounds %struct.dma_device, ptr %584, i32 0, i32 15
  %586 = load ptr, ptr %585, align 4
  %587 = getelementptr inbounds %struct.stm32_adc, ptr %20, i32 0, i32 14
  %588 = load ptr, ptr %587, align 8
  %589 = getelementptr inbounds %struct.stm32_adc, ptr %20, i32 0, i32 15
  %590 = load i32, ptr %589, align 4
  call void @dma_free_attrs(ptr noundef %586, i32 noundef 4096, ptr noundef %588, i32 noundef %590, i32 noundef 0) #15
  %591 = load ptr, ptr %170, align 4
  call void @dma_release_channel(ptr noundef %591) #15
  br label %592

592:                                              ; preds = %583, %579, %567, %166, %108, %75, %61, %53, %52, %15, %1
  %593 = phi i32 [ -22, %52 ], [ %59, %61 ], [ %67, %75 ], [ 0, %567 ], [ -19, %1 ], [ -12, %15 ], [ %54, %53 ], [ %167, %166 ], [ %580, %583 ], [ %580, %579 ], [ -22, %108 ]
  ret i32 %593
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_remove(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #15
  tail call void @iio_device_unregister(ptr noundef %3) #15
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 19
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.stm32_adc, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void %14(ptr noundef %8) #15
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %struct.stm32_adc, ptr %10, i32 0, i32 6
  %19 = load ptr, ptr %18, align 8
  tail call void @clk_disable(ptr noundef %19) #15
  tail call void @clk_unprepare(ptr noundef %19) #15
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #15
  %20 = tail call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 2) #15
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #15, !srcloc !17
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 0, i32 -1, ptr elementtype(i32) %21) #15, !srcloc !20
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  br label %26

26:                                               ; preds = %25, %17
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %3) #15
  %27 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 13
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 15
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 14
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 15
  %37 = load i32, ptr %36, align 4
  tail call void @dma_free_attrs(ptr noundef %33, i32 noundef 4096, ptr noundef %35, i32 noundef %37, i32 noundef 0) #15
  %38 = load ptr, ptr %27, align 4
  tail call void @dma_release_channel(ptr noundef %38) #15
  br label %39

39:                                               ; preds = %30, %26
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr i8, ptr %14, i32 %9
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #15, !srcloc !8
  %17 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %7, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %4, align 8
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %12, align 4
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = getelementptr i8, ptr %22, i32 %18
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #15, !srcloc !8
  %25 = and i32 %24, %16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %126, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %7, i32 0, i32 4, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, %16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %74, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %5, align 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %34, i32 0, i32 2, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 8
  %40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %39) #15
  %41 = load ptr, ptr %4, align 8
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %12, align 4
  %44 = getelementptr i8, ptr %42, i32 %43
  %45 = getelementptr i8, ptr %44, i32 %36
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #15, !srcloc !8
  %47 = xor i32 %38, -1
  %48 = and i32 %46, %47
  %49 = load ptr, ptr %4, align 8
  %50 = load ptr, ptr %49, align 4
  %51 = load i32, ptr %12, align 4
  %52 = getelementptr i8, ptr %50, i32 %51
  %53 = getelementptr i8, ptr %52, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %48) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %40) #15
  %54 = load ptr, ptr %5, align 8
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %55, i32 0, i32 1, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %39) #15
  %61 = load ptr, ptr %4, align 8
  %62 = load ptr, ptr %61, align 4
  %63 = load i32, ptr %12, align 4
  %64 = getelementptr i8, ptr %62, i32 %63
  %65 = getelementptr i8, ptr %64, i32 %57
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #15, !srcloc !8
  %67 = xor i32 %59, -1
  %68 = and i32 %66, %67
  %69 = load ptr, ptr %4, align 8
  %70 = load ptr, ptr %69, align 4
  %71 = load i32, ptr %12, align 4
  %72 = getelementptr i8, ptr %70, i32 %71
  %73 = getelementptr i8, ptr %72, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %68) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %60) #15
  br label %126

74:                                               ; preds = %27
  %75 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %7, i32 0, i32 3, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, %16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %126, label %79

79:                                               ; preds = %74
  %80 = load i32, ptr %7, align 4
  %81 = load ptr, ptr %4, align 8
  %82 = load ptr, ptr %81, align 4
  %83 = load i32, ptr %12, align 4
  %84 = getelementptr i8, ptr %82, i32 %83
  %85 = getelementptr i8, ptr %84, i32 %80
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %85) #15, !srcloc !22
  %87 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 9
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr %struct.stm32_adc, ptr %4, i32 0, i32 5, i32 %88
  store i16 %86, ptr %89, align 2
  %90 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 14
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %124, label %94

94:                                               ; preds = %79
  %95 = load i32, ptr %87, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %87, align 4
  %97 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 10
  %98 = load i32, ptr %97, align 8
  %99 = icmp ult i32 %96, %98
  br i1 %99, label %126, label %100

100:                                              ; preds = %94
  %101 = load ptr, ptr %5, align 8
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %102, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %102, i32 0, i32 1, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 8
  %108 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %107) #15
  %109 = load ptr, ptr %4, align 8
  %110 = load ptr, ptr %109, align 4
  %111 = load i32, ptr %12, align 4
  %112 = getelementptr i8, ptr %110, i32 %111
  %113 = getelementptr i8, ptr %112, i32 %104
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #15, !srcloc !8
  %115 = xor i32 %106, -1
  %116 = and i32 %114, %115
  %117 = load ptr, ptr %4, align 8
  %118 = load ptr, ptr %117, align 4
  %119 = load i32, ptr %12, align 4
  %120 = getelementptr i8, ptr %118, i32 %119
  %121 = getelementptr i8, ptr %120, i32 %104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %116) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %107, i32 noundef %108) #15
  %122 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %123 = load ptr, ptr %122, align 4
  tail call void @iio_trigger_poll(ptr noundef %123) #15
  br label %126

124:                                              ; preds = %79
  %125 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 3
  tail call void @complete(ptr noundef %125) #15
  br label %126

126:                                              ; preds = %124, %100, %94, %74, %32, %2
  %127 = phi i32 [ 2, %32 ], [ 2, %2 ], [ 1, %94 ], [ 1, %100 ], [ 1, %124 ], [ 0, %74 ]
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_threaded_isr(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr i8, ptr %14, i32 %9
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #15, !srcloc !8
  %17 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %7, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %4, align 8
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %12, align 4
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = getelementptr i8, ptr %22, i32 %18
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #15, !srcloc !8
  %25 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %7, i32 0, i32 4, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, %16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %2
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %30, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %1) #15
  %33 = load i32, ptr %25, align 4
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.stm32_adc, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %36, i32 0, i32 9
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %1, i32 noundef %33) #15
  %39 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.41) #16
  br label %48

40:                                               ; preds = %2
  %41 = and i32 %24, %16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = tail call i32 @___ratelimit(ptr noundef nonnull @stm32_adc_threaded_isr._rs, ptr noundef nonnull @__func__.stm32_adc_threaded_isr) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.42, i32 noundef %24, i32 noundef %16) #16
  br label %48

48:                                               ; preds = %46, %43, %40, %29
  %49 = phi i32 [ 1, %29 ], [ 0, %43 ], [ 0, %46 ], [ 0, %40 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_trigger_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 9
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 5
  %8 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 9
  %9 = load i8, ptr %8, align 8, !range !10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.iio_poll_func, ptr %1, i32 0, i32 6
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 3
  %17 = add nsw i32 %16, -1
  %18 = getelementptr i64, ptr %7, i32 %17
  store i64 %13, ptr %18, align 8
  br label %19

19:                                               ; preds = %11, %2
  %20 = tail call i32 @iio_push_to_buffers(ptr noundef %3, ptr noundef %7) #15
  %21 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %22) #15
  %23 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %25, i32 0, i32 1, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 8
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #15
  %32 = load ptr, ptr %5, align 8
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %33, i32 %35
  %37 = getelementptr i8, ptr %36, i32 %27
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #15, !srcloc !8
  %39 = or i32 %38, %29
  %40 = load ptr, ptr %5, align 8
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %34, align 4
  %43 = getelementptr i8, ptr %41, i32 %42
  %44 = getelementptr i8, ptr %43, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %39) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_adc_hw_start(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %16, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %20, i32 %22
  %24 = getelementptr i8, ptr %23, i32 %18
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #15, !srcloc !8
  %26 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %16, i32 0, i32 8, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %25, %28
  %30 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %16, i32 0, i32 8, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = shl i32 %31, %33
  %35 = or i32 %34, %29
  %36 = load i32, ptr %17, align 4
  %37 = load ptr, ptr %5, align 8
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %21, align 4
  %40 = getelementptr i8, ptr %38, i32 %39
  %41 = getelementptr i8, ptr %40, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %35) #15, !srcloc !9
  %42 = load ptr, ptr %14, align 8
  %43 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %42, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %13
  %47 = tail call i32 %44(ptr noundef %3) #15
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %6, align 8
  tail call void @clk_disable(ptr noundef %50) #15
  br label %51

51:                                               ; preds = %49, %10
  %52 = phi ptr [ %50, %49 ], [ %7, %10 ]
  %53 = phi i32 [ %47, %49 ], [ %11, %10 ]
  tail call void @clk_unprepare(ptr noundef %52) #15
  br label %54

54:                                               ; preds = %51, %46, %13, %1
  %55 = phi i32 [ 0, %46 ], [ 0, %13 ], [ %8, %1 ], [ %53, %51 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_adc_hw_stop(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void %9(ptr noundef %3) #15
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  tail call void @clk_disable(ptr noundef %14) #15
  tail call void @clk_unprepare(ptr noundef %14) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_read_raw(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  switch i32 %4, label %212 [
    i32 0, label %8
    i32 1, label %8
    i32 2, label %186
    i32 3, label %199
  ]

8:                                                ; preds = %5, %5
  %9 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %0) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %212

11:                                               ; preds = %8
  %12 = load i32, ptr %1, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %174

14:                                               ; preds = %11
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.stm32_adc, ptr %15, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.stm32_adc, ptr %15, i32 0, i32 3
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.stm32_adc, ptr %15, i32 0, i32 9
  store i32 0, ptr %22, align 4
  %23 = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #15
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #15, !srcloc !17
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 0, i32 -1, ptr elementtype(i32) %26) #15, !srcloc !20
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %174, label %30

30:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  br label %174

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %20, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.stm32_adc, ptr %15, i32 0, i32 19
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %15, align 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.stm32_adc, ptr %15, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %37, i32 %39
  %41 = getelementptr i8, ptr %40, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %35) #15, !srcloc !9
  %42 = getelementptr %struct.stm32_adc_regspec, ptr %20, i32 0, i32 9, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr %struct.stm32_adc, ptr %15, i32 0, i32 19, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %15, align 8
  %47 = load ptr, ptr %46, align 4
  %48 = load i32, ptr %38, align 4
  %49 = getelementptr i8, ptr %47, i32 %48
  %50 = getelementptr i8, ptr %49, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %45) #15, !srcloc !9
  %51 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %20, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr %struct.stm32_adc_regs, ptr %52, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %15, align 8
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %38, align 4
  %58 = getelementptr i8, ptr %56, i32 %57
  %59 = getelementptr i8, ptr %58, i32 %54
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #15, !srcloc !8
  %61 = load ptr, ptr %51, align 4
  %62 = getelementptr %struct.stm32_adc_regs, ptr %61, i32 1
  %63 = getelementptr %struct.stm32_adc_regs, ptr %61, i32 1, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %60, %65
  %67 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr %struct.stm32_adc_regs, ptr %61, i32 1, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = shl i32 %68, %70
  %72 = or i32 %71, %66
  %73 = load i32, ptr %62, align 4
  %74 = load ptr, ptr %15, align 8
  %75 = load ptr, ptr %74, align 4
  %76 = load i32, ptr %38, align 4
  %77 = getelementptr i8, ptr %75, i32 %76
  %78 = getelementptr i8, ptr %77, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %72) #15, !srcloc !9
  %79 = load ptr, ptr %51, align 4
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.stm32_adc_regs, ptr %79, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.stm32_adc, ptr %15, i32 0, i32 8
  %84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %83) #15
  %85 = load ptr, ptr %15, align 8
  %86 = load ptr, ptr %85, align 4
  %87 = load i32, ptr %38, align 4
  %88 = getelementptr i8, ptr %86, i32 %87
  %89 = getelementptr i8, ptr %88, i32 %80
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #15, !srcloc !8
  %91 = xor i32 %82, -1
  %92 = and i32 %90, %91
  %93 = load ptr, ptr %15, align 8
  %94 = load ptr, ptr %93, align 4
  %95 = load i32, ptr %38, align 4
  %96 = getelementptr i8, ptr %94, i32 %95
  %97 = getelementptr i8, ptr %96, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %92) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %83, i32 noundef %84) #15
  %98 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %20, i32 0, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %20, i32 0, i32 6, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %83) #15
  %103 = load ptr, ptr %15, align 8
  %104 = load ptr, ptr %103, align 4
  %105 = load i32, ptr %38, align 4
  %106 = getelementptr i8, ptr %104, i32 %105
  %107 = getelementptr i8, ptr %106, i32 %99
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #15, !srcloc !8
  %109 = xor i32 %101, -1
  %110 = and i32 %108, %109
  %111 = load ptr, ptr %15, align 8
  %112 = load ptr, ptr %111, align 4
  %113 = load i32, ptr %38, align 4
  %114 = getelementptr i8, ptr %112, i32 %113
  %115 = getelementptr i8, ptr %114, i32 %99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %110) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %83, i32 noundef %102) #15
  %116 = load ptr, ptr %18, align 8
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %117, i32 0, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %117, i32 0, i32 1, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %83) #15
  %123 = load ptr, ptr %15, align 8
  %124 = load ptr, ptr %123, align 4
  %125 = load i32, ptr %38, align 4
  %126 = getelementptr i8, ptr %124, i32 %125
  %127 = getelementptr i8, ptr %126, i32 %119
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #15, !srcloc !8
  %129 = or i32 %128, %121
  %130 = load ptr, ptr %15, align 8
  %131 = load ptr, ptr %130, align 4
  %132 = load i32, ptr %38, align 4
  %133 = getelementptr i8, ptr %131, i32 %132
  %134 = getelementptr i8, ptr %133, i32 %119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %129) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %83, i32 noundef %122) #15
  %135 = load ptr, ptr %18, align 8
  %136 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %135, i32 0, i32 6
  %137 = load ptr, ptr %136, align 4
  tail call void %137(ptr noundef %0, i1 noundef zeroext false) #15
  %138 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %21, i32 noundef 10) #15
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %31
  %141 = icmp slt i32 %138, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.stm32_adc, ptr %15, i32 0, i32 5
  %144 = load i16, ptr %143, align 8
  %145 = zext i16 %144 to i32
  store i32 %145, ptr %2, align 4
  br label %146

146:                                              ; preds = %142, %140, %31
  %147 = phi i32 [ 1, %142 ], [ -110, %31 ], [ %138, %140 ]
  %148 = load ptr, ptr %18, align 8
  %149 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %148, i32 0, i32 7
  %150 = load ptr, ptr %149, align 4
  tail call void %150(ptr noundef %0) #15
  %151 = load ptr, ptr %18, align 8
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %152, i32 0, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %152, i32 0, i32 1, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %83) #15
  %158 = load ptr, ptr %15, align 8
  %159 = load ptr, ptr %158, align 4
  %160 = load i32, ptr %38, align 4
  %161 = getelementptr i8, ptr %159, i32 %160
  %162 = getelementptr i8, ptr %161, i32 %154
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #15, !srcloc !8
  %164 = xor i32 %156, -1
  %165 = and i32 %163, %164
  %166 = load ptr, ptr %15, align 8
  %167 = load ptr, ptr %166, align 4
  %168 = load i32, ptr %38, align 4
  %169 = getelementptr i8, ptr %167, i32 %168
  %170 = getelementptr i8, ptr %169, i32 %154
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %165) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %83, i32 noundef %157) #15
  %171 = tail call i64 @ktime_get_mono_fast_ns() #15
  %172 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 11, i32 22
  store volatile i64 %171, ptr %172, align 8
  %173 = tail call i32 @__pm_runtime_suspend(ptr noundef %17, i32 noundef 13) #15
  br label %174

174:                                              ; preds = %146, %30, %25, %11
  %175 = phi i32 [ -22, %11 ], [ %147, %146 ], [ %23, %25 ], [ %23, %30 ]
  %176 = icmp eq i32 %4, 1
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.stm32_adc, ptr %7, i32 0, i32 21
  %179 = load i32, ptr %178, align 8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = mul i32 %179, 3300
  %183 = load i32, ptr %2, align 4
  %184 = udiv i32 %182, %183
  store i32 %184, ptr %2, align 4
  br label %185

185:                                              ; preds = %181, %177, %174
  tail call void @iio_device_release_direct_mode(ptr noundef %0) #15
  br label %212

186:                                              ; preds = %5
  %187 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 19
  %188 = load i8, ptr %187, align 4
  %189 = load ptr, ptr %7, align 8
  %190 = getelementptr inbounds %struct.stm32_adc_common, ptr %189, i32 0, i32 3
  %191 = load i32, ptr %190, align 4
  %192 = lshr i8 %188, 3
  %193 = and i8 %192, 1
  %194 = zext i8 %193 to i32
  %195 = shl i32 %191, %194
  store i32 %195, ptr %2, align 4
  %196 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5, i32 1
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i32
  store i32 %198, ptr %3, align 4
  br label %212

199:                                              ; preds = %5
  %200 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 19
  %201 = load i8, ptr %200, align 4
  %202 = and i8 %201, 8
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5, i32 1
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i32
  %208 = shl nuw i32 1, %207
  %209 = sdiv i32 %208, -2
  br label %210

210:                                              ; preds = %204, %199
  %211 = phi i32 [ %209, %204 ], [ 0, %199 ]
  store i32 %211, ptr %2, align 4
  br label %212

212:                                              ; preds = %210, %186, %185, %8, %5
  %213 = phi i32 [ 1, %210 ], [ 11, %186 ], [ %175, %185 ], [ %9, %8 ], [ -22, %5 ]
  ret i32 %213
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_validate_trigger(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.iio_trigger, ptr %1, i32 0, i32 3
  br label %13

13:                                               ; preds = %31, %11
  %14 = phi i32 [ 0, %11 ], [ %33, %31 ]
  %15 = tail call zeroext i1 @is_stm32_timer_trigger(ptr noundef %1) #15
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @is_stm32_lptim_trigger(ptr noundef %1) #15
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  br label %31

22:                                               ; preds = %16, %13
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.stm32_adc_trig_info, ptr %25, i32 %14
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %12, align 4
  %29 = tail call i32 @strcmp(ptr noundef %27, ptr noundef %28) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %22, %18
  %32 = phi ptr [ %21, %18 ], [ %25, %22 ]
  %33 = add i32 %14, 1
  %34 = getelementptr %struct.stm32_adc_trig_info, ptr %32, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %13

37:                                               ; preds = %22
  %38 = getelementptr %struct.stm32_adc_trig_info, ptr %25, i32 %14, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %31, %2
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ -22, %41 ], [ 0, %37 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_update_scan_mode(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #15
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #15, !srcloc !17
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #15, !srcloc !20
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %116, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  br label %116

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 @__bitmap_weight(ptr noundef %1, i32 noundef %17) #15
  %19 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 10
  store i32 %18, ptr %19, align 8
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct.stm32_adc, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %23, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.stm32_adc, ptr %20, i32 0, i32 19
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %20, align 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.stm32_adc, ptr %20, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %31, i32 %33
  %35 = getelementptr i8, ptr %34, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %29) #15, !srcloc !9
  %36 = load ptr, ptr %21, align 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr %struct.stm32_adc_regspec, ptr %37, i32 0, i32 9, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.stm32_adc, ptr %20, i32 0, i32 19, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %20, align 8
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %32, align 4
  %45 = getelementptr i8, ptr %43, i32 %44
  %46 = getelementptr i8, ptr %45, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %41) #15, !srcloc !9
  %47 = load i32, ptr %16, align 8
  %48 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef %47, i32 noundef 0) #15
  %49 = load i32, ptr %16, align 8
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %111

51:                                               ; preds = %15
  %52 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  br label %53

53:                                               ; preds = %57, %51
  %54 = phi i32 [ 0, %51 ], [ %58, %57 ]
  %55 = phi i32 [ %48, %51 ], [ %86, %57 ]
  %56 = icmp eq i32 %54, 16
  br i1 %56, label %111, label %57

57:                                               ; preds = %53
  %58 = add nuw nsw i32 %54, 1
  %59 = load ptr, ptr %52, align 8
  %60 = getelementptr %struct.stm32_adc_regs, ptr %25, i32 %58
  %61 = load i32, ptr %60, align 4
  %62 = load ptr, ptr %20, align 8
  %63 = load ptr, ptr %62, align 4
  %64 = load i32, ptr %32, align 4
  %65 = getelementptr i8, ptr %63, i32 %64
  %66 = getelementptr i8, ptr %65, i32 %61
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #15, !srcloc !8
  %68 = getelementptr %struct.stm32_adc_regs, ptr %25, i32 %58, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %67, %70
  %72 = getelementptr %struct.iio_chan_spec, ptr %59, i32 %55, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr %struct.stm32_adc_regs, ptr %25, i32 %58, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = shl i32 %73, %75
  %77 = or i32 %76, %71
  %78 = load i32, ptr %60, align 4
  %79 = load ptr, ptr %20, align 8
  %80 = load ptr, ptr %79, align 4
  %81 = load i32, ptr %32, align 4
  %82 = getelementptr i8, ptr %80, i32 %81
  %83 = getelementptr i8, ptr %82, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %77) #15, !srcloc !9
  %84 = load i32, ptr %16, align 8
  %85 = add nuw i32 %55, 1
  %86 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef %84, i32 noundef %85) #15
  %87 = load i32, ptr %16, align 8
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %53, label %89

89:                                               ; preds = %57
  %90 = load i32, ptr %25, align 4
  %91 = load ptr, ptr %20, align 8
  %92 = load ptr, ptr %91, align 4
  %93 = load i32, ptr %32, align 4
  %94 = getelementptr i8, ptr %92, i32 %93
  %95 = getelementptr i8, ptr %94, i32 %90
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #15, !srcloc !8
  %97 = getelementptr inbounds %struct.stm32_adc_regs, ptr %25, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %96, %99
  %101 = getelementptr inbounds %struct.stm32_adc_regs, ptr %25, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = shl i32 %54, %102
  %104 = or i32 %103, %100
  %105 = load i32, ptr %25, align 4
  %106 = load ptr, ptr %20, align 8
  %107 = load ptr, ptr %106, align 4
  %108 = load i32, ptr %32, align 4
  %109 = getelementptr i8, ptr %107, i32 %108
  %110 = getelementptr i8, ptr %109, i32 %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %104) #15, !srcloc !9
  br label %111

111:                                              ; preds = %89, %53, %15
  %112 = phi i32 [ 0, %89 ], [ -22, %15 ], [ -22, %53 ]
  %113 = tail call i64 @ktime_get_mono_fast_ns() #15
  %114 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 22
  store volatile i64 %113, ptr %114, align 8
  %115 = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #15
  br label %116

116:                                              ; preds = %111, %14, %9
  %117 = phi i32 [ %112, %111 ], [ %7, %9 ], [ %7, %14 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_debugfs_reg_access(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) #1 {
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #15
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #15, !srcloc !17
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #15, !srcloc !20
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  br label %32

17:                                               ; preds = %4
  %18 = icmp eq ptr %3, null
  %19 = load ptr, ptr %6, align 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.stm32_adc, ptr %6, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %20, i32 %22
  %24 = getelementptr i8, ptr %23, i32 %1
  br i1 %18, label %25, label %26

25:                                               ; preds = %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %2) #15, !srcloc !9
  br label %28

26:                                               ; preds = %17
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #15, !srcloc !8
  store i32 %27, ptr %3, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = tail call i64 @ktime_get_mono_fast_ns() #15
  %30 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 22
  store volatile i64 %29, ptr %30, align 8
  %31 = tail call i32 @__pm_runtime_suspend(ptr noundef %8, i32 noundef 13) #15
  br label %32

32:                                               ; preds = %28, %16, %11
  %33 = phi i32 [ 0, %28 ], [ %9, %11 ], [ %9, %16 ]
  ret i32 %33
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @stm32_adc_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
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

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_adc_set_watermark(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = shl i32 %1, 1
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 2048)
  %7 = shl nuw nsw i32 %6, 1
  %8 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 10
  %9 = load i32, ptr %8, align 8
  %10 = mul i32 %7, %9
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 4096)
  %12 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 16
  store i32 %11, ptr %12, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_stm32_timer_trigger(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_stm32_lptim_trigger(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_adc_smpr_init(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.stm32_adc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.stm32_adc_regs, ptr %8, i32 %1
  %10 = getelementptr %struct.stm32_adc_regs, ptr %8, i32 %1, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.stm32_adc_regs, ptr %8, i32 %1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %9, align 4
  %15 = getelementptr %struct.stm32_adc, ptr %0, i32 0, i32 24, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %5, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.umax.i32(i32 %20, i32 %2)
  br label %22

22:                                               ; preds = %18, %3
  %23 = phi i32 [ %21, %18 ], [ %2, %3 ]
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.stm32_adc_common, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = udiv i32 1000000000, %26
  %28 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %5, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %29, align 4
  %31 = mul i32 %30, %27
  %32 = icmp ult i32 %31, %23
  br i1 %32, label %33, label %69

33:                                               ; preds = %22
  %34 = getelementptr i32, ptr %29, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = mul i32 %35, %27
  %37 = icmp ult i32 %36, %23
  br i1 %37, label %38, label %69

38:                                               ; preds = %33
  %39 = getelementptr i32, ptr %29, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = mul i32 %40, %27
  %42 = icmp ult i32 %41, %23
  br i1 %42, label %43, label %69

43:                                               ; preds = %38
  %44 = getelementptr i32, ptr %29, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = mul i32 %45, %27
  %47 = icmp ult i32 %46, %23
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  %49 = getelementptr i32, ptr %29, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = mul i32 %50, %27
  %52 = icmp ult i32 %51, %23
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = getelementptr i32, ptr %29, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = mul i32 %55, %27
  %57 = icmp ult i32 %56, %23
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = getelementptr i32, ptr %29, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = mul i32 %60, %27
  %62 = icmp ult i32 %61, %23
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = getelementptr i32, ptr %29, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = mul i32 %65, %27
  %67 = icmp ult i32 %66, %23
  %68 = select i1 %67, i32 8, i32 7
  br label %69

69:                                               ; preds = %63, %58, %53, %48, %43, %38, %33, %22
  %70 = phi i32 [ 0, %22 ], [ 1, %33 ], [ 2, %38 ], [ 3, %43 ], [ 4, %48 ], [ 5, %53 ], [ 6, %58 ], [ %68, %63 ]
  %71 = tail call i32 @llvm.umin.i32(i32 %70, i32 7)
  %72 = getelementptr %struct.stm32_adc, ptr %0, i32 0, i32 19, i32 %14
  %73 = load i32, ptr %72, align 4
  %74 = xor i32 %13, -1
  %75 = and i32 %73, %74
  %76 = shl i32 %71, %11
  %77 = or i32 %75, %76
  store i32 %77, ptr %72, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_adc_set_trig_pol(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #12 {
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 12
  store i32 %2, ptr %6, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @stm32_adc_get_trig_pol(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #13 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 12
  %6 = load i32, ptr %5, align 8
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmem_cell_read_u16(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_buffer_postenable(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #15
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #15, !srcloc !17
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #15, !srcloc !20
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %164, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  br label %164

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = tail call fastcc i32 @stm32_adc_set_trig(ptr noundef %0, ptr noundef %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.78) #16
  br label %159

21:                                               ; preds = %15
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.stm32_adc, ptr %22, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %105, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.stm32_adc, ptr %22, i32 0, i32 15
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.stm32_adc, ptr %22, i32 0, i32 16
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 1
  %32 = load ptr, ptr %24, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %72, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 40
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %72, label %38

38:                                               ; preds = %34
  %39 = tail call ptr %36(ptr noundef nonnull %24, i32 noundef %28, i32 noundef %30, i32 noundef %31, i32 noundef 2, i32 noundef 1) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %72, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %39, i32 0, i32 6
  store ptr @stm32_adc_dma_buffer_done, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %39, i32 0, i32 8
  store ptr %0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %39, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef nonnull %39) #15
  %47 = tail call i32 @llvm.smin.i32(i32 %46, i32 0) #15
  %48 = icmp sgt i32 %46, -1
  %49 = load ptr, ptr %23, align 4
  %50 = load ptr, ptr %49, align 4
  br i1 %48, label %63, label %51

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.dma_device, ptr %50, i32 0, i32 47
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %51
  %56 = tail call i32 %53(ptr noundef %49) #15
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load ptr, ptr %49, align 4
  %60 = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 48
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %66

63:                                               ; preds = %41
  %64 = getelementptr inbounds %struct.dma_device, ptr %50, i32 0, i32 50
  %65 = load ptr, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = phi ptr [ %65, %63 ], [ %61, %58 ]
  %68 = phi i32 [ 0, %63 ], [ %47, %58 ]
  tail call void %67(ptr noundef %49) #15
  br label %69

69:                                               ; preds = %66, %58, %55, %51
  %70 = phi i32 [ %47, %51 ], [ %47, %55 ], [ %47, %58 ], [ %68, %66 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %105, label %72

72:                                               ; preds = %69, %38, %34, %26
  %73 = phi i32 [ %70, %69 ], [ -16, %38 ], [ -16, %34 ], [ -16, %26 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.79) #16
  %74 = load ptr, ptr %2, align 8
  %75 = getelementptr inbounds %struct.stm32_adc, ptr %74, i32 0, i32 8
  %76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %75) #15
  %77 = getelementptr inbounds %struct.stm32_adc, ptr %74, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %79, i32 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = load ptr, ptr %74, align 8
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.stm32_adc, ptr %74, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr i8, ptr %83, i32 %85
  %87 = getelementptr i8, ptr %86, i32 %81
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #15, !srcloc !8
  %89 = load ptr, ptr %77, align 8
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %90, i32 0, i32 6, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %90, i32 0, i32 7, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = or i32 %95, %93
  %97 = xor i32 %96, -1
  %98 = and i32 %88, %97
  %99 = load i32, ptr %91, align 4
  %100 = load ptr, ptr %74, align 8
  %101 = load ptr, ptr %100, align 4
  %102 = load i32, ptr %84, align 4
  %103 = getelementptr i8, ptr %101, i32 %102
  %104 = getelementptr i8, ptr %103, i32 %99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %98) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %75, i32 noundef %76) #15
  br label %159

105:                                              ; preds = %69, %21
  %106 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 9
  store i32 0, ptr %106, align 4
  %107 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %109, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %109, i32 0, i32 2, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 8
  %115 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %114) #15
  %116 = load ptr, ptr %3, align 8
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr i8, ptr %117, i32 %119
  %121 = getelementptr i8, ptr %120, i32 %111
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #15, !srcloc !8
  %123 = or i32 %122, %113
  %124 = load ptr, ptr %3, align 8
  %125 = load ptr, ptr %124, align 4
  %126 = load i32, ptr %118, align 4
  %127 = getelementptr i8, ptr %125, i32 %126
  %128 = getelementptr i8, ptr %127, i32 %111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %123) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %114, i32 noundef %115) #15
  %129 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 13
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %153

132:                                              ; preds = %105
  %133 = load ptr, ptr %107, align 8
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %134, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %134, i32 0, i32 1, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %114) #15
  %140 = load ptr, ptr %3, align 8
  %141 = load ptr, ptr %140, align 4
  %142 = load i32, ptr %118, align 4
  %143 = getelementptr i8, ptr %141, i32 %142
  %144 = getelementptr i8, ptr %143, i32 %136
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #15, !srcloc !8
  %146 = or i32 %145, %138
  %147 = load ptr, ptr %3, align 8
  %148 = load ptr, ptr %147, align 4
  %149 = load i32, ptr %118, align 4
  %150 = getelementptr i8, ptr %148, i32 %149
  %151 = getelementptr i8, ptr %150, i32 %136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %146) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %114, i32 noundef %139) #15
  %152 = load ptr, ptr %129, align 4
  br label %153

153:                                              ; preds = %132, %105
  %154 = phi ptr [ %152, %132 ], [ %130, %105 ]
  %155 = load ptr, ptr %107, align 8
  %156 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %155, i32 0, i32 6
  %157 = load ptr, ptr %156, align 4
  %158 = icmp ne ptr %154, null
  tail call void %157(ptr noundef %0, i1 noundef zeroext %158) #15
  br label %164

159:                                              ; preds = %72, %20
  %160 = phi i32 [ %18, %20 ], [ %73, %72 ]
  %161 = tail call i64 @ktime_get_mono_fast_ns() #15
  %162 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 22
  store volatile i64 %161, ptr %162, align 8
  %163 = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #15
  br label %164

164:                                              ; preds = %159, %153, %14, %9
  %165 = phi i32 [ %160, %159 ], [ 0, %153 ], [ %7, %9 ], [ %7, %14 ]
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_buffer_predisable(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0) #15
  %10 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %15, i32 0, i32 1, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 8
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #15
  %22 = load ptr, ptr %3, align 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %23, i32 %25
  %27 = getelementptr i8, ptr %26, i32 %17
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #15, !srcloc !8
  %29 = xor i32 %19, -1
  %30 = and i32 %28, %29
  %31 = load ptr, ptr %3, align 8
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %24, align 4
  %34 = getelementptr i8, ptr %32, i32 %33
  %35 = getelementptr i8, ptr %34, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %30) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #15
  br label %36

36:                                               ; preds = %13, %1
  %37 = load ptr, ptr %6, align 8
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %38, i32 0, i32 2, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 8
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %43) #15
  %45 = load ptr, ptr %3, align 8
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %46, i32 %48
  %50 = getelementptr i8, ptr %49, i32 %40
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #15, !srcloc !8
  %52 = xor i32 %42, -1
  %53 = and i32 %51, %52
  %54 = load ptr, ptr %3, align 8
  %55 = load ptr, ptr %54, align 4
  %56 = load i32, ptr %47, align 4
  %57 = getelementptr i8, ptr %55, i32 %56
  %58 = getelementptr i8, ptr %57, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %53) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %44) #15
  %59 = load ptr, ptr %10, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %75, label %61

61:                                               ; preds = %36
  %62 = load ptr, ptr %59, align 4
  %63 = getelementptr inbounds %struct.dma_device, ptr %62, i32 0, i32 47
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %61
  %67 = tail call i32 %64(ptr noundef nonnull %59) #15
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load ptr, ptr %59, align 4
  %71 = getelementptr inbounds %struct.dma_device, ptr %70, i32 0, i32 48
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  tail call void %72(ptr noundef nonnull %59) #15
  br label %75

75:                                               ; preds = %74, %69, %66, %61, %36
  %76 = load ptr, ptr %2, align 8
  %77 = getelementptr inbounds %struct.stm32_adc, ptr %76, i32 0, i32 8
  %78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %77) #15
  %79 = getelementptr inbounds %struct.stm32_adc, ptr %76, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %81, i32 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = load ptr, ptr %76, align 8
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.stm32_adc, ptr %76, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr i8, ptr %85, i32 %87
  %89 = getelementptr i8, ptr %88, i32 %83
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #15, !srcloc !8
  %91 = load ptr, ptr %79, align 8
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %92, i32 0, i32 6, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %92, i32 0, i32 7, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = or i32 %97, %95
  %99 = xor i32 %98, -1
  %100 = and i32 %90, %99
  %101 = load i32, ptr %93, align 4
  %102 = load ptr, ptr %76, align 8
  %103 = load ptr, ptr %102, align 4
  %104 = load i32, ptr %86, align 4
  %105 = getelementptr i8, ptr %103, i32 %104
  %106 = getelementptr i8, ptr %105, i32 %101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %100) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %77, i32 noundef %78) #15
  %107 = tail call i64 @ktime_get_mono_fast_ns() #15
  %108 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 22
  store volatile i64 %107, ptr %108, align 8
  %109 = tail call i32 @__pm_runtime_suspend(ptr noundef %5, i32 noundef 13) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_adc_set_trig(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %88, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.iio_trigger, ptr %1, i32 0, i32 3
  br label %15

15:                                               ; preds = %33, %13
  %16 = phi i32 [ 0, %13 ], [ %35, %33 ]
  %17 = tail call zeroext i1 @is_stm32_timer_trigger(ptr noundef nonnull %1) #15
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = tail call zeroext i1 @is_stm32_lptim_trigger(ptr noundef nonnull %1) #15
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  br label %33

24:                                               ; preds = %18, %15
  %25 = load ptr, ptr %7, align 8
  %26 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.stm32_adc_trig_info, ptr %27, i32 %16
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %14, align 4
  %31 = tail call i32 @strcmp(ptr noundef %29, ptr noundef %30) #15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %24, %20
  %34 = phi ptr [ %23, %20 ], [ %27, %24 ]
  %35 = add i32 %16, 1
  %36 = getelementptr %struct.stm32_adc_trig_info, ptr %34, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %88, label %15

39:                                               ; preds = %24
  %40 = getelementptr %struct.stm32_adc_trig_info, ptr %27, i32 %16, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %88, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 12
  %45 = load i32, ptr %44, align 8
  %46 = add i32 %45, 1
  br label %47

47:                                               ; preds = %43, %2
  %48 = phi i32 [ %41, %43 ], [ 0, %2 ]
  %49 = phi i32 [ %46, %43 ], [ 0, %2 ]
  %50 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 8
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %50) #15
  %52 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %54, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %4, align 8
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr i8, ptr %58, i32 %60
  %62 = getelementptr i8, ptr %61, i32 %56
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #15, !srcloc !8
  %64 = load ptr, ptr %52, align 8
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %65, i32 0, i32 6, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %65, i32 0, i32 7, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = or i32 %70, %68
  %72 = xor i32 %71, -1
  %73 = and i32 %63, %72
  %74 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %65, i32 0, i32 6, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = shl i32 %49, %75
  %77 = or i32 %73, %76
  %78 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %65, i32 0, i32 7, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = shl i32 %48, %79
  %81 = or i32 %77, %80
  %82 = load i32, ptr %66, align 4
  %83 = load ptr, ptr %4, align 8
  %84 = load ptr, ptr %83, align 4
  %85 = load i32, ptr %59, align 4
  %86 = getelementptr i8, ptr %84, i32 %85
  %87 = getelementptr i8, ptr %86, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %81) #15, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %51) #15
  br label %88

88:                                               ; preds = %47, %39, %33, %6
  %89 = phi i32 [ 0, %47 ], [ %41, %39 ], [ -22, %6 ], [ -22, %33 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_adc_dma_buffer_done(ptr noundef %0) #1 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #15, !annotation !15
  %5 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_chan, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 49
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 %11(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %2) #15
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 16
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %16, %18
  %20 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %19, %21
  %23 = select i1 %22, i32 %16, i32 0
  %24 = sub i32 %19, %21
  %25 = add i32 %24, %23
  br label %26

26:                                               ; preds = %14, %1
  %27 = phi i32 [ %25, %14 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  %28 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %51, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 14
  %33 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 9
  %34 = getelementptr inbounds %struct.stm32_adc, ptr %4, i32 0, i32 16
  %35 = load i32, ptr %33, align 4
  br label %36

36:                                               ; preds = %36, %31
  %37 = phi i32 [ %35, %31 ], [ %48, %36 ]
  %38 = phi i32 [ %27, %31 ], [ %43, %36 ]
  %39 = load ptr, ptr %32, align 8
  %40 = getelementptr i8, ptr %39, i32 %37
  %41 = call i32 @iio_push_to_buffers(ptr noundef %0, ptr noundef %40) #15
  %42 = load i32, ptr %28, align 4
  %43 = sub i32 %38, %42
  %44 = load i32, ptr %33, align 4
  %45 = add i32 %44, %42
  %46 = load i32, ptr %34, align 8
  %47 = icmp ult i32 %45, %46
  %48 = select i1 %47, i32 %45, i32 0
  store i32 %48, ptr %33, align 4
  %49 = load i32, ptr %28, align 4
  %50 = icmp slt i32 %43, %49
  br i1 %50, label %51, label %36

51:                                               ; preds = %36, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_suspend(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @stm32_adc_buffer_predisable(ptr noundef %3)
  br label %10

10:                                               ; preds = %8, %1
  %11 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #15
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_resume(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #15
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @stm32_adc_update_scan_mode(ptr noundef %3, ptr noundef %13)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @stm32_adc_buffer_postenable(ptr noundef %3)
  br label %18

18:                                               ; preds = %16, %11, %6, %1
  %19 = phi i32 [ %17, %16 ], [ %4, %1 ], [ 0, %6 ], [ %14, %11 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_runtime_suspend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void %9(ptr noundef %3) #15
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.stm32_adc, ptr %5, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  tail call void @clk_disable(ptr noundef %14) #15
  tail call void @clk_unprepare(ptr noundef %14) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_runtime_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = tail call fastcc i32 @stm32_adc_hw_start(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }

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
!8 = !{i64 5059062}
!9 = !{i64 5058644}
!10 = !{i8 0, i8 2}
!11 = !{i64 2148945791}
!12 = !{i64 2148941615}
!13 = !{i64 2148941690, i64 2148941717, i64 2148941764, i64 2148941786, i64 2148941814, i64 2148941834}
!14 = !{i64 2148968794}
!15 = !{!"auto-init"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 507623, i64 2147997594, i64 2147997620, i64 2147997667, i64 2147997689, i64 2147997717, i64 2147997737}
!18 = !{i64 2148009806, i64 2148009832, i64 2148009861, i64 2148009895, i64 2148009926, i64 2148009949}
!19 = !{i64 2148009313}
!20 = !{i64 494192, i64 494217, i64 494239, i64 494255, i64 494267, i64 494287, i64 494311, i64 494327, i64 494339}
!21 = !{i64 2148009439}
!22 = !{i64 5058224}
