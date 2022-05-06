; ModuleID = '/llk/IR/drivers/iio/adc/aspeed_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/aspeed_adc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.aspeed_adc_model_data = type { ptr, i32, i32, i32, i8, i8, i8, i8, i32, ptr }
%struct.aspeed_adc_trim_locate = type { i32, i32 }
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.aspeed_adc_data = type { ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, i32, i32, i32, i8, %struct.adc_gain }
%struct.adc_gain = type { i8, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@aspeed_adc_matches = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_model_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_model_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-adc0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2600_adc0_model_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-adc1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2600_adc1_model_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author292 = internal constant [42 x i8] c"author=Rick Altherr <raltherr@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [48 x i8] c"description=Aspeed AST2400/2500/2600 ADC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@ast2400_model_data = internal constant %struct.aspeed_adc_model_data { ptr @.str, i32 10000, i32 500000, i32 2500, i8 0, i8 1, i8 0, i8 10, i32 16, ptr null }, align 4
@ast2500_model_data = internal constant %struct.aspeed_adc_model_data { ptr @.str.1, i32 1, i32 1000000, i32 1800, i8 1, i8 1, i8 0, i8 10, i32 16, ptr @ast2500_adc_trim }, align 4
@ast2600_adc0_model_data = internal constant %struct.aspeed_adc_model_data { ptr @.str.2, i32 10000, i32 500000, i32 0, i8 1, i8 0, i8 1, i8 16, i32 8, ptr @ast2600_adc0_trim }, align 4
@ast2600_adc1_model_data = internal constant %struct.aspeed_adc_model_data { ptr @.str.3, i32 10000, i32 500000, i32 0, i8 1, i8 0, i8 1, i8 16, i32 8, ptr @ast2600_adc1_trim }, align 4
@.str = private unnamed_addr constant [12 x i8] c"ast2400-adc\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ast2500-adc\00", align 1
@ast2500_adc_trim = internal constant %struct.aspeed_adc_trim_locate { i32 340, i32 -268435456 }, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"ast2600-adc0\00", align 1
@ast2600_adc0_trim = internal constant %struct.aspeed_adc_trim_locate { i32 1488, i32 15 }, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"ast2600-adc1\00", align 1
@ast2600_adc1_trim = internal constant %struct.aspeed_adc_trim_locate { i32 1488, i32 240 }, align 4
@aspeed_adc_driver = internal global %struct.platform_driver { ptr @aspeed_adc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_adc_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.4 = private unnamed_addr constant [11 x i8] c"aspeed_adc\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%s-fixed-div\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%s-prescaler\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%s-scaler\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"invalid or missing reset controller device tree entry\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"aspeed,trim-data-valid\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"aspeed,battery-sensing\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Failed to enable battery-sensing mode\0A\00", align 1
@aspeed_adc_iio_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @aspeed_adc_read_raw, ptr null, ptr null, ptr @aspeed_adc_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_adc_reg_access, ptr null, ptr null, ptr null }, align 4
@aspeed_adc_iio_bat_channels = internal constant [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 16, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 20, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 22, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 24, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 26, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 28, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 30, i32 0, %struct.anon.71 zeroinitializer, i32 9, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }], align 4
@aspeed_adc_iio_channels = internal constant [16 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 16, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 20, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 22, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 24, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 26, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 28, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 30, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 32, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 34, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 36, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 38, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 40, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 42, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 44, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 46, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 2 }], align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Regulator voltage %d not support\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"aspeed,int-vref-microvolt\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Voltage %d not support\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Couldn't find syscon node\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Failed to get syscon regmap\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Failed to get adc trimming data\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_license294], section "llvm.metadata"

@__mod_of__aspeed_adc_matches_device_table = dso_local alias [5 x %struct.of_device_id], ptr @aspeed_adc_matches

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_adc_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_adc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_adc_probe(ptr noundef %0) #2 {
  %2 = alloca [32 x i8], align 1
  %3 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @devm_iio_device_alloc(ptr noundef %4, i32 noundef 52) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %192, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 19
  %9 = load ptr, ptr %8, align 8
  store ptr %4, ptr %9, align 4
  %10 = tail call ptr @of_device_get_match_data(ptr noundef %4) #9
  %11 = getelementptr inbounds %struct.aspeed_adc_data, ptr %9, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %12, align 8
  %13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %14 = getelementptr inbounds %struct.aspeed_adc_data, ptr %9, i32 0, i32 3
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  %17 = ptrtoint ptr %13 to i32
  br label %192

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.aspeed_adc_data, ptr %9, i32 0, i32 4
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %21 = load ptr, ptr %20, align 8
  %22 = tail call ptr @of_clk_get_parent_name(ptr noundef %21, i32 noundef 0) #9
  %23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %22)
  %24 = load ptr, ptr %11, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %25)
  %27 = call ptr @clk_hw_register_fixed_factor(ptr noundef %4, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1, i32 noundef 2) #9
  %28 = getelementptr inbounds %struct.aspeed_adc_data, ptr %9, i32 0, i32 5
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = ptrtoint ptr %27 to i32
  br label %192

32:                                               ; preds = %18
  %33 = load ptr, ptr %9, align 4
  %34 = call i32 @devm_add_action(ptr noundef %33, ptr noundef nonnull @aspeed_adc_unregister_fixed_divider, ptr noundef %27) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  call void @clk_hw_unregister_fixed_factor(ptr noundef %27) #9
  br label %192

37:                                               ; preds = %32
  %38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull %2)
  %39 = load ptr, ptr %11, align 4
  %40 = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %39, i32 0, i32 5
  %41 = load i8, ptr %40, align 1, !range !9
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %39, align 4
  %45 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef %44)
  %46 = load ptr, ptr %14, align 4
  %47 = getelementptr i8, ptr %46, i32 12
  %48 = call ptr @__devm_clk_hw_register_divider(ptr noundef %4, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %47, i8 noundef zeroext 17, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef %19) #9
  %49 = getelementptr inbounds %struct.aspeed_adc_data, ptr %9, i32 0, i32 6
  store ptr %48, ptr %49, align 4
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = ptrtoint ptr %48 to i32
  br label %192

53:                                               ; preds = %43
  %54 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull %2)
  %55 = load ptr, ptr %11, align 4
  br label %56

56:                                               ; preds = %53, %37
  %57 = phi ptr [ %55, %53 ], [ %39, %37 ]
  %58 = phi i32 [ 4, %53 ], [ 0, %37 ]
  %59 = load ptr, ptr %57, align 4
  %60 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef %59)
  %61 = load ptr, ptr %14, align 4
  %62 = getelementptr i8, ptr %61, i32 12
  %63 = load ptr, ptr %11, align 4
  %64 = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %63, i32 0, i32 7
  %65 = load i8, ptr %64, align 1
  %66 = call ptr @__devm_clk_hw_register_divider(ptr noundef %4, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, i32 noundef %58, ptr noundef %62, i8 noundef zeroext 0, i8 noundef zeroext %65, i8 noundef zeroext 0, ptr noundef null, ptr noundef %19) #9
  %67 = getelementptr inbounds %struct.aspeed_adc_data, ptr %9, i32 0, i32 7
  store ptr %66, ptr %67, align 4
  %68 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = ptrtoint ptr %66 to i32
  br label %192

71:                                               ; preds = %56
  %72 = call ptr @__devm_reset_control_get(ptr noundef %4, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %73 = getelementptr inbounds %struct.aspeed_adc_data, ptr %9, i32 0, i32 8
  store ptr %72, ptr %73, align 4
  %74 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #10
  %76 = load ptr, ptr %73, align 4
  %77 = ptrtoint ptr %76 to i32
  br label %192

78:                                               ; preds = %71
  %79 = call i32 @reset_control_deassert(ptr noundef %72) #9
  %80 = load ptr, ptr %9, align 4
  %81 = load ptr, ptr %73, align 4
  %82 = call i32 @devm_add_action(ptr noundef %80, ptr noundef nonnull @aspeed_adc_reset_assert, ptr noundef %81) #9
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  %85 = call i32 @reset_control_assert(ptr noundef %81) #9
  br label %192

86:                                               ; preds = %78
  %87 = call fastcc i32 @aspeed_adc_vref_config(ptr noundef nonnull %5)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %192

89:                                               ; preds = %86
  %90 = load ptr, ptr %9, align 4
  %91 = getelementptr inbounds %struct.device, ptr %90, i32 0, i32 25
  %92 = load ptr, ptr %91, align 8
  %93 = call ptr @of_find_property(ptr noundef %92, ptr noundef nonnull @.str.10, ptr noundef null) #9
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = call fastcc i32 @aspeed_adc_set_trim_data(ptr noundef nonnull %5)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %192

98:                                               ; preds = %95, %89
  %99 = load ptr, ptr %9, align 4
  %100 = getelementptr inbounds %struct.device, ptr %99, i32 0, i32 25
  %101 = load ptr, ptr %100, align 8
  %102 = call ptr @of_find_property(ptr noundef %101, ptr noundef nonnull @.str.11, ptr noundef null) #9
  %103 = icmp eq ptr %102, null
  br i1 %103, label %120, label %104

104:                                              ; preds = %98
  %105 = load ptr, ptr %11, align 4
  %106 = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %105, i32 0, i32 6
  %107 = load i8, ptr %106, align 2, !range !9
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.aspeed_adc_data, ptr %9, i32 0, i32 12
  store i8 1, ptr %110, align 4
  %111 = load ptr, ptr %14, align 4
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %113 = and i32 %112, 64
  %114 = icmp eq i32 %113, 0
  %115 = getelementptr inbounds %struct.aspeed_adc_data, ptr %9, i32 0, i32 13
  store i8 3, ptr %115, align 1
  %116 = getelementptr inbounds %struct.aspeed_adc_data, ptr %9, i32 0, i32 13, i32 1
  br i1 %114, label %118, label %117

117:                                              ; preds = %109
  store i8 1, ptr %116, align 1
  br label %120

118:                                              ; preds = %109
  store i8 2, ptr %116, align 1
  br label %120

119:                                              ; preds = %104
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.12) #10
  br label %120

120:                                              ; preds = %119, %118, %117, %98
  %121 = load ptr, ptr %67, align 4
  %122 = getelementptr inbounds %struct.clk_hw, ptr %121, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = call fastcc i32 @clk_prepare_enable(ptr noundef %123)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %192

126:                                              ; preds = %120
  %127 = load ptr, ptr %9, align 4
  %128 = load ptr, ptr %67, align 4
  %129 = getelementptr inbounds %struct.clk_hw, ptr %128, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = call i32 @devm_add_action(ptr noundef %127, ptr noundef nonnull @aspeed_adc_clk_disable_unprepare, ptr noundef %130) #9
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  call void @clk_disable(ptr noundef %130) #9
  call void @clk_unprepare(ptr noundef %130) #9
  br label %192

134:                                              ; preds = %126
  %135 = call fastcc i32 @aspeed_adc_set_sampling_rate(ptr noundef nonnull %5, i32 noundef 65000)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %192

137:                                              ; preds = %134
  %138 = load ptr, ptr %14, align 4
  %139 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %140 = or i32 %139, 15
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  %141 = load ptr, ptr %14, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %140) #9, !srcloc !14
  %142 = load ptr, ptr %9, align 4
  %143 = call i32 @devm_add_action(ptr noundef %142, ptr noundef nonnull @aspeed_adc_power_down, ptr noundef %9) #9
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %137
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %146 = load ptr, ptr %14, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 0) #9, !srcloc !14
  br label %192

147:                                              ; preds = %137
  %148 = load ptr, ptr %11, align 4
  %149 = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %148, i32 0, i32 4
  %150 = load i8, ptr %149, align 4, !range !9
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %172, label %152

152:                                              ; preds = %147
  %153 = call i64 @ktime_get() #9
  %154 = add i64 %153, 500000000
  %155 = load ptr, ptr %14, align 4
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %157 = and i32 %156, 256
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %162, %152
  %160 = call i64 @ktime_get() #9
  %161 = icmp sgt i64 %160, %154
  br i1 %161, label %167, label %162

162:                                              ; preds = %159
  call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #9
  %163 = load ptr, ptr %14, align 4
  %164 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %165 = and i32 %164, 256
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %159, label %172

167:                                              ; preds = %159
  %168 = load ptr, ptr %14, align 4
  %169 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  %170 = and i32 %169, 256
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %192, label %172

172:                                              ; preds = %167, %162, %152, %147
  call fastcc void @aspeed_adc_compensation(ptr noundef nonnull %5)
  %173 = load ptr, ptr %14, align 4
  %174 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !18
  %175 = or i32 %174, -65536
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  call void @arm_heavy_mb() #9
  %176 = load ptr, ptr %14, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %175) #9, !srcloc !14
  %177 = load ptr, ptr %11, align 4
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 15
  store ptr %178, ptr %179, align 8
  %180 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 17
  store ptr @aspeed_adc_iio_info, ptr %180, align 8
  store i32 1, ptr %5, align 8
  %181 = getelementptr inbounds %struct.aspeed_adc_data, ptr %9, i32 0, i32 12
  %182 = load i8, ptr %181, align 4, !range !9
  %183 = icmp eq i8 %182, 0
  %184 = select i1 %183, ptr @aspeed_adc_iio_channels, ptr @aspeed_adc_iio_bat_channels
  %185 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 13
  store ptr %184, ptr %185, align 8
  %186 = load ptr, ptr %11, align 4
  %187 = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %186, i32 0, i32 8
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 14
  store i32 %188, ptr %189, align 4
  %190 = load ptr, ptr %9, align 4
  %191 = call i32 @__devm_iio_device_register(ptr noundef %190, ptr noundef nonnull %5, ptr noundef nonnull @__this_module) #9
  br label %192

192:                                              ; preds = %172, %167, %145, %134, %133, %120, %95, %86, %84, %75, %69, %51, %36, %30, %16, %1
  %193 = phi i32 [ %17, %16 ], [ %31, %30 ], [ %52, %51 ], [ %70, %69 ], [ %77, %75 ], [ %191, %172 ], [ -12, %1 ], [ %34, %36 ], [ %82, %84 ], [ %87, %86 ], [ %96, %95 ], [ %124, %120 ], [ %131, %133 ], [ %135, %134 ], [ %143, %145 ], [ -110, %167 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret i32 %193
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_adc_unregister_fixed_divider(ptr noundef %0) #2 {
  tail call void @clk_hw_unregister_fixed_factor(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_adc_reset_assert(ptr noundef %0) #2 {
  %2 = tail call i32 @reset_control_assert(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_adc_vref_config(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 9
  store i32 %7, ptr %10, align 4
  br label %70

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %15 = load ptr, ptr %3, align 4
  %16 = tail call ptr @devm_regulator_get_optional(ptr noundef %15, ptr noundef nonnull @.str.13) #9
  %17 = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %47, label %19

19:                                               ; preds = %11
  %20 = tail call i32 @regulator_enable(ptr noundef %16) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %70

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = load ptr, ptr %17, align 4
  %25 = tail call i32 @devm_add_action(ptr noundef %23, ptr noundef nonnull @aspeed_adc_reg_disable, ptr noundef %24) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call i32 @regulator_disable(ptr noundef %24) #9
  br label %70

29:                                               ; preds = %22
  %30 = load ptr, ptr %17, align 4
  %31 = tail call i32 @regulator_get_voltage(ptr noundef %30) #9
  %32 = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 9
  %33 = sdiv i32 %31, 1000
  store i32 %33, ptr %32, align 4
  %34 = add i32 %31, -1550000
  %35 = icmp ult i32 %34, 1151000
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %37 = or i32 %14, 128
  %38 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %37) #9, !srcloc !14
  br label %70

39:                                               ; preds = %29
  %40 = add i32 %31, -900000
  %41 = icmp ult i32 %40, 751000
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %43 = or i32 %14, 192
  %44 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %43) #9, !srcloc !14
  br label %70

45:                                               ; preds = %39
  %46 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.14, i32 noundef %33) #10
  br label %70

47:                                               ; preds = %11
  %48 = ptrtoint ptr %16 to i32
  %49 = icmp eq ptr %16, inttoptr (i32 -19 to ptr)
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 9
  store i32 2500000, ptr %51, align 4
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 25
  %54 = load ptr, ptr %53, align 8
  %55 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %54, ptr noundef nonnull @.str.15, ptr noundef %51, i32 noundef 1, i32 noundef 0) #9
  %56 = load i32, ptr %51, align 4
  %57 = sdiv i32 %56, 1000
  store i32 %57, ptr %51, align 4
  %58 = add i32 %56, -2500000
  %59 = icmp ult i32 %58, 1000
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %61 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %14) #9, !srcloc !14
  br label %70

62:                                               ; preds = %50
  %63 = add i32 %56, -1200000
  %64 = icmp ult i32 %63, 1000
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %66 = or i32 %14, 64
  %67 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %66) #9, !srcloc !14
  br label %70

68:                                               ; preds = %62
  %69 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.16, i32 noundef %57) #10
  br label %70

70:                                               ; preds = %68, %65, %60, %47, %45, %42, %36, %27, %19, %9
  %71 = phi i32 [ 0, %9 ], [ -95, %68 ], [ -95, %45 ], [ %20, %19 ], [ %25, %27 ], [ 0, %60 ], [ 0, %65 ], [ 0, %36 ], [ 0, %42 ], [ %48, %47 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_adc_set_trim_data(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.17) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.18) #10
  br label %41

9:                                                ; preds = %1
  %10 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %5) #9
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.19) #10
  br label %41

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.aspeed_adc_data, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %16, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %18, align 4
  %22 = call i32 @regmap_read(ptr noundef %10, i32 noundef %21, ptr noundef nonnull %2) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.20) #10
  br label %36

26:                                               ; preds = %20
  %27 = load i32, ptr %2, align 4
  %28 = load ptr, ptr %15, align 4
  %29 = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %28, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.aspeed_adc_trim_locate, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, %27
  %34 = call i32 @llvm.cttz.i32(i32 %32, i1 false) #9, !range !25
  %35 = lshr i32 %33, %34
  br label %36

36:                                               ; preds = %26, %24
  %37 = phi i32 [ 8, %24 ], [ %35, %26 ]
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  call void @arm_heavy_mb() #9
  %38 = getelementptr inbounds %struct.aspeed_adc_data, ptr %4, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %37) #9, !srcloc !14
  br label %41

41:                                               ; preds = %36, %14, %12, %7
  %42 = phi i32 [ -95, %7 ], [ -95, %12 ], [ 0, %36 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #7 {
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
define internal void @aspeed_adc_clk_disable_unprepare(ptr noundef %0) #2 {
  tail call void @clk_disable(ptr noundef %0) #9
  tail call void @clk_unprepare(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_adc_set_sampling_rate(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.aspeed_adc_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %1
  br i1 %9, label %31, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %6, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, %1
  br i1 %13, label %31, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.aspeed_adc_data, ptr %4, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.clk_hw, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = mul i32 %1, 12
  %20 = tail call i32 @clk_set_rate(ptr noundef %18, i32 noundef %19) #9
  %21 = load ptr, ptr %15, align 4
  %22 = getelementptr inbounds %struct.clk_hw, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @clk_get_rate(ptr noundef %23) #9
  %25 = zext i32 %24 to i64
  %26 = add nuw nsw i64 %25, 11999999999
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %26) #11, !srcloc !27
  %28 = extractvalue { i64, i64 } %27, 1
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.aspeed_adc_data, ptr %4, i32 0, i32 10
  store i32 %29, ptr %30, align 4
  br label %31

31:                                               ; preds = %14, %10, %2
  %32 = phi i32 [ 0, %14 ], [ -22, %10 ], [ -22, %2 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_adc_power_down(ptr nocapture noundef readonly %0) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %2 = getelementptr inbounds %struct.aspeed_adc_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #9, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aspeed_adc_compensation(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !28
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !29
  tail call void @arm_heavy_mb() #9
  %7 = or i32 %6, 65567
  %8 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #9, !srcloc !14
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  %10 = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 10
  br label %11

11:                                               ; preds = %11, %1
  %12 = phi i32 [ 0, %1 ], [ %23, %11 ]
  %13 = phi i32 [ 0, %1 ], [ %22, %11 ]
  %14 = load i32, ptr %10, align 4
  %15 = add i32 %14, 999
  %16 = udiv i32 %15, 1000
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #9
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #9, !srcloc !30
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !31
  %21 = zext i16 %20 to i32
  %22 = add i32 %13, %21
  %23 = add nuw nsw i32 %12, 1
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %11

25:                                               ; preds = %11
  %26 = or i32 %6, 15
  %27 = lshr i32 %22, 4
  %28 = sub nsw i32 512, %27
  %29 = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !32
  tail call void @arm_heavy_mb() #9
  %30 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %26) #9, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_fixed_factor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_adc_reg_disable(ptr noundef %0) #2 {
  %2 = tail call i32 @regulator_disable(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_adc_read_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  switch i32 %4, label %80 [
    i32 0, label %8
    i32 3, label %46
    i32 2, label %70
    i32 12, label %73
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.aspeed_adc_data, ptr %7, i32 0, i32 12
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.aspeed_adc_data, ptr %7, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !33
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %20 = or i32 %19, 12288
  %21 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #9, !srcloc !14
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #9
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %23, i32 %25
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %26) #9, !srcloc !30
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !35
  %28 = zext i16 %27 to i32
  store i32 %28, ptr %2, align 4
  %29 = getelementptr inbounds %struct.aspeed_adc_data, ptr %7, i32 0, i32 13
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = mul nuw nsw i32 %31, %28
  %33 = getelementptr inbounds %struct.aspeed_adc_data, ptr %7, i32 0, i32 13, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = udiv i32 %32, %35
  store i32 %36, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !36
  tail call void @arm_heavy_mb() #9
  %37 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %19) #9, !srcloc !14
  br label %80

38:                                               ; preds = %12, %8
  %39 = getelementptr inbounds %struct.aspeed_adc_data, ptr %7, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %40, i32 %42
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %43) #9, !srcloc !30
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !37
  %45 = zext i16 %44 to i32
  store i32 %45, ptr %2, align 4
  br label %80

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct.aspeed_adc_data, ptr %7, i32 0, i32 12
  %48 = load i8, ptr %47, align 4, !range !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 7
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.aspeed_adc_data, ptr %7, i32 0, i32 11
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.aspeed_adc_data, ptr %7, i32 0, i32 13
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = mul i32 %56, %59
  %61 = getelementptr inbounds %struct.aspeed_adc_data, ptr %7, i32 0, i32 13, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = sdiv i32 %60, %63
  br label %68

65:                                               ; preds = %50, %46
  %66 = getelementptr inbounds %struct.aspeed_adc_data, ptr %7, i32 0, i32 11
  %67 = load i32, ptr %66, align 4
  br label %68

68:                                               ; preds = %65, %54
  %69 = phi i32 [ %67, %65 ], [ %64, %54 ]
  store i32 %69, ptr %2, align 4
  br label %80

70:                                               ; preds = %5
  %71 = getelementptr inbounds %struct.aspeed_adc_data, ptr %7, i32 0, i32 9
  %72 = load i32, ptr %71, align 4
  store i32 %72, ptr %2, align 4
  store i32 10, ptr %3, align 4
  br label %80

73:                                               ; preds = %5
  %74 = getelementptr inbounds %struct.aspeed_adc_data, ptr %7, i32 0, i32 7
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.clk_hw, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 @clk_get_rate(ptr noundef %77) #9
  %79 = udiv i32 %78, 12
  store i32 %79, ptr %2, align 4
  br label %80

80:                                               ; preds = %73, %70, %68, %38, %16, %5
  %81 = phi i32 [ 1, %73 ], [ 11, %70 ], [ 1, %68 ], [ 1, %38 ], [ 1, %16 ], [ -22, %5 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_adc_write_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  switch i32 %4, label %35 [
    i32 12, label %6
    i32 2, label %36
    i32 0, label %36
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.aspeed_adc_data, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %2
  br i1 %13, label %36, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %10, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %2
  br i1 %17, label %36, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.aspeed_adc_data, ptr %8, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.clk_hw, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = mul i32 %2, 12
  %24 = tail call i32 @clk_set_rate(ptr noundef %22, i32 noundef %23) #9
  %25 = load ptr, ptr %19, align 4
  %26 = getelementptr inbounds %struct.clk_hw, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @clk_get_rate(ptr noundef %27) #9
  %29 = zext i32 %28 to i64
  %30 = add nuw nsw i64 %29, 11999999999
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %28, i64 %30) #11, !srcloc !27
  %32 = extractvalue { i64, i64 } %31, 1
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.aspeed_adc_data, ptr %8, i32 0, i32 10
  store i32 %33, ptr %34, align 4
  br label %36

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %35, %18, %14, %6, %5, %5
  %37 = phi i32 [ -22, %35 ], [ -1, %5 ], [ -1, %5 ], [ 0, %18 ], [ -22, %14 ], [ -22, %6 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_adc_reg_access(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %3, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = and i32 %1, 3
  %10 = icmp ne i32 %9, 0
  %11 = icmp ugt i32 %1, 208
  %12 = or i1 %11, %10
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.aspeed_adc_data, ptr %6, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !38
  store i32 %17, ptr %3, align 4
  br label %18

18:                                               ; preds = %13, %8, %4
  %19 = phi i32 [ 0, %13 ], [ -22, %8 ], [ -22, %4 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

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
!10 = !{i64 2892771}
!11 = !{i64 2154312665}
!12 = !{i64 2154313736}
!13 = !{i64 2154357641}
!14 = !{i64 2892353}
!15 = !{i64 2154038312}
!16 = !{i64 2154359527}
!17 = !{i64 2154359861}
!18 = !{i64 2154360204}
!19 = !{i64 2154361109}
!20 = !{i64 2154053679}
!21 = !{i64 2154100894}
!22 = !{i64 2154167251}
!23 = !{i64 2154230175}
!24 = !{i64 2154292471}
!25 = !{i32 0, i32 33}
!26 = !{i64 2153845127}
!27 = !{i64 2148375113, i64 2148375393, i64 2148375727, i64 2148376061}
!28 = !{i64 2153845613}
!29 = !{i64 2153934451}
!30 = !{i64 2891933}
!31 = !{i64 2153951709}
!32 = !{i64 2153952005}
!33 = !{i64 2153959157}
!34 = !{i64 2153978061}
!35 = !{i64 2153990010}
!36 = !{i64 2153990223}
!37 = !{i64 2153990759}
!38 = !{i64 2153991121}
