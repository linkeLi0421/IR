; ModuleID = '/llk/IR/drivers/pinctrl/pinctrl-rockchip.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-rockchip.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.rockchip_pin_ctrl = type { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr }
%struct.rockchip_pin_bank = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i8, [4 x %struct.rockchip_iomux], [4 x %struct.rockchip_drv], [4 x i32], i8, ptr, ptr, ptr, %struct.gpio_chip, %struct.pinctrl_gpio_range, %struct.raw_spinlock, ptr, i32, i32, i32, i32, %struct.list_head, %struct.mutex }
%struct.rockchip_iomux = type { i32, i32 }
%struct.rockchip_drv = type { i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rockchip_mux_route_data = type { i8, i8, i8, i32, i32, i32 }
%struct.rockchip_mux_recalced_data = type { i8, i8, i32, i8, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rockchip_pinctrl = type { ptr, i32, ptr, ptr, ptr, ptr, %struct.pinctrl_desc, ptr, ptr, i32, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.rockchip_pmx_func = type { ptr, ptr, i8 }
%struct.rockchip_pin_group = type { ptr, i32, ptr, ptr }
%struct.rockchip_pin_config = type { i32, ptr, i32 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.63 }
%union.anon.63 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.rockchip_pin_output_deferred = type { %struct.list_head, i32, i32 }

@__initcall__kmod_pinctrl_rockchip__206_3241_rockchip_pinctrl_drv_register2 = internal global ptr @rockchip_pinctrl_drv_register, section ".initcall2.init", align 4
@rockchip_pinctrl_driver = internal global %struct.platform_driver { ptr @rockchip_pinctrl_probe, ptr @rockchip_pinctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_pinctrl_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_pinctrl_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rockchip_pinctrl_drv_unregister = internal global ptr @rockchip_pinctrl_drv_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_description207 = internal constant [60 x i8] c"pinctrl_rockchip.description=ROCKCHIP Pin Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file208 = internal constant [55 x i8] c"pinctrl_rockchip.file=drivers/pinctrl/pinctrl-rockchip\00", section ".modinfo", align 1
@__UNIQUE_ID_license209 = internal constant [29 x i8] c"pinctrl_rockchip.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias210 = internal constant [49 x i8] c"pinctrl_rockchip.alias=platform:pinctrl-rockchip\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"rockchip-pinctrl\00", align 1
@rockchip_pinctrl_dt_match = internal constant [16 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @px30_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rv1108_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk2928-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk2928_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3036-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3036_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066a-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3066a_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066b-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3066b_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3128-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3128_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3188_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3308-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3308_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3328_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3368_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_pin_ctrl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3568_pin_ctrl }, %struct.of_device_id zeroinitializer], align 4
@rockchip_pinctrl_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rockchip_pinctrl_suspend, ptr @rockchip_pinctrl_resume, ptr @rockchip_pinctrl_suspend, ptr @rockchip_pinctrl_resume, ptr @rockchip_pinctrl_suspend, ptr @rockchip_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"device tree node not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"driver data not available\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@rockchip_regmap_config = internal global %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"rockchip,pinctrl\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"rockchip,pinctrl-pull\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"rockchip,pmu\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to register gpio device\0A\00", align 1
@rockchip_pctrl_ops = internal constant %struct.pinctrl_ops { ptr @rockchip_get_groups_count, ptr @rockchip_get_group_name, ptr @rockchip_get_group_pins, ptr null, ptr @rockchip_dt_node_to_map, ptr @rockchip_dt_free_map }, align 4
@rockchip_pmx_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @rockchip_pmx_get_funcs_count, ptr @rockchip_pmx_get_func_name, ptr @rockchip_pmx_get_groups, ptr @rockchip_pmx_set, ptr null, ptr null, ptr null, i8 0 }, align 4
@rockchip_pinconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr @rockchip_pinconf_get, ptr @rockchip_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rockchip_pinctrl_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"&pin_bank->deferred_lock\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"could not register pinctrl driver\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"unable to find group for node %pOFn\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"pin %d is unrouted\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"pin %d only supports a gpio mux\0A\00", align 1
@rockchip_pull_list = internal unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 1, i32 5, i32 3, i32 0], [4 x i32] [i32 1, i32 3, i32 1, i32 5]], align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"unsupported pinctrl type\0A\00", align 1
@rockchip_perpin_drv_list = internal unnamed_addr constant [5 x [8 x i32]] [[8 x i32] [i32 2, i32 4, i32 8, i32 12, i32 -1, i32 -1, i32 -1, i32 -1], [8 x i32] [i32 3, i32 6, i32 9, i32 12, i32 -1, i32 -1, i32 -1, i32 -1], [8 x i32] [i32 5, i32 10, i32 15, i32 20, i32 -1, i32 -1, i32 -1, i32 -1], [8 x i32] [i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18], [8 x i32] [i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 26]], align 4
@.str.14 = private unnamed_addr constant [48 x i8] c"unsupported bit: %d for pinctrl drive type: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"unsupported pinctrl drive type: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"unsupported pull setting %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"unsupported driver strength %d\0A\00", align 1
@rockchip_bank_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,gpio-bank\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-gpio-bank0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.18 = private unnamed_addr constant [26 x i8] c"failed to parse function\0A\00", align 1
@rockchip_pinctrl_parse_functions.grp_index = internal unnamed_addr global i32 0, align 4
@.str.19 = private unnamed_addr constant [14 x i8] c"rockchip,pins\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"wrong pins number or pins and configs should be by 4\0A\00", align 1
@px30_pin_ctrl = internal global %struct.rockchip_pin_ctrl { ptr @px30_pin_banks, i32 4, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @px30_mux_route_data, i32 8, ptr @px30_calc_pull_reg_and_bit, ptr @px30_calc_drv_reg_and_bit, ptr @px30_calc_schmitt_reg_and_bit }, align 4
@rv1108_pin_ctrl = internal global %struct.rockchip_pin_ctrl { ptr @rv1108_pin_banks, i32 4, i32 0, ptr @.str.26, i32 1, i32 16, i32 0, i32 0, i32 0, ptr @rv1108_mux_recalced_data, i32 10, ptr null, i32 0, ptr @rv1108_calc_pull_reg_and_bit, ptr @rv1108_calc_drv_reg_and_bit, ptr @rv1108_calc_schmitt_reg_and_bit }, align 4
@rk2928_pin_ctrl = internal global %struct.rockchip_pin_ctrl { ptr @rk2928_pin_banks, i32 4, i32 0, ptr @.str.27, i32 2, i32 168, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @rk2928_calc_pull_reg_and_bit, ptr null, ptr null }, align 4
@rk3036_pin_ctrl = internal global %struct.rockchip_pin_ctrl { ptr @rk3036_pin_banks, i32 3, i32 0, ptr @.str.28, i32 2, i32 168, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @rk2928_calc_pull_reg_and_bit, ptr null, ptr null }, align 4
@rk3066a_pin_ctrl = internal global %struct.rockchip_pin_ctrl { ptr @rk3066a_pin_banks, i32 6, i32 0, ptr @.str.29, i32 2, i32 168, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @rk2928_calc_pull_reg_and_bit, ptr null, ptr null }, align 4
@rk3066b_pin_ctrl = internal global %struct.rockchip_pin_ctrl { ptr @rk3066b_pin_banks, i32 4, i32 0, ptr @.str.32, i32 3, i32 96, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null }, align 4
@rk3128_pin_ctrl = internal global %struct.rockchip_pin_ctrl { ptr @rk3128_pin_banks, i32 4, i32 0, ptr @.str.33, i32 4, i32 168, i32 0, i32 0, i32 0, ptr @rk3128_mux_recalced_data, i32 5, ptr @rk3128_mux_route_data, i32 7, ptr @rk3128_calc_pull_reg_and_bit, ptr null, ptr null }, align 4
@rk3188_pin_ctrl = internal global %struct.rockchip_pin_ctrl { ptr @rk3188_pin_banks, i32 4, i32 0, ptr @.str.34, i32 5, i32 96, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @rk3188_mux_route_data, i32 2, ptr @rk3188_calc_pull_reg_and_bit, ptr null, ptr null }, align 4
@rk3228_pin_ctrl = internal global %struct.rockchip_pin_ctrl { ptr @rk3228_pin_banks, i32 4, i32 0, ptr @.str.35, i32 6, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @rk3228_mux_route_data, i32 18, ptr @rk3228_calc_pull_reg_and_bit, ptr @rk3228_calc_drv_reg_and_bit, ptr null }, align 4
@rk3288_pin_ctrl = internal global %struct.rockchip_pin_ctrl { ptr @rk3288_pin_banks, i32 9, i32 0, ptr @.str.36, i32 6, i32 0, i32 132, i32 0, i32 0, ptr null, i32 0, ptr @rk3288_mux_route_data, i32 2, ptr @rk3288_calc_pull_reg_and_bit, ptr @rk3288_calc_drv_reg_and_bit, ptr null }, align 4
@rk3308_pin_ctrl = internal global %struct.rockchip_pin_ctrl { ptr @rk3308_pin_banks, i32 5, i32 0, ptr @.str.40, i32 7, i32 0, i32 0, i32 0, i32 0, ptr @rk3308_mux_recalced_data, i32 15, ptr @rk3308_mux_route_data, i32 26, ptr @rk3308_calc_pull_reg_and_bit, ptr @rk3308_calc_drv_reg_and_bit, ptr @rk3308_calc_schmitt_reg_and_bit }, align 4
@rk3328_pin_ctrl = internal global %struct.rockchip_pin_ctrl { ptr @rk3328_pin_banks, i32 4, i32 0, ptr @.str.41, i32 6, i32 0, i32 0, i32 0, i32 0, ptr @rk3328_mux_recalced_data, i32 3, ptr @rk3328_mux_route_data, i32 12, ptr @rk3228_calc_pull_reg_and_bit, ptr @rk3228_calc_drv_reg_and_bit, ptr @rk3328_calc_schmitt_reg_and_bit }, align 4
@rk3368_pin_ctrl = internal global %struct.rockchip_pin_ctrl { ptr @rk3368_pin_banks, i32 4, i32 0, ptr @.str.42, i32 8, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @rk3368_calc_pull_reg_and_bit, ptr @rk3368_calc_drv_reg_and_bit, ptr null }, align 4
@rk3399_pin_ctrl = internal global %struct.rockchip_pin_ctrl { ptr @rk3399_pin_banks, i32 5, i32 0, ptr @.str.43, i32 9, i32 57344, i32 0, i32 57600, i32 128, ptr null, i32 0, ptr @rk3399_mux_route_data, i32 5, ptr @rk3399_calc_pull_reg_and_bit, ptr @rk3399_calc_drv_reg_and_bit, ptr null }, align 4
@rk3568_pin_ctrl = internal global %struct.rockchip_pin_ctrl { ptr @rk3568_pin_banks, i32 5, i32 0, ptr @.str.44, i32 10, i32 0, i32 0, i32 512, i32 112, ptr null, i32 0, ptr @rk3568_mux_route_data, i32 93, ptr @rk3568_calc_pull_reg_and_bit, ptr @rk3568_calc_drv_reg_and_bit, ptr @rk3568_calc_schmitt_reg_and_bit }, align 4
@px30_pin_banks = internal global [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.22, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.23, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.24, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.25, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"PX30-GPIO\00", align 1
@px30_mux_route_data = internal global [8 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 2, i8 0, i8 1, i32 0, i32 388, i32 8388608 }, %struct.rockchip_mux_route_data { i8 3, i8 3, i8 3, i32 0, i32 388, i32 8388736 }, %struct.rockchip_mux_route_data { i8 3, i8 22, i8 2, i32 0, i32 388, i32 16777216 }, %struct.rockchip_mux_route_data { i8 2, i8 22, i8 1, i32 0, i32 388, i32 16777472 }, %struct.rockchip_mux_route_data { i8 1, i8 27, i8 2, i32 0, i32 388, i32 67108864 }, %struct.rockchip_mux_route_data { i8 2, i8 14, i8 2, i32 0, i32 388, i32 67109888 }, %struct.rockchip_mux_route_data { i8 0, i8 17, i8 2, i32 0, i32 388, i32 33554432 }, %struct.rockchip_mux_route_data { i8 1, i8 15, i8 2, i32 0, i32 388, i32 33554944 }], align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"gpio0\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"gpio1\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"gpio2\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"gpio3\00", align 1
@rv1108_pin_banks = internal global [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.22, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.23, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.24, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.25, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], align 4
@.str.26 = private unnamed_addr constant [12 x i8] c"RV1108-GPIO\00", align 1
@rv1108_mux_recalced_data = internal global [10 x %struct.rockchip_mux_recalced_data] [%struct.rockchip_mux_recalced_data { i8 1, i8 0, i32 1048, i8 0, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 1, i32 1048, i8 2, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 2, i32 1048, i8 4, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 3, i32 1048, i8 6, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 4, i32 1048, i8 8, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 5, i32 1048, i8 10, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 6, i32 1048, i8 12, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 7, i32 1048, i8 14, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 8, i32 1052, i8 0, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 9, i32 1052, i8 2, i8 3 }], align 4
@rk2928_pin_banks = internal global [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.22, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.23, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.24, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.25, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], align 4
@.str.27 = private unnamed_addr constant [12 x i8] c"RK2928-GPIO\00", align 1
@rk3036_pin_banks = internal global [3 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.22, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.23, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.24, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"RK3036-GPIO\00", align 1
@rk3066a_pin_banks = internal global [6 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.22, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.23, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.24, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.25, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.30, i8 4, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 16, ptr @.str.31, i8 6, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], align 4
@.str.29 = private unnamed_addr constant [13 x i8] c"RK3066a-GPIO\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"gpio4\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"gpio6\00", align 1
@rk3066b_pin_banks = internal global [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.22, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.23, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.24, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.25, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], align 4
@.str.32 = private unnamed_addr constant [13 x i8] c"RK3066b-GPIO\00", align 1
@rk3128_pin_banks = internal global [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.22, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.23, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.24, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.25, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], align 4
@.str.33 = private unnamed_addr constant [12 x i8] c"RK3128-GPIO\00", align 1
@rk3128_mux_recalced_data = internal global [5 x %struct.rockchip_mux_recalced_data] [%struct.rockchip_mux_recalced_data { i8 2, i8 20, i32 232, i8 0, i8 7 }, %struct.rockchip_mux_recalced_data { i8 2, i8 21, i32 232, i8 4, i8 7 }, %struct.rockchip_mux_recalced_data { i8 2, i8 22, i32 232, i8 8, i8 7 }, %struct.rockchip_mux_recalced_data { i8 2, i8 23, i32 232, i8 12, i8 7 }, %struct.rockchip_mux_recalced_data { i8 2, i8 24, i32 212, i8 12, i8 7 }], align 4
@rk3128_mux_route_data = internal global [7 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 1, i8 10, i8 1, i32 0, i32 324, i32 1572864 }, %struct.rockchip_mux_route_data { i8 1, i8 27, i8 3, i32 0, i32 324, i32 1572872 }, %struct.rockchip_mux_route_data { i8 0, i8 13, i8 2, i32 0, i32 324, i32 1572880 }, %struct.rockchip_mux_route_data { i8 1, i8 5, i8 1, i32 0, i32 324, i32 2097152 }, %struct.rockchip_mux_route_data { i8 0, i8 14, i8 1, i32 0, i32 324, i32 2097184 }, %struct.rockchip_mux_route_data { i8 1, i8 22, i8 2, i32 0, i32 324, i32 4194304 }, %struct.rockchip_mux_route_data { i8 2, i8 4, i8 2, i32 0, i32 324, i32 4194368 }], align 4
@rk3188_pin_banks = internal global [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.22, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 1, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.23, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.24, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.25, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], align 4
@.str.34 = private unnamed_addr constant [12 x i8] c"RK3188-GPIO\00", align 1
@rk3188_mux_route_data = internal global [2 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 0, i8 24, i8 1, i32 0, i32 160, i32 134217728 }, %struct.rockchip_mux_route_data { i8 0, i8 24, i8 2, i32 0, i32 160, i32 134219776 }], align 4
@rk3228_pin_banks = internal global [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.22, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.23, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.24, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.25, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], align 4
@.str.35 = private unnamed_addr constant [12 x i8] c"RK3228-GPIO\00", align 1
@rk3228_mux_route_data = internal global [18 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 0, i8 26, i8 1, i32 0, i32 80, i32 65536 }, %struct.rockchip_mux_route_data { i8 3, i8 21, i8 1, i32 0, i32 80, i32 65537 }, %struct.rockchip_mux_route_data { i8 0, i8 27, i8 1, i32 0, i32 80, i32 131072 }, %struct.rockchip_mux_route_data { i8 0, i8 30, i8 2, i32 0, i32 80, i32 131074 }, %struct.rockchip_mux_route_data { i8 0, i8 28, i8 1, i32 0, i32 80, i32 262144 }, %struct.rockchip_mux_route_data { i8 1, i8 12, i8 2, i32 0, i32 80, i32 262148 }, %struct.rockchip_mux_route_data { i8 3, i8 26, i8 1, i32 0, i32 80, i32 524288 }, %struct.rockchip_mux_route_data { i8 1, i8 11, i8 2, i32 0, i32 80, i32 524296 }, %struct.rockchip_mux_route_data { i8 1, i8 1, i8 1, i32 0, i32 80, i32 1048576 }, %struct.rockchip_mux_route_data { i8 3, i8 2, i8 1, i32 0, i32 80, i32 1048592 }, %struct.rockchip_mux_route_data { i8 0, i8 13, i8 2, i32 0, i32 80, i32 2097152 }, %struct.rockchip_mux_route_data { i8 2, i8 0, i8 2, i32 0, i32 80, i32 2097184 }, %struct.rockchip_mux_route_data { i8 1, i8 22, i8 2, i32 0, i32 80, i32 8388608 }, %struct.rockchip_mux_route_data { i8 2, i8 4, i8 2, i32 0, i32 80, i32 8388736 }, %struct.rockchip_mux_route_data { i8 1, i8 19, i8 2, i32 0, i32 80, i32 16777216 }, %struct.rockchip_mux_route_data { i8 1, i8 10, i8 2, i32 0, i32 80, i32 16777472 }, %struct.rockchip_mux_route_data { i8 1, i8 10, i8 1, i32 0, i32 80, i32 134217728 }, %struct.rockchip_mux_route_data { i8 3, i8 13, i8 1, i32 0, i32 80, i32 134219776 }], align 4
@rk3288_pin_banks = internal global [9 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 24, ptr @.str.22, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 8, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.23, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 8, i32 -1 }, %struct.rockchip_iomux { i32 8, i32 -1 }, %struct.rockchip_iomux { i32 8, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.24, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 8, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.25, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.30, i8 4, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.37, i8 5, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 8, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 8, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.31, i8 6, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 8, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.38, i8 7, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 8, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 16, ptr @.str.39, i8 8, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], align 4
@.str.36 = private unnamed_addr constant [12 x i8] c"RK3288-GPIO\00", align 1
@rk3288_mux_route_data = internal global [2 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 7, i8 16, i8 2, i32 0, i32 612, i32 268439552 }, %struct.rockchip_mux_route_data { i8 7, i8 23, i8 4, i32 0, i32 612, i32 268435456 }], align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"gpio5\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"gpio7\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"gpio8\00", align 1
@rk3308_pin_banks = internal global [5 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.22, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.23, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.24, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.25, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.30, i8 4, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }, %struct.rockchip_iomux { i32 32, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], align 4
@.str.40 = private unnamed_addr constant [12 x i8] c"RK3308-GPIO\00", align 1
@rk3308_mux_recalced_data = internal global [15 x %struct.rockchip_mux_recalced_data] [%struct.rockchip_mux_recalced_data { i8 1, i8 14, i32 40, i8 12, i8 15 }, %struct.rockchip_mux_recalced_data { i8 1, i8 15, i32 44, i8 0, i8 3 }, %struct.rockchip_mux_recalced_data { i8 1, i8 18, i32 48, i8 4, i8 15 }, %struct.rockchip_mux_recalced_data { i8 1, i8 19, i32 48, i8 8, i8 15 }, %struct.rockchip_mux_recalced_data { i8 1, i8 20, i32 48, i8 12, i8 15 }, %struct.rockchip_mux_recalced_data { i8 1, i8 21, i32 52, i8 0, i8 15 }, %struct.rockchip_mux_recalced_data { i8 1, i8 22, i32 52, i8 4, i8 15 }, %struct.rockchip_mux_recalced_data { i8 1, i8 23, i32 52, i8 8, i8 15 }, %struct.rockchip_mux_recalced_data { i8 3, i8 12, i32 104, i8 8, i8 15 }, %struct.rockchip_mux_recalced_data { i8 3, i8 13, i32 104, i8 12, i8 15 }, %struct.rockchip_mux_recalced_data { i8 2, i8 2, i32 1544, i8 0, i8 7 }, %struct.rockchip_mux_recalced_data { i8 2, i8 3, i32 1544, i8 4, i8 7 }, %struct.rockchip_mux_recalced_data { i8 2, i8 16, i32 1552, i8 8, i8 7 }, %struct.rockchip_mux_recalced_data { i8 3, i8 10, i32 1552, i8 0, i8 7 }, %struct.rockchip_mux_recalced_data { i8 3, i8 11, i32 1552, i8 4, i8 7 }], align 4
@rk3308_mux_route_data = internal global [26 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 0, i8 19, i8 1, i32 0, i32 788, i32 65537 }, %struct.rockchip_mux_route_data { i8 1, i8 22, i8 2, i32 0, i32 788, i32 786432 }, %struct.rockchip_mux_route_data { i8 4, i8 26, i8 2, i32 0, i32 788, i32 786436 }, %struct.rockchip_mux_route_data { i8 0, i8 15, i8 2, i32 0, i32 1544, i32 50331648 }, %struct.rockchip_mux_route_data { i8 3, i8 12, i8 2, i32 0, i32 1544, i32 50331904 }, %struct.rockchip_mux_route_data { i8 2, i8 0, i8 3, i32 0, i32 1544, i32 50332160 }, %struct.rockchip_mux_route_data { i8 1, i8 3, i8 2, i32 0, i32 776, i32 524288 }, %struct.rockchip_mux_route_data { i8 1, i8 4, i8 2, i32 0, i32 776, i32 524288 }, %struct.rockchip_mux_route_data { i8 1, i8 13, i8 2, i32 0, i32 776, i32 524296 }, %struct.rockchip_mux_route_data { i8 1, i8 14, i8 2, i32 0, i32 776, i32 524296 }, %struct.rockchip_mux_route_data { i8 1, i8 4, i8 3, i32 0, i32 776, i32 805306368 }, %struct.rockchip_mux_route_data { i8 1, i8 14, i8 4, i32 0, i32 776, i32 805310464 }, %struct.rockchip_mux_route_data { i8 2, i8 6, i8 2, i32 0, i32 776, i32 805314560 }, %struct.rockchip_mux_route_data { i8 2, i8 4, i8 3, i32 0, i32 1536, i32 262148 }, %struct.rockchip_mux_route_data { i8 3, i8 10, i8 3, i32 0, i32 788, i32 33554432 }, %struct.rockchip_mux_route_data { i8 2, i8 4, i8 2, i32 0, i32 788, i32 33554944 }, %struct.rockchip_mux_route_data { i8 0, i8 11, i8 3, i32 0, i32 788, i32 201326592 }, %struct.rockchip_mux_route_data { i8 1, i8 22, i8 7, i32 0, i32 788, i32 201327616 }, %struct.rockchip_mux_route_data { i8 2, i8 2, i8 5, i32 0, i32 788, i32 201328640 }, %struct.rockchip_mux_route_data { i8 0, i8 11, i8 2, i32 0, i32 788, i32 805306368 }, %struct.rockchip_mux_route_data { i8 1, i8 22, i8 5, i32 0, i32 788, i32 805310464 }, %struct.rockchip_mux_route_data { i8 2, i8 2, i8 4, i32 0, i32 788, i32 805314560 }, %struct.rockchip_mux_route_data { i8 1, i8 20, i8 3, i32 0, i32 788, i32 1073741824 }, %struct.rockchip_mux_route_data { i8 4, i8 2, i8 2, i32 0, i32 788, i32 1073758208 }, %struct.rockchip_mux_route_data { i8 3, i8 12, i8 4, i32 0, i32 788, i32 -2147483648 }, %struct.rockchip_mux_route_data { i8 0, i8 17, i8 3, i32 0, i32 788, i32 -2147450880 }], align 4
@rk3328_pin_banks = internal global [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.22, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.23, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.24, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 16, i32 -1 }, %struct.rockchip_iomux { i32 16, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.25, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 16, i32 -1 }, %struct.rockchip_iomux { i32 16, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], align 4
@.str.41 = private unnamed_addr constant [12 x i8] c"RK3328-GPIO\00", align 1
@rk3328_mux_recalced_data = internal global [3 x %struct.rockchip_mux_recalced_data] [%struct.rockchip_mux_recalced_data { i8 2, i8 12, i32 36, i8 8, i8 3 }, %struct.rockchip_mux_recalced_data { i8 2, i8 15, i32 40, i8 0, i8 7 }, %struct.rockchip_mux_recalced_data { i8 2, i8 23, i32 48, i8 14, i8 3 }], align 4
@rk3328_mux_route_data = internal global [12 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 1, i8 1, i8 2, i32 0, i32 80, i32 196608 }, %struct.rockchip_mux_route_data { i8 2, i8 1, i8 1, i32 0, i32 80, i32 196609 }, %struct.rockchip_mux_route_data { i8 1, i8 11, i8 2, i32 0, i32 80, i32 262148 }, %struct.rockchip_mux_route_data { i8 1, i8 14, i8 2, i32 0, i32 80, i32 67109888 }, %struct.rockchip_mux_route_data { i8 2, i8 19, i8 2, i32 0, i32 80, i32 524288 }, %struct.rockchip_mux_route_data { i8 1, i8 23, i8 3, i32 0, i32 80, i32 524296 }, %struct.rockchip_mux_route_data { i8 3, i8 2, i8 4, i32 0, i32 80, i32 3145760 }, %struct.rockchip_mux_route_data { i8 1, i8 24, i8 1, i32 0, i32 80, i32 4194304 }, %struct.rockchip_mux_route_data { i8 3, i8 2, i8 6, i32 0, i32 80, i32 4194368 }, %struct.rockchip_mux_route_data { i8 2, i8 22, i8 3, i32 0, i32 80, i32 8388736 }, %struct.rockchip_mux_route_data { i8 2, i8 16, i8 3, i32 0, i32 80, i32 16777472 }, %struct.rockchip_mux_route_data { i8 2, i8 16, i8 4, i32 0, i32 80, i32 33554944 }], align 4
@rk3368_pin_banks = internal global [4 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.22, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.23, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.24, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.25, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], align 4
@.str.42 = private unnamed_addr constant [12 x i8] c"RK3368-GPIO\00", align 1
@rk3399_pin_banks = internal global [5 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.22, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }], [4 x %struct.rockchip_drv] [%struct.rockchip_drv { i32 2, i32 128 }, %struct.rockchip_drv { i32 2, i32 136 }, %struct.rockchip_drv { i32 0, i32 -1 }, %struct.rockchip_drv { i32 0, i32 -1 }], [4 x i32] [i32 1, i32 1, i32 0, i32 0], i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.23, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }, %struct.rockchip_iomux { i32 4, i32 -1 }], [4 x %struct.rockchip_drv] [%struct.rockchip_drv { i32 1, i32 160 }, %struct.rockchip_drv { i32 1, i32 168 }, %struct.rockchip_drv { i32 1, i32 176 }, %struct.rockchip_drv { i32 1, i32 184 }], [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.24, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] [%struct.rockchip_drv { i32 1, i32 -1 }, %struct.rockchip_drv { i32 1, i32 -1 }, %struct.rockchip_drv { i32 2, i32 -1 }, %struct.rockchip_drv { i32 2, i32 -1 }], [4 x i32] [i32 0, i32 0, i32 1, i32 1], i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.25, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] [%struct.rockchip_drv { i32 4, i32 -1 }, %struct.rockchip_drv { i32 4, i32 -1 }, %struct.rockchip_drv { i32 4, i32 -1 }, %struct.rockchip_drv { i32 1, i32 -1 }], [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.30, i8 4, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }, %struct.rockchip_iomux { i32 0, i32 -1 }], [4 x %struct.rockchip_drv] [%struct.rockchip_drv { i32 1, i32 -1 }, %struct.rockchip_drv { i32 3, i32 -1 }, %struct.rockchip_drv { i32 1, i32 -1 }, %struct.rockchip_drv { i32 1, i32 -1 }], [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], align 4
@.str.43 = private unnamed_addr constant [12 x i8] c"RK3399-GPIO\00", align 1
@rk3399_mux_route_data = internal global [5 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 4, i8 8, i8 2, i32 0, i32 57884, i32 201326592 }, %struct.rockchip_mux_route_data { i8 4, i8 16, i8 2, i32 0, i32 57884, i32 201327616 }, %struct.rockchip_mux_route_data { i8 4, i8 19, i8 1, i32 0, i32 57884, i32 201328640 }, %struct.rockchip_mux_route_data { i8 2, i8 26, i8 2, i32 0, i32 57884, i32 1073741824 }, %struct.rockchip_mux_route_data { i8 4, i8 24, i8 1, i32 0, i32 57884, i32 1073758208 }], align 4
@rk3568_pin_banks = internal global [5 x %struct.rockchip_pin_bank] [%struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.22, i8 0, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 6, i32 -1 }, %struct.rockchip_iomux { i32 6, i32 -1 }, %struct.rockchip_iomux { i32 6, i32 -1 }, %struct.rockchip_iomux { i32 6, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.23, i8 1, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.24, i8 2, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.25, i8 3, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }, %struct.rockchip_pin_bank { ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 32, ptr @.str.30, i8 4, [4 x %struct.rockchip_iomux] [%struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }, %struct.rockchip_iomux { i32 2, i32 -1 }], [4 x %struct.rockchip_drv] zeroinitializer, [4 x i32] zeroinitializer, i8 0, ptr null, ptr null, ptr null, %struct.gpio_chip zeroinitializer, %struct.pinctrl_gpio_range zeroinitializer, %struct.raw_spinlock zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer }], align 4
@.str.44 = private unnamed_addr constant [12 x i8] c"RK3568-GPIO\00", align 1
@rk3568_mux_route_data = internal global [93 x %struct.rockchip_mux_route_data] [%struct.rockchip_mux_route_data { i8 0, i8 15, i8 1, i32 1, i32 272, i32 196608 }, %struct.rockchip_mux_route_data { i8 0, i8 23, i8 2, i32 1, i32 272, i32 196609 }, %struct.rockchip_mux_route_data { i8 0, i8 16, i8 1, i32 1, i32 272, i32 786432 }, %struct.rockchip_mux_route_data { i8 0, i8 13, i8 4, i32 1, i32 272, i32 786436 }, %struct.rockchip_mux_route_data { i8 0, i8 17, i8 1, i32 1, i32 272, i32 3145728 }, %struct.rockchip_mux_route_data { i8 0, i8 14, i8 4, i32 1, i32 272, i32 3145744 }, %struct.rockchip_mux_route_data { i8 0, i8 11, i8 2, i32 1, i32 768, i32 65536 }, %struct.rockchip_mux_route_data { i8 2, i8 1, i8 4, i32 2, i32 768, i32 65537 }, %struct.rockchip_mux_route_data { i8 1, i8 1, i8 3, i32 2, i32 768, i32 262144 }, %struct.rockchip_mux_route_data { i8 4, i8 19, i8 3, i32 2, i32 768, i32 262148 }, %struct.rockchip_mux_route_data { i8 4, i8 13, i8 3, i32 2, i32 768, i32 1048576 }, %struct.rockchip_mux_route_data { i8 2, i8 10, i8 4, i32 2, i32 768, i32 1048592 }, %struct.rockchip_mux_route_data { i8 4, i8 20, i8 1, i32 2, i32 768, i32 4194304 }, %struct.rockchip_mux_route_data { i8 0, i8 18, i8 2, i32 1, i32 768, i32 4194368 }, %struct.rockchip_mux_route_data { i8 3, i8 9, i8 3, i32 2, i32 768, i32 16777216 }, %struct.rockchip_mux_route_data { i8 4, i8 7, i8 3, i32 2, i32 768, i32 16777472 }, %struct.rockchip_mux_route_data { i8 4, i8 25, i8 1, i32 2, i32 768, i32 67108864 }, %struct.rockchip_mux_route_data { i8 0, i8 23, i8 1, i32 1, i32 768, i32 67109888 }, %struct.rockchip_mux_route_data { i8 0, i8 14, i8 1, i32 1, i32 768, i32 1073741824 }, %struct.rockchip_mux_route_data { i8 4, i8 12, i8 1, i32 2, i32 768, i32 1073758208 }, %struct.rockchip_mux_route_data { i8 1, i8 0, i8 1, i32 2, i32 772, i32 65536 }, %struct.rockchip_mux_route_data { i8 3, i8 14, i8 4, i32 2, i32 772, i32 65537 }, %struct.rockchip_mux_route_data { i8 4, i8 10, i8 1, i32 2, i32 772, i32 262144 }, %struct.rockchip_mux_route_data { i8 2, i8 9, i8 2, i32 2, i32 772, i32 262148 }, %struct.rockchip_mux_route_data { i8 3, i8 12, i8 4, i32 2, i32 772, i32 1048576 }, %struct.rockchip_mux_route_data { i8 4, i8 24, i8 2, i32 2, i32 772, i32 1048592 }, %struct.rockchip_mux_route_data { i8 3, i8 9, i8 5, i32 2, i32 772, i32 1073741824 }, %struct.rockchip_mux_route_data { i8 1, i8 29, i8 4, i32 2, i32 772, i32 1073758208 }, %struct.rockchip_mux_route_data { i8 3, i8 10, i8 5, i32 2, i32 776, i32 65536 }, %struct.rockchip_mux_route_data { i8 1, i8 30, i8 4, i32 2, i32 776, i32 65537 }, %struct.rockchip_mux_route_data { i8 3, i8 13, i8 5, i32 2, i32 776, i32 262144 }, %struct.rockchip_mux_route_data { i8 2, i8 1, i8 2, i32 2, i32 776, i32 262148 }, %struct.rockchip_mux_route_data { i8 3, i8 14, i8 5, i32 2, i32 776, i32 1048576 }, %struct.rockchip_mux_route_data { i8 4, i8 16, i8 3, i32 2, i32 776, i32 1048592 }, %struct.rockchip_mux_route_data { i8 3, i8 15, i8 2, i32 2, i32 776, i32 4194304 }, %struct.rockchip_mux_route_data { i8 4, i8 21, i8 1, i32 2, i32 776, i32 4194368 }, %struct.rockchip_mux_route_data { i8 3, i8 16, i8 2, i32 2, i32 776, i32 16777216 }, %struct.rockchip_mux_route_data { i8 4, i8 22, i8 1, i32 2, i32 776, i32 16777472 }, %struct.rockchip_mux_route_data { i8 3, i8 20, i8 1, i32 2, i32 776, i32 67108864 }, %struct.rockchip_mux_route_data { i8 4, i8 18, i8 1, i32 2, i32 776, i32 67109888 }, %struct.rockchip_mux_route_data { i8 3, i8 21, i8 1, i32 2, i32 776, i32 268435456 }, %struct.rockchip_mux_route_data { i8 4, i8 19, i8 1, i32 2, i32 776, i32 268439552 }, %struct.rockchip_mux_route_data { i8 3, i8 26, i8 3, i32 2, i32 776, i32 1073741824 }, %struct.rockchip_mux_route_data { i8 3, i8 5, i8 5, i32 2, i32 776, i32 1073758208 }, %struct.rockchip_mux_route_data { i8 0, i8 13, i8 2, i32 1, i32 780, i32 65536 }, %struct.rockchip_mux_route_data { i8 2, i8 27, i8 3, i32 2, i32 780, i32 65537 }, %struct.rockchip_mux_route_data { i8 2, i8 13, i8 3, i32 2, i32 780, i32 262144 }, %struct.rockchip_mux_route_data { i8 3, i8 19, i8 3, i32 2, i32 780, i32 262148 }, %struct.rockchip_mux_route_data { i8 2, i8 17, i8 4, i32 2, i32 780, i32 1048576 }, %struct.rockchip_mux_route_data { i8 3, i8 0, i8 3, i32 2, i32 780, i32 1048592 }, %struct.rockchip_mux_route_data { i8 4, i8 11, i8 4, i32 2, i32 780, i32 4194304 }, %struct.rockchip_mux_route_data { i8 4, i8 18, i8 2, i32 2, i32 780, i32 4194368 }, %struct.rockchip_mux_route_data { i8 2, i8 12, i8 2, i32 2, i32 780, i32 16777216 }, %struct.rockchip_mux_route_data { i8 0, i8 25, i8 1, i32 1, i32 780, i32 16777472 }, %struct.rockchip_mux_route_data { i8 0, i8 25, i8 1, i32 1, i32 780, i32 67108864 }, %struct.rockchip_mux_route_data { i8 1, i8 29, i8 2, i32 2, i32 780, i32 67109888 }, %struct.rockchip_mux_route_data { i8 1, i8 1, i8 2, i32 2, i32 780, i32 268435456 }, %struct.rockchip_mux_route_data { i8 3, i8 15, i8 4, i32 2, i32 780, i32 268439552 }, %struct.rockchip_mux_route_data { i8 1, i8 6, i8 2, i32 2, i32 780, i32 1073741824 }, %struct.rockchip_mux_route_data { i8 3, i8 10, i8 4, i32 2, i32 780, i32 1073758208 }, %struct.rockchip_mux_route_data { i8 2, i8 2, i8 3, i32 2, i32 784, i32 65536 }, %struct.rockchip_mux_route_data { i8 3, i8 18, i8 4, i32 2, i32 784, i32 65537 }, %struct.rockchip_mux_route_data { i8 2, i8 4, i8 3, i32 2, i32 784, i32 262144 }, %struct.rockchip_mux_route_data { i8 1, i8 29, i8 3, i32 2, i32 784, i32 262148 }, %struct.rockchip_mux_route_data { i8 2, i8 6, i8 3, i32 2, i32 784, i32 3145728 }, %struct.rockchip_mux_route_data { i8 3, i8 20, i8 4, i32 2, i32 784, i32 3145744 }, %struct.rockchip_mux_route_data { i8 4, i8 2, i8 4, i32 2, i32 784, i32 3145760 }, %struct.rockchip_mux_route_data { i8 2, i8 21, i8 3, i32 2, i32 784, i32 4194304 }, %struct.rockchip_mux_route_data { i8 2, i8 31, i8 4, i32 2, i32 784, i32 4194368 }, %struct.rockchip_mux_route_data { i8 2, i8 8, i8 3, i32 2, i32 784, i32 50331648 }, %struct.rockchip_mux_route_data { i8 4, i8 21, i8 4, i32 2, i32 784, i32 50331904 }, %struct.rockchip_mux_route_data { i8 4, i8 4, i8 4, i32 2, i32 784, i32 50332160 }, %struct.rockchip_mux_route_data { i8 1, i8 2, i8 1, i32 2, i32 784, i32 201326592 }, %struct.rockchip_mux_route_data { i8 3, i8 22, i8 4, i32 2, i32 784, i32 201327616 }, %struct.rockchip_mux_route_data { i8 2, i8 24, i8 5, i32 2, i32 784, i32 201328640 }, %struct.rockchip_mux_route_data { i8 2, i8 17, i8 1, i32 2, i32 784, i32 268435456 }, %struct.rockchip_mux_route_data { i8 4, i8 14, i8 5, i32 2, i32 784, i32 268439552 }, %struct.rockchip_mux_route_data { i8 3, i8 2, i8 4, i32 2, i32 784, i32 1073741824 }, %struct.rockchip_mux_route_data { i8 4, i8 18, i8 5, i32 2, i32 784, i32 1073758208 }, %struct.rockchip_mux_route_data { i8 1, i8 4, i8 3, i32 2, i32 788, i32 196608 }, %struct.rockchip_mux_route_data { i8 1, i8 6, i8 3, i32 2, i32 788, i32 196608 }, %struct.rockchip_mux_route_data { i8 3, i8 30, i8 5, i32 2, i32 788, i32 196609 }, %struct.rockchip_mux_route_data { i8 4, i8 0, i8 4, i32 2, i32 788, i32 196609 }, %struct.rockchip_mux_route_data { i8 3, i8 20, i8 5, i32 2, i32 788, i32 196610 }, %struct.rockchip_mux_route_data { i8 0, i8 5, i8 3, i32 1, i32 788, i32 786432 }, %struct.rockchip_mux_route_data { i8 2, i8 24, i8 4, i32 2, i32 788, i32 786436 }, %struct.rockchip_mux_route_data { i8 1, i8 8, i8 4, i32 2, i32 788, i32 786440 }, %struct.rockchip_mux_route_data { i8 0, i8 4, i8 3, i32 1, i32 788, i32 3145728 }, %struct.rockchip_mux_route_data { i8 2, i8 26, i8 4, i32 2, i32 788, i32 3145744 }, %struct.rockchip_mux_route_data { i8 1, i8 5, i8 4, i32 2, i32 788, i32 3145760 }, %struct.rockchip_mux_route_data { i8 0, i8 6, i8 2, i32 1, i32 788, i32 12582912 }, %struct.rockchip_mux_route_data { i8 2, i8 28, i8 4, i32 2, i32 788, i32 12582976 }, %struct.rockchip_mux_route_data { i8 4, i8 18, i8 4, i32 2, i32 788, i32 12583040 }], align 4
@rk3288_grf_gpio6c_iomux = internal global i32 0, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias210, ptr @__UNIQUE_ID_description207, ptr @__UNIQUE_ID_file208, ptr @__UNIQUE_ID_license209, ptr @__exitcall_rockchip_pinctrl_drv_unregister, ptr @__initcall__kmod_pinctrl_rockchip__206_3241_rockchip_pinctrl_drv_register2, ptr @rockchip_pinctrl_drv_unregister], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rockchip_pinctrl_drv_register() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_pinctrl_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rockchip_pinctrl_drv_unregister() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_pinctrl_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_pinctrl_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store ptr null, ptr %5, align 4, !annotation !8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %6, i32 noundef -19, ptr noundef nonnull @.str.1) #11
  br label %531

12:                                               ; preds = %1
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 88, i32 noundef 3520) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %531, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 4
  store ptr %6, ptr %16, align 4
  %17 = load ptr, ptr %7, align 8
  %18 = tail call ptr @of_match_node(ptr noundef nonnull @rockchip_pinctrl_dt_match, ptr noundef %17) #11
  %19 = getelementptr inbounds %struct.of_device_id, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %172, label %24

24:                                               ; preds = %15
  %25 = load ptr, ptr %20, align 4
  %26 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %20, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %20, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %20, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %20, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %20, i32 0, i32 2
  %35 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %20, i32 0, i32 10
  %36 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %20, i32 0, i32 9
  %37 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %20, i32 0, i32 12
  %38 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %20, i32 0, i32 11
  br label %39

39:                                               ; preds = %167, %24
  %40 = phi i32 [ 0, %24 ], [ %168, %167 ]
  %41 = phi i32 [ %29, %24 ], [ %115, %167 ]
  %42 = phi i32 [ %27, %24 ], [ %114, %167 ]
  %43 = phi i32 [ %31, %24 ], [ %113, %167 ]
  %44 = phi i32 [ %33, %24 ], [ %112, %167 ]
  %45 = phi ptr [ %25, %24 ], [ %169, %167 ]
  %46 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %45, i32 0, i32 20
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %45, i32 0, i32 16
  store ptr %13, ptr %47, align 4
  %48 = load i32, ptr %34, align 4
  %49 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %45, i32 0, i32 7
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %45, i32 0, i32 8
  %51 = load i8, ptr %50, align 4
  %52 = zext i8 %51 to i32
  %53 = load i32, ptr %34, align 4
  %54 = add i32 %53, %52
  store i32 %54, ptr %34, align 4
  br label %55

55:                                               ; preds = %90, %39
  %56 = phi i32 [ 0, %39 ], [ %108, %90 ]
  %57 = phi i32 [ 0, %39 ], [ %109, %90 ]
  %58 = phi i32 [ %41, %39 ], [ %107, %90 ]
  %59 = phi i32 [ %42, %39 ], [ %105, %90 ]
  %60 = phi i32 [ %43, %39 ], [ %99, %90 ]
  %61 = phi i32 [ %44, %39 ], [ %97, %90 ]
  %62 = getelementptr %struct.rockchip_pin_bank, ptr %45, i32 0, i32 12, i32 %57
  %63 = load i8, ptr %50, align 4
  %64 = zext i8 %63 to i32
  %65 = icmp ult i32 %56, %64
  br i1 %65, label %66, label %111

66:                                               ; preds = %55
  %67 = getelementptr %struct.rockchip_pin_bank, ptr %45, i32 0, i32 11, i32 %57
  %68 = getelementptr %struct.rockchip_pin_bank, ptr %45, i32 0, i32 11, i32 %57, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp sgt i32 %69, -1
  %71 = load i32, ptr %67, align 4
  %72 = and i32 %71, 4
  %73 = icmp eq i32 %72, 0
  br i1 %70, label %74, label %77

74:                                               ; preds = %66
  %75 = select i1 %73, i32 %69, i32 %61
  %76 = select i1 %73, i32 %60, i32 %69
  br label %79

77:                                               ; preds = %66
  %78 = select i1 %73, i32 %61, i32 %60
  store i32 %78, ptr %68, align 4
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi i32 [ %61, %77 ], [ %75, %74 ]
  %81 = phi i32 [ %60, %77 ], [ %76, %74 ]
  %82 = getelementptr %struct.rockchip_pin_bank, ptr %45, i32 0, i32 12, i32 %57, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = select i1 %73, i32 %83, i32 %59
  %87 = select i1 %73, i32 %58, i32 %83
  br label %90

88:                                               ; preds = %79
  %89 = select i1 %73, i32 %59, i32 %58
  store i32 %89, ptr %82, align 4
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi i32 [ %59, %88 ], [ %86, %85 ]
  %92 = phi i32 [ %58, %88 ], [ %87, %85 ]
  %93 = and i32 %71, 50
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 4, i32 8
  %96 = select i1 %73, i32 %95, i32 0
  %97 = add i32 %80, %96
  %98 = select i1 %73, i32 0, i32 %95
  %99 = add i32 %81, %98
  %100 = load i32, ptr %62, align 4
  %101 = add i32 %100, -3
  %102 = icmp ult i32 %101, 2
  %103 = select i1 %102, i32 8, i32 4
  %104 = select i1 %73, i32 %103, i32 0
  %105 = add i32 %104, %91
  %106 = select i1 %73, i32 0, i32 %103
  %107 = add i32 %106, %92
  %108 = add nuw nsw i32 %56, 8
  %109 = add nuw nsw i32 %57, 1
  %110 = icmp eq i32 %109, 4
  br i1 %110, label %111, label %55

111:                                              ; preds = %90, %55
  %112 = phi i32 [ %61, %55 ], [ %97, %90 ]
  %113 = phi i32 [ %60, %55 ], [ %99, %90 ]
  %114 = phi i32 [ %59, %55 ], [ %105, %90 ]
  %115 = phi i32 [ %58, %55 ], [ %107, %90 ]
  %116 = load i32, ptr %35, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %45, i32 0, i32 10
  %120 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %45, i32 0, i32 24
  %121 = load i8, ptr %119, align 4
  br label %129

122:                                              ; preds = %144, %111
  %123 = load i32, ptr %37, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %167, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %45, i32 0, i32 10
  %127 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %45, i32 0, i32 25
  %128 = load i8, ptr %126, align 4
  br label %148

129:                                              ; preds = %144, %118
  %130 = phi i32 [ %116, %118 ], [ %145, %144 ]
  %131 = phi i32 [ 0, %118 ], [ %146, %144 ]
  %132 = load ptr, ptr %36, align 4
  %133 = getelementptr %struct.rockchip_mux_recalced_data, ptr %132, i32 %131
  %134 = load i8, ptr %133, align 4
  %135 = icmp eq i8 %134, %121
  br i1 %135, label %136, label %144

136:                                              ; preds = %129
  %137 = getelementptr %struct.rockchip_mux_recalced_data, ptr %132, i32 %131, i32 1
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = shl nuw i32 1, %139
  %141 = load i32, ptr %120, align 4
  %142 = or i32 %140, %141
  store i32 %142, ptr %120, align 4
  %143 = load i32, ptr %35, align 4
  br label %144

144:                                              ; preds = %136, %129
  %145 = phi i32 [ %143, %136 ], [ %130, %129 ]
  %146 = add nuw i32 %131, 1
  %147 = icmp ult i32 %146, %145
  br i1 %147, label %129, label %122

148:                                              ; preds = %163, %125
  %149 = phi i32 [ %123, %125 ], [ %164, %163 ]
  %150 = phi i32 [ 0, %125 ], [ %165, %163 ]
  %151 = load ptr, ptr %38, align 4
  %152 = getelementptr %struct.rockchip_mux_route_data, ptr %151, i32 %150
  %153 = load i8, ptr %152, align 4
  %154 = icmp eq i8 %153, %128
  br i1 %154, label %155, label %163

155:                                              ; preds = %148
  %156 = getelementptr %struct.rockchip_mux_route_data, ptr %151, i32 %150, i32 1
  %157 = load i8, ptr %156, align 1
  %158 = zext i8 %157 to i32
  %159 = shl nuw i32 1, %158
  %160 = load i32, ptr %127, align 4
  %161 = or i32 %159, %160
  store i32 %161, ptr %127, align 4
  %162 = load i32, ptr %37, align 4
  br label %163

163:                                              ; preds = %155, %148
  %164 = phi i32 [ %162, %155 ], [ %149, %148 ]
  %165 = add nuw i32 %150, 1
  %166 = icmp ult i32 %165, %164
  br i1 %166, label %148, label %167

167:                                              ; preds = %163, %122
  %168 = add nuw i32 %40, 1
  %169 = getelementptr %struct.rockchip_pin_bank, ptr %45, i32 1
  %170 = load i32, ptr %21, align 4
  %171 = icmp ult i32 %168, %170
  br i1 %171, label %39, label %172

172:                                              ; preds = %167, %15
  %173 = icmp eq ptr %20, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %172
  %175 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %6, i32 noundef -22, ptr noundef nonnull @.str.2) #11
  br label %531

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 5
  store ptr %20, ptr %177, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !8
  %178 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %8, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #11
  %179 = icmp ne i32 %178, 0
  %180 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  %181 = icmp eq ptr %180, null
  %182 = select i1 %179, i1 true, i1 %181
  br i1 %182, label %188, label %183

183:                                              ; preds = %176
  %184 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %180) #11
  store ptr %184, ptr %13, align 4
  %185 = icmp ugt ptr %184, inttoptr (i32 -4096 to ptr)
  br i1 %185, label %186, label %227

186:                                              ; preds = %183
  %187 = ptrtoint ptr %184 to i32
  br label %531

188:                                              ; preds = %176
  %189 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5) #11
  %190 = icmp ugt ptr %189, inttoptr (i32 -4096 to ptr)
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = ptrtoint ptr %189 to i32
  br label %531

193:                                              ; preds = %188
  %194 = load ptr, ptr %5, align 4
  %195 = getelementptr inbounds %struct.resource, ptr %194, i32 0, i32 1
  %196 = load i32, ptr %195, align 4
  %197 = load i32, ptr %194, align 4
  %198 = add i32 %196, -3
  %199 = sub i32 %198, %197
  store i32 %199, ptr getelementptr inbounds (%struct.regmap_config, ptr @rockchip_regmap_config, i32 0, i32 19), align 4
  store ptr @.str.4, ptr @rockchip_regmap_config, align 4
  %200 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %6, ptr noundef null, ptr noundef %189, ptr noundef nonnull @rockchip_regmap_config, ptr noundef null, ptr noundef null) #11
  store ptr %200, ptr %13, align 4
  %201 = load ptr, ptr %5, align 4
  %202 = getelementptr inbounds %struct.resource, ptr %201, i32 0, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = load i32, ptr %201, align 4
  %205 = add i32 %203, 1
  %206 = sub i32 %205, %204
  %207 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 1
  store i32 %206, ptr %207, align 4
  %208 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %20, i32 0, i32 4
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 5
  %211 = icmp slt i32 %206, 512
  %212 = select i1 %210, i1 %211, i1 false
  br i1 %212, label %213, label %227

213:                                              ; preds = %193
  %214 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %5) #11
  %215 = icmp ugt ptr %214, inttoptr (i32 -4096 to ptr)
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = ptrtoint ptr %214 to i32
  br label %531

218:                                              ; preds = %213
  %219 = load ptr, ptr %5, align 4
  %220 = getelementptr inbounds %struct.resource, ptr %219, i32 0, i32 1
  %221 = load i32, ptr %220, align 4
  %222 = load i32, ptr %219, align 4
  %223 = add i32 %221, -3
  %224 = sub i32 %223, %222
  store i32 %224, ptr getelementptr inbounds (%struct.regmap_config, ptr @rockchip_regmap_config, i32 0, i32 19), align 4
  store ptr @.str.5, ptr @rockchip_regmap_config, align 4
  %225 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %6, ptr noundef null, ptr noundef %214, ptr noundef nonnull @rockchip_regmap_config, ptr noundef null, ptr noundef null) #11
  %226 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 2
  store ptr %225, ptr %226, align 4
  br label %227

227:                                              ; preds = %218, %193, %183
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #11, !annotation !8
  %228 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %8, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #11
  %229 = icmp ne i32 %228, 0
  %230 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #11
  %231 = icmp eq ptr %230, null
  %232 = select i1 %229, i1 true, i1 %231
  br i1 %232, label %239, label %233

233:                                              ; preds = %227
  %234 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %230) #11
  %235 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 3
  store ptr %234, ptr %235, align 4
  %236 = icmp ugt ptr %234, inttoptr (i32 -4096 to ptr)
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = ptrtoint ptr %234 to i32
  br label %531

239:                                              ; preds = %233, %227
  %240 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 6
  store ptr @.str, ptr %240, align 4
  %241 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 6, i32 6
  store ptr null, ptr %241, align 4
  %242 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 6, i32 3
  store ptr @rockchip_pctrl_ops, ptr %242, align 4
  %243 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 6, i32 4
  store ptr @rockchip_pmx_ops, ptr %243, align 4
  %244 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 6, i32 5
  store ptr @rockchip_pinconf_ops, ptr %244, align 4
  %245 = load ptr, ptr %177, align 4
  %246 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %245, i32 0, i32 2
  %247 = load i32, ptr %246, align 4
  %248 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %247, i32 12) #11
  %249 = extractvalue { i32, i1 } %248, 1
  br i1 %249, label %531, label %250, !prof !9

250:                                              ; preds = %239
  %251 = extractvalue { i32, i1 } %248, 0
  %252 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %251, i32 noundef 3520) #11
  %253 = icmp eq ptr %252, null
  br i1 %253, label %531, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 6, i32 1
  store ptr %252, ptr %255, align 4
  %256 = load ptr, ptr %177, align 4
  %257 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %256, i32 0, i32 2
  %258 = load i32, ptr %257, align 4
  %259 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 6, i32 2
  store i32 %258, ptr %259, align 4
  %260 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %256, i32 0, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %305, label %263

263:                                              ; preds = %294, %254
  %264 = phi ptr [ %301, %294 ], [ %256, %254 ]
  %265 = phi i32 [ %296, %294 ], [ 0, %254 ]
  %266 = phi i32 [ %300, %294 ], [ 0, %254 ]
  %267 = phi ptr [ %295, %294 ], [ %252, %254 ]
  %268 = load ptr, ptr %264, align 4
  %269 = getelementptr %struct.rockchip_pin_bank, ptr %268, i32 %266, i32 9
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr %struct.rockchip_pin_bank, ptr %268, i32 %266, i32 8
  %272 = load i8, ptr %271, align 4
  %273 = zext i8 %272 to i32
  %274 = call ptr @devm_kasprintf_strarray(ptr noundef %6, ptr noundef %270, i32 noundef %273) #11
  %275 = icmp ugt ptr %274, inttoptr (i32 -4096 to ptr)
  br i1 %275, label %279, label %276

276:                                              ; preds = %263
  %277 = load i8, ptr %271, align 4
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %294, label %281

279:                                              ; preds = %263
  %280 = ptrtoint ptr %274 to i32
  br label %522

281:                                              ; preds = %281, %276
  %282 = phi i32 [ %290, %281 ], [ %265, %276 ]
  %283 = phi i32 [ %289, %281 ], [ 0, %276 ]
  %284 = phi ptr [ %288, %281 ], [ %267, %276 ]
  store i32 %282, ptr %284, align 4
  %285 = getelementptr ptr, ptr %274, i32 %283
  %286 = load ptr, ptr %285, align 4
  %287 = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %284, i32 0, i32 1
  store ptr %286, ptr %287, align 4
  %288 = getelementptr %struct.pinctrl_pin_desc, ptr %284, i32 1
  %289 = add nuw nsw i32 %283, 1
  %290 = add i32 %282, 1
  %291 = load i8, ptr %271, align 4
  %292 = zext i8 %291 to i32
  %293 = icmp ult i32 %289, %292
  br i1 %293, label %281, label %294

294:                                              ; preds = %281, %276
  %295 = phi ptr [ %267, %276 ], [ %288, %281 ]
  %296 = phi i32 [ %265, %276 ], [ %290, %281 ]
  %297 = getelementptr %struct.rockchip_pin_bank, ptr %268, i32 %266, i32 26
  store volatile ptr %297, ptr %297, align 4
  %298 = getelementptr %struct.rockchip_pin_bank, ptr %268, i32 %266, i32 26, i32 1
  store ptr %297, ptr %298, align 4
  %299 = getelementptr %struct.rockchip_pin_bank, ptr %268, i32 %266, i32 27
  call void @__mutex_init(ptr noundef %299, ptr noundef nonnull @.str.8, ptr noundef nonnull @rockchip_pinctrl_register.__key) #11
  %300 = add nuw i32 %266, 1
  %301 = load ptr, ptr %177, align 4
  %302 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %301, i32 0, i32 1
  %303 = load i32, ptr %302, align 4
  %304 = icmp ult i32 %300, %303
  br i1 %304, label %263, label %305

305:                                              ; preds = %294, %254
  %306 = load ptr, ptr %7, align 8
  %307 = call ptr @of_get_next_child(ptr noundef %306, ptr noundef null) #11
  %308 = icmp eq ptr %307, null
  br i1 %308, label %334, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 11
  %311 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 9
  br label %312

312:                                              ; preds = %331, %309
  %313 = phi ptr [ %307, %309 ], [ %332, %331 ]
  %314 = call ptr @of_match_node(ptr noundef nonnull @rockchip_bank_match, ptr noundef nonnull %313) #11
  %315 = icmp eq ptr %314, null
  br i1 %315, label %316, label %331

316:                                              ; preds = %312
  %317 = load i32, ptr %310, align 4
  %318 = add i32 %317, 1
  store i32 %318, ptr %310, align 4
  %319 = call ptr @of_get_next_child(ptr noundef nonnull %313, ptr noundef null) #11
  %320 = icmp eq ptr %319, null
  br i1 %320, label %327, label %321

321:                                              ; preds = %321, %316
  %322 = phi i32 [ %324, %321 ], [ 0, %316 ]
  %323 = phi ptr [ %325, %321 ], [ %319, %316 ]
  %324 = add i32 %322, 1
  %325 = call ptr @of_get_next_child(ptr noundef nonnull %313, ptr noundef nonnull %323) #11
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %321

327:                                              ; preds = %321, %316
  %328 = phi i32 [ 0, %316 ], [ %324, %321 ]
  %329 = load i32, ptr %311, align 4
  %330 = add i32 %329, %328
  store i32 %330, ptr %311, align 4
  br label %331

331:                                              ; preds = %327, %312
  %332 = call ptr @of_get_next_child(ptr noundef %306, ptr noundef nonnull %313) #11
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %312

334:                                              ; preds = %331, %305
  %335 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 11
  %336 = load i32, ptr %335, align 4
  %337 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %336, i32 12) #11
  %338 = extractvalue { i32, i1 } %337, 1
  br i1 %338, label %339, label %341, !prof !9

339:                                              ; preds = %334
  %340 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 10
  store ptr null, ptr %340, align 4
  br label %531

341:                                              ; preds = %334
  %342 = extractvalue { i32, i1 } %337, 0
  %343 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %342, i32 noundef 3520) #11
  %344 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 10
  store ptr %343, ptr %344, align 4
  %345 = icmp eq ptr %343, null
  br i1 %345, label %531, label %346

346:                                              ; preds = %341
  %347 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 9
  %348 = load i32, ptr %347, align 4
  %349 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %348, i32 16) #11
  %350 = extractvalue { i32, i1 } %349, 1
  br i1 %350, label %351, label %353, !prof !9

351:                                              ; preds = %346
  %352 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 8
  store ptr null, ptr %352, align 4
  br label %531

353:                                              ; preds = %346
  %354 = extractvalue { i32, i1 } %349, 0
  %355 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %354, i32 noundef 3520) #11
  %356 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 8
  store ptr %355, ptr %356, align 4
  %357 = icmp eq ptr %355, null
  br i1 %357, label %531, label %358

358:                                              ; preds = %353
  %359 = call ptr @of_get_next_child(ptr noundef %306, ptr noundef null) #11
  %360 = icmp eq ptr %359, null
  br i1 %360, label %515, label %361

361:                                              ; preds = %511, %358
  %362 = phi i32 [ %512, %511 ], [ 0, %358 ]
  %363 = phi ptr [ %513, %511 ], [ %359, %358 ]
  %364 = call ptr @of_match_node(ptr noundef nonnull @rockchip_bank_match, ptr noundef nonnull %363) #11
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %511

366:                                              ; preds = %361
  %367 = add i32 %362, 1
  %368 = load ptr, ptr %16, align 4
  %369 = load ptr, ptr %344, align 4
  %370 = getelementptr %struct.rockchip_pmx_func, ptr %369, i32 %362
  %371 = load ptr, ptr %363, align 4
  store ptr %371, ptr %370, align 4
  %372 = call ptr @of_get_next_child(ptr noundef nonnull %363, ptr noundef null) #11
  %373 = icmp eq ptr %372, null
  br i1 %373, label %374, label %376

374:                                              ; preds = %366
  %375 = getelementptr %struct.rockchip_pmx_func, ptr %369, i32 %362, i32 2
  store i8 0, ptr %375, align 4
  br label %511

376:                                              ; preds = %376, %366
  %377 = phi i32 [ %379, %376 ], [ 0, %366 ]
  %378 = phi ptr [ %380, %376 ], [ %372, %366 ]
  %379 = add i32 %377, 1
  %380 = call ptr @of_get_next_child(ptr noundef nonnull %363, ptr noundef nonnull %378) #11
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %376

382:                                              ; preds = %376
  %383 = trunc i32 %379 to i8
  %384 = getelementptr %struct.rockchip_pmx_func, ptr %369, i32 %362, i32 2
  store i8 %383, ptr %384, align 4
  %385 = and i32 %379, 255
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %511, label %387

387:                                              ; preds = %382
  %388 = shl nuw nsw i32 %385, 2
  %389 = call noalias ptr @devm_kmalloc(ptr noundef %368, i32 noundef %388, i32 noundef 3520) #11
  %390 = getelementptr %struct.rockchip_pmx_func, ptr %369, i32 %362, i32 1
  store ptr %389, ptr %390, align 4
  %391 = icmp eq ptr %389, null
  br i1 %391, label %509, label %392

392:                                              ; preds = %387
  %393 = call ptr @of_get_next_child(ptr noundef nonnull %363, ptr noundef null) #11
  %394 = icmp eq ptr %393, null
  br i1 %394, label %511, label %395

395:                                              ; preds = %505, %392
  %396 = phi i32 [ %506, %505 ], [ 0, %392 ]
  %397 = phi ptr [ %507, %505 ], [ %393, %392 ]
  %398 = load ptr, ptr %397, align 4
  %399 = load ptr, ptr %390, align 4
  %400 = getelementptr ptr, ptr %399, i32 %396
  store ptr %398, ptr %400, align 4
  %401 = load ptr, ptr %356, align 4
  %402 = load i32, ptr @rockchip_pinctrl_parse_functions.grp_index, align 4
  %403 = add i32 %402, 1
  store i32 %403, ptr @rockchip_pinctrl_parse_functions.grp_index, align 4
  %404 = getelementptr %struct.rockchip_pin_group, ptr %401, i32 %402
  %405 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %406 = load ptr, ptr %397, align 4
  store ptr %406, ptr %404, align 4
  %407 = call ptr @of_get_property(ptr noundef nonnull %397, ptr noundef nonnull @.str.19, ptr noundef nonnull %2) #11
  %408 = load i32, ptr %2, align 4
  %409 = lshr i32 %408, 2
  store i32 %409, ptr %2, align 4
  %410 = icmp ugt i32 %408, 3
  %411 = and i32 %408, 12
  %412 = icmp eq i32 %411, 0
  %413 = and i1 %410, %412
  br i1 %413, label %416, label %414

414:                                              ; preds = %395
  %415 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %405, i32 noundef -22, ptr noundef nonnull @.str.20) #11
  br label %500

416:                                              ; preds = %395
  %417 = lshr i32 %408, 4
  %418 = getelementptr %struct.rockchip_pin_group, ptr %401, i32 %402, i32 1
  store i32 %417, ptr %418, align 4
  %419 = shl nuw nsw i32 %417, 2
  %420 = call noalias ptr @devm_kmalloc(ptr noundef %405, i32 noundef %419, i32 noundef 3520) #11
  %421 = getelementptr %struct.rockchip_pin_group, ptr %401, i32 %402, i32 2
  store ptr %420, ptr %421, align 4
  %422 = load i32, ptr %418, align 4
  %423 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %422, i32 12) #11
  %424 = extractvalue { i32, i1 } %423, 1
  br i1 %424, label %425, label %427, !prof !9

425:                                              ; preds = %416
  %426 = getelementptr %struct.rockchip_pin_group, ptr %401, i32 %402, i32 3
  store ptr null, ptr %426, align 4
  br label %497

427:                                              ; preds = %416
  %428 = extractvalue { i32, i1 } %423, 0
  %429 = call noalias ptr @devm_kmalloc(ptr noundef %405, i32 noundef %428, i32 noundef 3520) #11
  %430 = getelementptr %struct.rockchip_pin_group, ptr %401, i32 %402, i32 3
  store ptr %429, ptr %430, align 4
  %431 = load ptr, ptr %421, align 4
  %432 = icmp eq ptr %431, null
  %433 = icmp eq ptr %429, null
  %434 = select i1 %432, i1 true, i1 %433
  br i1 %434, label %497, label %435

435:                                              ; preds = %427
  %436 = load i32, ptr %2, align 4
  %437 = icmp sgt i32 %436, 0
  br i1 %437, label %438, label %499

438:                                              ; preds = %492, %435
  %439 = phi i32 [ %494, %492 ], [ 0, %435 ]
  %440 = phi i32 [ %493, %492 ], [ 0, %435 ]
  %441 = phi ptr [ %481, %492 ], [ %407, %435 ]
  %442 = getelementptr i32, ptr %441, i32 1
  %443 = load i32, ptr %441, align 4
  %444 = call i32 @llvm.bswap.i32(i32 %443) #11
  %445 = load ptr, ptr %177, align 4
  %446 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %445, i32 0, i32 1
  %447 = load i32, ptr %446, align 4
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %464, label %449

449:                                              ; preds = %438
  %450 = load ptr, ptr %445, align 4
  br label %451

451:                                              ; preds = %458, %449
  %452 = phi i32 [ %459, %458 ], [ 0, %449 ]
  %453 = phi ptr [ %460, %458 ], [ %450, %449 ]
  %454 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %453, i32 0, i32 10
  %455 = load i8, ptr %454, align 4
  %456 = zext i8 %455 to i32
  %457 = icmp eq i32 %444, %456
  br i1 %457, label %462, label %458

458:                                              ; preds = %451
  %459 = add nuw i32 %452, 1
  %460 = getelementptr %struct.rockchip_pin_bank, ptr %453, i32 1
  %461 = icmp eq i32 %459, %447
  br i1 %461, label %464, label %451

462:                                              ; preds = %451
  %463 = icmp ugt ptr %453, inttoptr (i32 -4096 to ptr)
  br i1 %463, label %464, label %467

464:                                              ; preds = %462, %458, %438
  %465 = phi ptr [ inttoptr (i32 -22 to ptr), %458 ], [ inttoptr (i32 -22 to ptr), %438 ], [ %453, %462 ]
  %466 = ptrtoint ptr %465 to i32
  br label %500

467:                                              ; preds = %462
  %468 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %453, i32 0, i32 7
  %469 = load i32, ptr %468, align 4
  %470 = getelementptr i32, ptr %441, i32 2
  %471 = load i32, ptr %442, align 4
  %472 = call i32 @llvm.bswap.i32(i32 %471) #11
  %473 = add i32 %472, %469
  %474 = load ptr, ptr %421, align 4
  %475 = getelementptr i32, ptr %474, i32 %439
  store i32 %473, ptr %475, align 4
  %476 = getelementptr i32, ptr %441, i32 3
  %477 = load i32, ptr %470, align 4
  %478 = call i32 @llvm.bswap.i32(i32 %477) #11
  %479 = load ptr, ptr %430, align 4
  %480 = getelementptr %struct.rockchip_pin_config, ptr %479, i32 %439
  store i32 %478, ptr %480, align 4
  %481 = getelementptr i32, ptr %441, i32 4
  %482 = icmp eq ptr %476, null
  br i1 %482, label %497, label %483

483:                                              ; preds = %467
  %484 = load i32, ptr %476, align 4
  %485 = call i32 @llvm.bswap.i32(i32 %484) #11
  %486 = call ptr @of_find_node_by_phandle(i32 noundef %485) #11
  %487 = load ptr, ptr %430, align 4
  %488 = getelementptr %struct.rockchip_pin_config, ptr %487, i32 %439, i32 1
  %489 = getelementptr %struct.rockchip_pin_config, ptr %487, i32 %439, i32 2
  %490 = call i32 @pinconf_generic_parse_dt_config(ptr noundef %486, ptr noundef null, ptr noundef %488, ptr noundef %489) #11
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %497

492:                                              ; preds = %483
  %493 = add i32 %440, 4
  %494 = add i32 %439, 1
  %495 = load i32, ptr %2, align 4
  %496 = icmp slt i32 %493, %495
  br i1 %496, label %438, label %499

497:                                              ; preds = %483, %467, %427, %425
  %498 = phi i32 [ -12, %425 ], [ -22, %467 ], [ %490, %483 ], [ -12, %427 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %503

499:                                              ; preds = %492, %435
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %505

500:                                              ; preds = %464, %414
  %501 = phi i32 [ %415, %414 ], [ %466, %464 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %505, label %503

503:                                              ; preds = %500, %497
  %504 = phi i32 [ %498, %497 ], [ %501, %500 ]
  call void @of_node_put(ptr noundef nonnull %397) #11
  br label %509

505:                                              ; preds = %500, %499
  %506 = add i32 %396, 1
  %507 = call ptr @of_get_next_child(ptr noundef nonnull %363, ptr noundef nonnull %397) #11
  %508 = icmp eq ptr %507, null
  br i1 %508, label %511, label %395

509:                                              ; preds = %503, %387
  %510 = phi i32 [ %504, %503 ], [ -12, %387 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18) #12
  call void @of_node_put(ptr noundef nonnull %363) #11
  br label %531

511:                                              ; preds = %505, %392, %382, %374, %361
  %512 = phi i32 [ %362, %361 ], [ %367, %382 ], [ %367, %374 ], [ %367, %392 ], [ %367, %505 ]
  %513 = call ptr @of_get_next_child(ptr noundef %306, ptr noundef nonnull %363) #11
  %514 = icmp eq ptr %513, null
  br i1 %514, label %515, label %361

515:                                              ; preds = %511, %358
  %516 = call ptr @devm_pinctrl_register(ptr noundef %6, ptr noundef %240, ptr noundef %13) #11
  %517 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %13, i32 0, i32 7
  store ptr %516, ptr %517, align 4
  %518 = icmp ugt ptr %516, inttoptr (i32 -4096 to ptr)
  br i1 %518, label %519, label %525

519:                                              ; preds = %515
  %520 = ptrtoint ptr %516 to i32
  %521 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %6, i32 noundef %520, ptr noundef nonnull @.str.9) #11
  br label %522

522:                                              ; preds = %519, %279
  %523 = phi i32 [ %280, %279 ], [ %521, %519 ]
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %531

525:                                              ; preds = %522, %515
  %526 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %526, align 8
  %527 = call i32 @of_platform_populate(ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef %6) #11
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %531, label %529

529:                                              ; preds = %525
  %530 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %6, i32 noundef %527, ptr noundef nonnull @.str.7) #11
  br label %531

531:                                              ; preds = %529, %525, %522, %509, %353, %351, %341, %339, %250, %239, %237, %216, %191, %186, %174, %12, %10
  %532 = phi i32 [ %187, %186 ], [ %238, %237 ], [ %530, %529 ], [ %192, %191 ], [ %217, %216 ], [ %175, %174 ], [ %11, %10 ], [ -12, %12 ], [ %523, %522 ], [ 0, %525 ], [ %510, %509 ], [ -12, %341 ], [ -12, %353 ], [ -12, %339 ], [ -12, %351 ], [ -12, %239 ], [ -12, %250 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %532
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_pinctrl_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @of_platform_depopulate(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %3, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %26, %1
  %11 = phi ptr [ %28, %26 ], [ %6, %1 ]
  %12 = phi i32 [ %27, %26 ], [ 0, %1 ]
  %13 = load ptr, ptr %11, align 4
  %14 = getelementptr %struct.rockchip_pin_bank, ptr %13, i32 %12, i32 27
  tail call void @mutex_lock(ptr noundef %14) #11
  %15 = getelementptr %struct.rockchip_pin_bank, ptr %13, i32 %12, i32 26
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %10
  %19 = phi ptr [ %24, %18 ], [ %16, %10 ]
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  tail call void @kfree(ptr noundef %19) #11
  %24 = load volatile ptr, ptr %15, align 4
  %25 = icmp eq ptr %24, %15
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %10
  tail call void @mutex_unlock(ptr noundef %14) #11
  %27 = add nuw i32 %12, 1
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %10, label %32

32:                                               ; preds = %26, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kasprintf_strarray(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_get_groups_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %2, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rockchip_get_group_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.rockchip_pin_group, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %5, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.rockchip_pin_group, ptr %11, i32 %1, i32 2
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr %struct.rockchip_pin_group, ptr %14, i32 %1, i32 1
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  br label %17

17:                                               ; preds = %9, %4
  %18 = phi i32 [ 0, %9 ], [ -22, %4 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %5, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %5, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  br label %18

15:                                               ; preds = %18
  %16 = add nuw i32 %19, 1
  %17 = icmp eq i32 %16, %10
  br i1 %17, label %26, label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ 0, %12 ], [ %16, %15 ]
  %20 = getelementptr %struct.rockchip_pin_group, ptr %14, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @strcmp(ptr noundef %21, ptr noundef %8) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %15

24:                                               ; preds = %18
  %25 = icmp eq ptr %20, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %24, %15, %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef %1) #12
  br label %73

27:                                               ; preds = %24
  %28 = getelementptr %struct.rockchip_pin_group, ptr %14, i32 %19, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 28) #11
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %73, label %33, !prof !9

33:                                               ; preds = %27
  %34 = extractvalue { i32, i1 } %31, 0
  %35 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %34, i32 noundef 3520) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %73, label %37

37:                                               ; preds = %33
  store ptr %35, ptr %2, align 4
  store i32 %30, ptr %3, align 4
  %38 = tail call ptr @of_get_parent(ptr noundef %1) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  tail call void @kfree(ptr noundef nonnull %35) #11
  br label %73

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.pinctrl_map, ptr %35, i32 0, i32 2
  store i32 2, ptr %42, align 8
  %43 = load ptr, ptr %38, align 4
  %44 = getelementptr inbounds %struct.pinctrl_map, ptr %35, i32 0, i32 4
  %45 = getelementptr inbounds %struct.pinctrl_map, ptr %35, i32 0, i32 4, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  %46 = load ptr, ptr %1, align 4
  store ptr %46, ptr %44, align 16
  tail call void @of_node_put(ptr noundef nonnull %38) #11
  %47 = getelementptr %struct.pinctrl_map, ptr %35, i32 1
  %48 = load i32, ptr %28, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %41
  %51 = getelementptr %struct.rockchip_pin_group, ptr %14, i32 %19, i32 2
  %52 = getelementptr %struct.rockchip_pin_group, ptr %14, i32 %19, i32 3
  br label %53

53:                                               ; preds = %53, %50
  %54 = phi i32 [ 0, %50 ], [ %70, %53 ]
  %55 = getelementptr %struct.pinctrl_map, ptr %47, i32 %54
  %56 = getelementptr inbounds %struct.pinctrl_map, ptr %55, i32 0, i32 2
  store i32 3, ptr %56, align 4
  %57 = load ptr, ptr %51, align 4
  %58 = getelementptr i32, ptr %57, i32 %54
  %59 = load i32, ptr %58, align 4
  %60 = tail call ptr @pin_get_name(ptr noundef %0, i32 noundef %59) #11
  %61 = getelementptr inbounds %struct.pinctrl_map, ptr %55, i32 0, i32 4
  store ptr %60, ptr %61, align 4
  %62 = load ptr, ptr %52, align 4
  %63 = getelementptr %struct.rockchip_pin_config, ptr %62, i32 %54, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.pinctrl_map_configs, ptr %61, i32 0, i32 1
  store ptr %64, ptr %65, align 4
  %66 = load ptr, ptr %52, align 4
  %67 = getelementptr %struct.rockchip_pin_config, ptr %66, i32 %54, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.pinctrl_map_configs, ptr %61, i32 0, i32 2
  store i32 %68, ptr %69, align 4
  %70 = add nuw i32 %54, 1
  %71 = load i32, ptr %28, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %53, label %73

73:                                               ; preds = %53, %41, %40, %33, %27, %26
  %74 = phi i32 [ -22, %40 ], [ -22, %26 ], [ -12, %33 ], [ -12, %27 ], [ 0, %41 ], [ 0, %53 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_dt_free_map(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #2 {
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pin_get_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_pmx_get_funcs_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %2, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rockchip_pmx_get_func_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.rockchip_pmx_func, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_pmx_get_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.rockchip_pmx_func, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.rockchip_pmx_func, ptr %10, i32 %1, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  store i32 %13, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_pmx_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.rockchip_pin_group, ptr %6, i32 %2, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.rockchip_pin_group, ptr %6, i32 %2, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.rockchip_pin_group, ptr %6, i32 %2, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %57, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %4, i32 0, i32 5
  br label %16

16:                                               ; preds = %42, %14
  %17 = phi i32 [ 0, %14 ], [ %43, %42 ]
  %18 = getelementptr i32, ptr %8, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %15, align 4
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %22, %16
  %23 = phi ptr [ %21, %16 ], [ %31, %22 ]
  %24 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %23, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %23, i32 0, i32 8
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = add i32 %25, %28
  %30 = icmp ugt i32 %29, %19
  %31 = getelementptr %struct.rockchip_pin_bank, ptr %23, i32 1
  br i1 %30, label %32, label %22

32:                                               ; preds = %22
  %33 = sub i32 %19, %25
  %34 = getelementptr %struct.rockchip_pin_config, ptr %10, i32 %17
  %35 = load i32, ptr %34, align 4
  %36 = tail call fastcc i32 @rockchip_set_mux(ptr noundef %23, i32 noundef %33, i32 noundef %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %23, i32 0, i32 7
  %40 = add i32 %17, -1
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %48, label %57

42:                                               ; preds = %32
  %43 = add nuw i32 %17, 1
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr %struct.rockchip_pin_group, ptr %44, i32 %2, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %16, label %57

48:                                               ; preds = %48, %38
  %49 = phi i32 [ %55, %48 ], [ %40, %38 ]
  %50 = getelementptr i32, ptr %8, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = load i32, ptr %39, align 4
  %53 = sub i32 %51, %52
  %54 = tail call fastcc i32 @rockchip_set_mux(ptr noundef %23, i32 noundef %53, i32 noundef 0)
  %55 = add nsw i32 %49, -1
  %56 = icmp sgt i32 %49, 0
  br i1 %56, label %48, label %57

57:                                               ; preds = %48, %42, %38, %3
  %58 = phi i32 [ %36, %38 ], [ 0, %3 ], [ %36, %48 ], [ 0, %42 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_set_mux(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp sgt i32 %1, 31
  br i1 %8, label %164, label %9

9:                                                ; preds = %3
  %10 = sdiv i32 %1, 8
  %11 = getelementptr %struct.rockchip_pin_bank, ptr %0, i32 0, i32 11, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = and i32 %12, 1
  %17 = icmp ne i32 %16, 0
  %18 = icmp ne i32 %2, 0
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %9
  %21 = phi ptr [ @.str.11, %9 ], [ @.str.12, %15 ]
  %22 = phi i32 [ -22, %9 ], [ -524, %15 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull %21, i32 noundef %1) #12
  br label %164

23:                                               ; preds = %15
  %24 = icmp eq i32 %16, 0
  br i1 %24, label %25, label %164

25:                                               ; preds = %23
  %26 = and i32 %12, 4
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %5, i32 0, i32 3
  %29 = select i1 %27, ptr %5, ptr %28
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr %struct.rockchip_pin_bank, ptr %0, i32 0, i32 11, i32 %10, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %12, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %25
  %36 = srem i32 %1, 8
  %37 = icmp sgt i32 %36, 3
  %38 = add i32 %32, 4
  %39 = select i1 %37, i32 %38, i32 %32
  %40 = srem i32 %1, 4
  %41 = trunc i32 %40 to i8
  %42 = shl nsw i8 %41, 2
  br label %58

43:                                               ; preds = %25
  %44 = and i32 %12, 16
  %45 = icmp eq i32 %44, 0
  %46 = mul i32 %10, 8
  %47 = sub i32 %1, %46
  br i1 %45, label %55, label %48

48:                                               ; preds = %43
  %49 = icmp sgt i32 %47, 4
  %50 = add i32 %32, 4
  %51 = select i1 %49, i32 %50, i32 %32
  %52 = trunc i32 %47 to i8
  %53 = srem i8 %52, 5
  %54 = mul nsw i8 %53, 3
  br label %58

55:                                               ; preds = %43
  %56 = trunc i32 %47 to i8
  %57 = shl nsw i8 %56, 1
  br label %58

58:                                               ; preds = %55, %48, %35
  %59 = phi i32 [ %32, %55 ], [ %51, %48 ], [ %39, %35 ]
  %60 = phi i32 [ 3, %55 ], [ 7, %48 ], [ 15, %35 ]
  %61 = phi i8 [ %57, %55 ], [ %54, %48 ], [ %42, %35 ]
  %62 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 24
  %63 = load i32, ptr %62, align 4
  %64 = shl nuw i32 1, %1
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %99, label %67

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %5, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %69, i32 0, i32 10
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %99, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %69, i32 0, i32 9
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %77 = load i8, ptr %76, align 4
  br label %78

78:                                               ; preds = %88, %73
  %79 = phi i32 [ 0, %73 ], [ %89, %88 ]
  %80 = getelementptr %struct.rockchip_mux_recalced_data, ptr %75, i32 %79
  %81 = load i8, ptr %80, align 4
  %82 = icmp eq i8 %81, %77
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = getelementptr %struct.rockchip_mux_recalced_data, ptr %75, i32 %79, i32 1
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, %1
  br i1 %87, label %91, label %88

88:                                               ; preds = %83, %78
  %89 = add nuw i32 %79, 1
  %90 = icmp eq i32 %89, %71
  br i1 %90, label %99, label %78

91:                                               ; preds = %83
  %92 = getelementptr %struct.rockchip_mux_recalced_data, ptr %75, i32 %79, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr %struct.rockchip_mux_recalced_data, ptr %75, i32 %79, i32 4
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = getelementptr %struct.rockchip_mux_recalced_data, ptr %75, i32 %79, i32 3
  %98 = load i8, ptr %97, align 4
  br label %99

99:                                               ; preds = %91, %88, %67, %58
  %100 = phi i32 [ %59, %58 ], [ %59, %67 ], [ %93, %91 ], [ %59, %88 ]
  %101 = phi i32 [ %60, %58 ], [ %60, %67 ], [ %96, %91 ], [ %60, %88 ]
  %102 = phi i8 [ %61, %58 ], [ %61, %67 ], [ %98, %91 ], [ %61, %88 ]
  %103 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 25
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, %64
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %154, label %107

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %5, i32 0, i32 5
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %109, i32 0, i32 12
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %154, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %109, i32 0, i32 11
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %117 = load i8, ptr %116, align 4
  br label %118

118:                                              ; preds = %134, %113
  %119 = phi i1 [ true, %113 ], [ %136, %134 ]
  %120 = phi i32 [ 0, %113 ], [ %135, %134 ]
  %121 = getelementptr %struct.rockchip_mux_route_data, ptr %115, i32 %120
  %122 = load i8, ptr %121, align 4
  %123 = icmp eq i8 %122, %117
  br i1 %123, label %124, label %134

124:                                              ; preds = %118
  %125 = getelementptr %struct.rockchip_mux_route_data, ptr %115, i32 %120, i32 1
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, %1
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = getelementptr %struct.rockchip_mux_route_data, ptr %115, i32 %120, i32 2
  %131 = load i8, ptr %130, align 2
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, %2
  br i1 %133, label %138, label %134

134:                                              ; preds = %129, %124, %118
  %135 = add nuw i32 %120, 1
  %136 = icmp ult i32 %135, %111
  %137 = icmp eq i32 %135, %111
  br i1 %137, label %154, label %118

138:                                              ; preds = %129
  %139 = getelementptr %struct.rockchip_mux_route_data, ptr %115, i32 %120, i32 4
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr %struct.rockchip_mux_route_data, ptr %115, i32 %120, i32 5
  %142 = load i32, ptr %141, align 4
  br i1 %119, label %143, label %154

143:                                              ; preds = %138
  %144 = getelementptr %struct.rockchip_mux_route_data, ptr %115, i32 %120, i32 3
  %145 = load i32, ptr %144, align 4
  switch i32 %145, label %150 [
    i32 1, label %147
    i32 2, label %146
  ]

146:                                              ; preds = %143
  br label %147

147:                                              ; preds = %146, %143
  %148 = phi ptr [ %5, %146 ], [ %28, %143 ]
  %149 = load ptr, ptr %148, align 4
  br label %150

150:                                              ; preds = %147, %143
  %151 = phi ptr [ %30, %143 ], [ %149, %147 ]
  %152 = tail call i32 @regmap_write(ptr noundef %151, i32 noundef %140, i32 noundef %142) #11
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %150, %138, %134, %107, %99
  %155 = zext i8 %102 to i32
  %156 = add nuw nsw i32 %155, 16
  %157 = shl i32 %101, %156
  %158 = lshr i32 %157, 16
  %159 = or i32 %158, %157
  %160 = and i32 %101, %2
  %161 = shl i32 %160, %155
  %162 = or i32 %157, %161
  %163 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %100, i32 noundef %159, i32 noundef %162, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %164

164:                                              ; preds = %154, %150, %23, %20, %3
  %165 = phi i32 [ %163, %154 ], [ %152, %150 ], [ 0, %23 ], [ %22, %20 ], [ -22, %3 ]
  ret i32 %165
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_pinconf_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %15 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %18, %3
  %19 = phi ptr [ %17, %3 ], [ %27, %18 ]
  %20 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %19, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %19, i32 0, i32 8
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = add i32 %21, %24
  %26 = icmp ugt i32 %25, %1
  %27 = getelementptr %struct.rockchip_pin_bank, ptr %19, i32 1
  br i1 %26, label %28, label %18

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %19, i32 0, i32 7
  %30 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %19, i32 0, i32 18
  %31 = load i32, ptr %2, align 4
  %32 = and i32 %31, 255
  %33 = trunc i32 %31 to i8
  switch i8 %33, label %273 [
    i8 1, label %34
    i8 5, label %38
    i8 3, label %38
    i8 4, label %38
    i8 0, label %38
    i8 17, label %50
    i8 9, label %170
    i8 14, label %236
  ]

34:                                               ; preds = %28
  %35 = sub i32 %1, %21
  %36 = tail call fastcc i32 @rockchip_get_pull(ptr noundef %19, i32 noundef %35)
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %268, label %273

38:                                               ; preds = %28, %28, %28, %28
  %39 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %16, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  switch i32 %40, label %273 [
    i32 2, label %45
    i32 4, label %45
    i32 3, label %41
    i32 0, label %43
    i32 1, label %43
    i32 5, label %43
    i32 6, label %43
    i32 7, label %43
    i32 8, label %43
    i32 9, label %43
    i32 10, label %43
  ]

41:                                               ; preds = %38
  %42 = icmp eq i32 %32, 0
  br i1 %42, label %46, label %273

43:                                               ; preds = %38, %38, %38, %38, %38, %38, %38, %38
  %44 = icmp eq i32 %32, 4
  br i1 %44, label %273, label %46

45:                                               ; preds = %38, %38
  switch i8 %33, label %273 [
    i8 4, label %46
    i8 1, label %46
  ]

46:                                               ; preds = %45, %45, %43, %41
  %47 = sub i32 %1, %21
  %48 = tail call fastcc i32 @rockchip_get_pull(ptr noundef %19, i32 noundef %47)
  %49 = icmp eq i32 %48, %32
  br i1 %49, label %268, label %273

50:                                               ; preds = %28
  %51 = sub i32 %1, %21
  %52 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %19, i32 0, i32 16
  %53 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #11
  store i32 0, ptr %13, align 4, !annotation !8
  %54 = icmp sgt i32 %51, 31
  br i1 %54, label %149, label %55

55:                                               ; preds = %50
  %56 = freeze i32 %51
  %57 = sdiv i32 %56, 8
  %58 = getelementptr %struct.rockchip_pin_bank, ptr %19, i32 0, i32 11, i32 %57
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %53, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.11, i32 noundef %51) #12
  br label %149

65:                                               ; preds = %55
  %66 = and i32 %59, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  br label %156

69:                                               ; preds = %65
  %70 = and i32 %59, 4
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %53, i32 0, i32 3
  %73 = select i1 %71, ptr %53, ptr %72
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr %struct.rockchip_pin_bank, ptr %19, i32 0, i32 11, i32 %57, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %59, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %69
  %80 = srem i32 %51, 8
  %81 = icmp sgt i32 %80, 3
  %82 = add i32 %76, 4
  %83 = select i1 %81, i32 %82, i32 %76
  %84 = srem i32 %51, 4
  %85 = trunc i32 %84 to i8
  %86 = shl nsw i8 %85, 2
  br label %102

87:                                               ; preds = %69
  %88 = and i32 %59, 16
  %89 = icmp eq i32 %88, 0
  %90 = mul i32 %57, 8
  %91 = sub i32 %56, %90
  br i1 %89, label %99, label %92

92:                                               ; preds = %87
  %93 = icmp sgt i32 %91, 4
  %94 = add i32 %76, 4
  %95 = select i1 %93, i32 %94, i32 %76
  %96 = trunc i32 %91 to i8
  %97 = srem i8 %96, 5
  %98 = mul nsw i8 %97, 3
  br label %102

99:                                               ; preds = %87
  %100 = trunc i32 %91 to i8
  %101 = shl nsw i8 %100, 1
  br label %102

102:                                              ; preds = %99, %92, %79
  %103 = phi i32 [ %76, %99 ], [ %95, %92 ], [ %83, %79 ]
  %104 = phi i32 [ 3, %99 ], [ 7, %92 ], [ 15, %79 ]
  %105 = phi i8 [ %101, %99 ], [ %98, %92 ], [ %86, %79 ]
  %106 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %19, i32 0, i32 24
  %107 = load i32, ptr %106, align 4
  %108 = shl nuw i32 1, %51
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %143, label %111

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %53, i32 0, i32 5
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %113, i32 0, i32 10
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %143, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %113, i32 0, i32 9
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %19, i32 0, i32 10
  %121 = load i8, ptr %120, align 4
  br label %122

122:                                              ; preds = %132, %117
  %123 = phi i32 [ 0, %117 ], [ %133, %132 ]
  %124 = getelementptr %struct.rockchip_mux_recalced_data, ptr %119, i32 %123
  %125 = load i8, ptr %124, align 4
  %126 = icmp eq i8 %125, %121
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = getelementptr %struct.rockchip_mux_recalced_data, ptr %119, i32 %123, i32 1
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %51, %130
  br i1 %131, label %135, label %132

132:                                              ; preds = %127, %122
  %133 = add nuw i32 %123, 1
  %134 = icmp eq i32 %133, %115
  br i1 %134, label %143, label %122

135:                                              ; preds = %127
  %136 = getelementptr %struct.rockchip_mux_recalced_data, ptr %119, i32 %123, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr %struct.rockchip_mux_recalced_data, ptr %119, i32 %123, i32 4
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = getelementptr %struct.rockchip_mux_recalced_data, ptr %119, i32 %123, i32 3
  %142 = load i8, ptr %141, align 4
  br label %143

143:                                              ; preds = %135, %132, %111, %102
  %144 = phi i32 [ %103, %102 ], [ %103, %111 ], [ %137, %135 ], [ %103, %132 ]
  %145 = phi i32 [ %104, %102 ], [ %104, %111 ], [ %140, %135 ], [ %104, %132 ]
  %146 = phi i8 [ %105, %102 ], [ %105, %111 ], [ %142, %135 ], [ %105, %132 ]
  %147 = call i32 @regmap_read(ptr noundef %74, i32 noundef %144, ptr noundef nonnull %13) #11
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %143, %62, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  br label %273

150:                                              ; preds = %143
  %151 = load i32, ptr %13, align 4
  %152 = zext i8 %146 to i32
  %153 = lshr i32 %151, %152
  %154 = and i32 %153, %145
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %273

156:                                              ; preds = %150, %68
  %157 = icmp eq ptr %30, null
  br i1 %157, label %268, label %158

158:                                              ; preds = %156
  %159 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %19, i32 0, i32 18, i32 10
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %268, label %162

162:                                              ; preds = %158
  %163 = load i32, ptr %29, align 4
  %164 = sub i32 %1, %163
  %165 = call i32 %160(ptr noundef nonnull %30, i32 noundef %164) #11
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %273, label %167

167:                                              ; preds = %162
  %168 = icmp ne i32 %165, 0
  %169 = zext i1 %168 to i32
  br label %268

170:                                              ; preds = %28
  %171 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %16, i32 0, i32 14
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %273, label %174

174:                                              ; preds = %170
  %175 = sub i32 %1, %21
  %176 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %19, i32 0, i32 16
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %177, i32 0, i32 5
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %177, i32 0, i32 4
  %181 = load ptr, ptr %180, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store ptr null, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 0, ptr %10, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  store i32 0, ptr %11, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #11
  store i8 0, ptr %12, align 1, !annotation !8
  %182 = sdiv i32 %175, 8
  %183 = getelementptr %struct.rockchip_pin_bank, ptr %19, i32 0, i32 12, i32 %182
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %179, i32 0, i32 14
  %186 = load ptr, ptr %185, align 4
  call void %186(ptr noundef %19, i32 noundef %175, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %12) #11
  switch i32 %184, label %213 [
    i32 3, label %187
    i32 4, label %187
    i32 0, label %214
    i32 1, label %214
    i32 2, label %214
  ]

187:                                              ; preds = %174, %174
  %188 = load i8, ptr %12, align 1
  switch i8 %188, label %211 [
    i8 0, label %214
    i8 1, label %214
    i8 2, label %214
    i8 3, label %214
    i8 4, label %214
    i8 5, label %214
    i8 6, label %214
    i8 7, label %214
    i8 8, label %214
    i8 9, label %214
    i8 10, label %214
    i8 11, label %214
    i8 12, label %214
    i8 15, label %189
    i8 18, label %207
    i8 19, label %207
    i8 20, label %207
    i8 21, label %207
  ]

189:                                              ; preds = %187
  %190 = load ptr, ptr %8, align 4
  %191 = load i32, ptr %9, align 4
  %192 = call i32 @regmap_read(ptr noundef %190, i32 noundef %191, ptr noundef nonnull %10) #11
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %233

194:                                              ; preds = %189
  %195 = load ptr, ptr %8, align 4
  %196 = load i32, ptr %9, align 4
  %197 = add i32 %196, 4
  %198 = call i32 @regmap_read(ptr noundef %195, i32 noundef %197, ptr noundef nonnull %11) #11
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %233

200:                                              ; preds = %194
  %201 = load i32, ptr %10, align 4
  %202 = lshr i32 %201, 15
  %203 = load i32, ptr %11, align 4
  %204 = shl i32 %203, 1
  %205 = and i32 %204, 6
  %206 = or i32 %205, %202
  br label %229

207:                                              ; preds = %187, %187, %187, %187
  %208 = load i32, ptr %9, align 4
  %209 = add i32 %208, 4
  store i32 %209, ptr %9, align 4
  %210 = add nsw i8 %188, -16
  store i8 %210, ptr %12, align 1
  br label %214

211:                                              ; preds = %187
  %212 = zext i8 %188 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.14, i32 noundef %212, i32 noundef %184) #12
  br label %228

213:                                              ; preds = %174
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.15, i32 noundef %184) #12
  br label %228

214:                                              ; preds = %207, %187, %187, %187, %187, %187, %187, %187, %187, %187, %187, %187, %187, %187, %174, %174, %174
  %215 = phi i32 [ 3, %207 ], [ 3, %187 ], [ 3, %187 ], [ 3, %187 ], [ 3, %187 ], [ 3, %187 ], [ 3, %187 ], [ 3, %187 ], [ 3, %187 ], [ 3, %187 ], [ 3, %187 ], [ 3, %187 ], [ 3, %187 ], [ 3, %187 ], [ 2, %174 ], [ 2, %174 ], [ 2, %174 ]
  %216 = load ptr, ptr %8, align 4
  %217 = load i32, ptr %9, align 4
  %218 = call i32 @regmap_read(ptr noundef %216, i32 noundef %217, ptr noundef nonnull %10) #11
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %233

220:                                              ; preds = %214
  %221 = load i8, ptr %12, align 1
  %222 = zext i8 %221 to i32
  %223 = load i32, ptr %10, align 4
  %224 = lshr i32 %223, %222
  %225 = shl nsw i32 -1, %215
  %226 = xor i32 %225, -1
  %227 = and i32 %224, %226
  br label %229

228:                                              ; preds = %213, %211
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  br label %273

229:                                              ; preds = %220, %200
  %230 = phi i32 [ %206, %200 ], [ %227, %220 ]
  %231 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %184, i32 %230
  %232 = load i32, ptr %231, align 4
  br label %233

233:                                              ; preds = %229, %214, %194, %189
  %234 = phi i32 [ %192, %189 ], [ %198, %194 ], [ %218, %214 ], [ %232, %229 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %273, label %268

236:                                              ; preds = %28
  %237 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %16, i32 0, i32 15
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %273, label %240

240:                                              ; preds = %236
  %241 = sub i32 %1, %21
  %242 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %19, i32 0, i32 16
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %243, i32 0, i32 5
  %245 = load ptr, ptr %244, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !8
  %246 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %245, i32 0, i32 15
  %247 = load ptr, ptr %246, align 4
  %248 = call i32 %247(ptr noundef %19, i32 noundef %241, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %265

250:                                              ; preds = %240
  %251 = load ptr, ptr %4, align 4
  %252 = load i32, ptr %5, align 4
  %253 = call i32 @regmap_read(ptr noundef %251, i32 noundef %252, ptr noundef nonnull %7) #11
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %265

255:                                              ; preds = %250
  %256 = load i8, ptr %6, align 1
  %257 = zext i8 %256 to i32
  %258 = load i32, ptr %7, align 4
  %259 = lshr i32 %258, %257
  %260 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %245, i32 0, i32 4
  %261 = load i32, ptr %260, align 4
  %262 = icmp eq i32 %261, 10
  %263 = select i1 %262, i32 3, i32 1
  %264 = and i32 %263, %259
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %268

265:                                              ; preds = %250, %240
  %266 = phi i32 [ %248, %240 ], [ %253, %250 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %273, label %268

268:                                              ; preds = %265, %255, %233, %167, %158, %156, %46, %34
  %269 = phi i32 [ %169, %167 ], [ 0, %34 ], [ 1, %46 ], [ 0, %158 ], [ 0, %156 ], [ %234, %233 ], [ %266, %265 ], [ %264, %255 ]
  %270 = shl i32 %269, 8
  %271 = and i32 %270, 16776960
  %272 = or i32 %271, %32
  store i32 %272, ptr %2, align 4
  br label %273

273:                                              ; preds = %268, %265, %236, %233, %228, %170, %162, %150, %149, %46, %45, %43, %41, %38, %34, %28
  %274 = phi i32 [ 0, %268 ], [ -22, %34 ], [ -524, %45 ], [ -22, %46 ], [ -22, %150 ], [ %165, %162 ], [ -524, %170 ], [ %234, %233 ], [ -524, %236 ], [ %266, %265 ], [ -524, %28 ], [ -524, %43 ], [ -524, %41 ], [ -22, %149 ], [ -22, %228 ], [ -524, %38 ]
  ret i32 %274
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_pinconf_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %12 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %15, %4
  %16 = phi ptr [ %14, %4 ], [ %24, %15 ]
  %17 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %16, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %16, i32 0, i32 8
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = add i32 %18, %21
  %23 = icmp ugt i32 %22, %1
  %24 = getelementptr %struct.rockchip_pin_bank, ptr %16, i32 1
  br i1 %23, label %25, label %15

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %16, i32 0, i32 7
  %27 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %16, i32 0, i32 18
  %28 = icmp eq i32 %3, 0
  br i1 %28, label %244, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %16, i32 0, i32 16
  %31 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %16, i32 0, i32 27
  %32 = icmp eq ptr %27, null
  %33 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %16, i32 0, i32 18, i32 9
  %34 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %16, i32 0, i32 26
  %35 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %16, i32 0, i32 26, i32 1
  br label %36

36:                                               ; preds = %241, %29
  %37 = phi i32 [ 0, %29 ], [ %242, %241 ]
  %38 = getelementptr i32, ptr %2, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 255
  %41 = lshr i32 %39, 8
  %42 = trunc i32 %39 to i8
  switch i8 %42, label %244 [
    i8 1, label %43
    i8 5, label %48
    i8 3, label %48
    i8 4, label %48
    i8 0, label %48
    i8 17, label %64
    i8 9, label %91
    i8 14, label %199
  ]

43:                                               ; preds = %36
  %44 = load i32, ptr %26, align 4
  %45 = sub i32 %1, %44
  %46 = call fastcc i32 @rockchip_set_pull(ptr noundef %16, i32 noundef %45, i32 noundef 1)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %241, label %244

48:                                               ; preds = %36, %36, %36, %36
  %49 = load ptr, ptr %12, align 4
  %50 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %49, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  switch i32 %51, label %244 [
    i32 2, label %56
    i32 4, label %56
    i32 3, label %52
    i32 0, label %54
    i32 1, label %54
    i32 5, label %54
    i32 6, label %54
    i32 7, label %54
    i32 8, label %54
    i32 9, label %54
    i32 10, label %54
  ]

52:                                               ; preds = %48
  %53 = icmp eq i32 %40, 0
  br i1 %53, label %57, label %244

54:                                               ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %55 = icmp eq i32 %40, 4
  br i1 %55, label %244, label %57

56:                                               ; preds = %48, %48
  switch i8 %42, label %244 [
    i8 4, label %57
    i8 1, label %57
  ]

57:                                               ; preds = %56, %56, %54, %52
  %58 = icmp ult i32 %39, 256
  br i1 %58, label %244, label %59

59:                                               ; preds = %57
  %60 = load i32, ptr %26, align 4
  %61 = sub i32 %1, %60
  %62 = call fastcc i32 @rockchip_set_pull(ptr noundef %16, i32 noundef %61, i32 noundef %40)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %241, label %244

64:                                               ; preds = %36
  %65 = load i32, ptr %26, align 4
  %66 = sub i32 %1, %65
  %67 = call fastcc i32 @rockchip_set_mux(ptr noundef %16, i32 noundef %66, i32 noundef 0)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %244

69:                                               ; preds = %64
  call void @mutex_lock(ptr noundef %31) #11
  br i1 %32, label %73, label %70

70:                                               ; preds = %69
  %71 = load ptr, ptr %33, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %70, %69
  %74 = load i32, ptr %26, align 4
  %75 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %76 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3520, i32 noundef 16) #14
  %77 = icmp eq ptr %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %73
  %79 = sub i32 %1, %74
  %80 = getelementptr inbounds %struct.rockchip_pin_output_deferred, ptr %76, i32 0, i32 1
  store i32 %79, ptr %80, align 8
  %81 = getelementptr inbounds %struct.rockchip_pin_output_deferred, ptr %76, i32 0, i32 2
  store i32 %41, ptr %81, align 4
  %82 = load ptr, ptr %35, align 4
  store ptr %76, ptr %35, align 4
  store ptr %34, ptr %76, align 8
  %83 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  store ptr %82, ptr %83, align 4
  store volatile ptr %76, ptr %82, align 4
  call void @mutex_unlock(ptr noundef %31) #11
  br label %241

84:                                               ; preds = %73
  call void @mutex_unlock(ptr noundef %31) #11
  br label %244

85:                                               ; preds = %70
  call void @mutex_unlock(ptr noundef %31) #11
  %86 = load ptr, ptr %33, align 4
  %87 = load i32, ptr %26, align 4
  %88 = sub i32 %1, %87
  %89 = call i32 %86(ptr noundef nonnull %27, i32 noundef %88, i32 noundef %41) #11
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %241, label %244

91:                                               ; preds = %36
  %92 = load ptr, ptr %12, align 4
  %93 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %92, i32 0, i32 14
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %244, label %96

96:                                               ; preds = %91
  %97 = load i32, ptr %26, align 4
  %98 = sub i32 %1, %97
  %99 = load ptr, ptr %30, align 4
  %100 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %99, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %99, i32 0, i32 4
  %103 = load ptr, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store ptr null, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #11
  store i8 0, ptr %10, align 1, !annotation !8
  %104 = sdiv i32 %98, 8
  %105 = getelementptr %struct.rockchip_pin_bank, ptr %16, i32 0, i32 12, i32 %104
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %101, i32 0, i32 14
  %108 = load ptr, ptr %107, align 4
  call void %108(ptr noundef %16, i32 noundef %98, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #11
  %109 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %101, i32 0, i32 4
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 10
  br i1 %111, label %116, label %112

112:                                              ; preds = %96
  %113 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %106, i32 0
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, %41
  br i1 %115, label %153, label %119

116:                                              ; preds = %96
  %117 = shl i32 -2, %41
  %118 = xor i32 %117, -1
  br label %179

119:                                              ; preds = %112
  %120 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %106, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, %41
  br i1 %122, label %153, label %123

123:                                              ; preds = %119
  %124 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %106, i32 2
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, %41
  br i1 %126, label %153, label %127

127:                                              ; preds = %123
  %128 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %106, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, %41
  br i1 %130, label %153, label %131

131:                                              ; preds = %127
  %132 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %106, i32 4
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, %41
  br i1 %134, label %153, label %135

135:                                              ; preds = %131
  %136 = and i32 %106, 134217727
  %137 = add nsw i32 %136, -5
  %138 = icmp ult i32 %137, -2
  br i1 %138, label %151, label %139

139:                                              ; preds = %135
  %140 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %106, i32 5
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, %41
  br i1 %142, label %153, label %143

143:                                              ; preds = %139
  %144 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %106, i32 6
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, %41
  br i1 %146, label %153, label %147

147:                                              ; preds = %143
  %148 = getelementptr [5 x [8 x i32]], ptr @rockchip_perpin_drv_list, i32 0, i32 %106, i32 7
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, %41
  br i1 %150, label %153, label %151

151:                                              ; preds = %147, %135
  %152 = phi i32 [ %133, %135 ], [ -22, %147 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.17, i32 noundef %41) #12
  br label %196

153:                                              ; preds = %147, %143, %139, %131, %127, %123, %119, %112
  %154 = phi i32 [ 0, %112 ], [ 1, %119 ], [ 2, %123 ], [ 3, %127 ], [ 4, %131 ], [ 5, %139 ], [ 6, %143 ], [ 7, %147 ]
  switch i32 %106, label %178 [
    i32 3, label %155
    i32 4, label %155
    i32 0, label %179
    i32 1, label %179
    i32 2, label %179
  ]

155:                                              ; preds = %153, %153
  %156 = load i8, ptr %10, align 1
  switch i8 %156, label %176 [
    i8 0, label %179
    i8 1, label %179
    i8 2, label %179
    i8 3, label %179
    i8 4, label %179
    i8 5, label %179
    i8 6, label %179
    i8 7, label %179
    i8 8, label %179
    i8 9, label %179
    i8 10, label %179
    i8 11, label %179
    i8 12, label %179
    i8 15, label %157
    i8 18, label %172
    i8 19, label %172
    i8 20, label %172
    i8 21, label %172
  ]

157:                                              ; preds = %155
  %158 = shl nuw nsw i32 %154, 15
  %159 = and i32 %158, 32768
  %160 = or i32 %159, -2147483648
  %161 = load ptr, ptr %8, align 4
  %162 = load i32, ptr %9, align 4
  %163 = call i32 @regmap_update_bits_base(ptr noundef %161, i32 noundef %162, i32 noundef -2147450880, i32 noundef %160, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %196

165:                                              ; preds = %157
  %166 = lshr i32 %154, 1
  %167 = or i32 %166, 196608
  %168 = load i32, ptr %9, align 4
  %169 = add i32 %168, 4
  store i32 %169, ptr %9, align 4
  %170 = load ptr, ptr %8, align 4
  %171 = call i32 @regmap_update_bits_base(ptr noundef %170, i32 noundef %169, i32 noundef 196611, i32 noundef %167, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %196

172:                                              ; preds = %155, %155, %155, %155
  %173 = load i32, ptr %9, align 4
  %174 = add i32 %173, 4
  store i32 %174, ptr %9, align 4
  %175 = add nsw i8 %156, -16
  store i8 %175, ptr %10, align 1
  br label %179

176:                                              ; preds = %155
  %177 = zext i8 %156 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.14, i32 noundef %177, i32 noundef %106) #12
  br label %195

178:                                              ; preds = %153
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.15, i32 noundef %106) #12
  br label %195

179:                                              ; preds = %172, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %153, %153, %153, %116
  %180 = phi i32 [ %118, %116 ], [ %154, %172 ], [ %154, %155 ], [ %154, %155 ], [ %154, %155 ], [ %154, %155 ], [ %154, %155 ], [ %154, %155 ], [ %154, %155 ], [ %154, %155 ], [ %154, %155 ], [ %154, %155 ], [ %154, %155 ], [ %154, %155 ], [ %154, %155 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ]
  %181 = phi i32 [ 8, %116 ], [ 3, %172 ], [ 3, %155 ], [ 3, %155 ], [ 3, %155 ], [ 3, %155 ], [ 3, %155 ], [ 3, %155 ], [ 3, %155 ], [ 3, %155 ], [ 3, %155 ], [ 3, %155 ], [ 3, %155 ], [ 3, %155 ], [ 3, %155 ], [ 2, %153 ], [ 2, %153 ], [ 2, %153 ]
  %182 = shl nsw i32 -1, %181
  %183 = xor i32 %182, -1
  %184 = load i8, ptr %10, align 1
  %185 = zext i8 %184 to i32
  %186 = add nuw nsw i32 %185, 16
  %187 = shl i32 %183, %186
  %188 = lshr i32 %187, 16
  %189 = or i32 %188, %187
  %190 = shl i32 %180, %185
  %191 = or i32 %187, %190
  %192 = load ptr, ptr %8, align 4
  %193 = load i32, ptr %9, align 4
  %194 = call i32 @regmap_update_bits_base(ptr noundef %192, i32 noundef %193, i32 noundef %189, i32 noundef %191, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %196

195:                                              ; preds = %178, %176
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  br label %244

196:                                              ; preds = %179, %165, %157, %151
  %197 = phi i32 [ %194, %179 ], [ %152, %151 ], [ %171, %165 ], [ %163, %157 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %244, label %241

199:                                              ; preds = %36
  %200 = load ptr, ptr %12, align 4
  %201 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %200, i32 0, i32 15
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %244, label %204

204:                                              ; preds = %199
  %205 = load i32, ptr %26, align 4
  %206 = sub i32 %1, %205
  %207 = load ptr, ptr %30, align 4
  %208 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %207, i32 0, i32 5
  %209 = load ptr, ptr %208, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store ptr null, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1, !annotation !8
  %210 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %209, i32 0, i32 15
  %211 = load ptr, ptr %210, align 4
  %212 = call i32 %211(ptr noundef %16, i32 noundef %206, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %238

214:                                              ; preds = %204
  %215 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %209, i32 0, i32 4
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, 10
  %218 = load i8, ptr %7, align 1
  %219 = zext i8 %218 to i32
  br i1 %217, label %220, label %228

220:                                              ; preds = %214
  %221 = shl i32 196608, %219
  %222 = lshr exact i32 %221, 16
  %223 = or i32 %222, %221
  %224 = icmp ult i32 %39, 256
  %225 = select i1 %224, i32 1, i32 2
  %226 = shl i32 %225, %219
  %227 = or i32 %221, %226
  br label %232

228:                                              ; preds = %214
  %229 = or i32 %41, 65536
  %230 = shl i32 %229, %219
  %231 = shl i32 65537, %219
  br label %232

232:                                              ; preds = %228, %220
  %233 = phi i32 [ %227, %220 ], [ %230, %228 ]
  %234 = phi i32 [ %223, %220 ], [ %231, %228 ]
  %235 = load ptr, ptr %5, align 4
  %236 = load i32, ptr %6, align 4
  %237 = call i32 @regmap_update_bits_base(ptr noundef %235, i32 noundef %236, i32 noundef %234, i32 noundef %233, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %238

238:                                              ; preds = %232, %204
  %239 = phi i32 [ %237, %232 ], [ %212, %204 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %238, %196, %85, %78, %59, %43
  %242 = add nuw i32 %37, 1
  %243 = icmp eq i32 %242, %3
  br i1 %243, label %244, label %36

244:                                              ; preds = %241, %238, %199, %196, %195, %91, %85, %84, %64, %59, %57, %56, %54, %52, %48, %43, %36, %25
  %245 = phi i32 [ -12, %84 ], [ -22, %195 ], [ 0, %25 ], [ %46, %43 ], [ -22, %57 ], [ %62, %59 ], [ -22, %64 ], [ %89, %85 ], [ -524, %91 ], [ %197, %196 ], [ -524, %199 ], [ %239, %238 ], [ -524, %36 ], [ 0, %241 ], [ -524, %54 ], [ -524, %52 ], [ -524, %48 ], [ -524, %56 ]
  ret i32 %245
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_get_pull(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %8, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %10, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %45, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %10, i32 0, i32 13
  %18 = load ptr, ptr %17, align 4
  call void %18(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %19 = load ptr, ptr %3, align 4
  %20 = load i32, ptr %4, align 4
  %21 = call i32 @regmap_read(ptr noundef %19, i32 noundef %20, ptr noundef nonnull %6) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %16
  %24 = load i32, ptr %13, align 4
  switch i32 %24, label %44 [
    i32 2, label %25
    i32 4, label %25
    i32 0, label %33
    i32 1, label %33
    i32 5, label %33
    i32 6, label %33
    i32 7, label %33
    i32 8, label %33
    i32 9, label %33
  ]

25:                                               ; preds = %23, %23
  %26 = load i32, ptr %6, align 4
  %27 = load i8, ptr %5, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %26
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 4, i32 1
  br label %45

33:                                               ; preds = %23, %23, %23, %23, %23, %23, %23
  %34 = sdiv i32 %1, 8
  %35 = getelementptr %struct.rockchip_pin_bank, ptr %0, i32 0, i32 13, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = load i8, ptr %5, align 1
  %38 = zext i8 %37 to i32
  %39 = load i32, ptr %6, align 4
  %40 = lshr i32 %39, %38
  %41 = and i32 %40, 3
  %42 = getelementptr [2 x [4 x i32]], ptr @rockchip_pull_list, i32 0, i32 %36, i32 %41
  %43 = load i32, ptr %42, align 4
  br label %45

44:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.13) #12
  br label %45

45:                                               ; preds = %44, %33, %25, %16, %2
  %46 = phi i32 [ -22, %44 ], [ %43, %33 ], [ %32, %25 ], [ 1, %2 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_set_pull(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %8, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !annotation !8
  %13 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %10, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = icmp eq i32 %2, 0
  %18 = select i1 %17, i32 0, i32 -22
  br label %84

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %10, i32 0, i32 13
  %21 = load ptr, ptr %20, align 4
  call void %21(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %22 = load i32, ptr %13, align 4
  switch i32 %22, label %83 [
    i32 2, label %23
    i32 4, label %23
    i32 0, label %32
    i32 1, label %32
    i32 5, label %32
    i32 6, label %32
    i32 7, label %32
    i32 8, label %32
    i32 9, label %32
    i32 10, label %32
  ]

23:                                               ; preds = %19, %19
  %24 = load i8, ptr %6, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %2, 1
  %27 = select i1 %26, i32 65537, i32 65536
  %28 = shl i32 %27, %25
  %29 = load ptr, ptr %4, align 4
  %30 = load i32, ptr %5, align 4
  %31 = call i32 @regmap_write(ptr noundef %29, i32 noundef %30, i32 noundef %28) #11
  br label %84

32:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %33 = sdiv i32 %1, 8
  %34 = getelementptr %struct.rockchip_pin_bank, ptr %0, i32 0, i32 13, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr [2 x [4 x i32]], ptr @rockchip_pull_list, i32 0, i32 %35, i32 0
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %2
  br i1 %38, label %53, label %39

39:                                               ; preds = %32
  %40 = getelementptr [2 x [4 x i32]], ptr @rockchip_pull_list, i32 0, i32 %35, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, %2
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = getelementptr [2 x [4 x i32]], ptr @rockchip_pull_list, i32 0, i32 %35, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, %2
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = getelementptr [2 x [4 x i32]], ptr @rockchip_pull_list, i32 0, i32 %35, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %2
  %51 = xor i1 %50, true
  %52 = select i1 %50, i32 3, i32 -22
  br label %53

53:                                               ; preds = %47, %43, %39, %32
  %54 = phi i1 [ false, %43 ], [ false, %39 ], [ false, %32 ], [ %51, %47 ]
  %55 = phi i1 [ false, %43 ], [ true, %39 ], [ false, %32 ], [ false, %47 ]
  %56 = phi i32 [ 2, %43 ], [ 1, %39 ], [ 0, %32 ], [ %52, %47 ]
  %57 = icmp eq i32 %22, 10
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %60 = load i8, ptr %59, align 4
  %61 = icmp eq i8 %60, 0
  %62 = add i32 %1, -27
  %63 = icmp ult i32 %62, 4
  %64 = and i1 %63, %61
  %65 = and i1 %64, %55
  %66 = xor i1 %54, true
  %67 = select i1 %65, i1 true, i1 %66
  %68 = select i1 %65, i32 3, i32 %56
  br i1 %67, label %71, label %70

69:                                               ; preds = %53
  br i1 %54, label %70, label %71

70:                                               ; preds = %69, %58
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.16, i32 noundef %2) #12
  br label %84

71:                                               ; preds = %69, %58
  %72 = phi i32 [ %56, %69 ], [ %68, %58 ]
  %73 = load i8, ptr %6, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 196608, %74
  %76 = lshr exact i32 %75, 16
  %77 = or i32 %76, %75
  %78 = shl i32 %72, %74
  %79 = or i32 %75, %78
  %80 = load ptr, ptr %4, align 4
  %81 = load i32, ptr %5, align 4
  %82 = call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef %81, i32 noundef %77, i32 noundef %79, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %84

83:                                               ; preds = %19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.13) #12
  br label %84

84:                                               ; preds = %83, %71, %70, %23, %16
  %85 = phi i32 [ %18, %16 ], [ -22, %83 ], [ %56, %70 ], [ %82, %71 ], [ %31, %23 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @px30_calc_pull_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  br label %20

14:                                               ; preds = %5
  %15 = load ptr, ptr %7, align 4
  store ptr %15, ptr %2, align 4
  store i32 80, ptr %3, align 4
  %16 = load i8, ptr %8, align 4
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 4
  %19 = add nuw nsw i32 %18, 80
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i32 [ %19, %14 ], [ 16, %11 ]
  %22 = sdiv i32 %1, 8
  %23 = shl nsw i32 %22, 2
  %24 = add nsw i32 %21, %23
  store i32 %24, ptr %3, align 4
  %25 = mul i32 %22, 8
  %26 = sub i32 %1, %25
  %27 = trunc i32 %26 to i8
  %28 = shl nsw i8 %27, 1
  store i8 %28, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @px30_calc_drv_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  br label %20

14:                                               ; preds = %5
  %15 = load ptr, ptr %7, align 4
  store ptr %15, ptr %2, align 4
  store i32 224, ptr %3, align 4
  %16 = load i8, ptr %8, align 4
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 4
  %19 = add nuw nsw i32 %18, 224
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i32 [ %19, %14 ], [ 32, %11 ]
  %22 = sdiv i32 %1, 8
  %23 = shl nsw i32 %22, 2
  %24 = add nsw i32 %21, %23
  store i32 %24, ptr %3, align 4
  %25 = mul i32 %22, 8
  %26 = sub i32 %1, %25
  %27 = trunc i32 %26 to i8
  %28 = shl nsw i8 %27, 1
  store i8 %28, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @px30_calc_schmitt_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  br label %20

14:                                               ; preds = %5
  %15 = load ptr, ptr %7, align 4
  store ptr %15, ptr %2, align 4
  store i32 192, ptr %3, align 4
  %16 = load i8, ptr %8, align 4
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 4
  %19 = add nuw nsw i32 %18, 176
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i32 [ %19, %14 ], [ 56, %11 ]
  %22 = phi i32 [ 8, %14 ], [ 16, %11 ]
  %23 = sdiv i32 %1, %22
  %24 = shl nsw i32 %23, 2
  %25 = add i32 %24, %21
  store i32 %25, ptr %3, align 4
  %26 = mul i32 %23, %22
  %27 = sub i32 %1, %26
  %28 = trunc i32 %27 to i8
  store i8 %28, ptr %4, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rv1108_calc_pull_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  br label %22

14:                                               ; preds = %5
  store i32 272, ptr %3, align 4
  %15 = load ptr, ptr %7, align 4
  store ptr %15, ptr %2, align 4
  %16 = load i32, ptr %3, align 4
  %17 = add i32 %16, -16
  store i32 %17, ptr %3, align 4
  %18 = load i8, ptr %8, align 4
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 4
  %21 = add i32 %20, %17
  br label %22

22:                                               ; preds = %14, %11
  %23 = phi i32 [ %21, %14 ], [ 16, %11 ]
  %24 = sdiv i32 %1, 8
  %25 = shl nsw i32 %24, 2
  %26 = add i32 %23, %25
  store i32 %26, ptr %3, align 4
  %27 = mul i32 %24, 8
  %28 = sub i32 %1, %27
  %29 = trunc i32 %28 to i8
  %30 = shl nsw i8 %29, 1
  store i8 %30, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rv1108_calc_drv_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  br label %20

14:                                               ; preds = %5
  %15 = load ptr, ptr %7, align 4
  store ptr %15, ptr %2, align 4
  store i32 512, ptr %3, align 4
  %16 = load i8, ptr %8, align 4
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 4
  %19 = add nuw nsw i32 %18, 512
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i32 [ %19, %14 ], [ 32, %11 ]
  %22 = sdiv i32 %1, 8
  %23 = shl nsw i32 %22, 2
  %24 = add nsw i32 %21, %23
  store i32 %24, ptr %3, align 4
  %25 = mul i32 %22, 8
  %26 = sub i32 %1, %25
  %27 = trunc i32 %26 to i8
  %28 = shl nsw i8 %27, 1
  store i8 %28, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rv1108_calc_schmitt_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  br label %20

14:                                               ; preds = %5
  %15 = load ptr, ptr %7, align 4
  store ptr %15, ptr %2, align 4
  store i32 904, ptr %3, align 4
  %16 = load i8, ptr %8, align 4
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 3
  %19 = add nuw nsw i32 %18, 896
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i32 [ %19, %14 ], [ 48, %11 ]
  %22 = phi i32 [ 16, %14 ], [ 8, %11 ]
  %23 = sdiv i32 %1, %22
  %24 = shl nsw i32 %23, 2
  %25 = add i32 %24, %21
  store i32 %25, ptr %3, align 4
  %26 = mul i32 %23, %22
  %27 = sub i32 %1, %26
  %28 = trunc i32 %27 to i8
  store i8 %28, ptr %4, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rk2928_calc_pull_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  store ptr %8, ptr %2, align 4
  store i32 280, ptr %3, align 4
  %9 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 3
  %13 = sdiv i32 %1, 16
  %14 = shl nsw i32 %13, 2
  %15 = add nsw i32 %14, 280
  %16 = add nsw i32 %15, %12
  store i32 %16, ptr %3, align 4
  %17 = mul i32 %13, 16
  %18 = sub i32 %1, %17
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rk3128_calc_pull_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  store ptr %8, ptr %2, align 4
  store i32 280, ptr %3, align 4
  %9 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 3
  %13 = sdiv i32 %1, 16
  %14 = shl nsw i32 %13, 2
  %15 = add nsw i32 %14, 280
  %16 = add nsw i32 %15, %12
  store i32 %16, ptr %3, align 4
  %17 = mul i32 %13, 16
  %18 = sub i32 %1, %17
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rk3188_calc_pull_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  %11 = icmp slt i32 %1, 12
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %31

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi ptr [ %19, %17 ], [ %15, %13 ]
  store ptr %21, ptr %2, align 4
  %22 = load ptr, ptr %14, align 4
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, i32 0, i32 100
  %25 = sdiv i32 %1, 8
  %26 = shl nsw i32 %25, 2
  %27 = add nsw i32 %24, %26
  store i32 %27, ptr %3, align 4
  %28 = srem i32 %1, 8
  %29 = trunc i32 %28 to i8
  %30 = shl nsw i8 %29, 1
  br label %54

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load ptr, ptr %7, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi ptr [ %36, %35 ], [ %33, %31 ]
  store ptr %38, ptr %2, align 4
  %39 = load ptr, ptr %32, align 4
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, i32 352, i32 -4
  store i32 %41, ptr %3, align 4
  %42 = load i8, ptr %8, align 4
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 4
  %45 = sdiv i32 %1, 8
  %46 = shl nsw i32 %45, 2
  %47 = add nsw i32 %41, %46
  %48 = add i32 %47, %44
  store i32 %48, ptr %3, align 4
  %49 = mul i32 %45, 8
  %50 = sub i32 %1, %49
  %51 = trunc i32 %50 to i8
  %52 = mul nsw i8 %51, -2
  %53 = add nsw i8 %52, 14
  br label %54

54:                                               ; preds = %37, %20
  %55 = phi i8 [ %53, %37 ], [ %30, %20 ]
  store i8 %55, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rk3228_calc_pull_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  store ptr %8, ptr %2, align 4
  store i32 256, ptr %3, align 4
  %9 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 4
  %13 = sdiv i32 %1, 8
  %14 = shl nsw i32 %13, 2
  %15 = add nsw i32 %14, 256
  %16 = add i32 %15, %12
  store i32 %16, ptr %3, align 4
  %17 = mul i32 %13, 8
  %18 = sub i32 %1, %17
  %19 = trunc i32 %18 to i8
  %20 = shl nsw i8 %19, 1
  store i8 %20, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rk3228_calc_drv_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  store ptr %8, ptr %2, align 4
  store i32 512, ptr %3, align 4
  %9 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 4
  %13 = sdiv i32 %1, 8
  %14 = shl nsw i32 %13, 2
  %15 = add nsw i32 %14, 512
  %16 = add i32 %15, %12
  store i32 %16, ptr %3, align 4
  %17 = mul i32 %13, 8
  %18 = sub i32 %1, %17
  %19 = trunc i32 %18 to i8
  %20 = shl nsw i8 %19, 1
  store i8 %20, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rk3288_calc_pull_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  %14 = sdiv i32 %1, 8
  %15 = shl nsw i32 %14, 2
  %16 = add nsw i32 %15, 100
  br label %26

17:                                               ; preds = %5
  %18 = load ptr, ptr %7, align 4
  store ptr %18, ptr %2, align 4
  store i32 304, ptr %3, align 4
  %19 = load i8, ptr %8, align 4
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 4
  %22 = sdiv i32 %1, 8
  %23 = shl nsw i32 %22, 2
  %24 = add nsw i32 %23, 304
  %25 = add i32 %24, %21
  br label %26

26:                                               ; preds = %17, %11
  %27 = phi i32 [ %16, %11 ], [ %25, %17 ]
  store i32 %27, ptr %3, align 4
  %28 = srem i32 %1, 8
  %29 = trunc i32 %28 to i8
  %30 = shl nsw i8 %29, 1
  store i8 %30, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rk3288_calc_drv_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  %14 = sdiv i32 %1, 8
  %15 = shl nsw i32 %14, 2
  %16 = add nsw i32 %15, 112
  br label %26

17:                                               ; preds = %5
  %18 = load ptr, ptr %7, align 4
  store ptr %18, ptr %2, align 4
  store i32 432, ptr %3, align 4
  %19 = load i8, ptr %8, align 4
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 4
  %22 = sdiv i32 %1, 8
  %23 = shl nsw i32 %22, 2
  %24 = add nsw i32 %23, 432
  %25 = add i32 %24, %21
  br label %26

26:                                               ; preds = %17, %11
  %27 = phi i32 [ %16, %11 ], [ %25, %17 ]
  store i32 %27, ptr %3, align 4
  %28 = srem i32 %1, 8
  %29 = trunc i32 %28 to i8
  %30 = shl nsw i8 %29, 1
  store i8 %30, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rk3308_calc_pull_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  store ptr %8, ptr %2, align 4
  store i32 160, ptr %3, align 4
  %9 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 4
  %13 = sdiv i32 %1, 8
  %14 = shl nsw i32 %13, 2
  %15 = add nsw i32 %14, 160
  %16 = add i32 %15, %12
  store i32 %16, ptr %3, align 4
  %17 = mul i32 %13, 8
  %18 = sub i32 %1, %17
  %19 = trunc i32 %18 to i8
  %20 = shl nsw i8 %19, 1
  store i8 %20, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rk3308_calc_drv_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  store ptr %8, ptr %2, align 4
  store i32 256, ptr %3, align 4
  %9 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 4
  %13 = sdiv i32 %1, 8
  %14 = shl nsw i32 %13, 2
  %15 = add nsw i32 %14, 256
  %16 = add i32 %15, %12
  store i32 %16, ptr %3, align 4
  %17 = mul i32 %13, 8
  %18 = sub i32 %1, %17
  %19 = trunc i32 %18 to i8
  %20 = shl nsw i8 %19, 1
  store i8 %20, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rk3308_calc_schmitt_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  store ptr %8, ptr %2, align 4
  store i32 416, ptr %3, align 4
  %9 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 4
  %13 = sdiv i32 %1, 8
  %14 = shl nsw i32 %13, 2
  %15 = add nsw i32 %14, 416
  %16 = add i32 %15, %12
  store i32 %16, ptr %3, align 4
  %17 = mul i32 %13, 8
  %18 = sub i32 %1, %17
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %4, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rk3328_calc_schmitt_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  store ptr %8, ptr %2, align 4
  store i32 896, ptr %3, align 4
  %9 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 3
  %13 = sdiv i32 %1, 16
  %14 = shl nsw i32 %13, 2
  %15 = add nsw i32 %14, 896
  %16 = add nsw i32 %15, %12
  store i32 %16, ptr %3, align 4
  %17 = mul i32 %13, 16
  %18 = sub i32 %1, %17
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %4, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rk3368_calc_pull_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  %14 = sdiv i32 %1, 8
  %15 = shl nsw i32 %14, 2
  %16 = add nsw i32 %15, 16
  br label %26

17:                                               ; preds = %5
  %18 = load ptr, ptr %7, align 4
  store ptr %18, ptr %2, align 4
  store i32 240, ptr %3, align 4
  %19 = load i8, ptr %8, align 4
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 4
  %22 = sdiv i32 %1, 8
  %23 = shl nsw i32 %22, 2
  %24 = add nsw i32 %23, 240
  %25 = add i32 %24, %21
  br label %26

26:                                               ; preds = %17, %11
  %27 = phi i32 [ %16, %11 ], [ %25, %17 ]
  store i32 %27, ptr %3, align 4
  %28 = srem i32 %1, 8
  %29 = trunc i32 %28 to i8
  %30 = shl nsw i8 %29, 1
  store i8 %30, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rk3368_calc_drv_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  %14 = sdiv i32 %1, 8
  %15 = shl nsw i32 %14, 2
  %16 = add nsw i32 %15, 32
  br label %26

17:                                               ; preds = %5
  %18 = load ptr, ptr %7, align 4
  store ptr %18, ptr %2, align 4
  store i32 496, ptr %3, align 4
  %19 = load i8, ptr %8, align 4
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 4
  %22 = sdiv i32 %1, 8
  %23 = shl nsw i32 %22, 2
  %24 = add nsw i32 %23, 496
  %25 = add i32 %24, %21
  br label %26

26:                                               ; preds = %17, %11
  %27 = phi i32 [ %16, %11 ], [ %25, %17 ]
  store i32 %27, ptr %3, align 4
  %28 = srem i32 %1, 8
  %29 = trunc i32 %28 to i8
  %30 = shl nsw i8 %29, 1
  store i8 %30, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rk3399_calc_pull_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = icmp ult i8 %9, 2
  %11 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 3
  %12 = select i1 %10, ptr %11, ptr %7
  %13 = select i1 %10, i32 64, i32 57376
  %14 = load ptr, ptr %12, align 4
  store ptr %14, ptr %2, align 4
  store i32 %13, ptr %3, align 4
  %15 = load i8, ptr %8, align 4
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 4
  %18 = sdiv i32 %1, 8
  %19 = shl nsw i32 %18, 2
  %20 = add nsw i32 %19, %13
  %21 = add i32 %20, %17
  store i32 %21, ptr %3, align 4
  %22 = mul i32 %18, 8
  %23 = sub i32 %1, %22
  %24 = trunc i32 %23 to i8
  %25 = shl nsw i8 %24, 1
  store i8 %25, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rk3399_calc_drv_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = sdiv i32 %1, 8
  %9 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %10 = load i8, ptr %9, align 4
  %11 = icmp ult i8 %10, 2
  %12 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 3
  %13 = select i1 %11, ptr %12, ptr %7
  %14 = load ptr, ptr %13, align 4
  store ptr %14, ptr %2, align 4
  %15 = getelementptr %struct.rockchip_pin_bank, ptr %0, i32 0, i32 12, i32 %8
  %16 = getelementptr %struct.rockchip_pin_bank, ptr %0, i32 0, i32 12, i32 %8, i32 1
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %3, align 4
  %18 = load i32, ptr %15, align 4
  %19 = add i32 %18, -3
  %20 = icmp ult i32 %19, 2
  %21 = mul i32 %8, 8
  %22 = sub i32 %1, %21
  %23 = trunc i32 %22 to i8
  %24 = shl nsw i8 %23, 1
  %25 = mul nsw i8 %23, 3
  %26 = select i1 %20, i8 %25, i8 %24
  store i8 %26, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rk3568_calc_pull_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 3
  %12 = select i1 %10, ptr %11, ptr %7
  %13 = select i1 %10, i32 32, i32 128
  %14 = select i1 %10, i32 32, i32 112
  %15 = load ptr, ptr %12, align 4
  store ptr %15, ptr %2, align 4
  store i32 %13, ptr %3, align 4
  %16 = load i8, ptr %8, align 4
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 4
  %19 = sdiv i32 %1, 8
  %20 = shl nsw i32 %19, 2
  %21 = add nsw i32 %20, %14
  %22 = add i32 %21, %18
  store i32 %22, ptr %3, align 4
  %23 = mul i32 %19, 8
  %24 = sub i32 %1, %23
  %25 = trunc i32 %24 to i8
  %26 = shl nsw i8 %25, 1
  store i8 %26, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rk3568_calc_drv_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  %14 = sdiv i32 %1, 2
  %15 = shl i32 %14, 2
  %16 = add i32 %15, 112
  br label %26

17:                                               ; preds = %5
  %18 = load ptr, ptr %7, align 4
  store ptr %18, ptr %2, align 4
  store i32 512, ptr %3, align 4
  %19 = load i8, ptr %8, align 4
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 6
  %22 = sdiv i32 %1, 2
  %23 = shl i32 %22, 2
  %24 = add i32 %23, 448
  %25 = add i32 %24, %21
  br label %26

26:                                               ; preds = %17, %11
  %27 = phi i32 [ %16, %11 ], [ %25, %17 ]
  store i32 %27, ptr %3, align 4
  %28 = srem i32 %1, 2
  %29 = trunc i32 %28 to i8
  %30 = shl nsw i8 %29, 3
  store i8 %30, ptr %4, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rk3568_calc_schmitt_reg_and_bit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #10 {
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  br label %20

14:                                               ; preds = %5
  %15 = load ptr, ptr %7, align 4
  store ptr %15, ptr %2, align 4
  store i32 192, ptr %3, align 4
  %16 = load i8, ptr %8, align 4
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 4
  %19 = add nuw nsw i32 %18, 176
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i32 [ %19, %14 ], [ 48, %11 ]
  %22 = sdiv i32 %1, 8
  %23 = shl nsw i32 %22, 2
  %24 = add nsw i32 %21, %23
  store i32 %24, ptr %3, align 4
  %25 = mul i32 %22, 8
  %26 = sub i32 %1, %25
  %27 = trunc i32 %26 to i8
  %28 = shl nsw i8 %27, 1
  store i8 %28, ptr %4, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_pinctrl_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @pinctrl_force_sleep(ptr noundef %5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 4
  %16 = tail call i32 @regmap_read(ptr noundef %15, i32 noundef 100, ptr noundef nonnull @rk3288_grf_gpio6c_iomux) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %4, align 4
  %20 = tail call i32 @pinctrl_force_default(ptr noundef %19) #11
  br label %21

21:                                               ; preds = %18, %14, %8, %1
  %22 = phi i32 [ %16, %18 ], [ %6, %1 ], [ 0, %14 ], [ 0, %8 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_pinctrl_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 6
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 4
  %11 = load i32, ptr @rk3288_grf_gpio6c_iomux, align 4
  %12 = or i32 %11, 268435456
  %13 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 100, i32 noundef %12) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9, %1
  %16 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %3, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @pinctrl_force_default(ptr noundef %17) #11
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i32 [ %18, %15 ], [ %13, %9 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_sleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_default(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
