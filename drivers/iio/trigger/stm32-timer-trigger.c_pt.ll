; ModuleID = '/llk/IR/drivers/iio/trigger/stm32-timer-trigger.c_pt.bc'
source_filename = "../drivers/iio/trigger/stm32-timer-trigger.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_stm32_timer_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22is_stm32_timer_trigger\22\09\09\09\09\09"
module asm "__kstrtabns_is_stm32_timer_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.stm32_timer_trigger_cfg = type { ptr, i32 }
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
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.64 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.stm32_timers = type { ptr, ptr, i32, %struct.stm32_timers_dma }
%struct.stm32_timers_dma = type { %struct.completion, i32, %struct.mutex, ptr, [7 x ptr] }
%struct.stm32_timer_trigger = type { ptr, ptr, ptr, i8, i32, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.stm32_timer_trigger_regs }
%struct.stm32_timer_trigger_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@timer_trigger_ops = internal constant %struct.iio_trigger_ops zeroinitializer, align 4
@__kstrtab_is_stm32_timer_trigger = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_stm32_timer_trigger = external dso_local constant [0 x i8], align 1
@__ksymtab_is_stm32_timer_trigger = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_stm32_timer_trigger to i32), ptr @__kstrtab_is_stm32_timer_trigger, ptr @__kstrtabns_is_stm32_timer_trigger }, section "___ksymtab+is_stm32_timer_trigger", align 4
@stm32_trig_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-timer-trigger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_timer_trg_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-timer-trigger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_timer_trg_cfg }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias224 = internal constant [35 x i8] c"alias=platform:stm32-timer-trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [58 x i8] c"description=STMicroelectronics STM32 Timer Trigger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stm32_timer_trg_cfg = internal constant %struct.stm32_timer_trigger_cfg { ptr @valids_table, i32 12 }, align 4
@stm32h7_timer_trg_cfg = internal constant %struct.stm32_timer_trigger_cfg { ptr @stm32h7_valids_table, i32 17 }, align 4
@valids_table = internal global [12 x [5 x ptr]] [[5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr null], [5 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.3, ptr null], [5 x ptr] [ptr @.str.4, ptr @.str.1, ptr @.str, ptr @.str.3, ptr null], [5 x ptr] [ptr @.str.4, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr null], [5 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr null], [5 x ptr] zeroinitializer, [5 x ptr] zeroinitializer, [5 x ptr] [ptr @.str.4, ptr @.str.1, ptr @.str.3, ptr @.str, ptr null], [5 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.6, ptr @.str.7, ptr null], [5 x ptr] zeroinitializer, [5 x ptr] zeroinitializer, [5 x ptr] [ptr @.str.3, ptr @.str, ptr @.str.8, ptr @.str.9, ptr null]], align 4
@.str = private unnamed_addr constant [10 x i8] c"tim5_trgo\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"tim2_trgo\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"tim3_trgo\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"tim4_trgo\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"tim1_trgo\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"tim8_trgo\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"tim10_oc1\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"tim11_oc1\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"tim13_oc1\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"tim14_oc1\00", align 1
@stm32h7_valids_table = internal global [17 x [5 x ptr]] [[5 x ptr] [ptr @.str.10, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr null], [5 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.3, ptr null], [5 x ptr] [ptr @.str.4, ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr null], [5 x ptr] [ptr @.str.4, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr null], [5 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.3, ptr null], [5 x ptr] zeroinitializer, [5 x ptr] zeroinitializer, [5 x ptr] [ptr @.str.4, ptr @.str.1, ptr @.str.3, ptr @.str, ptr null], [5 x ptr] zeroinitializer, [5 x ptr] zeroinitializer, [5 x ptr] zeroinitializer, [5 x ptr] [ptr @.str.3, ptr @.str, ptr @.str.8, ptr @.str.9, ptr null], [5 x ptr] zeroinitializer, [5 x ptr] zeroinitializer, [5 x ptr] [ptr @.str.4, ptr @.str.2, ptr @.str.11, ptr @.str.12, ptr null], [5 x ptr] zeroinitializer, [5 x ptr] zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"tim15_trgo\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"tim16_oc1\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"tim17_oc1\00", align 1
@stm32_timer_trigger_driver = internal global %struct.platform_driver { ptr @stm32_timer_trigger_probe, ptr @stm32_timer_trigger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_trig_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_timer_trigger_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.13 = private unnamed_addr constant [20 x i8] c"stm32-timer-trigger\00", align 1
@stm32_timer_trigger_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_timer_trigger_suspend, ptr @stm32_timer_trigger_resume, ptr @stm32_timer_trigger_suspend, ptr @stm32_timer_trigger_resume, ptr @stm32_timer_trigger_suspend, ptr @stm32_timer_trigger_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@triggers_table = internal global [17 x [7 x ptr]] [[7 x ptr] [ptr @.str.4, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr null], [7 x ptr] [ptr @.str.1, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr null, ptr null], [7 x ptr] [ptr @.str.2, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr null, ptr null], [7 x ptr] [ptr @.str.3, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr null, ptr null], [7 x ptr] [ptr @.str, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr null, ptr null], [7 x ptr] [ptr @.str.47, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.48, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.5, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr null], [7 x ptr] [ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.11, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null]], align 4
@stm32_timer_trigger_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"&priv->lock\00", align 1
@stm32_trigger_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @stm32_counter_read_raw, ptr null, ptr null, ptr @stm32_counter_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_counter_validate_trigger, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@stm32_trigger_channel = internal constant %struct.iio_chan_spec { i32 29, i32 0, i32 0, i32 0, i32 0, %struct.anon.64 zeroinitializer, i32 524293, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @stm32_trigger_count_info, ptr null, ptr null, i8 2 }, align 4
@stm32_trigger_count_info = internal constant [6 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.16, i32 0, ptr @stm32_count_get_preset, ptr @stm32_count_set_preset, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.17, i32 0, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @stm32_enable_mode_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.18, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @stm32_enable_mode_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.19, i32 0, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @stm32_trigger_mode_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.20, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @stm32_trigger_mode_enum to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"enable_mode\00", align 1
@stm32_enable_mode_enum = internal constant %struct.iio_enum { ptr @stm32_enable_modes, i32 3, ptr @stm32_set_enable_mode, ptr @stm32_get_enable_mode }, align 4
@.str.18 = private unnamed_addr constant [22 x i8] c"enable_mode_available\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"trigger_mode\00", align 1
@stm32_trigger_mode_enum = internal constant %struct.iio_enum { ptr @stm32_trigger_modes, i32 1, ptr @stm32_set_trigger_mode, ptr @stm32_get_trigger_mode }, align 4
@.str.20 = private unnamed_addr constant [23 x i8] c"trigger_mode_available\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@stm32_enable_modes = internal constant [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24], align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"gated\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"triggered\00", align 1
@stm32_trigger_modes = internal constant [1 x ptr] [ptr @.str.25], align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"tim1_trgo2\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"tim1_ch1\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"tim1_ch2\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"tim1_ch3\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"tim1_ch4\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"tim2_ch1\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"tim2_ch2\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"tim2_ch3\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"tim2_ch4\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"tim3_ch1\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"tim3_ch2\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"tim3_ch3\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"tim3_ch4\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"tim4_ch1\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"tim4_ch2\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"tim4_ch3\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"tim4_ch4\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"tim5_ch1\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"tim5_ch2\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"tim5_ch3\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"tim5_ch4\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"tim6_trgo\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"tim7_trgo\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"tim8_trgo2\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"tim8_ch1\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"tim8_ch2\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"tim8_ch3\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"tim8_ch4\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"tim9_trgo\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"tim9_ch1\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"tim9_ch2\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"tim12_trgo\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"tim12_ch1\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"tim12_ch2\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stm32_trigger_attr_groups = internal global [2 x ptr] [ptr @stm32_trigger_attr_group, ptr null], align 4
@.str.61 = private unnamed_addr constant [5 x i8] c"trgo\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"trgo2\00", align 1
@stm32_trigger_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @stm32_trigger_attrs, ptr null }, align 4
@stm32_trigger_attrs = internal global [4 x ptr] [ptr @iio_dev_attr_sampling_frequency, ptr @iio_dev_attr_master_mode, ptr @iio_dev_attr_master_mode_available, ptr null], align 4
@iio_dev_attr_sampling_frequency = internal global %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 432 }, ptr @stm32_tt_read_frequency, ptr @stm32_tt_store_frequency }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, align 8
@iio_dev_attr_master_mode = internal global %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 432 }, ptr @stm32_tt_show_master_mode, ptr @stm32_tt_store_master_mode }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, align 8
@iio_dev_attr_master_mode_available = internal global %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292 }, ptr @stm32_tt_show_master_mode_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, align 8
@.str.63 = private unnamed_addr constant [19 x i8] c"sampling_frequency\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"prescaler exceeds the maximum value\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"master_mode\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@master_mode_table = internal unnamed_addr constant [16 x ptr] [ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], align 4
@.str.68 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"compare_pulse\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"OC1REF\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"OC2REF\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"OC3REF\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"OC4REF\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"OC5REF\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"OC6REF\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"compare_pulse_OC4REF\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"compare_pulse_OC6REF\00", align 1
@.str.80 = private unnamed_addr constant [35 x i8] c"compare_pulse_OC4REF_r_or_OC6REF_r\00", align 1
@.str.81 = private unnamed_addr constant [35 x i8] c"compare_pulse_OC4REF_r_or_OC6REF_f\00", align 1
@.str.82 = private unnamed_addr constant [35 x i8] c"compare_pulse_OC5REF_r_or_OC6REF_r\00", align 1
@.str.83 = private unnamed_addr constant [35 x i8] c"compare_pulse_OC5REF_r_or_OC6REF_f\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c"master_mode_available\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_license226, ptr @__ksymtab_is_stm32_timer_trigger], section "llvm.metadata"
@switch.table.stm32_get_enable_mode = private unnamed_addr constant [7 x i32] [i32 0, i32 -22, i32 -22, i32 -22, i32 -22, i32 1, i32 2], align 4

@__mod_of__stm32_trig_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @stm32_trig_of_match

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_stm32_timer_trigger(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, @timer_trigger_ops
  ret i1 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_timer_trigger_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_timer_trigger_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_timer_trigger_probe(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.14, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %136

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.device_driver, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = call ptr @of_match_device(ptr noundef %17, ptr noundef %4) #8
  %19 = getelementptr inbounds %struct.of_device_id, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %3, align 4
  %22 = icmp ugt i32 %21, 16
  br i1 %22, label %136, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.stm32_timer_trigger_cfg, ptr %20, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %21, %25
  br i1 %26, label %27, label %136

27:                                               ; preds = %23
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr [5 x ptr], ptr %28, i32 %21
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %27
  %33 = call ptr @devm_iio_device_alloc(ptr noundef %4, i32 noundef 84) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %136, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load ptr, ptr %4, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %40, %39 ], [ %37, %35 ]
  %43 = getelementptr inbounds %struct.iio_dev, ptr %33, i32 0, i32 15
  store ptr %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.iio_dev, ptr %33, i32 0, i32 17
  store ptr @stm32_trigger_info, ptr %44, align 8
  store i32 32, ptr %33, align 8
  %45 = getelementptr inbounds %struct.iio_dev, ptr %33, i32 0, i32 14
  store i32 1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.iio_dev, ptr %33, i32 0, i32 13
  store ptr @stm32_trigger_channel, ptr %46, align 8
  %47 = call i32 @__devm_iio_device_register(ptr noundef %4, ptr noundef nonnull %33, ptr noundef nonnull @__this_module) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %136

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.iio_dev, ptr %33, i32 0, i32 19
  %51 = load ptr, ptr %50, align 8
  br label %54

52:                                               ; preds = %27
  %53 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 84, i32 noundef 3520) #8
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi ptr [ %53, %52 ], [ %51, %49 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %136, label %57

57:                                               ; preds = %54
  store ptr %4, ptr %55, align 4
  %58 = getelementptr inbounds %struct.stm32_timers, ptr %8, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %55, i32 0, i32 1
  store ptr %59, ptr %60, align 4
  %61 = load ptr, ptr %8, align 4
  %62 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %55, i32 0, i32 2
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.stm32_timers, ptr %8, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %55, i32 0, i32 4
  store i32 %64, ptr %65, align 4
  %66 = load i32, ptr %3, align 4
  %67 = getelementptr [17 x [7 x ptr]], ptr @triggers_table, i32 0, i32 %66
  %68 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %55, i32 0, i32 5
  store ptr %67, ptr %68, align 4
  %69 = load ptr, ptr %20, align 4
  %70 = getelementptr [5 x ptr], ptr %69, i32 %66
  %71 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %55, i32 0, i32 6
  store ptr %70, ptr %71, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %72 = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 4, i32 noundef 15728640, i32 noundef 15728640, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %73 = load ptr, ptr %60, align 4
  %74 = call i32 @regmap_read(ptr noundef %73, i32 noundef 4, ptr noundef nonnull %2) #8
  %75 = load ptr, ptr %60, align 4
  %76 = call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 4, i32 noundef 15728640, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %77 = load i32, ptr %2, align 4
  %78 = icmp ne i32 %77, 0
  %79 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %55, i32 0, i32 7
  %80 = zext i1 %78 to i8
  store i8 %80, ptr %79, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %81 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %55, i32 0, i32 8
  call void @__mutex_init(ptr noundef %81, ptr noundef nonnull @.str.15, ptr noundef nonnull @stm32_timer_trigger_probe.__key) #8
  %82 = load ptr, ptr %68, align 4
  %83 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %55, i32 0, i32 9
  store volatile ptr %83, ptr %83, align 4
  %84 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %55, i32 0, i32 9, i32 1
  store ptr %83, ptr %84, align 4
  %85 = icmp eq ptr %82, null
  br i1 %85, label %134, label %86

86:                                               ; preds = %131, %57
  %87 = phi ptr [ %132, %131 ], [ %82, %57 ]
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %134, label %90

90:                                               ; preds = %86
  %91 = call ptr @strstr(ptr noundef nonnull %88, ptr noundef nonnull @.str.61) #8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = call ptr @strstr(ptr noundef nonnull %88, ptr noundef nonnull @.str.62) #8
  %95 = icmp eq ptr %94, null
  br label %96

96:                                               ; preds = %93, %90
  %97 = phi i1 [ false, %90 ], [ %95, %93 ]
  %98 = call ptr @strstr(ptr noundef nonnull %88, ptr noundef nonnull @.str.62) #8
  %99 = icmp ne ptr %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i8, ptr %79, align 4, !range !9
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %131, label %103

103:                                              ; preds = %100, %96
  %104 = load ptr, ptr %55, align 4
  %105 = call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %104, ptr noundef nonnull @.str.60, ptr noundef nonnull %88) #8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %136, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %55, align 4
  %109 = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.iio_trigger, ptr %105, i32 0, i32 4, i32 1
  store ptr %110, ptr %111, align 4
  store ptr @timer_trigger_ops, ptr %105, align 8
  %112 = select i1 %97, i1 true, i1 %99
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.iio_trigger, ptr %105, i32 0, i32 4, i32 32
  store ptr @stm32_trigger_attr_groups, ptr %114, align 8
  br label %115

115:                                              ; preds = %113, %107
  %116 = getelementptr inbounds %struct.iio_trigger, ptr %105, i32 0, i32 4, i32 8
  store ptr %55, ptr %116, align 8
  %117 = call i32 @__iio_trigger_register(ptr noundef nonnull %105, ptr noundef nonnull @__this_module) #8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %83, align 4
  %121 = icmp eq ptr %120, %83
  br i1 %121, label %136, label %122

122:                                              ; preds = %122, %119
  %123 = phi ptr [ %125, %122 ], [ %120, %119 ]
  %124 = getelementptr i8, ptr %123, i32 -496
  call void @iio_trigger_unregister(ptr noundef %124) #8
  %125 = load ptr, ptr %123, align 4
  %126 = icmp eq ptr %125, %83
  br i1 %126, label %136, label %122

127:                                              ; preds = %115
  %128 = getelementptr inbounds %struct.iio_trigger, ptr %105, i32 0, i32 6
  %129 = load ptr, ptr %84, align 4
  store ptr %128, ptr %84, align 4
  store ptr %83, ptr %128, align 4
  %130 = getelementptr inbounds %struct.iio_trigger, ptr %105, i32 0, i32 6, i32 1
  store ptr %129, ptr %130, align 4
  store volatile ptr %128, ptr %129, align 4
  br label %131

131:                                              ; preds = %127, %100
  %132 = getelementptr ptr, ptr %87, i32 1
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %86

134:                                              ; preds = %131, %86, %57
  %135 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %55, ptr %135, align 8
  br label %136

136:                                              ; preds = %134, %122, %119, %103, %54, %41, %32, %23, %13, %1
  %137 = phi i32 [ 0, %134 ], [ -22, %1 ], [ -22, %23 ], [ -22, %13 ], [ -12, %54 ], [ -12, %32 ], [ -12, %41 ], [ %117, %119 ], [ %117, %122 ], [ -12, %103 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_timer_trigger_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %13, label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %11, %8 ], [ %6, %1 ]
  %10 = getelementptr i8, ptr %9, i32 -496
  tail call void @iio_trigger_unregister(ptr noundef %10) #8
  %11 = load ptr, ptr %9, align 4
  %12 = icmp eq ptr %11, %5
  br i1 %12, label %13, label %8

13:                                               ; preds = %8, %1
  %14 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @regmap_read(ptr noundef %15, i32 noundef 32, ptr noundef nonnull %2) #8
  %17 = load i32, ptr %2, align 4
  %18 = and i32 %17, 4369
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load ptr, ptr %14, align 4
  %22 = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %23

23:                                               ; preds = %20, %13
  %24 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %4, i32 0, i32 3
  %25 = load i8, ptr %24, align 4, !range !9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %4, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  call void @clk_disable(ptr noundef %29) #8
  br label %30

30:                                               ; preds = %27, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_counter_read_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #3 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  switch i32 %4, label %28 [
    i32 0, label %9
    i32 19, label %14
    i32 2, label %20
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef 36, ptr noundef nonnull %6) #8
  %13 = load i32, ptr %6, align 4
  store i32 %13, ptr %2, align 4
  br label %28

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @regmap_read(ptr noundef %16, i32 noundef 0, ptr noundef nonnull %6) #8
  %18 = load i32, ptr %6, align 4
  %19 = and i32 %18, 1
  store i32 %19, ptr %2, align 4
  br label %28

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %8, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @regmap_read(ptr noundef %22, i32 noundef 8, ptr noundef nonnull %6) #8
  %24 = load i32, ptr %6, align 4
  %25 = and i32 %24, 7
  store i32 1, ptr %2, align 4
  %26 = icmp eq i32 %25, 3
  %27 = select i1 %26, i32 2, i32 0
  store i32 %27, ptr %3, align 4
  br label %28

28:                                               ; preds = %20, %14, %9, %5
  %29 = phi i32 [ 11, %20 ], [ 1, %14 ], [ 1, %9 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_counter_write_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  switch i32 %4, label %38 [
    i32 0, label %8
    i32 19, label %12
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 36, i32 noundef %2) #8
  br label %38

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %7, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %13) #8
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %7, i32 0, i32 3
  %17 = load i8, ptr %16, align 4, !range !9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  store i8 1, ptr %16, align 4
  %20 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %7, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @clk_enable(ptr noundef %21) #8
  br label %23

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %7, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %37

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %7, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %31 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %7, i32 0, i32 3
  %32 = load i8, ptr %31, align 4, !range !9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  store i8 0, ptr %31, align 4
  %35 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %7, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  tail call void @clk_disable(ptr noundef %36) #8
  br label %37

37:                                               ; preds = %34, %27, %23
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %38

38:                                               ; preds = %37, %8, %5
  %39 = phi i32 [ 0, %37 ], [ %11, %8 ], [ -22, %5 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_counter_validate_trigger(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %1, align 8
  %8 = icmp ne ptr %7, @timer_trigger_ops
  %9 = icmp eq ptr %6, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %32, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.iio_trigger, ptr %1, i32 0, i32 3
  br label %13

13:                                               ; preds = %28, %11
  %14 = phi i32 [ 0, %11 ], [ %30, %28 ]
  %15 = phi ptr [ %6, %11 ], [ %29, %28 ]
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %12, align 4
  %20 = tail call i32 @strlen(ptr noundef %19)
  %21 = tail call i32 @strncmp(ptr noundef %19, ptr noundef nonnull %16, i32 noundef %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %4, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = shl i32 %14, 4
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 8, i32 noundef 112, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %32

28:                                               ; preds = %18
  %29 = getelementptr ptr, ptr %15, i32 1
  %30 = add i32 %14, 1
  %31 = icmp eq ptr %29, null
  br i1 %31, label %32, label %13

32:                                               ; preds = %28, %23, %13, %2
  %33 = phi i32 [ 0, %23 ], [ -22, %2 ], [ -22, %13 ], [ -22, %28 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_count_get_preset(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 44, ptr noundef nonnull %5) #8
  %11 = load i32, ptr %5, align 4
  %12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %3, i32 noundef 4096, ptr noundef nonnull @.str.21, i32 noundef %11)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_count_set_preset(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3, i32 noundef %4) #3 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %9 = call i32 @kstrtouint(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %6) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %15 = load ptr, ptr %12, align 4
  %16 = load i32, ptr %6, align 4
  %17 = call i32 @regmap_write(ptr noundef %15, i32 noundef 44, i32 noundef %16) #8
  br label %18

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %4, %11 ], [ %9, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_set_enable_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  switch i32 %2, label %25 [
    i32 0, label %7
    i32 1, label %6
    i32 2, label %10
  ]

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %3
  %8 = phi i32 [ 5, %6 ], [ %2, %3 ]
  %9 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %5, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %9) #8
  br label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %5, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %11) #8
  %12 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %5, i32 0, i32 3
  %13 = load i8, ptr %12, align 4, !range !9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %5, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_enable(ptr noundef %17) #8
  store i8 1, ptr %12, align 4
  br label %19

19:                                               ; preds = %15, %10, %7
  %20 = phi ptr [ %9, %7 ], [ %11, %15 ], [ %11, %10 ]
  %21 = phi i32 [ %8, %7 ], [ 6, %15 ], [ 6, %10 ]
  tail call void @mutex_unlock(ptr noundef %20) #8
  %22 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %5, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 8, i32 noundef 7, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %25

25:                                               ; preds = %19, %3
  %26 = phi i32 [ 0, %19 ], [ -22, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_get_enable_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #3 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 8, ptr noundef nonnull %3) #8
  %9 = load i32, ptr %3, align 4
  %10 = and i32 %9, 7
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds [7 x i32], ptr @switch.table.stm32_get_enable_mode, i32 0, i32 %10
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i32 [ %14, %12 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_set_trigger_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 8, i32 noundef 7, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_get_trigger_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #3 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 8, ptr noundef nonnull %3) #8
  %9 = load i32, ptr %3, align 4
  %10 = and i32 %9, 7
  %11 = icmp eq i32 %10, 7
  %12 = select i1 %11, i32 0, i32 -22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_tt_read_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 64
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %6) #8
  %12 = load ptr, ptr %9, align 4
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 40, ptr noundef nonnull %4) #8
  %14 = load ptr, ptr %9, align 4
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef 44, ptr noundef nonnull %5) #8
  %16 = load i32, ptr %6, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %8, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @clk_get_rate(ptr noundef %21) #8
  %23 = load i32, ptr %4, align 4
  %24 = add i32 %23, 1
  %25 = udiv i32 %22, %24
  %26 = load i32, ptr %5, align 4
  %27 = add i32 %26, 1
  %28 = udiv i32 %25, %27
  br label %29

29:                                               ; preds = %19, %3
  %30 = phi i32 [ 0, %3 ], [ %28, %19 ]
  %31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.64, i32 noundef %30)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_tt_store_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr i8, ptr %0, i32 64
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !8
  %10 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %7) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %108

12:                                               ; preds = %4
  %13 = load i32, ptr %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %9, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef 32, ptr noundef nonnull %6) #8
  %19 = load i32, ptr %6, align 4
  %20 = and i32 %19, 4369
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %9, i32 0, i32 8
  call void @mutex_lock(ptr noundef %23) #8
  %24 = load ptr, ptr %16, align 4
  %25 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %26 = load ptr, ptr %16, align 4
  %27 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %28 = load ptr, ptr %16, align 4
  %29 = call i32 @regmap_write(ptr noundef %28, i32 noundef 40, i32 noundef 0) #8
  %30 = load ptr, ptr %16, align 4
  %31 = call i32 @regmap_write(ptr noundef %30, i32 noundef 44, i32 noundef 0) #8
  %32 = getelementptr i8, ptr %0, i32 -4
  %33 = load ptr, ptr %32, align 4
  %34 = call ptr @strstr(ptr noundef %33, ptr noundef nonnull @.str.62) #8
  %35 = icmp eq ptr %34, null
  %36 = load ptr, ptr %16, align 4
  %37 = select i1 %35, i32 112, i32 15728640
  %38 = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 4, i32 noundef %37, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %39 = load ptr, ptr %16, align 4
  %40 = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 20, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %41 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %9, i32 0, i32 3
  %42 = load i8, ptr %41, align 4, !range !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %22
  store i8 0, ptr %41, align 4
  %45 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %9, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  call void @clk_disable(ptr noundef %46) #8
  br label %47

47:                                               ; preds = %44, %22
  call void @mutex_unlock(ptr noundef %23) #8
  br label %48

48:                                               ; preds = %47, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %108

49:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %50 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %9, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 @clk_get_rate(ptr noundef %51) #8
  %53 = udiv i32 %52, %13
  %54 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %9, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = icmp ugt i32 %53, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %57, %49
  %58 = phi i32 [ %59, %57 ], [ 0, %49 ]
  %59 = add i32 %58, 1
  %60 = add i32 %58, 2
  %61 = udiv i32 %53, %60
  %62 = icmp ugt i32 %61, %55
  br i1 %62, label %57, label %63

63:                                               ; preds = %57
  %64 = icmp sgt i32 %59, 65535
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.65) #9
  br label %101

67:                                               ; preds = %63, %49
  %68 = phi i32 [ %59, %63 ], [ 0, %49 ]
  %69 = phi i32 [ %61, %63 ], [ %53, %49 ]
  %70 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %9, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = call i32 @regmap_read(ptr noundef %71, i32 noundef 32, ptr noundef nonnull %5) #8
  %73 = load i32, ptr %5, align 4
  %74 = and i32 %73, 4369
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %9, i32 0, i32 8
  call void @mutex_lock(ptr noundef %77) #8
  %78 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %9, i32 0, i32 3
  %79 = load i8, ptr %78, align 4, !range !9
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  store i8 1, ptr %78, align 4
  %82 = load ptr, ptr %50, align 4
  %83 = call i32 @clk_enable(ptr noundef %82) #8
  br label %84

84:                                               ; preds = %81, %76
  %85 = load ptr, ptr %70, align 4
  %86 = call i32 @regmap_write(ptr noundef %85, i32 noundef 40, i32 noundef %68) #8
  %87 = load ptr, ptr %70, align 4
  %88 = add i32 %69, -1
  %89 = call i32 @regmap_write(ptr noundef %87, i32 noundef 44, i32 noundef %88) #8
  %90 = load ptr, ptr %70, align 4
  %91 = call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef 0, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %92 = getelementptr i8, ptr %0, i32 -4
  %93 = load ptr, ptr %92, align 4
  %94 = call ptr @strstr(ptr noundef %93, ptr noundef nonnull @.str.62) #8
  %95 = icmp eq ptr %94, null
  %96 = load ptr, ptr %70, align 4
  br i1 %95, label %99, label %97

97:                                               ; preds = %84
  %98 = call i32 @regmap_update_bits_base(ptr noundef %96, i32 noundef 4, i32 noundef 15728640, i32 noundef 2097152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %103

99:                                               ; preds = %84
  %100 = call i32 @regmap_update_bits_base(ptr noundef %96, i32 noundef 4, i32 noundef 112, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %103

101:                                              ; preds = %67, %65
  %102 = phi i32 [ -16, %67 ], [ -22, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %108

103:                                              ; preds = %99, %97
  %104 = load ptr, ptr %70, align 4
  %105 = call i32 @regmap_update_bits_base(ptr noundef %104, i32 noundef 20, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %106 = load ptr, ptr %70, align 4
  %107 = call i32 @regmap_update_bits_base(ptr noundef %106, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @mutex_unlock(ptr noundef %77) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %108

108:                                              ; preds = %103, %101, %48, %4
  %109 = phi i32 [ %10, %4 ], [ %102, %101 ], [ %3, %103 ], [ %3, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_tt_show_master_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #3 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 4, ptr noundef nonnull %4) #8
  %10 = getelementptr i8, ptr %0, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = call ptr @strstr(ptr noundef %11, ptr noundef nonnull @.str.62) #8
  %13 = icmp eq ptr %12, null
  %14 = load i32, ptr %4, align 4
  %15 = lshr i32 %14, 4
  %16 = and i32 %15, 7
  %17 = lshr i32 %14, 20
  %18 = and i32 %17, 15
  %19 = select i1 %13, i32 %16, i32 %18
  store i32 %19, ptr %4, align 4
  %20 = getelementptr [16 x ptr], ptr @master_mode_table, i32 0, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.67, ptr noundef %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_tt_store_master_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @strstr(ptr noundef %8, ptr noundef nonnull @.str.62) #8
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, i32 112, i32 15728640
  %12 = select i1 %10, i32 4, i32 20
  %13 = select i1 %10, i32 8, i32 16
  br label %14

14:                                               ; preds = %35, %4
  %15 = phi i32 [ 0, %4 ], [ %36, %35 ]
  %16 = getelementptr [16 x ptr], ptr @master_mode_table, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @strlen(ptr noundef %17)
  %19 = tail call i32 @strncmp(ptr noundef %17, ptr noundef %2, i32 noundef %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %6, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %22) #8
  %23 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %6, i32 0, i32 3
  %24 = load i8, ptr %23, align 4, !range !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  store i8 1, ptr %23, align 4
  %27 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %6, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @clk_enable(ptr noundef %28) #8
  br label %30

30:                                               ; preds = %26, %21
  %31 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %6, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = shl i32 %15, %12
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 4, i32 noundef %11, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @mutex_unlock(ptr noundef %22) #8
  br label %38

35:                                               ; preds = %14
  %36 = add nuw nsw i32 %15, 1
  %37 = icmp eq i32 %36, %13
  br i1 %37, label %38, label %14

38:                                               ; preds = %35, %30
  %39 = phi i32 [ %3, %30 ], [ -22, %35 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_tt_show_master_mode_avail(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @strstr(ptr noundef %5, ptr noundef nonnull @.str.62) #8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, i32 8, i32 16
  br label %9

9:                                                ; preds = %9, %3
  %10 = phi i32 [ 0, %3 ], [ %17, %9 ]
  %11 = phi i32 [ 0, %3 ], [ %18, %9 ]
  %12 = getelementptr i8, ptr %2, i32 %10
  %13 = sub i32 4096, %10
  %14 = getelementptr [16 x ptr], ptr @master_mode_table, i32 0, i32 %11
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %12, i32 noundef %13, ptr noundef nonnull @.str.85, ptr noundef %15) #8
  %17 = add i32 %16, %10
  %18 = add nuw nsw i32 %11, 1
  %19 = icmp eq i32 %18, %8
  br i1 %19, label %20, label %9

20:                                               ; preds = %9
  %21 = add i32 %17, -1
  %22 = getelementptr i8, ptr %2, i32 %21
  store i8 10, ptr %22, align 1
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_timer_trigger_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 3
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 10
  %11 = tail call i32 @regmap_read(ptr noundef %9, i32 noundef 0, ptr noundef %10) #8
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 10, i32 1
  %14 = tail call i32 @regmap_read(ptr noundef %12, i32 noundef 4, ptr noundef %13) #8
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 10, i32 2
  %17 = tail call i32 @regmap_read(ptr noundef %15, i32 noundef 40, ptr noundef %16) #8
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 10, i32 3
  %20 = tail call i32 @regmap_read(ptr noundef %18, i32 noundef 44, ptr noundef %19) #8
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 10, i32 4
  %23 = tail call i32 @regmap_read(ptr noundef %21, i32 noundef 36, ptr noundef %22) #8
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 10, i32 5
  %26 = tail call i32 @regmap_read(ptr noundef %24, i32 noundef 8, ptr noundef %25) #8
  %27 = load ptr, ptr %8, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %29 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %30) #8
  br label %31

31:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_timer_trigger_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 3
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_enable(ptr noundef %9) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 10
  %16 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 10, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 8, i32 noundef %17) #8
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 10, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 4, i32 noundef %21) #8
  %23 = load ptr, ptr %13, align 4
  %24 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 10, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 40, i32 noundef %25) #8
  %27 = load ptr, ptr %13, align 4
  %28 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 10, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 44, i32 noundef %29) #8
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %3, i32 0, i32 10, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 36, i32 noundef %33) #8
  %35 = load ptr, ptr %13, align 4
  %36 = load i32, ptr %15, align 4
  %37 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 0, i32 noundef %36) #8
  br label %38

38:                                               ; preds = %12, %7, %1
  %39 = phi i32 [ %10, %7 ], [ 0, %12 ], [ 0, %1 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
