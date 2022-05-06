; ModuleID = '/llk/IR/drivers/soc/rockchip/io-domain.c_pt.bc'
source_filename = "../drivers/soc/rockchip/io-domain.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rockchip_iodomain_soc_data = type { i32, [16 x ptr], ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rockchip_iodomain = type { ptr, ptr, ptr, [16 x %struct.rockchip_iodomain_supply], ptr }
%struct.rockchip_iodomain_supply = type { ptr, ptr, %struct.notifier_block, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pre_voltage_change_data = type { i32, i32, i32 }

@__initcall__kmod_io_domain__249_695_rockchip_iodomain_driver_init6 = internal global ptr @rockchip_iodomain_driver_init, section ".initcall6.init", align 4
@rockchip_iodomain_driver = internal global %struct.platform_driver { ptr @rockchip_iodomain_probe, ptr @rockchip_iodomain_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_iodomain_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rockchip_iodomain_driver_exit = internal global ptr @rockchip_iodomain_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description250 = internal constant [48 x i8] c"io_domain.description=Rockchip IO-domain driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [50 x i8] c"io_domain.author=Heiko Stuebner <heiko@sntech.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [55 x i8] c"io_domain.author=Doug Anderson <dianders@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [46 x i8] c"io_domain.file=drivers/soc/rockchip/io-domain\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [25 x i8] c"io_domain.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"rockchip-iodomain\00", align 1
@rockchip_iodomain_match = internal constant [14 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_px30 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-pmu-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_px30_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3188 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3228 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3288 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3328 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3368 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-pmu-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3368_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3399 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-pmu-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3399_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-pmu-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rk3568_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rv1108 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-pmu-io-voltage-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_rv1108_pmu }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"couldn't find grf regmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"couldn't get regulator %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Can't determine voltage: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"%d uV is too high. May damage SoC!\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"regulator notifier request failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Couldn't write to GRF\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Voltage too high: %d\0A\00", align 1
@soc_data_px30_pmu = internal constant %struct.rockchip_iodomain_soc_data { i32 256, [16 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.18, ptr @.str.19], ptr null, ptr null }, align 4
@soc_data_rk3188 = internal constant %struct.rockchip_iodomain_soc_data { i32 260, [16 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.10, ptr @.str.25, ptr @.str.26], ptr null, ptr null }, align 4
@soc_data_rk3288 = internal constant %struct.rockchip_iodomain_soc_data { i32 896, [16 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], ptr @rk3288_iodomain_init, ptr null }, align 4
@soc_data_rk3368 = internal constant %struct.rockchip_iodomain_soc_data { i32 2304, [16 x ptr] [ptr null, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr null, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], ptr @rk3368_iodomain_init, ptr null }, align 4
@soc_data_rk3399_pmu = internal constant %struct.rockchip_iodomain_soc_data { i32 384, [16 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.48, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], ptr @rk3399_pmu_iodomain_init, ptr null }, align 4
@soc_data_rk3568_pmu = internal constant %struct.rockchip_iodomain_soc_data { i32 320, [16 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.9, ptr @.str.50, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], ptr null, ptr @rk3568_iodomain_write }, align 4
@soc_data_rv1108 = internal constant %struct.rockchip_iodomain_soc_data { i32 1028, [16 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.9], ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"vccio6\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"vccio1\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"vccio2\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"vccio3\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"vccio4\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"vccio5\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"vccio-oscgpi\00", align 1
@soc_data_px30 = internal constant { i32, <{ [8 x ptr], [8 x ptr] }>, ptr, ptr } { i32 384, <{ [8 x ptr], [8 x ptr] }> <{ [8 x ptr] [ptr null, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], [8 x ptr] zeroinitializer }>, ptr @px30_iodomain_init, ptr null }, align 4
@.str.17 = private unnamed_addr constant [29 x i8] c"couldn't update vccio6 ctrl\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"pmuio1\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"pmuio2\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"ap0\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ap1\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"cif\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"vccio0\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"lcdc0\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"lcdc1\00", align 1
@soc_data_rk3228 = internal constant { i32, <{ ptr, ptr, ptr, ptr, [12 x ptr] }>, ptr, ptr } { i32 1048, <{ ptr, ptr, ptr, ptr, [12 x ptr] }> <{ ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, [12 x ptr] zeroinitializer }>, ptr null, ptr null }, align 4
@.str.28 = private unnamed_addr constant [5 x i8] c"lcdc\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"dvp\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"flash0\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"flash1\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"wifi\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"bb\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"sdcard\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"gpio30\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"gpio1830\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"couldn't update flash0 ctrl\0A\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"pmuio\00", align 1
@soc_data_rk3328 = internal constant { i32, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [9 x ptr] }>, ptr, ptr } { i32 1040, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [9 x ptr] }> <{ ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.9, ptr @.str.39, [9 x ptr] zeroinitializer }>, ptr @rk3328_iodomain_init, ptr null }, align 4
@.str.41 = private unnamed_addr constant [34 x i8] c"couldn't update vccio2 vsel ctrl\0A\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"pmu\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"vop\00", align 1
@soc_data_rk3368_pmu = internal constant { i32, <{ ptr, ptr, ptr, ptr, ptr, ptr, [10 x ptr] }>, ptr, ptr } { i32 256, <{ ptr, ptr, ptr, ptr, ptr, ptr, [10 x ptr] }> <{ ptr null, ptr null, ptr null, ptr null, ptr @.str.42, ptr @.str.43, [10 x ptr] zeroinitializer }>, ptr null, ptr null }, align 4
@.str.45 = private unnamed_addr constant [6 x i8] c"bt656\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"sdmmc\00", align 1
@soc_data_rk3399 = internal constant { i32, <{ ptr, ptr, ptr, ptr, [12 x ptr] }>, ptr, ptr } { i32 58944, <{ ptr, ptr, ptr, ptr, [12 x ptr] }> <{ ptr @.str.45, ptr @.str.34, ptr @.str.46, ptr @.str.37, [12 x ptr] zeroinitializer }>, ptr null, ptr null }, align 4
@.str.48 = private unnamed_addr constant [8 x i8] c"pmu1830\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"couldn't update pmu io iodomain ctrl\0A\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"vccio7\00", align 1
@soc_data_rv1108_pmu = internal constant { i32, <{ ptr, [15 x ptr] }>, ptr, ptr } { i32 260, <{ ptr, [15 x ptr] }> <{ ptr @.str.42, [15 x ptr] zeroinitializer }>, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_rockchip_iodomain_driver_exit, ptr @__initcall__kmod_io_domain__249_695_rockchip_iodomain_driver_init6, ptr @rockchip_iodomain_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rockchip_iodomain_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_iodomain_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rockchip_iodomain_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_iodomain_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_iodomain_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %100, label %6

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 400, i32 noundef 3520) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %100, label %9

9:                                                ; preds = %6
  store ptr %2, ptr %7, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %10, align 8
  %11 = tail call ptr @of_match_node(ptr noundef nonnull @rockchip_iodomain_match, ptr noundef nonnull %4) #5
  %12 = getelementptr inbounds %struct.of_device_id, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rockchip_iodomain, ptr %7, i32 0, i32 2
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rockchip_iodomain_soc_data, ptr %13, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr @rockchip_iodomain_write, ptr %16
  %19 = getelementptr inbounds %struct.rockchip_iodomain, ptr %7, i32 0, i32 4
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 25
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %25) #5
  br label %31

29:                                               ; preds = %23, %9
  %30 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef nonnull %4, ptr noundef nonnull @.str.1) #5
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi ptr [ %30, %29 ], [ %28, %27 ]
  %33 = getelementptr inbounds %struct.rockchip_iodomain, ptr %7, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.rockchip_iodomain, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  %37 = load ptr, ptr %36, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %100

39:                                               ; preds = %80, %31
  %40 = phi i32 [ %81, %80 ], [ 0, %31 ]
  %41 = load ptr, ptr %14, align 4
  %42 = getelementptr %struct.rockchip_iodomain_soc_data, ptr %41, i32 0, i32 1, i32 %40
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr %struct.rockchip_iodomain, ptr %7, i32 0, i32 3, i32 %40
  %45 = icmp eq ptr %43, null
  br i1 %45, label %80, label %46

46:                                               ; preds = %39
  %47 = load ptr, ptr %7, align 4
  %48 = tail call ptr @devm_regulator_get_optional(ptr noundef %47, ptr noundef nonnull %43) #5
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = ptrtoint ptr %48 to i32
  switch i32 %51, label %52 [
    i32 -19, label %80
    i32 -517, label %76
  ]

52:                                               ; preds = %50
  %53 = ptrtoint ptr %48 to i32
  %54 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.3, ptr noundef nonnull %43) #6
  br label %78

55:                                               ; preds = %46
  %56 = tail call i32 @regulator_get_voltage(ptr noundef %48) #5
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.4, ptr noundef nonnull %43) #6
  br label %78

60:                                               ; preds = %55
  %61 = icmp ugt i32 %56, 3600000
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  %63 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %63, ptr noundef nonnull @.str.5, i32 noundef %56) #6
  br label %78

64:                                               ; preds = %60
  %65 = getelementptr %struct.rockchip_iodomain, ptr %7, i32 0, i32 3, i32 %40, i32 3
  store i32 %40, ptr %65, align 4
  store ptr %7, ptr %44, align 4
  %66 = getelementptr %struct.rockchip_iodomain, ptr %7, i32 0, i32 3, i32 %40, i32 1
  store ptr %48, ptr %66, align 4
  %67 = getelementptr %struct.rockchip_iodomain, ptr %7, i32 0, i32 3, i32 %40, i32 2
  store ptr @rockchip_iodomain_notify, ptr %67, align 4
  %68 = load ptr, ptr %19, align 4
  %69 = tail call i32 %68(ptr noundef %44, i32 noundef %56) #5
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  store ptr null, ptr %66, align 4
  br label %78

72:                                               ; preds = %64
  %73 = tail call i32 @regulator_register_notifier(ptr noundef %48, ptr noundef %67) #5
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #6
  store ptr null, ptr %66, align 4
  br label %78

76:                                               ; preds = %50
  %77 = ptrtoint ptr %48 to i32
  br label %78

78:                                               ; preds = %76, %75, %71, %62, %58, %52
  %79 = phi i32 [ %56, %58 ], [ -22, %62 ], [ %69, %71 ], [ %73, %75 ], [ %53, %52 ], [ %77, %76 ]
  br label %89

80:                                               ; preds = %72, %50, %39
  %81 = add nuw nsw i32 %40, 1
  %82 = icmp eq i32 %81, 16
  br i1 %82, label %83, label %39

83:                                               ; preds = %80
  %84 = load ptr, ptr %14, align 4
  %85 = getelementptr inbounds %struct.rockchip_iodomain_soc_data, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %100, label %88

88:                                               ; preds = %83
  tail call void %86(ptr noundef nonnull %7) #5
  br label %100

89:                                               ; preds = %97, %78
  %90 = phi i32 [ 15, %78 ], [ %98, %97 ]
  %91 = getelementptr %struct.rockchip_iodomain, ptr %7, i32 0, i32 3, i32 %90, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = getelementptr %struct.rockchip_iodomain, ptr %7, i32 0, i32 3, i32 %90, i32 2
  %96 = tail call i32 @regulator_unregister_notifier(ptr noundef nonnull %92, ptr noundef %95) #5
  br label %97

97:                                               ; preds = %94, %89
  %98 = add nsw i32 %90, -1
  %99 = icmp eq i32 %90, 0
  br i1 %99, label %100, label %89

100:                                              ; preds = %97, %88, %83, %35, %6, %1
  %101 = phi i32 [ %38, %35 ], [ -19, %1 ], [ -12, %6 ], [ 0, %88 ], [ 0, %83 ], [ %79, %97 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_iodomain_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  br label %4

4:                                                ; preds = %12, %1
  %5 = phi i32 [ 15, %1 ], [ %13, %12 ]
  %6 = getelementptr %struct.rockchip_iodomain, ptr %3, i32 0, i32 3, i32 %5, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr %struct.rockchip_iodomain, ptr %3, i32 0, i32 3, i32 %5, i32 2
  %11 = tail call i32 @regulator_unregister_notifier(ptr noundef nonnull %7, ptr noundef %10) #5
  br label %12

12:                                               ; preds = %9, %4
  %13 = add nsw i32 %5, -1
  %14 = icmp eq i32 %5, 0
  br i1 %14, label %15, label %4

15:                                               ; preds = %12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_iodomain_write(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp slt i32 %1, 1980001
  %5 = getelementptr inbounds %struct.rockchip_iodomain_supply, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = select i1 %4, i32 65537, i32 65536
  %8 = shl i32 %7, %6
  %9 = getelementptr inbounds %struct.rockchip_iodomain, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rockchip_iodomain, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %13, i32 noundef %8) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.7) #6
  br label %18

18:                                               ; preds = %16, %2
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_iodomain_notify(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = and i32 %1, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr inbounds %struct.pre_voltage_change_data, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.umax.i32(i32 %8, i32 %10)
  br label %17

12:                                               ; preds = %3
  %13 = and i32 %1, 576
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %12
  %16 = ptrtoint ptr %2 to i32
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi i32 [ %11, %7 ], [ %16, %15 ]
  %19 = icmp sgt i32 %18, 3600000
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 4
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.8, i32 noundef %18) #6
  %23 = icmp eq i32 %1, 256
  br i1 %23, label %33, label %24

24:                                               ; preds = %20, %17
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds %struct.rockchip_iodomain, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %4, i32 noundef %18) #5
  %29 = icmp ne i32 %28, 0
  %30 = icmp eq i32 %1, 256
  %31 = and i1 %30, %29
  %32 = select i1 %31, i32 32770, i32 1
  br label %33

33:                                               ; preds = %24, %20, %12
  %34 = phi i32 [ 1, %12 ], [ 32770, %20 ], [ %32, %24 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @px30_iodomain_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr %struct.rockchip_iodomain, ptr %0, i32 0, i32 3, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rockchip_iodomain, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 384, i32 noundef 65537) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.17) #6
  br label %12

12:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3288_iodomain_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr %struct.rockchip_iodomain, ptr %0, i32 0, i32 3, i32 2, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rockchip_iodomain, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 588, i32 noundef 8388736) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.38) #6
  br label %12

12:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3328_iodomain_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr %struct.rockchip_iodomain, ptr %0, i32 0, i32 3, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rockchip_iodomain, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 1040, i32 noundef 8388736) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.41) #6
  br label %12

12:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3368_iodomain_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr %struct.rockchip_iodomain, ptr %0, i32 0, i32 3, i32 2, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rockchip_iodomain, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 1084, i32 noundef 1073758208) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.38) #6
  br label %12

12:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3399_pmu_iodomain_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr %struct.rockchip_iodomain, ptr %0, i32 0, i32 3, i32 9, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rockchip_iodomain, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 384, i32 noundef 16777472) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.49) #6
  br label %12

12:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk3568_iodomain_write(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp sgt i32 %1, 1980000
  %5 = getelementptr inbounds %struct.rockchip_iodomain_supply, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %29 [
    i32 0, label %28
    i32 1, label %7
    i32 3, label %28
    i32 2, label %15
    i32 4, label %15
    i32 5, label %15
    i32 6, label %15
    i32 7, label %15
    i32 8, label %15
  ]

7:                                                ; preds = %2
  %8 = select i1 %4, i32 131072, i32 131074
  %9 = select i1 %4, i32 2097184, i32 2097152
  %10 = getelementptr inbounds %struct.rockchip_iodomain, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 328, i32 noundef %8) #5
  %13 = load ptr, ptr %10, align 4
  %14 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 328, i32 noundef %9) #5
  br label %28

15:                                               ; preds = %2, %2, %2, %2, %2, %2
  %16 = add nsw i32 %6, -1
  %17 = shl nuw nsw i32 32768, %6
  %18 = shl nuw nsw i32 1, %16
  %19 = select i1 %4, i32 0, i32 %18
  %20 = or i32 %19, %17
  %21 = select i1 %4, i32 %18, i32 0
  %22 = or i32 %21, %17
  %23 = getelementptr inbounds %struct.rockchip_iodomain, ptr %3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 320, i32 noundef %20) #5
  %26 = load ptr, ptr %23, align 4
  %27 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 324, i32 noundef %22) #5
  br label %28

28:                                               ; preds = %15, %7, %2, %2
  br label %29

29:                                               ; preds = %28, %2
  %30 = phi i32 [ 0, %28 ], [ -22, %2 ]
  ret i32 %30
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
