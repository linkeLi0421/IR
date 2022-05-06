; ModuleID = '/llk/IR/drivers/thermal/rockchip_thermal.c_pt.bc'
source_filename = "../drivers/thermal/rockchip_thermal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.rockchip_tsadc_chip = type { [2 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.chip_tsadc_table }
%struct.chip_tsadc_table = type { ptr, i32, i32, i32 }
%struct.tsadc_table = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rockchip_thermal_data = type { ptr, ptr, ptr, [2 x %struct.rockchip_thermal_sensor], ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.rockchip_thermal_sensor = type { ptr, ptr, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rockchip_thermal__210_1575_rockchip_thermal_driver_init6 = internal global ptr @rockchip_thermal_driver_init, section ".initcall6.init", align 4
@rockchip_thermal_driver = internal global %struct.platform_driver { ptr @rockchip_thermal_probe, ptr @rockchip_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_rockchip_thermal_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rockchip_thermal_driver_exit = internal global ptr @rockchip_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description211 = internal constant [53 x i8] c"rockchip_thermal.description=ROCKCHIP THERMAL Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [39 x i8] c"rockchip_thermal.author=Rockchip, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [55 x i8] c"rockchip_thermal.file=drivers/thermal/rockchip_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [32 x i8] c"rockchip_thermal.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias215 = internal constant [49 x i8] c"rockchip_thermal.alias=platform:rockchip-thermal\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"rockchip-thermal\00", align 1
@of_rockchip_thermal_match = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @px30_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rv1108_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3328_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3366-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3366_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3368_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_tsadc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3568_tsadc_data }, %struct.of_device_id zeroinitializer], align 4
@rockchip_thermal_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rockchip_thermal_suspend, ptr @rockchip_thermal_resume, ptr @rockchip_thermal_suspend, ptr @rockchip_thermal_resume, ptr @rockchip_thermal_suspend, ptr @rockchip_thermal_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get tsadc reset: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"tsadc\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to get tsadc clock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"apb_pclk\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to get apb_pclk clock: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"failed to enable converter clock: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"failed to enable pclk: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"failed to parse device tree data: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"failed to register sensor[%d] : error = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"rockchip_thermal\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"failed to request tsadc irq: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"failed to register sensor %d with hwmon: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"rockchip,hw-tshut-temp\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"Missing tshut temp property, using default %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Invalid tshut temperature specified: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"rockchip,hw-tshut-mode\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"Missing tshut mode property, using default (%s)\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"cru\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Invalid tshut mode specified: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"rockchip,hw-tshut-polarity\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"Missing tshut-polarity property, using default (%s)\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"Invalid tshut-polarity specified: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Missing rockchip,grf property\0A\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"%s: invalid tshut=%d, error=%d\0A\00", align 1
@__func__.rockchip_thermal_register_sensor = private unnamed_addr constant [33 x i8] c"rockchip_thermal_register_sensor\00", align 1
@rockchip_of_thermal_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @rockchip_thermal_get_temp, ptr null, ptr @rockchip_thermal_set_trips, ptr null, ptr null }, align 4
@.str.29 = private unnamed_addr constant [34 x i8] c"failed to register sensor %d: %d\0A\00", align 1
@px30_tsadc_data = internal constant %struct.rockchip_tsadc_chip { [2 x i32] [i32 0, i32 1], i32 2, i32 95000, i32 0, i32 0, ptr @rk_tsadcv4_initialize, ptr @rk_tsadcv3_irq_ack, ptr @rk_tsadcv3_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rk3328_code_table, i32 35, i32 4095, i32 1 } }, align 4
@rv1108_tsadc_data = internal constant %struct.rockchip_tsadc_chip { [2 x i32] zeroinitializer, i32 1, i32 95000, i32 1, i32 0, ptr @rk_tsadcv2_initialize, ptr @rk_tsadcv3_irq_ack, ptr @rk_tsadcv3_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rv1108_table, i32 36, i32 4095, i32 1 } }, align 4
@rk3228_tsadc_data = internal constant %struct.rockchip_tsadc_chip { [2 x i32] zeroinitializer, i32 1, i32 95000, i32 1, i32 0, ptr @rk_tsadcv2_initialize, ptr @rk_tsadcv3_irq_ack, ptr @rk_tsadcv3_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rk3228_code_table, i32 36, i32 1023, i32 1 } }, align 4
@rk3288_tsadc_data = internal constant %struct.rockchip_tsadc_chip { [2 x i32] [i32 1, i32 2], i32 2, i32 95000, i32 1, i32 0, ptr @rk_tsadcv2_initialize, ptr @rk_tsadcv2_irq_ack, ptr @rk_tsadcv2_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rk3288_code_table, i32 36, i32 4095, i32 0 } }, align 4
@rk3328_tsadc_data = internal constant %struct.rockchip_tsadc_chip { [2 x i32] zeroinitializer, i32 1, i32 95000, i32 0, i32 0, ptr @rk_tsadcv2_initialize, ptr @rk_tsadcv3_irq_ack, ptr @rk_tsadcv3_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rk3328_code_table, i32 35, i32 4095, i32 1 } }, align 4
@rk3366_tsadc_data = internal constant %struct.rockchip_tsadc_chip { [2 x i32] [i32 0, i32 1], i32 2, i32 95000, i32 1, i32 0, ptr @rk_tsadcv3_initialize, ptr @rk_tsadcv3_irq_ack, ptr @rk_tsadcv3_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rk3228_code_table, i32 36, i32 1023, i32 1 } }, align 4
@rk3368_tsadc_data = internal constant %struct.rockchip_tsadc_chip { [2 x i32] [i32 0, i32 1], i32 2, i32 95000, i32 1, i32 0, ptr @rk_tsadcv2_initialize, ptr @rk_tsadcv2_irq_ack, ptr @rk_tsadcv2_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rk3368_code_table, i32 36, i32 1023, i32 1 } }, align 4
@rk3399_tsadc_data = internal constant %struct.rockchip_tsadc_chip { [2 x i32] [i32 0, i32 1], i32 2, i32 95000, i32 1, i32 0, ptr @rk_tsadcv3_initialize, ptr @rk_tsadcv3_irq_ack, ptr @rk_tsadcv3_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rk3399_code_table, i32 36, i32 1023, i32 1 } }, align 4
@rk3568_tsadc_data = internal constant %struct.rockchip_tsadc_chip { [2 x i32] [i32 0, i32 1], i32 2, i32 95000, i32 1, i32 0, ptr @rk_tsadcv7_initialize, ptr @rk_tsadcv3_irq_ack, ptr @rk_tsadcv3_control, ptr @rk_tsadcv2_get_temp, ptr @rk_tsadcv2_alarm_temp, ptr @rk_tsadcv2_tshut_temp, ptr @rk_tsadcv2_tshut_mode, %struct.chip_tsadc_table { ptr @rk3568_code_table, i32 36, i32 4095, i32 1 } }, align 4
@rk3328_code_table = internal constant [35 x %struct.tsadc_table] [%struct.tsadc_table { i32 0, i32 -40000 }, %struct.tsadc_table { i32 296, i32 -40000 }, %struct.tsadc_table { i32 304, i32 -35000 }, %struct.tsadc_table { i32 313, i32 -30000 }, %struct.tsadc_table { i32 331, i32 -20000 }, %struct.tsadc_table { i32 340, i32 -15000 }, %struct.tsadc_table { i32 349, i32 -10000 }, %struct.tsadc_table { i32 359, i32 -5000 }, %struct.tsadc_table { i32 368, i32 0 }, %struct.tsadc_table { i32 378, i32 5000 }, %struct.tsadc_table { i32 388, i32 10000 }, %struct.tsadc_table { i32 398, i32 15000 }, %struct.tsadc_table { i32 408, i32 20000 }, %struct.tsadc_table { i32 418, i32 25000 }, %struct.tsadc_table { i32 429, i32 30000 }, %struct.tsadc_table { i32 440, i32 35000 }, %struct.tsadc_table { i32 451, i32 40000 }, %struct.tsadc_table { i32 462, i32 45000 }, %struct.tsadc_table { i32 473, i32 50000 }, %struct.tsadc_table { i32 485, i32 55000 }, %struct.tsadc_table { i32 496, i32 60000 }, %struct.tsadc_table { i32 508, i32 65000 }, %struct.tsadc_table { i32 521, i32 70000 }, %struct.tsadc_table { i32 533, i32 75000 }, %struct.tsadc_table { i32 546, i32 80000 }, %struct.tsadc_table { i32 559, i32 85000 }, %struct.tsadc_table { i32 572, i32 90000 }, %struct.tsadc_table { i32 586, i32 95000 }, %struct.tsadc_table { i32 600, i32 100000 }, %struct.tsadc_table { i32 614, i32 105000 }, %struct.tsadc_table { i32 629, i32 110000 }, %struct.tsadc_table { i32 644, i32 115000 }, %struct.tsadc_table { i32 659, i32 120000 }, %struct.tsadc_table { i32 675, i32 125000 }, %struct.tsadc_table { i32 4095, i32 125000 }], align 4
@.str.30 = private unnamed_addr constant [35 x i8] c"drivers/thermal/rockchip_thermal.c\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"\013%s: unknown table mode: %d\0A\00", align 1
@__func__.rk_tsadcv2_code_to_temp = private unnamed_addr constant [24 x i8] c"rk_tsadcv2_code_to_temp\00", align 1
@__func__.rk_tsadcv2_temp_to_code = private unnamed_addr constant [24 x i8] c"rk_tsadcv2_temp_to_code\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"\013%s: invalid temperature, temp=%d error=%d\0A\00", align 1
@rv1108_table = internal constant [36 x %struct.tsadc_table] [%struct.tsadc_table { i32 0, i32 -40000 }, %struct.tsadc_table { i32 374, i32 -40000 }, %struct.tsadc_table { i32 382, i32 -35000 }, %struct.tsadc_table { i32 389, i32 -30000 }, %struct.tsadc_table { i32 397, i32 -25000 }, %struct.tsadc_table { i32 405, i32 -20000 }, %struct.tsadc_table { i32 413, i32 -15000 }, %struct.tsadc_table { i32 421, i32 -10000 }, %struct.tsadc_table { i32 429, i32 -5000 }, %struct.tsadc_table { i32 436, i32 0 }, %struct.tsadc_table { i32 444, i32 5000 }, %struct.tsadc_table { i32 452, i32 10000 }, %struct.tsadc_table { i32 460, i32 15000 }, %struct.tsadc_table { i32 468, i32 20000 }, %struct.tsadc_table { i32 476, i32 25000 }, %struct.tsadc_table { i32 483, i32 30000 }, %struct.tsadc_table { i32 491, i32 35000 }, %struct.tsadc_table { i32 499, i32 40000 }, %struct.tsadc_table { i32 507, i32 45000 }, %struct.tsadc_table { i32 515, i32 50000 }, %struct.tsadc_table { i32 523, i32 55000 }, %struct.tsadc_table { i32 531, i32 60000 }, %struct.tsadc_table { i32 539, i32 65000 }, %struct.tsadc_table { i32 547, i32 70000 }, %struct.tsadc_table { i32 555, i32 75000 }, %struct.tsadc_table { i32 562, i32 80000 }, %struct.tsadc_table { i32 570, i32 85000 }, %struct.tsadc_table { i32 578, i32 90000 }, %struct.tsadc_table { i32 586, i32 95000 }, %struct.tsadc_table { i32 594, i32 100000 }, %struct.tsadc_table { i32 602, i32 105000 }, %struct.tsadc_table { i32 610, i32 110000 }, %struct.tsadc_table { i32 618, i32 115000 }, %struct.tsadc_table { i32 626, i32 120000 }, %struct.tsadc_table { i32 634, i32 125000 }, %struct.tsadc_table { i32 4095, i32 125000 }], align 4
@rk3228_code_table = internal constant [36 x %struct.tsadc_table] [%struct.tsadc_table { i32 0, i32 -40000 }, %struct.tsadc_table { i32 588, i32 -40000 }, %struct.tsadc_table { i32 593, i32 -35000 }, %struct.tsadc_table { i32 598, i32 -30000 }, %struct.tsadc_table { i32 603, i32 -25000 }, %struct.tsadc_table { i32 608, i32 -20000 }, %struct.tsadc_table { i32 613, i32 -15000 }, %struct.tsadc_table { i32 618, i32 -10000 }, %struct.tsadc_table { i32 623, i32 -5000 }, %struct.tsadc_table { i32 629, i32 0 }, %struct.tsadc_table { i32 634, i32 5000 }, %struct.tsadc_table { i32 639, i32 10000 }, %struct.tsadc_table { i32 644, i32 15000 }, %struct.tsadc_table { i32 649, i32 20000 }, %struct.tsadc_table { i32 654, i32 25000 }, %struct.tsadc_table { i32 660, i32 30000 }, %struct.tsadc_table { i32 665, i32 35000 }, %struct.tsadc_table { i32 670, i32 40000 }, %struct.tsadc_table { i32 675, i32 45000 }, %struct.tsadc_table { i32 681, i32 50000 }, %struct.tsadc_table { i32 686, i32 55000 }, %struct.tsadc_table { i32 691, i32 60000 }, %struct.tsadc_table { i32 696, i32 65000 }, %struct.tsadc_table { i32 702, i32 70000 }, %struct.tsadc_table { i32 707, i32 75000 }, %struct.tsadc_table { i32 712, i32 80000 }, %struct.tsadc_table { i32 717, i32 85000 }, %struct.tsadc_table { i32 723, i32 90000 }, %struct.tsadc_table { i32 728, i32 95000 }, %struct.tsadc_table { i32 733, i32 100000 }, %struct.tsadc_table { i32 738, i32 105000 }, %struct.tsadc_table { i32 744, i32 110000 }, %struct.tsadc_table { i32 749, i32 115000 }, %struct.tsadc_table { i32 754, i32 120000 }, %struct.tsadc_table { i32 760, i32 125000 }, %struct.tsadc_table { i32 4095, i32 125000 }], align 4
@rk3288_code_table = internal constant [36 x %struct.tsadc_table] [%struct.tsadc_table { i32 4095, i32 -40000 }, %struct.tsadc_table { i32 3800, i32 -40000 }, %struct.tsadc_table { i32 3792, i32 -35000 }, %struct.tsadc_table { i32 3783, i32 -30000 }, %struct.tsadc_table { i32 3774, i32 -25000 }, %struct.tsadc_table { i32 3765, i32 -20000 }, %struct.tsadc_table { i32 3756, i32 -15000 }, %struct.tsadc_table { i32 3747, i32 -10000 }, %struct.tsadc_table { i32 3737, i32 -5000 }, %struct.tsadc_table { i32 3728, i32 0 }, %struct.tsadc_table { i32 3718, i32 5000 }, %struct.tsadc_table { i32 3708, i32 10000 }, %struct.tsadc_table { i32 3698, i32 15000 }, %struct.tsadc_table { i32 3688, i32 20000 }, %struct.tsadc_table { i32 3678, i32 25000 }, %struct.tsadc_table { i32 3667, i32 30000 }, %struct.tsadc_table { i32 3656, i32 35000 }, %struct.tsadc_table { i32 3645, i32 40000 }, %struct.tsadc_table { i32 3634, i32 45000 }, %struct.tsadc_table { i32 3623, i32 50000 }, %struct.tsadc_table { i32 3611, i32 55000 }, %struct.tsadc_table { i32 3600, i32 60000 }, %struct.tsadc_table { i32 3588, i32 65000 }, %struct.tsadc_table { i32 3575, i32 70000 }, %struct.tsadc_table { i32 3563, i32 75000 }, %struct.tsadc_table { i32 3550, i32 80000 }, %struct.tsadc_table { i32 3537, i32 85000 }, %struct.tsadc_table { i32 3524, i32 90000 }, %struct.tsadc_table { i32 3510, i32 95000 }, %struct.tsadc_table { i32 3496, i32 100000 }, %struct.tsadc_table { i32 3482, i32 105000 }, %struct.tsadc_table { i32 3467, i32 110000 }, %struct.tsadc_table { i32 3452, i32 115000 }, %struct.tsadc_table { i32 3437, i32 120000 }, %struct.tsadc_table { i32 3421, i32 125000 }, %struct.tsadc_table { i32 0, i32 125000 }], align 4
@rk3368_code_table = internal constant [36 x %struct.tsadc_table] [%struct.tsadc_table { i32 0, i32 -40000 }, %struct.tsadc_table { i32 106, i32 -40000 }, %struct.tsadc_table { i32 108, i32 -35000 }, %struct.tsadc_table { i32 110, i32 -30000 }, %struct.tsadc_table { i32 112, i32 -25000 }, %struct.tsadc_table { i32 114, i32 -20000 }, %struct.tsadc_table { i32 116, i32 -15000 }, %struct.tsadc_table { i32 118, i32 -10000 }, %struct.tsadc_table { i32 120, i32 -5000 }, %struct.tsadc_table { i32 122, i32 0 }, %struct.tsadc_table { i32 124, i32 5000 }, %struct.tsadc_table { i32 126, i32 10000 }, %struct.tsadc_table { i32 128, i32 15000 }, %struct.tsadc_table { i32 130, i32 20000 }, %struct.tsadc_table { i32 132, i32 25000 }, %struct.tsadc_table { i32 134, i32 30000 }, %struct.tsadc_table { i32 136, i32 35000 }, %struct.tsadc_table { i32 138, i32 40000 }, %struct.tsadc_table { i32 140, i32 45000 }, %struct.tsadc_table { i32 142, i32 50000 }, %struct.tsadc_table { i32 144, i32 55000 }, %struct.tsadc_table { i32 146, i32 60000 }, %struct.tsadc_table { i32 148, i32 65000 }, %struct.tsadc_table { i32 150, i32 70000 }, %struct.tsadc_table { i32 152, i32 75000 }, %struct.tsadc_table { i32 154, i32 80000 }, %struct.tsadc_table { i32 156, i32 85000 }, %struct.tsadc_table { i32 158, i32 90000 }, %struct.tsadc_table { i32 160, i32 95000 }, %struct.tsadc_table { i32 162, i32 100000 }, %struct.tsadc_table { i32 163, i32 105000 }, %struct.tsadc_table { i32 165, i32 110000 }, %struct.tsadc_table { i32 167, i32 115000 }, %struct.tsadc_table { i32 169, i32 120000 }, %struct.tsadc_table { i32 171, i32 125000 }, %struct.tsadc_table { i32 1023, i32 125000 }], align 4
@rk3399_code_table = internal constant [36 x %struct.tsadc_table] [%struct.tsadc_table { i32 0, i32 -40000 }, %struct.tsadc_table { i32 402, i32 -40000 }, %struct.tsadc_table { i32 410, i32 -35000 }, %struct.tsadc_table { i32 419, i32 -30000 }, %struct.tsadc_table { i32 427, i32 -25000 }, %struct.tsadc_table { i32 436, i32 -20000 }, %struct.tsadc_table { i32 444, i32 -15000 }, %struct.tsadc_table { i32 453, i32 -10000 }, %struct.tsadc_table { i32 461, i32 -5000 }, %struct.tsadc_table { i32 470, i32 0 }, %struct.tsadc_table { i32 478, i32 5000 }, %struct.tsadc_table { i32 487, i32 10000 }, %struct.tsadc_table { i32 496, i32 15000 }, %struct.tsadc_table { i32 504, i32 20000 }, %struct.tsadc_table { i32 513, i32 25000 }, %struct.tsadc_table { i32 521, i32 30000 }, %struct.tsadc_table { i32 530, i32 35000 }, %struct.tsadc_table { i32 538, i32 40000 }, %struct.tsadc_table { i32 547, i32 45000 }, %struct.tsadc_table { i32 555, i32 50000 }, %struct.tsadc_table { i32 564, i32 55000 }, %struct.tsadc_table { i32 573, i32 60000 }, %struct.tsadc_table { i32 581, i32 65000 }, %struct.tsadc_table { i32 590, i32 70000 }, %struct.tsadc_table { i32 599, i32 75000 }, %struct.tsadc_table { i32 607, i32 80000 }, %struct.tsadc_table { i32 616, i32 85000 }, %struct.tsadc_table { i32 624, i32 90000 }, %struct.tsadc_table { i32 633, i32 95000 }, %struct.tsadc_table { i32 642, i32 100000 }, %struct.tsadc_table { i32 650, i32 105000 }, %struct.tsadc_table { i32 659, i32 110000 }, %struct.tsadc_table { i32 668, i32 115000 }, %struct.tsadc_table { i32 677, i32 120000 }, %struct.tsadc_table { i32 685, i32 125000 }, %struct.tsadc_table { i32 1023, i32 125000 }], align 4
@rk3568_code_table = internal constant [36 x %struct.tsadc_table] [%struct.tsadc_table { i32 0, i32 -40000 }, %struct.tsadc_table { i32 1584, i32 -40000 }, %struct.tsadc_table { i32 1620, i32 -35000 }, %struct.tsadc_table { i32 1652, i32 -30000 }, %struct.tsadc_table { i32 1688, i32 -25000 }, %struct.tsadc_table { i32 1720, i32 -20000 }, %struct.tsadc_table { i32 1756, i32 -15000 }, %struct.tsadc_table { i32 1788, i32 -10000 }, %struct.tsadc_table { i32 1824, i32 -5000 }, %struct.tsadc_table { i32 1856, i32 0 }, %struct.tsadc_table { i32 1892, i32 5000 }, %struct.tsadc_table { i32 1924, i32 10000 }, %struct.tsadc_table { i32 1956, i32 15000 }, %struct.tsadc_table { i32 1992, i32 20000 }, %struct.tsadc_table { i32 2024, i32 25000 }, %struct.tsadc_table { i32 2060, i32 30000 }, %struct.tsadc_table { i32 2092, i32 35000 }, %struct.tsadc_table { i32 2128, i32 40000 }, %struct.tsadc_table { i32 2160, i32 45000 }, %struct.tsadc_table { i32 2196, i32 50000 }, %struct.tsadc_table { i32 2228, i32 55000 }, %struct.tsadc_table { i32 2264, i32 60000 }, %struct.tsadc_table { i32 2300, i32 65000 }, %struct.tsadc_table { i32 2332, i32 70000 }, %struct.tsadc_table { i32 2368, i32 75000 }, %struct.tsadc_table { i32 2400, i32 80000 }, %struct.tsadc_table { i32 2436, i32 85000 }, %struct.tsadc_table { i32 2468, i32 90000 }, %struct.tsadc_table { i32 2500, i32 95000 }, %struct.tsadc_table { i32 2536, i32 100000 }, %struct.tsadc_table { i32 2572, i32 105000 }, %struct.tsadc_table { i32 2604, i32 110000 }, %struct.tsadc_table { i32 2636, i32 115000 }, %struct.tsadc_table { i32 2672, i32 120000 }, %struct.tsadc_table { i32 2704, i32 125000 }, %struct.tsadc_table { i32 4095, i32 125000 }], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__.rockchip_thermal_resume = private unnamed_addr constant [24 x i8] c"rockchip_thermal_resume\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias215, ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_rockchip_thermal_driver_exit, ptr @__initcall__kmod_rockchip_thermal__210_1575_rockchip_thermal_driver_init6, ptr @rockchip_thermal_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rockchip_thermal_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_thermal_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rockchip_thermal_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_thermal_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_thermal_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @of_match_node(ptr noundef nonnull @of_rockchip_thermal_match, ptr noundef %7) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %210, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %210, label %13

13:                                               ; preds = %10
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 64, i32 noundef 3520) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %210, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %14, i32 0, i32 1
  store ptr %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.of_device_id, ptr %8, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  store ptr %19, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %210, label %21

21:                                               ; preds = %16
  %22 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %23 = tail call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef %22) #6
  %24 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %14, i32 0, i32 7
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = ptrtoint ptr %23 to i32
  br label %210

28:                                               ; preds = %21
  %29 = tail call ptr @devm_reset_control_array_get(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %30 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %14, i32 0, i32 2
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = ptrtoint ptr %29 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef %33) #7
  br label %210

34:                                               ; preds = %28
  %35 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.2) #6
  %36 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %14, i32 0, i32 4
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = ptrtoint ptr %35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %39) #7
  br label %210

40:                                               ; preds = %34
  %41 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.4) #6
  %42 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %14, i32 0, i32 5
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = ptrtoint ptr %41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %45) #7
  br label %210

46:                                               ; preds = %40
  %47 = load ptr, ptr %36, align 4
  %48 = tail call i32 @clk_prepare(ptr noundef %47) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = tail call i32 @clk_enable(ptr noundef %47) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  tail call void @clk_unprepare(ptr noundef %47) #6
  br label %54

54:                                               ; preds = %53, %46
  %55 = phi i32 [ %51, %53 ], [ %48, %46 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %55) #7
  br label %210

56:                                               ; preds = %50
  %57 = load ptr, ptr %42, align 4
  %58 = tail call i32 @clk_prepare(ptr noundef %57) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = tail call i32 @clk_enable(ptr noundef %57) #6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  tail call void @clk_unprepare(ptr noundef %57) #6
  br label %64

64:                                               ; preds = %63, %56
  %65 = phi i32 [ %61, %63 ], [ %58, %56 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %65) #7
  br label %207

66:                                               ; preds = %60
  %67 = load ptr, ptr %30, align 4
  %68 = tail call i32 @reset_control_assert(ptr noundef %67) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %69 = tail call i32 @reset_control_deassert(ptr noundef %67) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %70 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.13, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %79, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr %14, align 4
  %74 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef %75) #7
  %76 = load ptr, ptr %14, align 4
  %77 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %76, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  br label %83

79:                                               ; preds = %66
  %80 = load i32, ptr %2, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef %80) #7
  br label %125

83:                                               ; preds = %79, %72
  %84 = phi i32 [ %78, %72 ], [ %80, %79 ]
  %85 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %14, i32 0, i32 8
  store i32 %84, ptr %85, align 4
  %86 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.16, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr %14, align 4
  %90 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %89, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 1
  %93 = select i1 %92, ptr @.str.18, ptr @.str.19
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef nonnull %93) #7
  %94 = load ptr, ptr %14, align 4
  %95 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %94, i32 0, i32 3
  br label %96

96:                                               ; preds = %88, %83
  %97 = phi ptr [ %95, %88 ], [ %3, %83 ]
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %14, i32 0, i32 9
  store i32 %98, ptr %99, align 4
  %100 = icmp ugt i32 %98, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %98) #7
  br label %125

102:                                              ; preds = %96
  %103 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.21, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #6
  %104 = icmp sgt i32 %103, -1
  br i1 %104, label %113, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %14, align 4
  %107 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %106, i32 0, i32 4
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, ptr @.str.23, ptr @.str.24
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.22, ptr noundef nonnull %110) #7
  %111 = load ptr, ptr %14, align 4
  %112 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %111, i32 0, i32 4
  br label %113

113:                                              ; preds = %105, %102
  %114 = phi ptr [ %112, %105 ], [ %4, %102 ]
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %14, i32 0, i32 10
  store i32 %115, ptr %116, align 4
  %117 = icmp ugt i32 %115, 1
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef %115) #7
  br label %125

119:                                              ; preds = %113
  %120 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %7, ptr noundef nonnull @.str.26) #6
  %121 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %14, i32 0, i32 6
  store ptr %120, ptr %121, align 4
  %122 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.27) #7
  %124 = load ptr, ptr %121, align 4
  br label %127

125:                                              ; preds = %118, %101, %82
  %126 = phi i32 [ -34, %82 ], [ -22, %118 ], [ -22, %101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %126) #7
  br label %204

127:                                              ; preds = %123, %119
  %128 = phi ptr [ %124, %123 ], [ %120, %119 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %129 = load ptr, ptr %14, align 4
  %130 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %129, i32 0, i32 5
  %131 = load ptr, ptr %130, align 4
  %132 = load ptr, ptr %24, align 4
  %133 = load i32, ptr %116, align 4
  call void %131(ptr noundef %128, ptr noundef %132, i32 noundef %133) #6
  %134 = load ptr, ptr %14, align 4
  %135 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %134, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %170

138:                                              ; preds = %164, %127
  %139 = phi ptr [ %166, %164 ], [ %134, %127 ]
  %140 = phi i32 [ %165, %164 ], [ 0, %127 ]
  %141 = getelementptr %struct.rockchip_thermal_data, ptr %14, i32 0, i32 3, i32 %140
  %142 = getelementptr [2 x i32], ptr %139, i32 0, i32 %140
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %139, i32 0, i32 11
  %145 = load ptr, ptr %144, align 4
  %146 = load ptr, ptr %24, align 4
  %147 = load i32, ptr %99, align 4
  call void %145(i32 noundef %143, ptr noundef %146, i32 noundef %147) #6
  %148 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %139, i32 0, i32 10
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %139, i32 0, i32 12
  %151 = load ptr, ptr %24, align 4
  %152 = load i32, ptr %85, align 4
  %153 = call i32 %149(ptr noundef %150, i32 noundef %143, ptr noundef %151, i32 noundef %152) #6
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %138
  %156 = load i32, ptr %85, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.rockchip_thermal_register_sensor, i32 noundef %156, i32 noundef %153) #7
  br label %157

157:                                              ; preds = %155, %138
  store ptr %14, ptr %141, align 4
  %158 = getelementptr %struct.rockchip_thermal_data, ptr %14, i32 0, i32 3, i32 %140, i32 2
  store i32 %143, ptr %158, align 4
  %159 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %5, i32 noundef %143, ptr noundef %141, ptr noundef nonnull @rockchip_of_thermal_ops) #6
  %160 = getelementptr %struct.rockchip_thermal_data, ptr %14, i32 0, i32 3, i32 %140, i32 1
  store ptr %159, ptr %160, align 4
  %161 = icmp ugt ptr %159, inttoptr (i32 -4096 to ptr)
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = ptrtoint ptr %159 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.29, i32 noundef %143, i32 noundef %163) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %140, i32 noundef %163) #7
  br label %204

164:                                              ; preds = %157
  %165 = add nuw nsw i32 %140, 1
  %166 = load ptr, ptr %14, align 4
  %167 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %166, i32 0, i32 1
  %168 = load i32, ptr %167, align 4
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %138, label %170

170:                                              ; preds = %164, %127
  %171 = call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %11, ptr noundef null, ptr noundef nonnull @rockchip_thermal_alarm_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.10, ptr noundef nonnull %14) #6
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %170
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef %171) #7
  br label %204

174:                                              ; preds = %170
  %175 = load ptr, ptr %14, align 4
  %176 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %175, i32 0, i32 7
  %177 = load ptr, ptr %176, align 4
  %178 = load ptr, ptr %24, align 4
  call void %177(ptr noundef %178, i1 noundef zeroext true) #6
  %179 = load ptr, ptr %14, align 4
  %180 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %179, i32 0, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %202

183:                                              ; preds = %196, %174
  %184 = phi i32 [ %197, %196 ], [ 0, %174 ]
  %185 = getelementptr %struct.rockchip_thermal_data, ptr %14, i32 0, i32 3, i32 %184, i32 1
  %186 = load ptr, ptr %185, align 4
  %187 = call i32 @thermal_zone_device_enable(ptr noundef %186) #6
  %188 = load ptr, ptr %185, align 4
  %189 = getelementptr inbounds %struct.thermal_zone_device, ptr %188, i32 0, i32 21
  %190 = load ptr, ptr %189, align 8
  %191 = getelementptr inbounds %struct.thermal_zone_params, ptr %190, i32 0, i32 1
  store i8 0, ptr %191, align 4
  %192 = load ptr, ptr %185, align 4
  %193 = call i32 @thermal_add_hwmon_sysfs(ptr noundef %192) #6
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %183
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %184, i32 noundef %193) #7
  br label %196

196:                                              ; preds = %195, %183
  %197 = add nuw nsw i32 %184, 1
  %198 = load ptr, ptr %14, align 4
  %199 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %198, i32 0, i32 1
  %200 = load i32, ptr %199, align 4
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %183, label %202

202:                                              ; preds = %196, %174
  %203 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %203, align 8
  br label %210

204:                                              ; preds = %173, %162, %125
  %205 = phi i32 [ %126, %125 ], [ %163, %162 ], [ %171, %173 ]
  %206 = load ptr, ptr %42, align 4
  call void @clk_disable(ptr noundef %206) #6
  call void @clk_unprepare(ptr noundef %206) #6
  br label %207

207:                                              ; preds = %204, %64
  %208 = phi i32 [ %65, %64 ], [ %205, %204 ]
  %209 = load ptr, ptr %36, align 4
  call void @clk_disable(ptr noundef %209) #6
  call void @clk_unprepare(ptr noundef %209) #6
  br label %210

210:                                              ; preds = %207, %202, %54, %44, %38, %32, %26, %16, %13, %10, %1
  %211 = phi i32 [ %27, %26 ], [ %33, %32 ], [ %39, %38 ], [ %45, %44 ], [ %55, %54 ], [ %208, %207 ], [ 0, %202 ], [ -6, %1 ], [ -22, %10 ], [ -12, %13 ], [ -22, %16 ]
  ret i32 %211
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_thermal_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %8, %1
  %9 = phi i32 [ %14, %8 ], [ 0, %1 ]
  %10 = getelementptr %struct.rockchip_thermal_data, ptr %3, i32 0, i32 3, i32 %9, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @thermal_remove_hwmon_sysfs(ptr noundef %11) #6
  %12 = load ptr, ptr %10, align 4
  %13 = tail call i32 @thermal_zone_device_disable(ptr noundef %12) #6
  %14 = add nuw nsw i32 %9, 1
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %8, label %19

19:                                               ; preds = %8, %1
  %20 = phi ptr [ %4, %1 ], [ %15, %8 ]
  %21 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %20, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %3, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  tail call void %22(ptr noundef %24, i1 noundef zeroext false) #6
  %25 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %3, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %26) #6
  tail call void @clk_unprepare(ptr noundef %26) #6
  %27 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %3, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  tail call void @clk_disable(ptr noundef %28) #6
  tail call void @clk_unprepare(ptr noundef %28) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_thermal_alarm_irq_thread(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %1, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  tail call void %5(ptr noundef %7) #6
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %12, %2
  %13 = phi i32 [ %16, %12 ], [ 0, %2 ]
  %14 = getelementptr %struct.rockchip_thermal_data, ptr %1, i32 0, i32 3, i32 %13, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @thermal_zone_device_update(ptr noundef %15, i32 noundef 0) #6
  %16 = add nuw nsw i32 %13, 1
  %17 = load ptr, ptr %1, align 4
  %18 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %12, label %21

21:                                               ; preds = %12, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_thermal_get_temp(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %4, i32 0, i32 12
  %8 = getelementptr inbounds %struct.rockchip_thermal_sensor, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %3, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %6(ptr noundef %7, i32 noundef %9, ptr noundef %11, ptr noundef %1) #6
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_thermal_set_trips(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %5, i32 0, i32 12
  %9 = getelementptr inbounds %struct.rockchip_thermal_sensor, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %4, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %7(ptr noundef %8, i32 noundef %10, ptr noundef %12, i32 noundef %2) #6
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_remove_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_tsadcv4_initialize(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 1
  %5 = getelementptr i8, ptr %1, i32 4
  br i1 %4, label %6, label %7

6:                                                ; preds = %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 256) #6, !srcloc !9
  br label %8

7:                                                ; preds = %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #6, !srcloc !9
  br label %8

8:                                                ; preds = %7, %6
  %9 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 250) #6, !srcloc !9
  %10 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 4) #6, !srcloc !9
  %11 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 50) #6, !srcloc !9
  %12 = getelementptr i8, ptr %1, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 4) #6, !srcloc !9
  %13 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 1032, i32 noundef 131074) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_tsadcv3_irq_ack(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !10
  %4 = and i32 %3, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %4) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_tsadcv3_control(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !10
  %5 = or i32 %4, 3
  %6 = and i32 %4, -2
  %7 = select i1 %1, i32 %5, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %7) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_tsadcv2_get_temp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = shl i32 %1, 2
  %6 = add i32 %5, 32
  %7 = getelementptr i8, ptr %2, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !10
  %9 = getelementptr inbounds %struct.chip_tsadc_table, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = lshr i32 %10, 1
  %13 = icmp ult i32 %10, 2
  br i1 %13, label %14, label %15, !prof !11

14:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 587, i32 noundef 9, ptr noundef null) #6
  br label %15

15:                                               ; preds = %14, %4
  %16 = getelementptr inbounds %struct.chip_tsadc_table, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %76 [
    i32 0, label %18
    i32 1, label %47
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.chip_tsadc_table, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, %8
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr %struct.tsadc_table, ptr %22, i32 %11
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %21, %24
  br i1 %25, label %26, label %99

26:                                               ; preds = %18
  %27 = icmp eq i32 %11, 0
  br i1 %27, label %78, label %28

28:                                               ; preds = %40, %26
  %29 = phi i32 [ %43, %40 ], [ 1, %26 ]
  %30 = phi i32 [ %41, %40 ], [ %11, %26 ]
  %31 = phi i32 [ %45, %40 ], [ %12, %26 ]
  %32 = getelementptr %struct.tsadc_table, ptr %22, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %21, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = add nsw i32 %31, -1
  %37 = getelementptr %struct.tsadc_table, ptr %22, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %21, %38
  br i1 %39, label %78, label %40

40:                                               ; preds = %35, %28
  %41 = phi i32 [ %36, %35 ], [ %30, %28 ]
  %42 = add nuw i32 %31, 1
  %43 = select i1 %34, i32 %42, i32 %29
  %44 = add i32 %41, %43
  %45 = lshr i32 %44, 1
  %46 = icmp ugt i32 %43, %41
  br i1 %46, label %78, label %28

47:                                               ; preds = %15
  %48 = getelementptr inbounds %struct.chip_tsadc_table, ptr %0, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, %8
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr %struct.tsadc_table, ptr %51, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %99, label %55

55:                                               ; preds = %47
  %56 = icmp eq i32 %11, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %69, %55
  %58 = phi i32 [ %72, %69 ], [ 1, %55 ]
  %59 = phi i32 [ %70, %69 ], [ %11, %55 ]
  %60 = phi i32 [ %74, %69 ], [ %12, %55 ]
  %61 = getelementptr %struct.tsadc_table, ptr %51, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = icmp ugt i32 %50, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = add nsw i32 %60, -1
  %66 = getelementptr %struct.tsadc_table, ptr %51, i32 %65
  %67 = load i32, ptr %66, align 4
  %68 = icmp ugt i32 %50, %67
  br i1 %68, label %78, label %69

69:                                               ; preds = %64, %57
  %70 = phi i32 [ %65, %64 ], [ %59, %57 ]
  %71 = add nuw i32 %60, 1
  %72 = select i1 %63, i32 %71, i32 %58
  %73 = add i32 %70, %72
  %74 = lshr i32 %73, 1
  %75 = icmp ugt i32 %72, %70
  br i1 %75, label %78, label %57

76:                                               ; preds = %15
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.rk_tsadcv2_code_to_temp, i32 noundef %17) #7
  br label %99

78:                                               ; preds = %69, %64, %55, %40, %35, %26
  %79 = phi ptr [ %22, %26 ], [ %51, %55 ], [ %22, %35 ], [ %22, %40 ], [ %51, %64 ], [ %51, %69 ]
  %80 = phi i32 [ 0, %26 ], [ 0, %55 ], [ %45, %40 ], [ %31, %35 ], [ %74, %69 ], [ %60, %64 ]
  %81 = phi i32 [ %21, %26 ], [ %50, %55 ], [ %21, %35 ], [ %21, %40 ], [ %50, %64 ], [ %50, %69 ]
  %82 = getelementptr %struct.tsadc_table, ptr %79, i32 %80
  %83 = getelementptr %struct.tsadc_table, ptr %79, i32 %80, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %80, -1
  %86 = getelementptr %struct.tsadc_table, ptr %79, i32 %85
  %87 = getelementptr %struct.tsadc_table, ptr %79, i32 %85, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = sub i32 %84, %88
  %90 = load i32, ptr %86, align 4
  %91 = sub i32 %90, %81
  %92 = tail call i32 @llvm.abs.i32(i32 %91, i1 false) #6
  %93 = mul i32 %92, %89
  %94 = load i32, ptr %82, align 4
  %95 = sub i32 %90, %94
  %96 = tail call i32 @llvm.abs.i32(i32 %95, i1 false) #6
  %97 = udiv i32 %93, %96
  %98 = add i32 %97, %88
  store i32 %98, ptr %3, align 4
  br label %99

99:                                               ; preds = %78, %76, %47, %18
  %100 = phi i32 [ -22, %76 ], [ 0, %78 ], [ -11, %18 ], [ -11, %47 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_tsadcv2_alarm_temp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = icmp eq i32 %3, 2147483647
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = getelementptr i8, ptr %2, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !10
  %9 = shl nuw i32 1, %1
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %11) #6, !srcloc !9
  br label %26

12:                                               ; preds = %4
  %13 = tail call fastcc i32 @rk_tsadcv2_temp_to_code(ptr noundef %0, i32 noundef %3)
  %14 = getelementptr inbounds %struct.chip_tsadc_table, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = and i32 %15, %13
  %19 = shl i32 %1, 2
  %20 = add i32 %19, 48
  %21 = getelementptr i8, ptr %2, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #6, !srcloc !9
  %22 = getelementptr i8, ptr %2, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !10
  %24 = shl nuw i32 1, %1
  %25 = or i32 %23, %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %25) #6, !srcloc !9
  br label %26

26:                                               ; preds = %17, %12, %6
  %27 = phi i32 [ 0, %6 ], [ 0, %17 ], [ -34, %12 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_tsadcv2_tshut_temp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = tail call fastcc i32 @rk_tsadcv2_temp_to_code(ptr noundef %0, i32 noundef %3)
  %6 = getelementptr inbounds %struct.chip_tsadc_table, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = shl i32 %1, 2
  %11 = add i32 %10, 64
  %12 = getelementptr i8, ptr %2, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %5) #6, !srcloc !9
  %13 = getelementptr i8, ptr %2, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !10
  %15 = add i32 %1, 4
  %16 = shl nuw i32 1, %15
  %17 = or i32 %14, %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %17) #6, !srcloc !9
  br label %18

18:                                               ; preds = %9, %4
  %19 = phi i32 [ 0, %9 ], [ -34, %4 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_tsadcv2_tshut_mode(i32 noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr i8, ptr %1, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !10
  %6 = icmp eq i32 %2, 1
  %7 = select i1 %6, i32 8, i32 4
  %8 = select i1 %6, i32 4, i32 8
  %9 = add i32 %7, %0
  %10 = shl nuw i32 1, %9
  %11 = xor i32 %10, -1
  %12 = and i32 %5, %11
  %13 = add i32 %8, %0
  %14 = shl nuw i32 1, %13
  %15 = or i32 %12, %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %15) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_tsadcv2_initialize(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 1
  %5 = getelementptr i8, ptr %1, i32 4
  br i1 %4, label %6, label %7

6:                                                ; preds = %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 256) #6, !srcloc !9
  br label %8

7:                                                ; preds = %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #6, !srcloc !9
  br label %8

8:                                                ; preds = %7, %6
  %9 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 250) #6, !srcloc !9
  %10 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 4) #6, !srcloc !9
  %11 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 50) #6, !srcloc !9
  %12 = getelementptr i8, ptr %1, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 4) #6, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rk_tsadcv2_temp_to_code(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.chip_tsadc_table, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.tsadc_table, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %64, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.chip_tsadc_table, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -2
  %13 = getelementptr %struct.tsadc_table, ptr %5, i32 %12, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %14, %1
  br i1 %15, label %64, label %16

16:                                               ; preds = %9
  %17 = sdiv i32 %12, 2
  %18 = icmp slt i32 %12, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %29, %16
  %20 = phi i32 [ %36, %29 ], [ %17, %16 ]
  %21 = phi i32 [ %34, %29 ], [ %12, %16 ]
  %22 = phi i32 [ %33, %29 ], [ 0, %16 ]
  %23 = getelementptr %struct.tsadc_table, ptr %5, i32 %20, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = getelementptr %struct.tsadc_table, ptr %5, i32 %20
  %28 = load i32, ptr %27, align 4
  br label %66

29:                                               ; preds = %19
  %30 = icmp sgt i32 %24, %1
  %31 = add nsw i32 %20, -1
  %32 = add nsw i32 %20, 1
  %33 = select i1 %30, i32 %22, i32 %32
  %34 = select i1 %30, i32 %31, i32 %21
  %35 = add i32 %33, %34
  %36 = sdiv i32 %35, 2
  %37 = icmp sgt i32 %33, %34
  br i1 %37, label %38, label %19

38:                                               ; preds = %29, %16
  %39 = phi i32 [ %17, %16 ], [ %36, %29 ]
  %40 = add nsw i32 %39, 1
  %41 = getelementptr %struct.tsadc_table, ptr %5, i32 %40
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr %struct.tsadc_table, ptr %5, i32 %39
  %44 = load i32, ptr %43, align 4
  %45 = sub i32 %42, %44
  %46 = tail call i32 @llvm.abs.i32(i32 %45, i1 false)
  %47 = getelementptr %struct.tsadc_table, ptr %5, i32 %39, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = sub i32 %1, %48
  %50 = mul i32 %46, %49
  %51 = getelementptr %struct.tsadc_table, ptr %5, i32 %40, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 %52, %48
  %54 = getelementptr inbounds %struct.chip_tsadc_table, ptr %0, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  switch i32 %55, label %62 [
    i32 0, label %56
    i32 1, label %59
  ]

56:                                               ; preds = %38
  %57 = udiv i32 %50, %53
  %58 = sub i32 %44, %57
  br label %66

59:                                               ; preds = %38
  %60 = udiv i32 %50, %53
  %61 = add i32 %60, %44
  br label %66

62:                                               ; preds = %38
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.rk_tsadcv2_temp_to_code, i32 noundef %55) #7
  br label %66

64:                                               ; preds = %9, %2
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.rk_tsadcv2_temp_to_code, i32 noundef %1, i32 noundef %4) #7
  br label %66

66:                                               ; preds = %64, %62, %59, %56, %26
  %67 = phi i32 [ %4, %64 ], [ %28, %26 ], [ %4, %62 ], [ %61, %59 ], [ %58, %56 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_tsadcv2_irq_ack(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !10
  %4 = and i32 %3, -257
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %4) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_tsadcv2_control(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !10
  %5 = and i32 %4, -2
  %6 = zext i1 %1 to i32
  %7 = or i32 %5, %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %7) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_tsadcv3_initialize(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 832) #6, !srcloc !9
  %6 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 250) #6, !srcloc !9
  %7 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 4) #6, !srcloc !9
  %8 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 50) #6, !srcloc !9
  %9 = getelementptr i8, ptr %1, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 4) #6, !srcloc !9
  br label %19

10:                                               ; preds = %3
  %11 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 58952, i32 noundef 8388736) #6
  %12 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 58956, i32 noundef 8388736) #6
  tail call void @usleep_range_state(i32 noundef 15, i32 noundef 100, i32 noundef 2) #6
  %13 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 58948, i32 noundef 262148) #6
  %14 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 58956, i32 noundef 262148) #6
  tail call void @usleep_range_state(i32 noundef 90, i32 noundef 200, i32 noundef 2) #6
  %15 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1875) #6, !srcloc !9
  %16 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 4) #6, !srcloc !9
  %17 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 1875) #6, !srcloc !9
  %18 = getelementptr i8, ptr %1, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 4) #6, !srcloc !9
  br label %19

19:                                               ; preds = %10, %5
  %20 = icmp eq i32 %2, 1
  %21 = getelementptr i8, ptr %1, i32 4
  br i1 %20, label %22, label %23

22:                                               ; preds = %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 256) #6, !srcloc !9
  br label %24

23:                                               ; preds = %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #6, !srcloc !9
  br label %24

24:                                               ; preds = %23, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_tsadcv7_initialize(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 4032) #6, !srcloc !9
  %4 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1622) #6, !srcloc !9
  %5 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 4) #6, !srcloc !9
  %6 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 1622) #6, !srcloc !9
  %7 = getelementptr i8, ptr %1, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 4) #6, !srcloc !9
  %8 = icmp eq i32 %2, 1
  %9 = getelementptr i8, ptr %1, i32 4
  br i1 %8, label %10, label %11

10:                                               ; preds = %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 256) #6, !srcloc !9
  br label %12

11:                                               ; preds = %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #6, !srcloc !9
  br label %12

12:                                               ; preds = %11, %10
  %13 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %20, label %14

14:                                               ; preds = %12
  %15 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 1536, i32 noundef 16777472) #6
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 3221220) #6
  %17 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 1536, i32 noundef 65537) #6
  %18 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 1536, i32 noundef 131074) #6
  %19 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 1536, i32 noundef 262148) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  br label %20

20:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_thermal_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %8, %1
  %9 = phi i32 [ %13, %8 ], [ 0, %1 ]
  %10 = getelementptr %struct.rockchip_thermal_data, ptr %3, i32 0, i32 3, i32 %9, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @thermal_zone_device_disable(ptr noundef %11) #6
  %13 = add nuw nsw i32 %9, 1
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %8, label %18

18:                                               ; preds = %8, %1
  %19 = phi ptr [ %4, %1 ], [ %14, %8 ]
  %20 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %3, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  tail call void %21(ptr noundef %23, i1 noundef zeroext false) #6
  %24 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %3, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %25) #6
  %26 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %3, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %27) #6
  %28 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_thermal_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %82

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_enable(ptr noundef %10) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  br label %82

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %3, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @reset_control_assert(ptr noundef %17) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %19 = tail call i32 @reset_control_deassert(ptr noundef %17) #6
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %3, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %3, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %3, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  tail call void %22(ptr noundef %24, ptr noundef %26, i32 noundef %28) #6
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %15
  %34 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %3, i32 0, i32 9
  %35 = getelementptr inbounds %struct.rockchip_thermal_data, ptr %3, i32 0, i32 8
  br label %36

36:                                               ; preds = %55, %33
  %37 = phi ptr [ %29, %33 ], [ %57, %55 ]
  %38 = phi i32 [ 0, %33 ], [ %56, %55 ]
  %39 = getelementptr %struct.rockchip_thermal_data, ptr %3, i32 0, i32 3, i32 %38, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %37, i32 0, i32 11
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %25, align 4
  %44 = load i32, ptr %34, align 4
  tail call void %42(i32 noundef %40, ptr noundef %43, i32 noundef %44) #6
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %45, i32 0, i32 10
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %45, i32 0, i32 12
  %49 = load ptr, ptr %25, align 4
  %50 = load i32, ptr %35, align 4
  %51 = tail call i32 %47(ptr noundef %48, i32 noundef %40, ptr noundef %49, i32 noundef %50) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %36
  %54 = load i32, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.rockchip_thermal_resume, i32 noundef %54, i32 noundef %51) #7
  br label %55

55:                                               ; preds = %53, %36
  %56 = add nuw nsw i32 %38, 1
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %36, label %61

61:                                               ; preds = %55, %15
  %62 = phi ptr [ %29, %15 ], [ %57, %55 ]
  %63 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %62, i32 0, i32 7
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %25, align 4
  tail call void %64(ptr noundef %65, i1 noundef zeroext true) #6
  %66 = load ptr, ptr %3, align 4
  %67 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %70, %61
  %71 = phi i32 [ %75, %70 ], [ 0, %61 ]
  %72 = getelementptr %struct.rockchip_thermal_data, ptr %3, i32 0, i32 3, i32 %71, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 @thermal_zone_device_enable(ptr noundef %73) #6
  %75 = add nuw nsw i32 %71, 1
  %76 = load ptr, ptr %3, align 4
  %77 = getelementptr inbounds %struct.rockchip_tsadc_chip, ptr %76, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %70, label %80

80:                                               ; preds = %70, %61
  %81 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #6
  br label %82

82:                                               ; preds = %80, %13, %1
  %83 = phi i32 [ %11, %13 ], [ 0, %80 ], [ %6, %1 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i64 3129973}
!10 = !{i64 3130391}
!11 = !{!"branch_weights", i32 1, i32 2000}
