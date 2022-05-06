; ModuleID = '/llk/IR/drivers/iio/adc/rockchip_saradc.c_pt.bc'
source_filename = "../drivers/iio/adc/rockchip_saradc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rockchip_saradc_data = type { ptr, i32, i32 }
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
%struct.lock_class_key = type {}
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
%struct.rockchip_saradc = type { ptr, ptr, ptr, %struct.completion, ptr, i32, ptr, ptr, i16, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.72 = type { [8 x i16], i64 }

@rockchip_saradc_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @saradc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3066_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_saradc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3568_saradc_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [40 x i8] c"author=Heiko Stuebner <heiko@sntech.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [35 x i8] c"description=Rockchip SARADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@saradc_data = internal constant %struct.rockchip_saradc_data { ptr @rockchip_saradc_iio_channels, i32 3, i32 1000000 }, align 4
@rk3066_tsadc_data = internal constant %struct.rockchip_saradc_data { ptr @rockchip_rk3066_tsadc_iio_channels, i32 2, i32 50000 }, align 4
@rk3399_saradc_data = internal constant %struct.rockchip_saradc_data { ptr @rockchip_rk3399_saradc_iio_channels, i32 6, i32 1000000 }, align 4
@rk3568_saradc_data = internal constant %struct.rockchip_saradc_data { ptr @rockchip_rk3568_saradc_iio_channels, i32 8, i32 1000000 }, align 4
@rockchip_saradc_iio_channels = internal constant [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.1, i8 2 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.2, i8 2 }], align 4
@.str = private unnamed_addr constant [5 x i8] c"adc0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"adc1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"adc2\00", align 1
@rockchip_rk3066_tsadc_iio_channels = internal constant [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.1, i8 2 }], align 4
@rockchip_rk3399_saradc_iio_channels = internal constant [6 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.1, i8 2 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.2, i8 2 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.3, i8 2 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 4, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.4, i8 2 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 5, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.5, i8 2 }], align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"adc3\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"adc4\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"adc5\00", align 1
@rockchip_rk3568_saradc_iio_channels = internal constant [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.1, i8 2 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.2, i8 2 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.3, i8 2 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 4, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.4, i8 2 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 5, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.5, i8 2 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 6, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.6, i8 2 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 7, %struct.anon { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.7, i8 2 }], align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"adc6\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"adc7\00", align 1
@rockchip_saradc_driver = internal global %struct.platform_driver { ptr @rockchip_saradc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_saradc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_saradc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.8 = private unnamed_addr constant [16 x i8] c"rockchip-saradc\00", align 1
@rockchip_saradc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rockchip_saradc_suspend, ptr @rockchip_saradc_resume, ptr @rockchip_saradc_suspend, ptr @rockchip_saradc_resume, ptr @rockchip_saradc_suspend, ptr @rockchip_saradc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"failed allocating iio device\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"failed to match device\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"max channels exceeded\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"saradc-apb\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"failed to get saradc-apb\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"failed requesting irq %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"apb_pclk\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"failed to get pclk\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"saradc\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"failed to get adc clock\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"failed to get regulator\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"failed to set adc clk rate, %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"failed to enable vref regulator\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"failed to register devm action, %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"failed to enable pclk\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"failed to enable converter clock\0A\00", align 1
@rockchip_saradc_iio_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @rockchip_saradc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_of__rockchip_saradc_match_device_table = dso_local alias [5 x %struct.of_device_id], ptr @rockchip_saradc_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_saradc_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_saradc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_saradc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %158, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @devm_iio_device_alloc(ptr noundef %2, i32 noundef 64) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #9
  br label %158

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 19
  %12 = load ptr, ptr %11, align 8
  %13 = tail call ptr @of_match_device(ptr noundef nonnull @rockchip_saradc_match, ptr noundef %2) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #9
  br label %158

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.of_device_id, ptr %13, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rockchip_saradc, ptr %12, i32 0, i32 7
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rockchip_saradc_data, ptr %18, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, 8
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #9
  br label %158

24:                                               ; preds = %16
  %25 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  store ptr %25, ptr %12, align 4
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = ptrtoint ptr %25 to i32
  br label %158

29:                                               ; preds = %24
  %30 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %31 = getelementptr inbounds %struct.rockchip_saradc, ptr %12, i32 0, i32 6
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = icmp eq ptr %30, inttoptr (i32 -2 to ptr)
  br i1 %34, label %38, label %35

35:                                               ; preds = %33
  %36 = ptrtoint ptr %30 to i32
  %37 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %36, ptr noundef nonnull @.str.13) #8
  br label %158

38:                                               ; preds = %33
  store ptr null, ptr %31, align 4
  br label %39

39:                                               ; preds = %38, %29
  %40 = getelementptr inbounds %struct.rockchip_saradc, ptr %12, i32 0, i32 3
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.rockchip_saradc, ptr %12, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %41, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #8
  %42 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %42, ptr noundef nonnull @.str.14) #8
  br label %158

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load ptr, ptr %2, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi ptr [ %51, %50 ], [ %48, %46 ]
  %54 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %42, ptr noundef nonnull @rockchip_saradc_isr, ptr noundef null, i32 noundef 0, ptr noundef %53, ptr noundef %12) #8
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef %42) #9
  br label %158

57:                                               ; preds = %52
  %58 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.16) #8
  %59 = getelementptr inbounds %struct.rockchip_saradc, ptr %12, i32 0, i32 1
  store ptr %58, ptr %59, align 4
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = ptrtoint ptr %58 to i32
  %63 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %62, ptr noundef nonnull @.str.17) #8
  br label %158

64:                                               ; preds = %57
  %65 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.18) #8
  %66 = getelementptr inbounds %struct.rockchip_saradc, ptr %12, i32 0, i32 2
  store ptr %65, ptr %66, align 4
  %67 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = ptrtoint ptr %65 to i32
  %70 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %69, ptr noundef nonnull @.str.19) #8
  br label %158

71:                                               ; preds = %64
  %72 = tail call ptr @devm_regulator_get(ptr noundef %2, ptr noundef nonnull @.str.20) #8
  %73 = getelementptr inbounds %struct.rockchip_saradc, ptr %12, i32 0, i32 4
  store ptr %72, ptr %73, align 4
  %74 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = ptrtoint ptr %72 to i32
  %77 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %76, ptr noundef nonnull @.str.21) #8
  br label %158

78:                                               ; preds = %71
  %79 = load ptr, ptr %31, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  tail call fastcc void @rockchip_saradc_reset_controller(ptr noundef nonnull %79)
  br label %82

82:                                               ; preds = %81, %78
  %83 = load ptr, ptr %66, align 4
  %84 = load ptr, ptr %19, align 4
  %85 = getelementptr inbounds %struct.rockchip_saradc_data, ptr %84, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = tail call i32 @clk_set_rate(ptr noundef %83, i32 noundef %86) #8
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef %87) #9
  br label %158

90:                                               ; preds = %82
  %91 = load ptr, ptr %73, align 4
  %92 = tail call i32 @regulator_enable(ptr noundef %91) #8
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.23) #9
  br label %158

95:                                               ; preds = %90
  %96 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @rockchip_saradc_regulator_disable, ptr noundef %12) #8
  %97 = icmp eq i32 %96, 0
  %98 = load ptr, ptr %73, align 4
  br i1 %97, label %101, label %99

99:                                               ; preds = %95
  %100 = tail call i32 @regulator_disable(ptr noundef %98) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %96) #9
  br label %158

101:                                              ; preds = %95
  %102 = tail call i32 @regulator_get_voltage(ptr noundef %98) #8
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %158, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.rockchip_saradc, ptr %12, i32 0, i32 5
  store i32 %102, ptr %105, align 4
  %106 = load ptr, ptr %59, align 4
  %107 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %106)
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.25) #9
  br label %158

110:                                              ; preds = %104
  %111 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @rockchip_saradc_pclk_disable, ptr noundef %12) #8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %59, align 4
  tail call void @clk_disable(ptr noundef %114) #8
  tail call void @clk_unprepare(ptr noundef %114) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %111) #9
  br label %158

115:                                              ; preds = %110
  %116 = load ptr, ptr %66, align 4
  %117 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %116)
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.26) #9
  br label %158

120:                                              ; preds = %115
  %121 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @rockchip_saradc_clk_disable, ptr noundef %12) #8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr %66, align 4
  tail call void @clk_disable(ptr noundef %124) #8
  tail call void @clk_unprepare(ptr noundef %124) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %121) #9
  br label %158

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %126, align 8
  %127 = load ptr, ptr %47, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load ptr, ptr %2, align 4
  br label %131

131:                                              ; preds = %129, %125
  %132 = phi ptr [ %130, %129 ], [ %127, %125 ]
  %133 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 15
  store ptr %132, ptr %133, align 8
  %134 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 17
  store ptr @rockchip_saradc_iio_info, ptr %134, align 8
  store i32 1, ptr %7, align 8
  %135 = load ptr, ptr %19, align 4
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 13
  store ptr %136, ptr %137, align 8
  %138 = load ptr, ptr %19, align 4
  %139 = getelementptr inbounds %struct.rockchip_saradc_data, ptr %138, i32 0, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 14
  store i32 %140, ptr %141, align 4
  %142 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 2
  %143 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %142, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull @rockchip_saradc_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %131
  %146 = getelementptr inbounds %struct.rockchip_saradc, ptr %12, i32 0, i32 10
  store ptr @rockchip_saradc_volt_notify, ptr %146, align 4
  %147 = load ptr, ptr %73, align 4
  %148 = tail call i32 @regulator_register_notifier(ptr noundef %147, ptr noundef %146) #8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @rockchip_saradc_regulator_unreg_notifier, ptr noundef %12) #8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr %73, align 4
  %155 = tail call i32 @regulator_unregister_notifier(ptr noundef %154, ptr noundef %146) #8
  br label %158

156:                                              ; preds = %150
  %157 = tail call i32 @__devm_iio_device_register(ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull @__this_module) #8
  br label %158

158:                                              ; preds = %156, %153, %145, %131, %123, %119, %113, %109, %101, %99, %94, %89, %75, %68, %61, %56, %44, %35, %27, %23, %15, %9, %1
  %159 = phi i32 [ -22, %23 ], [ %28, %27 ], [ %37, %35 ], [ %45, %44 ], [ %54, %56 ], [ %63, %61 ], [ %70, %68 ], [ %77, %75 ], [ %87, %89 ], [ %92, %94 ], [ %96, %99 ], [ %107, %109 ], [ %111, %113 ], [ %117, %119 ], [ %121, %123 ], [ %157, %156 ], [ -19, %15 ], [ -12, %9 ], [ -19, %1 ], [ %102, %101 ], [ %143, %131 ], [ %148, %145 ], [ %151, %153 ]
  ret i32 %159
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_saradc_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !8
  %5 = trunc i32 %4 to i16
  %6 = getelementptr inbounds %struct.rockchip_saradc, ptr %1, i32 0, i32 8
  store i16 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rockchip_saradc, ptr %1, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.iio_chan_spec, ptr %8, i32 0, i32 5, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = sub nsw i32 32, %11
  %13 = lshr i32 -1, %12
  %14 = and i32 %13, %4
  %15 = trunc i32 %14 to i16
  store i16 %15, ptr %6, align 4
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #8, !srcloc !9
  %18 = getelementptr inbounds %struct.rockchip_saradc, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %18) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rockchip_saradc_reset_controller(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call i32 @reset_control_assert(ptr noundef %0) #8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  %3 = tail call i32 @reset_control_deassert(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_saradc_regulator_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rockchip_saradc, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regulator_disable(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #8
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_saradc_pclk_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rockchip_saradc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_saradc_clk_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rockchip_saradc, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_saradc_trigger_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.anon.72, align 8
  %4 = load ptr, ptr %1, align 8
  %5 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !10
  %7 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 7
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 @_find_next_bit_le(ptr noundef %9, i32 noundef %11, i32 noundef 0) #8
  %13 = load i32, ptr %10, align 8
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 13
  %17 = getelementptr inbounds %struct.rockchip_saradc, ptr %6, i32 0, i32 3
  %18 = getelementptr inbounds %struct.rockchip_saradc, ptr %6, i32 0, i32 9
  %19 = getelementptr inbounds %struct.rockchip_saradc, ptr %6, i32 0, i32 8
  br label %20

20:                                               ; preds = %38, %15
  %21 = phi i32 [ 0, %15 ], [ %41, %38 ]
  %22 = phi i32 [ %12, %15 ], [ %45, %38 ]
  %23 = load ptr, ptr %16, align 8
  %24 = getelementptr %struct.iio_chan_spec, ptr %23, i32 %22
  store i32 0, ptr %17, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 8) #8, !srcloc !9
  store ptr %24, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %27 = getelementptr %struct.iio_chan_spec, ptr %23, i32 %22, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 7
  %30 = or i32 %29, 40
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #8, !srcloc !9
  %33 = tail call i32 @wait_for_completion_timeout(ptr noundef %17, i32 noundef 10) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load ptr, ptr %6, align 4
  %37 = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #8, !srcloc !9
  br label %61

38:                                               ; preds = %20
  %39 = load i16, ptr %19, align 4
  %40 = getelementptr [8 x i16], ptr %3, i32 0, i32 %21
  store i16 %39, ptr %40, align 2
  %41 = add i32 %21, 1
  %42 = load ptr, ptr %8, align 4
  %43 = load i32, ptr %10, align 8
  %44 = add nuw i32 %22, 1
  %45 = tail call i32 @_find_next_bit_le(ptr noundef %42, i32 noundef %43, i32 noundef %44) #8
  %46 = load i32, ptr %10, align 8
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %20, label %48

48:                                               ; preds = %38, %2
  %49 = tail call i64 @iio_get_time_ns(ptr noundef %4) #8
  %50 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 9
  %51 = load i8, ptr %50, align 8, !range !12
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = lshr i32 %55, 3
  %57 = add nsw i32 %56, -1
  %58 = getelementptr i64, ptr %3, i32 %57
  store i64 %49, ptr %58, align 8
  br label %59

59:                                               ; preds = %53, %48
  %60 = call i32 @iio_push_to_buffers(ptr noundef %4, ptr noundef nonnull %3) #8
  br label %61

61:                                               ; preds = %59, %35
  call void @mutex_unlock(ptr noundef %7) #8
  %62 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 10
  %63 = load ptr, ptr %62, align 4
  call void @iio_trigger_notify_done(ptr noundef %63) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rockchip_saradc_volt_notify(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2) #6 {
  %4 = and i32 %1, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = ptrtoint ptr %2 to i32
  %8 = getelementptr i8, ptr %0, i32 -20
  store i32 %7, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_saradc_regulator_unreg_notifier(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.rockchip_saradc, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rockchip_saradc, ptr %0, i32 0, i32 10
  %5 = tail call i32 @regulator_unregister_notifier(ptr noundef %3, ptr noundef %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_saradc_read_raw(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  switch i32 %4, label %36 [
    i32 0, label %8
    i32 2, label %29
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.rockchip_saradc, ptr %7, i32 0, i32 3
  store i32 0, ptr %10, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 8) #8, !srcloc !9
  %13 = getelementptr inbounds %struct.rockchip_saradc, ptr %7, i32 0, i32 9
  store ptr %1, ptr %13, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %14 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 7
  %17 = or i32 %16, 40
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !9
  %20 = tail call i32 @wait_for_completion_timeout(ptr noundef %10, i32 noundef 10) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #8, !srcloc !9
  tail call void @mutex_unlock(ptr noundef %9) #8
  br label %36

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.rockchip_saradc, ptr %7, i32 0, i32 8
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  store i32 %28, ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef %9) #8
  br label %36

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.rockchip_saradc, ptr %7, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = sdiv i32 %31, 1000
  store i32 %32, ptr %2, align 4
  %33 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  store i32 %35, ptr %3, align 4
  br label %36

36:                                               ; preds = %29, %25, %22, %5
  %37 = phi i32 [ 11, %29 ], [ -110, %22 ], [ 1, %25 ], [ -22, %5 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_saradc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rockchip_saradc, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.rockchip_saradc, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.rockchip_saradc, ptr %5, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regulator_disable(ptr noundef %11) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_saradc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rockchip_saradc, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regulator_enable(ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rockchip_saradc, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = tail call i32 @clk_enable(ptr noundef %12) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.rockchip_saradc, ptr %5, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = tail call i32 @clk_enable(ptr noundef %20) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #8
  br label %27

27:                                               ; preds = %26, %18
  %28 = phi i32 [ %24, %26 ], [ %21, %18 ]
  %29 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %29) #8
  br label %30

30:                                               ; preds = %27, %15
  %31 = phi ptr [ %29, %27 ], [ %12, %15 ]
  %32 = phi i32 [ %28, %27 ], [ %16, %15 ]
  tail call void @clk_unprepare(ptr noundef %31) #8
  br label %33

33:                                               ; preds = %30, %23, %10, %1
  %34 = phi i32 [ %8, %1 ], [ 0, %23 ], [ %13, %10 ], [ %32, %30 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 3719098}
!9 = !{i64 3718680}
!10 = !{!"auto-init"}
!11 = !{i64 2153652405}
!12 = !{i8 0, i8 2}
