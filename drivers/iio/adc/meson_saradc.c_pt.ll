; ModuleID = '/llk/IR/drivers/iio/adc/meson_saradc.c_pt.bc'
source_filename = "../drivers/iio/adc/meson_saradc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.meson_sar_adc_data = type { ptr, ptr }
%struct.meson_sar_adc_param = type { i8, i32, i32, i32, ptr, i8, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.meson_sar_adc_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.clk_gate, ptr, %struct.clk_divider, %struct.completion, i32, i32, ptr, i8, i8, i16 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@meson_sar_adc_of_match = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_sar_adc_meson8_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_sar_adc_meson8b_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8m2-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_sar_adc_meson8m2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_sar_adc_gxbb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxl-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_sar_adc_gxl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxm-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_sar_adc_gxm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_sar_adc_axg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_sar_adc_g12a_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author351 = internal constant [64 x i8] c"author=Martin Blumenstingl <martin.blumenstingl@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description352 = internal constant [41 x i8] c"description=Amlogic Meson SAR ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@meson_sar_adc_meson8_data = internal constant %struct.meson_sar_adc_data { ptr @meson_sar_adc_meson8_param, ptr @.str }, align 4
@meson_sar_adc_meson8b_data = internal constant %struct.meson_sar_adc_data { ptr @meson_sar_adc_meson8b_param, ptr @.str.1 }, align 4
@meson_sar_adc_meson8m2_data = internal constant %struct.meson_sar_adc_data { ptr @meson_sar_adc_meson8b_param, ptr @.str.2 }, align 4
@meson_sar_adc_gxbb_data = internal constant %struct.meson_sar_adc_data { ptr @meson_sar_adc_gxbb_param, ptr @.str.3 }, align 4
@meson_sar_adc_gxl_data = internal constant %struct.meson_sar_adc_data { ptr @meson_sar_adc_gxl_param, ptr @.str.4 }, align 4
@meson_sar_adc_gxm_data = internal constant %struct.meson_sar_adc_data { ptr @meson_sar_adc_gxl_param, ptr @.str.5 }, align 4
@meson_sar_adc_axg_data = internal constant %struct.meson_sar_adc_data { ptr @meson_sar_adc_gxl_param, ptr @.str.6 }, align 4
@meson_sar_adc_g12a_data = internal constant %struct.meson_sar_adc_data { ptr @meson_sar_adc_g12a_param, ptr @.str.7 }, align 4
@meson_sar_adc_meson8_param = internal constant %struct.meson_sar_adc_param { i8 0, i32 1150000, i32 40, i32 10, ptr @meson_sar_adc_regmap_config_meson8, i8 4, i32 180000, i32 870400 }, align 4
@.str = private unnamed_addr constant [20 x i8] c"meson-meson8-saradc\00", align 1
@meson_sar_adc_regmap_config_meson8 = internal constant %struct.regmap_config { ptr null, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 40, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@meson_sar_adc_meson8b_param = internal constant %struct.meson_sar_adc_param { i8 0, i32 1150000, i32 40, i32 10, ptr @meson_sar_adc_regmap_config_meson8, i8 5, i32 10, i32 32 }, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"meson-meson8b-saradc\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"meson-meson8m2-saradc\00", align 1
@meson_sar_adc_gxbb_param = internal constant %struct.meson_sar_adc_param { i8 1, i32 1200000, i32 44, i32 10, ptr @meson_sar_adc_regmap_config_gxbb, i8 0, i32 0, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"meson-gxbb-saradc\00", align 1
@meson_sar_adc_regmap_config_gxbb = internal constant %struct.regmap_config { ptr null, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 52, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@meson_sar_adc_gxl_param = internal constant %struct.meson_sar_adc_param { i8 1, i32 1200000, i32 44, i32 12, ptr @meson_sar_adc_regmap_config_gxbb, i8 0, i32 0, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"meson-gxl-saradc\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"meson-gxm-saradc\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"meson-axg-saradc\00", align 1
@meson_sar_adc_g12a_param = internal constant %struct.meson_sar_adc_param { i8 0, i32 1200000, i32 44, i32 12, ptr @meson_sar_adc_regmap_config_gxbb, i8 0, i32 0, i32 0 }, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"meson-g12a-saradc\00", align 1
@meson_sar_adc_driver = internal global %struct.platform_driver { ptr @meson_sar_adc_probe, ptr @meson_sar_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_sar_adc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_sar_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.8 = private unnamed_addr constant [13 x i8] c"meson-saradc\00", align 1
@meson_sar_adc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @meson_sar_adc_suspend, ptr @meson_sar_adc_resume, ptr @meson_sar_adc_suspend, ptr @meson_sar_adc_resume, ptr @meson_sar_adc_suspend, ptr @meson_sar_adc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"failed allocating iio device\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"failed to get match data\0A\00", align 1
@meson_sar_adc_iio_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @meson_sar_adc_iio_info_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"clkin\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"failed to get clkin\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"failed to get core clk\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"adc_clk\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"failed to get adc clk\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"adc_sel\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"failed to get adc_sel clk\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"failed to get vref regulator\0A\00", align 1
@meson_sar_adc_and_temp_iio_channels = internal constant [10 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.36, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.37, i8 2 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.38, i8 2 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.39, i8 2 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.40, i8 2 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.41, i8 2 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.42, i8 2 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.43, i8 2 }, %struct.iio_chan_spec { i32 9, i32 8, i32 0, i32 6, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 12, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.44, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 9, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], align 4
@meson_sar_adc_iio_channels = internal constant [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.36, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.37, i8 2 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.38, i8 2 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.39, i8 2 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.40, i8 2 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.41, i8 2 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.42, i8 2 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.71 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.43, i8 2 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], align 4
@.str.21 = private unnamed_addr constant [20 x i8] c"calibration failed\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"failed to get vref voltage: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"failed to read sample for channel %lu: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.25 = private unnamed_addr constant [43 x i8] c"ADC FIFO has %d element(s) instead of one\0A\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"ADC FIFO entry belongs to channel %d instead of %lu\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"%s#adc_div\00", align 1
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@.str.28 = private unnamed_addr constant [31 x i8] c"drivers/iio/adc/meson_saradc.c\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"%s#adc_en\00", align 1
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.30 = private unnamed_addr constant [18 x i8] c"temperature_calib\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"failed to get temperature_calib cell\0A\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"amlogic,hhi-sysctrl\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c"failed to get amlogic,hhi-sysctrl regmap\0A\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"failed to read temperature_calib cell\0A\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"invalid read size of temperature_calib cell\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"SAR_ADC_CH0\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"SAR_ADC_CH1\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"SAR_ADC_CH2\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"SAR_ADC_CH3\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"SAR_ADC_CH4\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"SAR_ADC_CH5\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"SAR_ADC_CH6\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"SAR_ADC_CH7\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"TEMP_SENSOR\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"failed to set adc parent to clkin\0A\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"failed to set adc clock rate\0A\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"failed to enable vref regulator\0A\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"failed to enable core clk\0A\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"failed to enable adc clk\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description352, ptr @__UNIQUE_ID_license353], section "llvm.metadata"

@__mod_of__meson_sar_adc_of_match_device_table = dso_local alias [9 x %struct.of_device_id], ptr @meson_sar_adc_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_sar_adc_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_sar_adc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_sar_adc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @devm_iio_device_alloc(ptr noundef %2, i32 noundef 116) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #8
  br label %127

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %8, i32 0, i32 10
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %8, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %10, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #7
  %11 = tail call ptr @of_device_get_match_data(ptr noundef %2) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #8
  br label %127

14:                                               ; preds = %6
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %8, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.meson_sar_adc_data, ptr %11, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 15
  store ptr %18, ptr %19, align 8
  store i32 1, ptr %3, align 8
  %20 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 17
  store ptr @meson_sar_adc_iio_info, ptr %20, align 8
  %21 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = ptrtoint ptr %21 to i32
  br label %127

25:                                               ; preds = %14
  %26 = load ptr, ptr %16, align 4
  %27 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %26, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %2, ptr noundef null, ptr noundef %21, ptr noundef %28, ptr noundef null, ptr noundef null) #7
  store ptr %29, ptr %8, align 4
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = ptrtoint ptr %29 to i32
  br label %127

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %35 = load ptr, ptr %34, align 8
  %36 = tail call i32 @irq_of_parse_and_map(ptr noundef %35, i32 noundef 0) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %127, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load ptr, ptr %2, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi ptr [ %43, %42 ], [ %40, %38 ]
  %46 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %36, ptr noundef nonnull @meson_sar_adc_irq, ptr noundef null, i32 noundef 128, ptr noundef %45, ptr noundef nonnull %3) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %127

48:                                               ; preds = %44
  %49 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.11) #7
  %50 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %8, i32 0, i32 3
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = ptrtoint ptr %49 to i32
  %54 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %53, ptr noundef nonnull @.str.12) #7
  br label %127

55:                                               ; preds = %48
  %56 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.13) #7
  %57 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %8, i32 0, i32 4
  store ptr %56, ptr %57, align 4
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = ptrtoint ptr %56 to i32
  %61 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %60, ptr noundef nonnull @.str.14) #7
  br label %127

62:                                               ; preds = %55
  %63 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.15) #7
  %64 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %8, i32 0, i32 6
  store ptr %63, ptr %64, align 4
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = icmp eq ptr %63, inttoptr (i32 -2 to ptr)
  br i1 %67, label %68, label %69

68:                                               ; preds = %66
  store ptr null, ptr %64, align 4
  br label %72

69:                                               ; preds = %66
  %70 = ptrtoint ptr %63 to i32
  %71 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %70, ptr noundef nonnull @.str.16) #7
  br label %127

72:                                               ; preds = %68, %62
  %73 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.17) #7
  %74 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %8, i32 0, i32 5
  store ptr %73, ptr %74, align 4
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = icmp eq ptr %73, inttoptr (i32 -2 to ptr)
  br i1 %77, label %78, label %79

78:                                               ; preds = %76
  store ptr null, ptr %74, align 4
  br label %82

79:                                               ; preds = %76
  %80 = ptrtoint ptr %73 to i32
  %81 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %80, ptr noundef nonnull @.str.18) #7
  br label %127

82:                                               ; preds = %78, %72
  %83 = load ptr, ptr %64, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = tail call fastcc i32 @meson_sar_adc_clk_init(ptr noundef nonnull %3, ptr noundef %21)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %127

88:                                               ; preds = %85, %82
  %89 = tail call ptr @devm_regulator_get(ptr noundef %2, ptr noundef nonnull @.str.19) #7
  %90 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %8, i32 0, i32 1
  store ptr %89, ptr %90, align 4
  %91 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = ptrtoint ptr %89 to i32
  %94 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %93, ptr noundef nonnull @.str.20) #7
  br label %127

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %8, i32 0, i32 12
  store i32 1000000, ptr %96, align 4
  %97 = load ptr, ptr %16, align 4
  %98 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %97, i32 0, i32 5
  %99 = load i8, ptr %98, align 4
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = tail call fastcc i32 @meson_sar_adc_temp_sensor_init(ptr noundef nonnull %3)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %101, %95
  %105 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %8, i32 0, i32 14
  %106 = load i8, ptr %105, align 4, !range !8
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %107, ptr @meson_sar_adc_iio_channels, ptr @meson_sar_adc_and_temp_iio_channels
  %109 = select i1 %107, i32 9, i32 10
  %110 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 13
  store ptr %108, ptr %110, align 8
  %111 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 14
  store i32 %109, ptr %111, align 4
  %112 = tail call fastcc i32 @meson_sar_adc_init(ptr noundef nonnull %3)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %104
  %115 = tail call fastcc i32 @meson_sar_adc_hw_enable(ptr noundef nonnull %3)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = tail call fastcc i32 @meson_sar_adc_calib(ptr noundef nonnull %3)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.21) #8
  br label %121

121:                                              ; preds = %120, %117
  %122 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %122, align 8
  %123 = tail call i32 @__iio_device_register(ptr noundef nonnull %3, ptr noundef nonnull @__this_module) #7
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = tail call fastcc i32 @meson_sar_adc_hw_disable(ptr noundef nonnull %3)
  br label %127

127:                                              ; preds = %125, %121, %114, %104, %101, %92, %85, %79, %69, %59, %52, %44, %33, %31, %23, %13, %5
  %128 = phi i32 [ %24, %23 ], [ %32, %31 ], [ %54, %52 ], [ %61, %59 ], [ %94, %92 ], [ %81, %79 ], [ %71, %69 ], [ -19, %13 ], [ -12, %5 ], [ -22, %33 ], [ %46, %44 ], [ %86, %85 ], [ %102, %101 ], [ 0, %121 ], [ %112, %104 ], [ %115, %114 ], [ %123, %125 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_sar_adc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @iio_device_unregister(ptr noundef %3) #7
  %4 = tail call fastcc i32 @meson_sar_adc_hw_disable(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_sar_adc_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %3) #7
  %8 = load i32, ptr %3, align 4
  %9 = lshr i32 %8, 21
  %10 = and i32 %9, 31
  %11 = lshr i32 %8, 4
  %12 = and i32 %11, 31
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %5, i32 0, i32 10
  call void @complete(ptr noundef %15) #7
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi i32 [ 1, %14 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_sar_adc_clk_init(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.clk_init_data, align 4
  %4 = alloca [1 x ptr], align 4
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #7
  %7 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 12, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %8 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load ptr, ptr %10, align 4
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi ptr [ %15, %14 ], [ %12, %2 ]
  %18 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %8, i32 noundef 3264, ptr noundef nonnull @.str.27, ptr noundef %17) #7
  store ptr %18, ptr %3, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %64, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  store ptr @clk_divider_ops, ptr %22, align 4
  %23 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %6, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = tail call ptr @__clk_get_name(ptr noundef %24) #7
  store ptr %25, ptr %4, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr %4, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  store i8 1, ptr %27, align 4
  %28 = getelementptr i8, ptr %1, i32 12
  %29 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %6, i32 0, i32 9
  %30 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %6, i32 0, i32 9, i32 1
  store ptr %28, ptr %30, align 4
  %31 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %6, i32 0, i32 9, i32 2
  store i8 10, ptr %31, align 4
  %32 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %6, i32 0, i32 9, i32 3
  store i8 5, ptr %32, align 1
  %33 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %6, i32 0, i32 9, i32 0, i32 2
  store ptr %3, ptr %33, align 4
  %34 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %6, i32 0, i32 9, i32 4
  store i8 0, ptr %34, align 2
  %35 = call ptr @devm_clk_register(ptr noundef %8, ptr noundef %29) #7
  %36 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %6, i32 0, i32 8
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %59, label %38, !prof !10

38:                                               ; preds = %20
  %39 = load ptr, ptr %9, align 4
  %40 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load ptr, ptr %39, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = phi ptr [ %44, %43 ], [ %41, %38 ]
  %47 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %8, i32 noundef 3264, ptr noundef nonnull @.str.29, ptr noundef %46) #7
  store ptr %47, ptr %3, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %45
  store i32 4, ptr %21, align 4
  store ptr @clk_gate_ops, ptr %22, align 4
  %50 = load ptr, ptr %36, align 4
  %51 = call ptr @__clk_get_name(ptr noundef %50) #7
  store ptr %51, ptr %4, align 4
  store ptr %4, ptr %26, align 4
  store i8 1, ptr %27, align 4
  %52 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %6, i32 0, i32 7
  %53 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %6, i32 0, i32 7, i32 1
  store ptr %28, ptr %53, align 4
  %54 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %6, i32 0, i32 7, i32 2
  store i8 30, ptr %54, align 4
  %55 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %6, i32 0, i32 7, i32 0, i32 2
  store ptr %3, ptr %55, align 4
  %56 = call ptr @devm_clk_register(ptr noundef %8, ptr noundef %52) #7
  %57 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %6, i32 0, i32 6
  store ptr %56, ptr %57, align 4
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %64, !prof !10

59:                                               ; preds = %49, %20
  %60 = phi i32 [ 675, %20 ], [ 694, %49 ]
  %61 = phi ptr [ %36, %20 ], [ %57, %49 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef %60, i32 noundef 9, ptr noundef null) #7
  %62 = load ptr, ptr %61, align 4
  %63 = ptrtoint ptr %62 to i32
  br label %64

64:                                               ; preds = %59, %49, %45, %16
  %65 = phi i32 [ -12, %16 ], [ -12, %45 ], [ 0, %49 ], [ %63, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_sar_adc_temp_sensor_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @devm_nvmem_cell_get(ptr noundef %6, ptr noundef nonnull @.str.30) #7
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = icmp eq ptr %7, inttoptr (i32 -19 to ptr)
  br i1 %10, label %64, label %11

11:                                               ; preds = %9
  %12 = ptrtoint ptr %7 to i32
  %13 = load ptr, ptr %5, align 4
  %14 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %13, i32 noundef %12, ptr noundef nonnull @.str.31) #7
  br label %64

15:                                               ; preds = %1
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %18, ptr noundef nonnull @.str.32) #7
  %20 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %4, i32 0, i32 13
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.33) #8
  %24 = load ptr, ptr %20, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %64

26:                                               ; preds = %15
  store i32 4, ptr %2, align 4
  %27 = call ptr @nvmem_cell_read(ptr noundef %7, ptr noundef nonnull %2) #7
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.34) #8
  %31 = ptrtoint ptr %27 to i32
  br label %64

32:                                               ; preds = %26
  %33 = load i32, ptr %2, align 4
  %34 = icmp eq i32 %33, 4
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  call void @kfree(ptr noundef %27) #7
  %36 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.35) #8
  br label %64

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %4, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %39, i32 0, i32 5
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = shl nsw i32 -1, %42
  %44 = getelementptr i8, ptr %27, i32 3
  %45 = load i8, ptr %44, align 1
  %46 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %4, i32 0, i32 14
  %47 = lshr i8 %45, 7
  store i8 %47, ptr %46, align 4
  %48 = getelementptr i8, ptr %27, i32 2
  %49 = load i8, ptr %48, align 1
  %50 = trunc i32 %43 to i8
  %51 = xor i8 %50, -1
  %52 = and i8 %49, %51
  %53 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %4, i32 0, i32 15
  store i8 %52, ptr %53, align 1
  %54 = load i8, ptr %44, align 1
  %55 = and i8 %54, 127
  %56 = load i8, ptr %48, align 1
  %57 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %4, i32 0, i32 16
  %58 = zext i8 %55 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = zext i8 %56 to i32
  %61 = or i32 %59, %60
  %62 = lshr i32 %61, %42
  %63 = trunc i32 %62 to i16
  store i16 %63, ptr %57, align 2
  call void @kfree(ptr noundef %27) #7
  br label %64

64:                                               ; preds = %37, %35, %29, %22, %11, %9
  %65 = phi i32 [ %14, %11 ], [ %25, %22 ], [ %31, %29 ], [ -22, %35 ], [ 0, %37 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_sar_adc_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12, i32 noundef 58720256, i32 noundef 58720256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %7 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %4, align 4
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 12, ptr noundef nonnull %2) #7
  %14 = load i32, ptr %2, align 4
  %15 = and i32 %14, 268435456
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %91

17:                                               ; preds = %11, %1
  call fastcc void @meson_sar_adc_stop_sample_engine(ptr noundef %0)
  %18 = load ptr, ptr %4, align 4
  %19 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 0, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %20 = load ptr, ptr %4, align 4
  %21 = call i32 @regmap_write(ptr noundef %20, i32 noundef 4, i32 noundef 0) #7
  %22 = load ptr, ptr %4, align 4
  %23 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 12, i32 noundef 67108864, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %24 = load ptr, ptr %4, align 4
  %25 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 12, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %26 = load ptr, ptr %4, align 4
  %27 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 16, i32 noundef 16711680, i32 noundef 10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %28 = load ptr, ptr %4, align 4
  %29 = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 16, i32 noundef 768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %30 = load ptr, ptr %4, align 4
  %31 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 16, i32 noundef 16711680, i32 noundef 655360, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %32 = load ptr, ptr %4, align 4
  %33 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 16, i32 noundef 50331648, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  store i32 0, ptr %2, align 4
  %34 = load ptr, ptr %4, align 4
  %35 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 32, i32 noundef 896, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  store i32 8388608, ptr %2, align 4
  %36 = load ptr, ptr %4, align 4
  %37 = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 32, i32 noundef 58720256, i32 noundef 8388608, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  store i32 65739276, ptr %2, align 4
  %38 = load ptr, ptr %4, align 4
  %39 = call i32 @regmap_write(ptr noundef %38, i32 noundef 28, i32 noundef 65739276) #7
  %40 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %4, i32 0, i32 14
  %41 = load i8, ptr %40, align 4, !range !8
  %42 = icmp eq i8 %41, 0
  %43 = load ptr, ptr %4, align 4
  br i1 %42, label %67, label %44

44:                                               ; preds = %17
  %45 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 40, i32 noundef 67108864, i32 noundef 67108864, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %46 = load ptr, ptr %4, align 4
  %47 = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 40, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %48 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %4, i32 0, i32 15
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 11
  %52 = and i32 %51, 30720
  store i32 %52, ptr %2, align 4
  %53 = load ptr, ptr %4, align 4
  %54 = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 40, i32 noundef 30720, i32 noundef %52, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %55 = load ptr, ptr %7, align 4
  %56 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %55, i32 0, i32 5
  %57 = load i8, ptr %56, align 4
  %58 = icmp eq i8 %57, 5
  br i1 %58, label %59, label %71

59:                                               ; preds = %44
  %60 = load i8, ptr %48, align 1
  %61 = and i8 %60, 16
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 5
  store i32 %63, ptr %2, align 4
  %64 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %4, i32 0, i32 13
  %65 = load ptr, ptr %64, align 4
  %66 = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 792, i32 noundef 512, i32 noundef %63, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %71

67:                                               ; preds = %17
  %68 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 40, i32 noundef 67108864, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %69 = load ptr, ptr %4, align 4
  %70 = call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 40, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %71

71:                                               ; preds = %67, %59, %44
  %72 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %4, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %4, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 @clk_set_parent(ptr noundef %73, ptr noundef %75) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %4, i32 0, i32 6
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %7, align 4
  %82 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %81, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = call i32 @clk_set_rate(ptr noundef %80, i32 noundef %83) #7
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %78, %71
  %87 = phi ptr [ @.str.45, %71 ], [ @.str.46, %78 ]
  %88 = phi i32 [ %76, %71 ], [ %84, %78 ]
  %89 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %90 = load ptr, ptr %89, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull %87) #8
  br label %91

91:                                               ; preds = %86, %78, %11
  %92 = phi i32 [ 0, %11 ], [ 0, %78 ], [ %88, %86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_sar_adc_hw_enable(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @meson_sar_adc_lock(ptr noundef %0)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %91

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regulator_enable(ptr noundef %8) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.47) #8
  br label %76

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %3, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @clk_prepare(ptr noundef %16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = tail call i32 @clk_enable(ptr noundef %16) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %16) #7
  br label %23

23:                                               ; preds = %22, %14
  %24 = phi i32 [ %20, %22 ], [ %17, %14 ]
  %25 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.48) #8
  br label %72

27:                                               ; preds = %19
  %28 = load ptr, ptr %3, align 4
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 0, i32 noundef 496, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 44
  %36 = select i1 %35, i32 8192, i32 1024
  %37 = load ptr, ptr %30, align 4
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %34, i32 noundef %36, i32 noundef %36, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %39 = load ptr, ptr %3, align 4
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 12, i32 noundef 2097152, i32 noundef 2097152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 1073740) #7
  %42 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %3, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @clk_prepare(ptr noundef %43) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %27
  %47 = tail call i32 @clk_enable(ptr noundef %43) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %46
  tail call void @clk_unprepare(ptr noundef %43) #7
  br label %50

50:                                               ; preds = %49, %27
  %51 = phi i32 [ %47, %49 ], [ %44, %27 ]
  %52 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.49) #8
  %54 = load ptr, ptr %3, align 4
  %55 = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 12, i32 noundef 2097152, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 44
  %62 = select i1 %61, i32 8192, i32 1024
  %63 = load ptr, ptr %56, align 4
  %64 = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef %60, i32 noundef %62, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %65 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %65) #7
  tail call void @clk_unprepare(ptr noundef %65) #7
  br label %72

66:                                               ; preds = %46
  %67 = load ptr, ptr %2, align 8
  %68 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = load i8, ptr %69, align 4, !range !8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %88, label %83

72:                                               ; preds = %50, %23
  %73 = phi i32 [ %24, %23 ], [ %51, %50 ]
  %74 = load ptr, ptr %7, align 4
  %75 = tail call i32 @regulator_disable(ptr noundef %74) #7
  br label %76

76:                                               ; preds = %72, %11
  %77 = phi i32 [ %9, %11 ], [ %73, %72 ]
  %78 = load ptr, ptr %2, align 8
  %79 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = load i8, ptr %80, align 4, !range !8
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %76, %66
  %84 = phi ptr [ %67, %66 ], [ %78, %76 ]
  %85 = phi i32 [ 0, %66 ], [ %77, %76 ]
  %86 = load ptr, ptr %84, align 4
  %87 = tail call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 16, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %88

88:                                               ; preds = %83, %76, %66
  %89 = phi i32 [ 0, %66 ], [ %77, %76 ], [ %85, %83 ]
  %90 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %90) #7
  br label %91

91:                                               ; preds = %88, %1
  %92 = phi i32 [ %4, %1 ], [ %89, %88 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_sar_adc_calib(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = shl nuw i32 1, %11
  %13 = sdiv i32 %12, 4
  %14 = shl i32 3, %11
  %15 = sdiv i32 %14, 4
  %16 = load ptr, ptr %7, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 12, i32 noundef 58720256, i32 noundef 8388608, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %18 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr %struct.iio_chan_spec, ptr %19, i32 7
  %21 = call fastcc i32 @meson_sar_adc_get_sample(ptr noundef %0, ptr noundef %20, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %4)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %1
  %24 = load ptr, ptr %6, align 8
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 12, i32 noundef 58720256, i32 noundef 25165824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %27 = load ptr, ptr %18, align 8
  %28 = getelementptr %struct.iio_chan_spec, ptr %27, i32 7
  %29 = call fastcc i32 @meson_sar_adc_get_sample(ptr noundef %0, ptr noundef %28, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %5)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %23
  %32 = load i32, ptr %5, align 4
  %33 = load i32, ptr %4, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = sub nsw i32 %15, %13
  %37 = sext i32 %36 to i64
  %38 = mul nsw i64 %37, 1000000
  %39 = sub i32 %32, %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %40 = call i64 @div_s64_rem(i64 noundef %38, i32 noundef %39, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %7, i32 0, i32 12
  store i32 %41, ptr %42, align 4
  %43 = sext i32 %33 to i64
  %44 = sext i32 %41 to i64
  %45 = mul nsw i64 %44, %43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  %46 = call i64 @div_s64_rem(i64 noundef %45, i32 noundef 1000000, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %47 = trunc i64 %46 to i32
  %48 = sub i32 %13, %47
  %49 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %7, i32 0, i32 11
  store i32 %48, ptr %49, align 4
  br label %50

50:                                               ; preds = %35, %31, %23, %1
  %51 = phi i32 [ %21, %1 ], [ %29, %23 ], [ 0, %35 ], [ -22, %31 ]
  %52 = load ptr, ptr %6, align 8
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 12, i32 noundef 58720256, i32 noundef 58720256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %51
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_sar_adc_hw_disable(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @meson_sar_adc_lock(ptr noundef %0)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  %9 = load ptr, ptr %3, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12, i32 noundef 2097152, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 44
  %17 = select i1 %16, i32 8192, i32 1024
  %18 = load ptr, ptr %11, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %15, i32 noundef %17, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %20 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %3, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #7
  tail call void @clk_unprepare(ptr noundef %21) #7
  %22 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %3, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @regulator_disable(ptr noundef %23) #7
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = load i8, ptr %27, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load ptr, ptr %25, align 4
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 16, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %33

33:                                               ; preds = %30, %6
  %34 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %34) #7
  br label %35

35:                                               ; preds = %33, %1
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_sar_adc_iio_info_read_raw(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  switch i32 %4, label %62 [
    i32 0, label %8
    i32 9, label %10
    i32 2, label %12
    i32 5, label %38
    i32 4, label %41
    i32 3, label %47
  ]

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @meson_sar_adc_get_sample(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef %2)
  br label %62

10:                                               ; preds = %5
  %11 = tail call fastcc i32 @meson_sar_adc_get_sample(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 3, ptr noundef %2)
  br label %62

12:                                               ; preds = %5
  %13 = load i32, ptr %1, align 4
  switch i32 %13, label %62 [
    i32 0, label %14
    i32 9, label %28
  ]

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regulator_get_voltage(ptr noundef %16) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.23, i32 noundef %17) #8
  br label %62

22:                                               ; preds = %14
  %23 = udiv i32 %17, 1000
  store i32 %23, ptr %2, align 4
  %24 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %7, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %3, align 4
  br label %62

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %7, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %30, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %2, align 4
  %33 = load ptr, ptr %29, align 4
  %34 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %33, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %3, align 4
  %36 = load i32, ptr %2, align 4
  %37 = mul i32 %36, 1000
  store i32 %37, ptr %2, align 4
  br label %62

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %7, i32 0, i32 11
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %2, align 4
  br label %62

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %7, i32 0, i32 12
  %43 = load i32, ptr %42, align 4
  %44 = sdiv i32 %43, 1000000
  store i32 %44, ptr %2, align 4
  %45 = load i32, ptr %42, align 4
  %46 = srem i32 %45, 1000000
  store i32 %46, ptr %3, align 4
  br label %62

47:                                               ; preds = %5
  %48 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %7, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %49, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = mul i32 %51, 27
  %53 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %49, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = lshr i32 %54, 1
  %56 = add i32 %55, %52
  %57 = udiv i32 %56, %54
  store i32 %57, ptr %2, align 4
  %58 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %7, i32 0, i32 16
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = sub i32 %57, %60
  store i32 %61, ptr %2, align 4
  br label %62

62:                                               ; preds = %47, %41, %38, %28, %22, %19, %12, %10, %8, %5
  %63 = phi i32 [ 1, %47 ], [ 2, %41 ], [ 1, %38 ], [ %17, %19 ], [ 11, %22 ], [ 10, %28 ], [ %11, %10 ], [ %9, %8 ], [ -22, %12 ], [ -22, %5 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_sar_adc_get_sample(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %12 = load i32, ptr %1, align 4
  %13 = icmp eq i32 %12, 9
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = load ptr, ptr %11, align 8
  %16 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %15, i32 0, i32 14
  %17 = load i8, ptr %16, align 4, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %159, label %19

19:                                               ; preds = %14, %5
  %20 = tail call fastcc i32 @meson_sar_adc_lock(ptr noundef %0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %159

22:                                               ; preds = %19
  %23 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  store i32 0, ptr %10, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !annotation !9
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @regmap_read(ptr noundef %24, i32 noundef 0, ptr noundef nonnull %9) #7
  %26 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  %27 = and i32 %26, 65011712
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %35, %22
  %30 = phi i32 [ %33, %35 ], [ 0, %22 ]
  %31 = load ptr, ptr %23, align 4
  %32 = call i32 @regmap_read(ptr noundef %31, i32 noundef 24, ptr noundef nonnull %10) #7
  %33 = add nuw nsw i32 %30, 1
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !annotation !9
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 @regmap_read(ptr noundef %37, i32 noundef 0, ptr noundef nonnull %9) #7
  %39 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  %40 = and i32 %39, 65011712
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %29

42:                                               ; preds = %35, %29, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  %43 = load ptr, ptr %11, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %45, 1
  %47 = shl i32 %3, %46
  %48 = load ptr, ptr %43, align 4
  %49 = shl i32 3, %46
  %50 = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 8, i32 noundef %49, i32 noundef %47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %51 = add i32 %46, 16
  %52 = shl i32 %2, %51
  %53 = load ptr, ptr %43, align 4
  %54 = shl i32 196608, %46
  %55 = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 8, i32 noundef %54, i32 noundef %52, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %56 = load ptr, ptr %11, align 8
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 4, i32 noundef 117440512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %59 = load i32, ptr %44, align 4
  %60 = and i32 %59, 7
  %61 = load ptr, ptr %56, align 4
  %62 = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 4, i32 noundef 7, i32 noundef %60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %63 = load i32, ptr %44, align 4
  %64 = shl i32 %63, 23
  %65 = and i32 %64, 58720256
  %66 = load ptr, ptr %56, align 4
  %67 = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 36, i32 noundef 58720256, i32 noundef %65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %68 = load i32, ptr %44, align 4
  %69 = shl i32 %68, 7
  %70 = and i32 %69, 896
  %71 = load ptr, ptr %56, align 4
  %72 = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 36, i32 noundef 896, i32 noundef %70, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %73 = load i32, ptr %44, align 4
  %74 = icmp eq i32 %73, 6
  br i1 %74, label %75, label %81

75:                                               ; preds = %42
  %76 = load i32, ptr %1, align 4
  %77 = icmp eq i32 %76, 9
  %78 = select i1 %77, i32 134217728, i32 0
  %79 = load ptr, ptr %56, align 4
  %80 = call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 40, i32 noundef 134217728, i32 noundef %78, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %81

81:                                               ; preds = %75, %42
  %82 = load ptr, ptr %11, align 8
  %83 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %82, i32 0, i32 10
  store i32 0, ptr %83, align 4
  %84 = load ptr, ptr %82, align 4
  %85 = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 0, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %86 = load ptr, ptr %82, align 4
  %87 = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %88 = load ptr, ptr %82, align 4
  %89 = call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %90 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4, !annotation !9
  %91 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %90, i32 0, i32 10
  %92 = call i32 @wait_for_completion_timeout(ptr noundef %91, i32 noundef 10) #7
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %142, label %94

94:                                               ; preds = %81
  %95 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !9
  %96 = load ptr, ptr %95, align 4
  %97 = call i32 @regmap_read(ptr noundef %96, i32 noundef 0, ptr noundef nonnull %7) #7
  %98 = load i32, ptr %7, align 4
  %99 = lshr i32 %98, 21
  %100 = and i32 %99, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %104, label %102

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.25, i32 noundef %100) #8
  br label %142

104:                                              ; preds = %94
  %105 = load ptr, ptr %90, align 4
  %106 = call i32 @regmap_read(ptr noundef %105, i32 noundef 24, ptr noundef nonnull %8) #7
  %107 = load i32, ptr %8, align 4
  %108 = lshr i32 %107, 12
  %109 = and i32 %108, 7
  %110 = load i32, ptr %44, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %114, label %112

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.26, i32 noundef %109, i32 noundef %110) #8
  br label %142

114:                                              ; preds = %104
  %115 = and i32 %107, 4095
  %116 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %90, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %117, i32 0, i32 3
  %119 = load i32, ptr %118, align 4
  %120 = sub i32 32, %119
  %121 = lshr i32 -1, %120
  %122 = and i32 %115, %121
  %123 = load ptr, ptr %11, align 8
  %124 = zext i32 %122 to i64
  %125 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %123, i32 0, i32 12
  %126 = load i32, ptr %125, align 4
  %127 = sext i32 %126 to i64
  %128 = mul nsw i64 %124, %127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !9
  %129 = call i64 @div_s64_rem(i64 noundef %128, i32 noundef 1000000, ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %130 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %123, i32 0, i32 11
  %131 = load i32, ptr %130, align 4
  %132 = trunc i64 %129 to i32
  %133 = add i32 %131, %132
  %134 = call i32 @llvm.smax.i32(i32 %133, i32 0) #7
  %135 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %123, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %136, i32 0, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = shl nsw i32 -1, %138
  %140 = xor i32 %139, -1
  %141 = call i32 @llvm.smin.i32(i32 %134, i32 %140) #7
  store i32 %141, ptr %4, align 4
  br label %142

142:                                              ; preds = %114, %112, %102, %81
  %143 = phi i1 [ false, %81 ], [ false, %102 ], [ false, %112 ], [ true, %114 ]
  %144 = phi i32 [ -110, %81 ], [ -22, %102 ], [ -22, %112 ], [ 0, %114 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call fastcc void @meson_sar_adc_stop_sample_engine(ptr noundef %0)
  %145 = load ptr, ptr %11, align 8
  %146 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %145, i32 0, i32 2
  %147 = load ptr, ptr %146, align 4
  %148 = load i8, ptr %147, align 4, !range !8
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %142
  %151 = load ptr, ptr %145, align 4
  %152 = call i32 @regmap_update_bits_base(ptr noundef %151, i32 noundef 16, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %153

153:                                              ; preds = %150, %142
  %154 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 5
  call void @mutex_unlock(ptr noundef %154) #7
  br i1 %143, label %159, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = load i32, ptr %44, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %157, ptr noundef nonnull @.str.24, i32 noundef %158, i32 noundef %144) #8
  br label %159

159:                                              ; preds = %155, %153, %19, %14
  %160 = phi i32 [ %144, %155 ], [ -524, %14 ], [ %20, %19 ], [ 1, %153 ]
  ret i32 %160
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_sar_adc_lock(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %4, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %4, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 16, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %13

13:                                               ; preds = %21, %10
  %14 = phi i32 [ 10000, %10 ], [ %22, %21 ]
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748) #7
  %16 = load ptr, ptr %4, align 4
  %17 = call i32 @regmap_read(ptr noundef %16, i32 noundef 16, ptr noundef nonnull %2) #7
  %18 = load i32, ptr %2, align 4
  %19 = and i32 %18, 32768
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = add nsw i32 %14, -1
  %23 = icmp eq i32 %14, 0
  br i1 %23, label %26, label %13

24:                                               ; preds = %13
  %25 = icmp slt i32 %14, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24, %21
  call void @mutex_unlock(ptr noundef %5) #7
  br label %27

27:                                               ; preds = %26, %24, %1
  %28 = phi i32 [ -110, %26 ], [ 0, %24 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @meson_sar_adc_stop_sample_engine(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %7 = load ptr, ptr %4, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %9 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  br label %10

10:                                               ; preds = %10, %1
  %11 = phi i32 [ 10000, %1 ], [ %18, %10 ]
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748) #7
  %13 = load ptr, ptr %9, align 4
  %14 = call i32 @regmap_read(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %2) #7
  %15 = load i32, ptr %2, align 4
  %16 = and i32 %15, 1879048192
  %17 = icmp eq i32 %16, 0
  %18 = add nsw i32 %11, -1
  %19 = icmp eq i32 %11, 0
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %21, label %10

21:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %22 = load ptr, ptr %4, align 4
  %23 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_sar_adc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @meson_sar_adc_hw_disable(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_sar_adc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @meson_sar_adc_hw_enable(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
